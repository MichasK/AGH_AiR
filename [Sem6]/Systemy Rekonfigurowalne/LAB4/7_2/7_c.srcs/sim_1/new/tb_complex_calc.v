`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2019 23:21:27
// Design Name: 
// Module Name: tb_complex_module
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
(       output [17:0]A,
        output [7:0]B,
        output [11:0]C,
        output [7:0]D,
        output [13:0]E,
        output [18:0]F,
        input clk
);
reg [10:0] counter = 11'd0;
reg [17:0]to_A=18'd0;
reg [7:0]to_B=8'd0;
reg [11:0]to_C=12'd0;
reg [7:0]to_D=8'd0;
reg [13:0]to_E=14'd0;
reg [18:0]to_F=19'd0;

always @(posedge(clk))
begin
    if(counter == 0)
    begin
        to_A <= 18'b111001101110101001;
        to_B <= 8'b00111011;
        to_C <= 12'b110110001010;
        to_D <= 8'b00100100;
        to_E <= 18'b11001110000000;
        to_F <= 19'b0010000110100011111;
        counter <= counter +1;
    end
    if(counter == 1)
    begin
        to_A <= 18'b000110010001010111;//0
        to_B <= 8'b00010011;
        to_C <= 12'b001011110110;
        to_D <= 8'b00100101;
        to_E <= 18'b11100111000000;
        to_F <= 19'b0001101000100011111;//
        counter <= counter +1;
    end
    if(counter == 2) 
    begin
        to_A <= 18'b111001101110101001;
        to_B <= 8'b11101101;
        to_C <= 12'b001011110110;
        to_D <= 8'b00100101;
        to_E <= 18'b11100111000000;
        to_F <= 19'b0001101000100011111;
        counter <= counter +1;
    end
    if(counter ==3) 
    begin
        to_A <= 18'd0;
        to_B <= 8'd0;
        to_C <= 12'd0;
        to_D <= 8'd0;
        to_E <= 18'd0;
        to_F <= 19'd0;
    end
end

assign A = to_A;
assign B= to_B;
assign C= to_C;
assign D= to_D;
assign E= to_E;
assign F= to_F;
endmodule



module tb_complex_module();

wire CLK;
wire [36:0]y;
wire CE=1'b1;
wire [17:0]A;
wire [7:0]B;
wire [11:0]C;
wire [7:0]D;
wire  [13:0]E;
wire [18:0]F;

clock_emulator clock(.CLK(CLK));




stimulate sim(
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .F(F),
        .clk(CLK)
);
  
complex_module do_job1(
.clk(CLK),.ce(1'b1),
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .F(F),
        .Y(y)        
);

endmodule


