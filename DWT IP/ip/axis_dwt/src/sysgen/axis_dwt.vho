  sysgen_dut : entity xil_defaultlib.axis_dwt 
  port map (
    signal_in => signal_in,
    clk => clk,
    signal_out => signal_out
  );
