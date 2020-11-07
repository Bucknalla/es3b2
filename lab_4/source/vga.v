`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2020 11:24:45
// Design Name: 
// Module Name: vga
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


module vga(
   input clk,
   input [2:0] sw,
   output [3:0] pix_r,
   output [3:0] pix_g,
   output [3:0] pix_b,
   output hsync,
   output vsync
   );
    
   reg [10:0] hcount = 11'd0;
   reg [9:0] vcount = 11'd0;
    
   wire display_region;
   wire line_end = (hcount == 11'd1903);
   assign hsync = ~((hcount >= 11'd0) && (hcount <= 11'd151));
 
   assign display_region = ((hcount >= 11'd384) && (hcount <= 11'd1823) && (vcount >=10'd31) && (vcount <= 10'd930));
    
   assign pix_r = (display_region && sw[0]) ? 4'b0100 : 4'b0000;
//    assign pix_g;
//    assign pix_b;
    
   // hcount
   always@(posedge clk) begin
       if(line_end) begin
           hcount <= 11'd0;
       end
       else begin
           hcount <= hcount + 1;
       end
   end
    
   // vcount
   always@(posedge clk) begin
    
   end
endmodule