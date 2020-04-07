`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//// school: ucla
 // class: ee M16 
// name:Zhiheng Ma 404950730
// 
// Create Date:    06:08:48 03/10/2019 
// Design Name: 
// Module Name:    jkff 
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
module jkff(
    input wire J,
    input wire K,
    input wire CLK,
    input wire CLR,
    output reg Q);

always @(posedge CLK) begin
  if (!CLR)
    if(J==1'b0 && K==1'b1) begin
      Q <= 'b0;
    end
    else if(J==1'b1 && K==1'b0) begin
      Q <= 1'b1;
    end
    else if(J==1'b1 & K==1'b1) begin
      Q <= ~Q;
    end
  else 
     Q<=0;
  end
endmodule


