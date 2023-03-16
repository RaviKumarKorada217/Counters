`timescale 1ns / 1ps

module johnson_counter( clk, rst, q ); // also known as Twisted Ring counter
    input clk, rst;
    output reg [3:0]q; //4-Bit jonson counter
    
	always@(posedge clk)
	 begin
	  if(rst)
	       q <= 4'b0000;
	  else
	   begin
		q[2] <= q[3];
		q[1] <= q[2];
		q[0] <= q[1];
		q[3] <= ~q[0];
	   end
	end
endmodule
