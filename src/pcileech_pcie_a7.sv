//
// PCILeech FPGA.
//
// PCIe module for Artix-7.
//
// (c) Ulf Frisk, 2018-2024
// Author: Ulf Frisk, pcileech@frizk.net
//

`timescale 1ns / 1ps
`include "pcileech_header.svh"

module pcileech_pcie_a7(
    input                   clk_sys,
    input                   rst,

    // PCIe fabric
    output  [0:0]           pcie_tx_p,
    output  [0:0]           pcie_tx_n, // [cite: 4]
    input   [0:0]           pcie_rx_p,
    input   [0:0]           pcie_rx_n,
    input                   pcie_clk_p,
    input                   pcie_clk_n,
    input                   pcie_perst_n, // [cite: 5]
    
    // State and Activity LEDs
    output                  led_state,
    
    // PCIe <--> FIFOs
    IfPCIeFifoCfg.mp_pcie   dfifo_cfg,
    IfPCIeFifoTlp.mp_pcie   dfifo_tlp,
    IfPCIeFifoCore.mp_pcie  dfifo_pcie,
    IfShadow2Fifo.shadow    dshadow2fifo
    );

    // ----------------------------------------------------------------------------
    // PCIe DEFINES AND WIRES
    // ----------------------------------------------------------------------------
    IfPCIeSignals           ctx(); // [cite: 6]
    IfPCIeTlpRxTx           tlp_tx(); // [cite: 7]
    IfPCIeTlpRxTx           tlp_rx(); // [cite: 8]
    IfAXIS128               tlps_tx(); // [cite: 9]
    IfAXIS128               tlps_rx(); // [cite: 10]
    IfAXIS128               tlps_static(); // [cite: 11]
    
    wire [15:0]             pcie_id; // [cite: 12] (This is BDF from cfg_a7 module)
    wire                    user_lnk_up; // [cite: 13]
    
    wire pcie_clk_c; // [cite: 14]
    wire clk_pcie; // [cite: 14]
    wire rst_pcie_user; // [cite: 14]
    wire rst_subsys = rst || rst_pcie_user || dfifo_pcie.pcie_rst_subsys; // [cite: 14]
    wire rst_pcie = rst || ~pcie_perst_n || dfifo_pcie.pcie_rst_core; // [cite: 15]
       
    IBUFDS_GTE2 refclk_ibuf (.O(pcie_clk_c), .ODIV2(), .I(pcie_clk_p), .CEB(1'b0), .IB(pcie_clk_n)); // [cite: 15]

    // ----------------------------------------------------
    // TickCount64 PCIe REFCLK and LED OUTPUT
    // ----------------------------------------------------
    time tickcount64_pcie_refclk = 0; // [cite: 16]
    always @ ( posedge pcie_clk_c ) // [cite: 17]
        tickcount64_pcie_refclk <= tickcount64_pcie_refclk + 1; // [cite: 17]
    assign led_state = user_lnk_up || tickcount64_pcie_refclk[25]; // [cite: 18]
    
    // ----------------------------------------------------------------------------
    // PCIe CFG RX/TX <--> FIFO below
    // ----------------------------------------------------------------------------
    wire o_int_from_cfg; // Wire to connect o_int from pcileech_pcie_cfg_a7
    wire [31:0] base_address_register_from_cfg;


    pcileech_pcie_cfg_a7 i_pcileech_pcie_cfg_a7(
        .rst                        ( rst_subsys                ),
        .clk_sys                    ( clk_sys                   ), // [cite: 19]
        .clk_pcie                   ( clk_pcie                  ), // [cite: 19]
        .dfifo                      ( dfifo_cfg                 ), // [cite: 20]       
        .ctx                        ( ctx                       ), // [cite: 20]
        .tlps_static                ( tlps_static.source        ), // [cite: 21]
        .i_valid                    ( 1'b0                      ), // Assuming unused as per earlier analysis
        .i_addr                     ( 32'b0                     ), // Assuming unused
        .i_data                     ( 32'b0                     ), // Assuming unused
        .o_int                      ( o_int_from_cfg            ), // [cite: 21] (Connect the interrupt out)
        .int_enable                 ( 1'b1                      ), // Or from a control signal
        .pcie_id                    ( pcie_id                   ), // [cite: 22] 
        .base_address_register      ( base_address_register_from_cfg ) // Connect output
    );

    // ----------------------------------------------------------------------------
    // PCIe TLP RX/TX <--> FIFO below
    // ----------------------------------------------------------------------------
    pcileech_tlps128_src64 i_pcileech_tlps128_src64(
        .rst                        ( rst_subsys                ),
        .clk_pcie                   ( clk_pcie                  ), // [cite: 24]
        .tlp_rx                     ( tlp_rx.sink               ), // [cite: 24]
        .tlps_out                   ( tlps_rx.source_lite       )  // [cite: 24]
    );
    
    pcileech_pcie_tlp_a7 i_pcileech_pcie_tlp_a7(
        .rst                        ( rst_subsys                ),
        .clk_pcie                   ( clk_pcie                  ), // [cite: 26]
        .clk_sys                    ( clk_sys                   ), // [cite: 26]
        .dfifo                      ( dfifo_tlp                 ), // [cite: 26]
        .tlps_tx                    ( tlps_tx.source            ), // [cite: 27]      
        .tlps_rx                    ( tlps_rx.sink_lite         ), // [cite: 27]
        .tlps_static                ( tlps_static.sink          ), // [cite: 28]
        .dshadow2fifo               ( dshadow2fifo              ), // [cite: 28]
        .pcie_id                    ( pcie_id                   )  // [cite: 29]
    );

    pcileech_tlps128_dst64 i_pcileech_tlps128_dst64( // [cite: 30]
        .rst                        ( rst                       ), // [cite: 30] Changed rst_subsys to rst as per original
        .clk_pcie                   ( clk_pcie                  ), // [cite: 31]
        .tlp_tx                     ( tlp_tx.source             ), // [cite: 31]
        .tlps_in                    ( tlps_tx.sink              )  // [cite: 31]
    );

    // ----------------------------------------------------------------------------
    // PCIe CORE BELOW
    // ---------------------------------------------------------------------------- 
      
    pcie_7x_0 i_pcie_7x_0 ( // [cite: 32]
        // pcie_7x_mgt
        .pci_exp_txp                ( pcie_tx_p                 ),
        .pci_exp_txn                ( pcie_tx_n                 ), // [cite: 33]
        .pci_exp_rxp                ( pcie_rx_p                 ), // [cite: 33]
        .pci_exp_rxn                ( pcie_rx_n                 ), // [cite: 34]
        .sys_clk                    ( pcie_clk_c                ), // [cite: 34]
        .sys_rst_n                  ( ~rst_pcie                 ), // [cite: 35]
    
        // s_axis_tx (transmit data)
        .s_axis_tx_tdata            ( tlp_tx.data               ), // [cite: 35]
        .s_axis_tx_tkeep            ( tlp_tx.keep               ), // [cite: 36]
        .s_axis_tx_tlast            ( tlp_tx.last               ), // [cite: 36]
        .s_axis_tx_tready           ( tlp_tx.ready              ), // [cite: 36]
        .s_axis_tx_tuser            ( 4'b0                      ), // [cite: 37] (User width is 4 in core)
        .s_axis_tx_tvalid           ( tlp_tx.valid              ), // [cite: 37]
    
        // s_axis_rx (receive data)
        .m_axis_rx_tdata            ( tlp_rx.data               ), // [cite: 38]
        .m_axis_rx_tkeep            ( tlp_rx.keep               ), // [cite: 38]
        .m_axis_rx_tlast            ( tlp_rx.last               ), // [cite: 38]
        .m_axis_rx_tready           ( tlp_rx.ready              ), // [cite: 39]
        .m_axis_rx_tuser            ( tlp_rx.user               ), // [cite: 39]
        .m_axis_rx_tvalid           ( tlp_rx.valid              ), // [cite: 40]
    
        // pcie_cfg_mgmt (Interface to FPGA's own config space registers)
        .cfg_mgmt_dwaddr            ( ctx.cfg_mgmt_dwaddr       ), // [cite: 40]
        .cfg_mgmt_byte_en           ( ctx.cfg_mgmt_byte_en      ), // [cite: 40]
        .cfg_mgmt_do                ( ctx.cfg_mgmt_do           ), // [cite: 41]
        .cfg_mgmt_rd_en             ( ctx.cfg_mgmt_rd_en        ), // [cite: 41]
        .cfg_mgmt_rd_wr_done        ( ctx.cfg_mgmt_rd_wr_done   ), // [cite: 41]
        .cfg_mgmt_wr_readonly       ( ctx.cfg_mgmt_wr_readonly  ), // [cite: 42]
        .cfg_mgmt_wr_rw1c_as_rw     ( ctx.cfg_mgmt_wr_rw1c_as_rw ), // [cite: 42]
        .cfg_mgmt_di                ( ctx.cfg_mgmt_di           ), // [cite: 42]
        .cfg_mgmt_wr_en             ( ctx.cfg_mgmt_wr_en        ), // [cite: 42]
    
        // The following are commented out in original, meaning IP uses its XCI defined values [cite: 43, 44]
        // .pcie_cfg_vend_id           ( dfifo_pcie.pcie_cfg_vend_id       ), 
        // .pcie_cfg_dev_id            ( dfifo_pcie.pcie_cfg_dev_id        ), 
        // .pcie_cfg_rev_id            ( dfifo_pcie.pcie_cfg_rev_id        ), 
        // .pcie_cfg_subsys_vend_id    ( dfifo_pcie.pcie_cfg_subsys_vend_id ),
        // .pcie_cfg_subsys_id         ( dfifo_pcie.pcie_cfg_subsys_id     ), 
    
        // pcie2_cfg_interrupt
        .cfg_interrupt_assert       ( ctx.cfg_interrupt_assert          ), // [cite: 44]
        .cfg_interrupt              ( ctx.cfg_interrupt                 ), // [cite: 45]
        .cfg_interrupt_mmenable     ( ctx.cfg_interrupt_mmenable        ), // [cite: 45]
        .cfg_interrupt_msienable    ( ctx.cfg_interrupt_msienable       ), // [cite: 45]
        .cfg_interrupt_msixenable   ( ctx.cfg_interrupt_msixenable      ), // [cite: 46]
        .cfg_interrupt_msixfm       ( ctx.cfg_interrupt_msixfm          ), // [cite: 46]
        .cfg_pciecap_interrupt_msgnum ( ctx.cfg_pciecap_interrupt_msgnum ), // [cite: 46]
        .cfg_interrupt_rdy          ( ctx.cfg_interrupt_rdy             ), // [cite: 46]
        .cfg_interrupt_do           ( ctx.cfg_interrupt_do              ), // [cite: 47]
        .cfg_interrupt_stat         ( ctx.cfg_interrupt_stat            ), // [cite: 47]
        .cfg_interrupt_di           ( ctx.cfg_interrupt_di              ), // [cite: 47]
      
        // pcie2_cfg_control
        .cfg_ds_bus_number          ( ctx.cfg_bus_number                ), // [cite: 48] (Note: original used ctx.cfg_ds_bus_number which is input to core)
        .cfg_ds_device_number       ( ctx.cfg_device_number             ), // [cite: 48] (original used ctx.cfg_ds_device_number)
        .cfg_ds_function_number     ( ctx.cfg_function_number           ), // [cite: 49] (original used ctx.cfg_ds_function_number)
        .cfg_dsn                    ( ctx.cfg_dsn                       ), // [cite: 49]
        .cfg_pm_force_state         ( ctx.cfg_pm_force_state            ), // [cite: 49]
        .cfg_pm_force_state_en      ( ctx.cfg_pm_force_state_en         ), // [cite: 50]
        .cfg_pm_halt_aspm_l0s       ( ctx.cfg_pm_halt_aspm_l0s          ), // [cite: 50]
        .cfg_pm_halt_aspm_l1        ( ctx.cfg_pm_halt_aspm_l1           ), // [cite: 50]
        .cfg_pm_send_pme_to         ( ctx.cfg_pm_send_pme_to            ), // [cite: 51]
        .cfg_pm_wake                ( ctx.cfg_pm_wake                   ), // [cite: 51]
        .rx_np_ok                   ( ctx.rx_np_ok                      ), // [cite: 51]
        .rx_np_req                  ( ctx.rx_np_req                     ), // [cite: 52]
        .cfg_trn_pending            ( ctx.cfg_trn_pending               ), // [cite: 52]
        .cfg_turnoff_ok             ( ctx.cfg_turnoff_ok                ), // [cite: 53]
        .tx_cfg_gnt                 ( ctx.tx_cfg_gnt                    ), // [cite: 53]
        
        // pcie2_cfg_status (Outputs from PCIe core)
        .cfg_command                ( ctx.cfg_command                   ), // [cite: 54]
        .cfg_bus_number             ( ctx.cfg_bus_number                ), // [cite: 55]
        .cfg_device_number          ( ctx.cfg_device_number             ), // [cite: 55]
        .cfg_function_number        ( ctx.cfg_function_number           ), // [cite: 55]
        .cfg_root_control_pme_int_en( ctx.cfg_root_control_pme_int_en   ), // [cite: 55]
        .cfg_bridge_serr_en         ( ctx.cfg_bridge_serr_en            ), // [cite: 56]
        .cfg_dcommand               ( ctx.cfg_dcommand                  ), // [cite: 56]
        .cfg_dcommand2              ( ctx.cfg_dcommand2                 ), // [cite: 57]
        .cfg_dstatus                ( ctx.cfg_dstatus                   ), // [cite: 57]
        .cfg_lcommand               ( ctx.cfg_lcommand                  ), // [cite: 57]
        .cfg_lstatus                ( ctx.cfg_lstatus                   ), // [cite: 58]
        .cfg_pcie_link_state        ( ctx.cfg_pcie_link_state           ), // [cite: 58]
        .cfg_pmcsr_pme_en           ( ctx.cfg_pmcsr_pme_en              ), // [cite: 59]
        .cfg_pmcsr_pme_status       ( ctx.cfg_pmcsr_pme_status          ), // [cite: 59]
        .cfg_pmcsr_powerstate       ( ctx.cfg_pmcsr_powerstate          ), // [cite: 59]
        .cfg_received_func_lvl_rst  ( ctx.cfg_received_func_lvl_rst     ), // [cite: 60]
        .cfg_status                 ( ctx.cfg_status                    ), // [cite: 60]
        .cfg_to_turnoff             ( ctx.cfg_to_turnoff                ), // [cite: 60]
        .tx_buf_av                  ( ctx.tx_buf_av                     ), // [cite: 61]
        .tx_cfg_req                 ( ctx.tx_cfg_req                    ), // [cite: 61]
        .tx_err_drop                ( ctx.tx_err_drop                   ), // [cite: 62]
        .cfg_vc_tcvc_map            ( ctx.cfg_vc_tcvc_map               ), // [cite: 62]
        .cfg_aer_rooterr_corr_err_received           ( ctx.cfg_aer_rooterr_corr_err_received             ), // [cite: 63]
        .cfg_aer_rooterr_corr_err_reporting_en       ( ctx.cfg_aer_rooterr_corr_err_reporting_en         ), // [cite: 63]
        .cfg_aer_rooterr_fatal_err_received          ( ctx.cfg_aer_rooterr_fatal_err_received            ), // [cite: 63]
        .cfg_aer_rooterr_fatal_err_reporting_en      ( ctx.cfg_aer_rooterr_fatal_err_reporting_en        ), // [cite: 64]
        .cfg_aer_rooterr_non_fatal_err_received      ( ctx.cfg_aer_rooterr_non_fatal_err_received        ), // [cite: 64]
        .cfg_aer_rooterr_non_fatal_err_reporting_en  ( ctx.cfg_aer_rooterr_non_fatal_err_reporting_en    ), // [cite: 64]
        .cfg_root_control_syserr_corr_err_en         ( ctx.cfg_root_control_syserr_corr_err_en           ), // [cite: 64]
        .cfg_root_control_syserr_fatal_err_en        ( ctx.cfg_root_control_syserr_fatal_err_en          ), // [cite: 65]
        .cfg_root_control_syserr_non_fatal_err_en    ( ctx.cfg_root_control_syserr_non_fatal_err_en      ), // [cite: 65]
        .cfg_slot_control_electromech_il_ctl_pulse   ( ctx.cfg_slot_control_electromech_il_ctl_pulse     ), // [cite: 65]
        
        // PCIe core PHY
        .pl_initial_link_width      ( ctx.pl_initial_link_width         ), // [cite: 65]
        .pl_phy_lnk_up              ( ctx.pl_phy_lnk_up                 ), // [cite: 66]
        .pl_lane_reversal_mode      ( ctx.pl_lane_reversal_mode         ), // [cite: 66]
        .pl_link_gen2_cap           ( ctx.pl_link_gen2_cap              ), // [cite: 66]
        .pl_link_partner_gen2_supported ( ctx.pl_link_partner_gen2_supported ), // [cite: 67]
        .pl_link_upcfg_cap          ( ctx.pl_link_upcfg_cap             ), // [cite: 67]
        .pl_sel_lnk_rate            ( ctx.pl_sel_lnk_rate               ), // [cite: 67]
        .pl_sel_lnk_width           ( ctx.pl_sel_lnk_width              ), // [cite: 68]
        .pl_ltssm_state             ( ctx.pl_ltssm_state                ), // [cite: 68]
        .pl_rx_pm_state             ( ctx.pl_rx_pm_state                ), // [cite: 69]
        .pl_tx_pm_state             ( ctx.pl_tx_pm_state                ), // [cite: 69]
        .pl_directed_change_done    ( ctx.pl_directed_change_done       ), // [cite: 69]
        .pl_received_hot_rst        ( ctx.pl_received_hot_rst           ), // [cite: 70]
        .pl_directed_link_auton     ( ctx.pl_directed_link_auton        ), // [cite: 70]
        .pl_directed_link_change    ( ctx.pl_directed_link_change       ), // [cite: 70]
        .pl_directed_link_speed     ( ctx.pl_directed_link_speed        ), // [cite: 70]
        .pl_directed_link_width     ( ctx.pl_directed_link_width        ), // [cite: 71]
        .pl_upstream_prefer_deemph  ( ctx.pl_upstream_prefer_deemph     ), // [cite: 71]
        .pl_transmit_hot_rst        ( ctx.pl_transmit_hot_rst           ), // [cite: 71]
        .pl_downstream_deemph_source( ctx.pl_downstream_deemph_source   ), // [cite: 71]
        
        // DRP
        .pcie_drp_clk               ( clk_sys                           ), // [cite: 72]
        .pcie_drp_en                ( dfifo_pcie.drp_en                 ), // [cite: 72]
        .pcie_drp_we                ( dfifo_pcie.drp_we                 ), // [cite: 73]
        .pcie_drp_addr              ( dfifo_pcie.drp_addr               ), // [cite: 73]
        .pcie_drp_di                ( dfifo_pcie.drp_di                 ), // [cite: 74]
        .pcie_drp_rdy               ( dfifo_pcie.drp_rdy                ), // [cite: 74]
        .pcie_drp_do                ( dfifo_pcie.drp_do                 ), // [cite: 75]
    
        // user interface
        .user_clk_out               ( clk_pcie                          ), // [cite: 75]
        .user_reset_out             ( rst_pcie_user                     ), // [cite: 76]
        .user_lnk_up                ( user_lnk_up                       ), // [cite: 76]
        .user_app_rdy               (                                   )  // [cite: 77] (Normally connected to an input indicating application readiness)
    );

endmodule


// ------------------------------------------------------------------------
// TLP STREAM SINK:
// Convert a 128-bit TLP-AXI-STREAM to a 64-bit PCIe core AXI-STREAM.
// ------------------------------------------------------------------------
module pcileech_tlps128_dst64( // [cite: 79]
    input                   rst,
    input                   clk_pcie,
    IfPCIeTlpRxTx.source    tlp_tx,
    IfAXIS128.sink          tlps_in
);
    bit [63:0]  d1_tdata; // [cite: 80]
    bit         d1_tkeepdw2; // [cite: 80]
    bit         d1_tlast; // [cite: 81]
    bit         d1_tvalid = 0; // [cite: 82]
    
    assign tlps_in.tready = tlp_tx.ready && !(tlps_in.tvalid && tlps_in.tkeepdw[2]); // [cite: 82]
    wire tkeepdw2       = d1_tvalid ? d1_tkeepdw2 : tlps_in.tkeepdw[1]; // [cite: 83]
    assign tlp_tx.data  = d1_tvalid ? d1_tdata : tlps_in.tdata[63:0]; // [cite: 83]
    assign tlp_tx.last  = d1_tvalid ? d1_tlast : (tlps_in.tlast && !tlps_in.tkeepdw[2]); // [cite: 84]
    assign tlp_tx.keep  = tkeepdw2 ? 8'hff : 8'h0f; // [cite: 84]
    assign tlp_tx.valid = d1_tvalid || tlps_in.tvalid; // [cite: 85]
    
    always @ ( posedge clk_pcie ) begin // [cite: 85]
        d1_tvalid    <= !rst && tlps_in.tvalid && tlps_in.tkeepdw[2]; // [cite: 85]
        d1_tdata     <= tlps_in.tdata[127:64]; // [cite: 86]
        d1_tlast     <= tlps_in.tlast; // [cite: 86]
        d1_tkeepdw2  <= tlps_in.tkeepdw[3]; // [cite: 86]
    end

endmodule


// ------------------------------------------------------------------------
// TLP STREAM SOURCE:
// Convert a 64-bit PCIe core AXIS to a 128-bit TLP-AXI-STREAM 
// ------------------------------------------------------------------------
module pcileech_tlps128_src64( // [cite: 87]
    input                   rst,
    input                   clk_pcie,
    IfPCIeTlpRxTx.sink      tlp_rx,
    IfAXIS128.source_lite   tlps_out
);
    bit [127:0] tdata; // [cite: 88]
    bit         first       = 1; // [cite: 88]
    bit         tlast       = 0; // [cite: 89]
    bit [3:0]   len         = 0; // [cite: 90]
    bit [6:0]   bar_hit     = 0; // [cite: 91]
    wire        tvalid      = tlast || (len>2); // [cite: 92]
    assign tlp_rx.ready     = 1'b1; // [cite: 93] (Always ready to accept from core)
    assign tlps_out.tdata   = tdata; // [cite: 93]
    assign tlps_out.tkeepdw = {(len>3), (len>2), (len>1), 1'b1}; // [cite: 94]
    assign tlps_out.tlast   = tlast;    // [cite: 94]
    assign tlps_out.tvalid  = tvalid; // [cite: 94]
    assign tlps_out.tuser[0]    = first; // [cite: 95]
    assign tlps_out.tuser[1]    = tlast; // [cite: 95]
    assign tlps_out.tuser[8:2]  = bar_hit; // [cite: 95]
    wire [3:0]  next_base   = (tlast || tvalid) ? 0 : len; // [cite: 96]
    wire [3:0]  next_len    = next_base + 1 + tlp_rx.keep[4]; // [cite: 97] (Assumes tlp_rx.keep[4] indicates if it's a 64-bit or 32-bit payload)

    always @ ( posedge clk_pcie ) // [cite: 98]
        if ( rst ) begin // [cite: 98]
            first   <= 1; // [cite: 98]
            tlast   <= 0; // [cite: 99]
            len     <= 0; // [cite: 99]
            bar_hit <= 0; // [cite: 99]
        end else if ( tlp_rx.valid ) begin // [cite: 100]
            tdata[(32*next_base)+:64] <= tlp_rx.data; // [cite: 100]
            first   <= tvalid ? tlast : first; // [cite: 101]
            tlast   <= tlp_rx.last; // [cite: 101]
            len     <= next_len; // [cite: 102]
            bar_hit <= tlp_rx.user[8:2]; // [cite: 102]
        end else if ( tvalid ) begin  // [cite: 103]
            first   <= tlast; // [cite: 103]
            tlast   <= 0; // [cite: 104]
            len     <= 0; // [cite: 104]
            bar_hit <= 0; // [cite: 104]
        end
    
endmodule