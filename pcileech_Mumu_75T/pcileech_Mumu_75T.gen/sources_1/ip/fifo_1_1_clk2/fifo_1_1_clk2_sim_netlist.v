// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May 28 04:47:20 2025
// Host        : DESKTOP-TR184UE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fifo_1_1_clk2 -prefix
//               fifo_1_1_clk2_ fifo_1_1_clk2_sim_netlist.v
// Design      : fifo_1_1_clk2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_1_1_clk2,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module fifo_1_1_clk2
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [0:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [0:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;

  wire [0:0]din;
  wire [0:0]dout;
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
  (* C_DIN_WIDTH = "1" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "1" *) 
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
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
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
  fifo_1_1_clk2_fifo_generator_v13_2_11 U0
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
module fifo_1_1_clk2_xpm_cdc_async_rst
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
module fifo_1_1_clk2_xpm_cdc_async_rst__1
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
module fifo_1_1_clk2_xpm_cdc_gray
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
module fifo_1_1_clk2_xpm_cdc_gray__2
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
module fifo_1_1_clk2_xpm_cdc_single
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
module fifo_1_1_clk2_xpm_cdc_single__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71008)
`pragma protect data_block
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
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
