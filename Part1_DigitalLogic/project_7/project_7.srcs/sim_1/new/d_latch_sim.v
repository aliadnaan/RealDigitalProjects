`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2025 09:04:27 AM
// Design Name: 
// Module Name: d_latch_sim
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


module d_latch_sim();

reg D;
reg G;


d_latch CUT (
    .D(D),
    .G(G),
    .Q(Q),
    .Qn(Qn)
    );
    
initial begin

    D = 0;
    G = 0;
    
//    #100 D = 1;
//    #100 D = 0;
//    #100 G = 1;
//    #100 G = 0;
    #10 G = 1;
    #10 G = 0;
    #100 D = 1;
         G = 1;
    #100 D = 0;
         G = 0;
    #100 D = 1;
         G = 1;
    #100 D = 0;
    #1 G = 0;
    #49;
    #10 D = 1;
        G = 1;
    #49 G = 0;
    #1  D = 0;
    #1;
    #49 D = 1;
    #1  G = 1;
    #50 D = 0;
        G = 0;
    #50 G = 1;
    #1  D = 1;
    #100;


end    
    
//  initial begin
//    D = 1; G = 0;         // closed, don't care
//    #10 G = 1;            // open: Q follows D -> Q=1
//    #20 D = 0;            // still open: forces R=0 -> Q MUST go 0
//    #20 G = 0;            // close: holds Q=0

//    #40 G = 1; D = 1;     // open & set -> Q=1
//    #20 G = 0;            // hold

//    #40 G = 1; D = 0;     // open & reset -> Q=0
//    #20 G = 0;            // hold

//    #50 $finish;
//  end    
    
endmodule

