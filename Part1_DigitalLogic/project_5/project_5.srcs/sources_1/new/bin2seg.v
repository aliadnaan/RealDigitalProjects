`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 10:38:40 AM
// Design Name: 
// Module Name: bin2seg
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


module bin2seg(
    input [3:0] sw,
    output reg [6:0] seg_cat
    //output reg [3:0]seg_an
    );
    
// seven segment display code
    
always @(sw) begin
    case (sw)
        4'h0: seg_cat <= 7'b1000000;
        4'h1: seg_cat <= 7'b1111001;
        4'h2: seg_cat <= 7'b0100100;
        4'h3: seg_cat <= 7'b0110000;
        4'h4: seg_cat <= 7'b0011001;
        4'h5: seg_cat <= 7'b0010010;
        4'h6: seg_cat <= 7'b0000010;
        4'h7: seg_cat <= 7'b1111000;
        4'h8: seg_cat <= 7'b0000000;
        4'h9: seg_cat <= 7'b0010000;
        4'hA: seg_cat <= 7'b0001000;
        4'hB: seg_cat <= 7'b0000011;
        4'hC: seg_cat <= 7'b1000110;
        4'hD: seg_cat <= 7'b0100001;
        4'hE: seg_cat <= 7'b0000110;
        4'hF: seg_cat <= 7'b0001110;
        default : seg_cat <= 7'd1;
    endcase 
//seg_an <= 4'b1110;
    
end

endmodule
