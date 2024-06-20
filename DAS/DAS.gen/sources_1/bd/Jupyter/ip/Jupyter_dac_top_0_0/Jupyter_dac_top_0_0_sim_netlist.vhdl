-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon May 13 16:01:46 2024
-- Host        : Predator-Offset running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Thesis/DAS_v2/DAS/DAS.gen/sources_1/bd/Jupyter/ip/Jupyter_dac_top_0_0/Jupyter_dac_top_0_0_sim_netlist.vhdl
-- Design      : Jupyter_dac_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Jupyter_dac_top_0_0_controller is
  port (
    en_n : out STD_LOGIC;
    ldac_n : out STD_LOGIC;
    dac_tx_ena_signal : out STD_LOGIC;
    reset_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    busy_signal : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Jupyter_dac_top_0_0_controller : entity is "controller";
end Jupyter_dac_top_0_0_controller;

architecture STRUCTURE of Jupyter_dac_top_0_0_controller is
  signal dac_tx_ena_i_1_n_0 : STD_LOGIC;
  signal en_n_i_1_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of \^state\ : signal is std.standard.true;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of state : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \state_reg[0]\ : label is "gen_read_init:00,gen_2_dac:01,gen_read:10,wait_dac:11";
  attribute KEEP : string;
  attribute KEEP of \state_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \state_reg[0]\ : label is "true";
  attribute FSM_ENCODED_STATES of \state_reg[1]\ : label is "gen_read_init:00,gen_2_dac:01,gen_read:10,wait_dac:11";
  attribute KEEP of \state_reg[1]\ : label is "yes";
  attribute mark_debug_string of \state_reg[1]\ : label is "true";
begin
dac_tx_ena_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      O => dac_tx_ena_i_1_n_0
    );
dac_tx_ena_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset_n,
      D => dac_tx_ena_i_1_n_0,
      Q => dac_tx_ena_signal,
      R => '0'
    );
en_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      O => en_n_i_1_n_0
    );
en_n_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset_n,
      D => en_n_i_1_n_0,
      Q => en_n,
      R => '0'
    );
state: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(0),
      I2 => busy_signal,
      O => \p_0_in__0\(1)
    );
\state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^state\(1),
      I1 => busy_signal,
      O => \state[0]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \state[0]_i_1_n_0\,
      Q => \^state\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \p_0_in__0\(1),
      Q => \^state\(1)
    );
update_output_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset_n,
      D => \^state\(1),
      Q => ldac_n,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Jupyter_dac_top_0_0_dac_data_entity is
  port (
    sys_clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    en_n : in STD_LOGIC;
    send_en : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Jupyter_dac_top_0_0_dac_data_entity : entity is "dac_data_entity";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of Jupyter_dac_top_0_0_dac_data_entity : entity is "soft";
end Jupyter_dac_top_0_0_dac_data_entity;

architecture STRUCTURE of Jupyter_dac_top_0_0_dac_data_entity is
  signal address_counter : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of address_counter : signal is std.standard.true;
  signal address_counter0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal \address_counter[14]_i_3_n_0\ : STD_LOGIC;
  signal \address_counter[14]_i_4_n_0\ : STD_LOGIC;
  signal \address_counter[14]_i_5_n_0\ : STD_LOGIC;
  signal \address_counter[14]_i_6_n_0\ : STD_LOGIC;
  signal \address_counter_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \address_counter_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \address_counter_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \address_counter_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \address_counter_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \address_counter_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \address_counter_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \address_counter_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \address_counter_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \address_counter_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \address_counter_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \address_counter_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal data_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of data_reg : signal is std.standard.true;
  signal \data_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_15_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_17_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_18_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_19_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_20_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_21_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_22_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_23_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_24_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_25_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_26_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_10_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_15_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_16_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_17_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_18_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_19_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_20_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_21_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_22_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_7_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_8_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_10_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_11_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_12_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_13_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_15_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_16_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_17_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_18_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_19_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_7_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_8_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_10_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_11_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_12_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_13_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_14_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_7_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_8_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_9_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_12_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_15_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_16_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_17_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_18_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_19_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_20_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_21_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_22_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_23_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_24_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_25_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_26_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_15_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_16_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_17_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_18_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_19_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_20_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_21_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_22_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_23_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_24_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_25_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_26_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_15_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_16_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_17_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_18_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_19_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_20_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_21_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_22_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_23_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_24_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_25_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_26_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_17_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_18_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_19_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_20_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_21_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_22_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_23_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_24_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_25_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_26_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_27_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_28_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_16_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_19_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_20_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_21_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_22_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_23_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_24_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_25_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_26_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_27_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_28_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_29_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_30_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_31_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_32_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_8_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_16_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_19_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_20_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_21_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_22_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_23_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_24_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_25_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_26_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_27_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_28_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_29_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_30_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_31_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_32_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_7_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_8_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_15_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_16_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_17_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_18_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_19_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_20_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_21_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_22_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_23_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_24_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_25_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_26_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_10_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_11_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_12_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_15_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_16_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_19_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_20_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_21_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_22_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_23_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_24_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_25_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_7_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_8_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_9_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_10_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_14_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_15_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_16_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_17_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_20_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_21_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_22_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_23_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_24_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_25_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_26_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_7_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_8_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_9_n_0\ : STD_LOGIC;
  signal \data_reg_reg[0]_C_n_0\ : STD_LOGIC;
  signal \data_reg_reg[0]_LDC_n_0\ : STD_LOGIC;
  signal \data_reg_reg[0]_P_n_0\ : STD_LOGIC;
  signal \data_reg_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \data_reg_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \data_reg_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \data_reg_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \data_reg_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \data_reg_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \data_reg_reg[10]_C_n_0\ : STD_LOGIC;
  signal \data_reg_reg[10]_LDC_n_0\ : STD_LOGIC;
  signal \data_reg_reg[10]_P_n_0\ : STD_LOGIC;
  signal \data_reg_reg[10]_i_11_n_0\ : STD_LOGIC;
  signal \data_reg_reg[10]_i_12_n_0\ : STD_LOGIC;
  signal \data_reg_reg[10]_i_13_n_0\ : STD_LOGIC;
  signal \data_reg_reg[10]_i_14_n_0\ : STD_LOGIC;
  signal \data_reg_reg[10]_i_9_n_0\ : STD_LOGIC;
  signal \data_reg_reg[11]_C_n_0\ : STD_LOGIC;
  signal \data_reg_reg[11]_LDC_n_0\ : STD_LOGIC;
  signal \data_reg_reg[11]_P_n_0\ : STD_LOGIC;
  signal \data_reg_reg[11]_i_14_n_0\ : STD_LOGIC;
  signal \data_reg_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg_reg[11]_i_9_n_0\ : STD_LOGIC;
  signal \data_reg_reg[12]_C_n_0\ : STD_LOGIC;
  signal \data_reg_reg[12]_LDC_n_0\ : STD_LOGIC;
  signal \data_reg_reg[12]_P_n_0\ : STD_LOGIC;
  signal \data_reg_reg[1]_C_n_0\ : STD_LOGIC;
  signal \data_reg_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \data_reg_reg[1]_P_n_0\ : STD_LOGIC;
  signal \data_reg_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \data_reg_reg[1]_i_11_n_0\ : STD_LOGIC;
  signal \data_reg_reg[1]_i_13_n_0\ : STD_LOGIC;
  signal \data_reg_reg[1]_i_14_n_0\ : STD_LOGIC;
  signal \data_reg_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \data_reg_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \data_reg_reg[2]_C_n_0\ : STD_LOGIC;
  signal \data_reg_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \data_reg_reg[2]_P_n_0\ : STD_LOGIC;
  signal \data_reg_reg[2]_i_10_n_0\ : STD_LOGIC;
  signal \data_reg_reg[2]_i_11_n_0\ : STD_LOGIC;
  signal \data_reg_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \data_reg_reg[2]_i_14_n_0\ : STD_LOGIC;
  signal \data_reg_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \data_reg_reg[2]_i_9_n_0\ : STD_LOGIC;
  signal \data_reg_reg[3]_C_n_0\ : STD_LOGIC;
  signal \data_reg_reg[3]_LDC_n_0\ : STD_LOGIC;
  signal \data_reg_reg[3]_P_n_0\ : STD_LOGIC;
  signal \data_reg_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \data_reg_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \data_reg_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \data_reg_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \data_reg_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \data_reg_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \data_reg_reg[4]_C_n_0\ : STD_LOGIC;
  signal \data_reg_reg[4]_LDC_n_0\ : STD_LOGIC;
  signal \data_reg_reg[4]_P_n_0\ : STD_LOGIC;
  signal \data_reg_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \data_reg_reg[4]_i_11_n_0\ : STD_LOGIC;
  signal \data_reg_reg[4]_i_12_n_0\ : STD_LOGIC;
  signal \data_reg_reg[4]_i_13_n_0\ : STD_LOGIC;
  signal \data_reg_reg[4]_i_14_n_0\ : STD_LOGIC;
  signal \data_reg_reg[4]_i_15_n_0\ : STD_LOGIC;
  signal \data_reg_reg[4]_i_16_n_0\ : STD_LOGIC;
  signal \data_reg_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \data_reg_reg[4]_i_9_n_0\ : STD_LOGIC;
  signal \data_reg_reg[5]_C_n_0\ : STD_LOGIC;
  signal \data_reg_reg[5]_LDC_n_0\ : STD_LOGIC;
  signal \data_reg_reg[5]_P_n_0\ : STD_LOGIC;
  signal \data_reg_reg[5]_i_10_n_0\ : STD_LOGIC;
  signal \data_reg_reg[5]_i_11_n_0\ : STD_LOGIC;
  signal \data_reg_reg[5]_i_12_n_0\ : STD_LOGIC;
  signal \data_reg_reg[5]_i_13_n_0\ : STD_LOGIC;
  signal \data_reg_reg[5]_i_14_n_0\ : STD_LOGIC;
  signal \data_reg_reg[5]_i_15_n_0\ : STD_LOGIC;
  signal \data_reg_reg[5]_i_17_n_0\ : STD_LOGIC;
  signal \data_reg_reg[5]_i_18_n_0\ : STD_LOGIC;
  signal \data_reg_reg[5]_i_9_n_0\ : STD_LOGIC;
  signal \data_reg_reg[6]_C_n_0\ : STD_LOGIC;
  signal \data_reg_reg[6]_LDC_n_0\ : STD_LOGIC;
  signal \data_reg_reg[6]_P_n_0\ : STD_LOGIC;
  signal \data_reg_reg[6]_i_10_n_0\ : STD_LOGIC;
  signal \data_reg_reg[6]_i_11_n_0\ : STD_LOGIC;
  signal \data_reg_reg[6]_i_12_n_0\ : STD_LOGIC;
  signal \data_reg_reg[6]_i_13_n_0\ : STD_LOGIC;
  signal \data_reg_reg[6]_i_14_n_0\ : STD_LOGIC;
  signal \data_reg_reg[6]_i_15_n_0\ : STD_LOGIC;
  signal \data_reg_reg[6]_i_17_n_0\ : STD_LOGIC;
  signal \data_reg_reg[6]_i_18_n_0\ : STD_LOGIC;
  signal \data_reg_reg[6]_i_9_n_0\ : STD_LOGIC;
  signal \data_reg_reg[7]_C_n_0\ : STD_LOGIC;
  signal \data_reg_reg[7]_LDC_n_0\ : STD_LOGIC;
  signal \data_reg_reg[7]_P_n_0\ : STD_LOGIC;
  signal \data_reg_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \data_reg_reg[7]_i_11_n_0\ : STD_LOGIC;
  signal \data_reg_reg[7]_i_12_n_0\ : STD_LOGIC;
  signal \data_reg_reg[7]_i_13_n_0\ : STD_LOGIC;
  signal \data_reg_reg[7]_i_14_n_0\ : STD_LOGIC;
  signal \data_reg_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \data_reg_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \data_reg_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \data_reg_reg[8]_C_n_0\ : STD_LOGIC;
  signal \data_reg_reg[8]_LDC_n_0\ : STD_LOGIC;
  signal \data_reg_reg[8]_P_n_0\ : STD_LOGIC;
  signal \data_reg_reg[8]_i_13_n_0\ : STD_LOGIC;
  signal \data_reg_reg[8]_i_14_n_0\ : STD_LOGIC;
  signal \data_reg_reg[8]_i_17_n_0\ : STD_LOGIC;
  signal \data_reg_reg[8]_i_18_n_0\ : STD_LOGIC;
  signal \data_reg_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg_reg[9]_C_n_0\ : STD_LOGIC;
  signal \data_reg_reg[9]_LDC_n_0\ : STD_LOGIC;
  signal \data_reg_reg[9]_P_n_0\ : STD_LOGIC;
  signal \data_reg_reg[9]_i_11_n_0\ : STD_LOGIC;
  signal \data_reg_reg[9]_i_12_n_0\ : STD_LOGIC;
  signal \data_reg_reg[9]_i_13_n_0\ : STD_LOGIC;
  signal \data_reg_reg[9]_i_18_n_0\ : STD_LOGIC;
  signal \data_reg_reg[9]_i_19_n_0\ : STD_LOGIC;
  signal \data_reg_reg[9]_i_5_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal send_en_clk_rise : STD_LOGIC;
  attribute MARK_DEBUG of send_en_clk_rise : signal is std.standard.true;
  signal send_en_detected : STD_LOGIC;
  attribute MARK_DEBUG of send_en_detected : signal is std.standard.true;
  signal send_en_detected_i_1_n_0 : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal state_reg_n_0 : STD_LOGIC;
  signal \NLW_address_counter_reg[13]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_address_counter_reg[13]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_data_reg_reg[0]_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_reg_reg[10]_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_reg_reg[11]_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_reg_reg[12]_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_reg_reg[1]_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_reg_reg[2]_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_reg_reg[3]_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_reg_reg[4]_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_reg_reg[5]_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_reg_reg[6]_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_reg_reg[7]_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_reg_reg[8]_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_reg_reg[9]_Q_UNCONNECTED\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \address_counter_reg[0]\ : label is "yes";
  attribute KEEP of \address_counter_reg[10]\ : label is "yes";
  attribute KEEP of \address_counter_reg[11]\ : label is "yes";
  attribute KEEP of \address_counter_reg[12]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \address_counter_reg[12]_i_2\ : label is 35;
  attribute KEEP of \address_counter_reg[13]\ : label is "yes";
  attribute ADDER_THRESHOLD of \address_counter_reg[13]_i_2\ : label is 35;
  attribute KEEP of \address_counter_reg[14]\ : label is "yes";
  attribute KEEP of \address_counter_reg[1]\ : label is "yes";
  attribute KEEP of \address_counter_reg[2]\ : label is "yes";
  attribute KEEP of \address_counter_reg[3]\ : label is "yes";
  attribute KEEP of \address_counter_reg[4]\ : label is "yes";
  attribute ADDER_THRESHOLD of \address_counter_reg[4]_i_2\ : label is 35;
  attribute KEEP of \address_counter_reg[5]\ : label is "yes";
  attribute KEEP of \address_counter_reg[6]\ : label is "yes";
  attribute KEEP of \address_counter_reg[7]\ : label is "yes";
  attribute KEEP of \address_counter_reg[8]\ : label is "yes";
  attribute ADDER_THRESHOLD of \address_counter_reg[8]_i_2\ : label is 35;
  attribute KEEP of \address_counter_reg[9]\ : label is "yes";
  attribute KEEP of \data_reg_reg[0]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \data_reg_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \data_reg_reg[0]_LDC\ : label is "VCC:GE";
  attribute KEEP of \data_reg_reg[10]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \data_reg_reg[10]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg_reg[10]_LDC\ : label is "VCC:GE";
  attribute KEEP of \data_reg_reg[11]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \data_reg_reg[11]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg_reg[11]_LDC\ : label is "VCC:GE";
  attribute KEEP of \data_reg_reg[12]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \data_reg_reg[12]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg_reg[12]_LDC\ : label is "VCC:GE";
  attribute KEEP of \data_reg_reg[13]\ : label is "yes";
  attribute KEEP of \data_reg_reg[14]\ : label is "yes";
  attribute KEEP of \data_reg_reg[15]\ : label is "yes";
  attribute KEEP of \data_reg_reg[1]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \data_reg_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg_reg[1]_LDC\ : label is "VCC:GE";
  attribute KEEP of \data_reg_reg[2]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \data_reg_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg_reg[2]_LDC\ : label is "VCC:GE";
  attribute KEEP of \data_reg_reg[3]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \data_reg_reg[3]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg_reg[3]_LDC\ : label is "VCC:GE";
  attribute KEEP of \data_reg_reg[4]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \data_reg_reg[4]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg_reg[4]_LDC\ : label is "VCC:GE";
  attribute KEEP of \data_reg_reg[5]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \data_reg_reg[5]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg_reg[5]_LDC\ : label is "VCC:GE";
  attribute KEEP of \data_reg_reg[6]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \data_reg_reg[6]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg_reg[6]_LDC\ : label is "VCC:GE";
  attribute KEEP of \data_reg_reg[7]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \data_reg_reg[7]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg_reg[7]_LDC\ : label is "VCC:GE";
  attribute KEEP of \data_reg_reg[8]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \data_reg_reg[8]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg_reg[8]_LDC\ : label is "VCC:GE";
  attribute KEEP of \data_reg_reg[9]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \data_reg_reg[9]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg_reg[9]_LDC\ : label is "VCC:GE";
  attribute KEEP of send_en_detected_reg : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of send_en_detected_reg : label is "true";
begin
  data_out(15 downto 0) <= data_reg(15 downto 0);
\address_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => address_counter(0),
      I2 => \address_counter[14]_i_3_n_0\,
      I3 => en_n,
      O => p_1_in(0)
    );
\address_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888A808"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => address_counter(10),
      I2 => \address_counter[14]_i_3_n_0\,
      I3 => address_counter0(10),
      I4 => en_n,
      O => p_1_in(10)
    );
