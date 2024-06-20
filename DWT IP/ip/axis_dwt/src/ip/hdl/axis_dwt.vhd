-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Ana_cell1/D_HI
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_d_hi is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_2 : in std_logic;
    ce_2 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_d_hi;
architecture structural of axis_dwt_d_hi is 
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub6_s_net;
  down_sample_q_net <= in1;
  clk_net <= clk_2;
  ce_net <= ce_2;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub5_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_36a968bf80 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_aecfe64b61 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_84d503fe63 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_2c3b09d6bd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => down_sample_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => down_sample_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Ana_cell1/D_LO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_d_lo is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_2 : in std_logic;
    ce_2 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_d_lo;
architecture structural of axis_dwt_d_lo is 
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub7_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub7_s_net;
  down_sample_q_net <= in1;
  clk_net <= clk_2;
  ce_net <= ce_2;
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub5_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  addsub7 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub7_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_3f98aa73c4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_5444881530 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_4918f39738 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_ad2b1157a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => down_sample_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => down_sample_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Ana_cell1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_ana_cell1 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_2 : in std_logic;
    ce_2 : in std_logic;
    clk_4 : in std_logic;
    ce_4 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 );
    out2 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_ana_cell1;
architecture structural of axis_dwt_ana_cell1 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= down_sample1_q_net;
  out2 <= down_sample_q_net_x0;
  down_sample_q_net <= in1;
  clk_net <= clk_2;
  ce_net <= ce_2;
  dest_clk_net <= clk_4;
  dest_ce_net <= ce_4;
  d_hi : entity xil_defaultlib.axis_dwt_d_hi 
  port map (
    in1 => down_sample_q_net,
    clk_2 => clk_net,
    ce_2 => ce_net,
    out1 => addsub6_s_net
  );
  d_lo : entity xil_defaultlib.axis_dwt_d_lo 
  port map (
    in1 => down_sample_q_net,
    clk_2 => clk_net,
    ce_2 => ce_net,
    out1 => addsub7_s_net
  );
  down_sample : entity xil_defaultlib.axis_dwt_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    ds_ratio => 2,
    latency => 1,
    phase => 1,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => addsub7_s_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample_q_net_x0
  );
  down_sample1 : entity xil_defaultlib.axis_dwt_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    ds_ratio => 2,
    latency => 1,
    phase => 1,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => addsub6_s_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample1_q_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Ana_cell2/D_HI
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_d_hi_x0 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_4 : in std_logic;
    ce_4 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_d_hi_x0;
architecture structural of axis_dwt_d_hi_x0 is 
  signal dest_ce_net : std_logic;
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net : std_logic;
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub6_s_net;
  down_sample_q_net <= in1;
  dest_clk_net <= clk_4;
  dest_ce_net <= ce_4;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub1_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub2_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub3_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub4_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub5_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub6_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_36a968bf80 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_aecfe64b61 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_84d503fe63 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_2c3b09d6bd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => down_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => down_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Ana_cell2/D_LO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_d_lo_x0 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_4 : in std_logic;
    ce_4 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_d_lo_x0;
architecture structural of axis_dwt_d_lo_x0 is 
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub7_s_net;
  down_sample_q_net <= in1;
  dest_clk_net <= clk_4;
  dest_ce_net <= ce_4;
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub1_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub2_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub3_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub4_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub5_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub6_s_net
  );
  addsub7 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub6_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub7_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_3f98aa73c4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_5444881530 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_4918f39738 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_ad2b1157a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => down_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => down_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Ana_cell2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_ana_cell2 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_4 : in std_logic;
    ce_4 : in std_logic;
    clk_8 : in std_logic;
    ce_8 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 );
    out2 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_ana_cell2;
architecture structural of axis_dwt_ana_cell2 is 
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net_x0 : std_logic;
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net_x0 : std_logic;
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
begin
  out1 <= down_sample1_q_net;
  out2 <= down_sample_q_net;
  down_sample_q_net_x0 <= in1;
  dest_clk_net_x0 <= clk_4;
  dest_ce_net_x0 <= ce_4;
  dest_clk_net <= clk_8;
  dest_ce_net <= ce_8;
  d_hi : entity xil_defaultlib.axis_dwt_d_hi_x0 
  port map (
    in1 => down_sample_q_net_x0,
    clk_4 => dest_clk_net_x0,
    ce_4 => dest_ce_net_x0,
    out1 => addsub6_s_net
  );
  d_lo : entity xil_defaultlib.axis_dwt_d_lo_x0 
  port map (
    in1 => down_sample_q_net_x0,
    clk_4 => dest_clk_net_x0,
    ce_4 => dest_ce_net_x0,
    out1 => addsub7_s_net
  );
  down_sample : entity xil_defaultlib.axis_dwt_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    ds_ratio => 2,
    latency => 1,
    phase => 1,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => addsub7_s_net,
    src_clk => dest_clk_net_x0,
    src_ce => dest_ce_net_x0,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity xil_defaultlib.axis_dwt_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    ds_ratio => 2,
    latency => 1,
    phase => 1,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => addsub6_s_net,
    src_clk => dest_clk_net_x0,
    src_ce => dest_ce_net_x0,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample1_q_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Ana_cell3/D_HI
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_d_hi_x2 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_8 : in std_logic;
    ce_8 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_d_hi_x2;
architecture structural of axis_dwt_d_hi_x2 is 
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub6_s_net;
  down_sample_q_net <= in1;
  dest_clk_net <= clk_8;
  dest_ce_net <= ce_8;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub1_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub2_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub3_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub4_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub5_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub6_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_36a968bf80 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_aecfe64b61 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_84d503fe63 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_2c3b09d6bd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => down_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => down_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Ana_cell3/D_LO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_d_lo_x3 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_8 : in std_logic;
    ce_8 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_d_lo_x3;
