`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2021 09:14:59 AM
// Design Name: 
// Module Name: heart_rate_top
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


module heart_rate_top(input logic clk, pulse, rst,
                      output logic [3:0] thousands, hundreds, tens, ones); 
    
    logic delay_done; 
    logic [5:0] q0, q1, q2, q3; 
    logic [6:0] sum1;
    logic [7:0] total_sum, average;
     
    delay_counter dc(.clk, .rst, .delay_start(~rst), .delay_done);
    pulse_cnt pc(.clk, .pulse, .rst(delay_done), .cnt(q0));
    register r1(.clk, .rst, .din(delay_done), .d(q0), .q(q1));
    register r2(.clk, .rst, .din(delay_done), .d(q1), .q(q2));
    register r3(.clk, .rst, .din(delay_done), .d(q2), .q(q3));
    add_6 a6(.a(q1), .b(q2), .s(sum1));
    add_7 a7(.a(sum1), .b({1'b0,q3}), .s(total_sum));
    average avg(.sum(total_sum), .product(average));
    binary_to_bcd btob(.b({6'b000000, average}), .thousands, .hundreds, .tens, .ones);
    
    
    
endmodule
