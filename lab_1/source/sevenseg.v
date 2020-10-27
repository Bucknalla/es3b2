`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2018 16:30:38
// Design Name: 
// Module Name: sevenseg
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


module sevenseg(
    input [3:0] sw,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
    );
    
    assign a = (!sw[3]&!sw[2]&!sw[1]&sw[0])|(!sw[3]&sw[2]&!sw[1]&!sw[0])|(sw[3]&!sw[2]&sw[1]&sw[0])|(sw[3]&sw[2]&!sw[1]&sw[0]);
    assign b = (!sw[3]&sw[2]&!sw[1]&sw[0])|(!sw[3]&sw[2]&sw[1]&!sw[0])|(sw[3]&!sw[2]&sw[1]&sw[0])|(sw[3]&sw[2]&!sw[1]&!sw[0])|(sw[3]&sw[2]&sw[1]&!sw[0])|(sw[3]&sw[2]&sw[1]&sw[0]);
    assign c = (!sw[3]&!sw[2]&sw[1]&!sw[0])|(sw[3]&sw[2]&!sw[1]&!sw[0])|(sw[3]&sw[2]&sw[1]&!sw[0])|(sw[3]&sw[2]&sw[1]&sw[0]);
    assign d = (!sw[3]&!sw[2]&!sw[1]&sw[0])|(!sw[3]&sw[2]&!sw[1]&!sw[0])|(!sw[3]&sw[2]&sw[1]&sw[0])|(sw[3]&!sw[2]&!sw[1]&sw[0])|(sw[3]&!sw[2]&sw[1]&!sw[0])|(sw[3]&sw[2]&sw[1]&sw[0]);
    assign e = (!sw[3]&!sw[2]&!sw[1]&sw[0])|(!sw[3]&!sw[2]&sw[1]&sw[0])|(!sw[3]&sw[2]&!sw[1]&!sw[0])|(!sw[3]&sw[2]&!sw[1]&sw[0])|(!sw[3]&sw[2]&sw[1]&sw[0])|(sw[3]&!sw[2]&!sw[1]&sw[0]);
    assign f = (!sw[3]&!sw[2]&!sw[1]&sw[0])|(!sw[3]&!sw[2]&sw[1]&!sw[0])|(!sw[3]&!sw[2]&sw[1]&sw[0])|(!sw[3]&sw[2]&sw[1]&sw[0])|(sw[3]&sw[2]&!sw[1]&sw[0]);
    assign g = (!sw[3]&!sw[2]&!sw[1]&!sw[0])|(!sw[3]&!sw[2]&!sw[1]&sw[0])|(!sw[3]&sw[2]&sw[1]&sw[0])|(sw[3]&sw[2]&!sw[1]&!sw[0]);
    
endmodule
