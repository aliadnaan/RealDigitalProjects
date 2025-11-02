// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sun Nov  2 02:53:42 2025
// Host        : debian running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/adnaan/Projects/RealDigitalProjects/Part1_DigitalLogic/project_5/project_5.gen/sources_1/bd/transmission_block/ip/transmission_block_mux_8to1_0_0/transmission_block_mux_8to1_0_0_sim_netlist.v
// Design      : transmission_block_mux_8to1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "transmission_block_mux_8to1_0_0,mux_8to1,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mux_8to1,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module transmission_block_mux_8to1_0_0
   (I,
    S,
    Y);
  input [7:0]I;
  input [2:0]S;
  output Y;

  wire [7:0]I;
  wire [2:0]S;
  wire Y;

  transmission_block_mux_8to1_0_0_mux_8to1 inst
       (.I(I),
        .S(S),
        .Y(Y));
endmodule

(* ORIG_REF_NAME = "mux_8to1" *) 
module transmission_block_mux_8to1_0_0_mux_8to1
   (Y,
    S,
    I);
  output Y;
  input [2:0]S;
  input [7:0]I;

  wire [7:0]I;
  wire [2:0]S;
  wire Y;
  wire Y_INST_0_i_1_n_0;
  wire Y_INST_0_i_2_n_0;

  MUXF7 Y_INST_0
       (.I0(Y_INST_0_i_1_n_0),
        .I1(Y_INST_0_i_2_n_0),
        .O(Y),
        .S(S[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Y_INST_0_i_1
       (.I0(I[3]),
        .I1(I[2]),
        .I2(S[1]),
        .I3(I[1]),
        .I4(S[0]),
        .I5(I[0]),
        .O(Y_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Y_INST_0_i_2
       (.I0(I[7]),
        .I1(I[6]),
        .I2(S[1]),
        .I3(I[5]),
        .I4(S[0]),
        .I5(I[4]),
        .O(Y_INST_0_i_2_n_0));
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
