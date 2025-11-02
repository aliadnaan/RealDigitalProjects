// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sun Nov  2 02:53:42 2025
// Host        : debian running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/adnaan/Projects/RealDigitalProjects/Part1_DigitalLogic/project_5/project_5.gen/sources_1/bd/transmission_block/ip/transmission_block_demux_1to8_0_0/transmission_block_demux_1to8_0_0_sim_netlist.v
// Design      : transmission_block_demux_1to8_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "transmission_block_demux_1to8_0_0,demux_1to8,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "demux_1to8,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module transmission_block_demux_1to8_0_0
   (EN,
    I,
    Y);
  input EN;
  input [2:0]I;
  output [7:0]Y;

  wire EN;
  wire [2:0]I;
  wire [7:0]Y;

  LUT4 #(
    .INIT(16'h0004)) 
    \Y[0]_INST_0 
       (.I0(I[1]),
        .I1(EN),
        .I2(I[0]),
        .I3(I[2]),
        .O(Y[0]));
  LUT4 #(
    .INIT(16'h0040)) 
    \Y[1]_INST_0 
       (.I0(I[1]),
        .I1(I[0]),
        .I2(EN),
        .I3(I[2]),
        .O(Y[1]));
  LUT4 #(
    .INIT(16'h0020)) 
    \Y[2]_INST_0 
       (.I0(EN),
        .I1(I[0]),
        .I2(I[1]),
        .I3(I[2]),
        .O(Y[2]));
  LUT4 #(
    .INIT(16'h0080)) 
    \Y[3]_INST_0 
       (.I0(I[0]),
        .I1(EN),
        .I2(I[1]),
        .I3(I[2]),
        .O(Y[3]));
  transmission_block_demux_1to8_0_0_demux_1to8 inst
       (.EN(EN),
        .I(I),
        .Y(Y[7:4]));
endmodule

(* ORIG_REF_NAME = "demux_1to8" *) 
module transmission_block_demux_1to8_0_0_demux_1to8
   (Y,
    I,
    EN);
  output [3:0]Y;
  input [2:0]I;
  input EN;

  wire EN;
  wire [2:0]I;
  wire [3:0]Y;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \Y[4]_INST_0 
       (.I0(I[2]),
        .I1(I[1]),
        .I2(EN),
        .I3(I[0]),
        .O(Y[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \Y[5]_INST_0 
       (.I0(I[2]),
        .I1(I[1]),
        .I2(I[0]),
        .I3(EN),
        .O(Y[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \Y[6]_INST_0 
       (.I0(I[2]),
        .I1(EN),
        .I2(I[0]),
        .I3(I[1]),
        .O(Y[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \Y[7]_INST_0 
       (.I0(I[2]),
        .I1(I[0]),
        .I2(EN),
        .I3(I[1]),
        .O(Y[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
