-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu May  9 15:54:20 2024
-- Host        : Predator-Offset running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Thesis/DAS_v2/DAS/DAS.gen/sources_1/bd/Jupyter/ip/Jupyter_AD7091R_0_0/Jupyter_AD7091R_0_0_sim_netlist.vhdl
-- Design      : Jupyter_AD7091R_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Jupyter_AD7091R_0_0_AD7091R is
  port (
    adc_state_db : out STD_LOGIC_VECTOR ( 6 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data_rd_ready_o : out STD_LOGIC;
    sclk_clk_cnt_db : out STD_LOGIC_VECTOR ( 4 downto 0 );
    adc_sclk_o : out STD_LOGIC;
    adc_convst_n_o : out STD_LOGIC;
    adc_cs_n_o : out STD_LOGIC;
    fpga_clk_i : in STD_LOGIC;
    reset_n_i : in STD_LOGIC;
    adc_clk_i : in STD_LOGIC;
    adc_sdata_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Jupyter_AD7091R_0_0_AD7091R : entity is "AD7091R";
end Jupyter_AD7091R_0_0_AD7091R;

architecture STRUCTURE of Jupyter_AD7091R_0_0_AD7091R is
  signal adc_clk_en : STD_LOGIC;
  signal adc_clk_en0 : STD_LOGIC;
  signal adc_clk_en_i_2_n_0 : STD_LOGIC;
  signal adc_clk_en_i_3_n_0 : STD_LOGIC;
  signal adc_cnv_s_i_1_n_0 : STD_LOGIC;
  signal adc_cnv_s_i_2_n_0 : STD_LOGIC;
  signal adc_cnv_s_i_3_n_0 : STD_LOGIC;
  signal adc_cnv_s_i_4_n_0 : STD_LOGIC;
  signal \^adc_convst_n_o\ : STD_LOGIC;
  signal \^adc_cs_n_o\ : STD_LOGIC;
  signal adc_cs_n_s : STD_LOGIC;
  signal adc_cs_n_s_i_1_n_0 : STD_LOGIC;
  signal adc_cs_n_s_i_3_n_0 : STD_LOGIC;
  signal adc_cs_n_s_i_5_n_0 : STD_LOGIC;
  signal adc_cs_n_s_i_6_n_0 : STD_LOGIC;
  signal \adc_data_s[11]_i_1_n_0\ : STD_LOGIC;
  signal \adc_data_s[11]_i_2_n_0\ : STD_LOGIC;
  signal \adc_data_s[11]_i_3_n_0\ : STD_LOGIC;
  signal \adc_data_s_reg_n_0_[11]\ : STD_LOGIC;
  signal adc_next_state : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \adc_next_state_inferred__2/i___0_n_0\ : STD_LOGIC;
  signal \adc_next_state_inferred__2/i___1_n_0\ : STD_LOGIC;
  signal \adc_next_state_inferred__2/i___2_n_0\ : STD_LOGIC;
  signal \adc_next_state_inferred__2/i___3_n_0\ : STD_LOGIC;
  signal \adc_next_state_inferred__2/i__n_0\ : STD_LOGIC;
  signal \adc_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \adc_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \adc_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \adc_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \adc_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \adc_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \adc_state[6]_i_4_n_0\ : STD_LOGIC;
  signal \adc_state[6]_i_5_n_0\ : STD_LOGIC;
  signal \adc_state[6]_i_6_n_0\ : STD_LOGIC;
  signal \adc_state[6]_i_7_n_0\ : STD_LOGIC;
  signal \adc_state[6]_i_8_n_0\ : STD_LOGIC;
  signal \^adc_state_db\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal adc_state_nc_m1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal adc_state_pc_m1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal adc_state_reg : STD_LOGIC_VECTOR ( 7 to 7 );
  signal adc_sw_reset0_out : STD_LOGIC;
  signal adc_sw_reset_i_1_n_0 : STD_LOGIC;
  signal adc_sw_reset_reg_n_0 : STD_LOGIC;
  signal adc_tconvert_cnt0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \adc_tconvert_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_tconvert_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal adc_tconvert_cnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal adc_tconvst_cnt0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \adc_tconvst_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_tconvst_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal adc_tconvst_cnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal adc_tcycle_cnt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \adc_tcycle_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \adc_tcycle_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \adc_tcycle_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \adc_tcycle_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \adc_tcycle_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \adc_tcycle_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \adc_tcycle_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \adc_tcycle_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \adc_tcycle_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \adc_tcycle_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_tcycle_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \adc_tcycle_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \adc_tcycle_cnt[6]_i_5_n_0\ : STD_LOGIC;
  signal \adc_tcycle_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \adc_tcycle_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \adc_tcycle_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \adc_tcycle_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \adc_tcycle_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \adc_tcycle_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \adc_tcycle_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \^data_rd_ready_o\ : STD_LOGIC;
  signal data_rd_ready_o_i_1_n_0 : STD_LOGIC;
  signal data_rd_ready_s : STD_LOGIC;
  signal data_rd_ready_s_0 : STD_LOGIC;
  signal data_rd_ready_s_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal sclk_clk_cnt : STD_LOGIC;
  signal sclk_clk_cnt0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \sclk_clk_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \^sclk_clk_cnt_db\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of adc_clk_en_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of adc_cnv_s_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of adc_cnv_s_i_4 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of adc_cs_n_s_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of adc_cs_n_s_i_5 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of adc_cs_n_s_i_6 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \adc_next_state_inferred__2/i_\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \adc_next_state_inferred__2/i___0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \adc_next_state_inferred__2/i___1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \adc_next_state_inferred__2/i___2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \adc_state[1]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adc_state[1]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adc_state[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adc_state[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \adc_state[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \adc_state[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \adc_state[6]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \adc_state[6]_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adc_state[7]_i_1\ : label is "soft_lutpair11";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \adc_state_reg[0]\ : label is "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000,";
  attribute FSM_ENCODED_STATES of \adc_state_reg[1]\ : label is "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000,";
  attribute FSM_ENCODED_STATES of \adc_state_reg[2]\ : label is "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000,";
  attribute FSM_ENCODED_STATES of \adc_state_reg[3]\ : label is "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000,";
  attribute FSM_ENCODED_STATES of \adc_state_reg[4]\ : label is "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000,";
  attribute FSM_ENCODED_STATES of \adc_state_reg[5]\ : label is "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000,";
  attribute FSM_ENCODED_STATES of \adc_state_reg[6]\ : label is "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000,";
  attribute FSM_ENCODED_STATES of \adc_state_reg[7]\ : label is "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000,";
  attribute SOFT_HLUTNM of \adc_tconvert_cnt[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \adc_tconvert_cnt[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \adc_tconvert_cnt[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \adc_tconvert_cnt[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \adc_tconvst_cnt[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \adc_tconvst_cnt[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \adc_tconvst_cnt[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \adc_tconvst_cnt[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \adc_tcycle_cnt[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \adc_tcycle_cnt[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \adc_tcycle_cnt[3]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \adc_tcycle_cnt[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \adc_tcycle_cnt[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \adc_tcycle_cnt[5]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \adc_tcycle_cnt[6]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \adc_tcycle_cnt[6]_i_3\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \data_o[-1111111100]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \data_o[-1111111100]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_o[-1111111101]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_o[-1111111101]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_o[-1111111102]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_o[-1111111102]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_o[-1111111103]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_o[-1111111103]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_o[-1111111104]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_o[-1111111104]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_o[-1111111105]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_o[-1111111105]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_o[-1111111106]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_o[-1111111106]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_o[-1111111107]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_o[-1111111107]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_o[-1111111108]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_o[-1111111108]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_o[-1111111109]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_o[-1111111109]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_o[-1111111110]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_o[-1111111110]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_o[-1111111111]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_o[-1111111111]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \sclk_clk_cnt[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sclk_clk_cnt[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sclk_clk_cnt[4]_i_2\ : label is "soft_lutpair5";
begin
  adc_convst_n_o <= \^adc_convst_n_o\;
  adc_cs_n_o <= \^adc_cs_n_o\;
  adc_state_db(6 downto 0) <= \^adc_state_db\(6 downto 0);
  data_rd_ready_o <= \^data_rd_ready_o\;
  sclk_clk_cnt_db(4 downto 0) <= \^sclk_clk_cnt_db\(4 downto 0);
adc_clk_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2808"
    )
        port map (
      I0 => adc_clk_en_i_2_n_0,
      I1 => adc_state_nc_m1(4),
      I2 => adc_state_nc_m1(5),
      I3 => adc_clk_en_i_3_n_0,
      O => adc_clk_en0
    );
adc_clk_en_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => adc_state_nc_m1(2),
      I1 => adc_state_nc_m1(3),
      I2 => adc_state_nc_m1(0),
      I3 => adc_state_nc_m1(1),
      I4 => adc_state_nc_m1(7),
      I5 => adc_state_nc_m1(6),
      O => adc_clk_en_i_2_n_0
    );
adc_clk_en_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^sclk_clk_cnt_db\(3),
      I1 => \^sclk_clk_cnt_db\(1),
      I2 => \^sclk_clk_cnt_db\(0),
      I3 => \^sclk_clk_cnt_db\(2),
      I4 => \^sclk_clk_cnt_db\(4),
      O => adc_clk_en_i_3_n_0
    );
adc_clk_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => adc_clk_i,
      CE => '1',
      D => adc_clk_en0,
      Q => adc_clk_en,
      R => '0'
    );
adc_cnv_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBFBBBBBBB0"
    )
        port map (
      I0 => \^adc_state_db\(1),
      I1 => \^adc_state_db\(2),
      I2 => adc_cs_n_s_i_3_n_0,
      I3 => adc_cnv_s_i_2_n_0,
      I4 => adc_cs_n_s_i_6_n_0,
      I5 => \^adc_convst_n_o\,
      O => adc_cnv_s_i_1_n_0
    );
adc_cnv_s_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0017000000140000"
    )
        port map (
      I0 => \adc_state[2]_i_2_n_0\,
      I1 => \^adc_state_db\(0),
      I2 => \^adc_state_db\(1),
      I3 => adc_cnv_s_i_3_n_0,
      I4 => reset_n_i,
      I5 => adc_cnv_s_i_4_n_0,
      O => adc_cnv_s_i_2_n_0
    );
adc_cnv_s_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^adc_state_db\(4),
      I1 => \^adc_state_db\(3),
      I2 => adc_state_reg(7),
      O => adc_cnv_s_i_3_n_0
    );
adc_cnv_s_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^adc_state_db\(6),
      I1 => \^adc_state_db\(5),
      I2 => \^adc_state_db\(2),
      O => adc_cnv_s_i_4_n_0
    );
adc_cnv_s_reg: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_cnv_s_i_1_n_0,
      Q => \^adc_convst_n_o\,
      R => '0'
    );
adc_cs_n_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => adc_cs_n_s,
      I1 => adc_cs_n_s_i_3_n_0,
      I2 => adc_sw_reset0_out,
      I3 => adc_cs_n_s_i_5_n_0,
      I4 => adc_cs_n_s_i_6_n_0,
      I5 => \^adc_cs_n_o\,
      O => adc_cs_n_s_i_1_n_0
    );
adc_cs_n_s_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEEF"
    )
        port map (
      I0 => \^adc_state_db\(2),
      I1 => \^adc_state_db\(1),
      I2 => \^adc_state_db\(5),
      I3 => \^adc_state_db\(6),
      I4 => \^adc_state_db\(3),
      I5 => \^adc_state_db\(4),
      O => adc_cs_n_s
    );
adc_cs_n_s_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \^adc_state_db\(2),
      I1 => \^adc_state_db\(5),
      I2 => \^adc_state_db\(6),
      I3 => reset_n_i,
      I4 => \adc_state[6]_i_7_n_0\,
      O => adc_cs_n_s_i_3_n_0
    );
adc_cs_n_s_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000600000000"
    )
        port map (
      I0 => \^adc_state_db\(0),
      I1 => \^adc_state_db\(1),
      I2 => adc_state_reg(7),
      I3 => \adc_state[1]_i_3_n_0\,
      I4 => \adc_state[2]_i_2_n_0\,
      I5 => reset_n_i,
      O => adc_sw_reset0_out
    );
adc_cs_n_s_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001400"
    )
        port map (
      I0 => \^adc_state_db\(2),
      I1 => \^adc_state_db\(5),
      I2 => \^adc_state_db\(6),
      I3 => reset_n_i,
      I4 => \adc_state[6]_i_7_n_0\,
      O => adc_cs_n_s_i_5_n_0
    );
adc_cs_n_s_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101040"
    )
        port map (
      I0 => \adc_state[1]_i_4_n_0\,
      I1 => adc_state_reg(7),
      I2 => reset_n_i,
      I3 => \^adc_state_db\(4),
      I4 => \^adc_state_db\(3),
      O => adc_cs_n_s_i_6_n_0
    );
adc_cs_n_s_reg: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_cs_n_s_i_1_n_0,
      Q => \^adc_cs_n_o\,
      R => '0'
    );
\adc_data_s[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sclk_clk_cnt,
      I1 => adc_clk_en,
      O => \adc_data_s[11]_i_1_n_0\
    );
\adc_data_s[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDFFF00FF00"
    )
        port map (
      I0 => \^sclk_clk_cnt_db\(0),
      I1 => \^sclk_clk_cnt_db\(1),
      I2 => \^sclk_clk_cnt_db\(2),
      I3 => sclk_clk_cnt,
      I4 => \adc_data_s[11]_i_3_n_0\,
      I5 => adc_clk_en,
      O => \adc_data_s[11]_i_2_n_0\
    );
\adc_data_s[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^sclk_clk_cnt_db\(4),
      I1 => \^sclk_clk_cnt_db\(3),
      O => \adc_data_s[11]_i_3_n_0\
    );
\adc_data_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => \adc_data_s[11]_i_2_n_0\,
      D => adc_sdata_i,
      Q => p_0_in(1),
      R => \adc_data_s[11]_i_1_n_0\
    );
\adc_data_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => \adc_data_s[11]_i_2_n_0\,
      D => p_0_in(10),
      Q => p_0_in(11),
      R => \adc_data_s[11]_i_1_n_0\
    );
\adc_data_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => \adc_data_s[11]_i_2_n_0\,
      D => p_0_in(11),
      Q => \adc_data_s_reg_n_0_[11]\,
      R => \adc_data_s[11]_i_1_n_0\
    );
\adc_data_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => \adc_data_s[11]_i_2_n_0\,
      D => p_0_in(1),
      Q => p_0_in(2),
      R => \adc_data_s[11]_i_1_n_0\
    );