\address_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888A808"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => address_counter(11),
      I2 => \address_counter[14]_i_3_n_0\,
      I3 => address_counter0(11),
      I4 => en_n,
      O => p_1_in(11)
    );
\address_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888A808"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => address_counter(12),
      I2 => \address_counter[14]_i_3_n_0\,
      I3 => address_counter0(12),
      I4 => en_n,
      O => p_1_in(12)
    );
\address_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888A808"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => address_counter(13),
      I2 => \address_counter[14]_i_3_n_0\,
      I3 => address_counter0(13),
      I4 => en_n,
      O => p_1_in(13)
    );
\address_counter[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A020"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => \address_counter[14]_i_3_n_0\,
      I2 => address_counter(14),
      I3 => en_n,
      O => p_1_in(14)
    );
\address_counter[14]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \p_0_in__0\
    );
\address_counter[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DFFF"
    )
        port map (
      I0 => address_counter(0),
      I1 => \address_counter[14]_i_4_n_0\,
      I2 => \address_counter[14]_i_5_n_0\,
      I3 => \address_counter[14]_i_6_n_0\,
      I4 => address_counter(14),
      O => \address_counter[14]_i_3_n_0\
    );
\address_counter[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => address_counter(1),
      I1 => address_counter(4),
      I2 => address_counter(5),
      I3 => address_counter(2),
      I4 => address_counter(3),
      O => \address_counter[14]_i_4_n_0\
    );
\address_counter[14]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => address_counter(11),
      I1 => address_counter(10),
      I2 => address_counter(13),
      I3 => address_counter(12),
      O => \address_counter[14]_i_5_n_0\
    );
\address_counter[14]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => address_counter(7),
      I1 => address_counter(6),
      I2 => address_counter(9),
      I3 => address_counter(8),
      O => \address_counter[14]_i_6_n_0\
    );
\address_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888A808"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => address_counter(1),
      I2 => \address_counter[14]_i_3_n_0\,
      I3 => address_counter0(1),
      I4 => en_n,
      O => p_1_in(1)
    );
\address_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888A808"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => address_counter(2),
      I2 => \address_counter[14]_i_3_n_0\,
      I3 => address_counter0(2),
      I4 => en_n,
      O => p_1_in(2)
    );
\address_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888A808"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => address_counter(3),
      I2 => \address_counter[14]_i_3_n_0\,
      I3 => address_counter0(3),
      I4 => en_n,
      O => p_1_in(3)
    );
\address_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888A808"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => address_counter(4),
      I2 => \address_counter[14]_i_3_n_0\,
      I3 => address_counter0(4),
      I4 => en_n,
      O => p_1_in(4)
    );
\address_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888A808"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => address_counter(5),
      I2 => \address_counter[14]_i_3_n_0\,
      I3 => address_counter0(5),
      I4 => en_n,
      O => p_1_in(5)
    );
\address_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888A808"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => address_counter(6),
      I2 => \address_counter[14]_i_3_n_0\,
      I3 => address_counter0(6),
      I4 => en_n,
      O => p_1_in(6)
    );
\address_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888A808"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => address_counter(7),
      I2 => \address_counter[14]_i_3_n_0\,
      I3 => address_counter0(7),
      I4 => en_n,
      O => p_1_in(7)
    );
\address_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888A808"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => address_counter(8),
      I2 => \address_counter[14]_i_3_n_0\,
      I3 => address_counter0(8),
      I4 => en_n,
      O => p_1_in(8)
    );
\address_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888A808"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => address_counter(9),
      I2 => \address_counter[14]_i_3_n_0\,
      I3 => address_counter0(9),
      I4 => en_n,
      O => p_1_in(9)
    );
\address_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_1_in(0),
      Q => address_counter(0)
    );
\address_counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_1_in(10),
      Q => address_counter(10)
    );
\address_counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_1_in(11),
      Q => address_counter(11)
    );
\address_counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_1_in(12),
      Q => address_counter(12)
    );
\address_counter_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_counter_reg[8]_i_2_n_0\,
      CO(3) => \address_counter_reg[12]_i_2_n_0\,
      CO(2) => \address_counter_reg[12]_i_2_n_1\,
      CO(1) => \address_counter_reg[12]_i_2_n_2\,
      CO(0) => \address_counter_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => address_counter0(12 downto 9),
      S(3 downto 0) => address_counter(12 downto 9)
    );
\address_counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_1_in(13),
      Q => address_counter(13)
    );
\address_counter_reg[13]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_counter_reg[12]_i_2_n_0\,
      CO(3 downto 0) => \NLW_address_counter_reg[13]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_address_counter_reg[13]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => address_counter0(13),
      S(3 downto 1) => B"000",
      S(0) => address_counter(13)
    );
\address_counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_1_in(14),
      Q => address_counter(14)
    );
\address_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_1_in(1),
      Q => address_counter(1)
    );
\address_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_1_in(2),
      Q => address_counter(2)
    );
\address_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_1_in(3),
      Q => address_counter(3)
    );
\address_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_1_in(4),
      Q => address_counter(4)
    );
\address_counter_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \address_counter_reg[4]_i_2_n_0\,
      CO(2) => \address_counter_reg[4]_i_2_n_1\,
      CO(1) => \address_counter_reg[4]_i_2_n_2\,
      CO(0) => \address_counter_reg[4]_i_2_n_3\,
      CYINIT => address_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => address_counter0(4 downto 1),
      S(3 downto 0) => address_counter(4 downto 1)
    );
\address_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_1_in(5),
      Q => address_counter(5)
    );
\address_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_1_in(6),
      Q => address_counter(6)
    );
\address_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_1_in(7),
      Q => address_counter(7)
    );
\address_counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_1_in(8),
      Q => address_counter(8)
    );
\address_counter_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_counter_reg[4]_i_2_n_0\,
      CO(3) => \address_counter_reg[8]_i_2_n_0\,
      CO(2) => \address_counter_reg[8]_i_2_n_1\,
      CO(1) => \address_counter_reg[8]_i_2_n_2\,
      CO(0) => \address_counter_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => address_counter0(8 downto 5),
      S(3 downto 0) => address_counter(8 downto 5)
    );
\address_counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_1_in(9),
      Q => address_counter(9)
    );
\data_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080BF80"
    )
        port map (
      I0 => data_reg(0),
      I1 => en_n,
      I2 => state_reg_n_0,
      I3 => \data_reg[0]_i_4_n_0\,
      I4 => address_counter(13),
      O => p_2_in(0)
    );
\data_reg[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0405505054224430"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[0]_i_12_n_0\
    );
\data_reg[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5C17C557EEDDF6E4"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(1),
      I3 => address_counter(0),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[0]_i_15_n_0\
    );
\data_reg[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3001C82C2E9D7BB"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(3),
      I5 => address_counter(1),
      O => \data_reg[0]_i_16_n_0\
    );
\data_reg[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D31C83D788BF2A22"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[0]_i_17_n_0\
    );
\data_reg[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"83FE41CA33259808"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[0]_i_18_n_0\
    );
\data_reg[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A619CAC91D32F25"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[0]_i_19_n_0\
    );
\data_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFEF"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg_reg[0]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[0]_i_2_n_0\
    );
\data_reg[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05767B7B8A89FC0A"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[0]_i_20_n_0\
    );
\data_reg[0]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50118B0E924E4406"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[0]_i_21_n_0\
    );
\data_reg[0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6777E96A822CBF55"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[0]_i_22_n_0\
    );
\data_reg[0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6B6189F1B6C9224A"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(3),
      O => \data_reg[0]_i_23_n_0\
    );
\data_reg[0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C39566735177C198"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[0]_i_24_n_0\
    );
\data_reg[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8F645429199FB88"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[0]_i_25_n_0\
    );
\data_reg[0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D3F10CFF85FA098"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[0]_i_26_n_0\
    );
\data_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg_reg[0]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[0]_i_3_n_0\
    );
\data_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => address_counter(11),
      I1 => \data_reg[0]_i_6_n_0\,
      I2 => address_counter(9),
      I3 => \data_reg[0]_i_7_n_0\,
      I4 => address_counter(10),
      I5 => address_counter(12),
      O => \data_reg[0]_i_4_n_0\
    );
\data_reg[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg_reg[0]_i_8_n_0\,
      I1 => \data_reg_reg[0]_i_9_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[0]_i_10_n_0\,
      I4 => address_counter(7),
      I5 => \data_reg_reg[0]_i_11_n_0\,
      O => \data_reg[0]_i_6_n_0\
    );
\data_reg[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => address_counter(6),
      I1 => \data_reg[0]_i_12_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[0]_i_13_n_0\,
      I4 => address_counter(7),
      I5 => \data_reg_reg[0]_i_14_n_0\,
      O => \data_reg[0]_i_7_n_0\
    );
\data_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080BF8080"
    )
        port map (
      I0 => data_reg(10),
      I1 => en_n,
      I2 => state_reg_n_0,
      I3 => address_counter(12),
      I4 => \data_reg[10]_i_4_n_0\,
      I5 => address_counter(13),
      O => p_2_in(10)
    );
\data_reg[10]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => address_counter(2),
      I1 => address_counter(3),
      O => \data_reg[10]_i_10_n_0\
    );
\data_reg[10]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEA2ABBABBB"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(3),
      O => \data_reg[10]_i_15_n_0\
    );
\data_reg[10]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFEFFA8FFAAFF"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(0),
      I2 => address_counter(1),
      I3 => address_counter(4),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[10]_i_16_n_0\
    );
\data_reg[10]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABFDF5F5F5"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(2),
      I2 => address_counter(3),
      I3 => address_counter(0),
      I4 => address_counter(1),
      I5 => address_counter(4),
      O => \data_reg[10]_i_17_n_0\
    );
\data_reg[10]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1838383800000000"
    )
        port map (
      I0 => address_counter(2),
      I1 => address_counter(3),
      I2 => address_counter(4),
      I3 => address_counter(0),
      I4 => address_counter(1),
      I5 => address_counter(5),
      O => \data_reg[10]_i_18_n_0\
    );
\data_reg[10]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000005541554"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(1),
      I2 => address_counter(2),
      I3 => address_counter(3),
      I4 => address_counter(0),
      I5 => address_counter(4),
      O => \data_reg[10]_i_19_n_0\
    );
\data_reg[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFEF"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg[10]_i_5_n_0\,
      I3 => address_counter(12),
      I4 => reset_n,
      O => \data_reg[10]_i_2_n_0\
    );
\data_reg[10]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000101017F7F7FFF"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(2),
      I2 => address_counter(3),
      I3 => address_counter(0),
      I4 => address_counter(1),
      I5 => address_counter(4),
      O => \data_reg[10]_i_20_n_0\
    );
\data_reg[10]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAA800000AAAAA"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(0),
      I2 => address_counter(1),
      I3 => address_counter(2),
      I4 => address_counter(3),
      I5 => address_counter(4),
      O => \data_reg[10]_i_21_n_0\
    );
\data_reg[10]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => address_counter(3),
      I1 => address_counter(4),
      I2 => address_counter(5),
      O => \data_reg[10]_i_22_n_0\
    );
\data_reg[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg[10]_i_5_n_0\,
      I3 => address_counter(12),
      I4 => reset_n,
      O => \data_reg[10]_i_3_n_0\
    );
\data_reg[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => address_counter(10),
      I1 => \data_reg[10]_i_6_n_0\,
      I2 => address_counter(8),
      I3 => address_counter(9),
      I4 => \data_reg[10]_i_7_n_0\,
      I5 => address_counter(11),
      O => \data_reg[10]_i_4_n_0\
    );
\data_reg[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \data_reg[10]_i_8_n_0\,
      I1 => address_counter(8),
      I2 => \data_reg_reg[10]_i_9_n_0\,
      I3 => address_counter(9),
      I4 => \data_reg[10]_i_6_n_0\,
      I5 => address_counter(10),
      O => \data_reg[10]_i_5_n_0\
    );
\data_reg[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0057FFFF00570000"
    )
        port map (
      I0 => address_counter(5),
      I1 => \data_reg[10]_i_10_n_0\,
      I2 => address_counter(4),
      I3 => address_counter(6),
      I4 => address_counter(7),
      I5 => \data_reg_reg[10]_i_11_n_0\,
      O => \data_reg[10]_i_6_n_0\
    );
\data_reg[10]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \data_reg_reg[10]_i_12_n_0\,
      I1 => \data_reg_reg[10]_i_13_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[10]_i_14_n_0\,
      I4 => address_counter(7),
      O => \data_reg[10]_i_7_n_0\
    );
\data_reg[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE00FE00000000"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(3),
      I3 => address_counter(6),
      I4 => \data_reg[10]_i_15_n_0\,
      I5 => address_counter(7),
      O => \data_reg[10]_i_8_n_0\
    );
\data_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFBFBFBF80"
    )
        port map (
      I0 => data_reg(11),
      I1 => en_n,
      I2 => state_reg_n_0,
      I3 => address_counter(12),
      I4 => \data_reg[11]_i_4_n_0\,
      I5 => address_counter(13),
      O => p_2_in(11)
    );
\data_reg[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30FF30FFBBCCBBFF"
    )
        port map (
      I0 => \data_reg[11]_i_16_n_0\,
      I1 => address_counter(6),
      I2 => \data_reg[11]_i_17_n_0\,
      I3 => address_counter(5),
      I4 => \data_reg[11]_i_18_n_0\,
      I5 => address_counter(4),
      O => \data_reg[11]_i_10_n_0\
    );
\data_reg[11]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(3),
      I2 => address_counter(2),
      I3 => address_counter(4),
      I4 => address_counter(6),
      O => \data_reg[11]_i_11_n_0\
    );
\data_reg[11]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3330303000000004"
    )
        port map (
      I0 => address_counter(1),
      I1 => address_counter(6),
      I2 => address_counter(4),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(5),
      O => \data_reg[11]_i_12_n_0\
    );
\data_reg[11]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAA00000000FFFF"
    )
        port map (
      I0 => address_counter(4),
      I1 => address_counter(1),
      I2 => address_counter(2),
      I3 => address_counter(3),
      I4 => address_counter(6),
      I5 => address_counter(5),
      O => \data_reg[11]_i_13_n_0\
    );
\data_reg[11]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFEFEFEEE"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(3),
      I2 => address_counter(2),
      I3 => address_counter(1),
      I4 => address_counter(0),
      I5 => address_counter(4),
      O => \data_reg[11]_i_15_n_0\
    );
\data_reg[11]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => address_counter(2),
      I1 => address_counter(1),
      I2 => address_counter(0),
      I3 => address_counter(3),
      O => \data_reg[11]_i_16_n_0\
    );
\data_reg[11]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => address_counter(3),
      I1 => address_counter(1),
      I2 => address_counter(2),
      I3 => address_counter(0),
      O => \data_reg[11]_i_17_n_0\
    );
\data_reg[11]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => address_counter(2),
      I1 => address_counter(3),
      O => \data_reg[11]_i_18_n_0\
    );
\data_reg[11]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => address_counter(4),
      I1 => address_counter(3),
      I2 => address_counter(5),
      O => \data_reg[11]_i_19_n_0\
    );
\data_reg[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg[11]_i_5_n_0\,
      I3 => address_counter(12),
      I4 => reset_n,
      O => \data_reg[11]_i_2_n_0\
    );
\data_reg[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg[11]_i_5_n_0\,
      I3 => address_counter(12),
      I4 => reset_n,
      O => \data_reg[11]_i_3_n_0\
    );
\data_reg[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFEAA"
    )
        port map (
      I0 => address_counter(10),
      I1 => \data_reg_reg[11]_i_6_n_0\,
      I2 => address_counter(8),
      I3 => address_counter(9),
      I4 => \data_reg[11]_i_7_n_0\,
      I5 => address_counter(11),
      O => \data_reg[11]_i_4_n_0\
    );
\data_reg[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE2CCE2"
    )
        port map (
      I0 => \data_reg[11]_i_8_n_0\,
      I1 => address_counter(8),
      I2 => \data_reg_reg[11]_i_9_n_0\,
      I3 => address_counter(9),
      I4 => \data_reg_reg[11]_i_6_n_0\,
      I5 => address_counter(10),
      O => \data_reg[11]_i_5_n_0\
    );
\data_reg[11]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \data_reg[11]_i_12_n_0\,
      I1 => \data_reg[11]_i_13_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[11]_i_14_n_0\,
      I4 => address_counter(7),
      O => \data_reg[11]_i_7_n_0\
    );
\data_reg[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF010001FFFFFFFF"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(3),
      I2 => address_counter(4),
      I3 => address_counter(6),
      I4 => \data_reg[11]_i_15_n_0\,
      I5 => address_counter(7),
      O => \data_reg[11]_i_8_n_0\
    );
\data_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080BF8080"
    )
        port map (
      I0 => data_reg(12),
      I1 => en_n,
      I2 => state_reg_n_0,
      I3 => address_counter(12),
      I4 => \data_reg[12]_i_4_n_0\,
      I5 => address_counter(13),
      O => p_2_in(12)
    );
\data_reg[12]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(0),
      I2 => \data_reg[12]_i_14_n_0\,
      I3 => address_counter(3),
      I4 => address_counter(4),
      I5 => address_counter(6),
      O => \data_reg[12]_i_10_n_0\
    );
\data_reg[12]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => address_counter(1),
      I1 => address_counter(2),
      I2 => address_counter(3),
      O => \data_reg[12]_i_11_n_0\
    );
\data_reg[12]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => address_counter(4),
      I1 => address_counter(3),
      I2 => address_counter(2),
      I3 => address_counter(1),
      I4 => address_counter(0),
      I5 => address_counter(5),
      O => \data_reg[12]_i_12_n_0\
    );
\data_reg[12]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_counter(2),
      I1 => address_counter(1),
      O => \data_reg[12]_i_13_n_0\
    );
\data_reg[12]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_counter(2),
      I1 => address_counter(1),
      O => \data_reg[12]_i_14_n_0\
    );
