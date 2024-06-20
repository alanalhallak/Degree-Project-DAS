-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity axis_dwt_stub is
  port (
    signal_in : in std_logic_vector( 18-1 downto 0 );
    clk : in std_logic;
    signal_out : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_stub;
architecture structural of axis_dwt_stub is 
begin
  sysgen_dut : entity xil_defaultlib.axis_dwt 
  port map (
    signal_in => signal_in,
    clk => clk,
    signal_out => signal_out
  );
end structural;
