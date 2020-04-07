`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// school: ucla
 // class: ee M16 
// name:Zhiheng Ma 404950730 
// 
// Create Date:    05:53:45 03/10/2019 
// Design Name: 
// Module Name:    ee_m16_proj3 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module dff(
 input wire d_in,
 input wire Clk,
 input wire reset,
 output reg q_out);
 
 always@(posedge Clk) begin
 if(reset)
 q_out <= 0;
else
 q_out <= d_in;
 end
endmodule

module eem16_proj3(
		input wire [1:0]x,
		input wire reset,
		input wire clk,
		output reg [1:0]z
    );
	 reg j1,k1,j0,k0;	 
	 wire x1,x0,s1,s0;

	 jkff jkff1(
.J (j1),
.K (k1),
.CLK (clk),
.CLR (reset),
.Q (s1));

jkff jkff0(
.J (j0),
.K (k0),
.CLK (clk),
.CLR (reset),
.Q (s0));

dff in_1(
.d_in (x[1]),
.Clk (clk),
.reset (reset),
.q_out (x1));

dff in_0(
.d_in (x[0]),
.Clk (clk),
.reset (reset),
.q_out (x0));


always @(*) begin
 j1 <=x1|(s0&x0);
 k1 <=x1|(~s0&x0);
 j0 <=~s1&x0;
 k0 <=x1|(s1&x0);
 z[1] <=(s1&~s0&x0)|(s1&x1);
 z[0] <=s1&~s0&x1;
end
	
endmodule
