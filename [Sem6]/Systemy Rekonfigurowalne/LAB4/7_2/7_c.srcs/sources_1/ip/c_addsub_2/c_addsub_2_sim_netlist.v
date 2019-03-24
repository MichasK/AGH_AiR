// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar 22 15:36:53 2019
// Host        : DESKTOP-FB8OT1G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/michask/complex_calculate/complex_calculate.srcs/sources_1/ip/c_addsub_2/c_addsub_2_sim_netlist.v
// Design      : c_addsub_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_2,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module c_addsub_2
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [18:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [19:0]S;

  wire [17:0]A;
  wire [18:0]B;
  wire CE;
  wire CLK;
  wire [19:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "18" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000000000" *) 
  (* C_B_WIDTH = "19" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "20" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_2_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "18" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000000" *) 
(* C_B_WIDTH = "19" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "20" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_2_c_addsub_v12_0_12
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
  input [17:0]A;
  input [18:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [19:0]S;

  wire \<const0> ;
  wire [17:0]A;
  wire ADD;
  wire [18:0]B;
  wire CE;
  wire CLK;
  wire [19:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "18" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000000000" *) 
  (* C_B_WIDTH = "19" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "20" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_2_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
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
InW5/Ny3l9b/PUhqommm/fMEH7ZDnpRjNByLFBjLbnARGcJsA25tsz4GAdqZ923XvC9FFOfVQyTt
Ix74OevmCdqHKozXlcDCUWil0OyM1iymidfNHsycFF0zs4xvWSYhM+MvEq20SwJ9S+rIDOZR++YM
QMSfSEoiNLww0+32RcYxthGOnoN8yQRvC5YHkDkCrQ0d9/DhtHgCVS/G9arBVjsCRCJt6Z0AEuH8
J1mGWoK4FwJCSRrrafXOtH72dYDvrzZc4NeSCDx7TTkyQxlMd0sc1w85WWI++pzYLIWrNnNBKWr9
gvE/c5d+Ot2mZYL9pjqYR6Pl8IjcSpa0wGWuJw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JaH4WoTxo1Doemqy68CADODYPeC3mDkFVCKhXC+FZuMCUTcR/fp687BHlDx05v+DkIK+LjtU0NEH
oa1fCNk6ZPk2EQu+44FxaSk2lpaHsZpBakkU7XyxTDVyt3y03Z1Q64NIJdVai9UJsf0L8BIuEDCO
J6jfADKMe5E22kfjuUhm4bbWYEgbKiFMkVXeY5FCUorm+92HFgG4WyX1zQoAkPe36JsecHVLe6xk
fa4oW8jqNFl2XOKGnsfF6jrs3AvlbHK3lWyKGRYoxEPa1UvU22o/mKFXDqRf46xwsGVo9Dc0xcYW
p5nFKrsxTKTgdFu2JCpXVoyu64v9QqOvim/42w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12720)
`pragma protect data_block
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
VLlTtJLmlmFZ
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
