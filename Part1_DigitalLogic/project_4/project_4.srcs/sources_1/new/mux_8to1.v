`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 12:30:14 AM
// Design Name: 
// Module Name: mux_8to1
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


module mux_8to1(
    input [7:0] data,
    input [2:0] sel,
    output Y
    );
    
reg tmp;
     
always @(data, sel) begin
    case (sel)
    3'd0:   tmp <= data[0];
    3'd1:   tmp <= data[1];
    3'd2:   tmp <= data[2];
    3'd3:   tmp <= data[3];
    3'd4:   tmp <= data[4];
    3'd5:   tmp <= data[5];
    3'd6:   tmp <= data[6];
    3'd7:   tmp <= data[7];
    
    default: tmp <= 1'b0;
    endcase
end
assign Y = tmp;


endmodule
