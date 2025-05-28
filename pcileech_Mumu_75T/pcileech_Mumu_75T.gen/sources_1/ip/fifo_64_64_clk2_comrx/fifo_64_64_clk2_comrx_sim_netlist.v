// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May 28 04:47:21 2025
// Host        : DESKTOP-TR184UE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fifo_64_64_clk2_comrx -prefix
//               fifo_64_64_clk2_comrx_ fifo_64_64_clk2_comrx_sim_netlist.v
// Design      : fifo_64_64_clk2_comrx
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_64_64_clk2_comrx,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module fifo_64_64_clk2_comrx
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [63:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [63:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;

  wire [63:0]din;
  wire [63:0]dout;
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
  (* C_DIN_WIDTH = "64" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "64" *) 
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
  fifo_64_64_clk2_comrx_fifo_generator_v13_2_11 U0
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
module fifo_64_64_clk2_comrx_xpm_cdc_async_rst
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
module fifo_64_64_clk2_comrx_xpm_cdc_async_rst__1
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
module fifo_64_64_clk2_comrx_xpm_cdc_gray
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
module fifo_64_64_clk2_comrx_xpm_cdc_gray__2
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
module fifo_64_64_clk2_comrx_xpm_cdc_single
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
module fifo_64_64_clk2_comrx_xpm_cdc_single__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 90832)
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
