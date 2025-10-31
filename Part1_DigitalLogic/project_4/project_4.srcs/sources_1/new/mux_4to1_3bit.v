`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 06:20:55 AM
// Design Name: 
// Module Name: mux_4to1_3bit
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


module mux_4to1_3bit(
    input [2:0] I0, I1, I2, I3,
    input [1:0] sel,
    output [2:0] Y
    );
    
reg [2:0] tmp;

always @(I0, I1, I2, I3, sel) begin
    case (sel)
        2'b00:   tmp <= I0;
        2'b01:   tmp <= I1;
        2'b10:   tmp <= I2;
        2'b11:   tmp <= I3;
        default: tmp <= 2'b00;
    endcase
end
    
assign Y = tmp;

endmodule
