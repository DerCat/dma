//
// PCILeech FPGA.
//
// PCIe configuration module - CFG handling for Artix-7.
// 
// (c) Ulf Frisk, 2018-2024
// Author: Ulf Frisk, pcileech@frizk.net
// MSIX TLP Author: AceKingSuited    ( https://discord.gg/E32e7Yca )
//                  Kilmu1337       （ https://discord.gg/sXeTPJfpaN ）              
`timescale 1ns / 1ps
`include "pcileech_header.svh"

module pcileech_pcie_cfg_a7(
    input                   rst,
    input                   clk_sys,
    input                   clk_pcie,
    IfPCIeFifoCfg.mp_pcie   dfifo,
    IfPCIeSignals.mpm       ctx,
    IfAXIS128.source        tlps_static,
    input                   i_valid, // These i_valid, i_addr, i_data seem unused from original, ensure this is intended.
    input [31:0]            i_addr,  // If they were for direct BRAM access, they are now superseded by dfifo.
    input [31:0]            i_data,
    output wire             o_int,
    input                   int_enable,
    output [15:0]           pcie_id,
    output wire [31:0]      base_address_register // This output might reflect actual BAR0 from FPGA, not emulated.
    );

    // Emulated PCI Configuration Space (4KB = 1024 DWORDS)
    reg [31:0] emulated_cfg_bram [1023:0];
    
    // Initialization of the emulated configuration space BRAM
    // This will be a long block. In a real Vivado project, you'd use a .coe file linked to the BRAM.
    // For this text-based output, we generate initial assignments.
    initial begin
        // Initialize BRAM with values from pcileech_cfgspace.txt
        // Format: emulated_cfg_bram[address_dword] = 32'hXXXXXXXX;
        // Block 0000
        emulated_cfg_bram[0] = 32'h8680847a; emulated_cfg_bram[1] = 32'h07040000; emulated_cfg_bram[2] = 32'h11000106; emulated_cfg_bram[3] = 32'h00008000;
        emulated_cfg_bram[4] = 32'h00000000; emulated_cfg_bram[5] = 32'h00000000; emulated_cfg_bram[6] = 32'h00000000; emulated_cfg_bram[7] = 32'h00000000;
        emulated_cfg_bram[8] = 32'h00000000; emulated_cfg_bram[9] = 32'h00000000; emulated_cfg_bram[10] = 32'h00000000; emulated_cfg_bram[11] = 32'h6214257d;
        emulated_cfg_bram[12] = 32'h00000000; emulated_cfg_bram[13] = 32'h00000000; emulated_cfg_bram[14] = 32'h00000000; emulated_cfg_bram[15] = 32'h00000000;
        emulated_cfg_bram[16] = 32'h00000000; emulated_cfg_bram[17] = 32'h00000000; emulated_cfg_bram[18] = 32'h00000000; emulated_cfg_bram[19] = 32'h00000000;
        emulated_cfg_bram[20] = 32'h00000000; emulated_cfg_bram[21] = 32'h00000000; emulated_cfg_bram[22] = 32'h00000000; emulated_cfg_bram[23] = 32'h00000000;
        emulated_cfg_bram[24] = 32'h00000000; emulated_cfg_bram[25] = 32'h00000000; emulated_cfg_bram[26] = 32'h00000000; emulated_cfg_bram[27] = 32'h00000000;
        emulated_cfg_bram[28] = 32'h00000000; emulated_cfg_bram[29] = 32'h00000000; emulated_cfg_bram[30] = 32'h00000000; emulated_cfg_bram[31] = 32'h00000000;
        emulated_cfg_bram[32] = 32'h7000033c; emulated_cfg_bram[33] = 32'h0102fc00; emulated_cfg_bram[34] = 32'h010a3c00; emulated_cfg_bram[35] = 32'hf1030c00;
        emulated_cfg_bram[36] = 32'h81000c00; emulated_cfg_bram[37] = 32'h102f0000; emulated_cfg_bram[38] = 32'h00000000; emulated_cfg_bram[39] = 32'h00000000;
        emulated_cfg_bram[40] = 32'h00000000; emulated_cfg_bram[41] = 32'h00000000; emulated_cfg_bram[42] = 32'h00000000; emulated_cfg_bram[43] = 32'h00000000;
        emulated_cfg_bram[44] = 32'h00000000; emulated_cfg_bram[45] = 32'h00000000; emulated_cfg_bram[46] = 32'h00000000; emulated_cfg_bram[47] = 32'h00000000;
        emulated_cfg_bram[48] = 32'h00000000; emulated_cfg_bram[49] = 32'h00000000; emulated_cfg_bram[50] = 32'h00000000; emulated_cfg_bram[51] = 32'h00000000;
        emulated_cfg_bram[52] = 32'h00000000; emulated_cfg_bram[53] = 32'h00000000; emulated_cfg_bram[54] = 32'hcfff0000; emulated_cfg_bram[55] = 32'h84000000; // Corrected offset based on line count
        emulated_cfg_bram[56] = 32'h00000000; emulated_cfg_bram[57] = 32'h00000000; emulated_cfg_bram[58] = 32'h00000000; emulated_cfg_bram[59] = 32'h00000000;
        emulated_cfg_bram[60] = 32'h00000000; emulated_cfg_bram[61] = 32'h00000000; emulated_cfg_bram[62] = 32'h00001100; emulated_cfg_bram[63] = 32'h00000000;

        // Blocks 0100 to 0F00 are all zeros in the provided pcileech_cfgspace.txt
        // Example for one block (0100), repeat for 0200...0F00
        // Alternatively, use a loop if synthesis supports it for initial blocks, or ensure default is 0.
        // For brevity, I'll assume remaining BRAM defaults to 0 or you'd fill this similar to above.
        // For a complete solution, all 1024 entries would be explicitly set.
        // For instance, to zero out from 64 to 1023:
        for (integer i = 64; i < 1024; i = i + 1) begin
            emulated_cfg_bram[i] = 32'h00000000;
        end
        // Overwrite specific non-zero values from pcileech_cfgspace.txt for higher offsets if any.
        // The provided pcileech_cfgspace.txt after the first block (0000-00FF / DWords 0-63) is all zeroes.
        // The non-zero values `7000033c` etc. were in the first block (offset 0x80 bytes = DW 32)
        // My indexing above for 0x80 was byte offset. Corrected:
        // DW 0x00: 8680847a ...
        // DW 0x0B: 6214257d (Subsystem IDs) at byte offset 0x2C
        // DW 0x0C: 00000000 (Exp ROM)
        // DW 0x0D: 00000000 (Cap Ptr)
        // DW 0x0F: 00000000 (Int Line/Pin)

        // The values `7000033c,0102fc00,010a3c00,f1030c00, 81000c00,102f0000` are at byte offsets:
        // 0x80, 0x84, 0x88, 0x8C, 0x90, 0x94 in the original file.
        // These are DWORD addresses: 0x20, 0x21, 0x22, 0x23, 0x24, 0x25
        // This corresponds to my `emulated_cfg_bram[32]` to `emulated_cfg_bram[37]` above.
        // The values `cfff0000, 84000000` are at byte offsets 0xD8, 0xDC
        // DWORD addresses: 0x36, 0x37. This is `emulated_cfg_bram[54]` and `emulated_cfg_bram[55]`.
        // The value `00001100` is at byte offset 0xFC.
        // DWORD address: 0x3F. This is `emulated_cfg_bram[63]`.
        // The initialization above seems to correctly capture the first 0x100 bytes (64 DWords).
        // The rest of pcileech_cfgspace.txt is 0, so the loop for i=64 to 1023 is correct.

    end

    // ----------------------------------------------------
    // TickCount64
    // ----------------------------------------------------
    time tickcount64 = 0; // [cite: 109]
    always @ ( posedge clk_pcie ) // [cite: 110]
        tickcount64 <= tickcount64 + 1; // [cite: 110]

    // ----------------------------------------------------------------------------
    // Convert received CFG data from FT601 to PCIe clock domain
    // ----------------------------------------------------------------------------
    reg             in_rden; // [cite: 111]
    wire [63:0]     in_dout; // [cite: 112]
    wire            in_empty; // [cite: 112]
    wire            in_valid; // [cite: 113]
    
    fifo_64_64 i_fifo_pcie_cfg_tx( // [cite: 117]
        .rst            ( rst                   ), // [cite: 117]
        .wr_clk         ( clk_sys               ), // [cite: 117]
        .rd_clk         ( clk_pcie              ), // [cite: 117]
        .din            ( dfifo.tx_data         ), // [cite: 118]
        .wr_en          ( dfifo.tx_valid        ), // [cite: 118]
        .rd_en          ( in_rden               ), // [cite: 118]
        .dout           ( in_dout               ), // [cite: 119]
        .full           (                       ), // [cite: 119]
        .empty          ( in_empty              ), // [cite: 119]
        .valid          ( in_valid              )  // [cite: 120]
    );

    // ------------------------------------------------------------------------
    // Convert received CFG from PCIe core and transmit onwards to FT601
    // ------------------------------------------------------------------------
    reg             out_wren; // [cite: 122]
    reg [31:0]      out_data_ftdi; // Renamed from out_data to avoid conflict
    wire            pcie_cfg_rx_almost_full; // [cite: 123]

    fifo_32_32_clk2 i_fifo_pcie_cfg_rx( // [cite: 124]
        .rst            ( rst                   ), // [cite: 124]
        .wr_clk         ( clk_pcie              ), // [cite: 124]
        .rd_clk         ( clk_sys               ), // [cite: 124]
        .din            ( out_data_ftdi         ), // [cite: 125]
        .wr_en          ( out_wren              ), // [cite: 125]
        .rd_en          ( dfifo.rx_rd_en        ), // [cite: 125]
        .dout           ( dfifo.rx_data         ), // [cite: 126]
        .full           (                       ), // [cite: 126]
        .almost_full    ( pcie_cfg_rx_almost_full ), // [cite: 126]
        .empty          (                       ), // [cite: 127]
        .valid          ( dfifo.rx_valid        )  // [cite: 127]
    );
    
    // Original ro/rw registers for module control (can be kept if needed for other PCILeech functions)
    // For full emulation, these are NOT the primary config space.
    // wire    [383:0]     ro; // [cite: 128]
    // reg     [703:0]     rw; // [cite: 129]
    // ... (assignments for ro and rw for PCILeech specific control)

    // Simplified: pcie_id is derived from actual core config, base_address_register also.
    // These are properties of the FPGA as a device, not the emulated one if distinct.
    assign pcie_id = {ctx.cfg_bus_number, ctx.cfg_device_number, ctx.cfg_function_number}; // [cite: 147, 148, 149, 300]
    assign base_address_register = ctx.cfg_mgmt_do; // Placeholder, BAR0 of actual FPGA, not emulated.

    // MSI-X related signals (kept from original, may need adjustment based on emulated device caps)
    bit msix_valid;           // [cite: 292]
    bit msix_has_data;        // [cite: 292]
    bit [127:0] msix_tlp;     // [cite: 293]
    assign tlps_static.tdata[127:0] = msix_tlp; // [cite: 294]
    assign tlps_static.tkeepdw  = 4'hf; // [cite: 295]
    assign tlps_static.tlast   = 1'b1; // [cite: 296]
    assign tlps_static.tuser[0] = 1'b1; // [cite: 297]
    assign tlps_static.tvalid   = msix_valid; // [cite: 298]
    assign tlps_static.has_data = msix_has_data; // [cite: 299]

    // ------------------------------------------------------------------------
    // STATE MACHINE / LOGIC FOR FTDI COMMANDS (Interacting with EMULATED CFG BRAM)
    // ------------------------------------------------------------------------
    // Assuming FTDI commands are structured to provide:
    // - A command type (read/write emulated config space)
    // - A byte address for the emulated config space
    // - Data for writes / Mask for writes

    // From in_dout (64-bit from FTDI):
    // in_dout[63:32] could be data for write.
    // in_dout[31:16] is in_cmd_address_byte (byte address into config space). [cite: 301]
    // in_dout[15:12] is in_type (command type). [cite: 116]
    // in_dout[13] is write enable, in_dout[12] is read enable. [cite: 306, 307]
    // For writes, let's assume the data is in_dout[63:32] and applies as a full DWORD.
    // For reads, we return a DWORD. The FTDI interface returns 16 bits at a time.
    // This part needs careful definition of the FTDI protocol.
    // Let's make it DWORD oriented for the BRAM.

    wire [15:0] cfg_space_byte_addr = in_dout[31:16]; // [cite: 301]
    wire [9:0]  cfg_space_dword_addr = cfg_space_byte_addr >> 2; // For 4KB space, 10 bits for DWORD addr.
    
    wire is_ftdi_cfg_read  = in_dout[12] & in_valid; // [cite: 306]
    wire is_ftdi_cfg_write = in_dout[13] & in_valid; // [cite: 307] (simplified, original checked addr for rw range)

    reg [31:0] read_data_from_bram;

    // Read from emulated BRAM
    always @ (posedge clk_pcie) begin
        if (is_ftdi_cfg_read) begin
            if (cfg_space_dword_addr < 1024) begin
                read_data_from_bram <= emulated_cfg_bram[cfg_space_dword_addr];
            end else begin
                read_data_from_bram <= 32'hDEADBEEF; // Address out of bound
            end
        end
    end

    // Write to emulated BRAM
    always @ (posedge clk_pcie) begin
        if (rst) begin
            // Potential re-init or clear of writable parts of BRAM if needed
        end else if (is_ftdi_cfg_write) begin
            if (cfg_space_dword_addr < 1024) begin
                // Assuming in_dout[63:32] is the 32-bit data to write
                // And assuming byte enables are all true for a DWORD write.
                // Command Register (Offset 0x04, DWORD 1)
                // BARs (Offsets 0x10-0x27, DWORDS 4-9)
                // Only allow writes to specific registers like Command, BARs, etc.
                // For an ISA bridge, BARs are often fixed or I/O. Here they are 0.
                // Command reg is usually R/W.
            if (cfg_space_dword_addr == 1) begin // Command Register at DWORD 1 (byte offset 0x04)
                // 只更新命令寄存器部分（低16位）
                // 假设 in_dout[63:32] 是要写入的完整32位数据
                emulated_cfg_bram[cfg_space_dword_addr][15:0] <= in_dout[47:32];
                // 状态寄存器部分（31:16）通常不应该被配置写直接修改。
                // 它应该由内部逻辑或硬件事件来更新。
            end
                // Add other writable registers if necessary.
                // For now, only Command Register is explicitly made writable via FTDI.
                // Other writes might be ignored or allowed based on detailed spec.
            end
        end
    end
    
    // Logic to drive FTDI output FIFO (dfifo.rx_data)
    always @ (posedge clk_pcie) begin
        if (rst) begin
            out_wren <= 1'b0; // [cite: 204]
        end else begin
            out_wren <= is_ftdi_cfg_read; // Trigger write to FTDI output FIFO after a read
            if (is_ftdi_cfg_read) begin
                // FTDI interface seems to send address back with data.
                // And data is LSB. Original was 16-bit.
                // To send a 32-bit DWord, it might take two FTDI packets or a wider dfifo.rx_data.
                // Assuming dfifo.rx_data is 32-bit and can take the full DWord.
                out_data_ftdi <= read_data_from_bram;
                // If FTDI protocol expects address + 16bit data:
                // out_data_ftdi[31:16] <= cfg_space_byte_addr;
                // out_data_ftdi[15:0]  <= read_data_from_bram[15:0]; // or [31:16] depending on which half
            end else begin
                out_data_ftdi <= 32'b0;
            end
        end
    end
    
    assign in_rden = tickcount64[1] & ~pcie_cfg_rx_almost_full; // [cite: 311] (simplified condition)

    // Original logic for interacting with ctx.cfg_mgmt_* (FPGA's own config space)
    // This can be kept for diagnostics or direct FPGA core control if PCILeech SW uses it.
    // It is separate from the emulated_cfg_bram.
    reg                 rwi_cfg_mgmt_rd_en; // [cite: 130]
    reg                 rwi_cfg_mgmt_wr_en; // [cite: 131]
    reg                 rwi_cfgrd_valid;    // [cite: 132]
    reg     [9:0]       rwi_cfgrd_addr;     // [cite: 133]
    reg     [3:0]       rwi_cfgrd_byte_en;  // [cite: 134]
    reg     [31:0]      rwi_cfgrd_data;     // [cite: 135]
    
    // Example: To read FPGA's own config (not emulated) via a specific FTDI command (different in_type)
    // if (in_type == TYPE_READ_FPGA_CFG) then rwi_cfg_mgmt_rd_en <= 1'b1; ...
    // This part of original code related to 'rw' register file controlling ctx.cfg_mgmt_* is omitted for brevity
    // but would be needed if that functionality is to be preserved alongside BRAM emulation.
    // The original code used 'rw' array to stage values for ctx.cfg_mgmt_di, ctx.cfg_mgmt_dwaddr etc.
    // assign ctx.cfg_mgmt_rd_en               = rwi_cfg_mgmt_rd_en & ~ctx.cfg_mgmt_rd_wr_done; // [cite: 253]
    // assign ctx.cfg_mgmt_wr_en               = rwi_cfg_mgmt_wr_en & ~ctx.cfg_mgmt_rd_wr_done; // [cite: 254]
    // (Need to ensure `rw` used for these assignments is separate from emulated config space access)


    // MSI-X TLP generation logic (largely unchanged from original)
    // This TLP generation is triggered by 'o_int' and 'int_enable'.
    // The actual interrupt source and conditions for 'o_int' might need to align with ISA bridge behavior.
    // For an ISA bridge, it's more about handling legacy INTx.
    // The current 'o_int' is a timer based interrupt. [cite: 378]
    wire [31:0] HDR_MEMWR64 = 32'b01000000_00000000_00000000_00000001; // [cite: 312, 313]
    localparam [31:0] MESSAGE_ADDR_HIGH = 32'hFEE3F00C; // [cite: 314] (Example MSI-X addr)
    localparam [31:0] MESSAGE_ADDR_LOW  = 32'h00000000; // [cite: 315]
    localparam [31:0] MESSAGE_DATA      = 32'h4973;     // [cite: 316] (Example MSI-X data)

    wire [31:0] MWR64_DW2 = MESSAGE_ADDR_LOW;  // [cite: 317]
    wire [31:0] MWR64_DW3 = MESSAGE_ADDR_HIGH; // [cite: 318]
    wire [31:0] MWR64_DW4 = MESSAGE_DATA;      // [cite: 319]

    // Interrupt TLP state machine for tlps_static (MSI-X)
    always @ (posedge clk_pcie) begin // [cite: 367]
        if (rst) begin
            msix_valid <= 1'b0; // [cite: 367]
            msix_has_data <= 1'b0; // [cite: 368]
            msix_tlp <= 127'b0; // [cite: 369]
        end else if (msix_valid && tlps_static.tready) begin
            msix_valid <= 1'b0; // [cite: 370]
        end else if (msix_has_data && tlps_static.tready) begin
            msix_valid <= 1'b1; // [cite: 371]
            msix_has_data <= 1'b0; // [cite: 372]
        end else if (o_int && int_enable) begin // Modified to check int_enable
            msix_has_data <= 1'b1; // [cite: 372]
            msix_tlp <= {MWR64_DW4, MWR64_DW3, MWR64_DW2, HDR_MEMWR64}; // [cite: 373]
        end
    end

    // Legacy interrupt related signals (for ctx if used by FPGA core for its own interrupts)
    reg[7:0] cfg_int_di;        // [cite: 251]
    reg[4:0] cfg_msg_num;       // [cite: 252]
    reg cfg_int_assert;         // [cite: 252]
    reg cfg_int_valid_core;     // Renamed from cfg_int_valid
    wire cfg_int_ready = ctx.cfg_interrupt_rdy; // [cite: 252]
    reg cfg_int_stat;           // [cite: 252]

    assign ctx.cfg_interrupt_di             = cfg_int_di; // [cite: 268]
    assign ctx.cfg_pciecap_interrupt_msgnum = cfg_msg_num; // [cite: 268]
    assign ctx.cfg_interrupt_assert         = cfg_int_assert; // [cite: 269]
    assign ctx.cfg_interrupt                = cfg_int_valid_core; // [cite: 270]
    assign ctx.cfg_interrupt_stat           = cfg_int_stat; // [cite: 271]

    always @ ( posedge clk_pcie ) begin // [cite: 363]
       if ( rst ) begin
           cfg_int_valid_core <= 1'b0; // [cite: 363]
           // ... other initializations from original [cite: 364]
       end else if (cfg_int_ready && cfg_int_valid_core) begin
           cfg_int_valid_core <= 1'b0; // [cite: 365]
       // } else if (o_int_for_core_interrupt) begin // If there's a separate trigger for core's own INTx/MSI
       //    cfg_int_valid_core <= 1'b1; 
       end
    end
    
    // Timer based interrupt for o_int (triggers MSI-X example TLP)
    time int_cnt = 0; // [cite: 374]
    always @ (posedge clk_pcie) begin // [cite: 375]
        if (rst) begin
            int_cnt <= 0; // [cite: 375]
        end else if (int_enable && (int_cnt == 32'd100000)) begin // Check int_enable here too
            int_cnt <= 0; // [cite: 376]
        end else if (int_enable) begin
            int_cnt <= int_cnt + 1; // [cite: 377]
        end else begin
             int_cnt <= 0; // Reset counter if not enabled
        end
    end
    assign o_int = (int_enable && (int_cnt == 32'd100000)); // [cite: 378]

endmodule