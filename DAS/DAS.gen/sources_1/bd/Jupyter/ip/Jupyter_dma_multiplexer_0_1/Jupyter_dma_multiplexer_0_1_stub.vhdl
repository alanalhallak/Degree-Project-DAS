-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon May 13 16:52:49 2024
-- Host        : Predator-Offset running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Thesis/DAS_v2/DAS/DAS.gen/sources_1/bd/Jupyter/ip/Jupyter_dma_multiplexer_0_1/Jupyter_dma_multiplexer_0_1_stub.vhdl
-- Design      : Jupyter_dma_multiplexer_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Jupyter_dma_multiplexer_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    activate : in STD_LOGIC;
    dma_axis_tdata_1 : in STD_LOGIC_VECTOR ( 255 downto 0 );
    dma_axis_tvalid_1 : in STD_LOGIC;
    dma_axis_tready_1 : out STD_LOGIC;
    dma_axis_tlast_1 : in STD_LOGIC;
    dma_axis_tdata_2 : in STD_LOGIC_VECTOR ( 255 downto 0 );
    dma_axis_tvalid_2 : in STD_LOGIC;
    dma_axis_tready_2 : out STD_LOGIC;
    dma_axis_tlast_2 : in STD_LOGIC;
    dma_axis_tdata_3 : in STD_LOGIC_VECTOR ( 255 downto 0 );
    dma_axis_tvalid_3 : in STD_LOGIC;
    dma_axis_tready_3 : out STD_LOGIC;
    dma_axis_tlast_3 : in STD_LOGIC;
    dma_axis_tdata_4 : in STD_LOGIC_VECTOR ( 255 downto 0 );
    dma_axis_tvalid_4 : in STD_LOGIC;
    dma_axis_tready_4 : out STD_LOGIC;
    dma_axis_tlast_4 : in STD_LOGIC;
    dma_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    dma_axis_tvalid : out STD_LOGIC;
    dma_axis_tready : in STD_LOGIC;
    dma_axis_tlast : out STD_LOGIC
  );

end Jupyter_dma_multiplexer_0_1;

architecture stub of Jupyter_dma_multiplexer_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset_n,activate,dma_axis_tdata_1[255:0],dma_axis_tvalid_1,dma_axis_tready_1,dma_axis_tlast_1,dma_axis_tdata_2[255:0],dma_axis_tvalid_2,dma_axis_tready_2,dma_axis_tlast_2,dma_axis_tdata_3[255:0],dma_axis_tvalid_3,dma_axis_tready_3,dma_axis_tlast_3,dma_axis_tdata_4[255:0],dma_axis_tvalid_4,dma_axis_tready_4,dma_axis_tlast_4,dma_axis_tdata[255:0],dma_axis_tvalid,dma_axis_tready,dma_axis_tlast";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dma_multiplexer,Vivado 2023.2";
begin
end;
