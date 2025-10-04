`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 04:22:04 PM
// Design Name: 
// Module Name: proj3
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


module proj3(
    input [4:0] sw,
    output led
    );
    
//5 way light switch
assign led = (
    ~sw[4] & ~sw[3] & ~sw[2] & ~sw[1] & sw[0] | //1 00001
    ~sw[4] & ~sw[3] & ~sw[2] & sw[1] & ~sw[0] | //2 00010
    ~sw[4] & ~sw[3] & sw[2] & ~sw[1] & ~sw[0] | //4 00100
    ~sw[4] & ~sw[3] & sw[2] & sw[1] & sw[0] | //7 00111
    ~sw[4] & sw[3] & ~sw[2] & ~sw[1] & ~sw[0] | //8 01000
    ~sw[4] & sw[3] & ~sw[2] & sw[1] & sw[0] | //11 01011
    ~sw[4] & sw[3] & sw[2] & ~sw[1] & sw[0] | //13 01101
    ~sw[4] & sw[3] & sw[2] & sw[1] & ~sw[0] | //14 01110
    sw[4] & ~sw[3] & ~sw[2] & ~sw[1] & ~sw[0] | //16 10000
    sw[4] & ~sw[3] & ~sw[2] & sw[1] & sw[0] | //19 10011
    sw[4] & ~sw[3] & sw[2] & ~sw[1] & sw[0] | //21 10101
    sw[4] & ~sw[3] & sw[2] & sw[1] & ~sw[0] | //22 10110
    sw[4] & sw[3] & ~sw[2] & ~sw[1] & sw[0] | //25 11001
    sw[4] & sw[3] & ~sw[2] & sw[1] & ~sw[0] | //26 11010
    sw[4] & sw[3] & sw[2] & ~sw[1] & ~sw[0] | //28 11100
    sw[4] & sw[3] & sw[2] & sw[1] & sw[0] //31 11111
    );
    
    
endmodule
