`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 07:30:07 AM
// Design Name: 
// Module Name: demux
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


module demux(
    input EN,
    input [1:0] I,
    output reg [3:0] Y
);

always @(EN, I) begin
    case (I)
        2'b00: Y <= {3'b000, EN};
        2'b01: Y <= {2'b000, EN, 1'b00};
        2'b10: Y <= {1'b000, EN, 2'b00};
        2'b11: Y <= {EN, 3'b00};
        default: Y <= 4'b0000;
    endcase
end

endmodule
