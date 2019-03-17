`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2019 19:29:29
// Design Name: 
// Module Name: clock_emulator
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


module clock_emulator(
    output CLK
    );
    reg clk=1'b0;
    initial
    begin
    while(1)
    begin
        #100; clk=~clk;
    end
    end
    assign CLK=clk;
endmodule