\adc_data_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => \adc_data_s[11]_i_2_n_0\,
      D => p_0_in(2),
      Q => p_0_in(3),
      R => \adc_data_s[11]_i_1_n_0\
    );
\adc_data_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => \adc_data_s[11]_i_2_n_0\,
      D => p_0_in(3),
      Q => p_0_in(4),
      R => \adc_data_s[11]_i_1_n_0\
    );
\adc_data_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => \adc_data_s[11]_i_2_n_0\,
      D => p_0_in(4),
      Q => p_0_in(5),
      R => \adc_data_s[11]_i_1_n_0\
    );
\adc_data_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => \adc_data_s[11]_i_2_n_0\,
      D => p_0_in(5),
      Q => p_0_in(6),
      R => \adc_data_s[11]_i_1_n_0\
    );
\adc_data_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => \adc_data_s[11]_i_2_n_0\,
      D => p_0_in(6),
      Q => p_0_in(7),
      R => \adc_data_s[11]_i_1_n_0\
    );
\adc_data_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => \adc_data_s[11]_i_2_n_0\,
      D => p_0_in(7),
      Q => p_0_in(8),
      R => \adc_data_s[11]_i_1_n_0\
    );
\adc_data_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => \adc_data_s[11]_i_2_n_0\,
      D => p_0_in(8),
      Q => p_0_in(9),
      R => \adc_data_s[11]_i_1_n_0\
    );
