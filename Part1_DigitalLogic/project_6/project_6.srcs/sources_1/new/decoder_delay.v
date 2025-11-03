`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2025 08:59:00 AM
// Design Name: 
// Module Name: decoder_delay
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


module decoder_delay(
    input [3:0] sw,
    output reg [15:0] led
    );
    
always @(sw) begin
    case (sw)
        4'h0: led <= 16'd1;
        4'h1: led <= 16'd2;
        4'h2: led <= 16'd4;
        4'h3: led <= 16'd8;
        4'h4: led <= 16'd16;
        4'h5: led <= 16'd32;
        4'h6: led <= 16'd64;
        4'h7: led <= 16'd128;
        4'h8: led <= 16'd256;
        4'h9: led <= 16'd512;
        4'hA: led <= 16'd1024;
        4'hB: led <= 16'd2048;
        4'hC: led <= 16'd4096;
        4'hD: led <= 16'd8192;
        4'hE: led <= 16'd16384;
        4'hF: led <= 16'd32768;
        default: led <= 16'd0;
    endcase
end
    
endmodule
