`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2020 16:53:26
// Design Name: 
// Module Name: drawcon
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

module draw(
    input [10:0] blkpos_x,
    input [10:0] blkpos_y,
    input [10:0] draw_x,
    input [10:0] draw_y,
    output [3:0] draw_r,
    output [3:0] draw_g,
    output [3:0] draw_b
    );

    
    
    reg [3:0] bg_r,bg_g,bg_b = 0;
    reg [3:0] blk_r,blk_g,blk_b = 0;
    // background colour
    always@* begin
        if((draw_x < 11'd10) || (draw_x > 11'd1430) || (draw_y < 11'd10) || (draw_y > 11'd890)) begin
            bg_r <= 4'b1111;
            bg_g <= 4'b1111;
            bg_b <= 4'b1111;
        end
        else begin
            bg_r <= 4'b0000;
            bg_g <= 4'b0000;
            bg_b <= 4'b0000;
        end
    end
    
    // block colour
    always@* begin
        if() begin
            blk_r <= 4'b1111;
            blk_g <= 4'b1111;
            blk_b <= 4'b1111;           
        end 
        else begin
            blk_r <= 4'b0000;
            blk_g <= 4'b0000;
            blk_b <= 4'b0000;
        end
    end
    
    assign draw_r = (blk_r != 4'b0000) ? blk_r : bg_r;
    assign draw_g = (blk_g != 4'b0000) ? blk_g : bg_g;
    assign draw_b = (blk_b != 4'b0000) ? blk_b : bg_b;    
    
endmodule
