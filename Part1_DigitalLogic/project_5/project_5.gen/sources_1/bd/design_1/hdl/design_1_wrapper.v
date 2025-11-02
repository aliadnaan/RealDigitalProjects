//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Sun Nov  2 01:18:30 2025
//Host        : debian running 64-bit unknown
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (btn,
    led,
    sw);
  input [1:0]btn;
  output [3:0]led;
  input [3:0]sw;

  wire [1:0]btn;
  wire [3:0]led;
  wire [3:0]sw;

  design_1 design_1_i
       (.btn(btn),
        .led(led),
        .sw(sw));
endmodule
