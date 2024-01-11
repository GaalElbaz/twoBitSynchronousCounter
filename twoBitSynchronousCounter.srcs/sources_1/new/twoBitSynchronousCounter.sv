`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 01/11/2024 03:35:04 PM
// Project Name: twoBitSynchronousCounter

// Description: 
// A two-bit synchronous counter is a digital circuit that counts in binary from 
// 00 to 11 using two flip-flops. 
//It operates in sync with a clock signal, advancing its count on each clock edge. 
// This type of counter is synchronous, meaning that the flip-flops 
// change states simultaneously, ensuring proper timing and avoiding glitches.
//////////////////////////////////////////////////////////////////////////////////


module twoBitSynchronousCounter(
    input logic clk,
    input logic rst,
    output logic Q1,
    output logic Q2
    );
    
jkFlipFlop JK1 (
    .J(Q2),
    .K(Q2),
    .clk(clk),
    .Q(Q1)
);

jkFlipFlop JK2 (
    .J(1'b1),
    .K(1'b1),
    .clk(clk),
    .Q(Q2)
);
    
    always_ff @(posedge rst) begin
        if (rst == 1'b1) begin
            Q1 <= 1'b0;
            Q2 <= 1'b0;
        end
    end
endmodule
