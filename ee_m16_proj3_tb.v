`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// school: ucla
 // class: ee M16 
// name:Zhiheng Ma 404950730
//
// Create Date:   06:35:14 03/10/2019
// Design Name:   eem16_proj3
// Module Name:   /home/ise/ee_m16_proj3/ee_m16_proj3_tb.v
// Project Name:  ee_m16_proj3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eem16_proj3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ee_m16_proj3_tb;

	// Inputs
	reg [1:0] x;
	reg reset;
	reg clk;

	// Outputs
	wire [1:0] z;

	// Instantiate the Unit Under Test (UUT)
	eem16_proj3 uut (
		.x(x), 
		.reset(reset), 
		.clk(clk), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		x=0;
		reset=1;
		clk=1;
	 
    #10 reset = 0;
	 
    #10
//test1: insert five nickels	 
	 x=1; 
	 #10
	 x=1;
	 #10
	 x=1;
	 #10	
	 x=1;
	 #10	
	 x=1;
	 
	 #10//set to orginal state
	 x=0;
	 
    #10 
	 //test2: insert one nickels, two dime
	 x=3; 
	 #10
	 x=3;
	 #10
	 x=1;
	 
	 #10
	 x=0;//set to orginal state
	 
	 #10  
	 //test3: insert one nickel, and reset
	 x=1;
    #10 
	 reset = 1; 

	 #10
	 reset = 0;
	 #10
	 x=0; //set to orginal state
	 
	 #10
	 //test4: insert two nickel, and reset
	  x=1;
    #10 
	 x=1;
	 #10
	 reset = 1; 
	 #10
	 reset = 0;
	 #10
	 x=0; //set to orginal state
	 
	 #10
	 //test5: insert one nickle, and two dime
	 x=1;
    #10 
	 x=3;
    #10 
	 x=3;
    #10 
	 
    $finish;
	 

end
		always begin
    #5 clk = ~clk;
end

      
endmodule

