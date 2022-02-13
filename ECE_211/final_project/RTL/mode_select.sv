`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2021 09:35:13 AM
// Design Name: 
// Module Name: mode_select
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


module mode_select(input logic mode, 
                   input logic [3:0] pulse_rate0, pulse_rate1, pulse_rate2, pulse_rate3, reaction_time0, reaction_time1, reaction_time2, reaction_time3,
                   output logic [3:0] mode_select0, mode_select1, mode_select2, mode_select3);
                   
     assign mode_select0 = (mode ?(pulse_rate0) : (reaction_time0));
     assign mode_select1 = (mode ?(pulse_rate1) : (reaction_time1));   
     assign mode_select2 = (mode ?(pulse_rate2) : (reaction_time2));
     assign mode_select3 = (mode ?(pulse_rate3) : (reaction_time3));   
    
endmodule
