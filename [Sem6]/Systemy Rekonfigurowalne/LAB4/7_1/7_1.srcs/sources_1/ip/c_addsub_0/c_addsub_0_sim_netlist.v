// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Mar 24 18:57:17 2019
// Host        : DESKTOP-FB8OT1G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/michask/project_dodawanie_mnozenie/project_dodawanie_mnozenie.srcs/sources_1/ip/c_addsub_0/c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module c_addsub_0
   (A,
    B,
    CLK,
    CE,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [8:0]S;

  wire [7:0]A;
  wire [7:0]B;
  wire CE;
  wire CLK;
  wire [8:0]S;
  wire SCLR;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "9" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "8" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000" *) 
(* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "9" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_0_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [7:0]A;
  input [7:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [8:0]S;

  wire \<const0> ;
  wire [7:0]A;
  wire ADD;
  wire [7:0]B;
  wire CE;
  wire CLK;
  wire [8:0]S;
  wire SCLR;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "9" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bQOQhbIU0pIPZdhUlEbzCL/cxY1klq2w2+jRp+6J3nAVzx2MbEUUyidGJ6OdP0DFcqSZxxO/vAmn
LFoYg40KnBd7uTqo/aCc3UWL8DiWixpNwPeXkTbpNmJT9+6oX1/GWnH+dwtifPtwcCsmAzGi+i9Q
d90QDuq55/3SycpeAxbo54gKEisuPBIVV58knrR4WAIsxF7hOcV1JbaQeID/rjEy6ovOWnx4Ki8v
UxQHdVLaUlGcBVg++Qo/r1DRqHFEqV9jX1cPNaz7ecLhr6WYaPIjP+dq3z/st7IyjrWifEVJkRhA
48Um1SvvZy2Q4f+d26Spnea3EboN9oiLABE5Mg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m+4auCehjrGqWQtZVU5wQR2oc5/WO/XSq/l02R70+7fQo6i8w43Tvm1d1r4wnTIZpDro2S/FcRBd
ZmjBip96Arq8K4aQUI+2vt/DeVrKD5ZKbtOcUsBPm1jUa8TOK2eIa2im+Zxookm9imKWTxyShPER
OFaZ4LU4TWkrzyVQk2pfASCUAPVMf1i4Mv6ntCVD0LCDfuz0yLgt3KlipmPmCMnfW1XxZl6SjK9n
prOsyyt4uOg3kBYQI795lLnPAsumeKTv7UDwGyoVTcLb3BmQyk6Cf0kZifAIW/YnurAUh26d0M52
i9KDFvvvgP0qEf0wi/tNZW6qBbKX6OllorqnBQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13504)
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
