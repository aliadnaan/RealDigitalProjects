//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Sun Nov  2 02:53:10 2025
//Host        : debian running 64-bit unknown
//Command     : generate_target transmission_block.bd
//Design      : transmission_block
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "transmission_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=transmission_block,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "transmission_block.hwdef" *) 
module transmission_block
   (clk,
    led,
    sw);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN transmission_block_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  output [7:0]led;
  input [7:0]sw;

  wire clk;
  wire [2:0]counter_0_B;
  wire [7:0]led;
  wire mux_8to1_0_Y;
  wire [7:0]sw;

  transmission_block_counter_0_0 counter_0
       (.B(counter_0_B),
        .clk(clk));
  transmission_block_demux_1to8_0_0 demux_1to8_0
       (.EN(mux_8to1_0_Y),
        .I(counter_0_B),
        .Y(led));
  transmission_block_mux_8to1_0_0 mux_8to1_0
       (.I(sw),
        .S(counter_0_B),
        .Y(mux_8to1_0_Y));
endmodule
