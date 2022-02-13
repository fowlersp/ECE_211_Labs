`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2021 08:57:53 AM
// Design Name: 
// Module Name: binary_to_bcd_tb
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


module binary_to_bcd_tb();

   // declare DUV input connections here
   logic [7:0] b;   // input to decoder (driven by testvector file)

   // declare DUV output connections  here 
   logic [3:0] hundreds;
   logic [3:0] tens;
   logic [3:0] ones;   // output from decoder
   // declare expected outputs here - should match output connections declared above
   logic [3:0] hundreds_expected;
   logic [3:0] tens_expected;
   logic [3:0] ones_expected;   // output from decoder

   
   // VECTOR_WIDTH should be the sum of the widths of the DUV's inputs and outputs
   parameter VECTOR_WIDTH = 20;
   parameter TESTVECTOR_FILENAME = "binary_to_bcd_tb.mem";

   // Instantiate and connect the Device Under Verification (DUV)
   binary_to_bcd DUV ( .b(b), .hundreds(hundreds), .tens(tens), .ones(ones) );

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
	$readmemh("binary_to_bcd_tb.mem", testvectors);
	vectornum = 0; errors = 0; reset = 1; #17; reset = 0;
     end
   
   // assign next set of inputs and expected output - if you add
   // inputs, concatenate them in the order they appear in the
   // testvector file
   always @(posedge clk)
     begin
	#1; {b, hundreds_expected, tens_expected, ones_expected} = testvectors[vectornum];
     end
   
   //check outputs against expected outputs
   always @(negedge clk)
     if(~reset) begin //skip during reset
	begin  //  check individual signals against expected values here
	   if (ones !== ones_expected)
	     begin
		$display("Error: input b = %b", b);
		$display(" outputs: ones = %b (expected ones = %b)", ones, ones_expected);
		errors = errors + 1;
	     end
	   if (tens !== tens_expected)
	     begin
		$display(" outputs: tens = %b (expected tens = %b)", tens, tens_expected);
		errors = errors + 1;
	     end
	   if (hundreds !== hundreds_expected)
	     begin
		$display(" outputs: hundreds = %b (expected hundreds = %b)", hundreds, hundreds_expected);
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
