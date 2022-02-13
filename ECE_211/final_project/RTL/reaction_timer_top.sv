`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2021 10:19:03 AM
// Design Name: 
// Module Name: reaction_timer_top
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


module reaction_timer_top(input logic clk, rst, start, enter,
                          output logic rs_en, rgb_r, rgb_g, rgb_b, 
                          output logic [3:0] d3, d2, d1, d0);
              
    logic start_rwait;
    logic rwait_done;
    logic start_wait5;
    logic wait5_done;
    logic [2:0] color_rgb;
    logic time_clr;
    logic time_en;
    logic time_late;
    
    reaction_fsm r_fsm(.clk, .rst, .start, .enter, .rwait_done, .wait5_done, .time_late, .start_rwait, .start_wait5, .time_clr, .time_en, .rs_en, .color_rgb);
    rgb_control rgb(.clk, .rst, .color_rgb, .rgb_r, .rgb_g, .rgb_b);
    time_cnt tc(.clk, .time_clr, .time_en, .rst, .time_late, .d3, .d2, .d1, .d0);
    delay_counter dc(.clk, .rst, .delay_start(start_wait5), .delay_done(wait5_done));
    random_wait rw(.clk, .start_rwait, .rwait_done);

endmodule