\data_reg[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFEF"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg[12]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[12]_i_2_n_0\
    );
\data_reg[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg[12]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[12]_i_3_n_0\
    );
\data_reg[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => address_counter(10),
      I1 => \data_reg[12]_i_6_n_0\,
      I2 => address_counter(8),
      I3 => address_counter(9),
      I4 => \data_reg[12]_i_7_n_0\,
      I5 => address_counter(11),
      O => \data_reg[12]_i_4_n_0\
    );
\data_reg[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3033300030883088"
    )
        port map (
      I0 => \data_reg[12]_i_8_n_0\,
      I1 => address_counter(9),
      I2 => \data_reg[12]_i_9_n_0\,
      I3 => address_counter(8),
      I4 => \data_reg[12]_i_10_n_0\,
      I5 => address_counter(7),
      O => \data_reg[12]_i_5_n_0\
    );
\data_reg[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => address_counter(6),
      I1 => address_counter(4),
      I2 => \data_reg[12]_i_11_n_0\,
      I3 => address_counter(0),
      I4 => address_counter(5),
      I5 => address_counter(7),
      O => \data_reg[12]_i_6_n_0\
    );
\data_reg[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \data_reg[12]_i_9_n_0\,
      I1 => address_counter(8),
      I2 => address_counter(6),
      I3 => \data_reg[12]_i_12_n_0\,
      I4 => address_counter(7),
      O => \data_reg[12]_i_7_n_0\
    );
\data_reg[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(0),
      I2 => \data_reg[12]_i_13_n_0\,
      I3 => address_counter(3),
      I4 => address_counter(4),
      I5 => address_counter(6),
      O => \data_reg[12]_i_8_n_0\
    );
\data_reg[12]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111555500000000"
    )
        port map (
      I0 => address_counter(6),
      I1 => address_counter(4),
      I2 => address_counter(2),
      I3 => address_counter(3),
      I4 => address_counter(5),
      I5 => address_counter(7),
      O => \data_reg[12]_i_9_n_0\
    );
\data_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => data_reg(13),
      I2 => en_n,
      O => p_2_in(13)
    );
\data_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => data_reg(14),
      I2 => en_n,
      O => p_2_in(14)
    );
\data_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => data_reg(15),
      I2 => en_n,
      O => p_2_in(15)
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080BF80"
    )
        port map (
      I0 => data_reg(1),
      I1 => en_n,
      I2 => state_reg_n_0,
      I3 => \data_reg[1]_i_4_n_0\,
      I4 => address_counter(13),
      O => p_2_in(1)
    );
\data_reg[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1510513210764555"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[1]_i_12_n_0\
    );
\data_reg[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E602019B9BB22810"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(3),
      I5 => address_counter(1),
      O => \data_reg[1]_i_15_n_0\
    );
\data_reg[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74D333D048EEB6AF"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[1]_i_16_n_0\
    );
\data_reg[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8D192E3A99CA1B87"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(3),
      I5 => address_counter(2),
      O => \data_reg[1]_i_17_n_0\
    );
\data_reg[1]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E6869F36715BDD04"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[1]_i_18_n_0\
    );
\data_reg[1]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45948DB0869B5E46"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[1]_i_19_n_0\
    );
\data_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFEF"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg_reg[1]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[1]_i_2_n_0\
    );
\data_reg[1]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AD0F3DACC5368E85"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[1]_i_20_n_0\
    );
\data_reg[1]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CD1B6EE4D40A5F02"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[1]_i_21_n_0\
    );
\data_reg[1]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F2D95CADA0A0562"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(0),
      I2 => address_counter(4),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[1]_i_22_n_0\
    );
\data_reg[1]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DA03D456D9C23A58"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[1]_i_23_n_0\
    );
\data_reg[1]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"137791A3141DA2E2"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(3),
      I5 => address_counter(2),
      O => \data_reg[1]_i_24_n_0\
    );
\data_reg[1]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"67CA73829DB192CA"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(1),
      I3 => address_counter(0),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[1]_i_25_n_0\
    );
\data_reg[1]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"764960D05078DB6C"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[1]_i_26_n_0\
    );
\data_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg_reg[1]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[1]_i_3_n_0\
    );
\data_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => address_counter(11),
      I1 => \data_reg[1]_i_6_n_0\,
      I2 => address_counter(9),
      I3 => \data_reg[1]_i_7_n_0\,
      I4 => address_counter(10),
      I5 => address_counter(12),
      O => \data_reg[1]_i_4_n_0\
    );
\data_reg[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg_reg[1]_i_8_n_0\,
      I1 => \data_reg_reg[1]_i_9_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[1]_i_10_n_0\,
      I4 => address_counter(7),
      I5 => \data_reg_reg[1]_i_11_n_0\,
      O => \data_reg[1]_i_6_n_0\
    );
\data_reg[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => address_counter(6),
      I1 => \data_reg[1]_i_12_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[1]_i_13_n_0\,
      I4 => address_counter(7),
      I5 => \data_reg_reg[1]_i_14_n_0\,
      O => \data_reg[1]_i_7_n_0\
    );
\data_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080BF80"
    )
        port map (
      I0 => data_reg(2),
      I1 => en_n,
      I2 => state_reg_n_0,
      I3 => \data_reg[2]_i_4_n_0\,
      I4 => address_counter(13),
      O => p_2_in(2)
    );
\data_reg[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4001543200556723"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(3),
      I5 => address_counter(1),
      O => \data_reg[2]_i_12_n_0\
    );
\data_reg[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5781CC2144A1C42"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[2]_i_15_n_0\
    );
\data_reg[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"76C9296E39C8A404"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[2]_i_16_n_0\
    );
\data_reg[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C89306A99CCF5C4"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[2]_i_17_n_0\
    );
\data_reg[2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C1F842440D549A1"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(3),
      I5 => address_counter(2),
      O => \data_reg[2]_i_18_n_0\
    );
\data_reg[2]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B378A8ABF4338582"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[2]_i_19_n_0\
    );
\data_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFEF"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg_reg[2]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[2]_i_2_n_0\
    );
\data_reg[2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05E836B767BD0CAC"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(1),
      I3 => address_counter(0),
      I4 => address_counter(3),
      I5 => address_counter(2),
      O => \data_reg[2]_i_20_n_0\
    );
\data_reg[2]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FD2946B9E613A0"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[2]_i_21_n_0\
    );
\data_reg[2]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02EFA7421512C560"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(0),
      I2 => address_counter(4),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[2]_i_22_n_0\
    );
\data_reg[2]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2319068C48F3347"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[2]_i_23_n_0\
    );
\data_reg[2]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C080C5814BF26EA"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[2]_i_24_n_0\
    );
\data_reg[2]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"64B544A0CC95E783"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(3),
      I5 => address_counter(2),
      O => \data_reg[2]_i_25_n_0\
    );
\data_reg[2]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F9A4C10FDB36F3D"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[2]_i_26_n_0\
    );
\data_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg_reg[2]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[2]_i_3_n_0\
    );
\data_reg[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => address_counter(11),
      I1 => \data_reg[2]_i_6_n_0\,
      I2 => address_counter(9),
      I3 => \data_reg[2]_i_7_n_0\,
      I4 => address_counter(10),
      I5 => address_counter(12),
      O => \data_reg[2]_i_4_n_0\
    );
\data_reg[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg_reg[2]_i_8_n_0\,
      I1 => \data_reg_reg[2]_i_9_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[2]_i_10_n_0\,
      I4 => address_counter(7),
      I5 => \data_reg_reg[2]_i_11_n_0\,
      O => \data_reg[2]_i_6_n_0\
    );
\data_reg[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => address_counter(6),
      I1 => \data_reg[2]_i_12_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[2]_i_13_n_0\,
      I4 => address_counter(7),
      I5 => \data_reg_reg[2]_i_14_n_0\,
      O => \data_reg[2]_i_7_n_0\
    );
\data_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080BF80"
    )
        port map (
      I0 => data_reg(3),
      I1 => en_n,
      I2 => state_reg_n_0,
      I3 => \data_reg[3]_i_4_n_0\,
      I4 => address_counter(13),
      O => p_2_in(3)
    );
\data_reg[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444404003133222"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(1),
      I3 => address_counter(0),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[3]_i_12_n_0\
    );
\data_reg[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000DEC4321BC45E"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[3]_i_15_n_0\
    );
\data_reg[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59950A2DE1DF993B"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(3),
      O => \data_reg[3]_i_16_n_0\
    );
\data_reg[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E430B2CCC949D13A"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[3]_i_17_n_0\
    );
\data_reg[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0242F5B6397EEA"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(3),
      I3 => address_counter(0),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[3]_i_18_n_0\
    );
\data_reg[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BA4109E3B9EE7A5"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[3]_i_19_n_0\
    );
\data_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFEF"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg_reg[3]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[3]_i_2_n_0\
    );
\data_reg[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AD3D81FA6CA4D9D8"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[3]_i_20_n_0\
    );
\data_reg[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"434F43878F4800F0"
    )
        port map (
      I0 => address_counter(0),
      I1 => address_counter(5),
      I2 => address_counter(4),
      I3 => address_counter(1),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[3]_i_21_n_0\
    );
\data_reg[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"38B4927C9A274509"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(3),
      O => \data_reg[3]_i_22_n_0\
    );
\data_reg[3]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"865268C9E1F5523B"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[3]_i_23_n_0\
    );
\data_reg[3]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC24E41AA8714FC3"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(3),
      I5 => address_counter(2),
      O => \data_reg[3]_i_24_n_0\
    );
\data_reg[3]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"38382F98A7F0BA27"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(0),
      I2 => address_counter(4),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[3]_i_25_n_0\
    );
\data_reg[3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11F2C96B0E9F2EA0"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(3),
      I5 => address_counter(2),
      O => \data_reg[3]_i_26_n_0\
    );
\data_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg_reg[3]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[3]_i_3_n_0\
    );
\data_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => address_counter(11),
      I1 => \data_reg[3]_i_6_n_0\,
      I2 => address_counter(9),
      I3 => \data_reg[3]_i_7_n_0\,
      I4 => address_counter(10),
      I5 => address_counter(12),
      O => \data_reg[3]_i_4_n_0\
    );
\data_reg[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg_reg[3]_i_8_n_0\,
      I1 => \data_reg_reg[3]_i_9_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[3]_i_10_n_0\,
      I4 => address_counter(7),
      I5 => \data_reg_reg[3]_i_11_n_0\,
      O => \data_reg[3]_i_6_n_0\
    );
\data_reg[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => address_counter(6),
      I1 => \data_reg[3]_i_12_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[3]_i_13_n_0\,
      I4 => address_counter(7),
      I5 => \data_reg_reg[3]_i_14_n_0\,
      O => \data_reg[3]_i_7_n_0\
    );
\data_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080BF80"
    )
        port map (
      I0 => data_reg(4),
      I1 => en_n,
      I2 => state_reg_n_0,
      I3 => \data_reg[4]_i_4_n_0\,
      I4 => address_counter(13),
      O => p_2_in(4)
    );
\data_reg[4]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80DC20C67324493F"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[4]_i_17_n_0\
    );
\data_reg[4]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FE747324D91D539"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[4]_i_18_n_0\
    );
\data_reg[4]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F0EE8D3D3170F57"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[4]_i_19_n_0\
    );
\data_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFEF"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg[4]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[4]_i_2_n_0\
    );
\data_reg[4]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"592A53ECA3936674"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[4]_i_20_n_0\
    );
\data_reg[4]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3437E06A043E1D07"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(3),
      I5 => address_counter(1),
      O => \data_reg[4]_i_21_n_0\
    );
\data_reg[4]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B483A2CE99CCD5B"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(3),
      I5 => address_counter(1),
      O => \data_reg[4]_i_22_n_0\
    );
\data_reg[4]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB37B3FFF3C3C7C"
    )
        port map (
      I0 => address_counter(0),
      I1 => address_counter(5),
      I2 => address_counter(3),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(4),
      O => \data_reg[4]_i_23_n_0\
    );
\data_reg[4]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC03046EB2F4BB55"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(3),
      I3 => address_counter(2),
      I4 => address_counter(0),
      I5 => address_counter(1),
      O => \data_reg[4]_i_24_n_0\
    );
\data_reg[4]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAE21E0D705B9573"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[4]_i_25_n_0\
    );
\data_reg[4]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"64EC39678A53CC58"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(3),
      I5 => address_counter(1),
      O => \data_reg[4]_i_26_n_0\
    );
\data_reg[4]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BF4F6F2BED0F8B6"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[4]_i_27_n_0\
    );
\data_reg[4]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"41E436C24C1BC104"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[4]_i_28_n_0\
    );
\data_reg[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg[4]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[4]_i_3_n_0\
    );
\data_reg[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => address_counter(11),
      I1 => \data_reg[4]_i_6_n_0\,
      I2 => address_counter(9),
      I3 => \data_reg[4]_i_7_n_0\,
      I4 => address_counter(10),
      I5 => address_counter(12),
      O => \data_reg[4]_i_4_n_0\
    );
\data_reg[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[5]_i_8_n_0\,
      I1 => \data_reg_reg[4]_i_8_n_0\,
      I2 => address_counter(9),
      I3 => \data_reg_reg[4]_i_9_n_0\,
      I4 => address_counter(8),
      I5 => \data_reg_reg[4]_i_10_n_0\,
      O => \data_reg[4]_i_5_n_0\
    );
\data_reg[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg_reg[4]_i_11_n_0\,
      I1 => \data_reg_reg[4]_i_12_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[4]_i_13_n_0\,
      I4 => address_counter(7),
      I5 => \data_reg_reg[4]_i_14_n_0\,
      O => \data_reg[4]_i_6_n_0\
    );
\data_reg[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => address_counter(6),
      I1 => \data_reg[5]_i_16_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[4]_i_15_n_0\,
      I4 => address_counter(7),
      I5 => \data_reg_reg[4]_i_16_n_0\,
      O => \data_reg[4]_i_7_n_0\
    );
\data_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080BF80"
    )
        port map (
      I0 => data_reg(5),
      I1 => en_n,
      I2 => state_reg_n_0,
      I3 => \data_reg[5]_i_4_n_0\,
      I4 => address_counter(13),
      O => p_2_in(5)
    );
\data_reg[5]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555557567676"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(3),
      I2 => address_counter(2),
      I3 => address_counter(0),
      I4 => address_counter(1),
      I5 => address_counter(4),
      O => \data_reg[5]_i_16_n_0\
    );
\data_reg[5]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => address_counter(2),
      I1 => address_counter(1),
      I2 => address_counter(3),
      O => \data_reg[5]_i_19_n_0\
    );
\data_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFEF"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg[5]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[5]_i_2_n_0\
    );
\data_reg[5]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => address_counter(1),
      I1 => address_counter(0),
      I2 => address_counter(2),
      I3 => address_counter(3),
      O => \data_reg[5]_i_20_n_0\
    );
\data_reg[5]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"16E7C1D1B4F5A6AC"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[5]_i_21_n_0\
    );
\data_reg[5]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"68F9CA9C99814D03"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[5]_i_22_n_0\
    );
\data_reg[5]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B7904E718BEDCFE"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[5]_i_23_n_0\
    );
\data_reg[5]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"48F1228AB68C41AC"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(1),
      I3 => address_counter(0),
      I4 => address_counter(3),
      I5 => address_counter(2),
      O => \data_reg[5]_i_24_n_0\
    );
\data_reg[5]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6CBB27EC5B68111"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[5]_i_25_n_0\
    );
\data_reg[5]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EC3873B98EC7CF58"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[5]_i_26_n_0\
    );
\data_reg[5]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF3FBF333F3C3C7C"
    )
        port map (
      I0 => address_counter(0),
      I1 => address_counter(5),
      I2 => address_counter(3),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(4),
      O => \data_reg[5]_i_27_n_0\
    );
\data_reg[5]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"79D1C948E0243E9F"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(3),
      I3 => address_counter(0),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[5]_i_28_n_0\
    );
\data_reg[5]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06DFAAA03D3C536C"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[5]_i_29_n_0\
    );
\data_reg[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg[5]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[5]_i_3_n_0\
    );
\data_reg[5]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"13778AAA75C82315"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(3),
      I5 => address_counter(2),
      O => \data_reg[5]_i_30_n_0\
    );
\data_reg[5]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDDFD7BD648CEE28"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(2),
      I3 => address_counter(3),
      I4 => address_counter(0),
      I5 => address_counter(1),
      O => \data_reg[5]_i_31_n_0\
    );
\data_reg[5]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C9A8FB3B07756CC8"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(1),
      I3 => address_counter(3),
      I4 => address_counter(0),
      I5 => address_counter(2),
      O => \data_reg[5]_i_32_n_0\
    );
\data_reg[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => address_counter(11),
      I1 => \data_reg[5]_i_6_n_0\,
      I2 => address_counter(9),
      I3 => \data_reg[5]_i_7_n_0\,
      I4 => address_counter(10),
      I5 => address_counter(12),
      O => \data_reg[5]_i_4_n_0\
    );
\data_reg[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[5]_i_8_n_0\,
      I1 => \data_reg_reg[5]_i_9_n_0\,
      I2 => address_counter(9),
      I3 => \data_reg_reg[5]_i_10_n_0\,
      I4 => address_counter(8),
      I5 => \data_reg_reg[5]_i_11_n_0\,
      O => \data_reg[5]_i_5_n_0\
    );
\data_reg[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg_reg[5]_i_12_n_0\,
      I1 => \data_reg_reg[5]_i_13_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[5]_i_14_n_0\,
      I4 => address_counter(7),
      I5 => \data_reg_reg[5]_i_15_n_0\,
      O => \data_reg[5]_i_6_n_0\
    );
\data_reg[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => address_counter(6),
      I1 => \data_reg[5]_i_16_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[5]_i_17_n_0\,
      I4 => address_counter(7),
      I5 => \data_reg_reg[5]_i_18_n_0\,
      O => \data_reg[5]_i_7_n_0\
    );
