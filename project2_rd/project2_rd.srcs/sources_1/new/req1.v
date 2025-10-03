`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/14/2025 04:48:38 PM
// Design Name: 
// Module Name: req1
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


module req1 (
    input [7:0] sw,
    output [2:0] led,
    output [2:0] RGB_led_A,
    output [2:0] RGB_led_B
);

//SOP Circuit
/*
assign led[0] = (sw[0] & ~sw[1]) | (~sw[0] & sw[1]);
assign led[1] = (~sw[1] & ~sw[2] & ~sw[3]) | (sw[1] & sw[2] & ~sw[3]) | (sw[1] & ~sw[2] & sw[3]);
assign led[2] = (~sw[7] & ~sw[6] & ~sw[5] & sw[4]) | (~sw[7] & ~sw[6] & sw[5] & sw[4]) | (~sw[7] & sw[6] & ~sw[5] & ~sw[4]) | (sw[7] & sw[6] & sw[5] & sw[4]);
*/

//POS Circuit
/*
assign led[0] = (~sw[1] | ~sw[0]) & (sw[0] | sw[1]);
assign led[1] = (sw[3] | sw[2] | ~sw[1]) & (sw[3] | ~sw[2] | sw[1]) & (~sw[3] | sw[2] | sw[1]) & (~sw[3] | ~sw[2] | sw[1]) & (~sw[3] | ~sw[2] | ~sw[1]);
assign led[2] = (sw[7] | sw[6] | sw[5] | sw[4]) & (sw[7] | sw[6] | ~sw[5] | sw[4]) & (sw[7] | ~sw[6] | sw[5] | ~sw[4]) & (sw[7] | ~sw[6] | ~sw[5] | sw[4]) & (sw[7] | ~sw[6] | ~sw[5] | ~sw[4]) & (~sw[7] | sw[6] | sw[5] | sw[4]) & (~sw[7] | sw[6] | sw[5] | ~sw[4]) & (~sw[7] | sw[6] | ~sw[5] | sw[4]) & (~sw[7] | sw[6] | ~sw[5] | ~sw[4]) & (~sw[7] | ~sw[6] | sw[5] | sw[4]) & (~sw[7] | ~sw[6] | sw[5] | ~sw[4]) & (~sw[7] | ~sw[6] | ~sw[5] | sw[4]);    
*/

//Car Sensor
/*        
    Coolant Level (sw 0)
    Oil Level (sw 1)
    Oil Temperature (sw 2)
    Coolant Temperature (sw 3)

Yellow Light:
    Only the Coolant Level is low
    Only the Oil Level is low
    The Oil Temperature is too high and the Oil Level is OK
    The Coolant Temperature is too high and the Oil Level is too low

Red Light: 
    The Coolant temperature is too high and the Coolant level is too low
    The Oil Temperature is too high and the Oil Level is too low
    The Coolant and Oil Temperatures are too high at the same time
    The Coolant and Oil levels are too low at the same time that the Coolant Temperature is too high and the Oil Temperature is OK.
*/

/*
assign RGB_led_A[0] = (~sw[3] & ~sw[2] & ~sw[1] & sw[0]) | (~sw[3] & ~sw[2] & sw[1] & ~sw[0]) | (~sw[3] & sw[2] & ~sw[1] & ~sw[0]) | (sw[3] & ~sw[2] & sw[1] & ~sw[0]);
assign RGB_led_A[1] = (~sw[3] & ~sw[2] & ~sw[1] & sw[0]) | (~sw[3] & ~sw[2] & sw[1] & ~sw[0]) | (~sw[3] & sw[2] & ~sw[1] & ~sw[0]) | (sw[3] & ~sw[2] & sw[1] & ~sw[0]);

assign RGB_led_B[0] = (sw[3] & ~sw[2] & ~sw[1] & sw[0]) | (~sw[3] & sw[2] & ~sw[1] & sw[0]) | (sw[3] & sw[2] & ~sw[1] & ~sw[0]) | (sw[3] & ~sw[2] & sw[1] & sw[0]);
*/


//Challenge 1
/*
Illuminate an LED only when exactly two of the first four slide switches (SW0, SW1, SW2, SW3) are set to "1".
Illuminate a second LED when exactly three of the next four switches (SW4, SW5, SW6, SW7) are set to "0".
*/

assign led[0] = (sw[0] & sw[1] & ~sw[2] & ~sw[3]) | (sw[0] & ~sw[1] & sw[2] & ~sw[3]) | (sw[0] & ~sw[1] & ~sw[2] & sw[3]) | (~sw[0] & sw[1] & sw[2] & ~sw[3]) | (~sw[0] & sw[1] & ~sw[2] & sw[3]) | (~sw[0] & ~sw[1] & sw[2] & sw[3]);
assign led[1] = (sw[4] & sw[5] & sw[6] & ~sw[7]) | (~sw[4] & sw[5] & sw[6] & sw[7]) | (sw[4] & ~sw[5] & sw[6] & sw[7]) | (sw[4] & sw[5] & ~sw[6] & sw[7]);




endmodule
