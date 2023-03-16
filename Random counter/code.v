`timescale 1ns / 1ps
// 2->1->7->9->8->4->11->14->2->1->........
module random_counter( clk, rst, number );
    input clk, rst;
    output reg [3:0]number;
    
    always@(posedge clk)
    if(rst)
        number<=2;
    else
    begin
        case(number)
          2 :   number<=1;
          1 :   number<=7;
          7 :   number<=9;
          9 :   number<=8;
          8 :   number<=4;
          4 :   number<=11;
         11 :   number<=14;
         14 :   number<=2;
    default :   number<=2;
        endcase    
    end
    
endmodule
