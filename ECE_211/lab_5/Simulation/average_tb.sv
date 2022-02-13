`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2021 07:49:49 PM
// Design Name: 
// Module Name: average_tb
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


module average_tb();
// declare DUV input connections here
   logic [7:0] a;   // input to decoder (driven by testvector file)

   // declare DUV output connections  here 
   logic [7:0] y;   // output from decoder

   // declare expected outputs here - should match output connections declared above
   logic [7:0] y_expected;
   
   // VECTOR_WIDTH should be the sum of the widths of the DUV's inputs and outputs
   parameter VECTOR_WIDTH = 16;
   parameter TESTVECTOR_FILENAME = "average_tb_tv.mem";

   // Instantiate and connect the Device Under Verification (DUV)
   average DUV ( .sum(a), .product(y) );

   // signals used in testbench - you should not need to change these
   logic clk, reset;
   logic [31:0] vectornum, errors;
   logic [VECTOR_WIDTH-1:0] 	testvectors[10000:0];

   // Generate clock
   initial
     forever
       begin
	  clk = 1; #5;
	  clk = 0; #5;
       end

   // At start of test, load vectors and pulse reset
   initial
     begin
     $display("starting up testbench...");
       // Change the file name to read a different testvector file
	$readmemb("average_tb_tv.mem", testvectors);
	vectornum = 0; errors = 0; reset = 1; #17; reset = 0;
     end
   
   // assign next set of inputs and expected output - if you add
   // inputs, concatenate them in the order they appear in the
   // testvector file
   always @(posedge clk)
     begin
	#1; {a, y_expected} = testvectors[vectornum];
     end
   
   //check outputs against expected outputs
   always @(negedge clk)
     if(~reset) begin //skip during reset
	begin  //  check individual signals against expected values here
	   if (y !== y_expected)
	     begin
		$display("Error: input a = %b", a);
		$display(" outputs: y = %b (expected y = %b)", y, y_expected);
		errors = errors + 1;
	     end
	   vectornum = vectornum + 1;
	   if(testvectors[vectornum][0] === 1'bx)  // vectors past limit are all 'x'
             begin
	       $display("%d tests completed with %d errors", vectornum, errors);
	       $stop;
	     end
	end
     end
endmodule