architecture structural of axis_dwt_d_lo_x3 is 
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net : std_logic;
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub7_s_net;
  down_sample_q_net <= in1;
  dest_clk_net <= clk_8;
  dest_ce_net <= ce_8;
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub1_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub2_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub3_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub4_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub5_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub6_s_net
  );
  addsub7 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub6_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub7_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_3f98aa73c4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_5444881530 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_4918f39738 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_ad2b1157a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => down_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => down_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Ana_cell3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_ana_cell3 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_8 : in std_logic;
    ce_8 : in std_logic;
    clk_16 : in std_logic;
    ce_16 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 );
    out2 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_ana_cell3;
architecture structural of axis_dwt_ana_cell3 is 
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal dest_ce_net_x0 : std_logic;
  signal addsub7_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net_x0 : std_logic;
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= down_sample1_q_net;
  out2 <= down_sample_q_net;
  down_sample_q_net_x0 <= in1;
  dest_clk_net_x0 <= clk_8;
  dest_ce_net_x0 <= ce_8;
  dest_clk_net <= clk_16;
  dest_ce_net <= ce_16;
  d_hi : entity xil_defaultlib.axis_dwt_d_hi_x2 
  port map (
    in1 => down_sample_q_net_x0,
    clk_8 => dest_clk_net_x0,
    ce_8 => dest_ce_net_x0,
    out1 => addsub6_s_net
  );
  d_lo : entity xil_defaultlib.axis_dwt_d_lo_x3 
  port map (
    in1 => down_sample_q_net_x0,
    clk_8 => dest_clk_net_x0,
    ce_8 => dest_ce_net_x0,
    out1 => addsub7_s_net
  );
  down_sample : entity xil_defaultlib.axis_dwt_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    ds_ratio => 2,
    latency => 1,
    phase => 1,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => addsub7_s_net,
    src_clk => dest_clk_net_x0,
    src_ce => dest_ce_net_x0,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity xil_defaultlib.axis_dwt_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    ds_ratio => 2,
    latency => 1,
    phase => 1,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => addsub6_s_net,
    src_clk => dest_clk_net_x0,
    src_ce => dest_ce_net_x0,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample1_q_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Ana_cell4/D_HI
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_d_hi_x3 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_16 : in std_logic;
    ce_16 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_d_hi_x3;
architecture structural of axis_dwt_d_hi_x3 is 
  signal dest_clk_net : std_logic;
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub6_s_net;
  down_sample_q_net <= in1;
  dest_clk_net <= clk_16;
  dest_ce_net <= ce_16;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub1_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub2_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub3_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub4_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub5_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub6_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_36a968bf80 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_aecfe64b61 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_84d503fe63 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_2c3b09d6bd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => down_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => down_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Ana_cell4/D_LO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_d_lo_x2 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_16 : in std_logic;
    ce_16 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_d_lo_x2;
architecture structural of axis_dwt_d_lo_x2 is 
  signal dest_clk_net : std_logic;
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub7_s_net;
  down_sample_q_net <= in1;
  dest_clk_net <= clk_16;
  dest_ce_net <= ce_16;
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => down_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult7_p_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub1_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub2_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub3_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub4_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub5_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub6_s_net
  );
  addsub7 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub6_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub7_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_3f98aa73c4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_5444881530 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_4918f39738 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_ad2b1157a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => down_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay2_q_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Ana_cell4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_ana_cell4 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_16 : in std_logic;
    ce_16 : in std_logic;
    clk_32 : in std_logic;
    ce_32 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 );
    out2 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_ana_cell4;
architecture structural of axis_dwt_ana_cell4 is 
  signal dest_clk_net_x0 : std_logic;
  signal dest_ce_net_x0 : std_logic;
  signal dest_clk_net : std_logic;
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= down_sample1_q_net;
  out2 <= down_sample_q_net;
  down_sample_q_net_x0 <= in1;
  dest_clk_net_x0 <= clk_16;
  dest_ce_net_x0 <= ce_16;
  dest_clk_net <= clk_32;
  dest_ce_net <= ce_32;
  d_hi : entity xil_defaultlib.axis_dwt_d_hi_x3 
  port map (
    in1 => down_sample_q_net_x0,
    clk_16 => dest_clk_net_x0,
    ce_16 => dest_ce_net_x0,
    out1 => addsub6_s_net
  );
  d_lo : entity xil_defaultlib.axis_dwt_d_lo_x2 
  port map (
    in1 => down_sample_q_net_x0,
    clk_16 => dest_clk_net_x0,
    ce_16 => dest_ce_net_x0,
    out1 => addsub7_s_net
  );
  down_sample : entity xil_defaultlib.axis_dwt_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    ds_ratio => 2,
    latency => 1,
    phase => 1,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => addsub7_s_net,
    src_clk => dest_clk_net_x0,
    src_ce => dest_ce_net_x0,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample_q_net
  );
  down_sample1 : entity xil_defaultlib.axis_dwt_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    ds_ratio => 2,
    latency => 1,
    phase => 1,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => addsub6_s_net,
    src_clk => dest_clk_net_x0,
    src_ce => dest_ce_net_x0,
    dest_clk => dest_clk_net,
    dest_ce => dest_ce_net,
    q => down_sample1_q_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Ana_cell5/D_HI
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_d_hi_x1 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_d_hi_x1;
architecture structural of axis_dwt_d_hi_x1 is 
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal ce_net : std_logic;
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal signal_in_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub6_s_net;
  signal_in_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub5_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_36a968bf80 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_aecfe64b61 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_84d503fe63 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_2c3b09d6bd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => signal_in_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => signal_in_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Ana_cell5/D_LO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_d_lo_x1 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_d_lo_x1;
architecture structural of axis_dwt_d_lo_x1 is 
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 18-1 downto 0 );
  signal ce_net : std_logic;
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal signal_in_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub7_s_net;
  signal_in_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub5_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  addsub7 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub7_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_3f98aa73c4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_5444881530 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_4918f39738 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_ad2b1157a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => signal_in_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => signal_in_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Ana_cell5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_ana_cell5 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_2 : in std_logic;
    ce_2 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 );
    out2 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_ana_cell5;
architecture structural of axis_dwt_ana_cell5 is 
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal signal_in_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal clk_net : std_logic;
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 18-1 downto 0 );
  signal ce_net_x0 : std_logic;
  signal ce_net : std_logic;
