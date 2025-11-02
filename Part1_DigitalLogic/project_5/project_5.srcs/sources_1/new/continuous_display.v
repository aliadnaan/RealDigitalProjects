`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 12:18:35 PM
// Design Name: 
// Module Name: continuous_display
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


module continuous_display(
    input clk,
    input [7:0] sw,
    output [6:0] seg_cat,
    output reg [3:0] seg_an
    );
    
// module for showing both numbers at once

wire [3:0] sdata;

counter_display (
    .clk(clk),
    .Y(btn)
);

mux_2to1_4bit busmux (
    .I(sw[7:0]),
    .S(btn),
    .Y(sdata[3:0])
);

bin2seg segmentDecoder (
    .sw(sdata[3:0]),
    .seg_cat(seg_cat)
);

//assign seg_an[1] = btn;
//assign seg_an[0] = ~btn;
//assign seg_an[3:2] = 2'b11;


always @(btn) begin
    case (btn)
        2'b00: seg_an <= 4'b1110;
        2'b01: seg_an <= 4'b1101;
        default: seg_an <= 4'b1111;
    endcase 
end 

endmodule