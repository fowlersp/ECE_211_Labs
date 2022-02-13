`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2021 07:42:55 AM
// Design Name: 
// Module Name: time_cnt
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


module time_cnt(input logic clk, time_clr, time_en, rst,
                output logic time_late, 
                output logic [3:0] d3, d2, d1, d0);
    
    logic [13:0] q;
    always_ff@(posedge clk)
        begin
            if (time_clr) q <= 1'd0;
            else if (time_en) q <= q + 1'd1;
            else if (rst) q <= 1'd0;
            else q <= q;
        end
    
    binary_to_bcd bcd(.b(q), .thousands(d3), .hundreds(d2), .tens(d1), .ones(d0));
    
    always_comb
        if (q == 10000) time_late = 1'b1;
        else time_late = 1'b0;
        
        
        
        
endmodule
