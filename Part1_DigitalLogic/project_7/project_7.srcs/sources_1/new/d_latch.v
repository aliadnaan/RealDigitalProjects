`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2025 08:55:29 AM
// Design Name: 
// Module Name: d_latch
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


//module d_latch(
//    input D,
//    input G,
//    output Q,
//    output Qn
//    );

////There is no set and reset but these are aribtrary intermediate signals to make code easier
////Since a D latch is a SR latch with timing the SR latch logic is still present
//wire S;
//wire R;

////don't need this but want to make intermediate signals clear
//wire D_inv;
//assign #1 D_not = ~D;

//assign #1 S = ~(D & G);
//assign #1 R = ~(G & D_inv);

//assign #1 Q = ~(S & Qn);
//assign #1 Qn = ~(R & Q); 

//// maybe something is wrong unable to get stable output of Q = 0. Memory functionality seems to not work
    
//endmodule


// the behavioral code seems to work for simulation but won't show delays

module d_latch (
    input  D,
    input  G,
    output reg Q,
    output reg Qn
);
    reg Dn;
//    assign Qn = ~Q;

    // Simulate inverter delay (example: 1ns - adjust to 1ms if needed)
    always @ (D) #1 Dn = ~D;

    // Simulate latch behavior with delay
    always @ (D, G) begin
        if (G)
            #2 Q <= D;  // Q follows D after delay
            #2 Qn <= Dn;
    end

endmodule
