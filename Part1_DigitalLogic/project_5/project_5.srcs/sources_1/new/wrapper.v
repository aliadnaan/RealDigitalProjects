`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 07:39:16 AM
// Design Name: 
// Module Name: wrapper
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


module wrapper (
    input [3:0] sw,
    input [1:0] btn,
    output [3:0] led
);

wire sdata;

mux input_mux (
    .I(sw),
    .S(btn),
    .Y(sdata)
);

demux output_demux (
    .EN(sdata),
    .I(btn),
    .Y(led)
);

endmodule
