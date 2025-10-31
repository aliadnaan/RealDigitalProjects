`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2025 05:24:21 PM
// Design Name: 
// Module Name: minterm_mux
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


module minterm_mux(
    input [3:0] I,
    output reg led_g
    );
    
assign I0 = I[1] & I[0];
assign I1 = (~I[1] & ~I[0]) | (I[1] & ~I[0]);
assign I2 = ~(I[1] & I[0]);
assign I3 = ~I[1] & I[0];

always @* begin 
    case ({I[3], I[2]})
    2'b00: led_g <= I0;
    2'b01: led_g <= I1;
    2'b10: led_g <= I2;
    2'b11: led_g <= I3;
    default: led_g <= 2'b0;
    endcase

end   
    
endmodule
