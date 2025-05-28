// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May 28 04:47:22 2025
// Host        : DESKTOP-TR184UE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_43_43_clk2_sim_netlist.v
// Design      : fifo_43_43_clk2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_43_43_clk2,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 85008)
`pragma protect data_block
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
Z3j2+qF6c/zTNqsW4xDk9VFFyzdu
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