\adc_data_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => \adc_data_s[11]_i_2_n_0\,
      D => p_0_in(9),
      Q => p_0_in(10),
      R => \adc_data_s[11]_i_1_n_0\
    );
\adc_next_state_inferred__2/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0116"
    )
        port map (
      I0 => \^adc_state_db\(0),
      I1 => \^adc_state_db\(1),
      I2 => \^adc_state_db\(2),
      I3 => \^adc_state_db\(3),
      O => \adc_next_state_inferred__2/i__n_0\
    );
\adc_next_state_inferred__2/i___0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEE8"
    )
        port map (
      I0 => \^adc_state_db\(0),
      I1 => \^adc_state_db\(1),
      I2 => \^adc_state_db\(2),
      I3 => \^adc_state_db\(3),
      O => \adc_next_state_inferred__2/i___0_n_0\
    );
\adc_next_state_inferred__2/i___1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0116"
    )
        port map (
      I0 => \^adc_state_db\(4),
      I1 => \^adc_state_db\(5),
      I2 => \^adc_state_db\(6),
      I3 => adc_state_reg(7),
      O => \adc_next_state_inferred__2/i___1_n_0\
    );
\adc_next_state_inferred__2/i___2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEE8"
    )
        port map (
      I0 => \^adc_state_db\(4),
      I1 => \^adc_state_db\(5),
      I2 => \^adc_state_db\(6),
      I3 => adc_state_reg(7),
      O => \adc_next_state_inferred__2/i___2_n_0\
    );
\adc_next_state_inferred__2/i___3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0012"
    )
        port map (
      I0 => \adc_next_state_inferred__2/i__n_0\,
      I1 => \adc_next_state_inferred__2/i___0_n_0\,
      I2 => \adc_next_state_inferred__2/i___1_n_0\,
      I3 => \adc_next_state_inferred__2/i___2_n_0\,
      O => \adc_next_state_inferred__2/i___3_n_0\
    );
adc_sclk_o_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => adc_clk_i,
      I1 => adc_clk_en,
      O => adc_sclk_o
    );
\adc_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEAFEEAFFFF"
    )
        port map (
      I0 => \adc_state[1]_i_2_n_0\,
      I1 => \^adc_state_db\(6),
      I2 => \^adc_state_db\(5),
      I3 => \^adc_state_db\(2),
      I4 => \adc_state[1]_i_3_n_0\,
      I5 => \adc_state[1]_i_4_n_0\,
      O => adc_next_state(1)
    );
\adc_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEEF888"
    )
        port map (
      I0 => \^adc_state_db\(0),
      I1 => \^adc_state_db\(1),
      I2 => \^adc_state_db\(4),
      I3 => \^adc_state_db\(3),
      I4 => \adc_state[2]_i_2_n_0\,
      I5 => adc_state_reg(7),
      O => \adc_state[1]_i_2_n_0\
    );
\adc_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^adc_state_db\(3),
      I1 => \^adc_state_db\(4),
      O => \adc_state[1]_i_3_n_0\
    );
\adc_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^adc_state_db\(2),
      I1 => \^adc_state_db\(5),
      I2 => \^adc_state_db\(6),
      I3 => \^adc_state_db\(1),
      I4 => \^adc_state_db\(0),
      O => \adc_state[1]_i_4_n_0\
    );
