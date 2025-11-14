`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 08:14:34 AM
// Design Name: 
// Module Name: sipo_shift_register
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


module sipo_shift_register(
    input clk,
    input sw,
    output reg [7:0] led
    );
    
    
// this is a divided clock
reg [25:0] cntr;
always @ (posedge(clk)) begin
    cntr <= cntr + 1;
end

always @(posedge(cntr[25])) begin
    led[7:0] <= {led[6:0], sw};
end
endmodule
