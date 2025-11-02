`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 11:58:57 AM
// Design Name: 
// Module Name: seven_segment_decoder_btn
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


module seven_segment_decoder_btn(
    input [7:0] sw,
    input [1:0] btn,
    output [6:0] seg_cat,
    output reg [3:0] seg_an
    );
    
// module for switching between number 1 and 3

wire [3:0] sdata;

mux_2to1_4bit busmux (
    .I(sw[7:0]),
    .S(btn[0]),
    .Y(sdata[3:0])
);

bin2seg segmentDecoder (
    .sw(sdata[3:0]),
    .seg_cat(seg_cat)
);

always @(btn) begin
    case (btn)
        2'b00: seg_an <= 4'b1110;
        2'b01: seg_an <= 4'b1101;
        default: seg_an <= 4'b1111;
    endcase 
end 

endmodule
