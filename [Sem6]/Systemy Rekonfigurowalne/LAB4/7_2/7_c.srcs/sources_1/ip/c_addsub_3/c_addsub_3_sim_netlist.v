// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Mar 23 09:32:59 2019
// Host        : DESKTOP-FB8OT1G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/michask/complex_calculate/complex_calculate.srcs/sources_1/ip/c_addsub_3/c_addsub_3_sim_netlist.v
// Design      : c_addsub_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_3,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module c_addsub_3
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [30:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [35:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [36:0]S;

  wire [30:0]A;
  wire [35:0]B;
  wire CE;
  wire CLK;
  wire [36:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "31" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "000000000000000000000000000000000000" *) 
  (* C_B_WIDTH = "36" *) 
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
  (* C_OUT_WIDTH = "37" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_3_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "31" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "000000000000000000000000000000000000" *) 
(* C_B_WIDTH = "36" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "37" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_3_c_addsub_v12_0_12
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
  input [30:0]A;
  input [35:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [36:0]S;

  wire \<const0> ;
  wire [30:0]A;
  wire ADD;
  wire [35:0]B;
  wire CE;
  wire CLK;
  wire [36:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "31" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "000000000000000000000000000000000000" *) 
  (* C_B_WIDTH = "36" *) 
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
  (* C_OUT_WIDTH = "37" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_3_c_addsub_v12_0_12_viv xst_addsub
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
Uq4n565KFDNQfHWU+wCaium1NZEwiWQ8yX6wm3jT0PdR5oEi9aAijyZBBRbuiXMV+ATzkFJHbIlp
312PgIy2cZdfrlUVd/lytPOgyQxTynZpMr+0cYw4fiXbrYwucoe1f/bQ4NZvy3He1mNNZxMzp2oO
kpmQitH4LP3+o0U4xZa8PS1BcuCXIbK9Aw0jQLYn0/03YE+jjQ6EOrBoC+SCVqkKsYUYJGEXdRhf
qqlBKZBg3uD+R3ifMEdgez+9uVjA27O5M5vmncGsoo+HypBgDryiUaGeOlJ4o9mTOKMPE+Cic1We
zDlBkpsNdWzkUT9CDBK+U8vaDvUy9FbWOLcckw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Yr5CAXhJoU9tgm0XvVTZUlCBbZY6CUPaDkmRZRWJuPO8iDWmr2BrLIsHdEr56ja7KOjZr7DqvtTW
OUOxoiqHq9DiH0rPN9f6xC5JGSlPioKU1Mt/Nnyk5TlGygq7PiRHz8Y2G3mUxiH6eCzH5hIrVy5m
TX9JUxQFGUZc62sW5nb9qA7gmKMJh0HI8MOzfgHbxTRrJaMiZPkWRlDqP1evAuK3ABbavImLxdkF
izhaJ94E9e0a4MOeVU+IaUWlgYXXOSBqZEc3RboUpCOyA5OaskSwAW/e/6NgsG3n+qAP8no8ee6/
9IP4acYUSe/sp7JdIJIWxJop3bcSMJLI8Q/MEg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11856)
`pragma protect data_block
fwJF8Gav/uWcaLoThqq4cXYxQWRptWgMJdeUDsRadzSR96GFVcIqIQps/V0sUp2dLJ8s8jTLNNas
LcPgNIvn39ZohC9XZYBSVgP+yWy7kA+K2i756sMorW+LHcT2khV9Zf/6zAf4GN5NqkOCyCFsbTgo
tWlHfCqyCS85+vrEoYAHMX1PjJGOLhQllxQ8or6xYupvGArL+kP5EnlAgj/tUakN1H8T4n2jndSA
TZDxyW6HgCUL729KHozsh7IkDxh6/dH0REdUbyCAMQQ2OExpS9/GeAqW+tVu+qC8hykzHvdJgEDJ
hGgvFI1aPGEN1avYMHGpaC//wQnuB3WjGGULOAhr4R2zUc07UjDY6Bf1fKShoh4YWF/+dfZZnhqZ
vDVlMK0Di8pGiw7k6G1f91I9KYfpPjGHKzTMCxsQ38CQjdGrb8fdVVbPSWfnP76NmMm+3ZMBmWjO
Ohby3EfwzDPsUSBFHCRiS2sLWwDbkPrJm8y59Y3b5oynkn03Us2yeWwvRz12soqP7T09zwOWpvTH
iupMmc8EKF9h1mQMClsJf7NiDSvffcRiTc533t8TvkWn/g/LUtXruFuWoIWt732Kn7Z8l88p0oQm
M9PIv/kejXt6D58caxwGzEwvYNxqeMan5K1g5AQKSiMwmPSvsMtc+wmJRAZqQOdSElu7gX3x/OkV
Ygm2GBVwglfUcpXoWRRTQ9aAjE7Dwk4KirzeaHSYmgrGsaNKZv7a7xvUUEBexjEtKdFs/2KIxINt
LINHeUUOxBHEMx3oeMVyKpQkkPWLH0xHqh766NSPKCUVKyT3+KX5qmq0SFGW/EzU5w2Tmd8MTPGg
CsQ5ZDtBsVS/z2iWhvMvGY98UrLwtgBn4UBpu2qcbOQzrx050PKQBwetNXIlhk7RiOagQC3ZKGoX
YrHqO9x/kTxLBzzYVLmipPKQgcUhXHeVy1n/VlJHoFoNfa1QUcRGFmIk5SfFtvaWEYSBOM0aU800
yo3ea5byPl74r95tSTGx94qq76s+L0uJTjFDGTyrEln152lsHS212BmFjwcOth5JQaww6uBe7se0
uDPQHdP2hAdfPc18oQMBWGYXxThOQa0zwwAY4c0ImPdmKYMUkHvco8B5L7nga0VkX2Ud1rvML/no
bD45AIs31CKDMGvqyThBVdvOevbJdy/4pm/Mw8gDTKcu3zm0sMszG61nUqlL4k5IId4EiWB09JXn
eI7Z/ruuImMgBoZC8LcwfuepMZxjTQpWU/6v2KGHY67pYXTStiW+58BDDdumTyxrz36z817lH4PQ
h6+fotX0qXzjndblaxV/AI2oAJlgI04jFsRy1yVMblUW1tejCpFEkkSTJWETByi2+NdpmYRTPd3/
MewfPcr3TeBSGIRGbw7WwNxud1exnN6I40AtsyV+i7pHVE91VtwfwF1u2zyh2S3hjcgf2+iPxNaw
dZwjReUmiufWGnRt5JxD2G+RLHKOTV//SEXef/kANOUjS0457O4+LZ+T515zORikkb0GLKJ22e4P
Nomf1cuJT0O7bJtUsDSVAg2XWlOrfdSnj9f3N6yNYS3z0F4VQ3+TlP39YIJsXDAJibGREVFW2ZI9
pMdZAXyh+SQJYKdBPOQD6jKQ7YqzzzDUSnemkPXxYy3AVmBMep8qVPJpviMxB2tD/Q/IIv4fsU4y
LLn3TBW8kjsnua/MaBwq4JRymyT78UO3GAsEtOFTheiv7E6nTmgHkpsq23HDVqa0WccGiEnj351w
vHBsj6fHxvzCjEeMYxYtmnRf84NiaZr0IX5WmYjTI/CQLCP9ZQYh1kmGCxhpvI2jQWJMrIo3a5os
TSUhER2hvv/Sws9mhOJKtbhjxnBMVZi4QKIrHurjyuS2gNKxkOzeUoMk4XK/xZR/ZsLhZefkhkte
xiz2EhtB1S1s9VL4eFDRBgnwxIP3xe+Ux5oSJ6XTXe4QOXrXH/EYHjpcRAb6hs/matcAEBqX6413
h/U5jtal2vSG/voNGhwPFcXvqKIy+8HUJ8njKZRS//gb8u0frjUbpYMFiew1iZRZs+2Df77BFOCo
a2tnmFpt3U8M6gzTwFmmcWkY8HNQZLmo51eoDI6qBzkwgtQ5s2zBzZd3LZU9nUxD4r8JenkNWePZ
Xgqo9QpZ5Kju/7hb1J0588oFy8CVmgZpTVNPbBGupL+QyRUf7LZfyscqqO4jKw6MJEhZDSW0LBh7
/EjdYEhXFr+ZjwRanjdJPNDgrT9ED6MF+JxrvBt4/DzZ9ihrlOYuZ7FM8PvnAb8DRG4BmERGuX/P
n084oGOTeJajQeWC12GyIMuTzDzW4kVjskeM/STBmEQeV6jZhAE7RKdgVUISJW48o97fOoSOR2hB
UifwARSkU5s8N1LcRsOUBO0jduSe5BeJQbEm1f/BbWe5yusYYU8RRgP5lnKXtrF18JmUmGra87ER
oOfbqjCxIb5ttXJc8cTZMHx9yEiHoBXcKH0bMBRBGQqHbrQqfoBHNZPU/kbz1X45cK8WrAVOcJiu
hoA25N+hKjVHWXcuf2jYl4DC06cS1WsVpzwSIXZu3gsEUc+kXAy856+bNVbX2IGXWxFy6rk1TtdY
1+h0nk2GydDhF/GLuMp/wU0eyzAnr+BzX/N0FqL68CGxIG9/Hw8J7bC5rblRWyccMaRlRgPx00L3
gRKFPFrk73wCoE9jnvXRaEy+mYMiOjNOWVIKWyD1s3HC3v1ta4eh8c7eVaJeLLyYFEP7jctozfbq
JtB1SGyj/LCcF/YWoXSnf/foZmFu/LeVuzHu+OOPdzAE7xTRBcuw/QYhgWIMTTSI3ILNofH9issL
e0s9Cj2aTNKyYVtNJ6gOKu9E1+BURnFn5SeGTJCK4NG1cFsgnt08DySG+z8iauXuo6DD6pUaX6UJ
3wzUQwnf+BHnl8+Q7Sb3znTgvGXEqnL9O3CdfoUEIGAog5ejqen+sgylN3k7zP1gc0CXHrjAMQym
zSrygVkY++5Akilf9CODthmroen6QtvHbiGx0qTErrsQxpRkdnEHjaDU/wOIq9R8M3h/MnUa8uP0
9b6Kstt79FWcsi9xgPv+VtMzBsXSnvGEV+AikkPvqHypCpgKLfVxZ/RYircYxP2WxSPc6ecX6Ri3
FJOo6PCeTr0ydlJDcA75OYlBT7BqIpQ5syPa8Jv0I0oQZbYEXDsNzzaEMzla/seDe/kGlqDrFs+8
NZU1QRdD3t3bi53iZGvZiWp4Nuj65PkEpsPYTMjy4X/UY3vW2ohjwj9YhHGkBnhzD9YQu1dsRSmq
pUJtQdWQ2DtdJH0LVXhngrsEs1LJOC0JC7vGZCXMsutHHuB9h7UwVAY1Z3jzML6+swx6fDqYEH4S
iVcaXmTBFspBhzlfEGAtqGFc1+s+Fw+UnHCAjNoFhkapqKCiewc3wbqNN1/PFVaysK0n9hyAMt/4
FbLa9s1OPD1d/U/bAel+agdSq3IopVMGj47ev3fAxsPrxcpqzE9pAtBwD2LtyBYxcVXmEtNODEJ6
QfYnXEBHmnAkVgn96qhyaFaN+ioyilAaEb/IijhT75UWPuJyOJ7mpcd+H+h7TgExmn2E83pDRNzG
eSqT6JW4TOW2Lot6VRY1kdTiYy9N2kDjP2u53HB3CdSdpkz0ZbvMR6VyCCF0i9tsz47xr4SCtV1N
mcxtLKCVRQbiyqgGA+agxzbbDOoq/87vXgismfRTYrPBSlr8Lu2TgO521hV6o/rdhWpcc7hx4tPj
So8ifZtqPuT/ZN0FLb8gkqJz3I1JyFcJqkmF5peY5ij242zNwqjrlzyUwwfDabXQxgDJijd844sU
FSmuRjG7eljTKh0fU8uphg0tuaDmGf5o8Uql9Yr837yoLiYRhthPmGX9d+YOdophC3MfuCF3+j6z
YddSHaulhXcEJVj7MrQvJSu84egtcZDH5LDOY9XR9YKXDBXUJf1DPWK5raX8dmCjbLCeHtl8DqPl
yf0QTrwgFM1jiFQr3LI4W4XnQNskV4v435n8j6snTzF/Aaf1MzX5Qfjsfgw/cC1wvMiihrT8mP+t
vZVg6xKN0nR3ObtuxNCzwB+P5MSyY/GeQloqyH7ChXoO/CNVH8T8Mn9KLISqgaOljke7G/j5o/fe
j2EDrBM1sq64LGHJNAz2eLXDfdFyi0kXNghiWkEAf6CmEqSNcrpVPR3iUMdv3tnovM3fM+kOd05/
K0kbyMkfNl1Lgzn1Jv11tkZtmY1NMUbo7MjIQxIwIhQH7kEHambv6O5TjZrVTNjwqjL/k56INAcU
ifw1M2cytEqmZKcbgAvQdUjpQ9RHHqY61p/zNUxLZblZlShvakOUon4jpUEIlHEQSTiRWFLWOZau
774z7f4PTr6k7cw3Gb6zJqzdUB6C6Gxx7XI7Ulkp7kx6Mauza7Ema29VXGkhJQNyl/AYoFRPJgdw
Mvd6Jr1iH58sb+34HgeFgCmhNjLBZuaeTjIq54CP4V9ydS9PZUnQxJDlCV2fVnDfDT368Xs5SqU4
U/5QSdLZlyB76/rPxPkeB/4dxOnLgzLSNMXPUCTqiAIYdOEw1Taxwt3qaEXvyWH01qtvqV80t01v
8oFPERsXIiefsZGQ1kjbVBXe2yN7ii6uVMT/vdSuUGcD2Bxbuk1nPcOAAuIV7togKvThh6H21jeN
sPzAfWjTW+Byh7IAzAghyVk3D8/0jB5of8T6endhknpRqDoJmplrdbC+8swhGUvYieWHP/Vx7zjf
OJBHxm2NZZGnq/etb21H6VPop/byuc4C5OXwqY3s5XYxF0iPKIJBlFbPMUO4lg9uUp+jqcaJBUio
m+6NN81MjqiJtLqwv7pTVMd8bMZhTY5epAQseQ3LKaRxzAHeXK/JMjC4/w39TqKaFLhFA4aKxUpF
GTbWl6572HWS1EoXa16EqJvecOnxj3sRqHECjn6sphHBWRmliosWIqB1bPXqW/ZlVqCsfwLJhF+F
RTJ9TlIIG1/E712gMZ1Uae6BojzEn80hRAVACRScCkIGLKNfJcEqTn0io0iKLLg0BTuG1ZKSgCHS
zRfZzaevi2gGPvjK7z+iJCwDn2/1PepDaEegxEQ7T0zHig5j3Dtfgjawx7w7T25e+JrEE/OGd3Kn
bI8l3gqR+b0J7r1r6ogRCX5qdtQFDScHy+4P/NDuL4qsxWmSLHruDrFi6iw7T+7dKCa3gal/QxvT
E05hoAwrNlEjTR1XHQJkk4bmMAj8/Oz0KzfUS/KzvZ9e1t4xSvcqEcoJUwq6yustaUxDrRaiJaHt
w19P4OnxcYG3BnZIvKT4f9pGXdQIYvy1YYCFHW1zRHLMJdr7qL4VlTJxo/uK+Xv6s7ni3X4AWVBd
N7Q15C1zAbYKBhy2+zSlwvqA2WwyJAcHFoOblVJJ4Ngt1adQjWmJMEnQ2egYSJx/EGBmMf7Cjv/w
H3RgwwF2nHrRBHhXXcylo4X0wrwL0XZwtrluUq/Y5C3y3e6K7f9iV8XpyrO1y/H9eZZevZ+wQGPE
9qjSGU4N3AZUHPQyytgysEBzYWZ/swfThBuGxl3RU47o0D6lDI346OtQ/oGuu+GV7jXAYRQgW0fe
bjcx7oemlrnNppZSvPqinfKwm76Qs097SlJ34HRpdrPMu3BLXNVQPtZqMzrPIA9kDvaDrYVXfFMQ
R97dDm647lcOEvyL4s11XtCRqwnIjm/ihW4iH1md/cpj361Hctu5ggO3NJrp7P1XUUIj85EQkeCg
YHgKsZyYJ0xZrTzRRlYO37sNq53ydYd1JKoyDW/88QyebxxrvgqVn/3p/r48pCGQU6BzhfuZ8ySX
pHhc4LZNhz6huqas/qX024zLDYmSqrA8bAEbhwMYlDtyAod+fQyRVSFyW+W9R6rRsA5u13oji03g
hnGERSaF4IFPlA0L1ptnQKVAfyPZB6EB4+otlEVH59gnWTbicpSoD7oWOBjjbE+5iQk3UvhTqLoB
9xpW+TkzXWBFkhRR2B6cl5aYIdNcV/ju9KrYVpKZ4h2p5UFyGyLehum/OdFvpOeh5+r04gYT+HOW
t3Rop3Z119R9w6mWrGhk7EXpbHVwSCgZYgEQ5mdYvAHomx1YruQ85hNLHOTmSShkGvFPPEwk5Nuh
ezJ7ZKqGIl8472I/KfV3knkTbpB5LG0i/qxUXy/EAF4N65I7eeUywcIOdA4exgQHYERVIHLsYV8p
t2sWP0ni5cC45E5xxFf6z8Vui4toNP3NPOaZ1eLSOcWIdrIlO9u4ykwnHFzXQrgVzGd46KoBBu/i
O+a+dl5dYNGOM4sZl1JOPO1VP9UIoLd1rtfFqDri+Ra1jcFcTUrNyRfQqFMRjUK8W4uogQ/0H7AL
YAY4ov2tj6Y0PAhz8WDhWdqODGnS4hNxQxf/S09adxmyoUNopm06iWDUP1mhRWXEoXNi54Z6Xh3T
iSShhIHCm5es7K8SZW9WDFSb8JIbRN3Zv+tqWhFIkco5zfyN1/98luNYYpkzn+Fi81jOrlmjv4A7
/PQ5HpfXxrXd1uBtWQlE9yjnR1k0g2iOjw/Ub/KwzTcxftul74ObgwBn23r49til/fbowzkuOIqE
ROi7X0bz8jPSDsf9j/++Cr8SlwR//AWYMaTgi/uh7FGt/h6hDC634nSo88XIkMdlNJwK0LNf27Oe
X+KmnBKtIzSGxmPpHe8kIQrE3PQ3PlZfYfNBgEAOPLUbzCQpCT+mxhtUZkSbz8F2nc6tw5kp7/SK
i652iRv9N4d8MfVUEt3xcqg3tQpsYAaZOsl5GsAbe89v6UZea3+7e9y9l/QhFJR8t6T69pAnKP7A
ZSbZ3zjcsk/N6W1kxTKjCy8saHKqW35PsMsWnDC3CHATNtsw9hKb+wH7t+DD88XGvIDaUYgrmpYt
ojdMArUu3Q/IroLzctIdra0jT+E3jTscPs4eh7BefDSfrtVzUEgUkOD2uxeRU0Rfi7KGuuDb2D1g
LdWLK6hLFDBC0NYOOFDeZ6sf3EQStGYyFqQTnfhTPpGsXfk4pdlM1WhNLQXEsDgJaQCW9ZL8Bdlh
xFfZTGV3OgtSoW9dS1dE2Nh7YtVulj0NnfXvn3gZ67EWt48dNOFjBIFjoWNFxpH5+wW0fIm16fgU
CRgOkvWgeFQqOxtoFLa7MuP03BRVtvxsHivosUaxrIAy8gR/zphrYDGa3C8FBG/GNxMcXfJaCWU1
lXcrs0HBXflHV5R7P587GoQtVt4gu+Vke55NVqbsNhLdA+PGLDHL2+KHCaT9Po8Smrd1Mp4eTXpM
oDf0sNkjD9RUSOQxMAqPkPAdzX9tVFCu0kETYyiw5rVKpkOJttAUVoGKk/UZSCWbYZJISK0wvlQW
wKrIZ0SpmO3ZI0kmsAwOajx2L4DVZ17UuveLY0TB81q7as0p+VpUD+CqcVoXRfn5rpRXApPeh0kR
y3a3tzPcuQueCFhoEfQRR2BnGJUjIglLGotKhKYpgmtwy+hMppea6tm87WLdlySY6hqJEaEJhXHb
CnJeeuftvSdqv1tlY7Cj9EhR2Yro9yakVC+yHgIL1HPSssg/WneXJDNggQ72ab+CJ/1xvswx1J1v
5KcPJrMqzEx7/4PPV0eK6z/uXABvd4Vs8eSLWLuaMQtLXQlGGPsGW5m7GK/NPou/whaMqCrrujYI
cKv3pdlO41hQdXj+UmnIJVi1X6xi08rSKNrPPnf2drplIqESxJ+pRiykjCQgzDbtBJ6h09k6ltyX
KrC/K+fU1gHclhVHhSu6z7bDZySbtuvDpS4fwGCc5Q/9yKgB7mJLTbaxN64MGnTeAlfKyDv0B6kX
5iN45iNBPfJuwjN3iRHuxZl4cd7D9jqpbZ/yYhAig7AZXfXoCyaMg09dvAcQNDQfhdy1A2vg/TZP
e2VlUZoC7GIjXKYC0yPYwxj0SYrX3kbSorRWtYEyD4nY4nSZQhGxesAkmoP0vTie7ZvC6mXwdfL7
NholACHL49exXiW+BAGaImHrS/JRCkcOPCVbGhExgVnnTeJZvUW+j2uK3qf3kl6MyXk5TCyqcxPG
BZI94APre0OhBe2dsiTCFdXXwDiuPkrkQsSFtz0OuudUyxNGacoAhLfEN9a1JRGPKS0YphLJbN8C
tDOQ/Qz/GBJp+/I8ls6Q7mOUgtLJO23UnWlz4X6cT5C/bNkFdlNOFax5rbGkRTe77u96jpJhD2wS
kLmj891mLwy9v9IBPyu2xsoClAvPZ7fNvklWRSt+Ru9WoRqYT6CxEYkuzm7zPZ6rDIDXgTa7znI8
1a8L9/Vavjjd7TQb0zsc8bUJCuQcGoP4AzMif4B4M9NJEMkaL9omYEqeye0NqAlr3JLEUBRCIV0Z
AlyMcY7tm1vffYtp1HqXNeUNWoM8Hn0wupOEZGqZ6DksOow0gKgD3VrSTq/LAwwKafXhIIOXjO/u
b7WZpK2a3oUFS7pxsQo02HFwYOINlhExKRLuucLeplwsvylC3WfCBnBe+s543aMcoW6cftitQxxM
BmB/9NIj+ZRKN9Y+O9LFA3N1v57ELBsM/EwDSQpDa/9cDaGmWR7Tz1bopD+TYg0sIAtTtx9x5KI7
/7XSv95K1CGy2r5W+YRRpHYN2BpDclYxTGX/2fsn9ZeQwRr6jmW8VZ/X0XG6wojsUy09T0jK9jJx
K2WwEnMIVXA2aIdkqZxm4K1GF0OfM67ZH/dgxMlEpwnbktW4cB7ajYNaR71NPcXZ6lE9QHLu28zJ
HrLxVvDMDFT55P9Jm1ZnYsmQF475SBquxQQf54WPZjZJnxpyeJCxEbJpbzGCVLs3i2hf7oh/qsjG
S/5s80fzgS0ANx40GFaoq1ywNCEG9/VzjQn7ZcZnQRM4AgF1Ny9nSGwdtRztGDliUJZDR7XPfB3G
nawOik86MpYF0pvbvQNXvKpqj/7Pk1JLKUPsvP18fSRaBpzjULfm3WWc/q9VoheV0Yi2gcziWjrE
82P6nn4Vp2r7mHJjdmJMaec6IAI44TRlmguBAR7Fa5F1nxY0ynHpbaFMWvOjwa+5Tau/0XIRStHL
Ae+2fq8pDQmh3t3VN7NP44DoQEBovdEm8T/NPs9wmdInzkXr8kZ9wQ50uXWVUw8JZf0W9aQvX5NW
d1wwyYGaxso8d7pg9PtWlM3hyo2iB65ZvNdL+BnOsrhRygfV0PbVZ+JXdsgI89ZC1Qb4nCL/Wvd8
SFLSnARk97F189KN8MB9BjyFvPo/Z6gIgJyYo0HjLk3ItNQfFEDgSDWn11fPlRxBOT/ZBi8/fw7N
1bg0ezgwdl9nmDrsE/ybQT4CxXDbJcQlVjZ7CDxCOEsrwGbW5+ozsN7gg2orbJaHOjAVpahT0MXY
kwfPGjLysVbHcZD3OVZyBxa1IYI/PEorCYI8gT9cmGGai0qBIrJYbICMM0Vf1BbtXWbygnWzrgHw
KWLN0dmRb52ob8WPq+GsZDglxWj8HzxRhhVIGORe7XVQt+Pu7qC5gokGT01E7u1qRVyD+Z1IGoew
/+YO8JButVj2UBdHWNgc6ASTjGo57b7fRf38fF58rbuItvPIjLTT098v2yp3ztVw9dXcDQla2akn
4IapZNWkI1o8enmEhfmsnLnPv8TaGMI7pdHhxVPBnKxUgfSWTTxOaRbydwFH/HIyE4ARep99zNQi
Gx2q0m5uGIJwZJQhlnI5KsTPVRj22nj+WQUpaDrjZQrH26HKPyRFaLpuDFZhi1Mmk5dgLCn9P2J+
WH/SvHa0faud9kTdM8s6H6aMJDqbd+xwQmXQQV5GUE6fq/8ijmZlUyjrgXO4Y4fr/qmnEl+Ck43A
pyTfx8r/2LgU0viJ6LH5dKB/RxGZYcUS7iCtJQScYooAE6xY+TyhA8yIEOZk2ID3fEpBdYYm2vJ2
9BXYBeX9Hdrj4g6kKlTGCJWOk4stSj7KxvFdiMQrX6bcL8GIu3IFbVpSCZHtdKLWHW6/VnUWPZ/Z
c0YqXI6G0kTfcJ6QF/0hIqWbnBkukifc3JjVvW+wImyE89wRFx0bLcqBb9Q46BTpP+ft0cxCA5fL
A+cs1VitGSSl//dYEsGxPJvbpxnH5lBGbZ4FdKWAf3Y1A03gfM+nWWwhmhttZd0jsdWOF4rV1+ld
htQNKTK3QXPHEyyAS0Y1sn7uGlUZ34iyFeGF9bcFpv3CGyJh8/4ATpwHvdbIVACy+AON3fNC0Ad4
JFE5Lwy1IS//CNVe0YGevRShLZZREP9gLmf/bxaEjfkgtyXp8l9hLYn3R+ac385dGPU0ea7arBHS
CQvQA2/hcDm6SLDBnL1UhVCtI5RdL6i4FwE/pSM63DNzHl1UExiVnHipczOb2VwLaZ4wyoAkp/g6
sqq7o15gaMZnjyq3m0eSnPgzZBZrLiXwLwW6EUNzzhUWriXyJyznSiKH7lePb+Yt8C23dxspH8Hs
hN4pd1ZtxEwFIB4mDrOGR3tXvbJdE/pfRQKXHK17Zn9aOrQ+OPp1PjoE1ymYq5AmzlP7KwNvQfAz
XN323oXrPBoKIC+idLxfYbTlqq5xhdBF2T6BctglGnVeB94+0khq5KrWqyx1IBG7VnPZeBdxRkhB
8qBgPBvAWRBFvhdJgkoSBgkPu+toEqp26G3hut2yJ7glfyoZe+lzQ7Cd//8bs36fCUtlLfKHA9sC
L8uVcBULXqPCrxhZV0g1CrIg4Ypl5Sv7e1rqHP2JGISb25okYfnU4Odwoc4/yiWVa1D2+NjxADc/
NKewfZ18lbhwDwy+2WlKg/CSe7Ucjn0JNx6k3blhBoYEqc1RUNQBJ68cEIqVIgCtHbLpytlUYtX/
tBstRy83oiTLqvIEUVs/KmGUTzd24yAqxQwIYTV8zMIyc14z0Buiot6E+CGhL6ysyDL7RKf8BAGd
jZL5a94QtvGZO1/X+/eIr3drsGRKg2ZNpk07fQdUDN7BDUskZ1XROkiVz4pyafUHJBy8b282kXZf
67DQ3G+pbmajtkWSKVieA63nlxfqWEgQmDwuBF/kMm1Deq3AXUNdn8aXKvEBN35rFD04pw0LvxBg
9ZoDFaVNZAJPgdMcvXJwxRTZZbEVdiSkPgRs6xdCl/4ueSMQsEQUk2A0jw7Amd0PSuC6+kv53Ztk
VWv9JWt7Fd8mPYu8aYikvFIdiyqLWbCao9HckPuXuW11uOhGu4c24aWywC8XoI87WxHc2kaKSfK9
ezp41urPY/igRpgl7Y1OZGtSixloO8j8wqj3afd08ijurR2x7PECeiXQdeYfxytH8OWddykvXFPl
ynoGqUTLsHiQyfeDmnVgFGLbAs6+UT3ASxDp29JaMR0iJW2f8XJLoreiolsw5lQv/5c8dBuwxAEp
Xm4RV9imOabPHosoVkqBuCBetSmy7rTIS1vVpq4GMYJbLw8X5WdrICf58OvbVD4ieI9CyunZo/sk
mLNfTHwrjmuQjTKFRdVlOg3SVens8hQNioWTwJ0Zec+JPYzwMtJh5GUJMdjW/1fwyNBmCafBqXNX
Pog8LL4bU22fhaRu1JpB/bfp1RczeFT7QNJ9xZF9xQgcPIGDnnBi803KovTl37Yzq7KV+jAOA4Tx
SH6tNonJEGEFzdwANogf3D+rdfCM5XZtuk7J7Ymr5qDGtQCi/m2jNlCQNUeusY5Rvn064J03Y420
SwWWcR7ltIgwE99AVF1PReSkBMjOmPidL2flSjOfwmztDvZqdc5kzzdI8BDeaRJtfIO/fbyp1/i6
cvZOq+f/Ygm7WB/cV/X7cL4BEL1lbSdHcUv9iIaPa2fPvRL8GNTUaXLxvA4X6qX+MZUVfOmWlHgc
OynxHou+SMfbi/NK5KZ2mBYhUD4FsRI+3r8kCLAAs+9HEH4JzbDIUTtfw7Ora1oDETWtbfnY4FBA
h9pcsEP2pIbk6gtGtZz+DKHih1oJmtjieCCicTBoV4uoRU2yCZmWhtvxMkDbC0mKOU/2ZzKL3Cqj
XLjgut6aPSS4cfUSzl+5Qvjl97tWQ7I04FBA3M1iTzZarL8pMhCVtsQl6p1GjX8RUHh2Y0knl68n
M+NSdtO7XVb6rlFXxQHj3WldNGux6Rh1ZLJq7CueTo97PL25YxKuIueoSOoDZdb2kG54TwRfN9j/
UmcbwghvwNvXg84O2Sbf6HALYuL8ux36aV0fvoBe8Hadd1jTrUWytYhjBjxGVfKouYgJL3YewJTF
qT8yPkvWSnZs8TSe/f174EhgzvmFY+K8LYXrJQRRK2m31CQwznp4Qr1Z1UTgp9ECmkOON5oD6Rr/
lrGok6YkSwowkFRdIuRGQA8Q0QKh/mxKawSMt1DenNewQF97w2BD3FdU78knJso9a91lrJ4Z7ycx
omuDEbuF/+ptQ4EBJqq5ky18K+1gNQT28bUjHO/E5h2QP26XrhnNEFPpUEif0B7Myqg7B1sHTLQ7
fWKpZfiOHoEVy0a5rV1+w4+TW0FqMp7zhlSid/8ITZTgbOdVf5LOZuIPH3cjFD+r8AqRrY+N+1di
3NfAeoedmcW8mMlSYTAsuSWte0p0ziNT4wAv0ttIbSXLJuX2PHIAhnGpj9Yx3GS+AvIOtPw9VQuj
8SQMCX75uDHPaNjelKh3ce1Umr3e2XKeI9MW9220KNH7h0tXADmZVMMk0/PhAX+fGqiRUh5lujFn
d/gShPaCfhl3GRaAkEz5yH7Wa44zQo7lMYV9DNxiJw5TTCgDm6LdDYoPxn4ciVZsg4is47EDnCA5
KBywDaa1sE4blpcDNVAy0fMjAFapOVGDVaaVjoBL5qMaCH4Z9YNa9NbJUU7KxCGlI/9d/WKjaEyc
xGNyNHFihjQzfY7mnzEI7pMgtI5eGlVmf4lObZlthLu/eaALsuU6n1cGAlX4U6S76SJMaGscrOHF
wSUjZzFRmnzedhj1nNcDWiKv8jBlsz1z6qwiakOV3HzLRJX/kefHYausfP3lku1OaVCmTZIncE+9
JTqv9zTk55Ys2BTLnuf+R+W2ScY/7sh5EG3/cebfB7msFidus17tyivZaIX9XRLmI3YiSRWFBfDl
4S2f3KXPPmHoEjoJN3X2X8fYHsErvfDd/45ftXzn6LlHm3QROr89jv4ygJwrwafSQY98NZLpv7A5
S2CDOKZDjBNrp6taxadJLkLk/gTIDvYqLQibgpa8y8P5s/s4QMw8/e06olITA9IWSHCUR0sXpj1w
ZpxkOKpjmfM771ULUjhK+ySbK3cDa9kYHLQErpmsm/p1Bw2AS6h9NvCUjUWabKq1uoatSCi+HOH6
ONYu+fd277fmbfDGc8/bwRBUevwfbTePvY0BCDD+B+OG22pXiXHG7aM5T1fVZWTwmJ6phFvEWZ4W
DleoaRyIXYNy0zLQypAZAMR3E/ic5nytNe8kdt7EuQRWam5gzKcp84PpPCyYcGSc/o58a3r0kqo2
6t3tdDpCQI97YZgXF0VnTMWwPCt5x6PQzca6TFsL4KIQsiuUbAxC35bRzOgqbQIJHcugy4PWwUo/
u66r1+L+2x3BO7plN/wU0l1xIvoNc0z/Yekw2VhnPrz6Iywwa+fJmKZDSKc4oVtS0RJM/6EHM/ZA
OXGJI+wG+As88W3XzrYKqHSxz46SpV+PGBNGeopDQ69AEC8Ab52tnENwSVXK+rS2/TfeJRin8LzU
VsyU7VwTGwaGdTErRslJyLQcgBOdFOeQ/gEOmoz5KhZCaVzRYnamHV5ii9h28iHk2Ls9+3eQZ5IU
5JUKWbUO1xg7Iz9xf7UwahX6LnRk2cdyO6bQyDm3xhnIymaESUf3hEMnbuCX7RXip6ZMaPCbBZm5
CsglF2V+vky1qgCytr7Akb6/sU8YP7mLrXFZ9EkiqxvttjgEB6fSvQGPK3tLk/fH4kCwWniTyOC6
SvVV/mmJ2AGIMkTt0mhsVbFclKOn0XdwlMVChoR1QXmSErXcAoIrRSsV5YA+1DThQCss3H3X3gxa
zMliQkBhxSL4JkfvFIXl3Yle7eUDN6+aGFZIFn+atk859cjTMOW4G/OLT3Rk0mngnW33CadCDscZ
wnELPQHb07q/SPPh7j2hD/V1qW3d+k/gJQWgw4oVdoiv0dKGTC188B+Sgj1Ax5Z8fpoj3rlv1lyQ
WRHzobutpMy/m9jWj0GbC3DdIZBUE0e+5kWN9BzDiErt/cvDNiCl1nk6ADZoEL9hrPyqR5GX2iUc
dWENg7HYDfa0lcnQKArsLoE1usOuGgbGpoibqY5VgR155bHsj08BbVIjiBdPlo0Q6WwBWbExy0Nt
Xp+KCJj/pzv9aVgbuVYgcD2davJyFea3b7424XN3GkIRM/STtnqzgYeyNfWLkqxvqdL2+vXUI3I9
J/1xkxS9qCxZlSJUBOB9YBmPdmLbJ0nrJdCRMofB15odIdsCdIlNaoLlARLn2V/xG04pOYLvAPps
6w+dLJz2ii3SXFpYPEqS/tWwGrguOamU8u9XWT05TaBDlRJHLVrEVluXPFprn2pvYq/rpMMn5vic
3tr81EPKjvbe2PfYFM4l7zqhILNwirTlMeSVDlZlHe6fhqijQhaoMsdBwyVUktrD0vaojV4zXd2D
iqHTysyJDYHPhnpoIikj2v55TUEB03FEDc+TAUwGl68+nbi5SingtYOKODUPwY4Q01veRJJaBaQB
q3ddbyplA+kFCINWO1bQnEkodTPAyId0l5rIwfH9rqtG39B6PHsnJACgvwwBzE8+i6aMW+s58CQI
cNj7g77uNu76ruPlOIVouIhayTrRfYyRr+W6JawNfSjgDMMl8XhMD89qEvswT0ZTsG8bUgdbPUeE
fVMVSUqCmUeTRb2bMqdAkIvoIM4aekzLobAYz6HJZr+ukwycf5TWvsNoZguy2X/5cV24liwsGbQK
b8VU6PXRWOjOapQlMcP7vCsSKrYfzJFT+TaQccb1wzRjnrnvL5dAkqTq5BFpuB2bOCFWthv86MlK
aNwULApoy/lRkou5CpQlHYoF7KWAZxsGXz51QsLjc3+f6DmDdsR3iquHW+nBVovutajKLgJXpYmD
yM/MslL/fh43kzJgJ7nn/XAj90Fwqc2qMGLmO92QmCd4ByTirfojyxAIcVMbvMUlIebOb5SlZVM/
6lOZZ4m5mfRtVMv5T7sopEmSzXnwzd1zIKrmskoZbXUaFQzwBe0nk+gOJs2CbRT3rKwgpdb2lENU
Zpoep7ppn9eZc78Mo5v1CNJowapIwbekB1/gt4bJjm2SYeZugnd/NsPdVFnumhLbPvcesRlR0G4b
Up/PqMn8p4wVkSKsgew5IvaCVoXMRmxzBYPUE/S9fRTGoZyVe1IXpIs6ZEwOTgOdq/uQEIM7HcDS
ExoxdmvQEl3gvB7IP6jHS78JSScUUlOhXsDKjZhT8J11vzrxTniS/Zx8/aBWDZY9lqWskW7Yvm1b
FvZtPpTo4vOm6F13xi8/vpZZpz1r1vlhBqYU1LCrKPj4JCHZvH4+nL2DeYbfVjAoZAl4r1t0Ei+5
f52TCvMi8jsQTTUL3DAULpU0rjF53qOwezic0TGKq5zLZh5mwe7wfhDYJ3hXfL4KNDVLmQG/c6lH
JMCZ79HmRckG0VUJKIe3sq6H+eCcK/PBL9DinR517ktoHDjIXWqBlhUo41kEKCH5WPYXHEDxvJcg
pZivIQXhWQsXecZPh7nZSPL0CVjeZTOJJLzeGYOEQyk9KBNawPG0p9m2qBgxgf8nWzGnTaNr7vxn
D56gUeL7yj/45YYDr+nDiAWYAA7yksTDBgJAmBb2ik9utZtpVRBwQu92ICsB8xpPrRwK1HEcsIzN
jXVbgpBiNbW3pMYtph2OB98pxNLAaIJ70sf5dP5m+l4Rouw51kIId9minZPWxt6Y8f9ldBphxmRA
WBceRf2Hvs8qoxTTVqkqbqMoJ7JlEVaym86Ez/6dV03PBJmua62iu9nuG0As1xH9lGTY3g8Ghqan
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