\data_reg[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005054540"
    )
        port map (
      I0 => address_counter(6),
      I1 => \data_reg[5]_i_19_n_0\,
      I2 => address_counter(5),
      I3 => \data_reg[5]_i_20_n_0\,
      I4 => address_counter(4),
      I5 => address_counter(7),
      O => \data_reg[5]_i_8_n_0\
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => data_reg(6),
      I1 => en_n,
      I2 => state_reg_n_0,
      I3 => \data_reg[6]_i_4_n_0\,
      I4 => address_counter(13),
      O => p_2_in(6)
    );
\data_reg[6]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8A9A1A1"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(2),
      I2 => address_counter(3),
      I3 => address_counter(0),
      I4 => address_counter(1),
      I5 => address_counter(4),
      O => \data_reg[6]_i_16_n_0\
    );
\data_reg[6]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => address_counter(1),
      I1 => address_counter(2),
      I2 => address_counter(3),
      O => \data_reg[6]_i_19_n_0\
    );
\data_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg[6]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[6]_i_2_n_0\
    );
\data_reg[6]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => address_counter(1),
      I1 => address_counter(0),
      I2 => address_counter(3),
      I3 => address_counter(2),
      O => \data_reg[6]_i_20_n_0\
    );
\data_reg[6]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EC8F3356DEDE5678"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(3),
      O => \data_reg[6]_i_21_n_0\
    );
\data_reg[6]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C2D58947A084149"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(3),
      I5 => address_counter(1),
      O => \data_reg[6]_i_22_n_0\
    );
\data_reg[6]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F89661C3761FF0D2"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(3),
      I5 => address_counter(1),
      O => \data_reg[6]_i_23_n_0\
    );
\data_reg[6]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8D243E8EA400CAE9"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[6]_i_24_n_0\
    );
\data_reg[6]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"454000DC9809DDAA"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[6]_i_25_n_0\
    );
\data_reg[6]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4159BCDAEFEB9EF5"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[6]_i_26_n_0\
    );
\data_reg[6]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0C0CC0C3C383"
    )
        port map (
      I0 => address_counter(0),
      I1 => address_counter(5),
      I2 => address_counter(3),
      I3 => address_counter(1),
      I4 => address_counter(2),
      I5 => address_counter(4),
      O => \data_reg[6]_i_27_n_0\
    );
\data_reg[6]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECF7C4774CFBDFBA"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[6]_i_28_n_0\
    );
\data_reg[6]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"12A56FF208FA3080"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(0),
      I2 => address_counter(4),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(3),
      O => \data_reg[6]_i_29_n_0\
    );
\data_reg[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg[6]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[6]_i_3_n_0\
    );
\data_reg[6]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999BBFFFFF7464"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(1),
      I3 => address_counter(0),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[6]_i_30_n_0\
    );
\data_reg[6]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B08AF5F51BFDECAA"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(1),
      I3 => address_counter(3),
      I4 => address_counter(0),
      I5 => address_counter(2),
      O => \data_reg[6]_i_31_n_0\
    );
\data_reg[6]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"73B54126EFDA9E43"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[6]_i_32_n_0\
    );
\data_reg[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEAE"
    )
        port map (
      I0 => address_counter(11),
      I1 => \data_reg[6]_i_6_n_0\,
      I2 => address_counter(9),
      I3 => \data_reg[6]_i_7_n_0\,
      I4 => address_counter(10),
      I5 => address_counter(12),
      O => \data_reg[6]_i_4_n_0\
    );
\data_reg[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[6]_i_8_n_0\,
      I1 => \data_reg_reg[6]_i_9_n_0\,
      I2 => address_counter(9),
      I3 => \data_reg_reg[6]_i_10_n_0\,
      I4 => address_counter(8),
      I5 => \data_reg_reg[6]_i_11_n_0\,
      O => \data_reg[6]_i_5_n_0\
    );
\data_reg[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg_reg[6]_i_12_n_0\,
      I1 => \data_reg_reg[6]_i_13_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[6]_i_14_n_0\,
      I4 => address_counter(7),
      I5 => \data_reg_reg[6]_i_15_n_0\,
      O => \data_reg[6]_i_6_n_0\
    );
\data_reg[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EFEFFFF0E0E0"
    )
        port map (
      I0 => address_counter(6),
      I1 => \data_reg[6]_i_16_n_0\,
      I2 => address_counter(8),
      I3 => \data_reg_reg[6]_i_17_n_0\,
      I4 => address_counter(7),
      I5 => \data_reg_reg[6]_i_18_n_0\,
      O => \data_reg[6]_i_7_n_0\
    );
\data_reg[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFAFAEFEA"
    )
        port map (
      I0 => address_counter(6),
      I1 => \data_reg[6]_i_19_n_0\,
      I2 => address_counter(5),
      I3 => \data_reg[6]_i_20_n_0\,
      I4 => address_counter(4),
      I5 => address_counter(7),
      O => \data_reg[6]_i_8_n_0\
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => data_reg(7),
      I1 => en_n,
      I2 => state_reg_n_0,
      I3 => \data_reg[7]_i_4_n_0\,
      O => p_2_in(7)
    );
\data_reg[7]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => address_counter(4),
      I1 => address_counter(3),
      I2 => address_counter(5),
      O => \data_reg[7]_i_15_n_0\
    );
\data_reg[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C48C0C0C83030333"
    )
        port map (
      I0 => address_counter(0),
      I1 => address_counter(5),
      I2 => address_counter(3),
      I3 => address_counter(1),
      I4 => address_counter(2),
      I5 => address_counter(4),
      O => \data_reg[7]_i_16_n_0\
    );
\data_reg[7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66AB266EBB33EFBB"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(3),
      I5 => address_counter(2),
      O => \data_reg[7]_i_17_n_0\
    );
\data_reg[7]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB6EDC89C8DF9FAA"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[7]_i_18_n_0\
    );
\data_reg[7]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"16F9E996F64800A7"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[7]_i_19_n_0\
    );
\data_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_reg[7]_i_4_n_0\,
      I1 => reset_n,
      O => \data_reg[7]_i_2_n_0\
    );
\data_reg[7]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"920A44AE6E40AA06"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(3),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(0),
      O => \data_reg[7]_i_20_n_0\
    );
\data_reg[7]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4189119932AA202"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(3),
      I5 => address_counter(1),
      O => \data_reg[7]_i_21_n_0\
    );
\data_reg[7]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2B1C94D95D018148"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[7]_i_22_n_0\
    );
\data_reg[7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F39D8A8B8ECAD7F"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(2),
      I3 => address_counter(0),
      I4 => address_counter(3),
      I5 => address_counter(1),
      O => \data_reg[7]_i_23_n_0\
    );
\data_reg[7]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFA09972C855FE8C"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[7]_i_24_n_0\
    );
\data_reg[7]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"42AF2FFDF50FC50F"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(0),
      I2 => address_counter(4),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(3),
      O => \data_reg[7]_i_25_n_0\
    );
\data_reg[7]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11FE0000"
    )
        port map (
      I0 => address_counter(3),
      I1 => address_counter(2),
      I2 => address_counter(1),
      I3 => address_counter(4),
      I4 => address_counter(5),
      O => \data_reg[7]_i_26_n_0\
    );
\data_reg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_reg[7]_i_4_n_0\,
      I1 => reset_n,
      O => \data_reg[7]_i_3_n_0\
    );
\data_reg[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => address_counter(12),
      I1 => \data_reg[7]_i_5_n_0\,
      I2 => address_counter(11),
      I3 => address_counter(13),
      O => \data_reg[7]_i_4_n_0\
    );
\data_reg[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \data_reg_reg[7]_i_6_n_0\,
      I1 => address_counter(8),
      I2 => \data_reg_reg[7]_i_7_n_0\,
      I3 => address_counter(9),
      I4 => \data_reg_reg[7]_i_8_n_0\,
      I5 => address_counter(10),
      O => \data_reg[7]_i_5_n_0\
    );
\data_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFBFBFBF80"
    )
        port map (
      I0 => data_reg(8),
      I1 => en_n,
      I2 => state_reg_n_0,
      I3 => address_counter(12),
      I4 => \data_reg[8]_i_4_n_0\,
      I5 => address_counter(13),
      O => p_2_in(8)
    );
\data_reg[8]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"38F373C3C3CFC3CF"
    )
        port map (
      I0 => address_counter(0),
      I1 => address_counter(5),
      I2 => address_counter(4),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(3),
      O => \data_reg[8]_i_10_n_0\
    );
\data_reg[8]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFBE444BBBA4133"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(1),
      I4 => address_counter(3),
      I5 => address_counter(2),
      O => \data_reg[8]_i_11_n_0\
    );
\data_reg[8]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEECEAC1BB99BFCE"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[8]_i_12_n_0\
    );
\data_reg[8]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C4CCCCC83030333"
    )
        port map (
      I0 => address_counter(0),
      I1 => address_counter(5),
      I2 => address_counter(3),
      I3 => address_counter(1),
      I4 => address_counter(2),
      I5 => address_counter(4),
      O => \data_reg[8]_i_15_n_0\
    );
\data_reg[8]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FFFFFE000000"
    )
        port map (
      I0 => address_counter(4),
      I1 => \data_reg[8]_i_21_n_0\,
      I2 => address_counter(3),
      I3 => address_counter(5),
      I4 => address_counter(6),
      I5 => \data_reg[8]_i_10_n_0\,
      O => \data_reg[8]_i_16_n_0\
    );
\data_reg[8]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000FFFF04CFCCCC"
    )
        port map (
      I0 => address_counter(0),
      I1 => address_counter(5),
      I2 => address_counter(1),
      I3 => address_counter(2),
      I4 => address_counter(4),
      I5 => address_counter(3),
      O => \data_reg[8]_i_19_n_0\
    );
\data_reg[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg_reg[8]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[8]_i_2_n_0\
    );
\data_reg[8]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF4CBBCDBB9BACBB"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[8]_i_20_n_0\
    );
\data_reg[8]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => address_counter(2),
      I1 => address_counter(1),
      O => \data_reg[8]_i_21_n_0\
    );
\data_reg[8]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"23AC35C55C73AA3B"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[8]_i_22_n_0\
    );
\data_reg[8]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B69CD27C22088228"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(1),
      I2 => address_counter(2),
      I3 => address_counter(3),
      I4 => address_counter(0),
      I5 => address_counter(4),
      O => \data_reg[8]_i_23_n_0\
    );
\data_reg[8]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47BCBF7F30F0F030"
    )
        port map (
      I0 => address_counter(0),
      I1 => address_counter(5),
      I2 => address_counter(4),
      I3 => address_counter(1),
      I4 => address_counter(3),
      I5 => address_counter(2),
      O => \data_reg[8]_i_24_n_0\
    );
\data_reg[8]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"195C98C880995584"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(1),
      I5 => address_counter(2),
      O => \data_reg[8]_i_25_n_0\
    );
\data_reg[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg_reg[8]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[8]_i_3_n_0\
    );
\data_reg[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFEAA"
    )
        port map (
      I0 => address_counter(10),
      I1 => \data_reg[8]_i_6_n_0\,
      I2 => address_counter(8),
      I3 => address_counter(9),
      I4 => \data_reg[8]_i_7_n_0\,
      I5 => address_counter(11),
      O => \data_reg[8]_i_4_n_0\
    );
\data_reg[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[8]_i_9_n_0\,
      I1 => \data_reg[8]_i_10_n_0\,
      I2 => address_counter(7),
      I3 => \data_reg[8]_i_11_n_0\,
      I4 => address_counter(6),
      I5 => \data_reg[8]_i_12_n_0\,
      O => \data_reg[8]_i_6_n_0\
    );
\data_reg[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B8BBB8BB"
    )
        port map (
      I0 => \data_reg_reg[8]_i_13_n_0\,
      I1 => address_counter(8),
      I2 => \data_reg_reg[8]_i_14_n_0\,
      I3 => address_counter(7),
      I4 => \data_reg[8]_i_15_n_0\,
      I5 => address_counter(6),
      O => \data_reg[8]_i_7_n_0\
    );
\data_reg[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \data_reg[8]_i_12_n_0\,
      I1 => address_counter(6),
      I2 => \data_reg[8]_i_11_n_0\,
      I3 => address_counter(7),
      I4 => \data_reg[8]_i_16_n_0\,
      I5 => address_counter(8),
      O => \data_reg[8]_i_8_n_0\
    );
\data_reg[8]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => address_counter(4),
      I1 => address_counter(1),
      I2 => address_counter(2),
      I3 => address_counter(3),
      I4 => address_counter(5),
      O => \data_reg[8]_i_9_n_0\
    );
\data_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080BF8080"
    )
        port map (
      I0 => data_reg(9),
      I1 => en_n,
      I2 => state_reg_n_0,
      I3 => address_counter(12),
      I4 => \data_reg[9]_i_4_n_0\,
      I5 => address_counter(13),
      O => p_2_in(9)
    );
\data_reg[9]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F333B333300C000C"
    )
        port map (
      I0 => address_counter(0),
      I1 => address_counter(5),
      I2 => address_counter(3),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(4),
      O => \data_reg[9]_i_10_n_0\
    );
\data_reg[9]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333333337CFCFCCC"
    )
        port map (
      I0 => address_counter(0),
      I1 => address_counter(5),
      I2 => address_counter(3),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(4),
      O => \data_reg[9]_i_14_n_0\
    );
\data_reg[9]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFBBEEAAF6BFA8"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[9]_i_15_n_0\
    );
\data_reg[9]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"226626677DD9DD99"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(3),
      O => \data_reg[9]_i_16_n_0\
    );
\data_reg[9]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FFFFFF04FF0000"
    )
        port map (
      I0 => address_counter(4),
      I1 => \data_reg[9]_i_22_n_0\,
      I2 => address_counter(3),
      I3 => address_counter(5),
      I4 => address_counter(6),
      I5 => \data_reg[9]_i_10_n_0\,
      O => \data_reg[9]_i_17_n_0\
    );
\data_reg[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFEF"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg_reg[9]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[9]_i_2_n_0\
    );
\data_reg[9]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFF3333F3B30000"
    )
        port map (
      I0 => address_counter(0),
      I1 => address_counter(5),
      I2 => address_counter(2),
      I3 => address_counter(1),
      I4 => address_counter(4),
      I5 => address_counter(3),
      O => \data_reg[9]_i_20_n_0\
    );
\data_reg[9]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAE6EFDEFDD"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(3),
      O => \data_reg[9]_i_21_n_0\
    );
\data_reg[9]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => address_counter(1),
      I1 => address_counter(2),
      O => \data_reg[9]_i_22_n_0\
    );
\data_reg[9]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22200515577FFBBB"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(1),
      I3 => address_counter(0),
      I4 => address_counter(2),
      I5 => address_counter(3),
      O => \data_reg[9]_i_23_n_0\
    );
\data_reg[9]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9CEECE66A2002088"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(3),
      I2 => address_counter(0),
      I3 => address_counter(2),
      I4 => address_counter(1),
      I5 => address_counter(4),
      O => \data_reg[9]_i_24_n_0\
    );
\data_reg[9]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFFF0FF83FF0F00"
    )
        port map (
      I0 => address_counter(0),
      I1 => address_counter(1),
      I2 => address_counter(2),
      I3 => address_counter(5),
      I4 => address_counter(4),
      I5 => address_counter(3),
      O => \data_reg[9]_i_25_n_0\
    );
\data_reg[9]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1981885598158844"
    )
        port map (
      I0 => address_counter(5),
      I1 => address_counter(4),
      I2 => address_counter(0),
      I3 => address_counter(3),
      I4 => address_counter(2),
      I5 => address_counter(1),
      O => \data_reg[9]_i_26_n_0\
    );
\data_reg[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => address_counter(13),
      I1 => address_counter(11),
      I2 => \data_reg_reg[9]_i_5_n_0\,
      I3 => address_counter(10),
      I4 => address_counter(12),
      I5 => reset_n,
      O => \data_reg[9]_i_3_n_0\
    );
\data_reg[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => address_counter(10),
      I1 => \data_reg[9]_i_6_n_0\,
      I2 => address_counter(8),
      I3 => address_counter(9),
      I4 => \data_reg[9]_i_7_n_0\,
      I5 => address_counter(11),
      O => \data_reg[9]_i_4_n_0\
    );
\data_reg[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFFBFB00000"
    )
        port map (
      I0 => \data_reg[9]_i_9_n_0\,
      I1 => address_counter(5),
      I2 => address_counter(6),
      I3 => \data_reg[9]_i_10_n_0\,
      I4 => address_counter(7),
      I5 => \data_reg_reg[9]_i_11_n_0\,
      O => \data_reg[9]_i_6_n_0\
    );
\data_reg[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => \data_reg_reg[9]_i_12_n_0\,
      I1 => address_counter(8),
      I2 => \data_reg_reg[9]_i_13_n_0\,
      I3 => address_counter(7),
      I4 => \data_reg[9]_i_14_n_0\,
      I5 => address_counter(6),
      O => \data_reg[9]_i_7_n_0\
    );
\data_reg[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \data_reg[9]_i_15_n_0\,
      I1 => address_counter(6),
      I2 => \data_reg[9]_i_16_n_0\,
      I3 => address_counter(7),
      I4 => \data_reg[9]_i_17_n_0\,
      I5 => address_counter(8),
      O => \data_reg[9]_i_8_n_0\
    );
\data_reg[9]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => address_counter(3),
      I1 => address_counter(1),
      I2 => address_counter(2),
      I3 => address_counter(4),
      O => \data_reg[9]_i_9_n_0\
    );
\data_reg_inferred__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg[12]_P_n_0\,
      I1 => \data_reg_reg[12]_LDC_n_0\,
      I2 => \data_reg_reg[12]_C_n_0\,
      O => data_reg(12)
    );
\data_reg_inferred__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg[3]_P_n_0\,
      I1 => \data_reg_reg[3]_LDC_n_0\,
      I2 => \data_reg_reg[3]_C_n_0\,
      O => data_reg(3)
    );
\data_reg_inferred__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg[2]_P_n_0\,
      I1 => \data_reg_reg[2]_LDC_n_0\,
      I2 => \data_reg_reg[2]_C_n_0\,
      O => data_reg(2)
    );
