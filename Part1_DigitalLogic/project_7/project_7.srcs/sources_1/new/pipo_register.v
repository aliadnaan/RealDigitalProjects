`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 08:19:31 AM
// Design Name: 
// Module Name: pipo_register
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

// this version uses a nonstandard clock. too lazy so i'm just gonna make a new module that does the same thing in this file
// would have to change XDC comment thingy
//module pipo_register(
//    input [7:0] sw,
//    input [1:0] btn,
//    output reg [7:0] led
//    );
    
//reg [7:0] Q;

//always @(posedge(btn[0])) begin
//    Q <= sw;
//end

//always @(sw, Q, btn[1]) begin
//    case (btn[1])
//        1'b0: led <= sw;
//        1'b1: led <= Q;
//        default: led <= 0;
//   endcase 
//end
    
//endmodule



module pipo_register(
    input [7:0] sw,
    input [1:0] btn,
    input clk,
    output reg [7:0] led
    );
    
reg [7:0] Q;

always @(posedge(clk)) begin
    if (btn[0] == 1)
        Q <= sw;
end

always @(sw, Q, btn[1]) begin
    case (btn[1])
        1'b0: led <= sw;
        1'b1: led <= Q;
        default: led <= 0;
   endcase 
end
    
endmodule