\adc_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010000"
    )
        port map (
      I0 => \adc_state[2]_i_2_n_0\,
      I1 => \^adc_state_db\(4),
      I2 => \^adc_state_db\(3),
      I3 => adc_state_reg(7),
      I4 => \^adc_state_db\(1),
      I5 => \^adc_state_db\(0),
      O => adc_next_state(2)
    );
\adc_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^adc_state_db\(6),
      I1 => \^adc_state_db\(5),
      I2 => \^adc_state_db\(2),
      O => \adc_state[2]_i_2_n_0\
    );
\adc_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^adc_state_db\(2),
      I1 => \^adc_state_db\(5),
      I2 => \^adc_state_db\(6),
      I3 => \adc_state[6]_i_7_n_0\,
      O => adc_next_state(3)
    );
\adc_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^adc_state_db\(3),
      I1 => \^adc_state_db\(4),
      I2 => \adc_state[5]_i_2_n_0\,
      O => adc_next_state(4)
    );
\adc_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^adc_state_db\(3),
      I1 => \^adc_state_db\(4),
      I2 => \adc_state[5]_i_2_n_0\,
      O => adc_next_state(5)
    );
\adc_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^adc_state_db\(0),
      I1 => \^adc_state_db\(1),
      I2 => \^adc_state_db\(6),
      I3 => \^adc_state_db\(5),
      I4 => \^adc_state_db\(2),
      I5 => adc_state_reg(7),
      O => \adc_state[5]_i_2_n_0\
    );
\adc_state[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n_i,
      O => \adc_state[6]_i_1_n_0\
    );
\adc_state[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \adc_state[6]_i_4_n_0\,
      I1 => \adc_next_state_inferred__2/i___3_n_0\,
      I2 => \^adc_state_db\(0),
      I3 => \^adc_state_db\(4),
      I4 => \adc_state[6]_i_5_n_0\,
      I5 => \adc_state[6]_i_6_n_0\,
      O => \adc_state[6]_i_2_n_0\
    );
\adc_state[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^adc_state_db\(2),
      I1 => \^adc_state_db\(5),
      I2 => \^adc_state_db\(6),
      I3 => \adc_state[6]_i_7_n_0\,
      O => adc_next_state(6)
    );
\adc_state[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040404FF0404"
    )
        port map (
      I0 => \adc_tconvst_cnt[6]_i_3_n_0\,
      I1 => \^adc_state_db\(2),
      I2 => adc_tconvst_cnt_reg(6),
      I3 => \adc_tconvert_cnt[6]_i_3_n_0\,
      I4 => \^adc_state_db\(3),
      I5 => adc_tconvert_cnt_reg(6),
      O => \adc_state[6]_i_4_n_0\
    );
\adc_state[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \adc_data_s[11]_i_3_n_0\,
      I1 => \^adc_state_db\(5),
      I2 => \^sclk_clk_cnt_db\(2),
      I3 => adc_sw_reset_reg_n_0,
      I4 => \^sclk_clk_cnt_db\(1),
      I5 => \^sclk_clk_cnt_db\(0),
      O => \adc_state[6]_i_5_n_0\
    );
\adc_state[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFFFEFEFEFE"
    )
        port map (
      I0 => \adc_state[6]_i_8_n_0\,
      I1 => \^adc_state_db\(6),
      I2 => adc_state_reg(7),
      I3 => \adc_tcycle_cnt[6]_i_5_n_0\,
      I4 => \adc_tcycle_cnt_reg_n_0_[6]\,
      I5 => \^adc_state_db\(1),
      O => \adc_state[6]_i_6_n_0\
    );
\adc_state[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => adc_state_reg(7),
      I1 => \^adc_state_db\(3),
      I2 => \^adc_state_db\(4),
      I3 => \^adc_state_db\(1),
      I4 => \^adc_state_db\(0),
      O => \adc_state[6]_i_7_n_0\
    );
\adc_state[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \^adc_state_db\(5),
      I1 => \^sclk_clk_cnt_db\(4),
      I2 => \^sclk_clk_cnt_db\(2),
      I3 => \^sclk_clk_cnt_db\(0),
      I4 => \^sclk_clk_cnt_db\(1),
      I5 => \^sclk_clk_cnt_db\(3),
      O => \adc_state[6]_i_8_n_0\
    );
\adc_state[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^adc_state_db\(2),
      I1 => \^adc_state_db\(6),
      I2 => \^adc_state_db\(5),
      I3 => \adc_state[6]_i_7_n_0\,
      O => adc_next_state(7)
    );
\adc_state_nc_m1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => adc_clk_i,
      CE => '1',
      D => \^adc_state_db\(0),
      Q => adc_state_nc_m1(0),
      R => '0'
    );
\adc_state_nc_m1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => adc_clk_i,
      CE => '1',
      D => \^adc_state_db\(1),
      Q => adc_state_nc_m1(1),
      R => '0'
    );
\adc_state_nc_m1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => adc_clk_i,
      CE => '1',
      D => \^adc_state_db\(2),
      Q => adc_state_nc_m1(2),
      R => '0'
    );
\adc_state_nc_m1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => adc_clk_i,
      CE => '1',
      D => \^adc_state_db\(3),
      Q => adc_state_nc_m1(3),
      R => '0'
    );
\adc_state_nc_m1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => adc_clk_i,
      CE => '1',
      D => \^adc_state_db\(4),
      Q => adc_state_nc_m1(4),
      R => '0'
    );
\adc_state_nc_m1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => adc_clk_i,
      CE => '1',
      D => \^adc_state_db\(5),
      Q => adc_state_nc_m1(5),
      R => '0'
    );
\adc_state_nc_m1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => adc_clk_i,
      CE => '1',
      D => \^adc_state_db\(6),
      Q => adc_state_nc_m1(6),
      R => '0'
    );
\adc_state_nc_m1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => adc_clk_i,
      CE => '1',
      D => adc_state_reg(7),
      Q => adc_state_nc_m1(7),
      R => '0'
    );
\adc_state_pc_m1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \^adc_state_db\(0),
      Q => adc_state_pc_m1(0),
      R => '0'
    );
\adc_state_pc_m1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \^adc_state_db\(1),
      Q => adc_state_pc_m1(1),
      R => '0'
    );
\adc_state_pc_m1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \^adc_state_db\(2),
      Q => adc_state_pc_m1(2),
      R => '0'
    );
\adc_state_pc_m1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \^adc_state_db\(3),
      Q => adc_state_pc_m1(3),
      R => '0'
    );
