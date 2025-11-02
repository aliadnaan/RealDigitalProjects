`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 09:40:13 AM
// Design Name: 
// Module Name: transmission_system
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


module transmission_system(
    input [7:0] sw,
    input clk,
    output [7:0] led,
    output RGB_led_A
    );
    
wire data;
wire [2:0] select;

assign RGB_led_A = data;

counter counter (
    .clk(clk),
    .B(select)
);

mux_8to1 input_mux (
    .I(sw),
    .S(select),
    .Y(data)
);

demux_1to8 (
    .EN(data),
    .I(select),
    .Y(led)
);

endmodule