\data_reg_inferred__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg[1]_P_n_0\,
      I1 => \data_reg_reg[1]_LDC_n_0\,
      I2 => \data_reg_reg[1]_C_n_0\,
      O => data_reg(1)
    );
\data_reg_inferred__0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg[0]_P_n_0\,
      I1 => \data_reg_reg[0]_LDC_n_0\,
      I2 => \data_reg_reg[0]_C_n_0\,
      O => data_reg(0)
    );
\data_reg_inferred__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg[11]_P_n_0\,
      I1 => \data_reg_reg[11]_LDC_n_0\,
      I2 => \data_reg_reg[11]_C_n_0\,
      O => data_reg(11)
    );
\data_reg_inferred__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg[10]_P_n_0\,
      I1 => \data_reg_reg[10]_LDC_n_0\,
      I2 => \data_reg_reg[10]_C_n_0\,
      O => data_reg(10)
    );
\data_reg_inferred__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg[9]_P_n_0\,
      I1 => \data_reg_reg[9]_LDC_n_0\,
      I2 => \data_reg_reg[9]_C_n_0\,
      O => data_reg(9)
    );
\data_reg_inferred__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg[8]_P_n_0\,
      I1 => \data_reg_reg[8]_LDC_n_0\,
      I2 => \data_reg_reg[8]_C_n_0\,
      O => data_reg(8)
    );
\data_reg_inferred__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg[7]_P_n_0\,
      I1 => \data_reg_reg[7]_LDC_n_0\,
      I2 => \data_reg_reg[7]_C_n_0\,
      O => data_reg(7)
    );
\data_reg_inferred__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg[6]_P_n_0\,
      I1 => \data_reg_reg[6]_LDC_n_0\,
      I2 => \data_reg_reg[6]_C_n_0\,
      O => data_reg(6)
    );
\data_reg_inferred__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg[5]_P_n_0\,
      I1 => \data_reg_reg[5]_LDC_n_0\,
      I2 => \data_reg_reg[5]_C_n_0\,
      O => data_reg(5)
    );
\data_reg_inferred__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg[4]_P_n_0\,
      I1 => \data_reg_reg[4]_LDC_n_0\,
      I2 => \data_reg_reg[4]_C_n_0\,
      O => data_reg(4)
    );
\data_reg_reg[0]\: unisim.vcomponents.FDCP
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CLR => \data_reg[0]_i_2_n_0\,
      D => p_2_in(0),
      PRE => \data_reg[0]_i_3_n_0\,
      Q => \NLW_data_reg_reg[0]_Q_UNCONNECTED\
    );
\data_reg_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \data_reg[0]_i_2_n_0\,
      D => p_2_in(0),
      Q => \data_reg_reg[0]_C_n_0\
    );
\data_reg_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_reg[0]_i_2_n_0\,
      D => '1',
      G => \data_reg[0]_i_3_n_0\,
      GE => '1',
      Q => \data_reg_reg[0]_LDC_n_0\
    );
\data_reg_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_2_in(0),
      PRE => \data_reg[0]_i_3_n_0\,
      Q => \data_reg_reg[0]_P_n_0\
    );
\data_reg_reg[0]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[0]_i_19_n_0\,
      I1 => \data_reg[0]_i_20_n_0\,
      O => \data_reg_reg[0]_i_10_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[0]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[0]_i_21_n_0\,
      I1 => \data_reg[0]_i_22_n_0\,
      O => \data_reg_reg[0]_i_11_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[0]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[0]_i_23_n_0\,
      I1 => \data_reg[0]_i_24_n_0\,
      O => \data_reg_reg[0]_i_13_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[0]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[0]_i_25_n_0\,
      I1 => \data_reg[0]_i_26_n_0\,
      O => \data_reg_reg[0]_i_14_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[0]_i_6_n_0\,
      I1 => \data_reg[0]_i_7_n_0\,
      O => \data_reg_reg[0]_i_5_n_0\,
      S => address_counter(9)
    );
\data_reg_reg[0]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[0]_i_15_n_0\,
      I1 => \data_reg[0]_i_16_n_0\,
      O => \data_reg_reg[0]_i_8_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[0]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[0]_i_17_n_0\,
      I1 => \data_reg[0]_i_18_n_0\,
      O => \data_reg_reg[0]_i_9_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[10]\: unisim.vcomponents.FDCP
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CLR => \data_reg[10]_i_2_n_0\,
      D => p_2_in(10),
      PRE => \data_reg[10]_i_3_n_0\,
      Q => \NLW_data_reg_reg[10]_Q_UNCONNECTED\
    );
\data_reg_reg[10]_C\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \data_reg[10]_i_2_n_0\,
      D => p_2_in(10),
      Q => \data_reg_reg[10]_C_n_0\
    );
\data_reg_reg[10]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_reg[10]_i_2_n_0\,
      D => '1',
      G => \data_reg[10]_i_3_n_0\,
      GE => '1',
      Q => \data_reg_reg[10]_LDC_n_0\
    );
\data_reg_reg[10]_P\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_2_in(10),
      PRE => \data_reg[10]_i_3_n_0\,
      Q => \data_reg_reg[10]_P_n_0\
    );
\data_reg_reg[10]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[10]_i_16_n_0\,
      I1 => \data_reg[10]_i_17_n_0\,
      O => \data_reg_reg[10]_i_11_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[10]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[10]_i_18_n_0\,
      I1 => \data_reg[10]_i_19_n_0\,
      O => \data_reg_reg[10]_i_12_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[10]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[10]_i_20_n_0\,
      I1 => \data_reg[10]_i_21_n_0\,
      O => \data_reg_reg[10]_i_13_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[10]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[10]_i_22_n_0\,
      I1 => \data_reg[10]_i_15_n_0\,
      O => \data_reg_reg[10]_i_14_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[10]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_reg_reg[10]_i_13_n_0\,
      I1 => \data_reg_reg[10]_i_12_n_0\,
      O => \data_reg_reg[10]_i_9_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[11]\: unisim.vcomponents.FDCP
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CLR => \data_reg[11]_i_2_n_0\,
      D => p_2_in(11),
      PRE => \data_reg[11]_i_3_n_0\,
      Q => \NLW_data_reg_reg[11]_Q_UNCONNECTED\
    );
\data_reg_reg[11]_C\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \data_reg[11]_i_2_n_0\,
      D => p_2_in(11),
      Q => \data_reg_reg[11]_C_n_0\
    );
\data_reg_reg[11]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_reg[11]_i_2_n_0\,
      D => '1',
      G => \data_reg[11]_i_3_n_0\,
      GE => '1',
      Q => \data_reg_reg[11]_LDC_n_0\
    );
\data_reg_reg[11]_P\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_2_in(11),
      PRE => \data_reg[11]_i_3_n_0\,
      Q => \data_reg_reg[11]_P_n_0\
    );
\data_reg_reg[11]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[11]_i_19_n_0\,
      I1 => \data_reg[11]_i_15_n_0\,
      O => \data_reg_reg[11]_i_14_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[11]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[11]_i_10_n_0\,
      I1 => \data_reg[11]_i_11_n_0\,
      O => \data_reg_reg[11]_i_6_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[11]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[11]_i_13_n_0\,
      I1 => \data_reg[11]_i_12_n_0\,
      O => \data_reg_reg[11]_i_9_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[12]\: unisim.vcomponents.FDCP
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CLR => \data_reg[12]_i_2_n_0\,
      D => p_2_in(12),
      PRE => \data_reg[12]_i_3_n_0\,
      Q => \NLW_data_reg_reg[12]_Q_UNCONNECTED\
    );
\data_reg_reg[12]_C\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \data_reg[12]_i_2_n_0\,
      D => p_2_in(12),
      Q => \data_reg_reg[12]_C_n_0\
    );
\data_reg_reg[12]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_reg[12]_i_2_n_0\,
      D => '1',
      G => \data_reg[12]_i_3_n_0\,
      GE => '1',
      Q => \data_reg_reg[12]_LDC_n_0\
    );
\data_reg_reg[12]_P\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_2_in(12),
      PRE => \data_reg[12]_i_3_n_0\,
      Q => \data_reg_reg[12]_P_n_0\
    );
\data_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_2_in(13),
      Q => data_reg(13)
    );
\data_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_2_in(14),
      Q => data_reg(14)
    );
\data_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => \p_0_in__0\,
      D => p_2_in(15),
      Q => data_reg(15)
    );
\data_reg_reg[1]\: unisim.vcomponents.FDCP
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CLR => \data_reg[1]_i_2_n_0\,
      D => p_2_in(1),
      PRE => \data_reg[1]_i_3_n_0\,
      Q => \NLW_data_reg_reg[1]_Q_UNCONNECTED\
    );
\data_reg_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \data_reg[1]_i_2_n_0\,
      D => p_2_in(1),
      Q => \data_reg_reg[1]_C_n_0\
    );
\data_reg_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_reg[1]_i_2_n_0\,
      D => '1',
      G => \data_reg[1]_i_3_n_0\,
      GE => '1',
      Q => \data_reg_reg[1]_LDC_n_0\
    );
\data_reg_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_2_in(1),
      PRE => \data_reg[1]_i_3_n_0\,
      Q => \data_reg_reg[1]_P_n_0\
    );
\data_reg_reg[1]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[1]_i_19_n_0\,
      I1 => \data_reg[1]_i_20_n_0\,
      O => \data_reg_reg[1]_i_10_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[1]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[1]_i_21_n_0\,
      I1 => \data_reg[1]_i_22_n_0\,
      O => \data_reg_reg[1]_i_11_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[1]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[1]_i_23_n_0\,
      I1 => \data_reg[1]_i_24_n_0\,
      O => \data_reg_reg[1]_i_13_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[1]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[1]_i_25_n_0\,
      I1 => \data_reg[1]_i_26_n_0\,
      O => \data_reg_reg[1]_i_14_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[1]_i_6_n_0\,
      I1 => \data_reg[1]_i_7_n_0\,
      O => \data_reg_reg[1]_i_5_n_0\,
      S => address_counter(9)
    );
\data_reg_reg[1]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[1]_i_15_n_0\,
      I1 => \data_reg[1]_i_16_n_0\,
      O => \data_reg_reg[1]_i_8_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[1]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[1]_i_17_n_0\,
      I1 => \data_reg[1]_i_18_n_0\,
      O => \data_reg_reg[1]_i_9_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[2]\: unisim.vcomponents.FDCP
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CLR => \data_reg[2]_i_2_n_0\,
      D => p_2_in(2),
      PRE => \data_reg[2]_i_3_n_0\,
      Q => \NLW_data_reg_reg[2]_Q_UNCONNECTED\
    );
\data_reg_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \data_reg[2]_i_2_n_0\,
      D => p_2_in(2),
      Q => \data_reg_reg[2]_C_n_0\
    );
\data_reg_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_reg[2]_i_2_n_0\,
      D => '1',
      G => \data_reg[2]_i_3_n_0\,
      GE => '1',
      Q => \data_reg_reg[2]_LDC_n_0\
    );
\data_reg_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_2_in(2),
      PRE => \data_reg[2]_i_3_n_0\,
      Q => \data_reg_reg[2]_P_n_0\
    );
\data_reg_reg[2]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[2]_i_19_n_0\,
      I1 => \data_reg[2]_i_20_n_0\,
      O => \data_reg_reg[2]_i_10_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[2]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[2]_i_21_n_0\,
      I1 => \data_reg[2]_i_22_n_0\,
      O => \data_reg_reg[2]_i_11_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[2]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[2]_i_23_n_0\,
      I1 => \data_reg[2]_i_24_n_0\,
      O => \data_reg_reg[2]_i_13_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[2]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[2]_i_25_n_0\,
      I1 => \data_reg[2]_i_26_n_0\,
      O => \data_reg_reg[2]_i_14_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[2]_i_6_n_0\,
      I1 => \data_reg[2]_i_7_n_0\,
      O => \data_reg_reg[2]_i_5_n_0\,
      S => address_counter(9)
    );
\data_reg_reg[2]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[2]_i_15_n_0\,
      I1 => \data_reg[2]_i_16_n_0\,
      O => \data_reg_reg[2]_i_8_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[2]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[2]_i_17_n_0\,
      I1 => \data_reg[2]_i_18_n_0\,
      O => \data_reg_reg[2]_i_9_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[3]\: unisim.vcomponents.FDCP
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CLR => \data_reg[3]_i_2_n_0\,
      D => p_2_in(3),
      PRE => \data_reg[3]_i_3_n_0\,
      Q => \NLW_data_reg_reg[3]_Q_UNCONNECTED\
    );
\data_reg_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \data_reg[3]_i_2_n_0\,
      D => p_2_in(3),
      Q => \data_reg_reg[3]_C_n_0\
    );
\data_reg_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_reg[3]_i_2_n_0\,
      D => '1',
      G => \data_reg[3]_i_3_n_0\,
      GE => '1',
      Q => \data_reg_reg[3]_LDC_n_0\
    );
\data_reg_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_2_in(3),
      PRE => \data_reg[3]_i_3_n_0\,
      Q => \data_reg_reg[3]_P_n_0\
    );
\data_reg_reg[3]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[3]_i_19_n_0\,
      I1 => \data_reg[3]_i_20_n_0\,
      O => \data_reg_reg[3]_i_10_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[3]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[3]_i_21_n_0\,
      I1 => \data_reg[3]_i_22_n_0\,
      O => \data_reg_reg[3]_i_11_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[3]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[3]_i_23_n_0\,
      I1 => \data_reg[3]_i_24_n_0\,
      O => \data_reg_reg[3]_i_13_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[3]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[3]_i_25_n_0\,
      I1 => \data_reg[3]_i_26_n_0\,
      O => \data_reg_reg[3]_i_14_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[3]_i_6_n_0\,
      I1 => \data_reg[3]_i_7_n_0\,
      O => \data_reg_reg[3]_i_5_n_0\,
      S => address_counter(9)
    );
\data_reg_reg[3]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[3]_i_15_n_0\,
      I1 => \data_reg[3]_i_16_n_0\,
      O => \data_reg_reg[3]_i_8_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[3]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[3]_i_17_n_0\,
      I1 => \data_reg[3]_i_18_n_0\,
      O => \data_reg_reg[3]_i_9_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[4]\: unisim.vcomponents.FDCP
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CLR => \data_reg[4]_i_2_n_0\,
      D => p_2_in(4),
      PRE => \data_reg[4]_i_3_n_0\,
      Q => \NLW_data_reg_reg[4]_Q_UNCONNECTED\
    );
\data_reg_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \data_reg[4]_i_2_n_0\,
      D => p_2_in(4),
      Q => \data_reg_reg[4]_C_n_0\
    );
\data_reg_reg[4]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_reg[4]_i_2_n_0\,
      D => '1',
      G => \data_reg[4]_i_3_n_0\,
      GE => '1',
      Q => \data_reg_reg[4]_LDC_n_0\
    );
\data_reg_reg[4]_P\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_2_in(4),
      PRE => \data_reg[4]_i_3_n_0\,
      Q => \data_reg_reg[4]_P_n_0\
    );
\data_reg_reg[4]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_reg_reg[4]_i_14_n_0\,
      I1 => \data_reg_reg[4]_i_13_n_0\,
      O => \data_reg_reg[4]_i_10_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[4]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[4]_i_17_n_0\,
      I1 => \data_reg[4]_i_18_n_0\,
      O => \data_reg_reg[4]_i_11_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[4]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[4]_i_19_n_0\,
      I1 => \data_reg[4]_i_20_n_0\,
      O => \data_reg_reg[4]_i_12_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[4]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[4]_i_21_n_0\,
      I1 => \data_reg[4]_i_22_n_0\,
      O => \data_reg_reg[4]_i_13_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[4]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[4]_i_23_n_0\,
      I1 => \data_reg[4]_i_24_n_0\,
      O => \data_reg_reg[4]_i_14_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[4]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[4]_i_25_n_0\,
      I1 => \data_reg[4]_i_26_n_0\,
      O => \data_reg_reg[4]_i_15_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[4]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[4]_i_27_n_0\,
      I1 => \data_reg[4]_i_28_n_0\,
      O => \data_reg_reg[4]_i_16_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[4]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_reg_reg[4]_i_16_n_0\,
      I1 => \data_reg_reg[4]_i_15_n_0\,
      O => \data_reg_reg[4]_i_8_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[4]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_reg_reg[4]_i_12_n_0\,
      I1 => \data_reg_reg[4]_i_11_n_0\,
      O => \data_reg_reg[4]_i_9_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[5]\: unisim.vcomponents.FDCP
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CLR => \data_reg[5]_i_2_n_0\,
      D => p_2_in(5),
      PRE => \data_reg[5]_i_3_n_0\,
      Q => \NLW_data_reg_reg[5]_Q_UNCONNECTED\
    );
\data_reg_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \data_reg[5]_i_2_n_0\,
      D => p_2_in(5),
      Q => \data_reg_reg[5]_C_n_0\
    );
\data_reg_reg[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_reg[5]_i_2_n_0\,
      D => '1',
      G => \data_reg[5]_i_3_n_0\,
      GE => '1',
      Q => \data_reg_reg[5]_LDC_n_0\
    );
\data_reg_reg[5]_P\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_2_in(5),
      PRE => \data_reg[5]_i_3_n_0\,
      Q => \data_reg_reg[5]_P_n_0\
    );
