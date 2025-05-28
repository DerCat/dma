// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May 28 04:47:23 2025
// Host        : DESKTOP-TR184UE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bram_pcie_cfgspace_sim_netlist.v
// Design      : bram_pcie_cfgspace
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bram_pcie_cfgspace,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.7864 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bram_pcie_cfgspace.mem" *) 
  (* C_INIT_FILE_NAME = "bram_pcie_cfgspace.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28736)
`pragma protect data_block
RMYQVo4Cy+5XzmEo39Wa1lNfGc5NE/JeR82Ik42ipIXRZZELs5nzEMeY2n50mTiX/7wpnXxM4IJf
nUO890QGclT/Key76D8PwOoovn1fUtbzgy0T9CJN0wYQNwSNl/iORgc4y8daJOLNIOGVytq9PSGO
TjMPoem+ZXP8uwF166xvBtVw+OttvEmflgkWdoGDc1IFlNwMJuSt/jGE7BbiypeTtebuN9OjX+Bw
uvxKRDVGnfAROL/1RWZ9mddSbAYAjY/rU7n+PTtWkWHCvfnENzZvu0a3x05FshB4YEqMw9zV2Su+
7UIaut2IcTNfeOVI7Xy45UixfGKCx+GrubBhfe4dvT0SZYmHpDf6E6+vZms8/pc1PWgWPTOJrbEW
d/t+4U+x+wCJFs/yHA3DhVnQIY5MvpwuHTP0kh/fFAndgbIcGZClqONG9KtOwrgRW67kN3zQg12n
fU9agU3NqK11m8vPpnfJG83srxy4FBdMb12XMzwaRepHm5h/N1pwI3Xv8wt8++kRAgiJbNo0sUJo
reOuGYj2RN3PycZZgY9E/5BmMZkvIu1cR2d+YuJ+cJMdK6VvZMrJH8wA86Hl34lFBTiJhOvy1qcr
BImMVJOK0JIi+o48Jp03GSOpSjuXx7vxnt2NL9j0g7m7U7ON7cHn5IyGGXdPfkpprKOei/xdVoni
qoPsAQb1cwm58iQkcY6ocbEjq0uSHJ3QiMhIeg65KO0HH8Ymw4NAc6/D+paAX5e2/q1yOZYd2EQe
/ZqrqjjWJnxKjDmEkjK1jHO/YC++F5J73LFZZyQtbdpUh4nobt6s2c4m/aq7Shkn0s4m5WzKUtnP
ynVXBoGOjQf/Bz+Nqhx67MoXyxNN7931Sl3dcXvSdiqVamfQlQUCZfL7OpHxFiXgqgkUcMeoEZYx
uGzYtBYKKEIdNc3BiD1mIx5DjUi30cydL+78eB3bhFHN+TJqM746wZwWyAKfWjkjBalMTOy0pwoQ
RXq1Y2cK62387TWTzlDJsvonnKrlfZMwXR0ocqSl6s6jHfpJUnoToDREI+vz47PC+qqE6Hxd5meg
sxdXhYOCU0yBQXxr0idlOIMNeX/7lzieYNXgMs0Rzp3ABKvieq5GS9NoXNrNKG9NBtZFZDj6AwGM
MY9n/AbjVgH9+kQNN9ZgqCl6Jmoz8YMyMJsjlkSiATOfd+zQxpUlRhF7P5m0HeXfnI56sxAribyX
+sjqztnsu7jQnFjvR7z+VftR9B26XiqAvS9TKWRyBawCroLbbvI/iwOX12vG3jkpq/SOS2ZA3BUG
xLqJ9izZjhrEJna0SixrE7f84TF24Nq7v4JgOyF3Cvg7iy0tLwFZRUfyZIpifR/VjbilgSXjDY6b
VFrcqfwWO4WkizmNLhrnZoZ09QJ4W8NsjwdK9kGOOnac68qkaJhHcIWDalE1okC8V9V4btGjEjnE
QJsNg+SFpk3+T1lvpGtCgHsvaa7TuAp2XgFzKkKv6Y+GmA2Z3GqSH3dh4wkJXyx36JVhLIxZojA5
mzgOLO5E8Ovm1AnrnUH3CxrKHhaWBCr4nuiBk+HjfDPzjMkNC5/HYjW+1y4gTvDl3S9pQ+QAQSV7
Uiion9lOwQ8g+aDez37N5HgaB74UYaWuM71C0O9MDJs0zMjrKB78C4QasiH9SJnfAMDvZw3cC0RQ
aFNYqJLHP+HMnrDRLVL0DT6E0IO4vlCOaNcJPb+woZxyuzjuI97+TbgocfNo+qRpPUau9ExUp8a9
POCEuQyiyqzhBSFK0qxOJOWzLe7dMs0d0GxlvqWwMTgflJoT2q1TgvvMYR2BbiQOUtOJapu+ABbf
i4f7lw7R0C9dXFsa6ys2DX8HZm3awMjq7x9sBmNsgltP5oXfcOdvc+LWG/PbF/tHCgDYPMdvcJNt
5LOAKgVO2DSg3wmlZq/WsLaV8AOBs7POmZ55DzmjrlmAkMh0p5XEN133Y//LeuqCmn9m3xHjj5Qd
iqgo6iyO3WYr7/1PsC4xEOF9f0Pr7waLGVeTfNVEyGN7tEf83qYNl0yNH6HFf77XcIwIwrFiozbF
oo4vItfUxv0J3OkpRDSnzS16gqVbPh4+coNT+MB+mLDc/OxVyo6KEaHT4ndMluc86V631PS/HpKY
vpt2Ay9uAGjDNXwESEralcbDuopPB1Xk0RI7htcLdy2sKDuNh3KvZVNgtIf/PxmutBaXKiwMb+VA
MNFKLdOG9+pdiQQWnBFvHWdLNdfLvESodx2Kzc90/K6wgPbPNCUWELbVMjuleIPokq58lRAmQdrB
eJ0WbjD5KqT7sEV+qPDUvFqmByavRx6HJ2f/vtLvVrYaXkWHA9nh1ch/6iEspTsSAVUp4oLz/FSk
If/lIDe5REi7mspJKYPJ8PvAEo/Q4qp+PNOYwNZUNnCCcN8Amu5UeqM9sWiGwbQ+ce4tbtbdeUoG
n7Co8P6X3uM2BPuxDJRdOCSHhJKzqvuPMwcGPJXnfRj9+TgrTJfD84BMgym0cl9WWToj6F0D1rK7
5PMvmQEYHy4Ms6DArdI116owFpOyYbP7uiQz/Ugxe2CqocLHYdP9B9LyLxlUGIBIVPBin3bM8i5O
KagJkrOv/9XUE7Dj/5EW00WNoSLgMTAKHAUgRzZQvPzRAi5+tYsoNXvOLmAXM5UHsqU+YpPyShzs
qX+uFpNr3rdRwh6WLx/tHTeYz5S9ouzj6uD5Vj5sU/HGgqUCbU02vb6jvEnvREFktPvvMD3SZSNy
PsBpBQDAygnAPZtRlqXZIesHkfFOghtcQksSTL7LmJVV2qV+l4VVX7wlTufW1xFF8fAILzcDSRK/
+hqcylPU0HPVRNRvdll1BI3HNOtLQt0glBWjcJSOCG9cyr9ESnrYlIbUQzKfebwKIhhWEpsC3Cx/
G3j3PC57LlXLftmG6FXNH6zsX6C40a+3ibgCr/ojX2DjTXglLGciRiW1IgkJ+WLJ5hpNTz4ygIzM
pprpqKrliK+lID4xPqdO1J2jPyT3bcSylq+JiAsSMgI0ln507QVpw8MIEzNCb7E/YVCLIo+B2352
q0hnJpjXQYGdYlahg+BSm1Gpbe3NcPEHNhWfY3F6e8CWbUGU72ZKyYWwRu77MKiat5Yg0CW4RJRm
9DFSvAIkFpuLFDQITgwkw/cSOHiv1AD9sGDhg0i1MQKd8nQMRtQL61EOHaEyh1KkXQoi7giwsz8T
F/U3tUQFHwvkT6yZGcdw5nIHjODXyGXbMUkNJlVAwpfnKXUqPPlFd5FhIwxN3cuprg4dKjmibCoQ
K7hnAYuM/oo5I7RE2ckJ4v7J1bI0Dc6pYb+5693IkqWSqFAPhNXjFTwX3gOFOsXFduBhKH+c9hmS
sHzvLtrG266zP7wlnOk6hvQFEoF2u6lo8Kbpg3HraWzmDHjHt9kNDAZG2cP9y09zPidFvXLpzxLi
mhunshvN/lyRR886Q6onYM0yVcqlnrWqN5SyssmBKDdkRiy5Nh+8kQWeja/iuvDpIS6Xl2GmBUve
mvDPwKUsVxs3JGyu4IK/L0p1dM/QTx6HlopvYTcgmocR3IxQF/E+bFlMNAHCNOkxTN67Vek1IFzh
KB71UkaClnopNrXQGQRw8fdGkKvVKnY/CZpFoyWcctq3aE4ns75+hjQ5gBSMxfTb8PzycnE4jK7i
RlLqRarl5WVZInbpLtHGC6ETq9541ebKn33UhWMPluaRuNlsNYBM5wAV6FDQixzI9q2/wgWIx6DB
lNhWdKBWPvW7juutyi8xXQIV7d56ucQQ3OFai1IZxHS0Ib2wh8i1jJsfpop801KCdXjrpIkvze5K
EtMIqUdKXv/09oyB0YqgnXoAQay9VW6qCyymNie/8RPn6DxxG7DqeTOHKza7e4v3cC9Jc9ivKHwj
hca9tN1yzovgqzugouvp2Ghu76I/Pcb6oZnWzylujEj7fkcBgt9lMXVyP78OZHEjCkEGFklAAm3g
TT49DgmYHl5gNTkbDPdpxpuNLza+551kkdBNUnRS5SG/T8I1O9zkpypc6ZUwIrjQKUTbm1wqMIR4
umZ8KtieiuD+Por9k3yyHgWug1tARgOMCROLp9ZsSmI8WX4uWDfpJkRh/M5ru4+UBWroGg2W93Tw
aQ7avFm2y+KgKHyfm2I1U1A5PYiTfMCYKtplo0Z56uL6ZHb2ZnEGWdGEATM6YzBWTaAO4JVRX0pw
8hYEjMM1242WylER6D6h0wvMKDezu+S64+8BhuvKFoSK74KLNjBS6/SoFNjWInGzHVV1Xiz4y/Ro
NTuAVFiwR4cGpfk2APPx4CrKpZ+tUvG3qe9XJ3X9OGj0j1tSlr+dJnWayEKTGOjt8nrgMAlIw6bT
92lLdvAPkwIQXYCAxM69Z7dQt9DwzLhXhU1+uG86tH91ex7vFTNzrKwO7MpFzRWkpCFziJDC3ld9
VU1SZnd2i/+G8flc0fINutbHe24W0nm4vrXQZ9ZBxd1hd211hFAlR2Sy1pbBIPjLdPwa40Q6CN2s
8X5Xf0PM6l4NPp222oahEPHbCcdRyBqNXd8sroPkiJ95DKdW8ARtp8SmW6zqZ/P+0iWelC4B9E3Z
vhczWqwpnzIOwtJVOvwvwBiCVbPwR2blRM7FwiVPB8W5gRFM+u7db9ULN8STXdTIzapREuY35b86
/0/wbSqURI4KLIgXCCsA0LRTqtkMVJa3uKN1cMhb3jv++kYAPmNJiWGCeUNswhVmDUbUS9z3M5fw
oNDuSJbDAujT6scUdY9Va6mK7NbRQet5Dt1KFuPNM0ULKIrda/5L+fe3Ry2U/W3YPXHkGRtuqvkQ
8NPBNnS3yJpBrbk7v0eodeoivYzjZ3c40nzsfYB6b1aP941gPd9MzGP5qVqBs+uY/8XBkTexXt8l
b0fPEaYKh3wfEF/aUPGMwxmjCUsDHN0ske9bfaae0QmLiq9Q8CNzEhAWuzKj1/h77u/GzE1x4fmi
ABIOLV6U2GC4tUGAFkt87va9uwClgETy4kivDMUltwCrU134ul505cwi/yCnv4BCGasNFT/zn7S+
Gzat2MMD5g+hyoBneSajrQncauORyh2AwjZBQpm6vKrzUQRy/+ZH4kS7zeoI2ydXvIUWG3ol9xH4
Vtt8gRqMgNdgVF2wimZipQeXDdXgzqXoF/rZ26WDkDf/6ajzw4Txg2ImSOYFb+Tp73go1rvYTIX1
15roD6BQ9e9BT4zkT7KJMY5cUIyUlhyYsN1vtbU2tyNEJx3/QR8PDTtXFzZNlteklLeYLkDVGuGw
rD10DR/MoZSv/wFrLwTabmF0uRCnZZHf/it3mSnAddWXyAjTkD/66zizKjUsbOlOGr+R6wOl3geH
XZaR3KdXgx2chvNbfjcq4DY7HUhAW3u54qtU+ZPQbnAx8icmPVMpmOzlD4t8o08uEihJSUlUDeQh
TaF1hVZ573fw2pr6byW1My/YuG+UikTT7CXzAggE0mIJ5YDw3isIuDvOGIiWkXKIpcLbuhJkMl17
ymObFHjaPTvKWdffwM41QeK0TMOTs//GrXC4lavPZR+ZmtxtA1XcOx9tqf3SqdIkt4iUWeNx9WgG
BGOq1iMuc8bYcd+os+VZSkWVdZTCpFMC+4XQJzps6kAYlbALe0w25CvJNec63D1tb1EWFO+0omti
7eBsYZ0MBJj9gu0+qZpfKUIaKrObYyHwcoq+/N3ZiKGdqsPSKUeBqVHuOOC69+WlZ5yay8Yg8tn2
HRJj02AeWlIrJsLto5T0RQrRGKIs2JJNpAasJzmxgzE53CEalKCXvYNK9LvpyHgvXwvJ4ouVdj2x
78hM5JpNGxnlpzr7avP2Fw0t+UjZIhW+G68q3IeOBoKdAQc6Mjum3Yd+huEwwUhtgvGXS7hWr6FG
vqIYQSzSCilIACH2Jo6UgyUag3c8QdZaANayr8jSObvc/rtQ0hcjfFnvoz+xcSMDCnKfmPfNDc22
DCPxytPiHB6TzAIgHxM1ahx65QcNIFaAfMINbgFB5Yj5WyvupgOy7+8H0bqeyTZzR/tbck57Rd5Q
0oU9t9ab+E/S+4+4uFOULmn2/13VV8//PvKMNcj1eMQSVvDNKGh8JhlSu/YcwuTCyIicZ4sQArTP
cQkc16+sWidrn9Sv2aelk3eSIzv3VZHvXxr8Gkzox4LwWpyU1G5whuLPeXsXAzrTLik9hGkfdZK+
GrK7sYR7e88aH1BMtcRjWbuPuJ1Wor+L3xNxsCkPFL4VTsO1kOp+3zVTc5/WNAyrhdZ8rtHT+mC/
EVKlC6ZGBP76SnP7QCCNJJCDecFjF83Kq9fDk5v2dpoRNmoNg16Wuvua95BPqp3EA6Lg/n+p81Y/
8edzv3AnmOucBYGqExR7I0xppvx+zCkUdQwII+Kz0cpHlChRy4KfoR+JJ36Pl741CeD8TMoDjcap
zjTf7VjEHN/f48uhCHuoY8Ujlxd0ItdW2FuxuRCP2Nj0fWO9wgKxKcBNw5gkjZ8zS6v5Abzk4Pjn
yoZCLuOUCdYytgYw7jHf8uhPPzJ0Ilj444c6IHA2KUX6OFhhZPLNMxSqkeUopt2TvPs0y+A7vmTv
5v6OBOrvvT4n5D9t/j666mm/anBbxiVbXg720tuuGFMvnRKBGQ5VO8BDfo00KwfVcVJp1SgIS6Qs
7SDqrqvSWcjF57zolEPQJcE+owmqMUUH5ondgZfjwCzQDBc9vqrDsSbX1NvPhSB9KCroWiiSafhk
aM91vLHPkX3XQZSp697yLTJN2D9fv2WQv2CcqpzEzdvlygcVL85w1J9JES2R2zDGeelZ317Y1Woj
I84fFsA6WWK3qDR4/1lGA2HmRBqq7t+GE61ccYQtjdyhDqncscqW8x6bo1sfnekCnTwrvZYUCpwh
ZDNV37lxAMXIyzYI8YXy1UHz5aaz+x9xqIFOnfK5u53QzSyPj01Jj+yNDeoXh5ehRaGv53TGOKXH
To8wGslsMj2goAI1FN1krkoFeCcqaU2QydsVinGwHrv9ZcWA+8QMlJyRX8FuojrjmcmrAHqnFgaY
RLyn95yLTC3RkrN/R8W/h0UB8GCjK8GAc9OvWikvTHSqE2DVSC4DZxbM41yu+YC7W2iBkG51p8be
LHiTrCD3bFCdMM1QgHv5LFfFmuJetHHdRnCCeauAR9AcIlatcfQlV8I1BCfAv+3ER6ghamcFKjx3
/GQ4lC6q8/aIEFeLoeum71qLoabdnRYJdf/hGzcVA8NoRVb20GOobF/LGDGcX2j2M0Jw234tCxoY
I4vvr9I43SmrzOgMiNqxU5amu6Faql/pncc2F3RltJnI8okd8NrOqjGBpNt6YqW8uM6Hi0hTAY2D
4fBMLefkNs6NncbYB4vpzoHagn1PlskeGkbL0pmFYXGyjtlg3laRm2yt/w2AAkf+OfYCBhDx20fh
RFn7fHdVLAuL1PiJrDUTFiJdON+IY9jBt3ev3R+Kq6G1Kju2G/lk9Y3v8/i2LaAnz0mNeMlUMR87
8GRoWIdoZh2G7dCntTDe4K4X/gsmTZxHmU7zUsNZIaAjcfKHPUZd7/LlFzU5vdWS+Dd/6MMdP4UT
zfKAfA2PGKE1cmEb/2QTz3HmnJ/ljltxkVqQNV3mM9mJ9oLL3yFgC8HfRbQyzP14ow5d/YSF1CfM
OybSVU75O5hZpLGpOsMSbp6d+QDa0fBNeTt46wnomPCzJ3CVMlIYcaJ8hUr7gEMpJctk117kaBgD
pnxVNOg51CdfN/0LllSVSfsvAy9aBicc+XzfsqNv1qmuC5/zAAh5L58TFJBdzuwYpZ01YS4uBuqD
R4TWDv3kZ6FycEEVwa0MFT5gzb4u+N5BVAJvxp7xOxbz7Xt/hWvYz2wbpLXKzhTZCg3KVsxSf9pU
InCuUvkr6NI/jxYGuiPCN1LZ+iRPIhP6DkCQVV9VXi/rmTArSsRKwde617w1+7kEtqfd5432/UC7
Sof+TETSz4QpeqcbSFS/zR4hrhxt0GqSdELo4nqfD9s3CpGjUyAgvnbMH67diYL29seWMjgpvIdZ
UiIyi6rnIo6UfC6n/eBhMy0u6KOJWrKYU7TEQnsI8zuBUUvcqbtJKDsQLKWrGzhLOa0Ib8o9JZ7W
JfcJX6dMc4+Iq/0jxDtqP7jRPrjnTPvnQ3gPx/7jP8GhRF0g4D9Rd5zS4uHE1Gv8VXurJrwkr1w3
73KbPx7387LM4lZX010OlKdQ6cWBXvR+1bNx1djWNsgBtJDRqKi75eKO6aVLxCPXgaXbBAbyUkKo
pty4kFHuPMFg6PdrLAHoeCMZT1iG2KLBCuSIu10mWoGpARkinKnFVvqab0FOZGPmDQPR1kCKO6ts
k1OOwdAxN2UHRIAuGgPjhAvtOzhYX2YapARSPx3mhCgeopZF4u6hPqODn1iF9h1Bv0+a0kObpY1u
A3meIPv3jNFA4NLnA/tZ3Qm2ZfM30E08oTKqWSTZyEa4Hsyhy/zRLpKfyVWNTiLL8XiUMfaeyE9w
q2iuun6c5Yh5DgcVjPZRyoiZO+KM6ELXvOzPA3uXNogYm1XRxIihHxbFQYevo6vGb2cqp/O8qRuL
rSafnG6Db3XGbU8DgDWi1HMHAEAcQlKN79anvKIkLp95TARqKN2Q6L0t9eEa0I+98lBU+qBmUtv5
Hqg+QiSxHkoc+4g2aesz5IRsDkmiYpZ5BOoG3SFiHzjnmcyPAyI0p7LsUcXuxKYTgy1c8YCAY+S7
T1AvnoNpZ8iJOyObOcL+SuqvqsC8o4jsumDyX6dRirvyx/FV/abRSOZHFgGz/pXxILFnicQz8Ruv
AozOD54C4kejFqEvWw7FDQouGe4XOWUKfVU+B/hlrGxIJLDzFyQdtd7wEVcuyCBk3TyuNGmHPvhD
yOQUsutT7zZF267YYRW8ChtJiGsSxTjr42TULr21nxOfw/waqRt/FNWZuIJFoLw/R7+mb9QYi3eJ
4/0us5n5JTHR2hYMscxvCnjHou+ml1AVjlgd8yxz72o6yaaP0RCky1ShcKV2htFoCWiP7zmdB3Fu
VOsBkzjf+GmBp8mYVKJXeGC1Eow+frvsVy9FK/LGzBcgM9VbPpdCScSlyoZBuFzscQKDmeRHDDnA
zjBiYcMuRRizYAMeiCp6KK0GDDloJLbOE0/qPje/bYobdpnZTJn0HDR151C2a33uoZYuh3ha15bf
5qPQLtmAprvcXJIkQEnsIxqGgPCY7ewI6vN62ECkXAdlkEFoxVaAU+lfb8zm6RftET7FjQ5IOVvg
Yc+ezdajdW2mL3rwuaT7QafLV9jC8ITWvqfIDSB35ajUV9jw8YZTgpNsbP9btSQ1VnvPymKGQcfL
f1YKKozUxNpboKhbYvo65rMaANFRqS409bJJAPweoUlkrv+u4LVEP65uwMOpDvQZjlzwPYbXCbZY
MJJvCnpKGmyywMlQSF+fJZ785WYJVn1sg7nK/iGGZSyxXOIgxZT9Yrlt2ihFZOHv0cbwXZThEZcI
MzGt3WIIQF1Ch3t4tcmdKoRdzqpvD0LTZqW1NTger7uTpesQq2bTwFexaZn5nbY0C8/xD9lL5ZP6
WT/bjz4KwMXVd3vZ4uVk9QSpZmc1htbMazJfImpXKgMT86PdzjLZJ65umsbEBPvu3BklnI3Rp8LC
il/yYIY8I15oojBZH0l2530FptcacCbLwPBDUHuNrBthIyrD5b4GxC7helT6bWyAheQUySNTwDr7
EkLWryl2FmtIc5dgN7ztySOIXcY5OkceB2KneQSCPwWkHxQ7vLIEnRKell0S8ZgOh0fSHdpYguo4
TRUyo9cAEAKamBEOxFEgvEPwy4xfZwzYcsP1wZBoNkKWwmP5ty5uzQk6w6EVngl05tqPJT5FKgTi
PcMgynnqQWFwSZy5A1zTSNxzhMU6GScKachHP1z/g6q/ThChsJxxqHJHGAp9MRqAY4/8AMYRzCwn
nRKDJZDWQHFv5PlphKUNLeglKi/GW3vMCkUSti6lMhoPvLCrTWDWS3v40mt72gwJDOrnMaxo6ng7
XiWTziAU6YHLE75TDRVvP/+zQqTyowKIz3HqVA7pn5iKiH0zPrpyQEt7GtJiN549t3mtHF6+Y6S0
TKacPpHQJ18rd97yCsXBFeaiOfSElD64neL7hbeP8bTAptK70HfhenQ16SspljlIZgU6AAHcdpLh
4MoY2dmaltOzb1TVZleJ9a8kyA82kYEsP4TdRCMzf8ZdzZaQ/WA4Q4Za6Mq7nQIWv7tbTw/+M4a4
efO9A4jpCPU2NqobZpHYGu+XVfiopNYlsRAaPNZXn/rj8mnseIpJ4SCoVNb8rRVwcNCkwKMwEDoZ
z/irCeyBa77dFwmTGguTj2uEww5UORS/5q1eIpA5lSkFQNnlbfCYtsnayvYV30montvlFdq5yXWs
+ySL2hbQ1lGe183ChWCDxO4YumHbZnDa6CR4XabTxXMEc85K9f1pZJgHdCdKNMwhmBdBq0EeTf/6
8HNRHe5jA+zp8HTQyXnESdQvqNv4FtrgMAgc1v5D3XnFw9/Kt065nznwz1A5DXk05ZmmfyNUAFVo
DN6Inc1eoN9q5USn9oKd24AFr8U+8/sOdV/o0tykdh67mmUnI6EoNXvtsmWexVN76ZFXvhXMvixe
C8+k442n4ofhC6N/Z/NimVlYHT6tG/kbS0shrkEf0DBMxF7Fs8xkgp7jJSTCtn48wldFrOLARFAU
+fPKTfttMKIGynbPBy+vigKbRzzppvkCJ0KzOtNS0hu1j613DU8B5QOozJAVXPMBNb3nzQtGsR/Q
Ptl6aHlczisd6nBlVF7XIFnDXDYbvAdKpevyImnd7XJnmW6th9RuzbhT55BvNkjBE/ba3RGOAb/n
hpGkbDhPViZjj8A/xHt5lEs2F8M3doh+RLmtoJ4pxAKCZWInsHGWLAlrCiC4kZSgAVVhy8H1ZFoR
NG+VfNfAFIWstz2DUx83msusWAinQahzm46Le11ZofUVFoOJ9wRJQG9/iqeYwHGKq3FavThMAtNv
fdjQIE+2POEbovzHhg3wLmtseqwDw2hUaHZB61duoEw8jEqIiGwpIuzXY2TC8jm8vz9u/1NLNfEm
uVUb7Cy/3pcarzaI1+iA+NAcjFLoNbZjykj5Ofo2Z/zdRVpIrkqSQKo5NLvqtgC8YJxOmpirjETg
JDU9ijRjj3mHhe34M+01L8pBl4qSzjQUFMMwqiEUcQEUwu2Pw0qrmKwmsmfeayBWQKh81r4kadmR
vls+w60B2XX/2p7wqdNXrjcbH3ocz7b+pXdM2GgYpNKWT4d6iTFx0lUFbrYRUzsqf8T7cRMIna3W
Yg1vV35qB+5pWLzwwAh8ALRlnOWRu4SqSw7/gqXRxMhE0DcMp/dhi3DDv9z8r6+DGEx3qsVnnjwt
tGWmPD8CtR80VFDCUodpU8Z7CU9KvojjRPd/nJ33EzRnvLRo0lvY2mo0DRypUliNscPYexr4lPJV
65Ro68cFKvrUnCpFHkJvg94RMyvSSQO1E9FMxWkAEDuQxwLcn14+kfV1wdBYRnjNMjfmBkBtS6zn
DpP8EN/SG0F5RMxAbBn6rUpqSf+40tnwAnYgkD+6WxuAGcKKYu66925YOX4bG5tYPOIuRa6QyERc
+OVoG3PdycUYAIsHfrD/MGRZRIN7Z+HXiyPN4yNcCg7Rsc8zGVqIAWSUzXIt79cqyTYBOVfFvXgb
DqpvFy7eAGCWQksP0+97C5+MwOSMWsM209X2wsdcDOSzvlvUhLBkA/B200VduCLk5Eq1CYLl2wgt
nI1UMKFE9HqvCG5lt4upbV4/ybsD9sCdGLlCHV8ICVFt1srOZvcjHb0A7IQ9jGgPEHb4z1d3cVNY
kOecfEiw+JrvcG7fbNPNbehJua3NCINvgrrq+rXSqxZrPLTq8zApLtJ8xlohofpN7qpt91EE2Nt6
CMlhKrqJi5gaaxEifObpwjetrNz264a/ZBtNdumi5QKRl552dJgwEfw34HcAEwuU/OKRM5AfwXYM
zpcV18sluXG5TAt3cQ4tewBvdy7OxS+Vjcfg06ZN3h15/ig4B/8dRKYp+IZz/iYYVExx/aaQGBew
e27n81IVUx9RlXVD3rLC51ee3N0spSlvyuwths7MZO9yd9KezBpHaNXAhKz4YGnhmPzflfe5uLjE
6aiS8Zp+u7yoQsKmBkUT2irL6/1bPh1VEV6g/Obof/LMsAol1xhf6QwJzV9bokj4zVVM0wpeGWj7
DTyr0FRy8NkI+/TzTbiPx7icPJKRRF2UJy/ga0rKn9TM84xr1Ejtc7JaeTxOnxW/n/TqYOdjVX0+
9vVFEtDFE01Hz+PjMTWXxSmpiEM5OFG2wt3WT1Pt1R045pTYifP0syJ1VUwpdAvrJWhoV/w1kwIw
uF2Kak9kxZJdB8dosKl43F0RXyxLvA9he8O7zosnQVbvK4cTv+Z5LJEhGR3bJEKjlhrpMlGdVJMc
xRJmo3nqPh4KzSrQ7PtZ0CvABI5W5v11kJ/j0B9fMImJUrCQ1QWZItnsnA+0kmVBoSVvfpVAHHWp
LAMRgIZQYD0SOVEALLxQ+MmNdc8dZEyVTwHuEdVOvfwz892XFU6Gz95vOZDhChvWsR5JM4OdlT0l
0AgA1wt6emNzbSxJXV1onCGZ5OWRlJ7lCZnWR4f+59L/vRV2Y47FuoTzayGXgDGv4GEoNWUa8v5X
u54J4cNj9wm7R3HnEbPgv2RpRJ3n4mVzode5D2xgni02W7wCzm27wAa4jTrTsahkZjo6s2aut6BV
VLI3RortBMwxwaysqxEzkOHGLQzHgeeB8BCMcP/F+iTkdB7wEmeQbJKpFY2tR6uIaw4b8ewqvgrs
I1Zx6aTQZ7cNkZxfqGVrLf/C8pc4z4hMttxGGV02q38uppNa0U/jLyJaURYWCj61dAcoOhKvBEnf
gzondAfCD23TOMIHUjLF8dHiddnIhVmibYyLiz6WqTVclD6nMqbViED43j1UExCbjynrma/nRank
GTlqwgxjVc9kt8uB2uvZ5/UbiQO9XJE+XaFZp1Fjpgwp1KoxkljN/yGAQys5gqNdB5wqEHVzoIc9
b2djurTeAU46c6X73ZW3UAwKBS4gBUKwT1G0BPh+SJ4Su+fEjYL+lvK0J0KPWxkRz7SX0czG5bAC
L/ht9UxusQJoRUJmSN9HV/3pT7YQkbaRJAVw+1scD3S1QWjBqz41x/nZLA0iPFv9tG7fjPv+Mvwx
zxjHvmKcAsvMxtelGFZhbFaWuUJcMi8EzGAxPXWkocWCdbroamuTOSYltrB/xcrwwmL5rs1wsdaB
wIbagP5wsMuEOksHSfek/DhRm293E3c99BTf35ikgpBKOKjgDB6BpbHsBGcqlt1WTtSRZLycBvP/
xun9biFe8gYCOS3YOdPlGW3Fxc+lFRxoM7b1bhQKGbUNAwQoaLfwaBZa8BE+/znNiK91UA+FsSHh
+zFMpmH9bmbn/SfTqnUTVlXbRj2i6BDQ5g+IKmINeOFMrB07LH6+/ugPzJ3k0DxQYgp2dX9Tx04E
f1197Iq/tlmxs78Y85PPc5tXhQ851VGB7BA5Pw1m97ZEAm75cagaPL8m9qXwGyduAxkYmQ8OsRqm
fUC659TEqdDM5d+ng/VfTUWJL0y0+FcbGdon+lLcPMFjk5yicn8yMqc3Ce9iMtVW/huuMG63Y97h
x3DElAvnYgwCAVRfHEsPF4y8hIRo5TiBOPZ0MYU6BHocJrUNkiegcwUwbqM/H48mORdvdZ7wwuRh
xjlLR9CZtIk0S4Qrp3YpY8MPhrnQJZD/rEdfClIsu//0eAVfPb3+BJ9tYq3RbDUNiLo2t8VINpv9
9kJamfdToUKvEApTBWFajJ5/w3mJmBa+Hb/8O9Otn0i2kMLBHw5RsGEVI8IsHeWGmUqSOZMjBiAR
QZPP35TJIG3N2FCG2sjqOD6WV8/KVFgHNd+mrKNBk3MggRPvmPytHLahJnYB6Z1FCNimhOwBDTwo
/nhYYenqIv0CAoPNQJDYEw39603TIz66NXA1uzWsP7JVOhx5UNKOzIInTLUGFA58NtipjUSqvrn0
Uzod1V9ywT7QgGi2CBSsfY3nXTkry+E/0iuigkPMGtArHimIkuhb3i6DTRE8J1D3QenZQRVqT52+
ltSCJFcHSMu0X7gqQTHUjkSkvC2GpSJU2rTNk5C5fcVxkkl+PNhJtv8vI6eiPRfQsn0ilWxnFpFd
e4abZglK3Umw91qvjSq8BQMGSxwqrWYczLw2tA00bKsi9UgXSCZlMO55rs+OP+ePm7qNPCujN/r5
OTiakANh6ItbrgG5Bxa38DweU7wBju2GssksRBHzaTT0R/lVCt2MkkTU7cp06++1TOKCwZoTzAch
gtYawM81hM77hHv/3aTUh5Nw+mQ1cECfjoukVYJEluAD/MmXDkj2eHLIZN9E4Td7pPuajznX/KQL
Var+NeefyoiVNRgeUtAM2ojaLzxTcV+/rlUFvCQ0bKr4Smj7jmXEg4ONhLmTHiAvT5P8b5/nKzFB
5qKQUoGDBI0ZJgqAdpwIrZlCdR7W6lFdAzJ8zaFykC8ZKdpzeqKElYHTGMxTkRh9AX/O+m6aKyLY
SvVe1iQ3m6/NLoSoklD+M7uykRR09if02q8QpxxAepUJtS3btXlkXyansI80i2SX4NgBdtF81HUB
k4XZGdw9/dA4TsqCoqifIY9tEKAIDlEOdB5Y/UnJIm24y6hTKA5KxTBdwfy6j+xv/DtUtliRBkIH
NRsvRVdoUyIbWVrv4tZOyGlghjcvtYQXYpD0euDjU1OpMhLv/1hU44L0Qlx99jWweFEyJsKGmYWF
quTQ3+iLVwg4mwi+pWq1CBAM86rMtUIIeIuJRgInDSQM/7/pNhsqdRur+D3X//aCNGFy6aiB3qRN
e7j4SwMtibhNBNvhQPnzfSjUZVRRNVRn/LCV0c8mi/YgnCcV6/HGNEPWmegKijcaNNdKoPLEoSld
Jq/Kn76wNaQjzL9ieTXPDh1ghrlA1msm7j5viBVsLJoEBtfdWV6j+MdU53Ir+y8IG7ZPohI8RSty
eDUSDalMlBhBYFlT2RD7qhFgxwcCNNOQGrzIvearglFsqzUghIrIVIK60du5cn6WwwPx1cclXUkq
DISmVh2M1fFMCu+3t02nBgR5Crzug70zeO0gyTG7X7cVRS6Yt+I4AtY4KGcfDXac5F54QzCxQkgi
ab2PyFNP7bNBI/lpWFF7gp/PH9chzLjct/rArfOvF3fz70PDKc/0iGFFI1kAXQ8i+kw0PTpp2HXh
PleV+H0AxhqmAazpe/cO4NHwCEnHM3ykZYW7PHyu5pMHtMyaWBaMlwEaT1iYOFiBy0/UkXpov3Ff
pXYeh0KreuEqr7aadrDj8nkZ8OFBkakD06fnXLq910/g7778U6oaJLFMCYmw6gDox5PHTLNb5sWb
UFq7XHDp1wyCCgf+Q3E90Fy5jNffsciVuCLgV6eQtsqYaAXnznF0amn0jteWUICibmCDkJXiOAOE
QZavlXWIVA6bcAK6ZCRX/AYC3YxgcAAW/bKcVS6RkHrYTxg2kQ/zfeYcvlwtDhfi4ILCIUAkZ8eG
89uRcEYpHg0ESsUSSS8yRLbfBTAUtDaw3M27tQiTW9HkD8cjkjogtI0nvFC+M28r5MYGahXdOZpH
8qLdKBi+3va5UdLLHAkafybdT6E0JrMmUwo/pbJCNGjhrLD2Ld5v4128cAxnykI7rdRSMkawatY7
p6KVw/jFviGlRTISju2+xuAqftd4b8RhSjU3XZHk4ZmnKTnMxeo+YG488qFYP4ipy9ocwxLEwy7p
GZwvx7vmIFfjn0hXc7Onn8Tqn5V1vAp3rMGTjiOiVQIqP9q8I5VZADfMvDvPXGI6/XE0+/lk/B4R
Kr5oEatKlhc3t1Y8+Nv3Pk3HxIVCbfWviOb0XSTnuqFfnBI8F6g1QQT/IvDGe6ubwHZDUz8n9ZwU
eBvx+i7iy3b8Gh7WakgSRM8Bcix5Ls6k9MQpo5Dbq2/Ntyq+rI9GFRZLtXmQ5gEHgf0CA/3iGSMU
neeKsX5RDYclpWNWd/VrtX0InuMkCkXSVvXH54bCrryj5lKAbxVmduMwv5R3GvYegTPC11TYNpTr
mETuASHi/Gb9jFrAemETm3zwSG+ikuzq/LqpN7beT/sf1K09rVv0DxwxugMagdyOlF8wLP6UV6J+
QBQm0Huu/T07er5lzZxtwT1ehlbAaqrsw6/6AU120hmWsSnrjWBSi+YvqwuEZruUkD0VCidKWOR+
T17fH4Bsgt1sLQDLnIXfmhY3rgZ7m1eRZ/WJTVb7rdoV1iG6NtltsqOQa9dg9ZNu/owIiDpE2Dbv
M+tnWUOMn8xOI6qlPYBUlii8pEa33GPHb9GQXl82GwgBCXsqvqg8V71ZbkxmStR2CA0p6Rn9xUZ7
YObr+YrbO0bNefnE4VmincCDJuHHHRovey/+H2v12kAvUBf3j/Js32Z/MH+LxdPPsZ1YWfs677ml
DxqHVo+SEQHvCna3mSr+eCBPYs1MoDdEFFTstTZSMFLqr9shvuo9qbQtr4DityHQT3PiA2n9Kdfn
gN1RrnuOD+uacMpDukPXk0Gu+J0qjYYX+Tw1hxAE/73MdqGzc593cd1ZzBMYDyo0j6ZbMBdMnBN6
gsWA8nSfcNzLfz6nTM4R8LkukY5I0vTQd8jSQIF7OvgsneLYpKRE/Xxf08rfLDOGpeiXz+Bs///Q
Eka5pWF5Pty11YJg5w0Gvs6t7EP/93jrjISJ0xWiR3MPBrnrdlVBVaxVYCjqPf4Dzk9oVOzRl+Wd
OC+qRzB3eccG+E2oiP6yJdABNSJtYusmovyg5ughxqKZj+NBXAlzQ6dMd6+kYf0PF4YtbG5I9q/5
EwP7TW+5J6zsgd2t7QzbgVnWitQILf4OKSLW2WCyT5s6NVtV+BAENeCtNvAJ/zBV1N07gQH3SV/G
ig70qvwDL5GYGh5FxtIbru8EhJrxN5r04R791ePNghof0xtDr/H5s3PahLv7zKHAXaXe6TWQ6et+
4qrKuSD49TtnXmryRGGdHTKaxx04mTCohL8JOvZ0HzXw//sdScex61po2u88GSMI9aN/NEUrMlMF
Ky+ON/PcEm4VowZkie/KvRGoCanDKTYRN1mEwF7gfLUItfZIZAcCioOMGXnb+4dAUNHVV10SRQ3A
Z1HoH0dHxtOY5WRkLHdN8IyoiLXOhURa2jQgQGNDrUdED2u3rm+GLW6FeP2pDvzh9w4bsJvGOMef
76CjC+pJtNeudMWwz1wNY7YjSXNq9AQq9//gfL8m2SV9xVvbya6PNlNWBwEzjtHQATdibDk1Syfm
1ce1/oLQcCk4V47i1osrofRdDlCuIPeg+QepweqQ+FNvVYEexAXO+J7vujOrcDSS96TRYTpJjqeF
MIyCMONPqSq4r6B7IU/xAYOl9+671uXjSFOd0rGpna9nQVS3BD5PHzCWHIMZFVyQPvhF3rnRqIXZ
HOGYzJpdK0aW1IimWF4Y5pG3b4EyrxrqdbnjFDYtsU7NjF+Uqc3KdH6p7X2j8mZYoSNkjZFAI89X
q5v9lMQnOZxF7iuCFBBJ15keSGq3GDVtnM8pcfYjZdNEVlfbNxl4zo6FGUlsinORthZGtoV/MATZ
P8NUHCGiOWWeLlGGZxvF/BhY10MhL54QRWdRgMhmTbbl+s3PZrLBqAnbGgfSR9W4c4o7ViuDU9BT
s33irumT5AoKENBPoe3XWRWd1Du1p9IoW5hGlFYhUCJgZ3lOuLfesAx4NNKzMNXfIRgTFCkX7Zbe
KIFBGW4qx/ZDy/jd8wSBA3iZoPCESaPop91+wTaZdn+jMiRSgtcGwAb2qrRZwNwxDl1zdnasMrgy
MUQT8A/8kgGToYrsb/lPOmX4bEPD2HUpnjxlJYZNCYeMpU3yUAtVV20gPL0SQITHC+R5Z1dTwVwX
tdwVu7ASQX+AgU52Rgf0xpZflUo6+n5ougapLW9nD4FLYO7HGPX4q0P67Vf1srGlkgWXM57ODyfY
PXlPdOzNcMjtvG9PIYNeyTL3+OeJfnEPyQw0egA3adb/zNNGPNfCsYyoTIRTpNRMf54k6Km1n3oP
ebVsbkecq7LbFq9UKRdZ6fOYuvdkySBDM9YBSvSrQ2knBgG4ke4bISvJLiHwOdLdirPt9mop8OEI
a8M7fm5GzCl2+Sv94kpyAcl/D+1A+IR2XCF1M8RMwl1sthpKas/RGgi5AujE51k64X+/fK3evFqg
N0bkZ7Naf19rnkKdOAOy8G0cItpkUlgBW2/FUeJJ8C7LHA0XomOakqwfKgXExOoyx7E3Jw1SWWYP
EjE8q/JQCb/BcTHMPFKcf4HMGuBtQ6OtGpvKs5n545mshljoX0KrieERSLmRGtzTrLFfPe+kz90c
zLByBWSygEKzRCZyhSQr687HP6N9pFerZRiVI4GWAzO0Nh+uoZ5PalsRznPlEU3T7YRua6o8z0K/
DmTT93I5wD3TW2El7u8MbX/l0532H5a9zenlwCldGahaQPjHrn+/IPTOfPi+ndPflicDDhjO7KV3
Qfsym+m2HWmbHMgYpo5+GA/Piafg0WPBYYAaXP0LNnaiizKyq+5wv2NEmuPddgVWWRwCUuKFE8Qs
L7YRsvpqOlMbIMPYfnYVrWTUmNNHxkXjrH7hOVP7fa7sGNXjr8Zt4hi/W7+FetpyexM9yRWsaaDK
ywrwbDWTeTik5v3BccUwnAaR+RnGZ7Haz7LuDY2ObWSMxcZ7oQSj81XGmszaoiHHQh5+Zk+vRC/R
07nG0wTMxej0Zfksl1bRT/Mkr2X/yLanmVBUSLkaAfcDcsgBnhhdhToueZ8DdRevPfna0PC0thwy
xsqO8bXsfzRw+LvHUGwGj2EgI+UhI29Qln6vC/TmmUUIU7vjxoqO6u/l3lMyhZARcuceSML9JqZf
wQAxAApZSjfW1isLpZptHTl+K7LSWtjNK6dwMt91eIHlwfszxEG6cdK4eKfifaahf3pi/uHQ42bY
C1AaGCIvxvhfDWCjeCDCHR7emOkQU1JtoVyPaTC5qF90nmhg86psM4mhGu3kWa5QZfrGuwtL29OJ
HdaEqeD7Sa/ofS8x5iQa1cBnehTBuQM9FTTW0HZkI4XWbWEAFy3jXNRIAdnkT1bvfdTG6Xit9zom
g1MDm0vzZZdiW6IRqijAqwbVhaY12qWeWPZ/4n9pd9ai0xhBq8es/9XfRJ3wPOTXt5MLSj5G5rTD
SNw07wsnp24E69hn+VqH/EoN3dP548CwpElXPOA1oupDi3vpi1PXsWLNSnUxk69aJmmamXUCbuvu
MuMtgm0jcc+i6b638nkoQzu5VBFfBI9n3+C30WThzXgl1nakyJDpxLMmxjrv8SfKMYKoJZ6/0GC/
5IrC3PcyN8iDphWLXUerVoD4lnLd/6jLgiz2WJ4AFX7vL+dcFXdnoPNM1VWnJjl0YWguZvakoe+i
Wmo4LPiJymbhs5tK6j5vGPBLty9DODu372teV++8tIqxCM1MeWxkmbK9+bN9eqcGHlY8KbSsfKVL
jhL/SbgTLMKD8PxM8NzkLBcHC4w22JmM5DEsej1SRamsOCObXzV/rBievA6bpo007sI5rmjDE8x6
hO0hkS03/v1KLe491WG5whDaHiCkVfPQnzaYipI3eUlWQDbq8K19vjD63VVTdPxbcSu7kVu7hVt5
ZJ/oi4dmmImNgU4vTMapTsJYTpcJ890xqeflARHYLUPm9aWP7iXbn0APqaqwLAYJuuGp4gEWvlSj
n1NuiGMw1RssCYLgewd6KkKG9QDSorflRBjEGn0asKpmwXpLXu4f9iZp4iJri6uZnfgA95wJW48r
XuWTgEB1gQPV2GIBMRkWwX2mqktjDmevdGMt+OVlrKsebcHlGBp2girtMTopmqzPwCdveYSs3e6t
rAAz9Odw0iJqgXoEvCC+Qy7noV0VeU44n/ElAYd1hmvCQEYRsqDK96YE/KIY2k7j9AvBNFDsV8nk
6ZERjbMZprGYf6vVNyD9AJvGGj3g7Vylz2spszGHCRFIUqL44Oj2RueZYJievy74TugjIUr/XbtB
Be3FqogjGusYJamxnzv6plA7klg++i5Dlzwee9X652eyWXziYQ5RcFdxNLce+SEksDqOOK871oy9
Y1hEsy2kAIFoR1uDKOFgcpCaeoXH2sBe4cV3JiM3PrNMH4FP9e3NVljXe/pkutpZJ8ODWkFdrxY4
cKgdMGTtwEuhx6uzQWD+W/NGU9x/r/JuNzriAJhavHDj7ZLiN1ccr/FkA+WncEcdpQvBZVf1XW/A
LkOiwb6DP5UNQEl1udwOEkG+QD3maf/cKI1iDdDLSFnOtNAaiC1y4wnGUTKPDouHVvGlw6wm32Kq
8DN5CfABJFLjdd6bccRQ6+b+H/MKitMK1Yxd2yP5hcfeEZ9THwO/jgduFiONy2wcG+9EESjEeTd2
aXyre4Y3NPKyjsgnf2+xHSc+B2pg163atV75o2xnJqvxYWeBmYkpB/HIEwZrWglquZEZuSdTLQmc
whc2pNJ9mwXfA1WfF5BDeDyKZhNbaHq0F16d1R5ccWhJMPozjBlAlJaCC8LnLXOz5BBnxKuUXGIo
Zfe+nY+W4QU9+psbRHCOPgsWmBM8X7C/8l7E7qLZ9wxxjHjAhMQfJG2rsCkfhRcQK6Eq95nuk1Lx
2amQth+nnqWMu9Cmr0qRNQnjvl5GEvsyzi8H7e4891c+feQpUQlP/xrTPz8iHHq6mE6nUoiz941Q
G8mtsND/zbCP2KeKcskCBp0xWzsHD6R6AYferXovq1xwXnMzDBseD34Mchj1SY4zXDdQzHRRxaLI
8P4J1xqLn5GdmJfuqOoFYUcaPWttETG2y8Acvn6vR4n5WxJj/t2ck7bmTz7p6zEIBSbPHWH4PgjZ
6tuwzVugMdFLEvpCf7StOpPMmDbpIEons+V/wcB7gk4wJMPUei0DYWDPGEy1nRxId9ddyvE8krhA
63hiVCEG6CwU4gYQdDHTi75+0jOpRyQeAFeUNbnRjQ6XWgX6F/vNLaUCgeCi4Hsin6Emcr/WJl/G
UHFJhfoq3sxnaQUsj5NmA+ksDWDu925iFEABYJcqTBy2bXbpBctbwdZzZcWpUu92rd4yYEm/7iVy
U33Wj7TLxLSiqh+qlk2Qh0HZHgNJpVZc5GHIQRyVmP3r9VCe1Ou2WbuiwHcxgoZMfqmc8Ae26U1w
kn45xo8UM6Rj3dDzZxKntuyJLF9OoMsBKHYJgwrwtdQEdCqzTTQcvyYSsE1/mi68ikQ5HKVAlQY9
CC8Xus+2Qe+jtCZ8fDNc8TMZytnaJ6Mkk9v6KLF6EZu37+zsW8BKhTf+d1qS8gFJeP2Urcd1+Wpu
yLmMZn96NeacS5Z7khoHu47oAXAv+NrTVunqgLu+4li+ykj3YLyXzQWqv9vEDP4JdfvcT/MJ51dt
LVinXIZ06ZXmRUzmpg6dWv4MNrq6X30Qj1z+RH8s39KXXn2eYOniGeVdyHCRHRWhs4cVpCqkgFaD
TgpI+KkIFxJ01FaTGmEChco+B5VQA5G7BmqXoTrIJiMiHwutWgqdotfoTKTOgPukhT6VlLXx4Q1m
SyhPhQBe/GHCpi3BQH7TEUCDGbttgH+/xfTNEfnYYa6/nCjrW5sz9Qh2RSiYwLY/CLz281FkQh+f
qs8Ug+6Stri5RXiYjlqYilZrn06wRKLAm15tuTgdCp1b7GcTra/K/rCAE6TcVmjsRPGV2cysGe7c
taOF5EZGKa6rwvQaOzppNcmDn0az4EcaALyWRz5+YFnEocN+kLb38btiGE2+r0HZrTW9zjv5y+fq
UZWQkpaW7fQeVOvkWafWIxW6ib+lohcUto6314f0Xp/SpX6rIg3/m7UsKGFNeNhM37AwUT8sRvD0
XmDHhtXFhGoW9swxUjVjYMC44lEiRr8WrNEy23QXDE9ORlUffBButOU+iIN9dJ3eqFRdU4eLYWU3
ivxijukt8NDgr4sC+KXVD3MM5cc9Fuamunp7T7OFyJFd1eqJILB6hTcLm2Yx9lRj/r5mTSeaBE9w
l3y+isTCZatxHB1VCBcbBGb0Fp6ajvtSgm6P0u58M17i0gN1S1EKtvRcAZmuIVO6s3ico+DS2ZPg
NpsxGFKUWZty8qSb6JDK11Rhgjg427xLkc53B0LzbPneI0xn6thxAVAydLmzNkY23x1MYaA+1QDb
DHTVKWjQfEJCEMjQI/nNPz6gWz5d4j0AMxxvIDbv2CjbQ2m4HHKlUIo5Hw4Pcerw61D0J+DwIZjJ
5i2eQVTpWSPnba9nKDud+wP+bfW1tWqysmwF5wORHCZc1i5uB20IaCSbMBMb0FM0Jji5Ba95oby3
EWLM7zTVqOWrLTvRfXzcH35iHWzDOH7wMvkTZfszAWHbWP0mpPfSpHODXAQ0tSf5ogb+5vCmOl3B
6ErJe2/rQrG4LEKAlxJL6I/Fn/Q0t1hXwpVlBUKrXOvkftffnkaZbSLkO9eV9sthmL5qIA2TlHEg
ptEzEU/VKD5LalpCrlRTapIyibL1bm1zTSHzFpXkbeHwiAgrei6RtWvrukoYtjvSB2oqMonR7Oql
7U61PMGieCDf4aX7hQk7VkXYNg0iHOfsTcdd1NvYYAQ3gf7p5Xr3+Pg7TAQA/r4wlT7VwFnYN+rc
wumIIW3aQbumG+XY05kKkcsApiIhHc4qs5nuiBwU6IKRmQqWN+sqZy8VrEDuz6BFn/S1yYyC/4cd
cH1kjcRb46vpgRIGU8dfC4gfas98DMgTszFjMs20vcOQc8+s2TtmTjx1cGPGvjVmmAMxTwZGJlfx
tz+6CM1UogS4Rf1o8cuSN2ZgchRcW1YXJ5665QdWHi5pRNnABHYuYYeX2btW0EH2COvExT31Ekkt
VxoIAlYKSAyhM+BCzWH6mvuHR1ygdP3/lLegfZkvkfAQEb00OSaDXqhPT1KArGNH7TcqllOdfeSG
sw+KcNHAPTZG4Ri2/yPyV0WcyTdfX/BMDXEwrfOD7G55IHwl3xu0LxfKprG4WiVMcVOJexd2mQVX
gqfi3ETF8BxgbBrFOnEQ3igIDp1Snfo0A+0u/zQmpV3QXTdCPEdd1cBbx8GABHAGJJ9hJAEJPpFe
Ebg2alxqG+Zdb00y0t8SZZtqVMRknYaMcL0AU+ctA9SwPasfqbfW/qD6MK9xm4kpASt7Lp2e2d3w
z9rTJR54xzsHQx8q4eCnES0z06mLqPEL/M6yAs+VHmjiha/05ItYuItwShVCJ09l7MxJdURig1lE
dL2bGnuh7vUBLLOcX78E9PuWAwEGyUVcPnRcfxE14DtQQBvI0TudxVd+7tLQJpiHT3RsMZ8NvEDf
+qthVEVokWBIz8m/i35QO/a32Xl5UPAd/Fu8NJ9zbCKjBijD0VekrzetOn+rqwGwxTJ1/a0wj4T0
o5HwiYT0SiqepqvZJ/xD99CucJesuTyL6UzuoTiTKQzvpzpCptWMpXHgaz7YG5TepT/DWIOZLlPR
iUqT9/ukuJJ6nTHHWAZ0V6v6e3QehDOyIr0W61mNbUbORmrvjOAF4i+pplQf6OMN7LSQwfJxbFBx
18sONHZbKRRRBNEAje7/VRdelJM7aFY8lB/thRyUMFD+SotGRKDAAfS/FOGZELrsr4Y14k7JgGqH
Y4i9I+/6ckMo3jvsiDm9Sr7fUhmntFECLkvrS3tQu8lWHbV1Gau2z4aDPoWilY1GoRTU0PsyHDZW
UX4ux3fK4kQt68eNdzA0q6jQ9AE6DxTmwksYWRmh1FiYmS3gS5sacCZ61Th6nQANhPLG5Y5PuYPM
KrmQbv2WCRrWKe5j6SKcIv508XDDWw66p8wjb/Fquju/fH/A2Q8jeNT1u8bFVGd0K/kL59TWP7MX
FSuMxIT+xJF8ZZG/+CotmfQ9nDZNocErZY0BwmmSjKOE+OPCpimP5qBZMN0iK1fypMjg66IXRxQo
bpZ46o4xLRVFTt8cE/Zc2XWaGHRmqluvR01UnMLk2kDqZfQQ1iwx7m9mieFvcbohCsUM+uowRFNj
2ufoPw+jp2n/l+MN2Oktc6YknQlggOLDQ6ZSJAZ4xGAuPQN9gmTVFJAIj74Lk4MY4E3x9mMoL5yX
jDdJDHibnmaxKKbMbKEOy0pkbVH6LJyn20ZWAl4exEl983SkVkbEUlh/1gsP4EhEzMWrwc05pRK7
QAodDG1lFA71q6h1Q5WihP69xR83+slB6bpxXN1I3JjWjyHsGdz7BkaFi5ZJErE5AaUdUCmoPKnM
7dQ5WwJtjB1+max8/PzD0Uc7m10nv5C+MulRwtZXTbisnTUC1e6Ytwk8e+pLPQUVkzOiwpSsXGLe
xaQflx7JvnaB2m1MhIlwJXJlSkhpRgTVUf1Gw/nmuJ8suAdYL1q+3RubLd8S3ps8Idb9Kd8LDzNy
54OvzDxMi/d4WLwfC9Hh4t+TMwZ17oQIfyYFDTkEoaff+b16XXZbNqO6x86/gHCMT19iaXMaLoza
MjknVl81bMy+iIxiHoOAxNR1gUFNamgMTwpNKXPIxoCAQ9ehoTsGZOZkgUsamv21Ls3JmbAKtZSg
pYSogvO9WzS3LBosz4kqbiP62iw7fJZZ0Edj7H3sfE570hUxZUSQRinrjleFhos26UXhjrCRzX4R
qJDlRxh501X869zbawdeIRQonGsyQFqEaS22QV4QPWgxo1EmUGCjxPElc6aIA8eHWL0wofY//Zak
DstJVIA9fXoyK6Iq2Rhzn31lFhgw8n+i5okkvcxPG8bhGSq6s4nQnTCk0sXbIo7KatqfDO3rPAm/
Abtj/gQ4bnSoDpgWbbBKawGrKe8YhBGnNIDk/pEU+F1W4+knMFyjsij3HK6zvRCBQAAWgydjluaw
px36i0I32ueROm9jmJTkEqc+BnFfdEOO6R3OBTINYr7XAKDceguGBwEYHjEcUASTRhtw3xvnQREW
PVliUc0LEoBdAmaxoNWUopyH/lQ8kgnSSU2WFumPzSFStxC3zuuk1kWSxd+0Ot36YZubD0WS0ZY6
Zx3ngJaGgdxjQWv4VJ+BY8WlvzS21vkLIHIlIaGMBDbWQRiahRoDuq3czVuGuANHvQnycRFFG0BZ
VGxVCph60q6KrsWm3T379NbVPjKBF3Z3xrV9y4cEkX4ZBYPte4Anj6QBqIp1OipiJZaatHzEw8ir
ePJB17kMrL8gvO1xRjhes8R4a4YfrfAq1rVnXjvZiKFarRckyFYYiY0cF3GKOOnti6MVnFRm+ywE
FjoTvOVMrljtBYAE/NEsWm3walzGAhPCNW35mJgqLBNT9RbMYw905EFjBupQ377ylLUclWQ2LHKh
3224fD+ozcELw4EyBlyZYEeaK9xsJO6SNcCG5z5aD7pLIYmq6G3/4UL8wSLTywPSHCw2UxdRe5Gs
bjXlhf8JUQg7GfsJgATqHRkaCr7j5LtZ1aklQhRb0Gn9RBH84bgmskaJs70xSZBnBkVmDr91Ah/J
MfZqVnDdDhDEtK7WiWmIlop/wM9XVVPBdQtH4QhgWSr5eG6unZIrTynsKao+QVWRWyQTs1nBFhIi
1CMshcBqowuvg2teQ3I/yECafWiGDovnJ35ay6KNCI/ghaHuMLF1nMVf9iLsm9cbclClgUc9qpA5
GZ7LghXKIIQCPpTSQbGzBLcHcHbO4e3pxXGQIxD8O73h5KhD742MxxcxiAiQcS3wk+gmoshfqaRp
bPo6p6CLMBJv6bsTzUryjUkRcRc7cpqPK64GVutT1Hj8WRs9toTiIQ0qIqojDnHDndhueKAEAI9q
WzTHZS5EG+LQ+Y1CvQfzEaaHijwhTTLHwoL3ktclEzrPctAs+mXqTYl+zDD6RXn5vavhgVw0EJui
mF+593b9p3gjK582oitN+C9Hp9YskdI2/E+dYACQ5Irpgz9XOqrxdAr3uUn4QkCEX5+/Zg+ct25B
AW2zPrYyZdU8Ab7k+x+JKNZz0D8OPDvhUi704pP4H/kXS7j1RdQiJ9uPgKk2NPIlrh0OI1ASYUyq
Sq4KytISxcG7LyCZ0Z4neipd96LfkpTNtQRKmEVcpLQyn2cVpGAhqjRmIoThaDAmLiOo6RHTgBvs
w3mcZradUBsMi99vYSDIEEypAcArzWGY6K9hL/EOgNgAEQMwCVrJ7h4Qyz4Glam3DFDiu2YGekXt
fhUD/SuBcDT4qbf6WToBwQndk6cHhocu5pvLOkrNKnGI0R3Q5zw5c/3mqyQnbr/UnwXnIi65dQMx
gw71QNVvi8Rba+x5/HdadrDOItPKQ3Rn6KMHw9it2Pn2XIepgZ69r1qK4kw7kKFJkB+rF7Fxcbi6
azIhnLNDk1Dci9sXt2JKQc5HJTdClato/yewqe5wTCwPibr3cMdoKqhfSk1Ub+modwvcF+p96jD2
MnjAJi6UZ0Drq2CV9O/vSlXGHUs70mucN2kE+pasPhdaqq49WcZcXLnueF+/Yc2nCgCYDfGLtduJ
PboWHxFxXZEHp0bOVdaledKA6IKkSm3Z/YYGxG2YxSIYWbJYrzOrAZXpnGpXE0wYeZC7zd4Mawaz
md+xxUdE7uTxX10iCdC8Cn0XjoEOdeJ5w4NCYGcZZp0ynXVTwZNjKL/JP4DVX9Gqd8Ca0ILR+CVb
TpCk/v1epX4giBxMorQiHx32Y1rjKNu5WPC+s2gDzmj06b5PpxcIelpYkWjQbwqyXHrfhtgmfEI6
NbCH1QMW2RORLkMdWuZCDQuT/89dtn9F3src+bkAeLruHczPxJTa7wDXbHgxCiHVRa8WO0EC3Wgm
ogLNWrGKBtuw9XWO3I1K2jfQUI84wRCq7M7t/c1EoQlsdJRBFFYUqohZSyk71pU1a5gsE4DVx2NB
/+9tjtv4lGTGe3KcMc/IWxmG15RurjQdmkbnR9vw23QISkX+R2OZLfaAXLg08OhodtH97+KXMC1L
34ahtbMfJn2Tn7589bT3jBJO3GPNsoDn/1Y9bsGNgOPZJN+h3/sDu4eUM7zLvGfVCL2xq+v+WNKe
PfCX8D2TrMECBl24CrwExAIr+vO5d+ktnpMpUBCeaBqG1/ftEU/pFQKh9VujS+Z4ftVfkg+YZmYo
denNGVH4pDC0GkMcZlsfcG9Ey3btphOI7EE2miOo/1HNgaLldSZe4d+5G/9h+NC8/+PIHPn8BAgm
1+3U/+Q0PAcCK8P1QkLA4EvgAdKd5Kz2hZZLH/4Q2POOoKIQvUl4MWcxt9QjxUrtqyYsS/5utqYK
J871ALlwRNr/tlTWvJbpUdNQzFfQjRAfnOpHVMFNLbv+xPSYpPq4TIHdnOTTK4EY1WGNyB5vaU+O
hd3C+9Tlh1ZjB1XEa09SiLkStes/NmC8oU5LCGRHWKItfxvDaHrVn5j4nTQjG5+QfsDRbeLwaZhU
dGXNf2VzqkdJ6gsAfejcToJkIlHJ8a+yfGCdYDjVdnkEABSHruubIXG59hFAa5tDxhqMy4A4tw3V
+XES4Qs8V4i4Y5BPLpKDTGY2HAyzaiBpZYfqFbp6Aq6OQWpt+L7S5cPKeSzFI7zvDXJSeJowcMPM
9Y9tPC9R2W7tTeWDrqg+PSTaEJ6zI6K7ENpjj+bz2W5Tsca37tBGfJYhDsPvegubUW5tlBzJF9Ac
fqKjgspaMS4UbW2WURT4HcUXm3/1BHskz/92RChLw5mpZyRqkX00vaBx04/N+Ay9+HNBKCQkuiSw
bqC3L76sTdXFLn1FINoeCJ4qSYOgwjSvVtDus74R0eBZvorw61lYzaEBYGIChN4Xl5T7piwm1ZFV
bvCJyLWamZFb98WDKPk2CO+AVILQHPQkaufCcg0QRJ5WHo08kUD9qisJzC/d6n5hsn1rVG+z2s2D
/6mo1e/nlQT0R6cZWLEeib9NuNJ7k/T0iuBbIo9LwO9D7nbYWLHeMm2sLpI0DRC6EmKUd/rhF6qj
42fF6j6A9HV/Ynz3Ap592pv9y9l4gSxpEQzpgoZmQ3zTvFrjbxUZ9h+O2knVxkcb2EpgJsFI7oD1
8iAEF80nb4ac7hVZph25flw1PBqLEn7O8+2ShnQao90ZNpD1/UU4X8Sm9owTWsl13CE5Grz10xSJ
5L1CioKFOhrX3XiwYw7RA9vcsAK0xjCYBQAw/lVFNwXjEKkHtCxG+C/drBSCcjXtINraTTV4BPQh
GG7RMREU28x8XM9ZzKTVC14ipk/k1OdUgZfOPD8WSbfHgjW4HFlhffSFl/MUtNstKnp82pCVZ91R
pDZ2jIo7hIIvIIWO1VP1Foq4uE1oL8El9OQ9ZGChuBdIO6RWXJ1G2aoG7OgmnW9dL8MBCwUyIZLI
+eu2oX+cU5whHRo8HZOY9o8Uvmfu9oi17YykfANc2s5oZCMmpc/Wr8cH1MmJUJ42jyKFnsDhaxCQ
TmF2cqJplLbwKRUhzHbkHXMI5qMYeHAZPmAuWjIdDP8yXANt7YF8n1D9eQbo7HYo2jkPltc2zQIK
rPC84rQ9cMVayLuWd9wJ7jDCXhvPl4BF65G+6aUZpgVzz4MfvuEXDm7TP9AOCEm+f9VCKDi8fVVD
26dV2Kl9/4FuYRBjJz4B4am7EFoTAGQ6nRv/yAJLBOnCOP16ynUj5GYY15WJwVMtiiPEuGMUULHY
Rcl5UggPcS47ruXNqN8oJfrNeTJIk5xvHZToETVrXRSe1bnteMlgsJTDsXnRbEBPFyzl2BLJ2oMT
B3uVZHF8R8lAaVT4b7o2iTFU6dYdgaX+t/krU/sQc4oKaBRlvHh+IXpGM2Jx2pto7d4VtvAXUNkU
7SfPyjlsxbjtNJ7wyEFTOk5Gh0ENhJrvuDkjxdVL0Po5p+s/j2O5Awj6xCpQ4uy9nw7kwImYcm9j
wa3BlFsCiKYIrz//Xon1CgeNtkoGyZ8d7u6Igl2oEnjmLw15lV3BD+N5Wcnm5Q781G6jnIT8KJoF
BwwLxKRJ6IuUv27Qp37szuji5mk1cAuOWLmowo+QhKlR7CSxxmNLIuqYRN323Ve7ARfxvATfLU4C
0Kp1YgA9aOErKqoNpMjdOZkrkdPN9vjoGUklCk4sbkffJt6103KKZskVA6R70v1w5YMBTHvn3rR0
fyeaLqMErMBvtMtJ5OMPclGTbvcTypulDSG9Hf8KkC+mJF4SLGy6xfKV/QCqNul7RwKx228af/Fo
wh+K2F+midARKS2j2Z2uyiJZeAQNnyZcdqx0+zsQd+49N6ISQGa8mz+TrgoXpdHVie+znsZin7gM
AWX8Jj/trJEqdKXaYw4hoMEnw5sp4hUpF4nZ149xs4UkjVYKbzwTlCfZD+IMLVd4bGf/H8gb79Au
MuBK97ppprX43fXOA+8zjSpQJdMk9gBwP5TFBMSpLT6ohRHpDiWJV/yUp3Gc14BpL5G+ljS76auA
3DMp9h+8iIL5m/LnZW4/9wsJwG9gkEX+QwJj5V5eo+ltPZRL3UYu6tbZPhwHydTQw2pD5DxaH4B4
e3OAi1fomf/oT1eXPgMadoe8bBaNSJFj3eUTVcb8EBsyYRUL2aUwN9Qhet1AQARIULGUzNYhAMND
7Gy9L1KGIG67LqLWAl6sSaByls1iXWawIMAZI9cd1sUzA4rkjYg+95iQlRZaTkrKQdqKXzKTbu4J
xDCWzV6b3AEwG4XeWhu02ixPpm2ShlTX4sNqzerv0uLjnal5Sgo3otF8QefZJk7pcOgmBcJVOqXb
+2/VEMPbB0K0K9al57wv82CwVhvaCIS2O7gjWtrdU9/OTte9fTqBqDqfiNGV0/Tn5EARY1MvVKEh
XBwstkOQs5NhPEu2wPwkaCXZ09MDc5LFwSvx3GuIaoFfpxWOtSnqrQufQd/sPUkrCteivFFj5Czi
4rw2ZF1rP+E3wfBAYWmnlkOKJI7wE8qcyfF6l+CHZCtBqhPa2WiRtHy9GWltX4hSyan17OKCIs48
4AQtLHfWFvWvgIwOanJKArJQ7gMwfiO1HY2TE6k4HWp+SJr5ORU1v60Kfbd3CvCcF3GevUKu3ATn
6lBAezZLU09rAtc/RQ/Oa6r9O7lYIs3EDRXbut+bkD9pSmbhBRuJ1bL0NY3UyKsnY8Bon1DCdrox
o5ZPOVHlz7UqtPnneI32AOh9hZ9NGTJVId21i+Bgt0YhIRmy9FlKN8ZGqHKyJOc9yTetlM6E0cU6
Ve0WhHrfmWnLkdPGGU0UdYAeBjXNT7qjdqu8+FVrQjYH5+Myby4wwygOpDukbxlYKc2oFD5Nu+vA
dmfzwvYLd7PEzaW3wFQ6ut1VDMrU/n0FTkA67YycI6NjAl1YOtKVmT+/Av1PfOCGREFNr3qGuzp9
/peM0SQYKP9CTEP3CuA9vCxkWc8a46DM/2JV9lcQI6PRNnHd6fwr6+h6tozbdvwSfFTF+kAMVauF
gyZbfy7tQqK1ANgX+bEsxNbR/pZt0H6ZcNatwpU8eG6lcTv9DZzka8zgjEHleiuJGIWGeZOy62dA
EPM7e9kf4Z2OC7P/JOGrzKA7aQVJgbhRmfzDrn/1wjGu79nn6mFrqrEBVRoiiMLz3e8aBNvdpQYp
4SkDS8S79VFnIXuoxRVlMb2kzLPi4bsRLCC1kzpID5Fsxcbw9GsvpMtq69d34TXx9E914FzBOgH5
/DF9d2l7nJzUthLIWjR1wdklTyX4tuc6JXpxV5VP2pzxJBMVZE00ZPm+nJ8IidQp5ejmGHEQlB+R
E1i1HGoE2+OM5ruBwOLzPiM+vCtjCxA2nDpI054iHAq8AAi+Uvnzdqkuhu7LWXXyYwus4taYV6qn
GIgGAydnrW2qXal697DN48D/qWcIHeTxELYQc+6l4n8/GAMoQVRKCWNSRdQFezPzfmnF7RmitRVt
v1aUSRDMGnC3M4jQzEiuSMuJ5wp9mROHNieegjZWWibKSRktm2VVzVfl5Yr4Vxbjg9VRh58KmxWs
ZL/3f0u7Oz84WbwDjWQHt3BGU5C0Sbrw+LzPu+MALUdB1XJ5AXuWB++nsYLd6i7iOzrCp+A8/XYY
YqLQswAvUdbLTqv2CVAawr5L1jDyUY6M9rNKkLatTctveHIkFWFapLajydXLnrCEOcPsf5+ZTdPq
OnBEKC4U6jw0QjCw5GKwsWTzyqX3EAxHwDbYCzqKWJE5AtRR8rSHg6M1MaTJ39sOR+HM9gWFth8G
+ERPH8cD5y5RIzTcQXiYE30jrg2FhLLUl9L2xKnQ+jPFmUzHkDpiIAQrF3DSNI3uQ/IMfc7EcpYY
/snBa6um2bD4Ls6I48Q0K5/er7NZ6v0V9z1kdpSPlDQVljGS6tBWYbPlWEb0a/d/EhLWYEqTYFmy
wDVJx+GtRtAxYCSuX+izTZ9o9c/RnkuUEGxxFayMt3PXZJ1GmB/NOv2nPVDaCETXLpH8JYL0Plw9
p1yhqmTTACXfKrHiIa1AgmpkfUgzW/O9/8oAnnY+GjVW7rX7y6/0EjWlVkRPDCINlPxijDePcIp2
oyg4V5Klw5Nb5xVpU3XH5PE67e4Nu6JnTvHJOrTlsG6GLtcg+HkbP9cgG7wPO2PuXjoZ7rank8YM
JAKxfOlMEs1vv/7ws45g2gB3L1Jf1kcSS6/mJylZ6d8ih30j3qLjGgSTIBzXWDoIYEOC9uKWCnY8
GH02sbxBsbefjpM0DQ/TbyegtXuY+3J9S326nRISbHxCMNeeDjgN1jn9D+0/3b+Fijg2bJJ8MtvT
wX1qPFlho/vR7ccmfoyQ7yOz9LUkKkSXN9+DpRfC3BM+X9mo/PPuD+7TfnA3NlIjWeARCeDEsXxg
wtiNSFGHdqGU4ydq55q5zkvAzo1aHT8r/Ayyz9HW3/ZBxjYcq0DpFOsLkQAR3Y1hDdSztcyjyy1H
3O8sZtT2vxg9F2vu+EUXw+qM+CsZD8N2ndYns6ekXBkbFCz2qOBKFksgv+yD/3ueswz8UEr7iw83
9gkWdPE+aa1mPnOX4ZR1e0BSFBOZfhovyiaF4Z1MMZZxZ2kTXPfP3eTeDs13Dep6/oclJcGBI+9V
hIkIwSsVD2uLY/p8v+MZXPGCxOKZh1mz3QMMkjD4fzKweBDKjMFpEQW2o8xkaTsL7ljw9KVsHieg
rGmCJsv0+JGspbDIb0CXFTyWQ3z0sD0+g1sWUwj1WK2DXSZnm2hm9hkSo0UQCH6aGjeP2stmzsjr
Ea9lxXmTh08x4FFsaKiBXfp+L0ju+CViexW7uHYQ17fdjGPnPE3ZOIKqZnrnJZrsg+5sQ1zhEVkK
WjzgfEGGKrmSOSOQOHw6yHmg/GhNbxP4txEZAFbrK2uBFQ5MKC9EwsAOChD2q5NFOD14JcVjBuXk
DIIAxkb/nB4h5yrRNquorLLgBORD4XSH+yWNNpdFiU29BJ7gea5Ptb6PmFUBiSOblBVpoKzk5q8x
J/CVwy24c21SyrHp3LBoKaCp9mRCcapQboduxZtumpyySpXQ/Bp5DIDSEHUke/tNIyHcGDIdBcNb
d47ECPKW/cLQ+V3zpFVZTW5POTksdhECznHLffLSoTJDbqJZWCmMZyvem0N2D836H/RjHLLnLOSw
B8LjCAGUc9S3yiP2LMrPZI+jBcnU1OFjVNtvKRFmBrsTWFlgVK/WoL0cnIGexfh1jlqljyRxAAWn
mWpIelP7s0xmtTaRbbyml2oqQBPJFxeMU71YhZrgDVOzxgaDw4iAhDRd0vk+Ak4uZ0IkN2v3OIhq
kAfe0JjgRlBwQoGQ0iVWIVC8qvhp9jqwaJBUMFoaNUjUgcvek4Hzr6eNwtaKPio2ItVr9qaTbUup
T+mLGVgKOlljddKdcMfukQHGREANLshnOabY01hcRtlXmf9zdOZqM9Az1dvGcNCKCsPoAQ4yt9yl
t3DcpcnR+up5BTxAOP6TzJTCO+NXLaaoozvm127y58m9kwAgFAkxho4wTpradhgcEBNc2P69ZTNS
/fqtf7dQDbmqEn0MavMZSzjBxhLkn4p9cuQHvCeQll7QW7maQZo/f5mLRIZY0+sbiWjhfcsLd01f
Z5z1nyK7ttQWzSHU8OHObZgQbvKmLB4toIuZAiE50Jcj3TqI02njpZsliQPjt3eTbgSRmikZCUt1
Ur0up5PGlFTfsZ8sd/C4fBB4qJtUJ1tehfg9CGmGMsGhKBfVfvRPXs0KaIsNgHjOvEv1/VjoPhfo
e3O4k5gRrlM72eJ0hULvx9UlfBRmSzu0pkJUP5qcvMfLt+SM5Cxg2tSrUOjEHDSuRm/6dEWIZYH4
VGvGXr5CYNSFWv81R3stG/aCuqQzF/ZiwFUZAQtENXCbuTna3BjxX8Bh1+wmq5O13lFlznSAGgAv
Dbr+HribtHSbosNHtIXTfNYNsfhVTTKjX5Z6m/LHrP57PVVKWEeqErXveSr+SvMeNRIPhseNMAsy
AYm9W1H6wW12T+a1Alq+61RA+iWaru36q1gHPyJHj7TmjgB3zxTdlurWd/iOdWaRPyCVIyjK9jDq
oLfqmOEzCTwB9YgmA2UGP/Y0e4Mr7dgFCXgw7YV6L1k7Jvu7WaFnCAARfZgRmoDWZlthwGQlZUjE
lJpeT75ci5EsCMQLLSmKuxO20xFxa5elgbdNsY8VUnPER6XZ1Hm8TnKAn60sM+txzcyGklQNaqja
eX/zjJlnzoGICeQ3Y5RLhuMqVL2C2+mNIM4V2y0QDtaQsRCtZGs8Aw+8tlgsjC1Oo+zqG/QozMEB
mQ7e+hEj0ZPOdExyNXsILNTx3v24GeAkyDxl7x/VmV6ap3npCjWSun9woajlZW0D+0b3MVyUH1z6
JaFDdiqYoROSOGeHsUrPkIAe/PaRS2hzMqUiiHhrPytqWhoU8aMO4qag4WuXpoXmEkCOhLo+YS4N
kRSG7NiJFIPU4h3jQKMzJX8bjqOpzabnFqdTfZbsE14OjGhYgu6T+4R2Z2kwigB4jy/lWY0Kb2C2
awBEKiSeyyTNOfZLLLbRR73Df+Dvuaiq/rhh3l3c4mXZNDXUeINDBgXdfMYJeNObb9NTq3LSgZc3
2zu8xHxarmc8lFzciUqF5UbJ+dk1uU8HK19LVyOdsbKuXFsqydMLvZFwb9xGAZn6WprY64Cg5xDc
e8jvCFAKbZnWaBGKW2EAP/LRU1fP8MA1b97+1j63Uou70OX9qCzN9eKgVzujXSDa8UwoCnCI5F0I
StNu8gj6q/0eRr9cpxAbx9p9f1WG9HwD/nBh7izgrnxHCrTFUIR/ew6tpMZCtYyfnIQH+P3vjtVm
1yp7PBE0fctGDobS2wJ4bfFt48GTMdsSZtSTl1p1d/kNg2YXGOVhKMv2F17UcaUWubMuwUIL2cZg
1PTbmgNlLmM+Mpk5872KSDaPGXIJHd1kq2Z4ec5k2UO2OsHdieUguaO74l+LVOlu7DGtptKCpQbG
rsxsG0fPZz1hBDXWD0uAcrqic7n5t+OtRsHXxW0p0moBE4oaakh9lR/hPcN9bMw9olE41SZqxZf5
LPdbvC8Lq3zuBkJDE+3XyW9nFP1k0lpoX5AzajH8Ufq6q7XHfpMIWUauwV0yjoZKHh+R9FA6AWw/
3yAJNRlKiOTXapAGwv7T+VWIRCsH952sWf5JWdMHUQ+R6BTcFP6lqjzofhYqLqqaqXyTtMB7ApEV
luoLWyywGrnbxHH9O1lZsZbPEbgSo+d+zL4e28y0d+WXXO16iT5+Dp4cY29WgyTVXxp/zmT8y1pF
xSOYI82MlVSE147/H69zdmzVoExTlGYbfO15cipcoG8GyWiM/PFJTjChewn2R+3ZbLKxgOZXix/I
gCJAvC9Ux2bYz526yu7CCJmRn7lssoofd7oZ7v79a3tUHsBvwkuKylAZVgnrhcLTc7I1RXalwTBL
GVr2/XlJKimD4gvb//P6IhudzP1NDv1eh6Yey3Fblvv3JF8qF28eNINO1ZUPAyfJztjGJzI0VA1p
VUoninXQM1mqU8VrULHzovx5aiHTG7cnXnF7OiNhKugkt4qXDKwYHEvjH9V+EaZTT/DIM8Z8mgRg
v+2BYXwaGYbdUOLhRgaGMETqO5TJhV3Ym6frEnOEFJID/vS6N99qqoOqxu7BgZRjPP6sXUhVEZ34
RAPHhK1WNkaC/VEQlxuFVjCw3swkkIczTMT52q8nk4FT9iK33BI232Wn35ag1LfiUD/Ol76TwjXS
2vsPh917BPghVTLdq9+wKNW7Z0sLV2ysBCxOMWI5BtULsqxbABAJVuB3PLmCE2F2YXtWSczt9foD
Pr2QkVX+CQJeXxjJM2CDBe2S+5vOePXtuCUfCeaUgnvkjWsojf/gxJJqhdLpKMlloIuFUPgstrKf
PeivClI+vSIBFbeTCLeomhXhTm55t+7KM1TWZT+VFVyoVTqB3G5xVO14/hOfLwHzkFmY9u6JvhdJ
ZMOa3KMskjhQaqEEJlbSAgkoXghhdp63ieYiyzgAX3OGAMtqNix0XxUWqmQKChBYyFqnw4DFr2GO
ZHnH//JsvG61xloMheqESfuGrIHa03ysGjBxnk/kHNMcxVYJa7G8ylaVS8k/VsTt32bJguULpBSh
lsyOkd+saArmCj8e21J0F7dSx7FU7JcAj5Zs90ckHKN96O9lBuL+XOFSfhgJIVOCtLiqs5t6bw7t
RwltOUUSxrxVmzx85ECKaR7iMxouElswM8Ch98i84e8/DqnenuElrSnwASZ24jJIu7+N/erb0V//
AxMx8RynsHT9Sq6becY9gsFUczhXxOzHhWz9tp1mR2qEgqyWVcJ9S+5yAWNEEDm5xHgVv08zF118
pKA6arSOoVA5uMI1D4GomFm1EbwO3gPqiz3YZFlFfYkum32FVP6L0n+NOt0ENwIEmKd3F35NsDbt
Kt22P2Bo/1TYkjXeMSmbJa2jzJ82ZUXp6x5CYYVPGmetkKhXXTBscofCtHk9/PdhGN4oFe5MXPGy
mJwJXTI2LUekNe+tyCwqx7iqK99m+gmh3MQC7ETrsYsaqmTTZ3ehEQlV4XZxnqc8kw+ehs1rcwdH
1dCOhJpI2Jy0k17NF763atWDC4FsQZ0VouGp4QNIFiKfvHfCSmxaevADBNPNkH7vYgwPH+bliYX1
Nmkw9/sRm55MR/7PrSKlR7rFqgsnBrrskAKM08seZE/T7H0ydqNPqpT7pqBHpp3BLcQyjgiJZbxW
WWe4WLgkoWvSVJY6PCgpoMJLA3N+3pX8pTDWTWnwe3W/AwJd9AbxjRirEzqiLBKYGD+M1RXb04IW
Jl/94deMw17CIoPp1nB5q38Gnuil7YOcuGOp0nmZWdsmj5gjnMY2Shw6gQNJwkN5M+hbwWWUVJtH
xHDrr121c4osISvq1lR4RYcYks1iHf0R4Ktr3a0birBbFojjS9rLJh+FuYP1n2STrvFWwY0aUhEr
2WeN4ITMpgC5SwhVNaEA/EzayqKtNMLi6PHgamlBUm7zO0ShfxVagVQNyne5Wo6MImZiIiVKQBLW
W0MVJgj+f+aib2pA5WtXzGi4idRy17WNJCvM7WAu7aJSlcuZIeXgSbg4nkdWLiPxvybLC6vxJAmd
3iXJmHtXCmIXRslrbcle4tDDcTBpuWCcwSN34oVYO/vk+PcXj4VW5YfyPcGV7kp88smcufQpjyD/
BljiV+k2qEbL0UOq7g5tN1GYfaaI1vOH5JgCFDHrRaPWhkAnzh/Geke0LvXZ5anbtcx6izLnWPtT
JVrxHBnkD5HoAhouLwaFhwiWKxPObs6Zs2t1dwxw4Nlo1vklFoxhWeJsk5jvOTmy5iNvj5JwjvA1
TVmUg9SJiqto1Qr0mJQRg/WKXby5h2FiQ1ezaAMdRGW4/v3uAJc3tLQWl9cWfzdNmcw8obVrO0ot
adch3uZGGA33Bcc0JtRsnywNJVLW84nTHGSH+c2aHPG6eAax+w5rv6smDmyVQy3sTyDUYvgv2OQp
abald5aGY6gckUZ506JwPqNc2cFwAYFa5Evk2vBqfyGcQ8W52fBFsxAsBUo4a/Cv8lF1saJTC67x
jyL4AtjJBRFOjKjcCqm6CvCMpUi6FrI3fnyI98/1L3CEP5llI4OKt5QMPYOrlwAfQEceP5rsjAGh
3jquL+PcI/yQr4S2soyaXQIsuVg+Zk9cuC2/hdw68zyQQ9suFk+vburcMs+NZGudDiR9HXEycYOU
rg/5eCbxVvENGZa0fTztnUkqvQePJrFs2CgpUnC3XDrBnOq3y1XtTm5HafEShhiqhC/5hYzCa4Db
Rfxv17NUil0V7PIDuIxfS/BACTVos2L/aZSaWpZN837JwNFHoX3bz4AeL7huKyTO6dLuZArfSrCu
wHgv3KaLl9Uv7EJLD/Ebky4lNk02GV9Fzk12Vch7gTe7PzEK7E7zAZZDF9C2mW+yYR342pJFurAC
9CY0Ud0tzdP0cC9W8JWN1oaOXEP2JxmtlgaD8xAVR6wx+kQPPtQQzo0Byxc2Z+h6H3rFtbUe7OHn
1vYbQxvtgSx0O7jf9fBlrON0GJx12XOcqSezJfEolR1DBQ3KwbCSdYIp3MEbArZ3m88rXNuOYhpS
l1J3f8iuVYthhQiCInkmVBz7W0OWq73+PWhNTQ38VMbvcGw+shXj3a9NFJBwgqnzKOtZXxxghiQx
tJ5Ia+7T3rWAg/2fzOAYXBaz1BbnpUKINLzisJZXCKZDErhLrTLd+b7jiHQPtxG9KtOHi4Zmvh2+
iK0BMrfbAA2r13YZ+fmFH0Ox6Zn694ZovQtUyYyt2SKuRt9G6VKO9jhKMIlFpBbhU+2fJn5FluKe
d/AAIfksrpwqQq4PQ9wtH+mHOI3zMaSOtVyQ+CJH0Sl5Dla07R5Sf2TY65d9NwytgACwgXeGV4CU
Bo034YnCnufJEzYTg8IbFQqsJraw35N84LzhUDZzXAXJSupbIimK/QyQiQmaGXLbd2dVM27I2vWj
KWQ+pfntoks9ZRmoU9BmT6UVBbtybkNRizX40I4bnGhCvEc+/MxvQsF31doFGb+XlIGZ7dVMD703
bzUv/wMQq+BrqMxEy44/s/GVEp+7C9jyvsl/88eDogTyl+EPkMLqTNsErrMD1IAiFBuvAcSLbQ/A
nhDx5zBYJe8hVZvs4TsqBcpQFbdbiarpkQaRZN1VGk6f6sz23wbrHoHNuIJebEcF1ZBi5vfNmkvg
PPWFMsA5ILHoe4XkLrfAmMPyK88inJ4EmSFcV6bW2kpQHgK9PEl3ien+JD9G9piIm6fW3K98wmUp
HPKubS3zP5sjW306iw48Mah6lBGSsMrdIeJ+/qMi71fQVHQ7s0XBWvNo0WPcH12WCXOM0tJKW5Mi
xUQIp3/Hz/50X7gB1a7Vkl3NtlnVIJNUMAumnn8STn0R0vPYSQR7biO6KgcgqGohDsE2+8z3AgO4
jM65KnEodvBhE9C9VooQELQIb7BMmWEwQtaWUKgvzSjf6OU9HWPnSi3Ge88V+UdTAd/LbWJqUXUd
YgmGV1gJ4YXjLBDgeAbKRaoSw0CXcwVn56NEH/0YcCiV/h9nQjtquWOhIjpQoey7v5Rj28D9bazG
Mc6xei92+ng=
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
