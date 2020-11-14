`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2018 18:28:38
// Design Name: 
// Module Name: test_bench
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


module test_bench();
    
    reg clk;
    
    wire [3:0] pix_r;
    wire [3:0] pix_g;
    wire [3:0] pix_b;
    wire hsync;
    wire vsync;
    
    initial begin
        clk = 0;
    end
     
     // #1 one time unit   
    always begin
    #1 clk = ~clk;
    end
    
            
    vga_out name(
        .clk(clk),
        .pix_r(pix_r),
        .pix_g(pix_g),
        .pix_b(pix_b),
        .hsync(hsync),
        .vsync(vsync)
    );
    
endmodule

