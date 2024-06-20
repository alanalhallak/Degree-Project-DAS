-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu May  9 15:54:20 2024
-- Host        : Predator-Offset running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Thesis/DAS_v2/DAS/DAS.gen/sources_1/bd/Jupyter/ip/Jupyter_edge_detector_0_0/Jupyter_edge_detector_0_0_sim_netlist.vhdl
-- Design      : Jupyter_edge_detector_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Jupyter_edge_detector_0_0_edge_detector is
  port (
    pl_gpio : out STD_LOGIC;
    clk : in STD_LOGIC;
    ps_gpio : in STD_LOGIC;
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Jupyter_edge_detector_0_0_edge_detector : entity is "edge_detector";
end Jupyter_edge_detector_0_0_edge_detector;

architecture STRUCTURE of Jupyter_edge_detector_0_0_edge_detector is
  signal data0 : STD_LOGIC_VECTOR ( 26 downto 1 );
  signal \delay_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \delay_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \delay_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \delay_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \delay_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \delay_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \delay_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \delay_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \delay_counter0_carry__2_n_0\ : STD_LOGIC;
  signal \delay_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \delay_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \delay_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \delay_counter0_carry__3_n_0\ : STD_LOGIC;
  signal \delay_counter0_carry__3_n_1\ : STD_LOGIC;
  signal \delay_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \delay_counter0_carry__3_n_3\ : STD_LOGIC;
  signal \delay_counter0_carry__4_n_0\ : STD_LOGIC;
  signal \delay_counter0_carry__4_n_1\ : STD_LOGIC;
  signal \delay_counter0_carry__4_n_2\ : STD_LOGIC;
  signal \delay_counter0_carry__4_n_3\ : STD_LOGIC;
  signal \delay_counter0_carry__5_n_3\ : STD_LOGIC;
  signal delay_counter0_carry_n_0 : STD_LOGIC;
  signal delay_counter0_carry_n_1 : STD_LOGIC;
  signal delay_counter0_carry_n_2 : STD_LOGIC;
  signal delay_counter0_carry_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \^pl_gpio\ : STD_LOGIC;
  signal pl_gpio_s_i_1_n_0 : STD_LOGIC;
  signal pl_gpio_s_i_2_n_0 : STD_LOGIC;
  signal pl_gpio_s_i_3_n_0 : STD_LOGIC;
  signal pl_gpio_s_i_4_n_0 : STD_LOGIC;
  signal pl_gpio_s_i_5_n_0 : STD_LOGIC;
  signal pl_gpio_s_i_6_n_0 : STD_LOGIC;
  signal pl_gpio_s_i_7_n_0 : STD_LOGIC;
  signal pl_gpio_s_i_8_n_0 : STD_LOGIC;
  signal pl_gpio_s_i_9_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \NLW_delay_counter0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_counter0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of delay_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_carry__5\ : label is 35;
begin
  pl_gpio <= \^pl_gpio\;
delay_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => delay_counter0_carry_n_0,
      CO(2) => delay_counter0_carry_n_1,
      CO(1) => delay_counter0_carry_n_2,
      CO(0) => delay_counter0_carry_n_3,
      CYINIT => sel0(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => sel0(4 downto 1)
    );
\delay_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => delay_counter0_carry_n_0,
      CO(3) => \delay_counter0_carry__0_n_0\,
      CO(2) => \delay_counter0_carry__0_n_1\,
      CO(1) => \delay_counter0_carry__0_n_2\,
      CO(0) => \delay_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => sel0(8 downto 5)
    );
\delay_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_counter0_carry__0_n_0\,
      CO(3) => \delay_counter0_carry__1_n_0\,
      CO(2) => \delay_counter0_carry__1_n_1\,
      CO(1) => \delay_counter0_carry__1_n_2\,
      CO(0) => \delay_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => sel0(12 downto 9)
    );
\delay_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_counter0_carry__1_n_0\,
      CO(3) => \delay_counter0_carry__2_n_0\,
      CO(2) => \delay_counter0_carry__2_n_1\,
      CO(1) => \delay_counter0_carry__2_n_2\,
      CO(0) => \delay_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => sel0(16 downto 13)
    );
