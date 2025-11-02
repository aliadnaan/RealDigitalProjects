`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 11:31:47 AM
// Design Name: 
// Module Name: mux_2to1_4bit
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


module mux_2to1_4bit(
    input [7:0] I,
    input S,
    output reg [3:0] Y 
    );
    
always @(I, S) begin
    case (S)
        3'd0: Y <= I[3:0];
        3'd1: Y <= I[7:4];
        default: Y <= 1'b0;
   endcase 
end

endmodule
