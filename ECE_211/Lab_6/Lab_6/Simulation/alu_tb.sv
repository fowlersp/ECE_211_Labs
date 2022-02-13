`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2021 08:28:11 AM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();

    logic signed [31:0] a;
    logic signed [31:0] b;
    logic [2:0] f;
    logic signed [31:0] result;
    logic zero;
    logic fpad;
    logic [2:0] zeropad;
    
    logic [31:0] result_expected;
    logic zero_expected;
    
    parameter VECTOR_WIDTH = 104;
    parameter TESTVECTOR_FILENAME = "alu_tb.tv";

     // Instantiate and connect the Device Under Verification (DUV)
   alu #(.W(32)) DUV ( .a(a), .b(b), .f(f), .result(result), .zero(zero));

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
	$readmemh("alu_tb.tv", testvectors);
	vectornum = 0; errors = 0; reset = 1; #17; reset = 0;
     end
   
   // assign next set of inputs and expected output - if you add
   // inputs, concatenate them in the order they appear in the
   // testvector file
   always @(posedge clk)
     begin
	#1; {fpad, f, a, b, result_expected, zeropad, zero_expected} = testvectors[vectornum];
     end
   
   //check outputs against expected outputs
   always @(negedge clk)
     if(~reset) begin //skip during reset
	begin  //  check individual signals against expected values here
	   if (result !== result_expected)
	     begin
		$display("Error: input a,b = %b", a, b);
		$display(" outputs: result = %b (expected result = %b)", result, result_expected);
		errors = errors + 1;
	     end 
   if (zero !== zero_expected)
	     begin
		$display("Error: input a,b = %b", a, b);
		$display(" outputs: zero = %b (expected zero = %b)", zero, zero_expected);
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
