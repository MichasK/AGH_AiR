`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2019 20:15:04
// Design Name: 
// Module Name: licznik_mod_n
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


module licznik_mod_n#
(
    parameter N=4,
    parameter WIDTH = $clog2(N)
)
(
    input CLK,
    input CE,
    input RST,
    output [WIDTH:0]y
    );
    reg [WIDTH:0]CNT=WIDTH+1'd0;
    always @(posedge CLK)
    begin
        CNT<=CNT+1;
        if (CNT==N-1) CNT<=0;
    end
    always @(posedge RST)
    begin
        CNT<=0;
    end
    assign y=CNT;     
        
endmodule
