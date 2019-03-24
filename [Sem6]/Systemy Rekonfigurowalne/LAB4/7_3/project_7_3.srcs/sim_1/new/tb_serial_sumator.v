`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2019 17:55:46
// Design Name: 
// Module Name: tb_serial_sumator
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
module stimulate(
    input CLK,
    output CE,
    output RST,
    output [12:0]A_stimulated
);
reg [4:0]iterator = 5'd0;
reg [12:0]A_reg=13'd0;
reg CE_reg=1'd1;
reg RST_reg=1'd0;
always @(posedge CLK)
begin
    iterator = iterator+1;
    if (iterator==1) A_reg=13'b0000010101100;//10.75
    if (iterator==2) A_reg=13'b1111101001010;//-11.375
    if (iterator==3) A_reg=13'b0000000000100;//0.25
    if (iterator==4) A_reg=13'b0000011110000;//15
    if (iterator==5) A_reg=13'b0000001000100;//4.25
    if (iterator==6) A_reg=13'b1111001101000;//-25.5
    if (iterator==7) A_reg=13'b0000010101100;//10.75
    if (iterator==8) A_reg=13'b0000010101100;//10.75
    if (iterator==9) A_reg=13'b0000010101100;//10.75
    //                                       sum === 25.6250
    if (iterator>10) CE_reg<=1'b0;
    if (iterator>12)RST_reg<=1'b1;
        
end
assign RST=RST_reg;
assign A_stimulated=A_reg;
assign CE=CE_reg;
endmodule

module tb_serial_sumator(
    
    );
    wire CLK;
    wire [20:0]result;
    wire [12:0]A;
    stimulate sim(.CLK(CLK),.A_stimulated(A),.CE(CE),.RST(RST));
    clock clk_inst(.CLK(CLK));
    //1
    //21-szerokosc
    serial_sumator m_jak_milosc(
        .A(A),
        .clk(CLK),
        .ce(CE),
        .rst(RST),
        .Y(result)
    );
endmodule
