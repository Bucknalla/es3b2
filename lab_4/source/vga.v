`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2016 09:33:12
// Design Name: 
// Module Name: vga_out
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


module vga_out(
    input clk,
    input [2:0] sw,
    output [3:0] pix_r,
    output [3:0] pix_g,
    output [3:0] pix_b,
    output hsync,
    output vsync
    );
    
    wire pixclk;
    
    clk_wiz_0 instance_name(.clk_out1(pixclk),.clk_in1(clk));
    
    reg [10:0] hcount = 0;
    reg [9:0] vcount = 0;
    
    wire line_end = (hcount == 11'd1903);
    wire frame_end = (vcount == 10'd931);

    assign display_region = ((hcount >= 11'd384) && (hcount <= 11'd1823) && (vcount >= 10'd31) && (vcount <= 10'd930));
    assign hsync = ((hcount >= 11'd0) && (hcount <= 11'd151));
    assign vsync = ((vcount >= 10'd0) && (vcount <= 10'd2));
        
    // condition ? if true : if false
    assign pix_r = (display_region && sw[0]) ? 4'b0100 : 4'b0000;
    assign pix_g = (display_region && sw[1]) ? 4'b0100 : 4'b0000;
    assign pix_b = (display_region && sw[2]) ? 4'b0100 : 4'b0000;
      
    always@(posedge pixclk) begin
        if(line_end) begin
            hcount <= 11'd0;
        end else begin
            hcount <= hcount + 1;
        end
    end
    
    always@(posedge pixclk) begin
        if(frame_end) begin
            vcount <= 10'd0;
        end else begin
            if(line_end) begin
                vcount <= vcount + 1;
            end
        end
    end
    
endmodule
