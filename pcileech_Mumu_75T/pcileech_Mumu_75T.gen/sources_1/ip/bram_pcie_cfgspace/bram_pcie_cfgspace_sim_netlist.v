// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May 28 04:47:23 2025
// Host        : DESKTOP-TR184UE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top bram_pcie_cfgspace -prefix
//               bram_pcie_cfgspace_ bram_pcie_cfgspace_sim_netlist.v
// Design      : bram_pcie_cfgspace
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bram_pcie_cfgspace,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module bram_pcie_cfgspace
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
  bram_pcie_cfgspace_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28432)
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
