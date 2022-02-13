`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2021 07:21:25 PM
// Design Name: 
// Module Name: mux4p
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


module mux4p #(parameter W=8) (
    input logic [W-1:0]d0, d1, d2, d3, [1:0]t0, 
    output logic [W-1:0]y);
    
    assign y = (t0[0] ? (t0[1] ? d0: d1): (t0[1] ? d2: d3));

endmodule
