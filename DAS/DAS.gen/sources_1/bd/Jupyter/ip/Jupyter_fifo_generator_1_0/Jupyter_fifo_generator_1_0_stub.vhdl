-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu May  9 15:54:37 2024
-- Host        : Predator-Offset running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top Jupyter_fifo_generator_1_0 -prefix
--               Jupyter_fifo_generator_1_0_ Jupyter_fifo_generator_0_0_stub.vhdl
-- Design      : Jupyter_fifo_generator_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Jupyter_fifo_generator_1_0 is
  Port ( 
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end Jupyter_fifo_generator_1_0;

architecture stub of Jupyter_fifo_generator_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "wr_rst_busy,rd_rst_busy,s_aclk,s_aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[255:0],s_axis_tuser[3:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[255:0],m_axis_tuser[3:0],axis_data_count[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_2_9,Vivado 2023.2";
begin
end;
