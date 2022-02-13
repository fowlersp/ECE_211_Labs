`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2021 08:46:34 AM
// Design Name: 
// Module Name: binary_to_bcd
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



module binary_to_bcd (input logic [13:0] b,
                       output logic [3:0] thousands,
                       output logic [3:0] hundreds,
                       output logic [3:0] tens,
                       output logic [3:0] ones);
         logic [3:0] a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12;
         logic [3:0] a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24;
         logic [3:0] a25, a26, a27, a28, a29, a30, a31, a32, a33, a34;
         logic [3:0] y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12;
         logic [3:0] y13, y14, y15, y16, y17, y18, y19, y20, y21, y22, y23, y24;
         logic [3:0] y25, y26, y27, y28, y29, y30, y31, y32, y33, y34;
         
         add3 U_ADD3_1 (.a(a1), .y(y1));        //creates 13 instances of the add3 function
         add3 U_ADD3_2 (.a(a2), .y(y2));
         add3 U_ADD3_3 (.a(a3), .y(y3));
         add3 U_ADD3_4 (.a(a4), .y(y4));
         add3 U_ADD3_5 (.a(a5), .y(y5));
         add3 U_ADD3_6 (.a(a6), .y(y6));
         add3 U_ADD3_7 (.a(a7), .y(y7));
         add3 U_ADD3_8 (.a(a8), .y(y8));        //creates 13 instances of the add3 function
         add3 U_ADD3_9 (.a(a9), .y(y9));
         add3 U_ADD3_10 (.a(a10), .y(y10));
         add3 U_ADD3_11 (.a(a11), .y(y11));
         add3 U_ADD3_12 (.a(a12), .y(y12));
         add3 U_ADD3_13 (.a(a13), .y(y13));
         
         add3 U_ADD3_14 (.a(a14), .y(y14));        //creates 13 instances of the add3 function
         add3 U_ADD3_15 (.a(a15), .y(y15));
         add3 U_ADD3_16 (.a(a16), .y(y16));
         add3 U_ADD3_17 (.a(a17), .y(y17));
         add3 U_ADD3_18 (.a(a18), .y(y18));
         add3 U_ADD3_19 (.a(a19), .y(y19));
         add3 U_ADD3_20 (.a(a20), .y(y20));
         add3 U_ADD3_21 (.a(a21), .y(y21));        //creates 13 instances of the add3 function
         add3 U_ADD3_22 (.a(a22), .y(y22));
         add3 U_ADD3_23 (.a(a23), .y(y23));
         add3 U_ADD3_24 (.a(a24), .y(y24));
         add3 U_ADD3_25 (.a(a25), .y(y25));
         add3 U_ADD3_26 (.a(a26), .y(y26));
         
         add3 U_ADD3_27 (.a(a27), .y(y27));        //creates 13 instances of the add3 function
         add3 U_ADD3_28 (.a(a28), .y(y28));
         add3 U_ADD3_29 (.a(a29), .y(y29));
         add3 U_ADD3_30 (.a(a30), .y(y30));
         add3 U_ADD3_31 (.a(a31), .y(y31));
         add3 U_ADD3_32 (.a(a32), .y(y32));
         add3 U_ADD3_33 (.a(a33), .y(y33));
         add3 U_ADD3_34 (.a(a34), .y(y34));        //creates 13 instances of the add3 function
 // add more instances here…
         assign a1 = {3'b0, b[13]};        //assigns each value to the the bits this case combines a 0 bit with the bits 7-5
         assign a2 = {y1[2:0], b[12]};
         assign a3 = {y2[2:0], b[11]};
         assign a4 = {y3[2:0], b[10]};
         assign a5 = {y4[2:0], b[9]};
         assign a6 = {y5[2:0], b[8]};
         assign a7 = {y6[2:0], b[7]};
         assign a8 = {y7[2:0], b[6]};
         assign a9 = {y8[2:0], b[5]};
         assign a10 = {y9[2:0], b[4]};
         assign a11 = {y10[2:0], b[3]};
         assign a12 = {y11[2:0], b[2]};
         assign a13 = {y12[2:0], b[1]};
         
         assign a14 = {1'b0, y1[3], y2[3], y3[3]};        //assigns each value to the the bits this case combines a 0 bit with the bits 7-5
         assign a15 = {y14[2:0], y4[3]};
         assign a16 = {y15[2:0], y5[3]};
         assign a17 = {y16[2:0], y6[3]};
         assign a18 = {y17[2:0], y7[3]};
         assign a19 = {y18[2:0], y8[3]};
         assign a20 = {y19[2:0], y9[3]};
         assign a21 = {y20[2:0], y10[3]};
         assign a22 = {y21[2:0], y11[3]};
         assign a23 = {y22[2:0], y12[3]};
         
         assign a24 = {1'b0, y14[3], y15[3], y16[3]};
         assign a25 = {y24[2:0], y17[3]};
         assign a26 = {y25[2:0], y18[3]};
         
         assign a27 = {y26[2:0], y19[3]};        //assigns each value to the the bits this case combines a 0 bit with the bits 7-5
         assign a28 = {y27[2:0], y20[3]};
         assign a29 = {y28[2:0], y21[3]};
         assign a30 = {y29[2:0], y22[3]};
         assign a31 = {1'b0, y24[3], y25[3], y26[3]};
         assign a32 = {y31[2:0], y27[3]};
         assign a33 = {y32[2:0], y28[3]};
         assign a34 = {y33[2:0], y29[3]};
         
         
         assign thousands = {y34[2:0], y30[3]};
         assign hundreds = {y30[2:0], y23[3]};
         assign tens = {y23[2:0], y13[3]};
         assign ones = {y13[2:0], b[0]};
           
 endmodule
 
