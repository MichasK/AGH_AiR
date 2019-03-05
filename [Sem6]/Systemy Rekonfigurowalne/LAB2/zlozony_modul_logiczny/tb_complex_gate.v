`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2019 14:57:58
// Design Name: 
// Module Name: tb_complex_gate
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
( output [15:0]a);
reg [15:0]r_a=16'b0;
initial
begin
#100; r_a[15:0]=16'h0;
#100; r_a[15:0]=16'b1111111100000000;//1
#100; r_a[15:0]=16'b0000000011111111;//1
#100; r_a[15:0]=16'b1100001100000000;//1
#100; r_a[15:0]=16'b0000000011000011;//1
#100; r_a[15:0]=16'b0101100000100110;//0
#100; r_a[15:0]=16'b1010101010101010;//0
#100; r_a[15:0]=16'b1111111111111111;//1


end
assign a=r_a;
endmodule

module verify
(
input c
);
initial
begin
    #200 if(c!=1'b0) $stop;
    #100 if(c!=1'b1) $stop;
    #100 if(c!=1'b1) $stop;
    #100 if(c!=1'b1) $stop;
    #100 if(c!=1'b1) $stop;
    #100 if(c!=1'b0) $stop;
    #100 if(c!=1'b0) $stop;
    #100 if(c!=1'b1) $stop;    
end
endmodule


module tb_complex_gate(

    );
    wire y;
    wire [15:0]x;
    stimulate sim
    (.a(x[15:0]));    
    complex_gate do_job(
    .x(x[15:0]),
    .z(y)
    );
    verify check_job
    (
    .c(y)
    );
endmodule