begin
  out1 <= down_sample1_q_net;
  out2 <= down_sample_q_net;
  signal_in_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_2;
  ce_net_x0 <= ce_2;
  d_hi : entity xil_defaultlib.axis_dwt_d_hi_x1 
  port map (
    in1 => signal_in_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => addsub6_s_net
  );
  d_lo : entity xil_defaultlib.axis_dwt_d_lo_x1 
  port map (
    in1 => signal_in_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => addsub7_s_net
  );
  down_sample : entity xil_defaultlib.axis_dwt_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    ds_ratio => 2,
    latency => 1,
    phase => 1,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => addsub7_s_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => clk_net_x0,
    dest_ce => ce_net_x0,
    q => down_sample_q_net
  );
  down_sample1 : entity xil_defaultlib.axis_dwt_xldsamp 
  generic map (
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    ds_ratio => 2,
    latency => 1,
    phase => 1,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    rst => "0",
    d => addsub6_s_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => clk_net_x0,
    dest_ce => ce_net_x0,
    q => down_sample1_q_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Soft Treshold
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_soft_treshold is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 16-1 downto 0 );
    clk_2 : in std_logic;
    ce_2 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_soft_treshold;
architecture structural of axis_dwt_soft_treshold is 
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 18-1 downto 0 );
  signal negate_op_net : std_logic_vector( 17-1 downto 0 );
  signal mux_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
begin
  out1 <= addsub2_s_net;
  delay4_q_net <= in1;
  constant4_op_net <= in2;
  clk_net <= clk_2;
  ce_net <= ce_2;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => delay4_q_net,
    b => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => delay4_q_net,
    b => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mux_y_net,
    b => mux1_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_720fb75132 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  mux : entity xil_defaultlib.sysgen_mux_6ee3415da7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => relational_op_net,
    d0 => constant_op_net,
    d1 => addsub1_s_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_6ee3415da7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => relational1_op_net,
    d0 => constant_op_net,
    d1 => addsub_s_net,
    y => mux1_y_net
  );
  negate : entity xil_defaultlib.sysgen_negate_a2ba1d759a 
  port map (
    clk => '1',
    ce => '1',
    clr => '0',
    ip => constant4_op_net,
    op => negate_op_net
  );
  relational : entity xil_defaultlib.sysgen_relational_0f4c6e3804 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => delay4_q_net,
    b => constant4_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_3edd586960 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => delay4_q_net,
    b => negate_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Soft Treshold1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_soft_treshold1 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 16-1 downto 0 );
    clk_4 : in std_logic;
    ce_4 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_soft_treshold1;
architecture structural of axis_dwt_soft_treshold1 is 
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net : std_logic;
  signal mux_y_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 18-1 downto 0 );
  signal negate_op_net : std_logic_vector( 17-1 downto 0 );
begin
  out1 <= addsub2_s_net;
  delay3_q_net <= in1;
  constant3_op_net <= in2;
  dest_clk_net <= clk_4;
  dest_ce_net <= ce_4;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => delay3_q_net,
    b => constant3_op_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => delay3_q_net,
    b => constant3_op_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mux_y_net,
    b => mux1_y_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_720fb75132 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  mux : entity xil_defaultlib.sysgen_mux_6ee3415da7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => relational_op_net,
    d0 => constant_op_net,
    d1 => addsub1_s_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_6ee3415da7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => relational1_op_net,
    d0 => constant_op_net,
    d1 => addsub_s_net,
    y => mux1_y_net
  );
  negate : entity xil_defaultlib.sysgen_negate_a2ba1d759a 
  port map (
    clk => '1',
    ce => '1',
    clr => '0',
    ip => constant3_op_net,
    op => negate_op_net
  );
  relational : entity xil_defaultlib.sysgen_relational_0f4c6e3804 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => delay3_q_net,
    b => constant3_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_3edd586960 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => delay3_q_net,
    b => negate_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Soft Treshold2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_soft_treshold2 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 16-1 downto 0 );
    clk_8 : in std_logic;
    ce_8 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_soft_treshold2;
architecture structural of axis_dwt_soft_treshold2 is 
  signal dest_ce_net : std_logic;
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net : std_logic;
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal mux_y_net : std_logic_vector( 18-1 downto 0 );
  signal negate_op_net : std_logic_vector( 17-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= addsub2_s_net;
  delay2_q_net <= in1;
  constant2_op_net <= in2;
  dest_clk_net <= clk_8;
  dest_ce_net <= ce_8;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => delay2_q_net,
    b => constant2_op_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => delay2_q_net,
    b => constant2_op_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mux_y_net,
    b => mux1_y_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_720fb75132 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  mux : entity xil_defaultlib.sysgen_mux_6ee3415da7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => relational_op_net,
    d0 => constant_op_net,
    d1 => addsub1_s_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_6ee3415da7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => relational1_op_net,
    d0 => constant_op_net,
    d1 => addsub_s_net,
    y => mux1_y_net
  );
  negate : entity xil_defaultlib.sysgen_negate_a2ba1d759a 
  port map (
    clk => '1',
    ce => '1',
    clr => '0',
    ip => constant2_op_net,
    op => negate_op_net
  );
  relational : entity xil_defaultlib.sysgen_relational_0f4c6e3804 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => delay2_q_net,
    b => constant2_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_3edd586960 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => delay2_q_net,
    b => negate_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Soft Treshold3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_soft_treshold3 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 16-1 downto 0 );
    clk_16 : in std_logic;
    ce_16 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_soft_treshold3;
