`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2025 08:31:41 AM
// Design Name: 
// Module Name: shifter_8bit
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


module shifter_8bit(
    input [7:0] I,
    input [1:0] amount,
    input D,
    input R,
    input F,
    output reg [7:0] led
    );
    
// following is pretty nasty but idk how else to do it
always @ (I, amount) begin
    case (amount)
    2'b00: led <= I;
    2'b01: //shifting by one
            if (R == 0) // R = 0 means don't rotate; left then right shift
                led <= (D == 0) ? {I[6:0], F} : {F, I[7:1]};
            else
                led <= (D == 0) ? {I[6:0], I[7]} : {I[0], I[7:1]};       
    2'b10: //shifting by 2
            if (R == 0)
                led <= (D == 0) ? {I[5:0], F, F} : {F, F, I[7:2]};
            else
                led <= (D == 0) ? {I[5:0], I[7:6]} : {I[1:0], I[7:2]};
    2'b11: //shifting by 3
            if (R == 0)
                led <= (D == 0) ? {I[4:0], F, F, F} : {F, F, F, I[7:3]};
            else
                led <= (D == 0) ? {I[4:0], I[7:5]} : {I[2:0], I[7:3]};
    default: led <= I;
    endcase
end
endmodule
