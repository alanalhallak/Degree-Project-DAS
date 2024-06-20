--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Mon Jun  3 18:11:08 2024
--Host        : DESKTOP-JD9MBO3 running 64-bit major release  (build 9200)
--Command     : generate_target DWT_bd_wrapper.bd
--Design      : DWT_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DWT_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    signal_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    signal_out : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
end DWT_bd_wrapper;

architecture STRUCTURE of DWT_bd_wrapper is
  component DWT_bd is
  port (
    clk : in STD_LOGIC;
    signal_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    signal_out : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  end component DWT_bd;
begin
DWT_bd_i: component DWT_bd
     port map (
      clk => clk,
      signal_in(17 downto 0) => signal_in(17 downto 0),
      signal_out(17 downto 0) => signal_out(17 downto 0)
    );
end STRUCTURE;
