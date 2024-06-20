--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Mon Jun  3 18:11:08 2024
--Host        : DESKTOP-JD9MBO3 running 64-bit major release  (build 9200)
--Command     : generate_target DWT_bd.bd
--Design      : DWT_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DWT_bd is
  port (
    clk : in STD_LOGIC;
    signal_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    signal_out : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of DWT_bd : entity is "DWT_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=DWT_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of DWT_bd : entity is "DWT_bd.hwdef";
end DWT_bd;

architecture STRUCTURE of DWT_bd is
  component DWT_bd_DWT_1_0 is
  port (
    signal_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    clk : in STD_LOGIC;
    signal_out : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  end component DWT_bd_DWT_1_0;
  signal DWT_1_signal_out : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal signal_in_1 : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN DWT_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of signal_in : signal is "xilinx.com:signal:data:1.0 DATA.SIGNAL_IN DATA";
  attribute X_INTERFACE_PARAMETER of signal_in : signal is "XIL_INTERFACENAME DATA.SIGNAL_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of signal_out : signal is "xilinx.com:signal:data:1.0 DATA.SIGNAL_OUT DATA";
  attribute X_INTERFACE_PARAMETER of signal_out : signal is "XIL_INTERFACENAME DATA.SIGNAL_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
begin
  clk_1 <= clk;
  signal_in_1(17 downto 0) <= signal_in(17 downto 0);
  signal_out(17 downto 0) <= DWT_1_signal_out(17 downto 0);
DWT_1: component DWT_bd_DWT_1_0
     port map (
      clk => clk_1,
      signal_in(17 downto 0) => signal_in_1(17 downto 0),
      signal_out(17 downto 0) => DWT_1_signal_out(17 downto 0)
    );
end STRUCTURE;
