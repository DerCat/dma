//
// PCILeech FPGA.
//
// PCIe BAR PIO controller.
//
// The PCILeech BAR PIO controller allows for easy user-implementation on top
// of the PCILeech AXIS128 PCIe TLP streaming interface.
// The controller consists of a read engine and a write engine and pluggable
// user-implemented PCIe BAR implementations (found at bottom of the file).
//
// Considerations:
// - The core handles 1 DWORD read + 1 DWORD write per CLK max. [cite: 381] If a lot of
//   data is written / read from the TLP streaming interface the core may
//   drop packet silently. [cite: 382]
// - The core reads 1 DWORD of data (without byte enable) per CLK. [cite: 383]
// - The core writes 1 DWORD of data (with byte enable) per CLK. [cite: 384]
// - All user-implemented cores must have the same latency in CLKs for the
//   returned read data or else undefined behavior will take place. [cite: 385]
// - 32-bit addresses are passed for read/writes. [cite: 386] Larger BARs than 4GB are
//   not supported due to addressing constraints. [cite: 386] Lower bits (LSBs) are the
//   BAR offset, Higher bits (MSBs) are the 32-bit base address of the BAR. [cite: 387]
// - DO NOT edit read/write engines. [cite: 388]
// - DO edit pcileech_tlps128_bar_controller (to swap bar implementations). [cite: 388]
// - DO edit the bar implementations (at bottom of the file, if neccessary). [cite: 389]
//
// Example implementations exists below, swap out any of the example cores
// against a core of your use case, or modify existing cores. [cite: 390]
// Following test cores exist (see below in this file): [cite: 391]
// - pcileech_bar_impl_zerowrite4k = zero-initialized read/write BAR. [cite: 391]
//     It's possible to modify contents by use of .coe file. [cite: 392]
// - pcileech_bar_impl_loopaddr = test core that loops back the 32-bit
//     address of the current read. [cite: 393] Does not support writes. [cite: 394]
// - pcileech_bar_impl_none = core without any reply. [cite: 394]
// 
// (c) Ulf Frisk, 2024
// Author: Ulf Frisk, pcileech@frizk.net
//

`timescale 1ns / 1ps
`include "pcileech_header.svh"

