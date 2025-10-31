`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2025 07:19:14 AM
// Design Name: 
// Module Name: mux_8to1_8bit_tb
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


module mux_8to1_8bit_tb;

// inputs
reg [7:0] I0 = 8'h01;
reg [7:0] I1 = 8'h23;
reg [7:0] I2 = 8'h65; 
reg [7:0] I3 = 8'hAD;
reg [7:0] I4 = 8'h53;
reg [7:0] I5 = 8'h93;
reg [7:0] I6 = 8'hCD;
reg [7:0] I7 = 8'hEF;

reg [2:0] sel;

// outputs
wire [7:0] Y;

mux_8to1_8bit CUT(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .sel(sel),
    .Y(Y)
);

initial begin
    sel = 3'd0;
    #10;

    sel = 3'd1;
    #10;
    
    sel = 3'd2;
    #10;
    
    sel = 3'd3;
    #10;
    
    sel = 3'd4;
    #10;
    
    sel = 3'd5;
    #10;
    
    sel = 3'd6;
    #10;
    
    sel = 3'd7;
    #10;

    $finish;
end

endmodule
