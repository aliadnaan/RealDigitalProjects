-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sun Nov  2 02:53:42 2025
-- Host        : debian running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/adnaan/Projects/RealDigitalProjects/Part1_DigitalLogic/project_5/project_5.gen/sources_1/bd/transmission_block/ip/transmission_block_mux_8to1_0_0/transmission_block_mux_8to1_0_0_sim_netlist.vhdl
-- Design      : transmission_block_mux_8to1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmission_block_mux_8to1_0_0_mux_8to1 is
  port (
    Y : out STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of transmission_block_mux_8to1_0_0_mux_8to1 : entity is "mux_8to1";
end transmission_block_mux_8to1_0_0_mux_8to1;

architecture STRUCTURE of transmission_block_mux_8to1_0_0_mux_8to1 is
  signal Y_INST_0_i_1_n_0 : STD_LOGIC;
  signal Y_INST_0_i_2_n_0 : STD_LOGIC;
begin
Y_INST_0: unisim.vcomponents.MUXF7
     port map (
      I0 => Y_INST_0_i_1_n_0,
      I1 => Y_INST_0_i_2_n_0,
      O => Y,
      S => S(2)
    );
Y_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I(3),
      I1 => I(2),
      I2 => S(1),
      I3 => I(1),
      I4 => S(0),
      I5 => I(0),
      O => Y_INST_0_i_1_n_0
    );
Y_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I(7),
      I1 => I(6),
      I2 => S(1),
      I3 => I(5),
      I4 => S(0),
      I5 => I(4),
      O => Y_INST_0_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmission_block_mux_8to1_0_0 is
  port (
    I : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Y : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of transmission_block_mux_8to1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmission_block_mux_8to1_0_0 : entity is "transmission_block_mux_8to1_0_0,mux_8to1,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of transmission_block_mux_8to1_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of transmission_block_mux_8to1_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of transmission_block_mux_8to1_0_0 : entity is "mux_8to1,Vivado 2025.1";
end transmission_block_mux_8to1_0_0;

architecture STRUCTURE of transmission_block_mux_8to1_0_0 is
begin
inst: entity work.transmission_block_mux_8to1_0_0_mux_8to1
     port map (
      I(7 downto 0) => I(7 downto 0),
      S(2 downto 0) => S(2 downto 0),
      Y => Y
    );
end STRUCTURE;
