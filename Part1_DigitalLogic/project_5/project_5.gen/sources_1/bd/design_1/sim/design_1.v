//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Sun Nov  2 01:18:30 2025
//Host        : debian running 64-bit unknown
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (btn,
    led,
    sw);
  input [1:0]btn;
  output [3:0]led;
  input [3:0]sw;

  wire [1:0]btn;
  wire [3:0]led;
  wire mux_0_Y;
  wire [3:0]sw;

  design_1_demux_0_0 demux_0
       (.EN(mux_0_Y),
        .I(btn),
        .Y(led));
  design_1_mux_0_0 mux_0
       (.I(sw),
        .S(btn),
        .Y(mux_0_Y));
endmodule
