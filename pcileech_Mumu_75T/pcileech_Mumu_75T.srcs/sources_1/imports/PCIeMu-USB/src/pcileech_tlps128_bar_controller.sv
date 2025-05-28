`timescale 1ns / 1ps
`include "pcileech_header.svh"

module pcileech_tlps128_bar_controller(
    input                   rst,
    input                   clk,
    input                   bar_en,
    input [15:0]            pcie_id, 
    IfAXIS128.sink_lite     tlps_in,
    IfAXIS128.source        tlps_out
);

    wire in_is_wr_ready;
    bit  in_is_wr_last; 
    wire in_is_first    = tlps_in.tuser[0];
    wire in_is_bar      = bar_en && (tlps_in.tuser[8:2] != 0);
    wire in_is_rd       = (in_is_first && tlps_in.tlast && ((tlps_in.tdata[31:25] == 7'b0000000) || (tlps_in.tdata[31:25] == 7'b0010000) || (tlps_in.tdata[31:24] == 8'b00000010)));
    wire in_is_wr       = in_is_wr_last || (in_is_first && in_is_wr_ready && ((tlps_in.tdata[31:25] == 7'b0100000) || (tlps_in.tdata[31:25] == 7'b0110000) || (tlps_in.tdata[31:24] == 8'b01000010)));
    
    always @ ( posedge clk ) 
        if ( rst ) begin 
            in_is_wr_last <= 0;
        end else if ( tlps_in.tvalid ) begin 
            in_is_wr_last <= !tlps_in.tlast && in_is_wr;
        end
    
    wire [6:0]  wr_bar;
    wire [31:0] wr_addr; 
    wire [3:0]  wr_be;
    wire [31:0] wr_data; 
    wire        wr_valid;
    wire [87:0] rd_req_ctx; 
    wire [6:0]  rd_req_bar;
    wire [31:0] rd_req_addr; 
    wire        rd_req_valid;
    wire [87:0] rd_rsp_ctx; 
    wire [31:0] rd_rsp_data;
    wire        rd_rsp_valid;
        
    pcileech_tlps128_bar_rdengine i_pcileech_tlps128_bar_rdengine( 
        .rst            ( rst                           ),
        .clk            ( clk                           ), 
        .pcie_id        ( pcie_id                       ), 
        .tlps_in        ( tlps_in                       ), 
        .tlps_in_valid  ( tlps_in.tvalid && in_is_bar && in_is_rd ), 
        .tlps_out       ( tlps_out                      ), 
        .rd_req_ctx     ( rd_req_ctx                    ), 
        .rd_req_bar     ( rd_req_bar                    ), 
        .rd_req_addr    ( rd_req_addr                   ), 
        .rd_req_valid   ( rd_req_valid                  ), 
        .rd_rsp_ctx     ( rd_rsp_ctx                    ), 
        .rd_rsp_data    ( rd_rsp_data                   ), 
        .rd_rsp_valid   ( rd_rsp_valid                  )  
    );

    pcileech_tlps128_bar_wrengine i_pcileech_tlps128_bar_wrengine( 
        .rst            ( rst                           ),
        .clk            ( clk                           ), 
        .tlps_in        ( tlps_in                       ), 
        .tlps_in_valid  ( tlps_in.tvalid && in_is_bar && in_is_wr ), 
        .tlps_in_ready  ( in_is_wr_ready                ), 
        .wr_bar         ( wr_bar                        ), 
        .wr_addr        ( wr_addr                       ), 
        .wr_be          ( wr_be                         ), 
        .wr_data        ( wr_data                       ), 
        .wr_valid       ( wr_valid                      )  
    );

    wire [87:0] bar_rsp_ctx[7]; 
    wire [31:0] bar_rsp_data[7];
    wire        bar_rsp_valid[7];
    
    assign rd_rsp_ctx = bar_rsp_valid[0] ? bar_rsp_ctx[0] : 
                        bar_rsp_valid[1] ? bar_rsp_ctx[1] : 
                        bar_rsp_valid[2] ? bar_rsp_ctx[2] : 
                        bar_rsp_valid[3] ? bar_rsp_ctx[3] : 
                        bar_rsp_valid[4] ? bar_rsp_ctx[4] : 
                        bar_rsp_valid[5] ? bar_rsp_ctx[5] : 
                        bar_rsp_valid[6] ? bar_rsp_ctx[6] : 0; 
    assign rd_rsp_data = bar_rsp_valid[0] ? bar_rsp_data[0] : 
                         bar_rsp_valid[1] ? bar_rsp_data[1] : 
                         bar_rsp_valid[2] ? bar_rsp_data[2] : 
                         bar_rsp_valid[3] ? bar_rsp_data[3] : 
                         bar_rsp_valid[4] ? bar_rsp_data[4] : 
                         bar_rsp_valid[5] ? bar_rsp_data[5] : 
                         bar_rsp_valid[6] ? bar_rsp_data[6] : 0; 
    assign rd_rsp_valid = bar_rsp_valid[0] || bar_rsp_valid[1] || bar_rsp_valid[2] || bar_rsp_valid[3] || bar_rsp_valid[4] || bar_rsp_valid[5] || bar_rsp_valid[6]; 

    pcileech_bar_impl_zerowrite4k i_bar0( 
        .rst            ( rst                           ),
        .clk            ( clk                           ), 
        .wr_addr        ( wr_addr                       ), 
        .wr_be          ( wr_be                         ), 
        .wr_data        ( wr_data                       ), 
        .wr_valid       ( wr_valid && wr_bar[0]         ), 
        .rd_req_ctx     ( rd_req_ctx                    ), 
        .rd_req_addr    ( rd_req_addr                   ), 
        .rd_req_valid   ( rd_req_valid && rd_req_bar[0] ), 
        .rd_rsp_ctx     ( bar_rsp_ctx[0]                ), 
        .rd_rsp_data    ( bar_rsp_data[0]               ), 
        .rd_rsp_valid   ( bar_rsp_valid[0]              )  
    );

    pcileech_bar_impl_loopaddr i_bar1( 
        .rst            ( rst                           ),
        .clk            ( clk                           ), 
        .wr_addr        ( wr_addr                       ), 
        .wr_be          ( wr_be                         ), 
        .wr_data        ( wr_data                       ), 
        .wr_valid       ( wr_valid && wr_bar[1]         ), 
        .rd_req_ctx     ( rd_req_ctx                    ), 
        .rd_req_addr    ( rd_req_addr                   ), 
        .rd_req_valid   ( rd_req_valid && rd_req_bar[1] ), 
        .rd_rsp_ctx     ( bar_rsp_ctx[1]                ), 
        .rd_rsp_data    ( bar_rsp_data[1]               ), 
        .rd_rsp_valid   ( bar_rsp_valid[1]              )  
    );

    pcileech_bar_impl_none i_bar2( 
        .rst            ( rst                           ),
        .clk            ( clk                           ), 
        .wr_addr        ( wr_addr                       ), 
        .wr_be          ( wr_be                         ), 
        .wr_data        ( wr_data                       ), 
        .wr_valid       ( wr_valid && wr_bar[2]         ), 
        .rd_req_ctx     ( rd_req_ctx                    ), 
        .rd_req_addr    ( rd_req_addr                   ), 
        .rd_req_valid   ( rd_req_valid && rd_req_bar[2] ), 
        .rd_rsp_ctx     ( bar_rsp_ctx[2]                ), 
        .rd_rsp_data    ( bar_rsp_data[2]               ), 
        .rd_rsp_valid   ( bar_rsp_valid[2]              )  
    );

    pcileech_bar_impl_none i_bar3( 
        .rst            ( rst                           ),
        .clk            ( clk                           ),
        .wr_addr        ( wr_addr                       ), 
        .wr_be          ( wr_be                         ), 
        .wr_data        ( wr_data                       ), 
        .wr_valid       ( wr_valid && wr_bar[3]         ), 
        .rd_req_ctx     ( rd_req_ctx                    ), 
        .rd_req_addr    ( rd_req_addr                   ), 
        .rd_req_valid   ( rd_req_valid && rd_req_bar[3] ), 
        .rd_rsp_ctx     ( bar_rsp_ctx[3]                ), 
        .rd_rsp_data    ( bar_rsp_data[3]               ), 
        .rd_rsp_valid   ( bar_rsp_valid[3]              )  
    );

    pcileech_bar_impl_none i_bar4( 
        .rst            ( rst                           ),
        .clk            ( clk                           ),
        .wr_addr        ( wr_addr                       ), 
        .wr_be          ( wr_be                         ), 
        .wr_data        ( wr_data                       ), 
        .wr_valid       ( wr_valid && wr_bar[4]         ), 
        .rd_req_ctx     ( rd_req_ctx                    ), 
        .rd_req_addr    ( rd_req_addr                   ), 
        .rd_req_valid   ( rd_req_valid && rd_req_bar[4] ), 
        .rd_rsp_ctx     ( bar_rsp_ctx[4]                ), 
        .rd_rsp_data    ( bar_rsp_data[4]               ), 
        .rd_rsp_valid   ( bar_rsp_valid[4]              )  
    );

    pcileech_bar_impl_none i_bar5( 
        .rst            ( rst                           ),
        .clk            ( clk                           ),
        .wr_addr        ( wr_addr                       ), 
        .wr_be          ( wr_be                         ), 
        .wr_data        ( wr_data                       ), 
        .wr_valid       ( wr_valid && wr_bar[5]         ), 
        .rd_req_ctx     ( rd_req_ctx                    ), 
        .rd_req_addr    ( rd_req_addr                   ), 
        .rd_req_valid   ( rd_req_valid && rd_req_bar[5] ), 
        .rd_rsp_ctx     ( bar_rsp_ctx[5]                ), 
        .rd_rsp_data    ( bar_rsp_data[5]               ), 
        .rd_rsp_valid   ( bar_rsp_valid[5]              )  
    );

    pcileech_bar_impl_none i_bar6_optrom( 
        .rst            ( rst                           ),
        .clk            ( clk                           ),
        .wr_addr        ( wr_addr                       ), 
        .wr_be          ( wr_be                         ), 
        .wr_data        ( wr_data                       ), 
        .wr_valid       ( wr_valid && wr_bar[6]         ), 
        .rd_req_ctx     ( rd_req_ctx                    ), 
        .rd_req_addr    ( rd_req_addr                   ), 
        .rd_req_valid   ( rd_req_valid && rd_req_bar[6] ), 
        .rd_rsp_ctx     ( bar_rsp_ctx[6]                ), 
        .rd_rsp_data    ( bar_rsp_data[6]               ), 
        .rd_rsp_valid   ( bar_rsp_valid[6]              )  
    );
endmodule

module pcileech_tlps128_bar_rdengine(
    input                   rst,
    input                   clk,
    input [15:0]            pcie_id,
    IfAXIS128.sink_lite     tlps_in,
    input                   tlps_in_valid,
    IfAXIS128.source        tlps_out,
    output wire [87:0]      rd_req_ctx,
    output wire [6:0]       rd_req_bar,
    output wire [31:0]      rd_req_addr,
    output wire             rd_req_valid,
    input [87:0]            rd_rsp_ctx,
    input [31:0]            rd_rsp_data,
    input                   rd_rsp_valid
);

    localparam S_IDLE           = 2'b00;
    localparam S_RD_REQ_DECODE  = 2'b01;
    localparam S_RD_REQ_SEND    = 2'b10;
    localparam S_RD_RSP_WAIT    = 2'b11;

    reg [1:0] state = S_IDLE;
    reg [87:0]      s_rd_req_ctx;
    reg [6:0]       s_rd_req_bar;
    reg [31:0]      s_rd_req_addr;
    reg             s_rd_req_valid;
    reg             s_tlps_out_valid;
    reg [127:0]     s_tlps_out_tdata;
    reg [3:0]       s_tlps_out_tkeepdw;
    reg             s_tlps_out_tlast;
    reg [8:0]       s_tlps_out_tuser;

    assign rd_req_ctx   = s_rd_req_ctx;
    assign rd_req_bar   = s_rd_req_bar;
    assign rd_req_addr  = s_rd_req_addr;
    assign rd_req_valid = s_rd_req_valid;

    assign tlps_out.tvalid  = s_tlps_out_valid;
    assign tlps_out.tdata   = s_tlps_out_tdata;
    assign tlps_out.tkeepdw = s_tlps_out_tkeepdw;
    assign tlps_out.tlast   = s_tlps_out_tlast;
    assign tlps_out.tuser   = s_tlps_out_tuser;
    assign tlps_out.has_data = s_tlps_out_valid; 

    always @(posedge clk) begin
        if (rst) begin
            state <= S_IDLE;
            s_rd_req_valid <= 1'b0;
            s_tlps_out_valid <= 1'b0;
        end else begin
            s_rd_req_valid <= 1'b0;
            s_tlps_out_valid <= 1'b0;

            case (state)
                S_IDLE: begin
                    if (tlps_in_valid) begin
                        state <= S_RD_REQ_DECODE;
                    end
                end

                S_RD_REQ_DECODE: begin
                    s_rd_req_bar <= tlps_in.tuser[8:2];
                    s_rd_req_addr <= tlps_in.tdata[95:64]; 
                    s_rd_req_ctx[15:0]  <= tlps_in.tdata[63:48]; 
                    s_rd_req_ctx[23:16] <= tlps_in.tdata[47:40]; 
                    s_rd_req_ctx[31:24] <= pcie_id[7:0];          
                    s_rd_req_ctx[39:32] <= pcie_id[15:8];         
                    s_rd_req_ctx[87:40] <= {1'b0, tlps_in.tdata[31:0]}; 
                    s_rd_req_valid <= 1'b1;
                    state <= S_RD_REQ_SEND;
                end
                
                S_RD_REQ_SEND: begin
                    state <= S_RD_RSP_WAIT;
                end

                S_RD_RSP_WAIT: begin
                    if (rd_rsp_valid) begin
                        s_tlps_out_tdata[31:0]   <= 32'b01001010000000000000000000000001; 
                        s_tlps_out_tdata[63:32]  <= { pcie_id, 16'h0004 }; 
                        s_tlps_out_tdata[95:64]  <= { rd_rsp_ctx[15:0], rd_rsp_ctx[23:16], 8'h00 }; 
                        s_tlps_out_tdata[127:96] <= rd_rsp_data;
                        s_tlps_out_tkeepdw <= 4'b1111;
                        s_tlps_out_tlast <= 1'b1;
                        s_tlps_out_tuser <= 9'b0; 
                        s_tlps_out_valid <= 1'b1;
                        state <= S_IDLE;
                    end
                end
                default: state <= S_IDLE;
            endcase
        end
    end
endmodule

module pcileech_tlps128_bar_wrengine(
    input                   rst,
    input                   clk,
    IfAXIS128.sink_lite     tlps_in,
    input                   tlps_in_valid,
    output wire             tlps_in_ready,
    output wire [6:0]       wr_bar,
    output wire [31:0]      wr_addr,
    output wire [3:0]       wr_be,
    output wire [31:0]      wr_data,
    output wire             wr_valid
);

    reg  s_wr_valid;
    reg  [6:0] s_wr_bar;
    reg  [31:0] s_wr_addr;
    reg  [3:0] s_wr_be;
    reg  [31:0] s_wr_data;
    
    assign tlps_in_ready = 1'b1; 
    assign wr_valid = s_wr_valid;
    assign wr_bar   = s_wr_bar;
    assign wr_addr  = s_wr_addr;
    assign wr_be    = s_wr_be;
    assign wr_data  = s_wr_data;

    always @(posedge clk) begin
        if (rst) begin
            s_wr_valid <= 1'b0;
        end else begin
            s_wr_valid <= 1'b0; 
            if (tlps_in_valid) begin
                s_wr_bar  <= tlps_in.tuser[8:2];
                s_wr_addr <= tlps_in.tdata[95:64]; 
                s_wr_be   <= tlps_in.tkeepdw; 
                s_wr_data <= tlps_in.tdata[127:96]; 
                s_wr_valid <= 1'b1;
            end
        end
    end
endmodule

module pcileech_bar_impl_none (
    input               rst,
    input               clk,
    input      [31:0]   wr_addr,
    input      [3:0]    wr_be,
    input      [31:0]   wr_data,
    input               wr_valid,
    input      [87:0]   rd_req_ctx,
    input      [31:0]   rd_req_addr,
    input               rd_req_valid,
    output reg [87:0]   rd_rsp_ctx,
    output reg [31:0]   rd_rsp_data,
    output reg          rd_rsp_valid
);
    always @(posedge clk) begin
        if (rst) begin
            rd_rsp_valid <= 1'b0;
            rd_rsp_ctx   <= 88'b0;
            rd_rsp_data  <= 32'b0;
        end else begin
            rd_rsp_valid <= rd_req_valid; 
            if (rd_req_valid) begin
                rd_rsp_ctx  <= rd_req_ctx;
                rd_rsp_data <= 32'h00000000; 
            end else begin
                 rd_rsp_ctx   <= 88'b0;
                 rd_rsp_data  <= 32'b0;
            end
        end
    end
endmodule

module pcileech_bar_impl_loopaddr (
    input               rst,
    input               clk,
    input      [31:0]   wr_addr,
    input      [3:0]    wr_be,
    input      [31:0]   wr_data,
    input               wr_valid,
    input      [87:0]   rd_req_ctx,
    input      [31:0]   rd_req_addr,
    input               rd_req_valid,
    output reg [87:0]   rd_rsp_ctx,
    output reg [31:0]   rd_rsp_data,
    output reg          rd_rsp_valid
);
    always @(posedge clk) begin
        if (rst) begin
            rd_rsp_valid <= 1'b0;
            rd_rsp_ctx   <= 88'b0;
            rd_rsp_data  <= 32'b0;
        end else begin
            rd_rsp_valid <= rd_req_valid;
            if (rd_req_valid) begin
                rd_rsp_ctx  <= rd_req_ctx;
                rd_rsp_data <= rd_req_addr; 
            end else begin
                 rd_rsp_ctx   <= 88'b0;
                 rd_rsp_data  <= 32'b0;
            end
        end
    end
endmodule

module pcileech_bar_impl_zerowrite4k (
    input               rst,
    input               clk,
    input      [31:0]   wr_addr,
    input      [3:0]    wr_be,
    input      [31:0]   wr_data,
    input               wr_valid,
    input      [87:0]   rd_req_ctx,
    input      [31:0]   rd_req_addr,
    input               rd_req_valid,
    output reg [87:0]   rd_rsp_ctx,
    output reg [31:0]   rd_rsp_data,
    output reg          rd_rsp_valid
);

    reg [31:0] mem [1023:0]; 
    wire [9:0] addr_dword = wr_addr[11:2]; 
    wire [9:0] rd_addr_dword = rd_req_addr[11:2];

    integer i;
    initial begin
        for (i = 0; i < 1024; i = i + 1) begin
            mem[i] = 32'h00000000;
        end
    end

    always @(posedge clk) begin
        if (wr_valid && addr_dword < 1024) begin
            if (wr_be[0]) mem[addr_dword][7:0]   <= wr_data[7:0];
            if (wr_be[1]) mem[addr_dword][15:8]  <= wr_data[15:8];
            if (wr_be[2]) mem[addr_dword][23:16] <= wr_data[23:16];
            if (wr_be[3]) mem[addr_dword][31:24] <= wr_data[31:24];
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            rd_rsp_valid <= 1'b0;
            rd_rsp_ctx   <= 88'b0;
            rd_rsp_data  <= 32'b0;
        end else begin
            rd_rsp_valid <= rd_req_valid;
            if (rd_req_valid) begin
                rd_rsp_ctx <= rd_req_ctx;
                if (rd_addr_dword < 1024) begin
                    rd_rsp_data <= mem[rd_addr_dword];
                end else begin
                    rd_rsp_data <= 32'hDEADBEEF; 
                end
            end else begin
                rd_rsp_ctx   <= 88'b0;
                rd_rsp_data  <= 32'b0;
            end
        end
    end
endmodule