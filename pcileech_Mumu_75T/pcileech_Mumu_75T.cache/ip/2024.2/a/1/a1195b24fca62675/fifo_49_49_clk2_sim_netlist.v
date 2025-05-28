// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May 28 04:47:21 2025
// Host        : DESKTOP-TR184UE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_49_49_clk2_sim_netlist.v
// Design      : fifo_49_49_clk2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_49_49_clk2,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_mode = "slave read_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [48:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [48:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;

  wire [48:0]din;
  wire [48:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "49" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "49" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "13" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "12" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_11 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
md0AksSCeI3fOZtF7nrw91OgSzGoACBon4GH9ENTzaI4jlg22H1uTtXayX2Kz+g4ZH2j52rtMH8H
Xc49HVcThMzO1cRXu+SkL59MRQ87klGca4XtjrTtunJoQ+jyOKRwRBeIMHUdntbk2T1kbXHf9KkB
bNYGEMqSrbiDt7IJUx8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
r6CzxR0T3O2wvZRQe25aX3/CWOx/3d/3vJvvS/XsrKr7v852GNQNqCBn+PKsunj0Ncep8DqHtVie
BE6tKIqZW+3txAUjrhSri5liuFWSnzAk+Drsb4RnvIy7BeOdAK6NhVhn8ZyplkJSHVwaGjN8gtPE
LeWEHPHf5qLnzqGKV7B6oIC7POGV6Vamos1p2z1xv2cEw4udvmtZ5EjzeyCMf+omtxEPxhPi6Z2h
ENlGOmuPMkWGMjP6HQCZ1Mi0uiST/zDo29UDIMmOGcsDMe97imU/z2ekKTPXXwjcV+9q+4zHRgJV
6JWWgjU9cztV5OMaEfpBgRBWae/ijWpPZaGuFA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
glFrHilvyO7nq7/OYhnyb9uU9d8UNGJruNnkmJWuTpgvyCDmtx7iVKPBPe1Bj9jUDT/HM9AGxvu0
g7b4TuMdVkegkVPeHhw31IW0HoTL8wPnrLEpzDVK+B7xl953hPKPe0vn+0EQh2UKeL5K8VLxmsSv
gbpEeToeR90yzlSUzDE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D4uBhES8Mkd0GCwY2aQOmEzTqz6hO5B9Wa2oyfVBEODkWyt+AHkIXn4tuBN05FcP2FVmgtVbvZX5
K6iog51IoPw5tv+pM5x8+bQBX/aZpf0c4to3qiX6RZuITpuSUWq/7sqQDqtMqDWOFMMnUBpTX+qI
t61NvyIZcfqRWo4yvIUV2Zh1etqYKDlhqRnMoBZKMeHFpVsp19nU4sf5Km7sSlPQ08vYD8qtJqgJ
ZDYC2KWFTHsnT+5anHvc80FgHt4zBHpPrGprgpltQmVmMZxUD6NRC9EvvXf+pBhgfwPHHePWIKUn
elLld/HEVeFw76SlVV8i4LsS4KWWOM+KmMprEg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EW9gHDqS12MVhy+y/xQVscLd4qOim+cNTepYzlas7WzqDJogZthddOuGjpm3a3fS/cMbF/h0O1Hb
Wjow664GIga0y96lkbkcJ3W8x/IGAsvgyrYT6ScsFhyq7tSd1HjvRG81BhhGM1mmpxfzh0Uqbfso
q+uVKPUmPnbQ/Gdu9YRoxmYVJdmUTpXJ5waYOdib8WNMPLdDfIo/FGrYrx2zYQBtpU5DwwVUTMrB
ZasEyxOj++icI5k5lR3Tx+3gdCFTy4XYQfcj2COm4gnVZ8FN/X1/+0ywsVGAc/OKL+mjMYH3NNH3
zfDO/TpYft+HaVl+CfF/U6IgJJeJs4qI4gB4FA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Myfv5Skg7QCxlNBoFiSTLAeIRYS0J0ArRihYk7dGAHZWAFlxJLgqo51W9P9zTVBurMJjZLtonoDJ
19RfxQj5GqhqN1A20s8xOFfLq6+uDG/V39xQFY32O626Kh4MMlH07hNJL5u1NjJWg1yze0XdFEe9
oLwKQz5lSKGMIh+VPXDuCGhShS+KhHwGEdS0lmA/IHPFNlRG1LsK0zQmUiNkG4kQ5OEVkQgvknNC
B6++ZDIYlT9WbZPs5giRY0zAhUepLPaO+N9F3fIBKVGw4ejbZOt0kXKixF86DDfLmF2+dov+PrTX
1MXJaea3YoQdR2c2MSHAk/TTkzg9ayjvxKaXpg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ks9l+EPHXfDNnWd0exs1j0Q9iSNYaIExwQnpsi8TFJimjPtOkX050wFklsLBM83WyfuD+F2KLNnZ
Jg/aiIiGe9o424jOiEFdnAJuzrD0QL9WmhQ3W9iRJ7uPhha6NfR2WGTCCM4TpN8rTKLQDKxenVfv
6x83rnL5NQxvpp9cQh3zMma73qoEJjhTR9MD9cwA4VeKq2u/R0iTWBplX81vYFd9TW2qW5/Qyzzj
A0+pXzczcJKdggV8h8bYcO+PRC3t2XrufhnjvhjMLG2tPHSMW/soDH/v8KorXyWe5N/q12fo5auN
SXr3olNuB5kpiVS3mJAPV0z4UsFfu2A4hLH7MQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
e3AJKDEM9byJqwpkFZqMIMKMQPOR1VrLFkshor7HR0C+ol7Uv3XTGyvQrINdBEArX0eazF0cHWjC
9B4BhDnysAhT6SENcNHIYHUGQE7uiF7zgL7WhCxClwEnIAVj+PU9FmqlvbreEikHQfbeIDPyCLii
NAS97RDxWki/MfR33zvZX4eEolA/oTyRzr1MagBs7LN1UXyGPvnze8JzHxA3zHVedIIrBrZxkfoj
Loqe6tLYRlC45h1Yr3Wa2gh3LJGtOSji+m7E9Xua/pPh8A/CAD+TNBa5d/X7C3a4AWl2bYTi7HBY
Y8vaIjHiSosru5F2UOEQG9xekCbNRK1Apew1UIvntzCmDMMhlAgB78AUOE2YEWKd9GOl+aTZjMS3
GxAYzrtv/bDRkPOYbcG0SNT9xf+izRM3lX1E2vN3i3uU2Qrh73fjU1lk3PIe/A/H56UrNPDnGT9W
TvlJR47bLDtGyX2+dLvfTaZGRP8aepePOXXLIlvqwCJSMVhCB/hIbz7E

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TfuXOFQtE7YhtTL4354NvKETmBCLSVnb+pbrT8gtzjU7pERE1Hu2ZVzHgVQXwt5RvwG1R/z2je+U
PzszCBhPNqUaXEhuJ0A/q0S/vvOOa6h6tW9MhiB3gnuqEFVWz5pbHZNfgrwh2gT8XyqLI8f1CoJM
xpcB2TbREV/kAAFMxIfH1Dg0KSO2dCeVV1na6N0AiMOQPvXZOB7QpXwNDbYfarWLtF0/l0hi4Fxu
Kgho2ggrUhajP0aKlrCQ9mLsqOyqJELeJldeD+vuUUqhYq4K4RrwtQF+B67lYc4AjznwQ92tUvYJ
ZspFoHJEScNvdFoHFTA2TQ2KToepsqXRiOCL1A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tmfbBpNtCYJ7zsgNxUzw7Dvn+hNn2PPUBeRfXSci/q2/OcQeF/eAAML8YIN1V+AEoAqZTE2/xRQz
+6zwVOLyAOLynMIBQ7EG7xReDJ9kEEiBjnMGO6NWdAsa/VcreVHrLD1PFtA1+WoVe6yOvNGK+Nbh
HjPkXyycyP6RQ4Rx/PtTxw31LOFVezddSgRlaKHTprKTP4LbjPG//onRBg3fAl8zwU1wYYNLzYCX
jwY7xfMkQyhUSpV2Tx3seqy2IYVl8jjxynFxfyxulvrJiqmc6aaKKBdkoOVbJ5eO2sCXFJB1mKEU
WR2Ee2ozisABzk9IcGILewCW7ghdLP82CRZv4A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GfDCxx9db4ripD5mvQy16BVlwPYfeC7ZobZXaX1my6WUDiKwd69J5SreUXKYD9lvZfI7djLgHkYm
5G247T4NX7zoBwc88bUD+tNvGNmzWFfSVVZqu8hjgd31lZXjy9uYdXA/gsE+T+JqEfRYdV8YoGgm
sREyiJjWRPDbx6kc8um8vlAK/Rjwz0EGVkGUoi/+UvxcnjG1PqCl7GSMOQ3gFMEOaxIflShnF2/c
//ioADxl3WjUGyTstMK54XlP8G1Hk95sSe/7Y+SbaIyoG8t6gGDimDJNuGs4JjDUi1V7Gxfzxk9+
O2J++9clyLkMZ3rRyxSvR+Xyrmn3YxjVC68GXw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 86992)
`pragma protect data_block
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
COf4MJuwYAETuw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
