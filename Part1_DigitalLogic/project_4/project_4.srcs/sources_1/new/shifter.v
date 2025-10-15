`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2025 08:33:22 AM
// Design Name: 
// Module Name: shifter
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


module shifter (
    input [3:0] I,
    input D,
    input R,
    input F,
    input En,
    output reg [3:0] Y
);

always @ (I, En)
begin
    if (En == 0)
        Y <= I;
    else begin
        if (R == 0)
            Y <= (D == 0) ? {I[2:0], F} : {F, I[3:1]};
        else
            Y <= (D == 0) ? {I[2:0], I[3]} : {I[0], I[3:1]};
    end
end
endmodule
