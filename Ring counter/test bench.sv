`timescale 1ns / 1ps


module ring_counter_test;

	// Inputs
	reg clk;
	reg rst;
	
	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	ring_counter uut (
		.clk(clk), 
		.rst(rst),
		.q(q)
	);
	always #5 clk = ~clk;
	initial begin
		rst = 1;
		clk = 0;
		
		#100;
		rst = 0;
	end
	
	initial begin
	   $dumpfile("dump.vcd");
	   $dumpvars;
	   
	   #2000; $finish();
	end
      
endmodule
