`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2020 15:04:15
// Design Name: 
// Module Name: game_top
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

/* 
    NOTE YOU WILL NEED TO FIX THE MISSING SECTIONS OF VERILOG BEFORE THIS WILL RUN
*/


module game_top(
    input clk,
    output [3:0] pix_r,
    output [3:0] pix_g,
    output [3:0] pix_b,
    output hsync,
    output vsync
    );
    
   wire pix_clk;
   reg [3:0] draw_r = 0;
   reg [3:0] draw_g = 0;
    reg [3:0] draw_b = 0;
   wire [10:0] curr_x;
   wire [10:0] curr_y;
   
    always@* begin
        if((curr_x < 11'd920) && (curr_x > 11'd520) && (curr_y < 11'd600) && (curr_y > 11'd300)) begin
            draw_r <= 4'b1111;
            draw_g <= 4'b1111;
            draw_b <= 4'b1111;
        end
    end
    
    clk_wiz_0 inst_0 (clk,pix_clk);
    
    vga_out inst_1 (
        .clk(pix_clk),
        .draw_r(draw_r),
        .draw_g(draw_g),
        .draw_b(draw_b),
        .pix_r(pix_r),
        .pix_g(pix_g),
        .pix_b(pix_b),
        .curr_x(curr_x),
        .curr_y(curr_y),
        .hsync(hsync),
        .vsync(vsync)
     );
     
endmodule
