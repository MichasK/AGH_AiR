`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2019 19:28:39
// Design Name: 
// Module Name: usart
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


module usart(
    input clk,
    input rst,
    input send,
    input [7:0]data,
    output txd
    );
    localparam STATE00=2'd0;
    localparam STATE01=2'd1;
    localparam STATE02=2'd2;
    localparam STATE03=2'd3;
    reg [1:0]state=STATE00;
    reg send_reg=0;
    reg [7:0]data_reg=8'd0;
    reg txd_reg;
    reg [2:0]iterator=3'd0;
    
    always @(posedge clk)
    begin
        if (rst) state<=STATE00;
        else
        begin
            case(state)
            STATE00:
                begin
                if (send & ~(send_reg))
                    begin
                    data_reg<=data;
                    state<=STATE01;
                    end
                else send_reg<=send;
                end
            STATE01:
                begin
                txd_reg <= 1'b1;
                state<=STATE02;
                end
            STATE02:
                begin
                txd_reg<=data_reg[iterator];
                if (iterator==3'd7)
                    begin
                    iterator<=3'd0;
                    state<=STATE03;
                    end
                else iterator = iterator+1;
                end
            STATE03:
                begin
                txd_reg<=1'd0;
                state<=STATE00;
                end
            endcase
           end
       end
                    
    assign txd=txd_reg;
    
endmodule