\adc_state_pc_m1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \^adc_state_db\(4),
      Q => adc_state_pc_m1(4),
      R => '0'
    );
\adc_state_pc_m1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \^adc_state_db\(5),
      Q => adc_state_pc_m1(5),
      R => '0'
    );
\adc_state_pc_m1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => \^adc_state_db\(6),
      Q => adc_state_pc_m1(6),
      R => '0'
    );
\adc_state_pc_m1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => '1',
      D => adc_state_reg(7),
      Q => adc_state_pc_m1(7),
      R => '0'
    );
\adc_state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => fpga_clk_i,
      CE => \adc_state[6]_i_2_n_0\,
      D => '0',
      Q => \^adc_state_db\(0),
      S => \adc_state[6]_i_1_n_0\
    );
\adc_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => \adc_state[6]_i_2_n_0\,
      D => adc_next_state(1),
      Q => \^adc_state_db\(1),
      R => \adc_state[6]_i_1_n_0\
    );
\adc_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => \adc_state[6]_i_2_n_0\,
      D => adc_next_state(2),
      Q => \^adc_state_db\(2),
      R => \adc_state[6]_i_1_n_0\
    );
\adc_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => \adc_state[6]_i_2_n_0\,
      D => adc_next_state(3),
      Q => \^adc_state_db\(3),
      R => \adc_state[6]_i_1_n_0\
    );
\adc_state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => \adc_state[6]_i_2_n_0\,
      D => adc_next_state(4),
      Q => \^adc_state_db\(4),
      R => \adc_state[6]_i_1_n_0\
    );
\adc_state_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => \adc_state[6]_i_2_n_0\,
      D => adc_next_state(5),
      Q => \^adc_state_db\(5),
      R => \adc_state[6]_i_1_n_0\
    );
\adc_state_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => \adc_state[6]_i_2_n_0\,
      D => adc_next_state(6),
      Q => \^adc_state_db\(6),
      R => \adc_state[6]_i_1_n_0\
    );
\adc_state_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => \adc_state[6]_i_2_n_0\,
      D => adc_next_state(7),
      Q => adc_state_reg(7),
      R => \adc_state[6]_i_1_n_0\
    );
adc_sw_reset_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
        port map (
      I0 => \^adc_state_db\(1),
      I1 => adc_next_state(2),
      I2 => reset_n_i,
      I3 => adc_sw_reset_reg_n_0,
      O => adc_sw_reset_i_1_n_0
    );
adc_sw_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_sw_reset_i_1_n_0,
      Q => adc_sw_reset_reg_n_0,
      R => '0'
    );
\adc_tconvert_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tconvert_cnt_reg(0),
      O => adc_tconvert_cnt0(0)
    );
\adc_tconvert_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => adc_tconvert_cnt_reg(1),
      I1 => adc_tconvert_cnt_reg(0),
      O => adc_tconvert_cnt0(1)
    );
\adc_tconvert_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => adc_tconvert_cnt_reg(2),
      I1 => adc_tconvert_cnt_reg(0),
      I2 => adc_tconvert_cnt_reg(1),
      O => adc_tconvert_cnt0(2)
    );
\adc_tconvert_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => adc_tconvert_cnt_reg(3),
      I1 => adc_tconvert_cnt_reg(1),
      I2 => adc_tconvert_cnt_reg(0),
      I3 => adc_tconvert_cnt_reg(2),
      O => adc_tconvert_cnt0(3)
    );
\adc_tconvert_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => adc_tconvert_cnt_reg(4),
      I1 => adc_tconvert_cnt_reg(2),
      I2 => adc_tconvert_cnt_reg(0),
      I3 => adc_tconvert_cnt_reg(1),
      I4 => adc_tconvert_cnt_reg(3),
      O => adc_tconvert_cnt0(4)
    );
\adc_tconvert_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => adc_tconvert_cnt_reg(5),
      I1 => adc_tconvert_cnt_reg(3),
      I2 => adc_tconvert_cnt_reg(1),
      I3 => adc_tconvert_cnt_reg(0),
      I4 => adc_tconvert_cnt_reg(2),
      I5 => adc_tconvert_cnt_reg(4),
      O => adc_tconvert_cnt0(5)
    );
\adc_tconvert_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => reset_n_i,
      I1 => \^adc_state_db\(4),
      I2 => \^adc_state_db\(3),
      I3 => \adc_state[5]_i_2_n_0\,
      O => \adc_tconvert_cnt[6]_i_1_n_0\
    );
\adc_tconvert_cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \adc_tconvert_cnt[6]_i_3_n_0\,
      I1 => adc_tconvert_cnt_reg(6),
      O => adc_tconvert_cnt0(6)
    );
\adc_tconvert_cnt[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => adc_tconvert_cnt_reg(4),
      I1 => adc_tconvert_cnt_reg(2),
      I2 => adc_tconvert_cnt_reg(0),
      I3 => adc_tconvert_cnt_reg(1),
      I4 => adc_tconvert_cnt_reg(3),
      I5 => adc_tconvert_cnt_reg(5),
      O => \adc_tconvert_cnt[6]_i_3_n_0\
    );
\adc_tconvert_cnt_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_tconvert_cnt0(0),
      Q => adc_tconvert_cnt_reg(0),
      S => \adc_tconvert_cnt[6]_i_1_n_0\
    );
\adc_tconvert_cnt_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_tconvert_cnt0(1),
      Q => adc_tconvert_cnt_reg(1),
      S => \adc_tconvert_cnt[6]_i_1_n_0\
    );
\adc_tconvert_cnt_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_tconvert_cnt0(2),
      Q => adc_tconvert_cnt_reg(2),
      S => \adc_tconvert_cnt[6]_i_1_n_0\
    );
\adc_tconvert_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_tconvert_cnt0(3),
      Q => adc_tconvert_cnt_reg(3),
      R => \adc_tconvert_cnt[6]_i_1_n_0\
    );
\adc_tconvert_cnt_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_tconvert_cnt0(4),
      Q => adc_tconvert_cnt_reg(4),
      S => \adc_tconvert_cnt[6]_i_1_n_0\
    );
\adc_tconvert_cnt_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_tconvert_cnt0(5),
      Q => adc_tconvert_cnt_reg(5),
      S => \adc_tconvert_cnt[6]_i_1_n_0\
    );
\adc_tconvert_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_tconvert_cnt0(6),
      Q => adc_tconvert_cnt_reg(6),
      R => \adc_tconvert_cnt[6]_i_1_n_0\
    );
