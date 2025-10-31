`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2025 09:36:56 AM
// Design Name: 
// Module Name: mux_12to1
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


module mux_12to1(
    input [11:0] I,
    input [3:0] sel,
    output reg led_g,
    output led_r 
    );

reg tmp_r;
initial tmp_r = 1'b0;
initial led_g = 1'b0; 

// I don't know why two case statements are needed
always @(sel, I) begin
    case (sel)
    4'd0: led_g <= I[0];
    4'd1: led_g <= I[1];
    4'd2: led_g <= I[2];
    4'd3: led_g <= I[3];
    4'd4: led_g <= I[4];
    4'd5: led_g <= I[5];
    4'd6: led_g <= I[6];
    4'd7: led_g <= I[7];  
    4'd8: led_g <= I[8];
    4'd9: led_g <= I[9];
    4'd10: led_g <= I[10];
    4'd11: led_g <= I[11];
    default: led_g <= 1'b0;
    endcase
end   

always @(sel, I) begin
    case (sel)
    4'd12:  tmp_r <= 1'b1;
    4'd13:  tmp_r <= 1'b1;
    
    4'd14:  tmp_r <= 1'b1;
    4'd15:  tmp_r <= 1'b1;
    default: tmp_r <= 1'b0;
    endcase
end

assign led_r = tmp_r;
endmodule