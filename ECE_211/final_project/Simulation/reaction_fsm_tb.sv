`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2021 07:28:36 PM
// Design Name: 
// Module Name: reaction_fsm_tb
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


module reaction_fsm_tb;

    logic clk, rst, rwait_done, wait5_done, start, enter, time_late;
    logic [2:0] color_rgb;
    logic time_clr, time_en, rs_en, start_rwait, start_wait5;
    
    reaction_fsm DUV(.clk, .rst, .start, .enter, .rwait_done, .wait5_done, .time_late, .start_rwait, .start_wait5, .time_clr, .time_en, .rs_en, .color_rgb);
    
    parameter CLK_PD = 10;
   
   always begin
      clk = 1'b0; #(CLK_PD/2);
      clk = 1'b1; #(CLK_PD/2);
   end
    
    initial begin
        rst = 1; rwait_done = 0; wait5_done = 0; start = 0; enter = 0; time_late = 0;#50
        rst = 0; rwait_done = 0; wait5_done = 0; start = 0; enter = 0; time_late = 0;#50
        rst = 0; rwait_done = 0; wait5_done = 0; start = 1; enter = 0; time_late = 0;#50
        rst = 0; rwait_done = 0; wait5_done = 0; start = 0; enter = 0; time_late = 0;#250
        rst = 0; rwait_done = 1; wait5_done = 0; start = 0; enter = 0; time_late = 0;#50
        rst = 0; rwait_done = 0; wait5_done = 0; start = 0; enter = 0; time_late = 0;#300
        rst = 0; rwait_done = 0; wait5_done = 0; start = 0; enter = 1; time_late = 0;#50
        rst = 0; rwait_done = 0; wait5_done = 0; start = 0; enter = 0; time_late = 0;#50
        rst = 1; rwait_done = 0; wait5_done = 0; start = 0; enter = 0; time_late = 0;#50
        rst = 0; rwait_done = 0; wait5_done = 0; start = 0; enter = 0; time_late = 0;#50
        rst = 0; rwait_done = 0; wait5_done = 0; start = 1; enter = 0; time_late = 0;#50
        rst = 0; rwait_done = 0; wait5_done = 0; start = 0; enter = 0; time_late = 0;#100
        rst = 0; rwait_done = 0; wait5_done = 0; start = 0; enter = 1; time_late = 0;#50
        rst = 0; rwait_done = 0; wait5_done = 0; start = 0; enter = 0; time_late = 0;#100
        rst = 1; rwait_done = 0; wait5_done = 0; start = 0; enter = 0; time_late = 0;#50
        rst = 0; rwait_done = 0; wait5_done = 0; start = 0; enter = 0; time_late = 0;#50
        rst = 0; rwait_done = 0; wait5_done = 0; start = 1; enter = 0; time_late = 0;#50
        rst = 0; rwait_done = 0; wait5_done = 0; start = 0; enter = 0; time_late = 0;#100 
        rst = 0; rwait_done = 1; wait5_done = 0; start = 0; enter = 0; time_late = 0;#50
        rst = 0; rwait_done = 0; wait5_done = 0; start = 0; enter = 0; time_late = 0;#100
        rst = 0; rwait_done = 0; wait5_done = 0; start = 0; enter = 0; time_late = 1;#50
        rst = 0; rwait_done = 0; wait5_done = 0; start = 0; enter = 0; time_late = 0;#100
        $stop;
    end
        
        

endmodule