\adc_tconvst_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_tconvst_cnt_reg(0),
      O => adc_tconvst_cnt0(0)
    );
\adc_tconvst_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => adc_tconvst_cnt_reg(1),
      I1 => adc_tconvst_cnt_reg(0),
      O => adc_tconvst_cnt0(1)
    );
\adc_tconvst_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => adc_tconvst_cnt_reg(2),
      I1 => adc_tconvst_cnt_reg(0),
      I2 => adc_tconvst_cnt_reg(1),
      O => adc_tconvst_cnt0(2)
    );
\adc_tconvst_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => adc_tconvst_cnt_reg(3),
      I1 => adc_tconvst_cnt_reg(1),
      I2 => adc_tconvst_cnt_reg(0),
      I3 => adc_tconvst_cnt_reg(2),
      O => adc_tconvst_cnt0(3)
    );
\adc_tconvst_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => adc_tconvst_cnt_reg(4),
      I1 => adc_tconvst_cnt_reg(2),
      I2 => adc_tconvst_cnt_reg(0),
      I3 => adc_tconvst_cnt_reg(1),
      I4 => adc_tconvst_cnt_reg(3),
      O => adc_tconvst_cnt0(4)
    );
\adc_tconvst_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => adc_tconvst_cnt_reg(5),
      I1 => adc_tconvst_cnt_reg(3),
      I2 => adc_tconvst_cnt_reg(1),
      I3 => adc_tconvst_cnt_reg(0),
      I4 => adc_tconvst_cnt_reg(2),
      I5 => adc_tconvst_cnt_reg(4),
      O => adc_tconvst_cnt0(5)
    );
\adc_tconvst_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => \adc_state[6]_i_7_n_0\,
      I1 => reset_n_i,
      I2 => \^adc_state_db\(6),
      I3 => \^adc_state_db\(5),
      I4 => \^adc_state_db\(2),
      O => \adc_tconvst_cnt[6]_i_1_n_0\
    );
\adc_tconvst_cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \adc_tconvst_cnt[6]_i_3_n_0\,
      I1 => adc_tconvst_cnt_reg(6),
      O => adc_tconvst_cnt0(6)
    );
\adc_tconvst_cnt[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => adc_tconvst_cnt_reg(4),
      I1 => adc_tconvst_cnt_reg(2),
      I2 => adc_tconvst_cnt_reg(0),
      I3 => adc_tconvst_cnt_reg(1),
      I4 => adc_tconvst_cnt_reg(3),
      I5 => adc_tconvst_cnt_reg(5),
      O => \adc_tconvst_cnt[6]_i_3_n_0\
    );
\adc_tconvst_cnt_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_tconvst_cnt0(0),
      Q => adc_tconvst_cnt_reg(0),
      S => \adc_tconvst_cnt[6]_i_1_n_0\
    );
\adc_tconvst_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_tconvst_cnt0(1),
      Q => adc_tconvst_cnt_reg(1),
      R => \adc_tconvst_cnt[6]_i_1_n_0\
    );
\adc_tconvst_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_tconvst_cnt0(2),
      Q => adc_tconvst_cnt_reg(2),
      R => \adc_tconvst_cnt[6]_i_1_n_0\
    );
\adc_tconvst_cnt_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_tconvst_cnt0(3),
      Q => adc_tconvst_cnt_reg(3),
      S => \adc_tconvst_cnt[6]_i_1_n_0\
    );
\adc_tconvst_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_tconvst_cnt0(4),
      Q => adc_tconvst_cnt_reg(4),
      R => \adc_tconvst_cnt[6]_i_1_n_0\
    );
\adc_tconvst_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_tconvst_cnt0(5),
      Q => adc_tconvst_cnt_reg(5),
      R => \adc_tconvst_cnt[6]_i_1_n_0\
    );
\adc_tconvst_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => adc_tconvst_cnt0(6),
      Q => adc_tconvst_cnt_reg(6),
      R => \adc_tconvst_cnt[6]_i_1_n_0\
    );
\adc_tcycle_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => adc_tcycle_cnt(0),
      I1 => \adc_tcycle_cnt_reg_n_0_[0]\,
      O => \adc_tcycle_cnt[0]_i_1_n_0\
    );
\adc_tcycle_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F9"
    )
        port map (
      I0 => \adc_tcycle_cnt_reg_n_0_[0]\,
      I1 => \adc_tcycle_cnt_reg_n_0_[1]\,
      I2 => adc_tcycle_cnt(0),
      O => \adc_tcycle_cnt[1]_i_1_n_0\
    );
\adc_tcycle_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA60000"
    )
        port map (
      I0 => \adc_tcycle_cnt_reg_n_0_[2]\,
      I1 => \adc_tcycle_cnt[6]_i_3_n_0\,
      I2 => \adc_tcycle_cnt_reg_n_0_[1]\,
      I3 => \adc_tcycle_cnt_reg_n_0_[0]\,
      I4 => reset_n_i,
      I5 => adc_tcycle_cnt(0),
      O => \adc_tcycle_cnt[2]_i_1_n_0\
    );
\adc_tcycle_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A600"
    )
        port map (
      I0 => \adc_tcycle_cnt_reg_n_0_[3]\,
      I1 => \adc_tcycle_cnt[6]_i_3_n_0\,
      I2 => \adc_tcycle_cnt[3]_i_2_n_0\,
      I3 => reset_n_i,
      I4 => adc_tcycle_cnt(0),
      O => \adc_tcycle_cnt[3]_i_1_n_0\
    );
\adc_tcycle_cnt[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \adc_tcycle_cnt_reg_n_0_[1]\,
      I1 => \adc_tcycle_cnt_reg_n_0_[0]\,
      I2 => \adc_tcycle_cnt_reg_n_0_[2]\,
      O => \adc_tcycle_cnt[3]_i_2_n_0\
    );
\adc_tcycle_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C3C20000"
    )
        port map (
      I0 => \adc_tcycle_cnt_reg_n_0_[6]\,
      I1 => \adc_tcycle_cnt_reg_n_0_[4]\,
      I2 => \adc_tcycle_cnt[4]_i_2_n_0\,
      I3 => \adc_tcycle_cnt_reg_n_0_[5]\,
      I4 => reset_n_i,
      I5 => adc_tcycle_cnt(0),
      O => \adc_tcycle_cnt[4]_i_1_n_0\
    );
