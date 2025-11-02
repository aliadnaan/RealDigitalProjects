// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sun Nov  2 02:53:42 2025
// Host        : debian running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/adnaan/Projects/RealDigitalProjects/Part1_DigitalLogic/project_5/project_5.gen/sources_1/bd/transmission_block/ip/transmission_block_counter_0_0/transmission_block_counter_0_0_stub.v
// Design      : transmission_block_counter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "transmission_block_counter_0_0,counter,{}" *) (* CORE_GENERATION_INFO = "transmission_block_counter_0_0,counter,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=counter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "counter,Vivado 2025.1" *) 
module transmission_block_counter_0_0(clk, B)
/* synthesis syn_black_box black_box_pad_pin="B[2:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmission_block_clk_0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  output [2:0]B;
endmodule
