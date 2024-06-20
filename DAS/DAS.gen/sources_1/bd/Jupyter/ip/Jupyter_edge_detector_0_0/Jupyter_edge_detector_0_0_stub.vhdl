-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu May  9 15:54:20 2024
-- Host        : Predator-Offset running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Thesis/DAS_v2/DAS/DAS.gen/sources_1/bd/Jupyter/ip/Jupyter_edge_detector_0_0/Jupyter_edge_detector_0_0_stub.vhdl
-- Design      : Jupyter_edge_detector_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Jupyter_edge_detector_0_0 is
  Port ( 
    reset_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    ps_gpio : in STD_LOGIC;
    pl_gpio : out STD_LOGIC
  );

end Jupyter_edge_detector_0_0;

architecture stub of Jupyter_edge_detector_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "reset_n,clk,ps_gpio,pl_gpio";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "edge_detector,Vivado 2023.2";
begin
end;