\data_reg_reg[5]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_reg_reg[5]_i_13_n_0\,
      I1 => \data_reg_reg[5]_i_12_n_0\,
      O => \data_reg_reg[5]_i_10_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[5]_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_reg_reg[5]_i_15_n_0\,
      I1 => \data_reg_reg[5]_i_14_n_0\,
      O => \data_reg_reg[5]_i_11_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[5]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[5]_i_21_n_0\,
      I1 => \data_reg[5]_i_22_n_0\,
      O => \data_reg_reg[5]_i_12_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[5]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[5]_i_23_n_0\,
      I1 => \data_reg[5]_i_24_n_0\,
      O => \data_reg_reg[5]_i_13_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[5]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[5]_i_25_n_0\,
      I1 => \data_reg[5]_i_26_n_0\,
      O => \data_reg_reg[5]_i_14_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[5]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[5]_i_27_n_0\,
      I1 => \data_reg[5]_i_28_n_0\,
      O => \data_reg_reg[5]_i_15_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[5]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[5]_i_29_n_0\,
      I1 => \data_reg[5]_i_30_n_0\,
      O => \data_reg_reg[5]_i_17_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[5]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[5]_i_31_n_0\,
      I1 => \data_reg[5]_i_32_n_0\,
      O => \data_reg_reg[5]_i_18_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[5]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_reg_reg[5]_i_18_n_0\,
      I1 => \data_reg_reg[5]_i_17_n_0\,
      O => \data_reg_reg[5]_i_9_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[6]\: unisim.vcomponents.FDCP
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CLR => \data_reg[6]_i_2_n_0\,
      D => p_2_in(6),
      PRE => \data_reg[6]_i_3_n_0\,
      Q => \NLW_data_reg_reg[6]_Q_UNCONNECTED\
    );
\data_reg_reg[6]_C\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \data_reg[6]_i_2_n_0\,
      D => p_2_in(6),
      Q => \data_reg_reg[6]_C_n_0\
    );
\data_reg_reg[6]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_reg[6]_i_2_n_0\,
      D => '1',
      G => \data_reg[6]_i_3_n_0\,
      GE => '1',
      Q => \data_reg_reg[6]_LDC_n_0\
    );
\data_reg_reg[6]_P\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_2_in(6),
      PRE => \data_reg[6]_i_3_n_0\,
      Q => \data_reg_reg[6]_P_n_0\
    );
\data_reg_reg[6]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_reg_reg[6]_i_13_n_0\,
      I1 => \data_reg_reg[6]_i_12_n_0\,
      O => \data_reg_reg[6]_i_10_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[6]_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_reg_reg[6]_i_15_n_0\,
      I1 => \data_reg_reg[6]_i_14_n_0\,
      O => \data_reg_reg[6]_i_11_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[6]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[6]_i_21_n_0\,
      I1 => \data_reg[6]_i_22_n_0\,
      O => \data_reg_reg[6]_i_12_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[6]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[6]_i_23_n_0\,
      I1 => \data_reg[6]_i_24_n_0\,
      O => \data_reg_reg[6]_i_13_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[6]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[6]_i_25_n_0\,
      I1 => \data_reg[6]_i_26_n_0\,
      O => \data_reg_reg[6]_i_14_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[6]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[6]_i_27_n_0\,
      I1 => \data_reg[6]_i_28_n_0\,
      O => \data_reg_reg[6]_i_15_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[6]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[6]_i_29_n_0\,
      I1 => \data_reg[6]_i_30_n_0\,
      O => \data_reg_reg[6]_i_17_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[6]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[6]_i_31_n_0\,
      I1 => \data_reg[6]_i_32_n_0\,
      O => \data_reg_reg[6]_i_18_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[6]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_reg_reg[6]_i_18_n_0\,
      I1 => \data_reg_reg[6]_i_17_n_0\,
      O => \data_reg_reg[6]_i_9_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[7]\: unisim.vcomponents.FDCP
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CLR => \data_reg[7]_i_2_n_0\,
      D => p_2_in(7),
      PRE => \data_reg[7]_i_3_n_0\,
      Q => \NLW_data_reg_reg[7]_Q_UNCONNECTED\
    );
\data_reg_reg[7]_C\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \data_reg[7]_i_2_n_0\,
      D => p_2_in(7),
      Q => \data_reg_reg[7]_C_n_0\
    );
\data_reg_reg[7]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_reg[7]_i_2_n_0\,
      D => '1',
      G => \data_reg[7]_i_3_n_0\,
      GE => '1',
      Q => \data_reg_reg[7]_LDC_n_0\
    );
\data_reg_reg[7]_P\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_2_in(7),
      PRE => \data_reg[7]_i_3_n_0\,
      Q => \data_reg_reg[7]_P_n_0\
    );
\data_reg_reg[7]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[7]_i_17_n_0\,
      I1 => \data_reg[7]_i_18_n_0\,
      O => \data_reg_reg[7]_i_10_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[7]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[7]_i_19_n_0\,
      I1 => \data_reg[7]_i_20_n_0\,
      O => \data_reg_reg[7]_i_11_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[7]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[7]_i_21_n_0\,
      I1 => \data_reg[7]_i_22_n_0\,
      O => \data_reg_reg[7]_i_12_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[7]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[7]_i_23_n_0\,
      I1 => \data_reg[7]_i_24_n_0\,
      O => \data_reg_reg[7]_i_13_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[7]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[7]_i_25_n_0\,
      I1 => \data_reg[7]_i_26_n_0\,
      O => \data_reg_reg[7]_i_14_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[7]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_reg_reg[7]_i_9_n_0\,
      I1 => \data_reg_reg[7]_i_10_n_0\,
      O => \data_reg_reg[7]_i_6_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[7]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_reg_reg[7]_i_11_n_0\,
      I1 => \data_reg_reg[7]_i_12_n_0\,
      O => \data_reg_reg[7]_i_7_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[7]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_reg_reg[7]_i_13_n_0\,
      I1 => \data_reg_reg[7]_i_14_n_0\,
      O => \data_reg_reg[7]_i_8_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[7]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[7]_i_15_n_0\,
      I1 => \data_reg[7]_i_16_n_0\,
      O => \data_reg_reg[7]_i_9_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[8]\: unisim.vcomponents.FDCP
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CLR => \data_reg[8]_i_2_n_0\,
      D => p_2_in(8),
      PRE => \data_reg[8]_i_3_n_0\,
      Q => \NLW_data_reg_reg[8]_Q_UNCONNECTED\
    );
\data_reg_reg[8]_C\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \data_reg[8]_i_2_n_0\,
      D => p_2_in(8),
      Q => \data_reg_reg[8]_C_n_0\
    );
\data_reg_reg[8]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_reg[8]_i_2_n_0\,
      D => '1',
      G => \data_reg[8]_i_3_n_0\,
      GE => '1',
      Q => \data_reg_reg[8]_LDC_n_0\
    );
\data_reg_reg[8]_P\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_2_in(8),
      PRE => \data_reg[8]_i_3_n_0\,
      Q => \data_reg_reg[8]_P_n_0\
    );
\data_reg_reg[8]_i_13\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_reg_reg[8]_i_17_n_0\,
      I1 => \data_reg_reg[8]_i_18_n_0\,
      O => \data_reg_reg[8]_i_13_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[8]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[8]_i_19_n_0\,
      I1 => \data_reg[8]_i_20_n_0\,
      O => \data_reg_reg[8]_i_14_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[8]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[8]_i_22_n_0\,
      I1 => \data_reg[8]_i_23_n_0\,
      O => \data_reg_reg[8]_i_17_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[8]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[8]_i_24_n_0\,
      I1 => \data_reg[8]_i_25_n_0\,
      O => \data_reg_reg[8]_i_18_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[8]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[8]_i_7_n_0\,
      I1 => \data_reg[8]_i_8_n_0\,
      O => \data_reg_reg[8]_i_5_n_0\,
      S => address_counter(9)
    );
\data_reg_reg[9]\: unisim.vcomponents.FDCP
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CLR => \data_reg[9]_i_2_n_0\,
      D => p_2_in(9),
      PRE => \data_reg[9]_i_3_n_0\,
      Q => \NLW_data_reg_reg[9]_Q_UNCONNECTED\
    );
\data_reg_reg[9]_C\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \data_reg[9]_i_2_n_0\,
      D => p_2_in(9),
      Q => \data_reg_reg[9]_C_n_0\
    );
\data_reg_reg[9]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_reg[9]_i_2_n_0\,
      D => '1',
      G => \data_reg[9]_i_3_n_0\,
      GE => '1',
      Q => \data_reg_reg[9]_LDC_n_0\
    );
\data_reg_reg[9]_P\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_2_in(9),
      PRE => \data_reg[9]_i_3_n_0\,
      Q => \data_reg_reg[9]_P_n_0\
    );
\data_reg_reg[9]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[9]_i_15_n_0\,
      I1 => \data_reg[9]_i_16_n_0\,
      O => \data_reg_reg[9]_i_11_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[9]_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_reg_reg[9]_i_18_n_0\,
      I1 => \data_reg_reg[9]_i_19_n_0\,
      O => \data_reg_reg[9]_i_12_n_0\,
      S => address_counter(7)
    );
\data_reg_reg[9]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[9]_i_20_n_0\,
      I1 => \data_reg[9]_i_21_n_0\,
      O => \data_reg_reg[9]_i_13_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[9]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[9]_i_23_n_0\,
      I1 => \data_reg[9]_i_24_n_0\,
      O => \data_reg_reg[9]_i_18_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[9]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[9]_i_25_n_0\,
      I1 => \data_reg[9]_i_26_n_0\,
      O => \data_reg_reg[9]_i_19_n_0\,
      S => address_counter(6)
    );
\data_reg_reg[9]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_reg[9]_i_7_n_0\,
      I1 => \data_reg[9]_i_8_n_0\,
      O => \data_reg_reg[9]_i_5_n_0\,
      S => address_counter(9)
    );
send_en_clk_rise_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => send_en,
      I1 => send_en_detected,
      O => send_en_clk_rise
    );
send_en_detected_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => send_en,
      I1 => reset_n,
      I2 => send_en_detected,
      O => send_en_detected_i_1_n_0
    );
send_en_detected_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => send_en_detected_i_1_n_0,
      Q => send_en_detected,
      R => '0'
    );
state_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F838"
    )
        port map (
      I0 => send_en_clk_rise,
      I1 => reset_n,
      I2 => state_reg_n_0,
      I3 => en_n,
      I4 => \address_counter[14]_i_3_n_0\,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => state_i_1_n_0,
      Q => state_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Jupyter_dac_top_0_0_spi_master is
  port (
    reset_n_0 : out STD_LOGIC;
    spi_busy : out STD_LOGIC;
    ss_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    sclk : out STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    state_reg_0 : out STD_LOGIC;
    spi_busy_prev_reg : out STD_LOGIC;
    mosi : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \state__0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    spi_busy_prev : in STD_LOGIC;
    mosi_INST_0_i_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Jupyter_dac_top_0_0_spi_master : entity is "spi_master";
end Jupyter_dac_top_0_0_spi_master;

architecture STRUCTURE of Jupyter_dac_top_0_0_spi_master is
  signal assert_data_i_1_n_0 : STD_LOGIC;
  signal assert_data_reg_n_0 : STD_LOGIC;
  signal busy1 : STD_LOGIC;
  signal busy117_out : STD_LOGIC;
  signal \busy1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \busy1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \busy1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \busy1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \busy1_carry__0_n_0\ : STD_LOGIC;
  signal \busy1_carry__0_n_1\ : STD_LOGIC;
  signal \busy1_carry__0_n_2\ : STD_LOGIC;
  signal \busy1_carry__0_n_3\ : STD_LOGIC;
  signal \busy1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \busy1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \busy1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \busy1_carry__1_n_2\ : STD_LOGIC;
  signal \busy1_carry__1_n_3\ : STD_LOGIC;
  signal busy1_carry_i_1_n_0 : STD_LOGIC;
  signal busy1_carry_i_2_n_0 : STD_LOGIC;
  signal busy1_carry_i_3_n_0 : STD_LOGIC;
  signal busy1_carry_i_4_n_0 : STD_LOGIC;
  signal busy1_carry_n_0 : STD_LOGIC;
  signal busy1_carry_n_1 : STD_LOGIC;
  signal busy1_carry_n_2 : STD_LOGIC;
  signal busy1_carry_n_3 : STD_LOGIC;
  signal clk_ratio : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \clk_ratio[31]_i_1_n_0\ : STD_LOGIC;
  signal clk_toggles : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal clk_toggles0 : STD_LOGIC;
  signal \clk_toggles[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_toggles[5]_i_1_n_0\ : STD_LOGIC;
  signal \clk_toggles_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_toggles_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_toggles_reg_n_0_[2]\ : STD_LOGIC;
  signal \clk_toggles_reg_n_0_[3]\ : STD_LOGIC;
  signal \clk_toggles_reg_n_0_[4]\ : STD_LOGIC;
  signal \clk_toggles_reg_n_0_[5]\ : STD_LOGIC;
  signal count0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal count0_0 : STD_LOGIC;
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_1\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry__3_n_0\ : STD_LOGIC;
  signal \count0_carry__3_n_1\ : STD_LOGIC;
  signal \count0_carry__3_n_2\ : STD_LOGIC;
  signal \count0_carry__3_n_3\ : STD_LOGIC;
  signal \count0_carry__4_n_0\ : STD_LOGIC;
  signal \count0_carry__4_n_1\ : STD_LOGIC;
  signal \count0_carry__4_n_2\ : STD_LOGIC;
  signal \count0_carry__4_n_3\ : STD_LOGIC;
  signal \count0_carry__5_n_0\ : STD_LOGIC;
  signal \count0_carry__5_n_1\ : STD_LOGIC;
  signal \count0_carry__5_n_2\ : STD_LOGIC;
  signal \count0_carry__5_n_3\ : STD_LOGIC;
  signal \count0_carry__6_n_2\ : STD_LOGIC;
  signal \count0_carry__6_n_3\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_1_n_0\ : STD_LOGIC;
  signal \count[13]_i_1_n_0\ : STD_LOGIC;
  signal \count[14]_i_1_n_0\ : STD_LOGIC;
  signal \count[15]_i_1_n_0\ : STD_LOGIC;
  signal \count[16]_i_1_n_0\ : STD_LOGIC;
  signal \count[17]_i_1_n_0\ : STD_LOGIC;
  signal \count[18]_i_1_n_0\ : STD_LOGIC;
  signal \count[19]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[20]_i_1_n_0\ : STD_LOGIC;
  signal \count[21]_i_1_n_0\ : STD_LOGIC;
  signal \count[22]_i_1_n_0\ : STD_LOGIC;
  signal \count[23]_i_1_n_0\ : STD_LOGIC;
  signal \count[24]_i_1_n_0\ : STD_LOGIC;
  signal \count[25]_i_1_n_0\ : STD_LOGIC;
  signal \count[26]_i_1_n_0\ : STD_LOGIC;
  signal \count[27]_i_1_n_0\ : STD_LOGIC;
  signal \count[28]_i_1_n_0\ : STD_LOGIC;
  signal \count[29]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[30]_i_1_n_0\ : STD_LOGIC;
  signal \count[31]_i_1_n_0\ : STD_LOGIC;
  signal \count[31]_i_3_n_0\ : STD_LOGIC;
  signal \count[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_reg_n_0_[19]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[20]\ : STD_LOGIC;
  signal \count_reg_n_0_[21]\ : STD_LOGIC;
  signal \count_reg_n_0_[22]\ : STD_LOGIC;
  signal \count_reg_n_0_[23]\ : STD_LOGIC;
  signal \count_reg_n_0_[24]\ : STD_LOGIC;
  signal \count_reg_n_0_[25]\ : STD_LOGIC;
  signal \count_reg_n_0_[26]\ : STD_LOGIC;
  signal \count_reg_n_0_[27]\ : STD_LOGIC;
  signal \count_reg_n_0_[28]\ : STD_LOGIC;
  signal \count_reg_n_0_[29]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[30]\ : STD_LOGIC;
  signal \count_reg_n_0_[31]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal last_bit_rx : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \last_bit_rx[4]_i_1_n_0\ : STD_LOGIC;
  signal \mosi0__0\ : STD_LOGIC;
  signal mosi_tristate_oe_i_1_n_0 : STD_LOGIC;
  signal mosi_tristate_oe_reg_n_0 : STD_LOGIC;
  signal \^reset_n_0\ : STD_LOGIC;
  signal \^sclk\ : STD_LOGIC;
  signal sclk_i_1_n_0 : STD_LOGIC;
  signal sclk_i_2_n_0 : STD_LOGIC;
  signal sclk_i_3_n_0 : STD_LOGIC;
  signal \^spi_busy\ : STD_LOGIC;
  signal \^ss_n\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ss_n[0]_i_1_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal tx_buffer0 : STD_LOGIC;
  signal \tx_buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[10]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[11]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[12]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[13]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[14]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[15]_i_2_n_0\ : STD_LOGIC;
  signal \tx_buffer[15]_i_4_n_0\ : STD_LOGIC;
  signal \tx_buffer[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[9]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_busy1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_busy1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_busy1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_busy1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_ratio[31]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clk_toggles[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \clk_toggles[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \clk_toggles[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_toggles[4]_i_1\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \count[10]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count[11]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count[14]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count[15]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count[16]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count[17]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count[18]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count[19]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count[1]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count[20]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count[21]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count[22]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count[23]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[24]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[25]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count[26]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count[27]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[28]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[29]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count[2]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count[30]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count[31]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[3]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count[4]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count[5]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count[6]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count[7]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count[8]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count[9]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \last_bit_rx[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of mosi_INST_0_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ss_n[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of state_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tx_buffer[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_buffer[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tx_buffer[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tx_buffer[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tx_buffer[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tx_buffer[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tx_buffer[15]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tx_buffer[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_buffer[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_buffer[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_buffer[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tx_buffer[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tx_buffer[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tx_buffer[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tx_buffer[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tx_buffer[9]_i_1\ : label is "soft_lutpair9";
begin
  reset_n_0 <= \^reset_n_0\;
  sclk <= \^sclk\;
  spi_busy <= \^spi_busy\;
  ss_n(0) <= \^ss_n\(0);
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD0FFF00"
    )
        port map (
      I0 => spi_busy_prev,
      I1 => \^spi_busy\,
      I2 => \FSM_sequential_state_reg[1]_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => spi_busy_prev_reg
    );
assert_data_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FFFA808"
    )
        port map (
      I0 => reset_n,
      I1 => \count_reg[0]_0\,
      I2 => state,
      I3 => busy1,
      I4 => assert_data_reg_n_0,
      O => assert_data_i_1_n_0
    );
assert_data_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => assert_data_i_1_n_0,
      Q => assert_data_reg_n_0,
      R => '0'
    );
busy1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => busy1_carry_n_0,
      CO(2) => busy1_carry_n_1,
      CO(1) => busy1_carry_n_2,
      CO(0) => busy1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_busy1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => busy1_carry_i_1_n_0,
      S(2) => busy1_carry_i_2_n_0,
      S(1) => busy1_carry_i_3_n_0,
      S(0) => busy1_carry_i_4_n_0
    );
\busy1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => busy1_carry_n_0,
      CO(3) => \busy1_carry__0_n_0\,
      CO(2) => \busy1_carry__0_n_1\,
      CO(1) => \busy1_carry__0_n_2\,
      CO(0) => \busy1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_busy1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \busy1_carry__0_i_1_n_0\,
      S(2) => \busy1_carry__0_i_2_n_0\,
      S(1) => \busy1_carry__0_i_3_n_0\,
      S(0) => \busy1_carry__0_i_4_n_0\
    );
\busy1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[23]\,
      I1 => \count_reg_n_0_[22]\,
      I2 => \count_reg_n_0_[21]\,
      O => \busy1_carry__0_i_1_n_0\
    );
\busy1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[20]\,
      I1 => \count_reg_n_0_[19]\,
      I2 => \count_reg_n_0_[18]\,
      O => \busy1_carry__0_i_2_n_0\
    );
\busy1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[17]\,
      I1 => \count_reg_n_0_[16]\,
      I2 => \count_reg_n_0_[15]\,
      O => \busy1_carry__0_i_3_n_0\
    );
\busy1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[14]\,
      I1 => \count_reg_n_0_[13]\,
      I2 => \count_reg_n_0_[12]\,
      O => \busy1_carry__0_i_4_n_0\
    );
\busy1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \busy1_carry__0_n_0\,
      CO(3) => \NLW_busy1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => busy1,
      CO(1) => \busy1_carry__1_n_2\,
      CO(0) => \busy1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_busy1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \busy1_carry__1_i_1_n_0\,
      S(1) => \busy1_carry__1_i_2_n_0\,
      S(0) => \busy1_carry__1_i_3_n_0\
    );
\busy1_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \count_reg_n_0_[31]\,
      I1 => clk_ratio(31),
      I2 => \count_reg_n_0_[30]\,
      O => \busy1_carry__1_i_1_n_0\
    );
\busy1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[29]\,
      I1 => \count_reg_n_0_[28]\,
      I2 => \count_reg_n_0_[27]\,
      O => \busy1_carry__1_i_2_n_0\
    );
\busy1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[26]\,
      I1 => \count_reg_n_0_[25]\,
      I2 => \count_reg_n_0_[24]\,
      O => \busy1_carry__1_i_3_n_0\
    );
busy1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[11]\,
      I1 => \count_reg_n_0_[10]\,
      I2 => \count_reg_n_0_[9]\,
      O => busy1_carry_i_1_n_0
    );
busy1_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[8]\,
      I1 => \count_reg_n_0_[7]\,
      I2 => \count_reg_n_0_[6]\,
      O => busy1_carry_i_2_n_0
    );
busy1_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[3]\,
      O => busy1_carry_i_3_n_0
    );
busy1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => last_bit_rx(4),
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[1]\,
      O => busy1_carry_i_4_n_0
    );
busy_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => state_i_1_n_0,
      PRE => \^reset_n_0\,
      Q => \^spi_busy\
    );
\clk_ratio[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF00"
    )
        port map (
      I0 => reset_n,
      I1 => state,
      I2 => \count_reg[0]_0\,
      I3 => clk_ratio(31),
      O => \clk_ratio[31]_i_1_n_0\
    );
\clk_ratio_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_ratio[31]_i_1_n_0\,
      Q => clk_ratio(31),
      R => '0'
    );
\clk_toggles[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_toggles_reg_n_0_[0]\,
      O => \clk_toggles[0]_i_1_n_0\
    );
\clk_toggles[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFF0000FFFF00"
    )
        port map (
      I0 => \clk_toggles_reg_n_0_[2]\,
      I1 => \clk_toggles_reg_n_0_[4]\,
      I2 => \clk_toggles_reg_n_0_[3]\,
      I3 => \clk_toggles_reg_n_0_[1]\,
      I4 => \clk_toggles_reg_n_0_[0]\,
      I5 => \clk_toggles_reg_n_0_[5]\,
      O => clk_toggles(1)
    );
\clk_toggles[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \clk_toggles_reg_n_0_[2]\,
      I1 => \clk_toggles_reg_n_0_[1]\,
      I2 => \clk_toggles_reg_n_0_[0]\,
      O => clk_toggles(2)
    );
\clk_toggles[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => \clk_toggles_reg_n_0_[2]\,
      I1 => \clk_toggles_reg_n_0_[3]\,
      I2 => \clk_toggles_reg_n_0_[1]\,
      I3 => \clk_toggles_reg_n_0_[0]\,
      O => clk_toggles(3)
    );
\clk_toggles[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
        port map (
      I0 => \clk_toggles_reg_n_0_[2]\,
      I1 => \clk_toggles_reg_n_0_[4]\,
      I2 => \clk_toggles_reg_n_0_[3]\,
      I3 => \clk_toggles_reg_n_0_[1]\,
      I4 => \clk_toggles_reg_n_0_[0]\,
      O => clk_toggles(4)
    );
\clk_toggles[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => reset_n,
      I1 => state,
      I2 => \count_reg[0]_0\,
      O => \clk_toggles[5]_i_1_n_0\
    );
\clk_toggles[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => reset_n,
      I1 => busy1,
      I2 => state,
      O => clk_toggles0
    );
\clk_toggles[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFEFFFF80000000"
    )
        port map (
      I0 => \clk_toggles_reg_n_0_[2]\,
      I1 => \clk_toggles_reg_n_0_[4]\,
      I2 => \clk_toggles_reg_n_0_[3]\,
      I3 => \clk_toggles_reg_n_0_[1]\,
      I4 => \clk_toggles_reg_n_0_[0]\,
      I5 => \clk_toggles_reg_n_0_[5]\,
      O => clk_toggles(5)
    );
\clk_toggles_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_toggles0,
      D => \clk_toggles[0]_i_1_n_0\,
      Q => \clk_toggles_reg_n_0_[0]\,
      R => \clk_toggles[5]_i_1_n_0\
    );
\clk_toggles_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_toggles0,
      D => clk_toggles(1),
      Q => \clk_toggles_reg_n_0_[1]\,
      R => \clk_toggles[5]_i_1_n_0\
    );
\clk_toggles_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_toggles0,
      D => clk_toggles(2),
      Q => \clk_toggles_reg_n_0_[2]\,
      R => \clk_toggles[5]_i_1_n_0\
    );
\clk_toggles_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_toggles0,
      D => clk_toggles(3),
      Q => \clk_toggles_reg_n_0_[3]\,
      R => \clk_toggles[5]_i_1_n_0\
    );
\clk_toggles_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_toggles0,
      D => clk_toggles(4),
      Q => \clk_toggles_reg_n_0_[4]\,
      R => \clk_toggles[5]_i_1_n_0\
    );
\clk_toggles_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_toggles0,
      D => clk_toggles(5),
      Q => \clk_toggles_reg_n_0_[5]\,
      R => \clk_toggles[5]_i_1_n_0\
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => \count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(4 downto 1),
      S(3) => \count_reg_n_0_[4]\,
      S(2) => \count_reg_n_0_[3]\,
      S(1) => \count_reg_n_0_[2]\,
      S(0) => \count_reg_n_0_[1]\
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(8 downto 5),
      S(3) => \count_reg_n_0_[8]\,
      S(2) => \count_reg_n_0_[7]\,
      S(1) => \count_reg_n_0_[6]\,
      S(0) => \count_reg_n_0_[5]\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(12 downto 9),
      S(3) => \count_reg_n_0_[12]\,
      S(2) => \count_reg_n_0_[11]\,
      S(1) => \count_reg_n_0_[10]\,
      S(0) => \count_reg_n_0_[9]\
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3) => \count0_carry__2_n_0\,
      CO(2) => \count0_carry__2_n_1\,
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(16 downto 13),
      S(3) => \count_reg_n_0_[16]\,
      S(2) => \count_reg_n_0_[15]\,
      S(1) => \count_reg_n_0_[14]\,
      S(0) => \count_reg_n_0_[13]\
    );