architecture structural of axis_dwt_soft_treshold3 is 
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal mux_y_net : std_logic_vector( 18-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal negate_op_net : std_logic_vector( 17-1 downto 0 );
begin
  out1 <= addsub2_s_net;
  delay1_q_net <= in1;
  constant1_op_net <= in2;
  dest_clk_net <= clk_16;
  dest_ce_net <= ce_16;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => delay1_q_net,
    b => constant1_op_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => delay1_q_net,
    b => constant1_op_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mux_y_net,
    b => mux1_y_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_720fb75132 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  mux : entity xil_defaultlib.sysgen_mux_6ee3415da7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => relational_op_net,
    d0 => constant_op_net,
    d1 => addsub1_s_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_6ee3415da7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => relational1_op_net,
    d0 => constant_op_net,
    d1 => addsub_s_net,
    y => mux1_y_net
  );
  negate : entity xil_defaultlib.sysgen_negate_a2ba1d759a 
  port map (
    clk => '1',
    ce => '1',
    clr => '0',
    ip => constant1_op_net,
    op => negate_op_net
  );
  relational : entity xil_defaultlib.sysgen_relational_0f4c6e3804 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => delay1_q_net,
    b => constant1_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_3edd586960 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => delay1_q_net,
    b => negate_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Soft Treshold4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_soft_treshold4 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 16-1 downto 0 );
    clk_32 : in std_logic;
    ce_32 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_soft_treshold4;
architecture structural of axis_dwt_soft_treshold4 is 
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal negate_op_net : std_logic_vector( 17-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 18-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub2_s_net;
  down_sample1_q_net <= in1;
  constant_op_net_x0 <= in2;
  dest_clk_net <= clk_32;
  dest_ce_net <= ce_32;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => down_sample1_q_net,
    b => constant_op_net_x0,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => down_sample1_q_net,
    b => constant_op_net_x0,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mux_y_net,
    b => mux1_y_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_720fb75132 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  mux : entity xil_defaultlib.sysgen_mux_6ee3415da7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => relational_op_net,
    d0 => constant_op_net,
    d1 => addsub1_s_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_6ee3415da7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => relational1_op_net,
    d0 => constant_op_net,
    d1 => addsub_s_net,
    y => mux1_y_net
  );
  negate : entity xil_defaultlib.sysgen_negate_a2ba1d759a 
  port map (
    clk => '1',
    ce => '1',
    clr => '0',
    ip => constant_op_net_x0,
    op => negate_op_net
  );
  relational : entity xil_defaultlib.sysgen_relational_0f4c6e3804 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => down_sample1_q_net,
    b => constant_op_net_x0,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_3edd586960 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => down_sample1_q_net,
    b => negate_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Syn_cell1/R_HI
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_r_hi is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_16 : in std_logic;
    ce_16 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_r_hi;
architecture structural of axis_dwt_r_hi is 
  signal up_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal dest_clk_net : std_logic;
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub6_s_net;
  up_sample_q_net <= in1;
  dest_clk_net <= clk_16;
  dest_ce_net <= ce_16;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub1_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub2_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub3_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub4_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub5_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub6_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_2c3b09d6bd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_84d503fe63 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_aecfe64b61 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_36a968bf80 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => up_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => up_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Syn_cell1/R_LO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_r_lo is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_16 : in std_logic;
    ce_16 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_r_lo;
architecture structural of axis_dwt_r_lo is 
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal up_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net : std_logic;
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub6_s_net;
  up_sample1_q_net <= in1;
  dest_clk_net <= clk_16;
  dest_ce_net <= ce_16;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub1_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub2_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub3_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub4_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub5_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub6_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_ad2b1157a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_4918f39738 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_5444881530 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_3f98aa73c4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => up_sample1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => up_sample1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Syn_cell1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_syn_cell1 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 18-1 downto 0 );
    clk_16 : in std_logic;
    ce_16 : in std_logic;
    clk_32 : in std_logic;
    ce_32 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_syn_cell1;
architecture structural of axis_dwt_syn_cell1 is 
  signal up_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net_x0 : std_logic;
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net_x0 : std_logic;
  signal addsub6_s_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal up_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net : std_logic;
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= delay_q_net;
  addsub2_s_net <= in1;
  down_sample_q_net <= in2;
  dest_clk_net_x0 <= clk_16;
  dest_ce_net_x0 <= ce_16;
  dest_clk_net <= clk_32;
  dest_ce_net <= ce_32;
  r_hi : entity xil_defaultlib.axis_dwt_r_hi 
  port map (
    in1 => up_sample_q_net,
    clk_16 => dest_clk_net_x0,
    ce_16 => dest_ce_net_x0,
    out1 => addsub6_s_net_x0
  );
  r_lo : entity xil_defaultlib.axis_dwt_r_lo 
  port map (
    in1 => up_sample1_q_net,
    clk_16 => dest_clk_net_x0,
    ce_16 => dest_ce_net_x0,
    out1 => addsub6_s_net
  );
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub6_s_net_x0,
    b => addsub6_s_net,
    clk => dest_clk_net_x0,
    ce => dest_ce_net_x0,
    s => addsub_s_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub_s_net,
    clk => dest_clk_net_x0,
    ce => dest_ce_net_x0,
    q => delay_q_net
  );
  up_sample : entity xil_defaultlib.axis_dwt_xlusamp 
  generic map (
    copy_samples => 0,
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    latency => 0,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => addsub2_s_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => dest_clk_net_x0,
    dest_ce => dest_ce_net_x0,
    q => up_sample_q_net
  );
  up_sample1 : entity xil_defaultlib.axis_dwt_xlusamp 
  generic map (
    copy_samples => 0,
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    latency => 0,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => down_sample_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => dest_clk_net_x0,
    dest_ce => dest_ce_net_x0,
    q => up_sample1_q_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Syn_cell2/R_HI
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_r_hi_x0 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_8 : in std_logic;
    ce_8 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_r_hi_x0;
architecture structural of axis_dwt_r_hi_x0 is 
  signal up_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net : std_logic;
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub6_s_net;
  up_sample_q_net <= in1;
  dest_clk_net <= clk_8;
  dest_ce_net <= ce_8;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub1_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub2_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub3_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub4_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub5_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub6_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_2c3b09d6bd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_84d503fe63 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_aecfe64b61 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_36a968bf80 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => up_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => up_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Syn_cell2/R_LO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_r_lo_x0 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_8 : in std_logic;
    ce_8 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_r_lo_x0;
architecture structural of axis_dwt_r_lo_x0 is 
  signal dest_clk_net : std_logic;
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal up_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub6_s_net;
  up_sample1_q_net <= in1;
  dest_clk_net <= clk_8;
  dest_ce_net <= ce_8;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub1_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub2_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub3_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub4_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub5_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub6_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_ad2b1157a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_4918f39738 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_5444881530 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_3f98aa73c4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => up_sample1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => up_sample1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Syn_cell2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_syn_cell2 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 18-1 downto 0 );
    clk_8 : in std_logic;
    ce_8 : in std_logic;
    clk_16 : in std_logic;
    ce_16 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_syn_cell2;
