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
    input [11:0] sw,
    input [3:0] btn,
    output [2:0] RGB_led_A,
    output [2:0] RGB_led_B,
    output [2:0] led
    );
    
//5 way light switch
//assign led[0] = (
//    ~sw[4] & ~sw[3] & ~sw[2] & ~sw[1] & sw[0] | //1 00001
//    ~sw[4] & ~sw[3] & ~sw[2] & sw[1] & ~sw[0] | //2 00010
//    ~sw[4] & ~sw[3] & sw[2] & ~sw[1] & ~sw[0] | //4 00100
//    ~sw[4] & ~sw[3] & sw[2] & sw[1] & sw[0] | //7 00111
//    ~sw[4] & sw[3] & ~sw[2] & ~sw[1] & ~sw[0] | //8 01000
//    ~sw[4] & sw[3] & ~sw[2] & sw[1] & sw[0] | //11 01011
//    ~sw[4] & sw[3] & sw[2] & ~sw[1] & sw[0] | //13 01101
//    ~sw[4] & sw[3] & sw[2] & sw[1] & ~sw[0] | //14 01110
//    sw[4] & ~sw[3] & ~sw[2] & ~sw[1] & ~sw[0] | //16 10000
//    sw[4] & ~sw[3] & ~sw[2] & sw[1] & sw[0] | //19 10011
//    sw[4] & ~sw[3] & sw[2] & ~sw[1] & sw[0] | //21 10101
//    sw[4] & ~sw[3] & sw[2] & sw[1] & ~sw[0] | //22 10110
//    sw[4] & sw[3] & ~sw[2] & ~sw[1] & sw[0] | //25 11001
//    sw[4] & sw[3] & ~sw[2] & sw[1] & ~sw[0] | //26 11010
//    sw[4] & sw[3] & sw[2] & ~sw[1] & ~sw[0] | //28 11100
//    sw[4] & sw[3] & sw[2] & sw[1] & sw[0] //31 11111
//    );
    
// Majority of 5

//// Dashboard Indicator
//// Probably can be imrpoved but requirements are very very weird.
//// Might have to make each portion exclusive but I am lazy
//wire coolant_low = sw[0];
//wire temp = sw[1];
//wire oil_low = sw[2];
//wire exhaust = sw[3];
//wire oil_temp = sw[4];

//wire SI = RGB_led_A[0];
//wire CE = RGB_led_B[2];

//assign SI = (
//    oil_low ^
//    coolant_low ^
//    oil_temp & coolant_low ^
//    temp & oil_temp
//    );

//assign CE = (
//    coolant_low & temp |
//    coolant_low & oil_temp ^
//    temp & oil_temp ^
//    exhaust ^
//    oil_low ^
//    temp ^
//    coolant_low ^
//    oil_temp
//    );


// Odd number detector
assign led[0] = (sw[11] + sw[10] + sw[9] + sw[8] + sw[7] + sw[6] + sw[5] + sw[4] + sw[3] + sw[2] + sw[1] + sw[0]) % 2;
assign led[1] = ~((sw[11] + sw[10] + sw[9] + sw[8] + sw[7] + sw[6] + sw[5] + sw[4] + sw[3] + sw[2] + sw[1] + sw[0]) % 2);
assign led[2] = ((sw[7] + sw[6] + sw[5] + sw[4] + sw[3] + sw[2] + sw[1] + sw[0]) % 2) & ~((btn[3] + btn[2] + btn[1] + btn[0]) % 2);
endmodule
