`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2021 06:29:11 PM
// Design Name: 
// Module Name: reaction_timer_top_tb
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


module reaction_timer_top_tb;

    logic clk, rst, start, enter;
    logic rs_en, rgb_r, rgb_g, rgb_b; 
    logic [3:0] d3, d2, d1, d0;
    
    reaction_timer_top DUV(.clk, .rst, .start, .enter, .rs_en, .rgb_r, .rgb_g, .rgb_b, .d3, .d2, .d1, .d0);
    
    parameter CLK_PD = 10;
   
   always begin
      clk = 1'b0; #(CLK_PD/2);
      clk = 1'b1; #(CLK_PD/2);
   end
   
   initial begin  
        rst = 1; start = 0; enter = 0; #50
        rst = 0; start = 0; enter = 0; #50
        rst = 0; start = 1; enter = 0; #50
        rst = 0; start = 0; enter = 0; #100
        rst = 0; start = 0; enter = 1; #50
        rst = 0; start = 0; enter = 0; #50
        rst = 0; start = 1; enter = 0; #50
        rst = 0; start = 0; enter = 1; #50
        rst = 0; start = 0; enter = 0; #50
        rst = 0; start = 1; enter = 0; #50
        rst = 0; start = 0; enter = 0; #200
        $stop;
   end

endmodule
