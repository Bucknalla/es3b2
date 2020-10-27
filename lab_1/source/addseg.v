`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2018 17:37:55
// Design Name: 
// Module Name: addseg
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


module addseg(
    input [3:0] x,
    input [3:0] y,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output oflow
    );
    
    wire [4:0] sum;
    
    assign sum = x + y;
    assign oflow = sum[4]; 
    
    sevenseg A1 (sum[3:0],a,b,c,d,e,f,g);
    
endmodule
