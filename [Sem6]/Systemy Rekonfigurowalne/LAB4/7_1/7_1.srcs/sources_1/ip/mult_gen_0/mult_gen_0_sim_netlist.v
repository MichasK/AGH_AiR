// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Mar 24 18:58:52 2019
// Host        : DESKTOP-FB8OT1G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/michask/project_dodawanie_mnozenie/project_dodawanie_mnozenie.srcs/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (CLK,
    A,
    B,
    CE,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [8:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [16:0]P;

  wire [8:0]A;
  wire [7:0]B;
  wire CE;
  wire CLK;
  wire [16:0]P;
  wire SCLR;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "9" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "16" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "9" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "16" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [8:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [16:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [8:0]A;
  wire [7:0]B;
  wire CE;
  wire CLK;
  wire [16:0]P;
  wire SCLR;
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
  (* C_A_WIDTH = "9" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "16" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
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
UeqPzTHSTtyb9bjyJOSyGOh/YUfUIokP5qjNWH/J/nYcMLsNe4FXtdVCqBUopAkgsGhO2EWgJz7k
p/9Mv9sBqu9UC0/2HBDzDP/QANOwVZmHv17LqoGbJIpXxgS3Q8niQ3xj+SiQl3LTy2jfB2MecL5C
00hO7z4qK7cL18eSv9I7ozK/xvarJ96X532VkjuNcJcJoa6ZMciks3GMJ91hUSV/NNtBKPqLNDjl
GGbOxkN3JnLeErFAKGfbzOpQkZ1bNjYie1EA1fo5nDdnzLnTuer1hAAUAAZCoXDPSQMBMAiDKji2
oBf6cY7qM7k97yI03wNjYXC3s95fd8mCo5jdrw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Urrv7cHD4n6pxOy5eDQk4OkwYLqCX1Lutxqg/KWiZfrgzo9/ZtuvAaTdsEUuAmjNEnTqcXsSBxql
bmLf0ut7yh9WLCxLbdlMHGYyB8dfMJrPQn17W0inilDI/GZd6bxC2+DNNoY/LL8fUyNDJYXlp/Kw
MUoYBgtZAD4H63aW4ZriJyCKTMFYH0NzZ3AQ5ycvMsTw4t9/Y+etz/SEyeKD28C02gUvFgt7DUSe
gD1i407leZHvKN3HE6JwBJbjnVWQnVzVDle1soL91vNFDqx35ZAxpQ9R9Qc/EZBv/jlEkNeByuUi
jZ68NtgJpLlZr/nJXvZHeNgFFoTWcL7qYXrCXA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7408)
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
