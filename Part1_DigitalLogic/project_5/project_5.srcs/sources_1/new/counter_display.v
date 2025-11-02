`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 12:17:16 PM
// Design Name: 
// Module Name: counter_display
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


module counter_display(
	input clk,
	output Y
);

reg [27:0] counter;

always @ (posedge clk)
begin
	counter <= counter + 1;
end

assign Y = counter[17];

endmodule
