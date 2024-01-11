`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 01/11/2024 03:39:01 PM
// Project Name:jkFlipFlop 
// Description: 
//A JK flip-flop is a digital circuit component used in sequential logic applications. 
//It is an improvement upon the SR (Set-Reset) flip-flop, addressing some of its limitations.
//The JK flip-flop has three inputs: J (Set), K (Reset), and a clock signal (C or CLK).
//Its outputs are the complemented and non-complemented forms of the stored binary value (Q and Q' or Q-bar)
// 
//////////////////////////////////////////////////////////////////////////////////


module jkFlipFlop(
    input logic J,
    input logic K,
    input logic clk,
    output logic Q
    );
    
    always_ff @(negedge clk) begin
        case({J,K})
            2'b00: Q <= Q;
            2'b01: Q <= 1'b0;
            2'b10: Q <= 1'b1;
            2'b11: Q <= ~Q;
        endcase
    end
endmodule
