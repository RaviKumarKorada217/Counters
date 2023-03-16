`timescale 1ns / 1ps

module async_up_counter( clk, rst, count);   
    parameter N=4;    
    input clk, rst;
    output reg [N-1:0] count ;
    
	always@(posedge clk or posedge rst)
	begin
	   if(rst)
	       count = 0;
	   else
	       count = count+1;
	end

endmodule
