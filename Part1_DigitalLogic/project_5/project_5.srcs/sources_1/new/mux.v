`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 07:29:38 AM
// Design Name: 
// Module Name: mux
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


module mux(
    input [3:0] I,
    input [1:0] S,
    output reg Y
);

always @(I, S) begin
    case (S)
        2'b00 : Y <= I[0];
        2'b01 : Y <= I[1];
        2'b10 : Y <= I[2];
        2'b11 : Y <= I[3];
        default : Y <= 1'b0;
        endcase
end     

endmodule
