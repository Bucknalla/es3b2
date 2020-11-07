`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2018 00:17:19
// Design Name: 
// Module Name: New
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


module new(
    input clk,
    input rst,
    input BTNU,
    input sh_en,
    input sh_en_2,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output [7:0]an
    );

    seginterface M1(.an(an), .dig0(hexcnt1), .dig1(hexcnt2), .dig2(hexcnt3), .dig3(hexcnt4), .clk(clk), .rst(rst), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .div_clk(div_clk));

    reg [3:0]hexcnt1 = 4'b0000;
    reg [3:0]hexcnt2 = 4'b0000;
    reg [3:0]hexcnt3 = 4'b0000;
    reg [3:0]hexcnt4 = 4'b0000;
    reg [3:0]next = 4'b0000;
    
    wire div_clk;
    
    always@(posedge div_clk)
    begin
        if (rst) begin
            hexcnt1 <= 4'b0000;
            hexcnt2 <= 4'b0000;
            hexcnt3 <= 4'b0000;
            hexcnt4 <= 4'b0000;
            next <= 4'b0000;
        end 
        else begin
            if (sh_en) begin
                if (BTNU) begin
                    hexcnt1 <= hexcnt1 + 2;
                    next <= hexcnt1 + 4;
                end
                else begin
                    hexcnt1 <= hexcnt1 + 1;
                    next <= hexcnt1 + 2;
                end
                
                if (next < hexcnt1) begin
                // if (hexcnt1 == 4'b1111) begin
                    hexcnt2 <= hexcnt2 + 1;
                    if (hexcnt2 == 4'b1111) begin
                        hexcnt3 <= hexcnt3 + 1;
                        if (hexcnt3 == 4'b1111) begin
                            hexcnt4 <= hexcnt4 + 1;
                        end
                    end
                end
                
            end  
        end 
    end

endmodule