architecture structural of axis_dwt_syn_cell2 is 
  signal dest_clk_net_x0 : std_logic;
  signal dest_ce_net_x0 : std_logic;
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal up_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal up_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net : std_logic;
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
begin
  out1 <= delay_q_net;
  delay8_q_net <= in1;
  delay_q_net_x0 <= in2;
  dest_clk_net_x0 <= clk_8;
  dest_ce_net_x0 <= ce_8;
  dest_clk_net <= clk_16;
  dest_ce_net <= ce_16;
  r_hi : entity xil_defaultlib.axis_dwt_r_hi_x0 
  port map (
    in1 => up_sample_q_net,
    clk_8 => dest_clk_net_x0,
    ce_8 => dest_ce_net_x0,
    out1 => addsub6_s_net_x0
  );
  r_lo : entity xil_defaultlib.axis_dwt_r_lo_x0 
  port map (
    in1 => up_sample1_q_net,
    clk_8 => dest_clk_net_x0,
    ce_8 => dest_ce_net_x0,
    out1 => addsub6_s_net
  );
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub6_s_net_x0,
    b => addsub6_s_net,
    clk => dest_clk_net_x0,
    ce => dest_ce_net_x0,
    s => addsub_s_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub_s_net,
    clk => dest_clk_net_x0,
    ce => dest_ce_net_x0,
    q => delay_q_net
  );
  up_sample : entity xil_defaultlib.axis_dwt_xlusamp 
  generic map (
    copy_samples => 0,
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    latency => 0,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => delay8_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => dest_clk_net_x0,
    dest_ce => dest_ce_net_x0,
    q => up_sample_q_net
  );
  up_sample1 : entity xil_defaultlib.axis_dwt_xlusamp 
  generic map (
    copy_samples => 0,
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    latency => 0,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => delay_q_net_x0,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => dest_clk_net_x0,
    dest_ce => dest_ce_net_x0,
    q => up_sample1_q_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Syn_cell3/R_HI
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_r_hi_x1 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_4 : in std_logic;
    ce_4 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_r_hi_x1;
architecture structural of axis_dwt_r_hi_x1 is 
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal up_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net : std_logic;
  signal dest_ce_net : std_logic;
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub6_s_net;
  up_sample_q_net <= in1;
  dest_clk_net <= clk_4;
  dest_ce_net <= ce_4;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub1_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub2_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub3_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub4_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub5_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub6_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_2c3b09d6bd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_84d503fe63 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_aecfe64b61 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_36a968bf80 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => up_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => up_sample_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Syn_cell3/R_LO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_r_lo_x1 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_4 : in std_logic;
    ce_4 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_r_lo_x1;
architecture structural of axis_dwt_r_lo_x1 is 
  signal dest_clk_net : std_logic;
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal up_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub6_s_net;
  up_sample1_q_net <= in1;
  dest_clk_net <= clk_4;
  dest_ce_net <= ce_4;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub1_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub2_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub3_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub4_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub5_s_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    s => addsub6_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_ad2b1157a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_4918f39738 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_5444881530 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_3f98aa73c4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => up_sample1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => up_sample1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => dest_clk_net,
    ce => dest_ce_net,
    core_clk => dest_clk_net,
    core_ce => dest_ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Syn_cell3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_syn_cell3 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 18-1 downto 0 );
    clk_4 : in std_logic;
    ce_4 : in std_logic;
    clk_8 : in std_logic;
    ce_8 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_syn_cell3;
architecture structural of axis_dwt_syn_cell3 is 
  signal dest_clk_net_x0 : std_logic;
  signal dest_ce_net_x0 : std_logic;
  signal delay_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal up_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal up_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net : std_logic;
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= delay_q_net;
  delay7_q_net <= in1;
  delay_q_net_x0 <= in2;
  dest_clk_net_x0 <= clk_4;
  dest_ce_net_x0 <= ce_4;
  dest_clk_net <= clk_8;
  dest_ce_net <= ce_8;
  r_hi : entity xil_defaultlib.axis_dwt_r_hi_x1 
  port map (
    in1 => up_sample_q_net,
    clk_4 => dest_clk_net_x0,
    ce_4 => dest_ce_net_x0,
    out1 => addsub6_s_net_x0
  );
  r_lo : entity xil_defaultlib.axis_dwt_r_lo_x1 
  port map (
    in1 => up_sample1_q_net,
    clk_4 => dest_clk_net_x0,
    ce_4 => dest_ce_net_x0,
    out1 => addsub6_s_net
  );
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub6_s_net_x0,
    b => addsub6_s_net,
    clk => dest_clk_net_x0,
    ce => dest_ce_net_x0,
    s => addsub_s_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub_s_net,
    clk => dest_clk_net_x0,
    ce => dest_ce_net_x0,
    q => delay_q_net
  );
  up_sample : entity xil_defaultlib.axis_dwt_xlusamp 
  generic map (
    copy_samples => 0,
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    latency => 0,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => delay7_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => dest_clk_net_x0,
    dest_ce => dest_ce_net_x0,
    q => up_sample_q_net
  );
  up_sample1 : entity xil_defaultlib.axis_dwt_xlusamp 
  generic map (
    copy_samples => 0,
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    latency => 0,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => delay_q_net_x0,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => dest_clk_net_x0,
    dest_ce => dest_ce_net_x0,
    q => up_sample1_q_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Syn_cell4/R_HI
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_r_hi_x2 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_2 : in std_logic;
    ce_2 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_r_hi_x2;
architecture structural of axis_dwt_r_hi_x2 is 
  signal clk_net : std_logic;
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal up_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal ce_net : std_logic;
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub6_s_net;
  up_sample_q_net <= in1;
  clk_net <= clk_2;
  ce_net <= ce_2;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub5_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_2c3b09d6bd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_84d503fe63 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_aecfe64b61 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_36a968bf80 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => up_sample_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => up_sample_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Syn_cell4/R_LO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_r_lo_x2 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_2 : in std_logic;
    ce_2 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_r_lo_x2;
architecture structural of axis_dwt_r_lo_x2 is 
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal up_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal ce_net : std_logic;
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub6_s_net;
  up_sample1_q_net <= in1;
  clk_net <= clk_2;
  ce_net <= ce_2;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub5_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_ad2b1157a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_4918f39738 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_5444881530 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_3f98aa73c4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => up_sample1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => up_sample1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Syn_cell4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_syn_cell4 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 18-1 downto 0 );
    clk_2 : in std_logic;
    ce_2 : in std_logic;
    clk_4 : in std_logic;
    ce_4 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_syn_cell4;
