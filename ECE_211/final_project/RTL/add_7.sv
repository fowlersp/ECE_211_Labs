`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2021 10:03:56 AM
// Design Name: 
// Module Name: add_7
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


module add_7(input logic [6:0] a, b, 
            output logic [7:0] s);
            
    logic c1, c2, c3, c4, c5, c6;
    
 	adder add1(.a(a[0]), .b(b[0]), .cin(1'b0), .s(s[0]), .cout(c1));
 	adder add2(.a(a[1]), .b(b[1]), .cin(c1), .s(s[1]), .cout(c2));
 	adder add3(.a(a[2]), .b(b[2]), .cin(c2), .s(s[2]), .cout(c3));
 	adder add4(.a(a[3]), .b(b[3]), .cin(c3), .s(s[3]), .cout(c4));
 	adder add5(.a(a[4]), .b(b[4]), .cin(c4), .s(s[4]), .cout(c5));
 	adder add6(.a(a[5]), .b(b[5]), .cin(c5), .s(s[5]), .cout(c6));
 	adder add7(.a(a[6]), .b(b[6]), .cin(c6), .s(s[6]), .cout(s[7]));
 	
endmodule
