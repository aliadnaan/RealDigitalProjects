-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sun Nov  2 02:53:42 2025
-- Host        : debian running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/adnaan/Projects/RealDigitalProjects/Part1_DigitalLogic/project_5/project_5.gen/sources_1/bd/transmission_block/ip/transmission_block_demux_1to8_0_0/transmission_block_demux_1to8_0_0_stub.vhdl
-- Design      : transmission_block_demux_1to8_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity transmission_block_demux_1to8_0_0 is
  Port ( 
    EN : in STD_LOGIC;
    I : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Y : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmission_block_demux_1to8_0_0 : entity is "transmission_block_demux_1to8_0_0,demux_1to8,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of transmission_block_demux_1to8_0_0 : entity is "transmission_block_demux_1to8_0_0,demux_1to8,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=demux_1to8,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of transmission_block_demux_1to8_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of transmission_block_demux_1to8_0_0 : entity is "module_ref";
end transmission_block_demux_1to8_0_0;

architecture stub of transmission_block_demux_1to8_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "EN,I[2:0],Y[7:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "demux_1to8,Vivado 2025.1";
begin
end;
