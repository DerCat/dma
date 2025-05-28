// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May 28 04:47:21 2025
// Host        : DESKTOP-TR184UE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fifo_49_49_clk2 -prefix
//               fifo_49_49_clk2_ fifo_49_49_clk2_sim_netlist.v
// Design      : fifo_49_49_clk2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_49_49_clk2,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module fifo_49_49_clk2
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
  fifo_49_49_clk2_fifo_generator_v13_2_11 U0
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
module fifo_49_49_clk2_xpm_cdc_async_rst
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
module fifo_49_49_clk2_xpm_cdc_async_rst__1
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
module fifo_49_49_clk2_xpm_cdc_gray
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
module fifo_49_49_clk2_xpm_cdc_gray__2
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
module fifo_49_49_clk2_xpm_cdc_single
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
module fifo_49_49_clk2_xpm_cdc_single__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 86080)
`pragma protect data_block
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
UH+26YTyrMNibg==
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
