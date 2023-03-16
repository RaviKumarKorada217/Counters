`timescale 1ns / 1ps

module sync_up_down_counter( mode, clk, rst, count);   
    parameter N=4;    
    input mode, clk, rst;
    output reg [N-1:0] count ;
    
	always@(posedge clk)
	begin
	   if(rst)
	       count <= 0;
	   else 
	   begin
	       case(mode)
	         0 : count <= count-1;
	         1 : count <= count+1;
            endcase
       end
	end

endmodule
