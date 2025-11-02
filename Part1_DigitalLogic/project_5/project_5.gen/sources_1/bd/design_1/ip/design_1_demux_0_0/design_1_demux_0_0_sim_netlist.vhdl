-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sun Nov  2 01:18:59 2025
-- Host        : debian running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/adnaan/Projects/RealDigitalProjects/Part1_DigitalLogic/project_5/project_5.gen/sources_1/bd/design_1/ip/design_1_demux_0_0/design_1_demux_0_0_sim_netlist.vhdl
-- Design      : design_1_demux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_demux_0_0_demux is
  port (
    Y : out STD_LOGIC_VECTOR ( 2 downto 0 );
    EN : in STD_LOGIC;
    I : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_demux_0_0_demux : entity is "demux";
end design_1_demux_0_0_demux;

architecture STRUCTURE of design_1_demux_0_0_demux is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Y[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Y[2]_INST_0\ : label is "soft_lutpair0";
begin
\Y[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => EN,
      I1 => I(0),
      I2 => I(1),
      O => Y(0)
    );
\Y[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => I(0),
      I1 => EN,
      I2 => I(1),
      O => Y(1)
    );
\Y[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => I(1),
      I1 => I(0),
      I2 => EN,
      O => Y(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_demux_0_0 is
  port (
    EN : in STD_LOGIC;
    I : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Y : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_demux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_demux_0_0 : entity is "design_1_demux_0_0,demux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_demux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_demux_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_demux_0_0 : entity is "demux,Vivado 2025.1";
end design_1_demux_0_0;

architecture STRUCTURE of design_1_demux_0_0 is
begin
\Y[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => I(0),
      I1 => EN,
      I2 => I(1),
      O => Y(1)
    );
inst: entity work.design_1_demux_0_0_demux
     port map (
      EN => EN,
      I(1 downto 0) => I(1 downto 0),
      Y(2 downto 1) => Y(3 downto 2),
      Y(0) => Y(0)
    );
end STRUCTURE;
