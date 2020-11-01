`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2020 14:45:36
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    input rst,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output [7:0] an
    );
    
    seginterface seg_inst_0 (.an(an), .dig0(hex_count_0), .dig1(hex_count_1), .dig2(hex_count_2), .dig3(hex_count_3), 
    .clk(clk), .rst(rst), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .div_clk(div_clk));
    
    wire div_clk;
    reg [3:0] hex_count_0,hex_count_1,hex_count_2,hex_count_3 = 0;
    
    always@(posedge div_clk)
    begin
        if(rst)
        begin
            hex_count_0 <= 0;
        end
        else
        begin
            hex_count_0 <= hex_count_0 + 1;
            if(hex_count_0 == 4'hF)
            begin
               hex_count_1 <= hex_count_1 + 1;
            end
        end
    end
    
endmodule
