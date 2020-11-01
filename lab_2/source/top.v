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
    input sh_en,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output [7:0]an
    );

    seginterface inst_1 (.an(an), .dig0(dig0), .dig1(dig1), .dig2(dig2), .dig3(dig3), .dig4(dig4), .dig5(dig5), .dig6(dig6), .dig7(dig7), .clk(clk), .rst(rst), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .div_clk(div_clk));

    wire div_clk;
    
    reg [3:0]dig0 = 1;
    reg [3:0]dig1 = 2;
    reg [3:0]dig2 = 3;
    reg [3:0]dig3 = 4;
    reg [3:0]dig4 = 5;
    reg [3:0]dig5 = 6;
    reg [3:0]dig6 = 7;
    reg [3:0]dig7 = 8;
    
    always@(posedge div_clk) begin   
            if (sh_en) begin
                dig0 <= dig7;
                dig1 <= dig0;
                dig2 <= dig1;
                dig3 <= dig2;
                dig4 <= dig3;
                dig5 <= dig4;
                dig6 <= dig5;
                dig7 <= dig6;
            end   
        end

endmodule
