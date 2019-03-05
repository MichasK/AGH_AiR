`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2019 12:39:29
// Design Name: 
// Module Name: tb_delay_line
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
( output [9:0]a,
  output enable_clock
);
reg [9:0]r_a=10'b00000000000;
reg r_clk=1'b0;
initial
begin
#50; r_a[9:0]=10'b1111111111;
end
assign a=r_a;
assign clk=r_clk;
assign enable_clock=1'b1;
endmodule

module tb_delay_line(

    );
    wire [9:0]x;
    wire [9:0]y_o_delay;
    wire [9:0]y_one_delay;
    wire [9:0]y_two_delay;
    wire clk;
    clock_emulator clock(
    .CLK(clk)
    );
    stimulate sim(
    .a(x[9:0]),
    .enable_clock(en_clock)
    );
    
    delay_line #(
    .DELAY(0)
    )do_job_o_delay
    (
    .clk(clk),
    .idata(x[9:0]),
    .odata(y_o_delay[9:0])    
    );
    delay_line #(
    .DELAY(1)
    )do_job_one_delay
    (
    .clk(clk),
    .idata(x[9:0]),
    .odata(y_one_delay[9:0])    
    );
    delay_line #(
    .DELAY(2)
    )do_job_two_delay
    (
    .clk(clk),
    .idata(x[9:0]),
    .odata(y_two_delay[9:0])    
    );
endmodule
