
//-----------------------------------------------------------------------------
// Title         : sevensg_hex_tb
// Project       : ECE 211 Digital Circuits 1
//-----------------------------------------------------------------------------
// File          : sevensg_hex_tb.sv
// Author        : 
// Created       : 18.09.2018
// Last modified : 18.09.2018
//-----------------------------------------------------------------------------
// Description : Self-checking testbench based on a testvector file for
// 3-8 binary decoder dec_3_8.sv.  This file may be modified to craete
// testbenches for other modules.
//-----------------------------------------------------------------------------

module sevenseg_hex_tb();

   // declare DUV input connections here
   logic [3:0] data;   // input to decoder (driven by testvector file)

   // declare DUV output connections  here 
   logic [6:0] segs;   // output from decoder

   // declare expected outputs here - should match output connectionss declared above
   logic [6:0] segs_expected;
   
   // VECTOR_WIDTH should be the sum of the widths of the DUV's inputs and outputs
   parameter VECTOR_WIDTH = 11;
   parameter TESTVECTOR_FILENAME = "sevenseg_hex_tb.tv";

   // Instantiate and connect the Device Under Verification (DUV)
   sevenseg_hex DUV ( .data(data), .segs(segs) );

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
	$readmemb("sevenseg_hex_tb.tv", testvectors);
	vectornum = 0; errors = 0; reset = 1; #17; reset = 0;
     end
   
   // assign next set of inputs and expected output - if you add
   // inputs, concatentate them in the order they appear in the
   // testvector file
   always @(posedge clk)
     begin
	#1; {data, segs_expected} = testvectors[vectornum];
     end
   
   //check outputs against expected outputs
   always @(negedge clk)
     if(~reset) begin //skip during reset
	begin  //  check individual signals against expected values here
	   if (segs !== segs_expected)
	     begin
		$display("Error: input data = %b", data);
		$display(" outputs: segs = %b (expected segs = %b)", segs, segs_expected);
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