module pcileech_tlps128_bar_controller(
    input                   rst,
    input                   clk,
    input                   bar_en,
    input [15:0]            pcie_id, // [cite: 396] (BDF of FPGA)
    IfAXIS128.sink_lite     tlps_in,
    IfAXIS128.source        tlps_out
);

    // ------------------------------------------------------------------------
    // 1: TLP RECEIVE:
    // Receive incoming BAR requests from the TLP stream:
    // send them onwards to read and write FIFOs
    // ------------------------------------------------------------------------
    wire in_is_wr_ready; // [cite: 397]
    bit  in_is_wr_last; // [cite: 398]
    wire in_is_first    = tlps_in.tuser[0]; // [cite: 398]
    wire in_is_bar      = bar_en && (tlps_in.tuser[8:2] != 0); // [cite: 399] (bar_hit from FPGA core's BARs)
    wire in_is_rd       = (in_is_first && tlps_in.tlast && ((tlps_in.tdata[31:25] == 7'b0000000) || (tlps_in.tdata[31:25] == 7'b0010000) || (tlps_in.tdata[31:24] == 8'b00000010))); // [cite: 400]
    wire in_is_wr       = in_is_wr_last || (in_is_first && in_is_wr_ready && ((tlps_in.tdata[31:25] == 7'b0100000) || (tlps_in.tdata[31:25] == 7'b0110000) || (tlps_in.tdata[31:24] == 8'b01000010))); // [cite: 401, 402]
    
    always @ ( posedge clk ) // [cite: 403]
        if ( rst ) begin // [cite: 403]
            in_is_wr_last <= 0; // [cite: 403]
        end else if ( tlps_in.tvalid ) begin // [cite: 404]
            in_is_wr_last <= !tlps_in.tlast && in_is_wr; // [cite: 404]
        end
    
    wire [6:0]  wr_bar; // [cite: 405]
    wire [31:0] wr_addr; // [cite: 405]
    wire [3:0]  wr_be; // [cite: 405]
    wire [31:0] wr_data; // [cite: 406]
    wire        wr_valid; // [cite: 406]
    wire [87:0] rd_req_ctx; // [cite: 406]
    wire [6:0]  rd_req_bar; // [cite: 406]
    wire [31:0] rd_req_addr; // [cite: 407]
    wire        rd_req_valid; // [cite: 407]
    wire [87:0] rd_rsp_ctx; // [cite: 407]
    wire [31:0] rd_rsp_data; // [cite: 407]
    wire        rd_rsp_valid; // [cite: 408]
        
    pcileech_tlps128_bar_rdengine i_pcileech_tlps128_bar_rdengine( // [cite: 408]
        .rst            ( rst                           ),
        .clk            ( clk                           ), // [cite: 409]
        .pcie_id        ( pcie_id                       ), // [cite: 409]
        .tlps_in        ( tlps_in                       ), // [cite: 409]
        .tlps_in_valid  ( tlps_in.tvalid && in_is_bar && in_is_rd ), // [cite: 410]
        .tlps_out       ( tlps_out                      ), // [cite: 410]
        .rd_req_ctx     ( rd_req_ctx                    ), // [cite: 410]
        .rd_req_bar     ( rd_req_bar                    ), // [cite: 411]
        .rd_req_addr    ( rd_req_addr                   ), // [cite: 411]
        .rd_req_valid   ( rd_req_valid                  ), // [cite: 411]
        .rd_rsp_ctx     ( rd_rsp_ctx                    ), // [cite: 412]
        .rd_rsp_data    ( rd_rsp_data                   ), // [cite: 412]
        .rd_rsp_valid   ( rd_rsp_valid                  )  // [cite: 412]
    );

    pcileech_tlps128_bar_wrengine i_pcileech_tlps128_bar_wrengine( // [cite: 413]
        .rst            ( rst                           ),
        .clk            ( clk                           ), // [cite: 413]
        .tlps_in        ( tlps_in                       ), // [cite: 414]
        .tlps_in_valid  ( tlps_in.tvalid && in_is_bar && in_is_wr ), // [cite: 414]
        .tlps_in_ready  ( in_is_wr_ready                ), // [cite: 414]
        .wr_bar         ( wr_bar                        ), // [cite: 415]
        .wr_addr        ( wr_addr                       ), // [cite: 415]
        .wr_be          ( wr_be                         ), // [cite: 416]
        .wr_data        ( wr_data                       ), // [cite: 416]
        .wr_valid       ( wr_valid                      )  // [cite: 416]
    );
    
    wire [87:0] bar_rsp_ctx[7]; // [cite: 417]
    wire [31:0] bar_rsp_data[7]; // [cite: 417]
    wire        bar_rsp_valid[7]; // [cite: 418]
    
    assign rd_rsp_ctx = bar_rsp_valid[0] ? bar_rsp_ctx[0] : // [cite: 418]
                        bar_rsp_valid[1] ? bar_rsp_ctx[1] : // [cite: 419]
                        bar_rsp_valid[2] ? bar_rsp_ctx[2] : // [cite: 420]
                        bar_rsp_valid[3] ? bar_rsp_ctx[3] : // [cite: 421]
                        bar_rsp_valid[4] ? bar_rsp_ctx[4] : // [cite: 422]
                        bar_rsp_valid[5] ? bar_rsp_ctx[5] : // [cite: 423]
                        bar_rsp_valid[6] ? bar_rsp_ctx[6] : 0; // [cite: 424]
    assign rd_rsp_data = bar_rsp_valid[0] ? bar_rsp_data[0] : // [cite: 425]
                         bar_rsp_valid[1] ? bar_rsp_data[1] : // [cite: 425]
                         bar_rsp_valid[2] ? bar_rsp_data[2] : // [cite: 426]
                         bar_rsp_valid[3] ? bar_rsp_data[3] : // [cite: 427]
                         bar_rsp_valid[4] ? bar_rsp_data[4] : // [cite: 428]
                         bar_rsp_valid[5] ? bar_rsp_data[5] : // [cite: 429]
                         bar_rsp_valid[6] ? bar_rsp_data[6] : 0; // [cite: 430]
    assign rd_rsp_valid = bar_rsp_valid[0] || bar_rsp_valid[1] || bar_rsp_valid[2] || bar_rsp_valid[3] || bar_rsp_valid[4] || bar_rsp_valid[5] || bar_rsp_valid[6]; // [cite: 431]

    // BAR Implementations (for FPGA's own BARs)
    pcileech_bar_impl_zerowrite4k i_bar0( // [cite: 432] (If FPGA has BAR0)
        .rst            ( rst                           ),
        .clk            ( clk                           ), // [cite: 432]
        .wr_addr        ( wr_addr                       ), // [cite: 433]
        .wr_be          ( wr_be                         ), // [cite: 433]
        .wr_data        ( wr_data                       ), // [cite: 433]
        .wr_valid       ( wr_valid && wr_bar[0]         ), // [cite: 434]
        .rd_req_ctx     ( rd_req_ctx                    ), // [cite: 434]
        .rd_req_addr    ( rd_req_addr                   ), // [cite: 435]
        .rd_req_valid   ( rd_req_valid && rd_req_bar[0] ), // [cite: 435]
        .rd_rsp_ctx     ( bar_rsp_ctx[0]                ), // [cite: 435]
        .rd_rsp_data    ( bar_rsp_data[0]               ), // [cite: 435]
        .rd_rsp_valid   ( bar_rsp_valid[0]              )  // [cite: 436]
    );

    pcileech_bar_impl_loopaddr i_bar1( // [cite: 437] (If FPGA has BAR1)
        .rst            ( rst                           ),
        .clk            ( clk                           ), // [cite: 437]
        .wr_addr        ( wr_addr                       ), // [cite: 438]
        .wr_be          ( wr_be                         ), // [cite: 438]
        .wr_data        ( wr_data                       ), // [cite: 439]
        .wr_valid       ( wr_valid && wr_bar[1]         ), // [cite: 439]
        .rd_req_ctx     ( rd_req_ctx                    ), // [cite: 439]
        .rd_req_addr    ( rd_req_addr                   ), // [cite: 440]
        .rd_req_valid   ( rd_req_valid && rd_req_bar[1] ), // [cite: 440]
        .rd_rsp_ctx     ( bar_rsp_ctx[1]                ), // [cite: 440]
        .rd_rsp_data    ( bar_rsp_data[1]               ), // [cite: 440]
        .rd_rsp_valid   ( bar_rsp_valid[1]              )  // [cite: 441]
    );

    pcileech_bar_impl_none i_bar2( // [cite: 442] (If FPGA has BAR2, or as default)
        .rst            ( rst                           ),
        .clk            ( clk                           ), // [cite: 442]
        .wr_addr        ( wr_addr                       ), // [cite: 443]
        .wr_be          ( wr_be                         ), // [cite: 443]
        .wr_data        ( wr_data                       ), // [cite: 444]
        .wr_valid       ( wr_valid && wr_bar[2]         ), // [cite: 444]
        .rd_req_ctx     ( rd_req_ctx                    ), // [cite: 444]
        .rd_req_addr    ( rd_req_addr                   ), // [cite: 445]
        .rd_req_valid   ( rd_req_valid && rd_req_bar[2] ), // [cite: 445]
        .rd_rsp_ctx     ( bar_rsp_ctx[2]                ), // [cite: 445]
        .rd_rsp_data    ( bar_rsp_data[2]               ), // [cite: 445]
        .rd_rsp_valid   ( bar_rsp_valid[2]              )  // [cite: 446]
    );

    pcileech_bar_impl_none i_bar3( // [cite: 447]
        .rst            ( rst                           ),
        .clk            ( clk                           ),
        .wr_addr        ( wr_addr                       ), // [cite: 448]
        .wr_be          ( wr_be                         ), // [cite: 448]
        .wr_data        ( wr_data                       ), // [cite: 449]
        .wr_valid       ( wr_valid && wr_bar[3]         ), // [cite: 449]
        .rd_req_ctx     ( rd_req_ctx                    ), // [cite: 449]
        .rd_req_addr    ( rd_req_addr                   ), // [cite: 450]
        .rd_req_valid   ( rd_req_valid && rd_req_bar[3] ), // [cite: 450]
        .rd_rsp_ctx     ( bar_rsp_ctx[3]                ), // [cite: 450]
        .rd_rsp_data    ( bar_rsp_data[3]               ), // [cite: 450]
        .rd_rsp_valid   ( bar_rsp_valid[3]              )  // [cite: 451]
    );

    pcileech_bar_impl_none i_bar4( // [cite: 452]
        .rst            ( rst                           ),
        .clk            ( clk                           ),
        .wr_addr        ( wr_addr                       ), // [cite: 453]
        .wr_be          ( wr_be                         ), // [cite: 453]
        .wr_data        ( wr_data                       ), // [cite: 454]
        .wr_valid       ( wr_valid && wr_bar[4]         ), // [cite: 454]
        .rd_req_ctx     ( rd_req_ctx                    ), // [cite: 454]
        .rd_req_addr    ( rd_req_addr                   ), // [cite: 455]
        .rd_req_valid   ( rd_req_valid && rd_req_bar[4] ), // [cite: 455]
        .rd_rsp_ctx     ( bar_rsp_ctx[4]                ), // [cite: 455]
        .rd_rsp_data    ( bar_rsp_data[4]               ), // [cite: 455]
        .rd_rsp_valid   ( bar_rsp_valid[4]              )  // [cite: 456]
    );

    pcileech_bar_impl_none i_bar5( // [cite: 457]
        .rst            ( rst                           ),
        .clk            ( clk                           ),
        .wr_addr        ( wr_addr                       ), // [cite: 458]
        .wr_be          ( wr_be                         ), // [cite: 458]
        .wr_data        ( wr_data                       ), // [cite: 459]
        .wr_valid       ( wr_valid && wr_bar[5]         ), // [cite: 459]
        .rd_req_ctx     ( rd_req_ctx                    ), // [cite: 459]
        .rd_req_addr    ( rd_req_addr                   ), // [cite: 460]
        .rd_req_valid   ( rd_req_valid && rd_req_bar[5] ), // [cite: 460]
        .rd_rsp_ctx     ( bar_rsp_ctx[5]                ), // [cite: 460]
        .rd_rsp_data    ( bar_rsp_data[5]               ), // [cite: 460]
        .rd_rsp_valid   ( bar_rsp_valid[5]              )  // [cite: 461]
    );

    pcileech_bar_impl_none i_bar6_optrom( // [cite: 462] (Usually for Expansion ROM BAR)
        .rst            ( rst                           ),
        .clk            ( clk                           ),
        .wr_addr        ( wr_addr                       ), // [cite: 463]
        .wr_be          ( wr_be                         ), // [cite: 463]
        .wr_data        ( wr_data                       ), // [cite: 464]
        .wr_valid       ( wr_valid && wr_bar[6]         ), // [cite: 464]
        .rd_req_ctx     ( rd_req_ctx                    ), // [cite: 464]
        .rd_req_addr    ( rd_req_addr                   ), // [cite: 465]
        .rd_req_valid   ( rd_req_valid && rd_req_bar[6] ), // [cite: 465]
        .rd_rsp_ctx     ( bar_rsp_ctx[6]                ), // [cite: 465]
        .rd_rsp_data    ( bar_rsp_data[6]               ), // [cite: 465]
        .rd_rsp_valid   ( bar_rsp_valid[6]              )  // [cite: 466]
    );

endmodule

// BAR WRITE ENGINE, READ ENGINE, and example BAR implementations pcileech_bar_impl_none,
// pcileech_bar_impl_loopaddr, pcileech_bar_impl_zerowrite4k, and their dependent FIFOs
// (fifo_141_141_clk1_bar_wr, fifo_74_74_clk1_bar_rd1, fifo_134_134_clk1_bar_rdrsp, bram_bar_zero4k)
// are assumed to be part of included files or defined elsewhere and are kept as is.
// The crucial part is that `wr_bar` and `rd_req_bar` are driven by the FPGA's actual BAR hits.
// If the emulated device has BARs=0, then these should ideally not be hit for the emulated device.