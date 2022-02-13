`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2021 10:39:40 AM
// Design Name: 
// Module Name: add3
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



module add3 ( input logic [3:0] a, 
   output logic [3:0] y);
 	always_comb 
	   case (a)
		4'd0: y = 4'b0000;
		4'd1: y = 4'b0001;
		4'd2: y = 4'b0010;
		4'd3: y = 4'b0011;
		4'd4: y = 4'b0100;
		4'd5: y = 4'b1000;
		4'd6: y = 4'b1001;
		4'd7: y = 4'b1010;
		4'd8: y = 4'b1011;
		4'd9: y = 4'b1100;
	   	default: y = 4'b0000;
	endcase
endmodule // add3