\count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__2_n_0\,
      CO(3) => \count0_carry__3_n_0\,
      CO(2) => \count0_carry__3_n_1\,
      CO(1) => \count0_carry__3_n_2\,
      CO(0) => \count0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(20 downto 17),
      S(3) => \count_reg_n_0_[20]\,
      S(2) => \count_reg_n_0_[19]\,
      S(1) => \count_reg_n_0_[18]\,
      S(0) => \count_reg_n_0_[17]\
    );
\count0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__3_n_0\,
      CO(3) => \count0_carry__4_n_0\,
      CO(2) => \count0_carry__4_n_1\,
      CO(1) => \count0_carry__4_n_2\,
      CO(0) => \count0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(24 downto 21),
      S(3) => \count_reg_n_0_[24]\,
      S(2) => \count_reg_n_0_[23]\,
      S(1) => \count_reg_n_0_[22]\,
      S(0) => \count_reg_n_0_[21]\
    );
\count0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__4_n_0\,
      CO(3) => \count0_carry__5_n_0\,
      CO(2) => \count0_carry__5_n_1\,
      CO(1) => \count0_carry__5_n_2\,
      CO(0) => \count0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(28 downto 25),
      S(3) => \count_reg_n_0_[28]\,
      S(2) => \count_reg_n_0_[27]\,
      S(1) => \count_reg_n_0_[26]\,
      S(0) => \count_reg_n_0_[25]\
    );
\count0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_count0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count0_carry__6_n_2\,
      CO(0) => \count0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => count0(31 downto 29),
      S(3) => '0',
      S(2) => \count_reg_n_0_[31]\,
      S(1) => \count_reg_n_0_[30]\,
      S(0) => \count_reg_n_0_[29]\
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFAADAAA"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => busy1,
      I2 => state,
      I3 => reset_n,
      I4 => \count_reg[0]_0\,
      O => \count[0]_i_1_n_0\
    );
\count[10]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(10),
      I1 => busy1,
      O => \count[10]_i_1__0_n_0\
    );
\count[11]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(11),
      I1 => busy1,
      O => \count[11]_i_1__0_n_0\
    );
\count[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(12),
      I1 => busy1,
      O => \count[12]_i_1_n_0\
    );
\count[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(13),
      I1 => busy1,
      O => \count[13]_i_1_n_0\
    );
\count[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(14),
      I1 => busy1,
      O => \count[14]_i_1_n_0\
    );
\count[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(15),
      I1 => busy1,
      O => \count[15]_i_1_n_0\
    );
\count[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(16),
      I1 => busy1,
      O => \count[16]_i_1_n_0\
    );
\count[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(17),
      I1 => busy1,
      O => \count[17]_i_1_n_0\
    );
\count[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(18),
      I1 => busy1,
      O => \count[18]_i_1_n_0\
    );
\count[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(19),
      I1 => busy1,
      O => \count[19]_i_1_n_0\
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(1),
      I1 => busy1,
      O => \count[1]_i_1__0_n_0\
    );
\count[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(20),
      I1 => busy1,
      O => \count[20]_i_1_n_0\
    );
\count[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(21),
      I1 => busy1,
      O => \count[21]_i_1_n_0\
    );
\count[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(22),
      I1 => busy1,
      O => \count[22]_i_1_n_0\
    );
\count[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(23),
      I1 => busy1,
      O => \count[23]_i_1_n_0\
    );
\count[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(24),
      I1 => busy1,
      O => \count[24]_i_1_n_0\
    );
\count[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(25),
      I1 => busy1,
      O => \count[25]_i_1_n_0\
    );
\count[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(26),
      I1 => busy1,
      O => \count[26]_i_1_n_0\
    );
\count[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(27),
      I1 => busy1,
      O => \count[27]_i_1_n_0\
    );
\count[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(28),
      I1 => busy1,
      O => \count[28]_i_1_n_0\
    );
\count[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(29),
      I1 => busy1,
      O => \count[29]_i_1_n_0\
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(2),
      I1 => busy1,
      O => \count[2]_i_1__0_n_0\
    );
\count[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(30),
      I1 => busy1,
      O => \count[30]_i_1_n_0\
    );
\count[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => reset_n,
      I2 => state,
      O => \count[31]_i_1_n_0\
    );
\count[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => reset_n,
      I1 => \count_reg[0]_0\,
      I2 => state,
      O => count0_0
    );
\count[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(31),
      I1 => busy1,
      O => \count[31]_i_3_n_0\
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(3),
      I1 => busy1,
      O => \count[3]_i_1__0_n_0\
    );
\count[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(4),
      I1 => busy1,
      O => \count[4]_i_1__0_n_0\
    );
\count[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(5),
      I1 => busy1,
      O => \count[5]_i_1__0_n_0\
    );
\count[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(6),
      I1 => busy1,
      O => \count[6]_i_1__0_n_0\
    );
\count[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(7),
      I1 => busy1,
      O => \count[7]_i_1__0_n_0\
    );
\count[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(8),
      I1 => busy1,
      O => \count[8]_i_1__0_n_0\
    );
\count[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(9),
      I1 => busy1,
      O => \count[9]_i_1__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\,
      R => '0'
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[10]_i_1__0_n_0\,
      Q => \count_reg_n_0_[10]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[11]_i_1__0_n_0\,
      Q => \count_reg_n_0_[11]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[12]_i_1_n_0\,
      Q => \count_reg_n_0_[12]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[13]_i_1_n_0\,
      Q => \count_reg_n_0_[13]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[14]_i_1_n_0\,
      Q => \count_reg_n_0_[14]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[15]_i_1_n_0\,
      Q => \count_reg_n_0_[15]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[16]_i_1_n_0\,
      Q => \count_reg_n_0_[16]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[17]_i_1_n_0\,
      Q => \count_reg_n_0_[17]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[18]_i_1_n_0\,
      Q => \count_reg_n_0_[18]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[19]_i_1_n_0\,
      Q => \count_reg_n_0_[19]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[1]_i_1__0_n_0\,
      Q => \count_reg_n_0_[1]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[20]_i_1_n_0\,
      Q => \count_reg_n_0_[20]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[21]_i_1_n_0\,
      Q => \count_reg_n_0_[21]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[22]_i_1_n_0\,
      Q => \count_reg_n_0_[22]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[23]_i_1_n_0\,
      Q => \count_reg_n_0_[23]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[24]_i_1_n_0\,
      Q => \count_reg_n_0_[24]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[25]_i_1_n_0\,
      Q => \count_reg_n_0_[25]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[26]_i_1_n_0\,
      Q => \count_reg_n_0_[26]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[27]_i_1_n_0\,
      Q => \count_reg_n_0_[27]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[28]_i_1_n_0\,
      Q => \count_reg_n_0_[28]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[29]_i_1_n_0\,
      Q => \count_reg_n_0_[29]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[2]_i_1__0_n_0\,
      Q => \count_reg_n_0_[2]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[30]_i_1_n_0\,
      Q => \count_reg_n_0_[30]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[31]_i_3_n_0\,
      Q => \count_reg_n_0_[31]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[3]_i_1__0_n_0\,
      Q => \count_reg_n_0_[3]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[4]_i_1__0_n_0\,
      Q => \count_reg_n_0_[4]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[5]_i_1__0_n_0\,
      Q => \count_reg_n_0_[5]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[6]_i_1__0_n_0\,
      Q => \count_reg_n_0_[6]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[7]_i_1__0_n_0\,
      Q => \count_reg_n_0_[7]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[8]_i_1__0_n_0\,
      Q => \count_reg_n_0_[8]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[9]_i_1__0_n_0\,
      Q => \count_reg_n_0_[9]\,
      R => \count[31]_i_1_n_0\
    );
\last_bit_rx[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => state,
      I2 => reset_n,
      I3 => last_bit_rx(4),
      O => \last_bit_rx[4]_i_1_n_0\
    );
\last_bit_rx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \last_bit_rx[4]_i_1_n_0\,
      Q => last_bit_rx(4),
      R => '0'
    );
mosi_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mosi_tristate_oe_reg_n_0,
      I1 => mosi_INST_0_i_1,
      O => mosi
    );
mosi_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5F004000"
    )
        port map (
      I0 => busy117_out,
      I1 => \mosi0__0\,
      I2 => busy1,
      I3 => state,
      I4 => mosi_INST_0_i_1,
      O => state_reg_0
    );
mosi_tristate_oe_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFAAAAA800AAAA"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[15]\,
      I1 => busy117_out,
      I2 => \mosi0__0\,
      I3 => busy1,
      I4 => state,
      I5 => mosi_tristate_oe_reg_n_0,
      O => mosi_tristate_oe_i_1_n_0
    );
mosi_tristate_oe_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mosi_tristate_oe_i_1_n_0,
      Q => mosi_tristate_oe_reg_n_0,
      R => '0'
    );
sclk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57F7F7F7A0000000"
    )
        port map (
      I0 => reset_n,
      I1 => \count_reg[0]_0\,
      I2 => state,
      I3 => sclk_i_2_n_0,
      I4 => busy1,
      I5 => \^sclk\,
      O => sclk_i_1_n_0
    );
sclk_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sclk_i_3_n_0,
      I1 => \^ss_n\(0),
      O => sclk_i_2_n_0
    );
sclk_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => \clk_toggles_reg_n_0_[0]\,
      I1 => \clk_toggles_reg_n_0_[2]\,
      I2 => \clk_toggles_reg_n_0_[1]\,
      I3 => \clk_toggles_reg_n_0_[4]\,
      I4 => \clk_toggles_reg_n_0_[3]\,
      I5 => \clk_toggles_reg_n_0_[5]\,
      O => sclk_i_3_n_0
    );
