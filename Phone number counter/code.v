`timescale 1ns / 1ps

module phone_number_counter( clk, rst, count, number );
    input clk, rst;
    output reg [3:0] count, number;
    
    always@(posedge clk)
    begin 
        if(rst|count==9)
            count=0;
        else
            count=count+1;
    end
    
    always@(count)
        casex(count)
            0   :   number=9;
            1   :   number=8;
            2   :   number=6;
            3   :   number=6;
            4   :   number=5;
            5   :   number=6;
            6   :   number=2;
            7   :   number=4;
            8   :   number=1;
            9   :   number=8;
        default :   number=1'bx;
        endcase
endmodule
