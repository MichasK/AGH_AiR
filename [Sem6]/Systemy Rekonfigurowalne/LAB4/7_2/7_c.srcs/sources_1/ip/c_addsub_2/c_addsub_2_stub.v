// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar 22 15:36:53 2019
// Host        : DESKTOP-FB8OT1G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/michask/complex_calculate/complex_calculate.srcs/sources_1/ip/c_addsub_2/c_addsub_2_stub.v
// Design      : c_addsub_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *)
module c_addsub_2(A, B, CLK, CE, S)
/* synthesis syn_black_box black_box_pad_pin="A[17:0],B[18:0],CLK,CE,S[19:0]" */;
  input [17:0]A;
  input [18:0]B;
  input CLK;
  input CE;
  output [19:0]S;
endmodule