sclk_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sclk_i_1_n_0,
      Q => \^sclk\,
      R => '0'
    );
spi_ena_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77FF0008"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => spi_busy_prev,
      I3 => \^spi_busy\,
      I4 => \count_reg[0]_0\,
      O => \FSM_sequential_state_reg[1]\
    );
\ss_n[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => busy117_out,
      I1 => busy1,
      I2 => state,
      O => \ss_n[0]_i_1_n_0\
    );
\ss_n[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \^reset_n_0\
    );
\ss_n[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \clk_toggles_reg_n_0_[1]\,
      I1 => \clk_toggles_reg_n_0_[4]\,
      I2 => \clk_toggles_reg_n_0_[5]\,
      I3 => \clk_toggles_reg_n_0_[0]\,
      I4 => \clk_toggles_reg_n_0_[3]\,
      I5 => \clk_toggles_reg_n_0_[2]\,
      O => busy117_out
    );
\ss_n_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \ss_n[0]_i_1_n_0\,
      PRE => \^reset_n_0\,
      Q => \^ss_n\(0)
    );
state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F70"
    )
        port map (
      I0 => busy117_out,
      I1 => busy1,
      I2 => state,
      I3 => \count_reg[0]_0\,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => state_i_1_n_0,
      Q => state
    );
\tx_buffer[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => state,
      O => \tx_buffer[0]_i_1_n_0\
    );
\tx_buffer[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[9]\,
      I1 => state,
      I2 => Q(10),
      O => \tx_buffer[10]_i_1_n_0\
    );
\tx_buffer[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[10]\,
      I1 => state,
      I2 => Q(11),
      O => \tx_buffer[11]_i_1_n_0\
    );
\tx_buffer[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[11]\,
      I1 => state,
      I2 => Q(12),
      O => \tx_buffer[12]_i_1_n_0\
    );
\tx_buffer[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[12]\,
      I1 => state,
      I2 => Q(13),
      O => \tx_buffer[13]_i_1_n_0\
    );
\tx_buffer[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[13]\,
      I1 => state,
      I2 => Q(14),
      O => \tx_buffer[14]_i_1_n_0\
    );
\tx_buffer[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080808"
    )
        port map (
      I0 => reset_n,
      I1 => \count_reg[0]_0\,
      I2 => state,
      I3 => \mosi0__0\,
      I4 => busy1,
      O => tx_buffer0
    );
\tx_buffer[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[14]\,
      I1 => state,
      I2 => Q(15),
      O => \tx_buffer[15]_i_2_n_0\
    );
\tx_buffer[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => assert_data_reg_n_0,
      I1 => \clk_toggles_reg_n_0_[5]\,
      I2 => \tx_buffer[15]_i_4_n_0\,
      O => \mosi0__0\
    );
\tx_buffer[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
        port map (
      I0 => \clk_toggles_reg_n_0_[0]\,
      I1 => \clk_toggles_reg_n_0_[1]\,
      I2 => \clk_toggles_reg_n_0_[2]\,
      I3 => \clk_toggles_reg_n_0_[3]\,
      I4 => \clk_toggles_reg_n_0_[4]\,
      I5 => last_bit_rx(4),
      O => \tx_buffer[15]_i_4_n_0\
    );
\tx_buffer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[0]\,
      I1 => state,
      I2 => Q(1),
      O => \tx_buffer[1]_i_1_n_0\
    );
\tx_buffer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[1]\,
      I1 => state,
      I2 => Q(2),
      O => \tx_buffer[2]_i_1_n_0\
    );
\tx_buffer[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[2]\,
      I1 => state,
      I2 => Q(3),
      O => \tx_buffer[3]_i_1_n_0\
    );
\tx_buffer[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[3]\,
      I1 => state,
      I2 => Q(4),
      O => \tx_buffer[4]_i_1_n_0\
    );
\tx_buffer[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[4]\,
      I1 => state,
      I2 => Q(5),
      O => \tx_buffer[5]_i_1_n_0\
    );
\tx_buffer[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[5]\,
      I1 => state,
      I2 => Q(6),
      O => \tx_buffer[6]_i_1_n_0\
    );
\tx_buffer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[6]\,
      I1 => state,
      I2 => Q(7),
      O => \tx_buffer[7]_i_1_n_0\
    );
\tx_buffer[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[7]\,
      I1 => state,
      I2 => Q(8),
      O => \tx_buffer[8]_i_1_n_0\
    );
\tx_buffer[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[8]\,
      I1 => state,
      I2 => Q(9),
      O => \tx_buffer[9]_i_1_n_0\
    );
\tx_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[0]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[0]\,
      R => '0'
    );
\tx_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[10]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[10]\,
      R => '0'
    );
\tx_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[11]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[11]\,
      R => '0'
    );
\tx_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[12]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[12]\,
      R => '0'
    );
\tx_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[13]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[13]\,
      R => '0'
    );
\tx_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[14]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[14]\,
      R => '0'
    );
\tx_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[15]_i_2_n_0\,
      Q => \tx_buffer_reg_n_0_[15]\,
      R => '0'
    );
\tx_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[1]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[1]\,
      R => '0'
    );
\tx_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[2]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[2]\,
      R => '0'
    );
\tx_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[3]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[3]\,
      R => '0'
    );
\tx_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[4]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[4]\,
      R => '0'
    );
\tx_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[5]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[5]\,
      R => '0'
    );
\tx_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[6]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[6]\,
      R => '0'
    );
\tx_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[7]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[7]\,
      R => '0'
    );
\tx_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[8]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[8]\,
      R => '0'
    );
\tx_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[9]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Jupyter_dac_top_0_0_pmod_dac_ad5541a is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    busy_signal : out STD_LOGIC;
    ss_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    sclk : out STD_LOGIC;
    state_reg : out STD_LOGIC;
    mosi : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    dac_tx_ena_signal : in STD_LOGIC;
    mosi_INST_0_i_1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Jupyter_dac_top_0_0_pmod_dac_ad5541a : entity is "pmod_dac_ad5541a";
end Jupyter_dac_top_0_0_pmod_dac_ad5541a;

architecture STRUCTURE of Jupyter_dac_top_0_0_pmod_dac_ad5541a is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal \^busy_signal\ : STD_LOGIC;
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[10]_i_1_n_0\ : STD_LOGIC;
  signal \count[11]_i_1_n_0\ : STD_LOGIC;
  signal \count[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_2_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_i_1_n_0\ : STD_LOGIC;
  signal \count[6]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_1_n_0\ : STD_LOGIC;
  signal \count[8]_i_1_n_0\ : STD_LOGIC;
  signal \count[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal spi_busy : STD_LOGIC;
  signal spi_busy_prev : STD_LOGIC;
  signal spi_ena_reg_n_0 : STD_LOGIC;
  signal spi_master_0_n_4 : STD_LOGIC;
  signal spi_master_0_n_6 : STD_LOGIC;
  signal spi_tx_data : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tx_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_count0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair35";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "pause:01,ready:10,start:00,send_data:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "pause:01,ready:10,start:00,send_data:11";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count[10]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count[11]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count[12]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \count[5]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count[8]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count[9]_i_1\ : label is "soft_lutpair31";
begin
  AR(0) <= \^ar\(0);
  busy_signal <= \^busy_signal\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAF3FA03"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_state[0]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => dac_tx_ena_signal,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1011FFFF"
    )
        port map (
      I0 => \count_reg_n_0_[10]\,
      I1 => \count_reg_n_0_[11]\,
      I2 => \FSM_sequential_state[0]_i_3_n_0\,
      I3 => \FSM_sequential_state[0]_i_4_n_0\,
      I4 => \count_reg_n_0_[12]\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \count_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \count_reg_n_0_[4]\,
      I3 => \count_reg_n_0_[3]\,
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \count_reg_n_0_[7]\,
      I1 => \count_reg_n_0_[9]\,
      I2 => \count_reg_n_0_[8]\,
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \count_reg_n_0_[7]\,
      I1 => \count_reg_n_0_[8]\,
      I2 => \FSM_sequential_state[1]_i_3_n_0\,
      I3 => \FSM_sequential_state[1]_i_4_n_0\,
      I4 => \FSM_sequential_state[1]_i_5_n_0\,
      I5 => \count_reg_n_0_[0]\,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \count_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[6]\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_reg_n_0_[10]\,
      I1 => \count_reg_n_0_[9]\,
      I2 => \count_reg_n_0_[12]\,
      I3 => \count_reg_n_0_[11]\,
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[4]\,
      I3 => \count_reg_n_0_[3]\,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^ar\(0),
      D => spi_master_0_n_6,
      Q => \state__0\(1)
    );
busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEFF00F3"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \state__0\(1),
      I2 => dac_tx_ena_signal,
      I3 => \state__0\(0),
      I4 => \^busy_signal\,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => busy_i_1_n_0,
      PRE => \^ar\(0),
      Q => \^busy_signal\
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => \count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3) => \count_reg_n_0_[4]\,
      S(2) => \count_reg_n_0_[3]\,
      S(1) => \count_reg_n_0_[2]\,
      S(0) => \count_reg_n_0_[1]\
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3) => \count_reg_n_0_[8]\,
      S(2) => \count_reg_n_0_[7]\,
      S(1) => \count_reg_n_0_[6]\,
      S(0) => \count_reg_n_0_[5]\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \NLW_count0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3) => \count_reg_n_0_[12]\,
      S(2) => \count_reg_n_0_[11]\,
      S(1) => \count_reg_n_0_[10]\,
      S(0) => \count_reg_n_0_[9]\
    );
\count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \count_reg_n_0_[0]\,
      O => \count[0]_i_1_n_0\
    );
\count[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => p_1_in(10),
      O => \count[10]_i_1_n_0\
    );
\count[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => p_1_in(11),
      O => \count[11]_i_1_n_0\
    );
\count[12]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reset_n,
      I1 => \state__0\(1),
      O => \count[12]_i_1__0_n_0\
    );
\count[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => p_1_in(12),
      O => \count[12]_i_2_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => p_1_in(1),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => p_1_in(2),
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => p_1_in(3),
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => p_1_in(4),
      O => \count[4]_i_1_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => p_1_in(5),
      O => \count[5]_i_1_n_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => p_1_in(6),
      O => \count[6]_i_1_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => p_1_in(7),
      O => \count[7]_i_1_n_0\
    );
\count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => p_1_in(8),
      O => \count[8]_i_1_n_0\
    );
\count[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => p_1_in(9),
      O => \count[9]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[12]_i_1__0_n_0\,
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\,
      R => '0'
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[12]_i_1__0_n_0\,
      D => \count[10]_i_1_n_0\,
      Q => \count_reg_n_0_[10]\,
      R => '0'
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[12]_i_1__0_n_0\,
      D => \count[11]_i_1_n_0\,
      Q => \count_reg_n_0_[11]\,
      R => '0'
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[12]_i_1__0_n_0\,
      D => \count[12]_i_2_n_0\,
      Q => \count_reg_n_0_[12]\,
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[12]_i_1__0_n_0\,
      D => \count[1]_i_1_n_0\,
      Q => \count_reg_n_0_[1]\,
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[12]_i_1__0_n_0\,
      D => \count[2]_i_1_n_0\,
      Q => \count_reg_n_0_[2]\,
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[12]_i_1__0_n_0\,
      D => \count[3]_i_1_n_0\,
      Q => \count_reg_n_0_[3]\,
      R => '0'
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[12]_i_1__0_n_0\,
      D => \count[4]_i_1_n_0\,
      Q => \count_reg_n_0_[4]\,
      R => '0'
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[12]_i_1__0_n_0\,
      D => \count[5]_i_1_n_0\,
      Q => \count_reg_n_0_[5]\,
      R => '0'
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[12]_i_1__0_n_0\,
      D => \count[6]_i_1_n_0\,
      Q => \count_reg_n_0_[6]\,
      R => '0'
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[12]_i_1__0_n_0\,
      D => \count[7]_i_1_n_0\,
      Q => \count_reg_n_0_[7]\,
      R => '0'
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[12]_i_1__0_n_0\,
      D => \count[8]_i_1_n_0\,
      Q => \count_reg_n_0_[8]\,
      R => '0'
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[12]_i_1__0_n_0\,
      D => \count[9]_i_1_n_0\,
      Q => \count_reg_n_0_[9]\,
      R => '0'
    );
spi_busy_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset_n,
      D => spi_busy,
      Q => spi_busy_prev,
      R => '0'
    );
spi_ena_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^ar\(0),
      D => spi_master_0_n_4,
      Q => spi_ena_reg_n_0
    );
spi_master_0: entity work.Jupyter_dac_top_0_0_spi_master
     port map (
      \FSM_sequential_state_reg[1]\ => spi_master_0_n_4,
      \FSM_sequential_state_reg[1]_0\ => \FSM_sequential_state[1]_i_2_n_0\,
      Q(15 downto 0) => tx_data(15 downto 0),
      clk => clk,
      \count_reg[0]_0\ => spi_ena_reg_n_0,
      mosi => mosi,
      mosi_INST_0_i_1 => mosi_INST_0_i_1,
      reset_n => reset_n,
      reset_n_0 => \^ar\(0),
      sclk => sclk,
      spi_busy => spi_busy,
      spi_busy_prev => spi_busy_prev,
      spi_busy_prev_reg => spi_master_0_n_6,
      ss_n(0) => ss_n(0),
      \state__0\(1 downto 0) => \state__0\(1 downto 0),
      state_reg_0 => state_reg
    );
\spi_tx_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \state__0\(0),
      I1 => dac_tx_ena_signal,
      I2 => \state__0\(1),
      O => spi_tx_data
    );
\spi_tx_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(0),
      Q => tx_data(0)
    );
\spi_tx_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(10),
      Q => tx_data(10)
    );
\spi_tx_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(11),
      Q => tx_data(11)
    );
\spi_tx_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(12),
      Q => tx_data(12)
    );
\spi_tx_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(13),
      Q => tx_data(13)
    );
\spi_tx_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(14),
      Q => tx_data(14)
    );
\spi_tx_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(15),
      Q => tx_data(15)
    );
\spi_tx_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(1),
      Q => tx_data(1)
    );
\spi_tx_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(2),
      Q => tx_data(2)
    );
\spi_tx_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(3),
      Q => tx_data(3)
    );
\spi_tx_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(4),
      Q => tx_data(4)
    );
\spi_tx_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(5),
      Q => tx_data(5)
    );
\spi_tx_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(6),
      Q => tx_data(6)
    );
\spi_tx_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(7),
      Q => tx_data(7)
    );
\spi_tx_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(8),
      Q => tx_data(8)
    );
\spi_tx_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => \^ar\(0),
      D => D(9),
      Q => tx_data(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Jupyter_dac_top_0_0_dac_top is
  port (
    ldac_n : out STD_LOGIC;
    reset_n_0 : out STD_LOGIC;
    ss_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    sclk : out STD_LOGIC;
    state_reg : out STD_LOGIC;
    mosi : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    send_en : in STD_LOGIC;
    mosi_INST_0_i_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Jupyter_dac_top_0_0_dac_top : entity is "dac_top";
end Jupyter_dac_top_0_0_dac_top;

architecture STRUCTURE of Jupyter_dac_top_0_0_dac_top is
  signal busy_signal : STD_LOGIC;
  signal dac_data_signal : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dac_tx_ena_signal : STD_LOGIC;
  signal en_n_signal : STD_LOGIC;
  signal \^reset_n_0\ : STD_LOGIC;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dac_data_instance : label is "soft";
begin
  reset_n_0 <= \^reset_n_0\;
ctrl_instance: entity work.Jupyter_dac_top_0_0_controller
     port map (
      AR(0) => \^reset_n_0\,
      busy_signal => busy_signal,
      clk => clk,
      dac_tx_ena_signal => dac_tx_ena_signal,
      en_n => en_n_signal,
      ldac_n => ldac_n,
      reset_n => reset_n
    );
dac_data_instance: entity work.Jupyter_dac_top_0_0_dac_data_entity
     port map (
      data_out(15 downto 0) => dac_data_signal(15 downto 0),
      en_n => en_n_signal,
      reset_n => reset_n,
      send_en => send_en,
      sys_clk => clk
    );
dac_module_instance: entity work.Jupyter_dac_top_0_0_pmod_dac_ad5541a
     port map (
      AR(0) => \^reset_n_0\,
      D(15 downto 0) => dac_data_signal(15 downto 0),
      busy_signal => busy_signal,
      clk => clk,
      dac_tx_ena_signal => dac_tx_ena_signal,
      mosi => mosi,
      mosi_INST_0_i_1 => mosi_INST_0_i_1,
      reset_n => reset_n,
      sclk => sclk,
      ss_n(0) => ss_n(0),
      state_reg => state_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Jupyter_dac_top_0_0 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    send_en : in STD_LOGIC;
    ldac_n : out STD_LOGIC;
    mosi : out STD_LOGIC;
    sclk : out STD_LOGIC;
    ss_n : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Jupyter_dac_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Jupyter_dac_top_0_0 : entity is "Jupyter_dac_top_0_0,dac_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Jupyter_dac_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Jupyter_dac_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Jupyter_dac_top_0_0 : entity is "dac_top,Vivado 2023.2";
end Jupyter_dac_top_0_0;

architecture STRUCTURE of Jupyter_dac_top_0_0 is
  signal inst_n_1 : STD_LOGIC;
  signal inst_n_4 : STD_LOGIC;
  signal mosi_INST_0_i_1_n_0 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.Jupyter_dac_top_0_0_dac_top
     port map (
      clk => clk,
      ldac_n => ldac_n,
      mosi => mosi,
      mosi_INST_0_i_1 => mosi_INST_0_i_1_n_0,
      reset_n => reset_n,
      reset_n_0 => inst_n_1,
      sclk => sclk,
      send_en => send_en,
      ss_n(0) => ss_n(0),
      state_reg => inst_n_4
    );
mosi_INST_0_i_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => inst_n_1,
      D => inst_n_4,
      Q => mosi_INST_0_i_1_n_0
    );
end STRUCTURE;
