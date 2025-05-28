// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May 28 04:47:22 2025
// Host        : DESKTOP-TR184UE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fifo_43_43_clk2 -prefix
//               fifo_43_43_clk2_ fifo_43_43_clk2_sim_netlist.v
// Design      : fifo_43_43_clk2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_43_43_clk2,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module fifo_43_43_clk2
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [42:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [42:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;

  wire [42:0]din;
  wire [42:0]dout;
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
  (* C_DIN_WIDTH = "43" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "43" *) 
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
  fifo_43_43_clk2_fifo_generator_v13_2_11 U0
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
module fifo_43_43_clk2_xpm_cdc_async_rst
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
module fifo_43_43_clk2_xpm_cdc_async_rst__1
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
module fifo_43_43_clk2_xpm_cdc_gray
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
module fifo_43_43_clk2_xpm_cdc_gray__2
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
module fifo_43_43_clk2_xpm_cdc_single
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
module fifo_43_43_clk2_xpm_cdc_single__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 84096)
`pragma protect data_block
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
KXl+0YfLx6JU1J8lWMh6G6m6gYSI
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
