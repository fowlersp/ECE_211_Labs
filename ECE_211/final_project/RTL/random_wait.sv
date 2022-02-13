`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2021 07:40:27 AM
// Design Name: 
// Module Name: random_wait
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

module random_wait(input logic start_rwait, clk,
                   output logic rwait_done);
    
    logic [12:0] q;
    always_ff@(posedge clk) 
        begin
            if (start_rwait) q <= q + 1'd1;
            else q <= 3'b0;                           
        end
    
    always_comb
        if (q == 5000)
            begin
                rwait_done = 1'b1;
            end  
        else rwait_done = 1'b0;    
                
endmodule      //random wait timer
