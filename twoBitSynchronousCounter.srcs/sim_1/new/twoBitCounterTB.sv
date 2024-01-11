`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// I am just a TB
//////////////////////////////////////////////////////////////////////////////////


module twoBitCounterTB();

logic clk,Q1,Q2,rst;

twoBitSynchronousCounter tb(.clk(clk), .Q1(Q1), .Q2(Q2), .rst(rst));

always #40 clk = ~clk;

initial begin
    clk = 1'b0;
    rst = 1'b0;
    #5 rst = 1'b1;
    #10 rst = 1'b0;
    #1000
    $finish;
end
endmodule
