`timescale 1ns / 1ps

module async_up_down_counter( mode, clk, rst, count);   
    parameter N=4;    
    input mode, clk, rst;
    output reg [N-1:0] count ;
    
	always@(posedge clk or posedge rst)
	begin
	   if(rst)
	       count = 0;
	   else 
	   begin
           if (mode)
               count = count+1;
           else
               count = count-1;
       end
	end

endmodule