\adc_tcycle_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \adc_tcycle_cnt_reg_n_0_[2]\,
      I1 => \adc_tcycle_cnt_reg_n_0_[0]\,
      I2 => \adc_tcycle_cnt_reg_n_0_[1]\,
      I3 => \adc_tcycle_cnt_reg_n_0_[3]\,
      O => \adc_tcycle_cnt[4]_i_2_n_0\
    );
\adc_tcycle_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F9"
    )
        port map (
      I0 => \adc_tcycle_cnt[5]_i_2_n_0\,
      I1 => \adc_tcycle_cnt_reg_n_0_[5]\,
      I2 => adc_tcycle_cnt(0),
      O => \adc_tcycle_cnt[5]_i_1_n_0\
    );
\adc_tcycle_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \adc_tcycle_cnt_reg_n_0_[3]\,
      I1 => \adc_tcycle_cnt_reg_n_0_[1]\,
      I2 => \adc_tcycle_cnt_reg_n_0_[0]\,
      I3 => \adc_tcycle_cnt_reg_n_0_[2]\,
      I4 => \adc_tcycle_cnt_reg_n_0_[4]\,
      O => \adc_tcycle_cnt[5]_i_2_n_0\
    );
\adc_tcycle_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \adc_tcycle_cnt[6]_i_3_n_0\,
      I1 => adc_tcycle_cnt(0),
      O => \adc_tcycle_cnt[6]_i_1_n_0\
    );
\adc_tcycle_cnt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F9"
    )
        port map (
      I0 => \adc_tcycle_cnt[6]_i_5_n_0\,
      I1 => \adc_tcycle_cnt_reg_n_0_[6]\,
      I2 => adc_tcycle_cnt(0),
      O => \adc_tcycle_cnt[6]_i_2_n_0\
    );
\adc_tcycle_cnt[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \adc_tcycle_cnt[6]_i_5_n_0\,
      I1 => \adc_tcycle_cnt_reg_n_0_[6]\,
      O => \adc_tcycle_cnt[6]_i_3_n_0\
    );
\adc_tcycle_cnt[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000006"
    )
        port map (
      I0 => \^adc_state_db\(0),
      I1 => \^adc_state_db\(1),
      I2 => adc_cnv_s_i_3_n_0,
      I3 => \adc_state[2]_i_2_n_0\,
      I4 => \adc_tcycle_cnt_reg_n_0_[6]\,
      I5 => \adc_tcycle_cnt[6]_i_5_n_0\,
      O => adc_tcycle_cnt(0)
    );
\adc_tcycle_cnt[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \adc_tcycle_cnt_reg_n_0_[4]\,
      I1 => \adc_tcycle_cnt_reg_n_0_[2]\,
      I2 => \adc_tcycle_cnt_reg_n_0_[0]\,
      I3 => \adc_tcycle_cnt_reg_n_0_[1]\,
      I4 => \adc_tcycle_cnt_reg_n_0_[3]\,
      I5 => \adc_tcycle_cnt_reg_n_0_[5]\,
      O => \adc_tcycle_cnt[6]_i_5_n_0\
    );
\adc_tcycle_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => \adc_tcycle_cnt[6]_i_1_n_0\,
      D => \adc_tcycle_cnt[0]_i_1_n_0\,
      Q => \adc_tcycle_cnt_reg_n_0_[0]\,
      R => \adc_state[6]_i_1_n_0\
    );
\adc_tcycle_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => \adc_tcycle_cnt[6]_i_1_n_0\,
      D => \adc_tcycle_cnt[1]_i_1_n_0\,
      Q => \adc_tcycle_cnt_reg_n_0_[1]\,
      R => \adc_state[6]_i_1_n_0\
    );
\adc_tcycle_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => \adc_tcycle_cnt[2]_i_1_n_0\,
      Q => \adc_tcycle_cnt_reg_n_0_[2]\,
      R => '0'
    );
\adc_tcycle_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => \adc_tcycle_cnt[3]_i_1_n_0\,
      Q => \adc_tcycle_cnt_reg_n_0_[3]\,
      R => '0'
    );
\adc_tcycle_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => \adc_tcycle_cnt[4]_i_1_n_0\,
      Q => \adc_tcycle_cnt_reg_n_0_[4]\,
      R => '0'
    );
\adc_tcycle_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => \adc_tcycle_cnt[6]_i_1_n_0\,
      D => \adc_tcycle_cnt[5]_i_1_n_0\,
      Q => \adc_tcycle_cnt_reg_n_0_[5]\,
      R => \adc_state[6]_i_1_n_0\
    );
\adc_tcycle_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => \adc_tcycle_cnt[6]_i_1_n_0\,
      D => \adc_tcycle_cnt[6]_i_2_n_0\,
      Q => \adc_tcycle_cnt_reg_n_0_[6]\,
      R => \adc_state[6]_i_1_n_0\
    );
\data_o[-1111111100]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \adc_data_s_reg_n_0_[11]\,
      G => \^data_rd_ready_o\,
      GE => '1',
      Q => data_o(11)
    );
\data_o[-1111111101]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_0_in(11),
      G => \^data_rd_ready_o\,
      GE => '1',
      Q => data_o(10)
    );
\data_o[-1111111102]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_0_in(10),
      G => \^data_rd_ready_o\,
      GE => '1',
      Q => data_o(9)
    );
\data_o[-1111111103]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_0_in(9),
      G => \^data_rd_ready_o\,
      GE => '1',
      Q => data_o(8)
    );
\data_o[-1111111104]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_0_in(8),
      G => \^data_rd_ready_o\,
      GE => '1',
      Q => data_o(7)
    );
\data_o[-1111111105]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_0_in(7),
      G => \^data_rd_ready_o\,
      GE => '1',
      Q => data_o(6)
    );
\data_o[-1111111106]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_0_in(6),
      G => \^data_rd_ready_o\,
      GE => '1',
      Q => data_o(5)
    );
\data_o[-1111111107]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_0_in(5),
      G => \^data_rd_ready_o\,
      GE => '1',
      Q => data_o(4)
    );
\data_o[-1111111108]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_0_in(4),
      G => \^data_rd_ready_o\,
      GE => '1',
      Q => data_o(3)
    );
\data_o[-1111111109]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_0_in(3),
      G => \^data_rd_ready_o\,
      GE => '1',
      Q => data_o(2)
    );
\data_o[-1111111110]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_0_in(2),
      G => \^data_rd_ready_o\,
      GE => '1',
      Q => data_o(1)
    );
\data_o[-1111111111]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_0_in(1),
      G => \^data_rd_ready_o\,
      GE => '1',
      Q => data_o(0)
    );
