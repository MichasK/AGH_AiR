`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2019 13:53:10
// Design Name: 
// Module Name: complex_gate
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
module and_or_gate
(
    input [3:0]x,
    output y
);
    wire x1;
    wire x2;
    assign x1 = (x[0]& x[1]);
    assign x2 =(x[2] & x[3]);  
    assign y = x1 | x2;  
    endmodule
    
module complex_gate(
    input [15:0]x,
    output z
    );
    wire [3:0]chain;
    genvar i;
    generate
    for (i=0;i<4;i=i+1)
    begin
        and_or_gate gate_i
        (
            .x(x[4*i+3:4*i]),
            .y(chain[i])
        );
        end
      and_or_gate gate_last
      (
      .x(chain[3:0]),
      .y(z)
      );  
      endgenerate
endmodule
