// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Mar 23 08:57:13 2019
// Host        : DESKTOP-FB8OT1G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/michask/complex_calculate/complex_calculate.srcs/sources_1/ip/mult_gen_1/mult_gen_1_sim_netlist.v
// Design      : mult_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_1,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_gen_1
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [14:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [19:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [34:0]P;

  wire [14:0]A;
  wire [19:0]B;
  wire CLK;
  wire [34:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "15" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "20" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "34" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_1_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "15" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "20" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "34" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_1_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [14:0]A;
  input [19:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [34:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [14:0]A;
  wire [19:0]B;
  wire CLK;
  wire [34:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "15" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "20" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "34" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_1_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ODJQccDDrX/rQ2Uvw5ECyVdMNXmGgg/nXaDzEWPPzSVaVrK9Tu/Mq2MlY23f3kzOsrbo11BQWv/A
V3kC0uLtGu2zvadfqxuEKJNKTQz1gQoZZEDQ0wi9QbiNDtTRcBTKdxFqMSdJevOSgNCuc8GEb7cx
WFWjyQ5tJXfcKGy6HcKHEckZitkghZotIYprD3ByYZltcAqrGwdYo/PKukALRIOrwOAIkwsO7YA1
RxMYCBTLNCbW1IBXgIQqO60MpmBGsYCt+DHiaOoblqIQPGm2KrD9jKywJaPDYslVkJ7s8Y3XE4zb
O1XAL3pKe+zfD8i03EvsvFAneNgxMgXx77kIGA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jmpETFL7WhL3JbXHdoIdGJ5C3sAYtZlvMzK0pfsEknCK21M8qtbbLOPgcBZcYYStA5AFHydLRCL1
JnWe+RsHGKg+kfZwZ5wG7gj0yolN+pW6KeLfpXNeRyPuMsNs9ifBXK9BIS8OkadsAXD4Z9VWRjbo
O0GwVMR7T0oy4fVGSkBCfPFCz873qjsdKWS2dlFVRuJCqa2BC9pgxOtT5NkMUSjK7q5117ArblLg
NeGf8xQP/W+dzl+gRl93dIIl198oBTORExk91gt4jBjybUd+QuBNjZwITF+96GIO1cdA6tgbvJSk
O6LtfTsLx04ppUxvr1E7giNT7lVZugu9h+FBAw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7216)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