\delay_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_counter0_carry__2_n_0\,
      CO(3) => \delay_counter0_carry__3_n_0\,
      CO(2) => \delay_counter0_carry__3_n_1\,
      CO(1) => \delay_counter0_carry__3_n_2\,
      CO(0) => \delay_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => sel0(20 downto 17)
    );
\delay_counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_counter0_carry__3_n_0\,
      CO(3) => \delay_counter0_carry__4_n_0\,
      CO(2) => \delay_counter0_carry__4_n_1\,
      CO(1) => \delay_counter0_carry__4_n_2\,
      CO(0) => \delay_counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => sel0(24 downto 21)
    );
\delay_counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_counter0_carry__4_n_0\,
      CO(3 downto 1) => \NLW_delay_counter0_carry__5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \delay_counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_delay_counter0_carry__5_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(26 downto 25),
      S(3 downto 2) => B"00",
      S(1 downto 0) => sel0(26 downto 25)
    );
\delay_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(0),
      I1 => ps_gpio,
      O => p_0_in(0)
    );
\delay_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(10),
      I4 => ps_gpio,
      O => p_0_in(10)
    );
\delay_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(11),
      I4 => ps_gpio,
      O => p_0_in(11)
    );
\delay_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(12),
      I4 => ps_gpio,
      O => p_0_in(12)
    );
\delay_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(13),
      I4 => ps_gpio,
      O => p_0_in(13)
    );
\delay_counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(14),
      I4 => ps_gpio,
      O => p_0_in(14)
    );
\delay_counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(15),
      I4 => ps_gpio,
      O => p_0_in(15)
    );
\delay_counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(16),
      I4 => ps_gpio,
      O => p_0_in(16)
    );
\delay_counter[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(17),
      I4 => ps_gpio,
      O => p_0_in(17)
    );
\delay_counter[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(18),
      I4 => ps_gpio,
      O => p_0_in(18)
    );
\delay_counter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(19),
      I4 => ps_gpio,
      O => p_0_in(19)
    );
\delay_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(1),
      I4 => ps_gpio,
      O => p_0_in(1)
    );
\delay_counter[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(20),
      I4 => ps_gpio,
      O => p_0_in(20)
    );
\delay_counter[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(21),
      I4 => ps_gpio,
      O => p_0_in(21)
    );
\delay_counter[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(22),
      I4 => ps_gpio,
      O => p_0_in(22)
    );
\delay_counter[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(23),
      I4 => ps_gpio,
      O => p_0_in(23)
    );
\delay_counter[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(24),
      I4 => ps_gpio,
      O => p_0_in(24)
    );
\delay_counter[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(25),
      I4 => ps_gpio,
      O => p_0_in(25)
    );
\delay_counter[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => ps_gpio,
      I1 => data0(26),
      I2 => pl_gpio_s_i_3_n_0,
      I3 => pl_gpio_s_i_4_n_0,
      I4 => pl_gpio_s_i_5_n_0,
      O => p_0_in(26)
    );
\delay_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(2),
      I4 => ps_gpio,
      O => p_0_in(2)
    );
\delay_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(3),
      I4 => ps_gpio,
      O => p_0_in(3)
    );
\delay_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(4),
      I4 => ps_gpio,
      O => p_0_in(4)
    );
\delay_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(5),
      I4 => ps_gpio,
      O => p_0_in(5)
    );
\delay_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(6),
      I4 => ps_gpio,
      O => p_0_in(6)
    );
\delay_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(7),
      I4 => ps_gpio,
      O => p_0_in(7)
    );
\delay_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(8),
      I4 => ps_gpio,
      O => p_0_in(8)
    );
\delay_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => pl_gpio_s_i_3_n_0,
      I1 => pl_gpio_s_i_4_n_0,
      I2 => pl_gpio_s_i_5_n_0,
      I3 => data0(9),
      I4 => ps_gpio,
      O => p_0_in(9)
    );
\delay_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(0),
      Q => sel0(0)
    );
\delay_counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(10),
      Q => sel0(10)
    );
\delay_counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(11),
      Q => sel0(11)
    );
\delay_counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(12),
      Q => sel0(12)
    );
\delay_counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(13),
      Q => sel0(13)
    );
