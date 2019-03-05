`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2019 18:34:28
// Design Name: 
// Module Name: tb_and_param_gate
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module stimulate
( output [7:0]a);
reg [7:0]r_a=8'b000000000;
initial
begin
#200; r_a[7:0]=8'b11111111;
#200; r_a[7:0]=8'b11011111;
#200; r_a[7:0]=8'b10111111;
#200; r_a[7:0]=8'b11101111;
#200; r_a[7:0]=8'b11111011;
end
assign a=r_a;
endmodule

module tb_and_param_gate();
wire [7:0]x;
wire y;
stimulate sim
(.a(x[7:0]));
and_param_gate do_job
(
.x(x[7:0]),
.y(y)
);
endmodule