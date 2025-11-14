`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2025 05:17:59 AM
// Design Name: 
// Module Name: sr_latch_nor_sim
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


module sr_latch_nor_sim();

reg S;
reg R;

sr_latch_nor CUT (
    .S(S),
    .R(R),
    .Q(Q),
    .Qn(Qn)
    );
    
initial begin
    // Initialize Inputs
    S = 0;
    R = 0;

    // Add stimulus here
    #100 S = 1;
    #100 S = 0;
    #100 R = 1;
    #100 R = 0;
    #100 S = 1;
         R = 1;
    #100 S = 0;
         R = 0;
    #100 S = 1;
         R = 1;
    #100 ;
end

endmodule
