`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 09:22:26 AM
// Design Name: 
// Module Name: demux_1to8
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


module demux_1to8(
    input EN,
    input [2:0] I,
    output reg [7:0] Y
    );
    
always @(EN, I) begin
    case (I)
        3'd0: Y <= {7'd0, EN};
        3'd1: Y <= {6'd0, EN, 1'd0};
        3'd2: Y <= {5'd0, EN, 2'd0};
        3'd3: Y <= {4'd0, EN, 3'd0};
        3'd4: Y <= {3'd0, EN, 4'd0};
        3'd5: Y <= {2'd0, EN, 5'd0};
        3'd6: Y <= {1'd0, EN, 6'd0};
        3'd7: Y <= {EN, 7'd0};    
        default: Y <= 8'd0;
    endcase
end
    
endmodule
