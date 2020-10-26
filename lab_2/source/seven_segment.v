`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Alex Bucknall
// 
// Create Date: 25.10.2020 11:38:24
// Design Name: 
// Module Name: seven_segment
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


module seven_segment(
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    input [3:0] number
    );
    
    reg [6:0] intseg;
    assign {a,b,c,d,e,f,g} = ~intseg;
    
    always@*
    begin
        case(number)
            4'h0: intseg = 7'b1111110;
            4'h1: intseg = 7'b0110000;
        endcase
    end
    
endmodule
