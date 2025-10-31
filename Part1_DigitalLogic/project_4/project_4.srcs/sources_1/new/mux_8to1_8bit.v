`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2025 07:09:16 AM
// Design Name: 
// Module Name: mux_8to1_8bit
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


module mux_8to1_8bit(
    input [7:0] I0, I1, I2, I3, I4, I5, I6, I7,
    input [2:0] sel,
    output [7:0] Y
    );
    
reg [7:0] tmp;

always @(I0, I1, I2, I3, I4, I5, I6, I7, sel) begin
    case (sel)
        3'd0: tmp <= I0;
        3'd1: tmp <= I1;
        3'd2: tmp <= I2;
        3'd3: tmp <= I3;
        3'd4: tmp <= I4;
        3'd5: tmp <= I5;
        3'd6: tmp <= I6;
        3'd7: tmp <= I7;
        default: tmp <= 3'd0;        
    endcase
end

assign Y = tmp;

endmodule
