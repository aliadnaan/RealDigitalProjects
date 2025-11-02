// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sun Nov  2 01:19:00 2025
// Host        : debian running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/adnaan/Projects/RealDigitalProjects/Part1_DigitalLogic/project_5/project_5.gen/sources_1/bd/design_1/ip/design_1_mux_0_0/design_1_mux_0_0_stub.v
// Design      : design_1_mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_mux_0_0,mux,{}" *) (* CORE_GENERATION_INFO = "design_1_mux_0_0,mux,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mux,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "mux,Vivado 2025.1" *) 
module design_1_mux_0_0(I, S, Y)
/* synthesis syn_black_box black_box_pad_pin="I[3:0],S[1:0],Y" */;
  input [3:0]I;
  input [1:0]S;
  output Y;
endmodule