architecture structural of axis_dwt_syn_cell4 is 
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal up_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub6_s_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal up_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal ce_net : std_logic;
  signal dest_clk_net : std_logic;
begin
  out1 <= delay_q_net;
  delay6_q_net <= in1;
  delay_q_net_x0 <= in2;
  clk_net <= clk_2;
  ce_net <= ce_2;
  dest_clk_net <= clk_4;
  dest_ce_net <= ce_4;
  r_hi : entity xil_defaultlib.axis_dwt_r_hi_x2 
  port map (
    in1 => up_sample_q_net,
    clk_2 => clk_net,
    ce_2 => ce_net,
    out1 => addsub6_s_net_x0
  );
  r_lo : entity xil_defaultlib.axis_dwt_r_lo_x2 
  port map (
    in1 => up_sample1_q_net,
    clk_2 => clk_net,
    ce_2 => ce_net,
    out1 => addsub6_s_net
  );
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub6_s_net_x0,
    b => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  up_sample : entity xil_defaultlib.axis_dwt_xlusamp 
  generic map (
    copy_samples => 0,
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    latency => 0,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => delay6_q_net,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => up_sample_q_net
  );
  up_sample1 : entity xil_defaultlib.axis_dwt_xlusamp 
  generic map (
    copy_samples => 0,
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    latency => 0,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => delay_q_net_x0,
    src_clk => dest_clk_net,
    src_ce => dest_ce_net,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => up_sample1_q_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Syn_cell5/R_HI
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_r_hi_x3 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_r_hi_x3;
architecture structural of axis_dwt_r_hi_x3 is 
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal up_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal ce_net : std_logic;
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub6_s_net;
  up_sample_q_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub5_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_2c3b09d6bd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_84d503fe63 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_aecfe64b61 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_36a968bf80 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => up_sample_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => up_sample_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Syn_cell5/R_LO
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_r_lo_x3 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_r_lo_x3;
architecture structural of axis_dwt_r_lo_x3 is 
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal up_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal mult1_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 18-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal ce_net : std_logic;
  signal mult3_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 18-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= addsub6_s_net;
  up_sample1_q_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 20,
    core_name0 => "axis_dwt_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 20,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => mult7_p_net,
    b => addsub5_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_ad2b1157a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_7463f319ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_4918f39738 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_2e7d7216f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_5444881530 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_57592b4256 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_3f98aa73c4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_3b0effad3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => up_sample1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  mult : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant_op_net,
    b => up_sample1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.axis_dwt_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 16,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 16,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "axis_dwt_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 16,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt/Syn_cell5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_syn_cell5 is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_2 : in std_logic;
    ce_2 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_syn_cell5;
architecture structural of axis_dwt_syn_cell5 is 
  signal delay_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal up_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 18-1 downto 0 );
  signal up_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub6_s_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
begin
  out1 <= delay_q_net;
  delay5_q_net <= in1;
  delay_q_net_x0 <= in2;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_2;
  ce_net_x0 <= ce_2;
  r_hi : entity xil_defaultlib.axis_dwt_r_hi_x3 
  port map (
    in1 => up_sample_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => addsub6_s_net_x0
  );
  r_lo : entity xil_defaultlib.axis_dwt_r_lo_x3 
  port map (
    in1 => up_sample1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => addsub6_s_net
  );
  addsub : entity xil_defaultlib.axis_dwt_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 16,
    a_width => 18,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "axis_dwt_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 19,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 16,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub6_s_net_x0,
    b => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  delay : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  up_sample : entity xil_defaultlib.axis_dwt_xlusamp 
  generic map (
    copy_samples => 0,
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    latency => 0,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => delay5_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => up_sample_q_net
  );
  up_sample1 : entity xil_defaultlib.axis_dwt_xlusamp 
  generic map (
    copy_samples => 0,
    d_arith => xlSigned,
    d_bin_pt => 16,
    d_width => 18,
    latency => 0,
    q_arith => xlSigned,
    q_bin_pt => 16,
    q_width => 18
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    en => "1",
    d => delay_q_net_x0,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => up_sample1_q_net
  );
end structural;
-- Generated from Simulink block DWT_opt_fixed_point/axis_dwt_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_struct is
  port (
    signal_in : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_2 : in std_logic;
    ce_2 : in std_logic;
    clk_4 : in std_logic;
    ce_4 : in std_logic;
    clk_8 : in std_logic;
    ce_8 : in std_logic;
    clk_16 : in std_logic;
    ce_16 : in std_logic;
    clk_32 : in std_logic;
    ce_32 : in std_logic;
    signal_out : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt_struct;
architecture structural of axis_dwt_struct is 
  signal dest_ce_net_x1 : std_logic;
  signal signal_in_net : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal clk_net_x0 : std_logic;
  signal dest_ce_net_x2 : std_logic;
  signal ce_net_x0 : std_logic;
  signal dest_clk_net_x1 : std_logic;
  signal dest_clk_net_x2 : std_logic;
  signal dest_clk_net_x0 : std_logic;
  signal dest_ce_net_x0 : std_logic;
  signal down_sample_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub2_s_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal down_sample_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal down_sample1_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 18-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub2_s_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 18-1 downto 0 );
  signal dest_ce_net : std_logic;
  signal delay_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 18-1 downto 0 );
  signal dest_clk_net : std_logic;
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 18-1 downto 0 );
  signal delay_q_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal addsub2_s_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal down_sample_q_net_x2 : std_logic_vector( 18-1 downto 0 );