data_rd_ready_o_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_rd_ready_s,
      I1 => reset_n_i,
      O => data_rd_ready_o_i_1_n_0
    );
data_rd_ready_o_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => fpga_clk_i,
      CE => '1',
      D => data_rd_ready_o_i_1_n_0,
      Q => \^data_rd_ready_o\,
      R => '0'
    );
data_rd_ready_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data_rd_ready_s_0,
      I1 => adc_cs_n_s_i_3_n_0,
      I2 => adc_sw_reset0_out,
      I3 => adc_cs_n_s_i_5_n_0,
      I4 => adc_cs_n_s_i_6_n_0,
      I5 => data_rd_ready_s,
      O => data_rd_ready_s_i_1_n_0
    );
data_rd_ready_s_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^adc_state_db\(1),
      I1 => \^adc_state_db\(3),
      I2 => \^adc_state_db\(4),
      I3 => \^adc_state_db\(2),
      I4 => \^adc_state_db\(5),
      I5 => \^adc_state_db\(6),
      O => data_rd_ready_s_0
    );
data_rd_ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => fpga_clk_i,
      CE => '1',
      D => data_rd_ready_s_i_1_n_0,
      Q => data_rd_ready_s,
      R => '0'
    );
\sclk_clk_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sclk_clk_cnt_db\(0),
      O => sclk_clk_cnt0(0)
    );
\sclk_clk_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^sclk_clk_cnt_db\(1),
      I1 => \^sclk_clk_cnt_db\(0),
      O => sclk_clk_cnt0(1)
    );
\sclk_clk_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \^sclk_clk_cnt_db\(2),
      I1 => \^sclk_clk_cnt_db\(0),
      I2 => \^sclk_clk_cnt_db\(1),
      O => sclk_clk_cnt0(2)
    );
\sclk_clk_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \^sclk_clk_cnt_db\(3),
      I1 => \^sclk_clk_cnt_db\(1),
      I2 => \^sclk_clk_cnt_db\(0),
      I3 => \^sclk_clk_cnt_db\(2),
      O => sclk_clk_cnt0(3)
    );
\sclk_clk_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \sclk_clk_cnt[4]_i_3_n_0\,
      I1 => adc_state_pc_m1(1),
      I2 => adc_state_pc_m1(0),
      I3 => adc_state_pc_m1(3),
      I4 => adc_state_pc_m1(2),
      I5 => adc_clk_en,
      O => sclk_clk_cnt
    );
\sclk_clk_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \^sclk_clk_cnt_db\(4),
      I1 => \^sclk_clk_cnt_db\(2),
      I2 => \^sclk_clk_cnt_db\(0),
      I3 => \^sclk_clk_cnt_db\(1),
      I4 => \^sclk_clk_cnt_db\(3),
      O => sclk_clk_cnt0(4)
    );
\sclk_clk_cnt[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEF"
    )
        port map (
      I0 => adc_state_pc_m1(7),
      I1 => adc_state_pc_m1(4),
      I2 => adc_state_pc_m1(6),
      I3 => adc_state_pc_m1(5),
      O => \sclk_clk_cnt[4]_i_3_n_0\
    );
\sclk_clk_cnt_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => adc_clk_i,
      CE => adc_clk_en,
      D => sclk_clk_cnt0(0),
      Q => \^sclk_clk_cnt_db\(0),
      S => sclk_clk_cnt
    );
\sclk_clk_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => adc_clk_en,
      D => sclk_clk_cnt0(1),
      Q => \^sclk_clk_cnt_db\(1),
      R => sclk_clk_cnt
    );
\sclk_clk_cnt_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => adc_clk_i,
      CE => adc_clk_en,
      D => sclk_clk_cnt0(2),
      Q => \^sclk_clk_cnt_db\(2),
      S => sclk_clk_cnt
    );
\sclk_clk_cnt_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => adc_clk_i,
      CE => adc_clk_en,
      D => sclk_clk_cnt0(3),
      Q => \^sclk_clk_cnt_db\(3),
      S => sclk_clk_cnt
    );
\sclk_clk_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk_i,
      CE => adc_clk_en,
      D => sclk_clk_cnt0(4),
      Q => \^sclk_clk_cnt_db\(4),
      R => sclk_clk_cnt
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Jupyter_AD7091R_0_0 is
  port (
    fpga_clk_i : in STD_LOGIC;
    adc_clk_i : in STD_LOGIC;
    reset_n_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_rd_ready_o : out STD_LOGIC;
    adc_sdata_i : in STD_LOGIC;
    adc_sdata_t : out STD_LOGIC;
    adc_sclk_o : out STD_LOGIC;
    adc_cs_n_o : out STD_LOGIC;
    adc_convst_n_o : out STD_LOGIC;
    sclk_clk_cnt_db : out STD_LOGIC_VECTOR ( 4 downto 0 );
    adc_state_db : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Jupyter_AD7091R_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Jupyter_AD7091R_0_0 : entity is "Jupyter_AD7091R_0_0,AD7091R,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Jupyter_AD7091R_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Jupyter_AD7091R_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Jupyter_AD7091R_0_0 : entity is "AD7091R,Vivado 2023.2";
end Jupyter_AD7091R_0_0;

architecture STRUCTURE of Jupyter_AD7091R_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^data_o\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_n_i : signal is "xilinx.com:signal:reset:1.0 reset_n_i RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_n_i : signal is "XIL_INTERFACENAME reset_n_i, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  adc_sdata_t <= \<const1>\;
  data_o(15) <= \<const0>\;
  data_o(14) <= \<const0>\;
  data_o(13) <= \<const0>\;
  data_o(12) <= \<const0>\;
  data_o(11 downto 0) <= \^data_o\(11 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.Jupyter_AD7091R_0_0_AD7091R
     port map (
      adc_clk_i => adc_clk_i,
      adc_convst_n_o => adc_convst_n_o,
      adc_cs_n_o => adc_cs_n_o,
      adc_sclk_o => adc_sclk_o,
      adc_sdata_i => adc_sdata_i,
      adc_state_db(6 downto 0) => adc_state_db(6 downto 0),
      data_o(11 downto 0) => \^data_o\(11 downto 0),
      data_rd_ready_o => data_rd_ready_o,
      fpga_clk_i => fpga_clk_i,
      reset_n_i => reset_n_i,
      sclk_clk_cnt_db(4 downto 0) => sclk_clk_cnt_db(4 downto 0)
    );
end STRUCTURE;