\delay_counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(14),
      Q => sel0(14)
    );
\delay_counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(15),
      Q => sel0(15)
    );
\delay_counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(16),
      Q => sel0(16)
    );
\delay_counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(17),
      Q => sel0(17)
    );
\delay_counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(18),
      Q => sel0(18)
    );
\delay_counter_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(19),
      Q => sel0(19)
    );
\delay_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(1),
      Q => sel0(1)
    );
\delay_counter_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(20),
      Q => sel0(20)
    );
\delay_counter_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(21),
      Q => sel0(21)
    );
\delay_counter_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(22),
      Q => sel0(22)
    );
\delay_counter_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(23),
      Q => sel0(23)
    );
\delay_counter_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(24),
      Q => sel0(24)
    );
\delay_counter_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(25),
      Q => sel0(25)
    );
\delay_counter_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(26),
      Q => sel0(26)
    );
\delay_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(2),
      Q => sel0(2)
    );
\delay_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(3),
      Q => sel0(3)
    );
\delay_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(4),
      Q => sel0(4)
    );
\delay_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(5),
      Q => sel0(5)
    );
\delay_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(6),
      Q => sel0(6)
    );
\delay_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(7),
      Q => sel0(7)
    );
\delay_counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(8),
      Q => sel0(8)
    );
\delay_counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => p_0_in(9),
      Q => sel0(9)
    );
pl_gpio_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAA"
    )
        port map (
      I0 => ps_gpio,
      I1 => pl_gpio_s_i_3_n_0,
      I2 => pl_gpio_s_i_4_n_0,
      I3 => pl_gpio_s_i_5_n_0,
      I4 => \^pl_gpio\,
      O => pl_gpio_s_i_1_n_0
    );
pl_gpio_s_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => pl_gpio_s_i_2_n_0
    );
pl_gpio_s_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(13),
      I2 => sel0(16),
      I3 => sel0(18),
      I4 => pl_gpio_s_i_6_n_0,
      O => pl_gpio_s_i_3_n_0
    );
pl_gpio_s_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => sel0(8),
      I1 => sel0(20),
      I2 => sel0(3),
      I3 => sel0(15),
      I4 => pl_gpio_s_i_7_n_0,
      O => pl_gpio_s_i_4_n_0
    );
pl_gpio_s_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(22),
      I2 => sel0(4),
      I3 => pl_gpio_s_i_8_n_0,
      I4 => pl_gpio_s_i_9_n_0,
      O => pl_gpio_s_i_5_n_0
    );
pl_gpio_s_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => sel0(26),
      I1 => sel0(25),
      I2 => sel0(19),
      I3 => sel0(12),
      O => pl_gpio_s_i_6_n_0
    );
pl_gpio_s_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => sel0(23),
      I1 => sel0(1),
      I2 => sel0(21),
      I3 => sel0(5),
      O => pl_gpio_s_i_7_n_0
    );
pl_gpio_s_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => sel0(24),
      I1 => sel0(14),
      I2 => sel0(7),
      I3 => sel0(17),
      O => pl_gpio_s_i_8_n_0
    );
pl_gpio_s_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => sel0(9),
      I1 => sel0(10),
      I2 => sel0(2),
      I3 => sel0(11),
      O => pl_gpio_s_i_9_n_0
    );
pl_gpio_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => pl_gpio_s_i_2_n_0,
      D => pl_gpio_s_i_1_n_0,
      Q => \^pl_gpio\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Jupyter_edge_detector_0_0 is
  port (
    reset_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    ps_gpio : in STD_LOGIC;
    pl_gpio : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Jupyter_edge_detector_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Jupyter_edge_detector_0_0 : entity is "Jupyter_edge_detector_0_0,edge_detector,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Jupyter_edge_detector_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Jupyter_edge_detector_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Jupyter_edge_detector_0_0 : entity is "edge_detector,Vivado 2023.2";
end Jupyter_edge_detector_0_0;

architecture STRUCTURE of Jupyter_edge_detector_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.Jupyter_edge_detector_0_0_edge_detector
     port map (
      clk => clk,
      pl_gpio => pl_gpio,
      ps_gpio => ps_gpio,
      reset_n => reset_n
    );
end STRUCTURE;
