//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Sun Nov  2 02:53:10 2025
//Host        : debian running 64-bit unknown
//Command     : generate_target transmission_block_wrapper.bd
//Design      : transmission_block_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module transmission_block_wrapper
   (clk,
    led,
    sw);
  input clk;
  output [7:0]led;
  input [7:0]sw;

  wire clk;
  wire [7:0]led;
  wire [7:0]sw;

  transmission_block transmission_block_i
       (.clk(clk),
        .led(led),
        .sw(sw));
endmodule
