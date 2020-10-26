`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Alex Bucknall
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

    seginterface seg_inst_1 (.an(an), .dig0(dig0), .dig1(dig1), .dig2(dig2), .dig3(dig3), .dig4(dig4), .dig5(dig5), .dig6(dig6), .dig7(dig7), .clk(clk), .rst(rst), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .div_clk(div_clk));

    wire div_clk;
    
    reg [3:0] dig0 = 4'h1;
    
    always@(posedge div_clk) begin   
            if (sh_en) begin
                dig0 <= dig7;
            end   
        end

endmodule
