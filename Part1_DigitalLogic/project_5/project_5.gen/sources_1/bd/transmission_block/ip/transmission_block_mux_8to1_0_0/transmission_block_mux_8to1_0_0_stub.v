// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sun Nov  2 02:53:42 2025
// Host        : debian running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/adnaan/Projects/RealDigitalProjects/Part1_DigitalLogic/project_5/project_5.gen/sources_1/bd/transmission_block/ip/transmission_block_mux_8to1_0_0/transmission_block_mux_8to1_0_0_stub.v
// Design      : transmission_block_mux_8to1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "transmission_block_mux_8to1_0_0,mux_8to1,{}" *) (* CORE_GENERATION_INFO = "transmission_block_mux_8to1_0_0,mux_8to1,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mux_8to1,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "mux_8to1,Vivado 2025.1" *) 
module transmission_block_mux_8to1_0_0(I, S, Y)
/* synthesis syn_black_box black_box_pad_pin="I[7:0],S[2:0],Y" */;
  input [7:0]I;
  input [2:0]S;
  output Y;
endmodule
