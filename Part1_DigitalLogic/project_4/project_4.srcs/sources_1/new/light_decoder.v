`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 07:08:26 AM
// Design Name: 
// Module Name: light_decoder
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


module light_decoder(
    input [1:0] sw,
    input [3:0] btn,
    output [3:0] Y
    );
    
reg [3:0] tmp;  
    
always @ (sw)
begin
    case (sw)
        2'd0: tmp <= 4'd1;
        2'd1: tmp <= 4'd2;
        2'd2: tmp <= 4'd4;
        2'd3: tmp <= 4'd8;
        default: tmp <= 4'd0;
    endcase
end
 
 
assign Y = tmp & btn;


endmodule
