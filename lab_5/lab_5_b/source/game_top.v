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
    input [4:0] btn,
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
   
   reg game_clk = 0;
   reg [20:0] clk_div = 0;
   
   reg [10:0] blkpos_x = 11'd703;
   reg [10:0] blkpos_y = 11'd424;
   
   always@(posedge clk) begin
    if(clk_div == ) begin
        clk_div <= 20'd0;
        game_clk <= !game_clk;
    end 
    else begin
        clk_div <= clk_div +1;
    end
   end
   
   always@(posedge game_clk) begin
        if(btn[0]) begin
            blkpos_x <= 11'd703;
            blkpos_y <= 11'd424;
        end
        else begin
            case(btn[4:1])
                4'b0001: begin
                    if(blkpos_x > 11'd10) begin
                       blkpos_x <= blkpos_x - 4;
                    end
                end
                default: begin
                    blkpos_x <= blkpos_x;
                    blkpos_y <= blkpos_y; 
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
     
     draw inst_2 (
        .blkpos_x(blkpos_x),
        .blkpos_y(blkpos_y),
        .draw_x(curr_x),
        .draw_y(curr_y),
        .draw_r(draw_r),
        .draw_g(draw_g),
        .draw_b(draw_b)
    );
endmodule
