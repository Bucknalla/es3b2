`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2020 15:11:27
// Design Name: 
// Module Name: vga_test
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


module vga_test();

    reg clk;
    
    reg [3:0] sw;
    
    wire [3:0] pix_r,pix_g,pix_b;
    
    wire hsync,vsync;
    
    initial begin
        clk = 0;
        sw = 4'b0000;
    end

    always begin
        #1 clk = ~ clk;
    end
    
    vga inst_tb (
        .clk(clk),
        .sw(sw),
        .pix_r(pix_r),
        .pix_g(pix_g),
        .pix_b(pix_b),
        .hsync(hsync),
        .vsync(vsync)
    );

endmodule
