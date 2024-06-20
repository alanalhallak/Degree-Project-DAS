-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu May  9 15:54:21 2024
-- Host        : Predator-Offset running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Thesis/DAS_v2/DAS/DAS.gen/sources_1/bd/Jupyter/ip/Jupyter_AD7091R_2_0/Jupyter_AD7091R_2_0_stub.vhdl
-- Design      : Jupyter_AD7091R_2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Jupyter_AD7091R_2_0 is
  Port ( 
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

end Jupyter_AD7091R_2_0;

architecture stub of Jupyter_AD7091R_2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "fpga_clk_i,adc_clk_i,reset_n_i,data_o[15:0],data_rd_ready_o,adc_sdata_i,adc_sdata_t,adc_sclk_o,adc_cs_n_o,adc_convst_n_o,sclk_clk_cnt_db[4:0],adc_state_db[6:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "AD7091R,Vivado 2023.2";
begin
end;
