`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 09:07:33 AM
// Design Name: 
// Module Name: piso_shift_register
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


module piso_shift_register(
    input [7:0] sw,
    input [1:0] btn,
    input clk,
    output reg [15:0] led
    );

// this is a divided clock
reg [25:0] cntr;
always @ (posedge(clk)) begin
    cntr <= cntr + 1;
end

// using a single block to prevent issues with multiple assignments
// setting all switches to zero and holding both switches acts as reset
always @ (posedge(cntr[25])) begin
    if (btn == 2'b00)
        led <= {led[14:0],led[15]};
    else
        case(btn)
            2'b01: led[7:0] <= sw;
            2'b10: led[15:8] <= sw;
            default: led <= 15'b0;
        endcase
end

endmodule
