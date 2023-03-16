`timescale 1ns / 1ps

module ring_counter( clk, rst, q );
    input clk, rst;
    output reg [3:0]q; //4-Bit ring counter
    
	always@(posedge clk)
	 begin
	  if(rst)
	       q <= 4'b1000;
	  else
	   begin
		q[2] <= q[3];
		q[1] <= q[2];
		q[0] <= q[1];
		q[3] <= q[0];
	   end
	end
endmodule
