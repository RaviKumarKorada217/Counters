`timescale 1ns / 1ps

module async_up_down_counter_test;

	// Inputs
	reg clk;
	reg mode;
	reg rst;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	async_up_down_counter uut (
		.mode(mode), 
		.clk(clk), 
		.rst(rst),
		.count(count)
	);
	always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		mode = 0;
		rst = 1;
        
        #30;
        rst=0;
        
        #200;
        mode = 1;
		
	end
	
	initial begin
           $dumpfile("dump.vcd");
           $dumpvars;
           
           #2000; $finish();
        end
      
endmodule
