`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2025 05:29:14 PM
// Design Name: 
// Module Name: majority_of_five
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module majority_of_five(input [7:0] sw, output led);

assign led =	(sw[7] & ~sw[6] & sw[5] & ~sw[4]) | (sw[7] & ~sw[6] & sw[5] & sw[4] & ~sw[3]) | (sw[7] & ~sw[6] & sw[5] & sw[4] & sw[3] & (~sw[2] & ~sw[1] & ~sw[0]));

		
endmodule