begin
  signal_in_net <= signal_in;
  signal_out <= delay_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_2;
  ce_net_x0 <= ce_2;
  dest_clk_net_x2 <= clk_4;
  dest_ce_net_x2 <= ce_4;
  dest_clk_net_x1 <= clk_8;
  dest_ce_net_x1 <= ce_8;
  dest_clk_net_x0 <= clk_16;
  dest_ce_net_x0 <= ce_16;
  dest_clk_net <= clk_32;
  dest_ce_net <= ce_32;
  ana_cell1 : entity xil_defaultlib.axis_dwt_ana_cell1 
  port map (
    in1 => down_sample_q_net_x0,
    clk_2 => clk_net_x0,
    ce_2 => ce_net_x0,
    clk_4 => dest_clk_net_x2,
    ce_4 => dest_ce_net_x2,
    out1 => down_sample1_q_net,
    out2 => down_sample_q_net
  );
  ana_cell2 : entity xil_defaultlib.axis_dwt_ana_cell2 
  port map (
    in1 => down_sample_q_net,
    clk_4 => dest_clk_net_x2,
    ce_4 => dest_ce_net_x2,
    clk_8 => dest_clk_net_x1,
    ce_8 => dest_ce_net_x1,
    out1 => down_sample1_q_net_x3,
    out2 => down_sample_q_net_x3
  );
  ana_cell3 : entity xil_defaultlib.axis_dwt_ana_cell3 
  port map (
    in1 => down_sample_q_net_x3,
    clk_8 => dest_clk_net_x1,
    ce_8 => dest_ce_net_x1,
    clk_16 => dest_clk_net_x0,
    ce_16 => dest_ce_net_x0,
    out1 => down_sample1_q_net_x2,
    out2 => down_sample_q_net_x2
  );
  ana_cell4 : entity xil_defaultlib.axis_dwt_ana_cell4 
  port map (
    in1 => down_sample_q_net_x2,
    clk_16 => dest_clk_net_x0,
    ce_16 => dest_ce_net_x0,
    clk_32 => dest_clk_net,
    ce_32 => dest_ce_net,
    out1 => down_sample1_q_net_x1,
    out2 => down_sample_q_net_x1
  );
  ana_cell5 : entity xil_defaultlib.axis_dwt_ana_cell5 
  port map (
    in1 => signal_in_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_2 => clk_net_x0,
    ce_2 => ce_net_x0,
    out1 => down_sample1_q_net_x0,
    out2 => down_sample_q_net_x0
  );
  soft_treshold : entity xil_defaultlib.axis_dwt_soft_treshold 
  port map (
    in1 => delay4_q_net,
    in2 => constant4_op_net,
    clk_2 => clk_net_x0,
    ce_2 => ce_net_x0,
    out1 => addsub2_s_net
  );
  soft_treshold1 : entity xil_defaultlib.axis_dwt_soft_treshold1 
  port map (
    in1 => delay3_q_net,
    in2 => constant3_op_net,
    clk_4 => dest_clk_net_x2,
    ce_4 => dest_ce_net_x2,
    out1 => addsub2_s_net_x0
  );
  soft_treshold2 : entity xil_defaultlib.axis_dwt_soft_treshold2 
  port map (
    in1 => delay2_q_net,
    in2 => constant2_op_net,
    clk_8 => dest_clk_net_x1,
    ce_8 => dest_ce_net_x1,
    out1 => addsub2_s_net_x1
  );
  soft_treshold3 : entity xil_defaultlib.axis_dwt_soft_treshold3 
  port map (
    in1 => delay1_q_net,
    in2 => constant1_op_net,
    clk_16 => dest_clk_net_x0,
    ce_16 => dest_ce_net_x0,
    out1 => addsub2_s_net_x2
  );
  soft_treshold4 : entity xil_defaultlib.axis_dwt_soft_treshold4 
  port map (
    in1 => down_sample1_q_net_x1,
    in2 => constant_op_net,
    clk_32 => dest_clk_net,
    ce_32 => dest_ce_net,
    out1 => addsub2_s_net_x3
  );
  syn_cell1 : entity xil_defaultlib.axis_dwt_syn_cell1 
  port map (
    in1 => addsub2_s_net_x3,
    in2 => down_sample_q_net_x1,
    clk_16 => dest_clk_net_x0,
    ce_16 => dest_ce_net_x0,
    clk_32 => dest_clk_net,
    ce_32 => dest_ce_net,
    out1 => delay_q_net_x2
  );
  syn_cell2 : entity xil_defaultlib.axis_dwt_syn_cell2 
  port map (
    in1 => delay8_q_net,
    in2 => delay_q_net_x2,
    clk_8 => dest_clk_net_x1,
    ce_8 => dest_ce_net_x1,
    clk_16 => dest_clk_net_x0,
    ce_16 => dest_ce_net_x0,
    out1 => delay_q_net_x3
  );
  syn_cell3 : entity xil_defaultlib.axis_dwt_syn_cell3 
  port map (
    in1 => delay7_q_net,
    in2 => delay_q_net_x3,
    clk_4 => dest_clk_net_x2,
    ce_4 => dest_ce_net_x2,
    clk_8 => dest_clk_net_x1,
    ce_8 => dest_ce_net_x1,
    out1 => delay_q_net_x1
  );
  syn_cell4 : entity xil_defaultlib.axis_dwt_syn_cell4 
  port map (
    in1 => delay6_q_net,
    in2 => delay_q_net_x1,
    clk_2 => clk_net_x0,
    ce_2 => ce_net_x0,
    clk_4 => dest_clk_net_x2,
    ce_4 => dest_ce_net_x2,
    out1 => delay_q_net_x0
  );
  syn_cell5 : entity xil_defaultlib.axis_dwt_syn_cell5 
  port map (
    in1 => delay5_q_net,
    in2 => delay_q_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    clk_2 => clk_net_x0,
    ce_2 => ce_net_x0,
    out1 => delay_q_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_ba2baebc3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_ee897f72c5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_7c1f32f0d0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_85e901aa5d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_b69a72bc6d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  delay1 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => down_sample1_q_net_x2,
    clk => dest_clk_net_x0,
    ce => dest_ce_net_x0,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 13,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => down_sample1_q_net_x3,
    clk => dest_clk_net_x1,
    ce => dest_ce_net_x1,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 31,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => down_sample1_q_net,
    clk => dest_clk_net_x2,
    ce => dest_ce_net_x2,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 67,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => down_sample1_q_net_x0,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 68,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub2_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 32,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub2_s_net_x0,
    clk => dest_clk_net_x2,
    ce => dest_ce_net_x2,
    q => delay6_q_net
  );
  delay7 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 14,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub2_s_net_x1,
    clk => dest_clk_net_x1,
    ce => dest_ce_net_x1,
    q => delay7_q_net
  );
  delay8 : entity xil_defaultlib.axis_dwt_xldelay 
  generic map (
    latency => 5,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub2_s_net_x2,
    clk => dest_clk_net_x0,
    ce => dest_ce_net_x0,
    q => delay8_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt_default_clock_driver is
  port (
    axis_dwt_sysclk : in std_logic;
    axis_dwt_sysce : in std_logic;
    axis_dwt_sysclr : in std_logic;
    axis_dwt_clk1 : out std_logic;
    axis_dwt_ce1 : out std_logic;
    axis_dwt_clk2 : out std_logic;
    axis_dwt_ce2 : out std_logic;
    axis_dwt_clk4 : out std_logic;
    axis_dwt_ce4 : out std_logic;
    axis_dwt_clk8 : out std_logic;
    axis_dwt_ce8 : out std_logic;
    axis_dwt_clk16 : out std_logic;
    axis_dwt_ce16 : out std_logic;
    axis_dwt_clk32 : out std_logic;
    axis_dwt_ce32 : out std_logic
  );
end axis_dwt_default_clock_driver;
architecture structural of axis_dwt_default_clock_driver is 
begin
  clockdriver_x4 : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => axis_dwt_sysclk,
    sysce => axis_dwt_sysce,
    sysclr => axis_dwt_sysclr,
    clk => axis_dwt_clk1,
    ce => axis_dwt_ce1
  );
  clockdriver_x3 : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 2,
    log_2_period => 2
  )
  port map (
    sysclk => axis_dwt_sysclk,
    sysce => axis_dwt_sysce,
    sysclr => axis_dwt_sysclr,
    clk => axis_dwt_clk2,
    ce => axis_dwt_ce2
  );
  clockdriver_x2 : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 4,
    log_2_period => 3
  )
  port map (
    sysclk => axis_dwt_sysclk,
    sysce => axis_dwt_sysce,
    sysclr => axis_dwt_sysclr,
    clk => axis_dwt_clk4,
    ce => axis_dwt_ce4
  );
  clockdriver_x1 : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 8,
    log_2_period => 4
  )
  port map (
    sysclk => axis_dwt_sysclk,
    sysce => axis_dwt_sysce,
    sysclr => axis_dwt_sysclr,
    clk => axis_dwt_clk8,
    ce => axis_dwt_ce8
  );
  clockdriver_x0 : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 16,
    log_2_period => 5
  )
  port map (
    sysclk => axis_dwt_sysclk,
    sysce => axis_dwt_sysce,
    sysclr => axis_dwt_sysclr,
    clk => axis_dwt_clk16,
    ce => axis_dwt_ce16
  );
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 32,
    log_2_period => 6
  )
  port map (
    sysclk => axis_dwt_sysclk,
    sysce => axis_dwt_sysce,
    sysclr => axis_dwt_sysclr,
    clk => axis_dwt_clk32,
    ce => axis_dwt_ce32
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axis_dwt is
  port (
    signal_in : in std_logic_vector( 18-1 downto 0 );
    clk : in std_logic;
    signal_out : out std_logic_vector( 18-1 downto 0 )
  );
end axis_dwt;
architecture structural of axis_dwt is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "axis_dwt,sysgen_core_2023_2,{,compilation=IP Catalog,block_icon_display=HDL port names,family=zynq,part=xc7z020,speed=-1,package=clg484,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=1,interface_doc=1,ce_clr=0,clock_period=10,system_simulink_period=1e-06,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.008279,addsub=160,constant=170,delay=153,dsamp=10,mult=160,mux=10,negate=5,relational=10,usamp=10,}";
  signal clk_16_net : std_logic;
  signal clk_4_net : std_logic;
  signal clk_2_net : std_logic;
  signal ce_2_net : std_logic;
  signal ce_4_net : std_logic;
  signal clk_1_net : std_logic;
  signal clk_8_net : std_logic;
  signal ce_8_net : std_logic;
  signal ce_16_net : std_logic;
  signal clk_32_net : std_logic;
  signal ce_32_net : std_logic;
  signal ce_1_net : std_logic;
begin
  axis_dwt_default_clock_driver : entity xil_defaultlib.axis_dwt_default_clock_driver 
  port map (
    axis_dwt_sysclk => clk,
    axis_dwt_sysce => '1',
    axis_dwt_sysclr => '0',
    axis_dwt_clk1 => clk_1_net,
    axis_dwt_ce1 => ce_1_net,
    axis_dwt_clk2 => clk_2_net,
    axis_dwt_ce2 => ce_2_net,
    axis_dwt_clk4 => clk_4_net,
    axis_dwt_ce4 => ce_4_net,
    axis_dwt_clk8 => clk_8_net,
    axis_dwt_ce8 => ce_8_net,
    axis_dwt_clk16 => clk_16_net,
    axis_dwt_ce16 => ce_16_net,
    axis_dwt_clk32 => clk_32_net,
    axis_dwt_ce32 => ce_32_net
  );
  axis_dwt_struct : entity xil_defaultlib.axis_dwt_struct 
  port map (
    signal_in => signal_in,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    clk_2 => clk_2_net,
    ce_2 => ce_2_net,
    clk_4 => clk_4_net,
    ce_4 => ce_4_net,
    clk_8 => clk_8_net,
    ce_8 => ce_8_net,
    clk_16 => clk_16_net,
    ce_16 => ce_16_net,
    clk_32 => clk_32_net,
    ce_32 => ce_32_net,
    signal_out => signal_out
  );
end structural;
