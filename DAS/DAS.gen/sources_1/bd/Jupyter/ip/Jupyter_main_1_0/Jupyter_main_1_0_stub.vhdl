-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Jun  6 15:29:37 2024
-- Host        : Predator-Offset running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Thesis/DAS_v2/DAS/DAS.gen/sources_1/bd/Jupyter/ip/Jupyter_main_1_0/Jupyter_main_1_0_stub.vhdl
-- Design      : Jupyter_main_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Jupyter_main_1_0 is
  Port ( 
    clk : in STD_LOGIC;
    areset_n : in STD_LOGIC;
    activate : in STD_LOGIC;
    fifo_resetn : out STD_LOGIC;
    data_o : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_ready : in STD_LOGIC;
    fifo_m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    fifo_m_axis_tvalid : out STD_LOGIC;
    fifo_m_axis_tready : in STD_LOGIC;
    fifo_s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    fifo_s_axis_tvalid : in STD_LOGIC;
    fifo_s_axis_tready : out STD_LOGIC;
    axis_data_count : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dma_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    dma_axis_tvalid : out STD_LOGIC;
    dma_axis_tready : in STD_LOGIC;
    dma_axis_tlast : out STD_LOGIC
  );

end Jupyter_main_1_0;

architecture stub of Jupyter_main_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,areset_n,activate,fifo_resetn,data_o[15:0],data_ready,fifo_m_axis_tdata[255:0],fifo_m_axis_tvalid,fifo_m_axis_tready,fifo_s_axis_tdata[255:0],fifo_s_axis_tvalid,fifo_s_axis_tready,axis_data_count[11:0],dma_axis_tdata[255:0],dma_axis_tvalid,dma_axis_tready,dma_axis_tlast";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "main,Vivado 2023.2";
begin
end;
