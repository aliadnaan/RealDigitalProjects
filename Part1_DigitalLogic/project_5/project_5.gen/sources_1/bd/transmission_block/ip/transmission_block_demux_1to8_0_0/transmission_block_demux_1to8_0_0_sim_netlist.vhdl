-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sun Nov  2 02:53:42 2025
-- Host        : debian running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/adnaan/Projects/RealDigitalProjects/Part1_DigitalLogic/project_5/project_5.gen/sources_1/bd/transmission_block/ip/transmission_block_demux_1to8_0_0/transmission_block_demux_1to8_0_0_sim_netlist.vhdl
-- Design      : transmission_block_demux_1to8_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmission_block_demux_1to8_0_0_demux_1to8 is
  port (
    Y : out STD_LOGIC_VECTOR ( 3 downto 0 );
    I : in STD_LOGIC_VECTOR ( 2 downto 0 );
    EN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of transmission_block_demux_1to8_0_0_demux_1to8 : entity is "demux_1to8";
end transmission_block_demux_1to8_0_0_demux_1to8;

architecture STRUCTURE of transmission_block_demux_1to8_0_0_demux_1to8 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Y[4]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Y[5]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Y[6]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Y[7]_INST_0\ : label is "soft_lutpair0";
begin
\Y[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => I(2),
      I1 => I(1),
      I2 => EN,
      I3 => I(0),
      O => Y(0)
    );
\Y[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => I(2),
      I1 => I(1),
      I2 => I(0),
      I3 => EN,
      O => Y(1)
    );
\Y[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => I(2),
      I1 => EN,
      I2 => I(0),
      I3 => I(1),
      O => Y(2)
    );
\Y[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => I(2),
      I1 => I(0),
      I2 => EN,
      I3 => I(1),
      O => Y(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmission_block_demux_1to8_0_0 is
  port (
    EN : in STD_LOGIC;
    I : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Y : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of transmission_block_demux_1to8_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmission_block_demux_1to8_0_0 : entity is "transmission_block_demux_1to8_0_0,demux_1to8,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of transmission_block_demux_1to8_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of transmission_block_demux_1to8_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of transmission_block_demux_1to8_0_0 : entity is "demux_1to8,Vivado 2025.1";
end transmission_block_demux_1to8_0_0;

architecture STRUCTURE of transmission_block_demux_1to8_0_0 is
begin
\Y[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => I(1),
      I1 => EN,
      I2 => I(0),
      I3 => I(2),
      O => Y(0)
    );
\Y[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => I(1),
      I1 => I(0),
      I2 => EN,
      I3 => I(2),
      O => Y(1)
    );
\Y[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => EN,
      I1 => I(0),
      I2 => I(1),
      I3 => I(2),
      O => Y(2)
    );
\Y[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => I(0),
      I1 => EN,
      I2 => I(1),
      I3 => I(2),
      O => Y(3)
    );
inst: entity work.transmission_block_demux_1to8_0_0_demux_1to8
     port map (
      EN => EN,
      I(2 downto 0) => I(2 downto 0),
      Y(3 downto 0) => Y(7 downto 4)
    );
end STRUCTURE;
