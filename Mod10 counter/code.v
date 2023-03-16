`timescale 1ns / 1ps

module mod10_counter( clk, rst, count);
    input clk, rst;
    output reg [3:0] count;
    
    always@(posedge clk)
    begin 
        if(rst|count==9)
            count=0;
        else
            count=count+1;
    end
endmodule
