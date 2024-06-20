// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon May 13 16:01:45 2024
// Host        : Predator-Offset running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Jupyter_dac_top_0_0_sim_netlist.v
// Design      : Jupyter_dac_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Jupyter_dac_top_0_0,dac_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "dac_top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset_n,
    send_en,
    ldac_n,
    mosi,
    sclk,
    ss_n);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input send_en;
  output ldac_n;
  output mosi;
  output sclk;
  output [0:0]ss_n;

  wire clk;
  wire inst_n_1;
  wire inst_n_4;
  wire ldac_n;
  wire mosi;
  wire mosi_INST_0_i_1_n_0;
  wire reset_n;
  wire sclk;
  wire send_en;
  wire [0:0]ss_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_top inst
       (.clk(clk),
        .ldac_n(ldac_n),
        .mosi(mosi),
        .mosi_INST_0_i_1(mosi_INST_0_i_1_n_0),
        .reset_n(reset_n),
        .reset_n_0(inst_n_1),
        .sclk(sclk),
        .send_en(send_en),
        .ss_n(ss_n),
        .state_reg(inst_n_4));
  FDCE #(
    .INIT(1'b1)) 
    mosi_INST_0_i_1
       (.C(clk),
        .CE(1'b1),
        .CLR(inst_n_1),
        .D(inst_n_4),
        .Q(mosi_INST_0_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller
   (en_n,
    ldac_n,
    dac_tx_ena_signal,
    reset_n,
    clk,
    busy_signal,
    AR);
  output en_n;
  output ldac_n;
  output dac_tx_ena_signal;
  input reset_n;
  input clk;
  input busy_signal;
  input [0:0]AR;

  wire [0:0]AR;
  wire busy_signal;
  wire clk;
  wire dac_tx_ena_i_1_n_0;
  wire dac_tx_ena_signal;
  wire en_n;
  wire en_n_i_1_n_0;
  wire ldac_n;
  wire [1:1]p_0_in__0;
  wire reset_n;
  (* MARK_DEBUG *) wire [1:0]\^state ;
  wire \state[0]_i_1_n_0 ;

  LUT2 #(
    .INIT(4'h2)) 
    dac_tx_ena_i_1
       (.I0(\^state [0]),
        .I1(\^state [1]),
        .O(dac_tx_ena_i_1_n_0));
  FDRE dac_tx_ena_reg
       (.C(clk),
        .CE(reset_n),
        .D(dac_tx_ena_i_1_n_0),
        .Q(dac_tx_ena_signal),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    en_n_i_1
       (.I0(\^state [0]),
        .I1(\^state [1]),
        .O(en_n_i_1_n_0));
  FDRE en_n_reg
       (.C(clk),
        .CE(reset_n),
        .D(en_n_i_1_n_0),
        .Q(en_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    state
       (.I0(\^state [1]),
        .I1(\^state [0]),
        .I2(busy_signal),
        .O(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[0]_i_1 
       (.I0(\^state [1]),
        .I1(busy_signal),
        .O(\state[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "gen_read_init:00,gen_2_dac:01,gen_read:10,wait_dac:11" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\state[0]_i_1_n_0 ),
        .Q(\^state [0]));
  (* FSM_ENCODED_STATES = "gen_read_init:00,gen_2_dac:01,gen_read:10,wait_dac:11" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0),
        .Q(\^state [1]));
  FDRE update_output_reg
       (.C(clk),
        .CE(reset_n),
        .D(\^state [1]),
        .Q(ldac_n),
        .R(1'b0));
endmodule

(* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_data_entity
   (sys_clk,
    reset_n,
    en_n,
    send_en,
    data_out);
  input sys_clk;
  input reset_n;
  input en_n;
  input send_en;
  output [15:0]data_out;

  (* MARK_DEBUG *) wire [14:0]address_counter;
  wire [13:1]address_counter0;
  wire \address_counter[14]_i_3_n_0 ;
  wire \address_counter[14]_i_4_n_0 ;
  wire \address_counter[14]_i_5_n_0 ;
  wire \address_counter[14]_i_6_n_0 ;
  wire \address_counter_reg[12]_i_2_n_0 ;
  wire \address_counter_reg[12]_i_2_n_1 ;
  wire \address_counter_reg[12]_i_2_n_2 ;
  wire \address_counter_reg[12]_i_2_n_3 ;
  wire \address_counter_reg[4]_i_2_n_0 ;
  wire \address_counter_reg[4]_i_2_n_1 ;
  wire \address_counter_reg[4]_i_2_n_2 ;
  wire \address_counter_reg[4]_i_2_n_3 ;
  wire \address_counter_reg[8]_i_2_n_0 ;
  wire \address_counter_reg[8]_i_2_n_1 ;
  wire \address_counter_reg[8]_i_2_n_2 ;
  wire \address_counter_reg[8]_i_2_n_3 ;
  (* MARK_DEBUG *) wire [15:0]data_reg;
  wire \data_reg[0]_i_12_n_0 ;
  wire \data_reg[0]_i_15_n_0 ;
  wire \data_reg[0]_i_16_n_0 ;
  wire \data_reg[0]_i_17_n_0 ;
  wire \data_reg[0]_i_18_n_0 ;
  wire \data_reg[0]_i_19_n_0 ;
  wire \data_reg[0]_i_20_n_0 ;
  wire \data_reg[0]_i_21_n_0 ;
  wire \data_reg[0]_i_22_n_0 ;
  wire \data_reg[0]_i_23_n_0 ;
  wire \data_reg[0]_i_24_n_0 ;
  wire \data_reg[0]_i_25_n_0 ;
  wire \data_reg[0]_i_26_n_0 ;
  wire \data_reg[0]_i_2_n_0 ;
  wire \data_reg[0]_i_3_n_0 ;
  wire \data_reg[0]_i_4_n_0 ;
  wire \data_reg[0]_i_6_n_0 ;
  wire \data_reg[0]_i_7_n_0 ;
  wire \data_reg[10]_i_10_n_0 ;
  wire \data_reg[10]_i_15_n_0 ;
  wire \data_reg[10]_i_16_n_0 ;
  wire \data_reg[10]_i_17_n_0 ;
  wire \data_reg[10]_i_18_n_0 ;
  wire \data_reg[10]_i_19_n_0 ;
  wire \data_reg[10]_i_20_n_0 ;
  wire \data_reg[10]_i_21_n_0 ;
  wire \data_reg[10]_i_22_n_0 ;
  wire \data_reg[10]_i_2_n_0 ;
  wire \data_reg[10]_i_3_n_0 ;
  wire \data_reg[10]_i_4_n_0 ;
  wire \data_reg[10]_i_5_n_0 ;
  wire \data_reg[10]_i_6_n_0 ;
  wire \data_reg[10]_i_7_n_0 ;
  wire \data_reg[10]_i_8_n_0 ;
  wire \data_reg[11]_i_10_n_0 ;
  wire \data_reg[11]_i_11_n_0 ;
  wire \data_reg[11]_i_12_n_0 ;
  wire \data_reg[11]_i_13_n_0 ;
  wire \data_reg[11]_i_15_n_0 ;
  wire \data_reg[11]_i_16_n_0 ;
  wire \data_reg[11]_i_17_n_0 ;
  wire \data_reg[11]_i_18_n_0 ;
  wire \data_reg[11]_i_19_n_0 ;
  wire \data_reg[11]_i_2_n_0 ;
  wire \data_reg[11]_i_3_n_0 ;
  wire \data_reg[11]_i_4_n_0 ;
  wire \data_reg[11]_i_5_n_0 ;
  wire \data_reg[11]_i_7_n_0 ;
  wire \data_reg[11]_i_8_n_0 ;
  wire \data_reg[12]_i_10_n_0 ;
  wire \data_reg[12]_i_11_n_0 ;
  wire \data_reg[12]_i_12_n_0 ;
  wire \data_reg[12]_i_13_n_0 ;
  wire \data_reg[12]_i_14_n_0 ;
  wire \data_reg[12]_i_2_n_0 ;
  wire \data_reg[12]_i_3_n_0 ;
  wire \data_reg[12]_i_4_n_0 ;
  wire \data_reg[12]_i_5_n_0 ;
  wire \data_reg[12]_i_6_n_0 ;
  wire \data_reg[12]_i_7_n_0 ;
  wire \data_reg[12]_i_8_n_0 ;
  wire \data_reg[12]_i_9_n_0 ;
  wire \data_reg[1]_i_12_n_0 ;
  wire \data_reg[1]_i_15_n_0 ;
  wire \data_reg[1]_i_16_n_0 ;
  wire \data_reg[1]_i_17_n_0 ;
  wire \data_reg[1]_i_18_n_0 ;
  wire \data_reg[1]_i_19_n_0 ;
  wire \data_reg[1]_i_20_n_0 ;
  wire \data_reg[1]_i_21_n_0 ;
  wire \data_reg[1]_i_22_n_0 ;
  wire \data_reg[1]_i_23_n_0 ;
  wire \data_reg[1]_i_24_n_0 ;
  wire \data_reg[1]_i_25_n_0 ;
  wire \data_reg[1]_i_26_n_0 ;
  wire \data_reg[1]_i_2_n_0 ;
  wire \data_reg[1]_i_3_n_0 ;
  wire \data_reg[1]_i_4_n_0 ;
  wire \data_reg[1]_i_6_n_0 ;
  wire \data_reg[1]_i_7_n_0 ;
  wire \data_reg[2]_i_12_n_0 ;
  wire \data_reg[2]_i_15_n_0 ;
  wire \data_reg[2]_i_16_n_0 ;
  wire \data_reg[2]_i_17_n_0 ;
  wire \data_reg[2]_i_18_n_0 ;
  wire \data_reg[2]_i_19_n_0 ;
  wire \data_reg[2]_i_20_n_0 ;
  wire \data_reg[2]_i_21_n_0 ;
  wire \data_reg[2]_i_22_n_0 ;
  wire \data_reg[2]_i_23_n_0 ;
  wire \data_reg[2]_i_24_n_0 ;
  wire \data_reg[2]_i_25_n_0 ;
  wire \data_reg[2]_i_26_n_0 ;
  wire \data_reg[2]_i_2_n_0 ;
  wire \data_reg[2]_i_3_n_0 ;
  wire \data_reg[2]_i_4_n_0 ;
  wire \data_reg[2]_i_6_n_0 ;
  wire \data_reg[2]_i_7_n_0 ;
  wire \data_reg[3]_i_12_n_0 ;
  wire \data_reg[3]_i_15_n_0 ;
  wire \data_reg[3]_i_16_n_0 ;
  wire \data_reg[3]_i_17_n_0 ;
  wire \data_reg[3]_i_18_n_0 ;
  wire \data_reg[3]_i_19_n_0 ;
  wire \data_reg[3]_i_20_n_0 ;
  wire \data_reg[3]_i_21_n_0 ;
  wire \data_reg[3]_i_22_n_0 ;
  wire \data_reg[3]_i_23_n_0 ;
  wire \data_reg[3]_i_24_n_0 ;
  wire \data_reg[3]_i_25_n_0 ;
  wire \data_reg[3]_i_26_n_0 ;
  wire \data_reg[3]_i_2_n_0 ;
  wire \data_reg[3]_i_3_n_0 ;
  wire \data_reg[3]_i_4_n_0 ;
  wire \data_reg[3]_i_6_n_0 ;
  wire \data_reg[3]_i_7_n_0 ;
  wire \data_reg[4]_i_17_n_0 ;
  wire \data_reg[4]_i_18_n_0 ;
  wire \data_reg[4]_i_19_n_0 ;
  wire \data_reg[4]_i_20_n_0 ;
  wire \data_reg[4]_i_21_n_0 ;
  wire \data_reg[4]_i_22_n_0 ;
  wire \data_reg[4]_i_23_n_0 ;
  wire \data_reg[4]_i_24_n_0 ;
  wire \data_reg[4]_i_25_n_0 ;
  wire \data_reg[4]_i_26_n_0 ;
  wire \data_reg[4]_i_27_n_0 ;
  wire \data_reg[4]_i_28_n_0 ;
  wire \data_reg[4]_i_2_n_0 ;
  wire \data_reg[4]_i_3_n_0 ;
  wire \data_reg[4]_i_4_n_0 ;
  wire \data_reg[4]_i_5_n_0 ;
  wire \data_reg[4]_i_6_n_0 ;
  wire \data_reg[4]_i_7_n_0 ;
  wire \data_reg[5]_i_16_n_0 ;
  wire \data_reg[5]_i_19_n_0 ;
  wire \data_reg[5]_i_20_n_0 ;
  wire \data_reg[5]_i_21_n_0 ;
  wire \data_reg[5]_i_22_n_0 ;
  wire \data_reg[5]_i_23_n_0 ;
  wire \data_reg[5]_i_24_n_0 ;
  wire \data_reg[5]_i_25_n_0 ;
  wire \data_reg[5]_i_26_n_0 ;
  wire \data_reg[5]_i_27_n_0 ;
  wire \data_reg[5]_i_28_n_0 ;
  wire \data_reg[5]_i_29_n_0 ;
  wire \data_reg[5]_i_2_n_0 ;
  wire \data_reg[5]_i_30_n_0 ;
  wire \data_reg[5]_i_31_n_0 ;
  wire \data_reg[5]_i_32_n_0 ;
  wire \data_reg[5]_i_3_n_0 ;
  wire \data_reg[5]_i_4_n_0 ;
  wire \data_reg[5]_i_5_n_0 ;
  wire \data_reg[5]_i_6_n_0 ;
  wire \data_reg[5]_i_7_n_0 ;
  wire \data_reg[5]_i_8_n_0 ;
  wire \data_reg[6]_i_16_n_0 ;
  wire \data_reg[6]_i_19_n_0 ;
  wire \data_reg[6]_i_20_n_0 ;
  wire \data_reg[6]_i_21_n_0 ;
  wire \data_reg[6]_i_22_n_0 ;
  wire \data_reg[6]_i_23_n_0 ;
  wire \data_reg[6]_i_24_n_0 ;
  wire \data_reg[6]_i_25_n_0 ;
  wire \data_reg[6]_i_26_n_0 ;
  wire \data_reg[6]_i_27_n_0 ;
  wire \data_reg[6]_i_28_n_0 ;
  wire \data_reg[6]_i_29_n_0 ;
  wire \data_reg[6]_i_2_n_0 ;
  wire \data_reg[6]_i_30_n_0 ;
  wire \data_reg[6]_i_31_n_0 ;
  wire \data_reg[6]_i_32_n_0 ;
  wire \data_reg[6]_i_3_n_0 ;
  wire \data_reg[6]_i_4_n_0 ;
  wire \data_reg[6]_i_5_n_0 ;
  wire \data_reg[6]_i_6_n_0 ;
  wire \data_reg[6]_i_7_n_0 ;
  wire \data_reg[6]_i_8_n_0 ;
  wire \data_reg[7]_i_15_n_0 ;
  wire \data_reg[7]_i_16_n_0 ;
  wire \data_reg[7]_i_17_n_0 ;
  wire \data_reg[7]_i_18_n_0 ;
  wire \data_reg[7]_i_19_n_0 ;
  wire \data_reg[7]_i_20_n_0 ;
  wire \data_reg[7]_i_21_n_0 ;
  wire \data_reg[7]_i_22_n_0 ;
  wire \data_reg[7]_i_23_n_0 ;
  wire \data_reg[7]_i_24_n_0 ;
  wire \data_reg[7]_i_25_n_0 ;
  wire \data_reg[7]_i_26_n_0 ;
  wire \data_reg[7]_i_2_n_0 ;
  wire \data_reg[7]_i_3_n_0 ;
  wire \data_reg[7]_i_4_n_0 ;
  wire \data_reg[7]_i_5_n_0 ;
  wire \data_reg[8]_i_10_n_0 ;
  wire \data_reg[8]_i_11_n_0 ;
  wire \data_reg[8]_i_12_n_0 ;
  wire \data_reg[8]_i_15_n_0 ;
  wire \data_reg[8]_i_16_n_0 ;
  wire \data_reg[8]_i_19_n_0 ;
  wire \data_reg[8]_i_20_n_0 ;
  wire \data_reg[8]_i_21_n_0 ;
  wire \data_reg[8]_i_22_n_0 ;
  wire \data_reg[8]_i_23_n_0 ;
  wire \data_reg[8]_i_24_n_0 ;
  wire \data_reg[8]_i_25_n_0 ;
  wire \data_reg[8]_i_2_n_0 ;
  wire \data_reg[8]_i_3_n_0 ;
  wire \data_reg[8]_i_4_n_0 ;
  wire \data_reg[8]_i_6_n_0 ;
  wire \data_reg[8]_i_7_n_0 ;
  wire \data_reg[8]_i_8_n_0 ;
  wire \data_reg[8]_i_9_n_0 ;
  wire \data_reg[9]_i_10_n_0 ;
  wire \data_reg[9]_i_14_n_0 ;
  wire \data_reg[9]_i_15_n_0 ;
  wire \data_reg[9]_i_16_n_0 ;
  wire \data_reg[9]_i_17_n_0 ;
  wire \data_reg[9]_i_20_n_0 ;
  wire \data_reg[9]_i_21_n_0 ;
  wire \data_reg[9]_i_22_n_0 ;
  wire \data_reg[9]_i_23_n_0 ;
  wire \data_reg[9]_i_24_n_0 ;
  wire \data_reg[9]_i_25_n_0 ;
  wire \data_reg[9]_i_26_n_0 ;
  wire \data_reg[9]_i_2_n_0 ;
  wire \data_reg[9]_i_3_n_0 ;
  wire \data_reg[9]_i_4_n_0 ;
  wire \data_reg[9]_i_6_n_0 ;
  wire \data_reg[9]_i_7_n_0 ;
  wire \data_reg[9]_i_8_n_0 ;
  wire \data_reg[9]_i_9_n_0 ;
  wire \data_reg_reg[0]_C_n_0 ;
  wire \data_reg_reg[0]_LDC_n_0 ;
  wire \data_reg_reg[0]_P_n_0 ;
  wire \data_reg_reg[0]_i_10_n_0 ;
  wire \data_reg_reg[0]_i_11_n_0 ;
  wire \data_reg_reg[0]_i_13_n_0 ;
  wire \data_reg_reg[0]_i_14_n_0 ;
  wire \data_reg_reg[0]_i_5_n_0 ;
  wire \data_reg_reg[0]_i_8_n_0 ;
  wire \data_reg_reg[0]_i_9_n_0 ;
  wire \data_reg_reg[10]_C_n_0 ;
  wire \data_reg_reg[10]_LDC_n_0 ;
  wire \data_reg_reg[10]_P_n_0 ;
  wire \data_reg_reg[10]_i_11_n_0 ;
  wire \data_reg_reg[10]_i_12_n_0 ;
  wire \data_reg_reg[10]_i_13_n_0 ;
  wire \data_reg_reg[10]_i_14_n_0 ;
  wire \data_reg_reg[10]_i_9_n_0 ;
  wire \data_reg_reg[11]_C_n_0 ;
  wire \data_reg_reg[11]_LDC_n_0 ;
  wire \data_reg_reg[11]_P_n_0 ;
  wire \data_reg_reg[11]_i_14_n_0 ;
  wire \data_reg_reg[11]_i_6_n_0 ;
  wire \data_reg_reg[11]_i_9_n_0 ;
  wire \data_reg_reg[12]_C_n_0 ;
  wire \data_reg_reg[12]_LDC_n_0 ;
  wire \data_reg_reg[12]_P_n_0 ;
  wire \data_reg_reg[1]_C_n_0 ;
  wire \data_reg_reg[1]_LDC_n_0 ;
  wire \data_reg_reg[1]_P_n_0 ;
  wire \data_reg_reg[1]_i_10_n_0 ;
  wire \data_reg_reg[1]_i_11_n_0 ;
  wire \data_reg_reg[1]_i_13_n_0 ;
  wire \data_reg_reg[1]_i_14_n_0 ;
  wire \data_reg_reg[1]_i_5_n_0 ;
  wire \data_reg_reg[1]_i_8_n_0 ;
  wire \data_reg_reg[1]_i_9_n_0 ;
  wire \data_reg_reg[2]_C_n_0 ;
  wire \data_reg_reg[2]_LDC_n_0 ;
  wire \data_reg_reg[2]_P_n_0 ;
  wire \data_reg_reg[2]_i_10_n_0 ;
  wire \data_reg_reg[2]_i_11_n_0 ;
  wire \data_reg_reg[2]_i_13_n_0 ;
  wire \data_reg_reg[2]_i_14_n_0 ;
  wire \data_reg_reg[2]_i_5_n_0 ;
  wire \data_reg_reg[2]_i_8_n_0 ;
  wire \data_reg_reg[2]_i_9_n_0 ;
  wire \data_reg_reg[3]_C_n_0 ;
  wire \data_reg_reg[3]_LDC_n_0 ;
  wire \data_reg_reg[3]_P_n_0 ;
  wire \data_reg_reg[3]_i_10_n_0 ;
  wire \data_reg_reg[3]_i_11_n_0 ;
  wire \data_reg_reg[3]_i_13_n_0 ;
  wire \data_reg_reg[3]_i_14_n_0 ;
  wire \data_reg_reg[3]_i_5_n_0 ;
  wire \data_reg_reg[3]_i_8_n_0 ;
  wire \data_reg_reg[3]_i_9_n_0 ;
  wire \data_reg_reg[4]_C_n_0 ;
  wire \data_reg_reg[4]_LDC_n_0 ;
  wire \data_reg_reg[4]_P_n_0 ;
  wire \data_reg_reg[4]_i_10_n_0 ;
  wire \data_reg_reg[4]_i_11_n_0 ;
  wire \data_reg_reg[4]_i_12_n_0 ;
  wire \data_reg_reg[4]_i_13_n_0 ;
  wire \data_reg_reg[4]_i_14_n_0 ;
  wire \data_reg_reg[4]_i_15_n_0 ;
  wire \data_reg_reg[4]_i_16_n_0 ;
  wire \data_reg_reg[4]_i_8_n_0 ;
  wire \data_reg_reg[4]_i_9_n_0 ;
  wire \data_reg_reg[5]_C_n_0 ;
  wire \data_reg_reg[5]_LDC_n_0 ;
  wire \data_reg_reg[5]_P_n_0 ;
  wire \data_reg_reg[5]_i_10_n_0 ;
  wire \data_reg_reg[5]_i_11_n_0 ;
  wire \data_reg_reg[5]_i_12_n_0 ;
  wire \data_reg_reg[5]_i_13_n_0 ;
  wire \data_reg_reg[5]_i_14_n_0 ;
  wire \data_reg_reg[5]_i_15_n_0 ;
  wire \data_reg_reg[5]_i_17_n_0 ;
  wire \data_reg_reg[5]_i_18_n_0 ;
  wire \data_reg_reg[5]_i_9_n_0 ;
  wire \data_reg_reg[6]_C_n_0 ;
  wire \data_reg_reg[6]_LDC_n_0 ;
  wire \data_reg_reg[6]_P_n_0 ;
  wire \data_reg_reg[6]_i_10_n_0 ;
  wire \data_reg_reg[6]_i_11_n_0 ;
  wire \data_reg_reg[6]_i_12_n_0 ;
  wire \data_reg_reg[6]_i_13_n_0 ;
  wire \data_reg_reg[6]_i_14_n_0 ;
  wire \data_reg_reg[6]_i_15_n_0 ;
  wire \data_reg_reg[6]_i_17_n_0 ;
  wire \data_reg_reg[6]_i_18_n_0 ;
  wire \data_reg_reg[6]_i_9_n_0 ;
  wire \data_reg_reg[7]_C_n_0 ;
  wire \data_reg_reg[7]_LDC_n_0 ;
  wire \data_reg_reg[7]_P_n_0 ;
  wire \data_reg_reg[7]_i_10_n_0 ;
  wire \data_reg_reg[7]_i_11_n_0 ;
  wire \data_reg_reg[7]_i_12_n_0 ;
  wire \data_reg_reg[7]_i_13_n_0 ;
  wire \data_reg_reg[7]_i_14_n_0 ;
  wire \data_reg_reg[7]_i_6_n_0 ;
  wire \data_reg_reg[7]_i_7_n_0 ;
  wire \data_reg_reg[7]_i_8_n_0 ;
  wire \data_reg_reg[7]_i_9_n_0 ;
  wire \data_reg_reg[8]_C_n_0 ;
  wire \data_reg_reg[8]_LDC_n_0 ;
  wire \data_reg_reg[8]_P_n_0 ;
  wire \data_reg_reg[8]_i_13_n_0 ;
  wire \data_reg_reg[8]_i_14_n_0 ;
  wire \data_reg_reg[8]_i_17_n_0 ;
  wire \data_reg_reg[8]_i_18_n_0 ;
  wire \data_reg_reg[8]_i_5_n_0 ;
  wire \data_reg_reg[9]_C_n_0 ;
  wire \data_reg_reg[9]_LDC_n_0 ;
  wire \data_reg_reg[9]_P_n_0 ;
  wire \data_reg_reg[9]_i_11_n_0 ;
  wire \data_reg_reg[9]_i_12_n_0 ;
  wire \data_reg_reg[9]_i_13_n_0 ;
  wire \data_reg_reg[9]_i_18_n_0 ;
  wire \data_reg_reg[9]_i_19_n_0 ;
  wire \data_reg_reg[9]_i_5_n_0 ;
  wire en_n;
  wire p_0_in__0;
  wire [14:0]p_1_in;
  wire [15:0]p_2_in;
  wire reset_n;
  wire send_en;
  (* MARK_DEBUG *) wire send_en_clk_rise;
  (* MARK_DEBUG *) wire send_en_detected;
  wire send_en_detected_i_1_n_0;
  wire state_i_1_n_0;
  wire state_reg_n_0;
  wire sys_clk;
  wire [3:0]\NLW_address_counter_reg[13]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_address_counter_reg[13]_i_2_O_UNCONNECTED ;
  wire \NLW_data_reg_reg[0]_Q_UNCONNECTED ;
  wire \NLW_data_reg_reg[10]_Q_UNCONNECTED ;
  wire \NLW_data_reg_reg[11]_Q_UNCONNECTED ;
  wire \NLW_data_reg_reg[12]_Q_UNCONNECTED ;
  wire \NLW_data_reg_reg[1]_Q_UNCONNECTED ;
  wire \NLW_data_reg_reg[2]_Q_UNCONNECTED ;
  wire \NLW_data_reg_reg[3]_Q_UNCONNECTED ;
  wire \NLW_data_reg_reg[4]_Q_UNCONNECTED ;
  wire \NLW_data_reg_reg[5]_Q_UNCONNECTED ;
  wire \NLW_data_reg_reg[6]_Q_UNCONNECTED ;
  wire \NLW_data_reg_reg[7]_Q_UNCONNECTED ;
  wire \NLW_data_reg_reg[8]_Q_UNCONNECTED ;
  wire \NLW_data_reg_reg[9]_Q_UNCONNECTED ;

  assign data_out[15:0] = data_reg;
  LUT4 #(
    .INIT(16'h8828)) 
    \address_counter[0]_i_1 
       (.I0(state_reg_n_0),
        .I1(address_counter[0]),
        .I2(\address_counter[14]_i_3_n_0 ),
        .I3(en_n),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \address_counter[10]_i_1 
       (.I0(state_reg_n_0),
        .I1(address_counter[10]),
        .I2(\address_counter[14]_i_3_n_0 ),
        .I3(address_counter0[10]),
        .I4(en_n),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \address_counter[11]_i_1 
       (.I0(state_reg_n_0),
        .I1(address_counter[11]),
        .I2(\address_counter[14]_i_3_n_0 ),
        .I3(address_counter0[11]),
        .I4(en_n),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \address_counter[12]_i_1 
       (.I0(state_reg_n_0),
        .I1(address_counter[12]),
        .I2(\address_counter[14]_i_3_n_0 ),
        .I3(address_counter0[12]),
        .I4(en_n),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \address_counter[13]_i_1 
       (.I0(state_reg_n_0),
        .I1(address_counter[13]),
        .I2(\address_counter[14]_i_3_n_0 ),
        .I3(address_counter0[13]),
        .I4(en_n),
        .O(p_1_in[13]));
  LUT4 #(
    .INIT(16'hA020)) 
    \address_counter[14]_i_1 
       (.I0(state_reg_n_0),
        .I1(\address_counter[14]_i_3_n_0 ),
        .I2(address_counter[14]),
        .I3(en_n),
        .O(p_1_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \address_counter[14]_i_2 
       (.I0(reset_n),
        .O(p_0_in__0));
  LUT5 #(
    .INIT(32'h0000DFFF)) 
    \address_counter[14]_i_3 
       (.I0(address_counter[0]),
        .I1(\address_counter[14]_i_4_n_0 ),
        .I2(\address_counter[14]_i_5_n_0 ),
        .I3(\address_counter[14]_i_6_n_0 ),
        .I4(address_counter[14]),
        .O(\address_counter[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \address_counter[14]_i_4 
       (.I0(address_counter[1]),
        .I1(address_counter[4]),
        .I2(address_counter[5]),
        .I3(address_counter[2]),
        .I4(address_counter[3]),
        .O(\address_counter[14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \address_counter[14]_i_5 
       (.I0(address_counter[11]),
        .I1(address_counter[10]),
        .I2(address_counter[13]),
        .I3(address_counter[12]),
        .O(\address_counter[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \address_counter[14]_i_6 
       (.I0(address_counter[7]),
        .I1(address_counter[6]),
        .I2(address_counter[9]),
        .I3(address_counter[8]),
        .O(\address_counter[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \address_counter[1]_i_1 
       (.I0(state_reg_n_0),
        .I1(address_counter[1]),
        .I2(\address_counter[14]_i_3_n_0 ),
        .I3(address_counter0[1]),
        .I4(en_n),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \address_counter[2]_i_1 
       (.I0(state_reg_n_0),
        .I1(address_counter[2]),
        .I2(\address_counter[14]_i_3_n_0 ),
        .I3(address_counter0[2]),
        .I4(en_n),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \address_counter[3]_i_1 
       (.I0(state_reg_n_0),
        .I1(address_counter[3]),
        .I2(\address_counter[14]_i_3_n_0 ),
        .I3(address_counter0[3]),
        .I4(en_n),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \address_counter[4]_i_1 
       (.I0(state_reg_n_0),
        .I1(address_counter[4]),
        .I2(\address_counter[14]_i_3_n_0 ),
        .I3(address_counter0[4]),
        .I4(en_n),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \address_counter[5]_i_1 
       (.I0(state_reg_n_0),
        .I1(address_counter[5]),
        .I2(\address_counter[14]_i_3_n_0 ),
        .I3(address_counter0[5]),
        .I4(en_n),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \address_counter[6]_i_1 
       (.I0(state_reg_n_0),
        .I1(address_counter[6]),
        .I2(\address_counter[14]_i_3_n_0 ),
        .I3(address_counter0[6]),
        .I4(en_n),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \address_counter[7]_i_1 
       (.I0(state_reg_n_0),
        .I1(address_counter[7]),
        .I2(\address_counter[14]_i_3_n_0 ),
        .I3(address_counter0[7]),
        .I4(en_n),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \address_counter[8]_i_1 
       (.I0(state_reg_n_0),
        .I1(address_counter[8]),
        .I2(\address_counter[14]_i_3_n_0 ),
        .I3(address_counter0[8]),
        .I4(en_n),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \address_counter[9]_i_1 
       (.I0(state_reg_n_0),
        .I1(address_counter[9]),
        .I2(\address_counter[14]_i_3_n_0 ),
        .I3(address_counter0[9]),
        .I4(en_n),
        .O(p_1_in[9]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_counter_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_1_in[0]),
        .Q(address_counter[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_counter_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_1_in[10]),
        .Q(address_counter[10]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_counter_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_1_in[11]),
        .Q(address_counter[11]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_counter_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_1_in[12]),
        .Q(address_counter[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \address_counter_reg[12]_i_2 
       (.CI(\address_counter_reg[8]_i_2_n_0 ),
        .CO({\address_counter_reg[12]_i_2_n_0 ,\address_counter_reg[12]_i_2_n_1 ,\address_counter_reg[12]_i_2_n_2 ,\address_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(address_counter0[12:9]),
        .S(address_counter[12:9]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_counter_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_1_in[13]),
        .Q(address_counter[13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \address_counter_reg[13]_i_2 
       (.CI(\address_counter_reg[12]_i_2_n_0 ),
        .CO(\NLW_address_counter_reg[13]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_address_counter_reg[13]_i_2_O_UNCONNECTED [3:1],address_counter0[13]}),
        .S({1'b0,1'b0,1'b0,address_counter[13]}));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_counter_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_1_in[14]),
        .Q(address_counter[14]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_counter_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_1_in[1]),
        .Q(address_counter[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_counter_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_1_in[2]),
        .Q(address_counter[2]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_counter_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_1_in[3]),
        .Q(address_counter[3]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_counter_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_1_in[4]),
        .Q(address_counter[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \address_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\address_counter_reg[4]_i_2_n_0 ,\address_counter_reg[4]_i_2_n_1 ,\address_counter_reg[4]_i_2_n_2 ,\address_counter_reg[4]_i_2_n_3 }),
        .CYINIT(address_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(address_counter0[4:1]),
        .S(address_counter[4:1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_counter_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_1_in[5]),
        .Q(address_counter[5]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_counter_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_1_in[6]),
        .Q(address_counter[6]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_counter_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_1_in[7]),
        .Q(address_counter[7]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_counter_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_1_in[8]),
        .Q(address_counter[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \address_counter_reg[8]_i_2 
       (.CI(\address_counter_reg[4]_i_2_n_0 ),
        .CO({\address_counter_reg[8]_i_2_n_0 ,\address_counter_reg[8]_i_2_n_1 ,\address_counter_reg[8]_i_2_n_2 ,\address_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(address_counter0[8:5]),
        .S(address_counter[8:5]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_counter_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_1_in[9]),
        .Q(address_counter[9]));
  LUT5 #(
    .INIT(32'h8080BF80)) 
    \data_reg[0]_i_1 
       (.I0(data_reg[0]),
        .I1(en_n),
        .I2(state_reg_n_0),
        .I3(\data_reg[0]_i_4_n_0 ),
        .I4(address_counter[13]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'h0405505054224430)) 
    \data_reg[0]_i_12 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5C17C557EEDDF6E4)) 
    \data_reg[0]_i_15 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[1]),
        .I3(address_counter[0]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hC3001C82C2E9D7BB)) 
    \data_reg[0]_i_16 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[3]),
        .I5(address_counter[1]),
        .O(\data_reg[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hD31C83D788BF2A22)) 
    \data_reg[0]_i_17 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h83FE41CA33259808)) 
    \data_reg[0]_i_18 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6A619CAC91D32F25)) 
    \data_reg[0]_i_19 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFEF)) 
    \data_reg[0]_i_2 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg_reg[0]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h05767B7B8A89FC0A)) 
    \data_reg[0]_i_20 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h50118B0E924E4406)) 
    \data_reg[0]_i_21 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6777E96A822CBF55)) 
    \data_reg[0]_i_22 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h6B6189F1B6C9224A)) 
    \data_reg[0]_i_23 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[3]),
        .O(\data_reg[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hC39566735177C198)) 
    \data_reg[0]_i_24 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hE8F645429199FB88)) 
    \data_reg[0]_i_25 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h4D3F10CFF85FA098)) 
    \data_reg[0]_i_26 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data_reg[0]_i_3 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg_reg[0]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \data_reg[0]_i_4 
       (.I0(address_counter[11]),
        .I1(\data_reg[0]_i_6_n_0 ),
        .I2(address_counter[9]),
        .I3(\data_reg[0]_i_7_n_0 ),
        .I4(address_counter[10]),
        .I5(address_counter[12]),
        .O(\data_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_reg[0]_i_6 
       (.I0(\data_reg_reg[0]_i_8_n_0 ),
        .I1(\data_reg_reg[0]_i_9_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[0]_i_10_n_0 ),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[0]_i_11_n_0 ),
        .O(\data_reg[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \data_reg[0]_i_7 
       (.I0(address_counter[6]),
        .I1(\data_reg[0]_i_12_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[0]_i_13_n_0 ),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[0]_i_14_n_0 ),
        .O(\data_reg[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080BF8080)) 
    \data_reg[10]_i_1 
       (.I0(data_reg[10]),
        .I1(en_n),
        .I2(state_reg_n_0),
        .I3(address_counter[12]),
        .I4(\data_reg[10]_i_4_n_0 ),
        .I5(address_counter[13]),
        .O(p_2_in[10]));
  LUT2 #(
    .INIT(4'hE)) 
    \data_reg[10]_i_10 
       (.I0(address_counter[2]),
        .I1(address_counter[3]),
        .O(\data_reg[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEA2ABBABBB)) 
    \data_reg[10]_i_15 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[3]),
        .O(\data_reg[10]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFEFFA8FFAAFF)) 
    \data_reg[10]_i_16 
       (.I0(address_counter[5]),
        .I1(address_counter[0]),
        .I2(address_counter[1]),
        .I3(address_counter[4]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[10]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAAABABABFDF5F5F5)) 
    \data_reg[10]_i_17 
       (.I0(address_counter[5]),
        .I1(address_counter[2]),
        .I2(address_counter[3]),
        .I3(address_counter[0]),
        .I4(address_counter[1]),
        .I5(address_counter[4]),
        .O(\data_reg[10]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h1838383800000000)) 
    \data_reg[10]_i_18 
       (.I0(address_counter[2]),
        .I1(address_counter[3]),
        .I2(address_counter[4]),
        .I3(address_counter[0]),
        .I4(address_counter[1]),
        .I5(address_counter[5]),
        .O(\data_reg[10]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h8000000005541554)) 
    \data_reg[10]_i_19 
       (.I0(address_counter[5]),
        .I1(address_counter[1]),
        .I2(address_counter[2]),
        .I3(address_counter[3]),
        .I4(address_counter[0]),
        .I5(address_counter[4]),
        .O(\data_reg[10]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFEF)) 
    \data_reg[10]_i_2 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg[10]_i_5_n_0 ),
        .I3(address_counter[12]),
        .I4(reset_n),
        .O(\data_reg[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000101017F7F7FFF)) 
    \data_reg[10]_i_20 
       (.I0(address_counter[5]),
        .I1(address_counter[2]),
        .I2(address_counter[3]),
        .I3(address_counter[0]),
        .I4(address_counter[1]),
        .I5(address_counter[4]),
        .O(\data_reg[10]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAA800000AAAAA)) 
    \data_reg[10]_i_21 
       (.I0(address_counter[5]),
        .I1(address_counter[0]),
        .I2(address_counter[1]),
        .I3(address_counter[2]),
        .I4(address_counter[3]),
        .I5(address_counter[4]),
        .O(\data_reg[10]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \data_reg[10]_i_22 
       (.I0(address_counter[3]),
        .I1(address_counter[4]),
        .I2(address_counter[5]),
        .O(\data_reg[10]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \data_reg[10]_i_3 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg[10]_i_5_n_0 ),
        .I3(address_counter[12]),
        .I4(reset_n),
        .O(\data_reg[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \data_reg[10]_i_4 
       (.I0(address_counter[10]),
        .I1(\data_reg[10]_i_6_n_0 ),
        .I2(address_counter[8]),
        .I3(address_counter[9]),
        .I4(\data_reg[10]_i_7_n_0 ),
        .I5(address_counter[11]),
        .O(\data_reg[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_reg[10]_i_5 
       (.I0(\data_reg[10]_i_8_n_0 ),
        .I1(address_counter[8]),
        .I2(\data_reg_reg[10]_i_9_n_0 ),
        .I3(address_counter[9]),
        .I4(\data_reg[10]_i_6_n_0 ),
        .I5(address_counter[10]),
        .O(\data_reg[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0057FFFF00570000)) 
    \data_reg[10]_i_6 
       (.I0(address_counter[5]),
        .I1(\data_reg[10]_i_10_n_0 ),
        .I2(address_counter[4]),
        .I3(address_counter[6]),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[10]_i_11_n_0 ),
        .O(\data_reg[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \data_reg[10]_i_7 
       (.I0(\data_reg_reg[10]_i_12_n_0 ),
        .I1(\data_reg_reg[10]_i_13_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[10]_i_14_n_0 ),
        .I4(address_counter[7]),
        .O(\data_reg[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE00FE00000000)) 
    \data_reg[10]_i_8 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[3]),
        .I3(address_counter[6]),
        .I4(\data_reg[10]_i_15_n_0 ),
        .I5(address_counter[7]),
        .O(\data_reg[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFBFBFBF80)) 
    \data_reg[11]_i_1 
       (.I0(data_reg[11]),
        .I1(en_n),
        .I2(state_reg_n_0),
        .I3(address_counter[12]),
        .I4(\data_reg[11]_i_4_n_0 ),
        .I5(address_counter[13]),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'h30FF30FFBBCCBBFF)) 
    \data_reg[11]_i_10 
       (.I0(\data_reg[11]_i_16_n_0 ),
        .I1(address_counter[6]),
        .I2(\data_reg[11]_i_17_n_0 ),
        .I3(address_counter[5]),
        .I4(\data_reg[11]_i_18_n_0 ),
        .I5(address_counter[4]),
        .O(\data_reg[11]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \data_reg[11]_i_11 
       (.I0(address_counter[5]),
        .I1(address_counter[3]),
        .I2(address_counter[2]),
        .I3(address_counter[4]),
        .I4(address_counter[6]),
        .O(\data_reg[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3330303000000004)) 
    \data_reg[11]_i_12 
       (.I0(address_counter[1]),
        .I1(address_counter[6]),
        .I2(address_counter[4]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[5]),
        .O(\data_reg[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFEAA00000000FFFF)) 
    \data_reg[11]_i_13 
       (.I0(address_counter[4]),
        .I1(address_counter[1]),
        .I2(address_counter[2]),
        .I3(address_counter[3]),
        .I4(address_counter[6]),
        .I5(address_counter[5]),
        .O(\data_reg[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFEFEFEEE)) 
    \data_reg[11]_i_15 
       (.I0(address_counter[5]),
        .I1(address_counter[3]),
        .I2(address_counter[2]),
        .I3(address_counter[1]),
        .I4(address_counter[0]),
        .I5(address_counter[4]),
        .O(\data_reg[11]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h007F)) 
    \data_reg[11]_i_16 
       (.I0(address_counter[2]),
        .I1(address_counter[1]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .O(\data_reg[11]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \data_reg[11]_i_17 
       (.I0(address_counter[3]),
        .I1(address_counter[1]),
        .I2(address_counter[2]),
        .I3(address_counter[0]),
        .O(\data_reg[11]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \data_reg[11]_i_18 
       (.I0(address_counter[2]),
        .I1(address_counter[3]),
        .O(\data_reg[11]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \data_reg[11]_i_19 
       (.I0(address_counter[4]),
        .I1(address_counter[3]),
        .I2(address_counter[5]),
        .O(\data_reg[11]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \data_reg[11]_i_2 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg[11]_i_5_n_0 ),
        .I3(address_counter[12]),
        .I4(reset_n),
        .O(\data_reg[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \data_reg[11]_i_3 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg[11]_i_5_n_0 ),
        .I3(address_counter[12]),
        .I4(reset_n),
        .O(\data_reg[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEAA)) 
    \data_reg[11]_i_4 
       (.I0(address_counter[10]),
        .I1(\data_reg_reg[11]_i_6_n_0 ),
        .I2(address_counter[8]),
        .I3(address_counter[9]),
        .I4(\data_reg[11]_i_7_n_0 ),
        .I5(address_counter[11]),
        .O(\data_reg[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE2CCE2)) 
    \data_reg[11]_i_5 
       (.I0(\data_reg[11]_i_8_n_0 ),
        .I1(address_counter[8]),
        .I2(\data_reg_reg[11]_i_9_n_0 ),
        .I3(address_counter[9]),
        .I4(\data_reg_reg[11]_i_6_n_0 ),
        .I5(address_counter[10]),
        .O(\data_reg[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \data_reg[11]_i_7 
       (.I0(\data_reg[11]_i_12_n_0 ),
        .I1(\data_reg[11]_i_13_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[11]_i_14_n_0 ),
        .I4(address_counter[7]),
        .O(\data_reg[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF010001FFFFFFFF)) 
    \data_reg[11]_i_8 
       (.I0(address_counter[5]),
        .I1(address_counter[3]),
        .I2(address_counter[4]),
        .I3(address_counter[6]),
        .I4(\data_reg[11]_i_15_n_0 ),
        .I5(address_counter[7]),
        .O(\data_reg[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080BF8080)) 
    \data_reg[12]_i_1 
       (.I0(data_reg[12]),
        .I1(en_n),
        .I2(state_reg_n_0),
        .I3(address_counter[12]),
        .I4(\data_reg[12]_i_4_n_0 ),
        .I5(address_counter[13]),
        .O(p_2_in[12]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \data_reg[12]_i_10 
       (.I0(address_counter[5]),
        .I1(address_counter[0]),
        .I2(\data_reg[12]_i_14_n_0 ),
        .I3(address_counter[3]),
        .I4(address_counter[4]),
        .I5(address_counter[6]),
        .O(\data_reg[12]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \data_reg[12]_i_11 
       (.I0(address_counter[1]),
        .I1(address_counter[2]),
        .I2(address_counter[3]),
        .O(\data_reg[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \data_reg[12]_i_12 
       (.I0(address_counter[4]),
        .I1(address_counter[3]),
        .I2(address_counter[2]),
        .I3(address_counter[1]),
        .I4(address_counter[0]),
        .I5(address_counter[5]),
        .O(\data_reg[12]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[12]_i_13 
       (.I0(address_counter[2]),
        .I1(address_counter[1]),
        .O(\data_reg[12]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_reg[12]_i_14 
       (.I0(address_counter[2]),
        .I1(address_counter[1]),
        .O(\data_reg[12]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFEF)) 
    \data_reg[12]_i_2 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg[12]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data_reg[12]_i_3 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg[12]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \data_reg[12]_i_4 
       (.I0(address_counter[10]),
        .I1(\data_reg[12]_i_6_n_0 ),
        .I2(address_counter[8]),
        .I3(address_counter[9]),
        .I4(\data_reg[12]_i_7_n_0 ),
        .I5(address_counter[11]),
        .O(\data_reg[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3033300030883088)) 
    \data_reg[12]_i_5 
       (.I0(\data_reg[12]_i_8_n_0 ),
        .I1(address_counter[9]),
        .I2(\data_reg[12]_i_9_n_0 ),
        .I3(address_counter[8]),
        .I4(\data_reg[12]_i_10_n_0 ),
        .I5(address_counter[7]),
        .O(\data_reg[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \data_reg[12]_i_6 
       (.I0(address_counter[6]),
        .I1(address_counter[4]),
        .I2(\data_reg[12]_i_11_n_0 ),
        .I3(address_counter[0]),
        .I4(address_counter[5]),
        .I5(address_counter[7]),
        .O(\data_reg[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \data_reg[12]_i_7 
       (.I0(\data_reg[12]_i_9_n_0 ),
        .I1(address_counter[8]),
        .I2(address_counter[6]),
        .I3(\data_reg[12]_i_12_n_0 ),
        .I4(address_counter[7]),
        .O(\data_reg[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \data_reg[12]_i_8 
       (.I0(address_counter[5]),
        .I1(address_counter[0]),
        .I2(\data_reg[12]_i_13_n_0 ),
        .I3(address_counter[3]),
        .I4(address_counter[4]),
        .I5(address_counter[6]),
        .O(\data_reg[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0111555500000000)) 
    \data_reg[12]_i_9 
       (.I0(address_counter[6]),
        .I1(address_counter[4]),
        .I2(address_counter[2]),
        .I3(address_counter[3]),
        .I4(address_counter[5]),
        .I5(address_counter[7]),
        .O(\data_reg[12]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \data_reg[13]_i_1 
       (.I0(state_reg_n_0),
        .I1(data_reg[13]),
        .I2(en_n),
        .O(p_2_in[13]));
  LUT3 #(
    .INIT(8'h80)) 
    \data_reg[14]_i_1 
       (.I0(state_reg_n_0),
        .I1(data_reg[14]),
        .I2(en_n),
        .O(p_2_in[14]));
  LUT3 #(
    .INIT(8'h80)) 
    \data_reg[15]_i_1 
       (.I0(state_reg_n_0),
        .I1(data_reg[15]),
        .I2(en_n),
        .O(p_2_in[15]));
  LUT5 #(
    .INIT(32'h8080BF80)) 
    \data_reg[1]_i_1 
       (.I0(data_reg[1]),
        .I1(en_n),
        .I2(state_reg_n_0),
        .I3(\data_reg[1]_i_4_n_0 ),
        .I4(address_counter[13]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'h1510513210764555)) 
    \data_reg[1]_i_12 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hE602019B9BB22810)) 
    \data_reg[1]_i_15 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[3]),
        .I5(address_counter[1]),
        .O(\data_reg[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h74D333D048EEB6AF)) 
    \data_reg[1]_i_16 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h8D192E3A99CA1B87)) 
    \data_reg[1]_i_17 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[3]),
        .I5(address_counter[2]),
        .O(\data_reg[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hE6869F36715BDD04)) 
    \data_reg[1]_i_18 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h45948DB0869B5E46)) 
    \data_reg[1]_i_19 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFEF)) 
    \data_reg[1]_i_2 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg_reg[1]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAD0F3DACC5368E85)) 
    \data_reg[1]_i_20 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hCD1B6EE4D40A5F02)) 
    \data_reg[1]_i_21 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h5F2D95CADA0A0562)) 
    \data_reg[1]_i_22 
       (.I0(address_counter[5]),
        .I1(address_counter[0]),
        .I2(address_counter[4]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hDA03D456D9C23A58)) 
    \data_reg[1]_i_23 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h137791A3141DA2E2)) 
    \data_reg[1]_i_24 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[3]),
        .I5(address_counter[2]),
        .O(\data_reg[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h67CA73829DB192CA)) 
    \data_reg[1]_i_25 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[1]),
        .I3(address_counter[0]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h764960D05078DB6C)) 
    \data_reg[1]_i_26 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data_reg[1]_i_3 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg_reg[1]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \data_reg[1]_i_4 
       (.I0(address_counter[11]),
        .I1(\data_reg[1]_i_6_n_0 ),
        .I2(address_counter[9]),
        .I3(\data_reg[1]_i_7_n_0 ),
        .I4(address_counter[10]),
        .I5(address_counter[12]),
        .O(\data_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_reg[1]_i_6 
       (.I0(\data_reg_reg[1]_i_8_n_0 ),
        .I1(\data_reg_reg[1]_i_9_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[1]_i_10_n_0 ),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[1]_i_11_n_0 ),
        .O(\data_reg[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \data_reg[1]_i_7 
       (.I0(address_counter[6]),
        .I1(\data_reg[1]_i_12_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[1]_i_13_n_0 ),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[1]_i_14_n_0 ),
        .O(\data_reg[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8080BF80)) 
    \data_reg[2]_i_1 
       (.I0(data_reg[2]),
        .I1(en_n),
        .I2(state_reg_n_0),
        .I3(\data_reg[2]_i_4_n_0 ),
        .I4(address_counter[13]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h4001543200556723)) 
    \data_reg[2]_i_12 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[3]),
        .I5(address_counter[1]),
        .O(\data_reg[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA5781CC2144A1C42)) 
    \data_reg[2]_i_15 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h76C9296E39C8A404)) 
    \data_reg[2]_i_16 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h7C89306A99CCF5C4)) 
    \data_reg[2]_i_17 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6C1F842440D549A1)) 
    \data_reg[2]_i_18 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[3]),
        .I5(address_counter[2]),
        .O(\data_reg[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hB378A8ABF4338582)) 
    \data_reg[2]_i_19 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFEF)) 
    \data_reg[2]_i_2 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg_reg[2]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h05E836B767BD0CAC)) 
    \data_reg[2]_i_20 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[1]),
        .I3(address_counter[0]),
        .I4(address_counter[3]),
        .I5(address_counter[2]),
        .O(\data_reg[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h20FD2946B9E613A0)) 
    \data_reg[2]_i_21 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h02EFA7421512C560)) 
    \data_reg[2]_i_22 
       (.I0(address_counter[5]),
        .I1(address_counter[0]),
        .I2(address_counter[4]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hA2319068C48F3347)) 
    \data_reg[2]_i_23 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h6C080C5814BF26EA)) 
    \data_reg[2]_i_24 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h64B544A0CC95E783)) 
    \data_reg[2]_i_25 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[3]),
        .I5(address_counter[2]),
        .O(\data_reg[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h2F9A4C10FDB36F3D)) 
    \data_reg[2]_i_26 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data_reg[2]_i_3 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg_reg[2]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \data_reg[2]_i_4 
       (.I0(address_counter[11]),
        .I1(\data_reg[2]_i_6_n_0 ),
        .I2(address_counter[9]),
        .I3(\data_reg[2]_i_7_n_0 ),
        .I4(address_counter[10]),
        .I5(address_counter[12]),
        .O(\data_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_reg[2]_i_6 
       (.I0(\data_reg_reg[2]_i_8_n_0 ),
        .I1(\data_reg_reg[2]_i_9_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[2]_i_10_n_0 ),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[2]_i_11_n_0 ),
        .O(\data_reg[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \data_reg[2]_i_7 
       (.I0(address_counter[6]),
        .I1(\data_reg[2]_i_12_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[2]_i_13_n_0 ),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[2]_i_14_n_0 ),
        .O(\data_reg[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8080BF80)) 
    \data_reg[3]_i_1 
       (.I0(data_reg[3]),
        .I1(en_n),
        .I2(state_reg_n_0),
        .I3(\data_reg[3]_i_4_n_0 ),
        .I4(address_counter[13]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'h4444404003133222)) 
    \data_reg[3]_i_12 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[1]),
        .I3(address_counter[0]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA000DEC4321BC45E)) 
    \data_reg[3]_i_15 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h59950A2DE1DF993B)) 
    \data_reg[3]_i_16 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[3]),
        .O(\data_reg[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hE430B2CCC949D13A)) 
    \data_reg[3]_i_17 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0A0242F5B6397EEA)) 
    \data_reg[3]_i_18 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[3]),
        .I3(address_counter[0]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h8BA4109E3B9EE7A5)) 
    \data_reg[3]_i_19 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFEF)) 
    \data_reg[3]_i_2 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg_reg[3]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAD3D81FA6CA4D9D8)) 
    \data_reg[3]_i_20 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h434F43878F4800F0)) 
    \data_reg[3]_i_21 
       (.I0(address_counter[0]),
        .I1(address_counter[5]),
        .I2(address_counter[4]),
        .I3(address_counter[1]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h38B4927C9A274509)) 
    \data_reg[3]_i_22 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[3]),
        .O(\data_reg[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h865268C9E1F5523B)) 
    \data_reg[3]_i_23 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAC24E41AA8714FC3)) 
    \data_reg[3]_i_24 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[3]),
        .I5(address_counter[2]),
        .O(\data_reg[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h38382F98A7F0BA27)) 
    \data_reg[3]_i_25 
       (.I0(address_counter[5]),
        .I1(address_counter[0]),
        .I2(address_counter[4]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h11F2C96B0E9F2EA0)) 
    \data_reg[3]_i_26 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[3]),
        .I5(address_counter[2]),
        .O(\data_reg[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data_reg[3]_i_3 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg_reg[3]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \data_reg[3]_i_4 
       (.I0(address_counter[11]),
        .I1(\data_reg[3]_i_6_n_0 ),
        .I2(address_counter[9]),
        .I3(\data_reg[3]_i_7_n_0 ),
        .I4(address_counter[10]),
        .I5(address_counter[12]),
        .O(\data_reg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_reg[3]_i_6 
       (.I0(\data_reg_reg[3]_i_8_n_0 ),
        .I1(\data_reg_reg[3]_i_9_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[3]_i_10_n_0 ),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[3]_i_11_n_0 ),
        .O(\data_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \data_reg[3]_i_7 
       (.I0(address_counter[6]),
        .I1(\data_reg[3]_i_12_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[3]_i_13_n_0 ),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[3]_i_14_n_0 ),
        .O(\data_reg[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8080BF80)) 
    \data_reg[4]_i_1 
       (.I0(data_reg[4]),
        .I1(en_n),
        .I2(state_reg_n_0),
        .I3(\data_reg[4]_i_4_n_0 ),
        .I4(address_counter[13]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'h80DC20C67324493F)) 
    \data_reg[4]_i_17 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6FE747324D91D539)) 
    \data_reg[4]_i_18 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9F0EE8D3D3170F57)) 
    \data_reg[4]_i_19 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFEF)) 
    \data_reg[4]_i_2 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg[4]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h592A53ECA3936674)) 
    \data_reg[4]_i_20 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h3437E06A043E1D07)) 
    \data_reg[4]_i_21 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[3]),
        .I5(address_counter[1]),
        .O(\data_reg[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h1B483A2CE99CCD5B)) 
    \data_reg[4]_i_22 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[3]),
        .I5(address_counter[1]),
        .O(\data_reg[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hBFB37B3FFF3C3C7C)) 
    \data_reg[4]_i_23 
       (.I0(address_counter[0]),
        .I1(address_counter[5]),
        .I2(address_counter[3]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[4]),
        .O(\data_reg[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAC03046EB2F4BB55)) 
    \data_reg[4]_i_24 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[3]),
        .I3(address_counter[2]),
        .I4(address_counter[0]),
        .I5(address_counter[1]),
        .O(\data_reg[4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hBAE21E0D705B9573)) 
    \data_reg[4]_i_25 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h64EC39678A53CC58)) 
    \data_reg[4]_i_26 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[3]),
        .I5(address_counter[1]),
        .O(\data_reg[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h2BF4F6F2BED0F8B6)) 
    \data_reg[4]_i_27 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[4]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h41E436C24C1BC104)) 
    \data_reg[4]_i_28 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data_reg[4]_i_3 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg[4]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \data_reg[4]_i_4 
       (.I0(address_counter[11]),
        .I1(\data_reg[4]_i_6_n_0 ),
        .I2(address_counter[9]),
        .I3(\data_reg[4]_i_7_n_0 ),
        .I4(address_counter[10]),
        .I5(address_counter[12]),
        .O(\data_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_reg[4]_i_5 
       (.I0(\data_reg[5]_i_8_n_0 ),
        .I1(\data_reg_reg[4]_i_8_n_0 ),
        .I2(address_counter[9]),
        .I3(\data_reg_reg[4]_i_9_n_0 ),
        .I4(address_counter[8]),
        .I5(\data_reg_reg[4]_i_10_n_0 ),
        .O(\data_reg[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_reg[4]_i_6 
       (.I0(\data_reg_reg[4]_i_11_n_0 ),
        .I1(\data_reg_reg[4]_i_12_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[4]_i_13_n_0 ),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[4]_i_14_n_0 ),
        .O(\data_reg[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \data_reg[4]_i_7 
       (.I0(address_counter[6]),
        .I1(\data_reg[5]_i_16_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[4]_i_15_n_0 ),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[4]_i_16_n_0 ),
        .O(\data_reg[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8080BF80)) 
    \data_reg[5]_i_1 
       (.I0(data_reg[5]),
        .I1(en_n),
        .I2(state_reg_n_0),
        .I3(\data_reg[5]_i_4_n_0 ),
        .I4(address_counter[13]),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'h5555555557567676)) 
    \data_reg[5]_i_16 
       (.I0(address_counter[5]),
        .I1(address_counter[3]),
        .I2(address_counter[2]),
        .I3(address_counter[0]),
        .I4(address_counter[1]),
        .I5(address_counter[4]),
        .O(\data_reg[5]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \data_reg[5]_i_19 
       (.I0(address_counter[2]),
        .I1(address_counter[1]),
        .I2(address_counter[3]),
        .O(\data_reg[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFEF)) 
    \data_reg[5]_i_2 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg[5]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \data_reg[5]_i_20 
       (.I0(address_counter[1]),
        .I1(address_counter[0]),
        .I2(address_counter[2]),
        .I3(address_counter[3]),
        .O(\data_reg[5]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h16E7C1D1B4F5A6AC)) 
    \data_reg[5]_i_21 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[5]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h68F9CA9C99814D03)) 
    \data_reg[5]_i_22 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[5]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h3B7904E718BEDCFE)) 
    \data_reg[5]_i_23 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[5]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h48F1228AB68C41AC)) 
    \data_reg[5]_i_24 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[1]),
        .I3(address_counter[0]),
        .I4(address_counter[3]),
        .I5(address_counter[2]),
        .O(\data_reg[5]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hF6CBB27EC5B68111)) 
    \data_reg[5]_i_25 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[5]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hEC3873B98EC7CF58)) 
    \data_reg[5]_i_26 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[5]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFF3FBF333F3C3C7C)) 
    \data_reg[5]_i_27 
       (.I0(address_counter[0]),
        .I1(address_counter[5]),
        .I2(address_counter[3]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[4]),
        .O(\data_reg[5]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h79D1C948E0243E9F)) 
    \data_reg[5]_i_28 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[3]),
        .I3(address_counter[0]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[5]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h06DFAAA03D3C536C)) 
    \data_reg[5]_i_29 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[5]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data_reg[5]_i_3 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg[5]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h13778AAA75C82315)) 
    \data_reg[5]_i_30 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[3]),
        .I5(address_counter[2]),
        .O(\data_reg[5]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hCDDFD7BD648CEE28)) 
    \data_reg[5]_i_31 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[2]),
        .I3(address_counter[3]),
        .I4(address_counter[0]),
        .I5(address_counter[1]),
        .O(\data_reg[5]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hC9A8FB3B07756CC8)) 
    \data_reg[5]_i_32 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[1]),
        .I3(address_counter[3]),
        .I4(address_counter[0]),
        .I5(address_counter[2]),
        .O(\data_reg[5]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \data_reg[5]_i_4 
       (.I0(address_counter[11]),
        .I1(\data_reg[5]_i_6_n_0 ),
        .I2(address_counter[9]),
        .I3(\data_reg[5]_i_7_n_0 ),
        .I4(address_counter[10]),
        .I5(address_counter[12]),
        .O(\data_reg[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_reg[5]_i_5 
       (.I0(\data_reg[5]_i_8_n_0 ),
        .I1(\data_reg_reg[5]_i_9_n_0 ),
        .I2(address_counter[9]),
        .I3(\data_reg_reg[5]_i_10_n_0 ),
        .I4(address_counter[8]),
        .I5(\data_reg_reg[5]_i_11_n_0 ),
        .O(\data_reg[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_reg[5]_i_6 
       (.I0(\data_reg_reg[5]_i_12_n_0 ),
        .I1(\data_reg_reg[5]_i_13_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[5]_i_14_n_0 ),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[5]_i_15_n_0 ),
        .O(\data_reg[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \data_reg[5]_i_7 
       (.I0(address_counter[6]),
        .I1(\data_reg[5]_i_16_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[5]_i_17_n_0 ),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[5]_i_18_n_0 ),
        .O(\data_reg[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005054540)) 
    \data_reg[5]_i_8 
       (.I0(address_counter[6]),
        .I1(\data_reg[5]_i_19_n_0 ),
        .I2(address_counter[5]),
        .I3(\data_reg[5]_i_20_n_0 ),
        .I4(address_counter[4]),
        .I5(address_counter[7]),
        .O(\data_reg[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[6]_i_1 
       (.I0(data_reg[6]),
        .I1(en_n),
        .I2(state_reg_n_0),
        .I3(\data_reg[6]_i_4_n_0 ),
        .I4(address_counter[13]),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8A9A1A1)) 
    \data_reg[6]_i_16 
       (.I0(address_counter[5]),
        .I1(address_counter[2]),
        .I2(address_counter[3]),
        .I3(address_counter[0]),
        .I4(address_counter[1]),
        .I5(address_counter[4]),
        .O(\data_reg[6]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \data_reg[6]_i_19 
       (.I0(address_counter[1]),
        .I1(address_counter[2]),
        .I2(address_counter[3]),
        .O(\data_reg[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data_reg[6]_i_2 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg[6]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0007)) 
    \data_reg[6]_i_20 
       (.I0(address_counter[1]),
        .I1(address_counter[0]),
        .I2(address_counter[3]),
        .I3(address_counter[2]),
        .O(\data_reg[6]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hEC8F3356DEDE5678)) 
    \data_reg[6]_i_21 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[3]),
        .O(\data_reg[6]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9C2D58947A084149)) 
    \data_reg[6]_i_22 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[3]),
        .I5(address_counter[1]),
        .O(\data_reg[6]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hF89661C3761FF0D2)) 
    \data_reg[6]_i_23 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[3]),
        .I5(address_counter[1]),
        .O(\data_reg[6]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8D243E8EA400CAE9)) 
    \data_reg[6]_i_24 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[6]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h454000DC9809DDAA)) 
    \data_reg[6]_i_25 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[6]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h4159BCDAEFEB9EF5)) 
    \data_reg[6]_i_26 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[6]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C0C0CC0C3C383)) 
    \data_reg[6]_i_27 
       (.I0(address_counter[0]),
        .I1(address_counter[5]),
        .I2(address_counter[3]),
        .I3(address_counter[1]),
        .I4(address_counter[2]),
        .I5(address_counter[4]),
        .O(\data_reg[6]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hECF7C4774CFBDFBA)) 
    \data_reg[6]_i_28 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[6]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h12A56FF208FA3080)) 
    \data_reg[6]_i_29 
       (.I0(address_counter[5]),
        .I1(address_counter[0]),
        .I2(address_counter[4]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[3]),
        .O(\data_reg[6]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \data_reg[6]_i_3 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg[6]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h99999BBFFFFF7464)) 
    \data_reg[6]_i_30 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[1]),
        .I3(address_counter[0]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[6]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hB08AF5F51BFDECAA)) 
    \data_reg[6]_i_31 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[1]),
        .I3(address_counter[3]),
        .I4(address_counter[0]),
        .I5(address_counter[2]),
        .O(\data_reg[6]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h73B54126EFDA9E43)) 
    \data_reg[6]_i_32 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[6]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEAE)) 
    \data_reg[6]_i_4 
       (.I0(address_counter[11]),
        .I1(\data_reg[6]_i_6_n_0 ),
        .I2(address_counter[9]),
        .I3(\data_reg[6]_i_7_n_0 ),
        .I4(address_counter[10]),
        .I5(address_counter[12]),
        .O(\data_reg[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_reg[6]_i_5 
       (.I0(\data_reg[6]_i_8_n_0 ),
        .I1(\data_reg_reg[6]_i_9_n_0 ),
        .I2(address_counter[9]),
        .I3(\data_reg_reg[6]_i_10_n_0 ),
        .I4(address_counter[8]),
        .I5(\data_reg_reg[6]_i_11_n_0 ),
        .O(\data_reg[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_reg[6]_i_6 
       (.I0(\data_reg_reg[6]_i_12_n_0 ),
        .I1(\data_reg_reg[6]_i_13_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[6]_i_14_n_0 ),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[6]_i_15_n_0 ),
        .O(\data_reg[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EFEFFFF0E0E0)) 
    \data_reg[6]_i_7 
       (.I0(address_counter[6]),
        .I1(\data_reg[6]_i_16_n_0 ),
        .I2(address_counter[8]),
        .I3(\data_reg_reg[6]_i_17_n_0 ),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[6]_i_18_n_0 ),
        .O(\data_reg[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAFAEFEA)) 
    \data_reg[6]_i_8 
       (.I0(address_counter[6]),
        .I1(\data_reg[6]_i_19_n_0 ),
        .I2(address_counter[5]),
        .I3(\data_reg[6]_i_20_n_0 ),
        .I4(address_counter[4]),
        .I5(address_counter[7]),
        .O(\data_reg[6]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[7]_i_1 
       (.I0(data_reg[7]),
        .I1(en_n),
        .I2(state_reg_n_0),
        .I3(\data_reg[7]_i_4_n_0 ),
        .O(p_2_in[7]));
  LUT3 #(
    .INIT(8'h80)) 
    \data_reg[7]_i_15 
       (.I0(address_counter[4]),
        .I1(address_counter[3]),
        .I2(address_counter[5]),
        .O(\data_reg[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hC48C0C0C83030333)) 
    \data_reg[7]_i_16 
       (.I0(address_counter[0]),
        .I1(address_counter[5]),
        .I2(address_counter[3]),
        .I3(address_counter[1]),
        .I4(address_counter[2]),
        .I5(address_counter[4]),
        .O(\data_reg[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h66AB266EBB33EFBB)) 
    \data_reg[7]_i_17 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[3]),
        .I5(address_counter[2]),
        .O(\data_reg[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAB6EDC89C8DF9FAA)) 
    \data_reg[7]_i_18 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h16F9E996F64800A7)) 
    \data_reg[7]_i_19 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[7]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_reg[7]_i_2 
       (.I0(\data_reg[7]_i_4_n_0 ),
        .I1(reset_n),
        .O(\data_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h920A44AE6E40AA06)) 
    \data_reg[7]_i_20 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[3]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[0]),
        .O(\data_reg[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hE4189119932AA202)) 
    \data_reg[7]_i_21 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[3]),
        .I5(address_counter[1]),
        .O(\data_reg[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h2B1C94D95D018148)) 
    \data_reg[7]_i_22 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h6F39D8A8B8ECAD7F)) 
    \data_reg[7]_i_23 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[2]),
        .I3(address_counter[0]),
        .I4(address_counter[3]),
        .I5(address_counter[1]),
        .O(\data_reg[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBFA09972C855FE8C)) 
    \data_reg[7]_i_24 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h42AF2FFDF50FC50F)) 
    \data_reg[7]_i_25 
       (.I0(address_counter[5]),
        .I1(address_counter[0]),
        .I2(address_counter[4]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[3]),
        .O(\data_reg[7]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h11FE0000)) 
    \data_reg[7]_i_26 
       (.I0(address_counter[3]),
        .I1(address_counter[2]),
        .I2(address_counter[1]),
        .I3(address_counter[4]),
        .I4(address_counter[5]),
        .O(\data_reg[7]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[7]_i_3 
       (.I0(\data_reg[7]_i_4_n_0 ),
        .I1(reset_n),
        .O(\data_reg[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \data_reg[7]_i_4 
       (.I0(address_counter[12]),
        .I1(\data_reg[7]_i_5_n_0 ),
        .I2(address_counter[11]),
        .I3(address_counter[13]),
        .O(\data_reg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_reg[7]_i_5 
       (.I0(\data_reg_reg[7]_i_6_n_0 ),
        .I1(address_counter[8]),
        .I2(\data_reg_reg[7]_i_7_n_0 ),
        .I3(address_counter[9]),
        .I4(\data_reg_reg[7]_i_8_n_0 ),
        .I5(address_counter[10]),
        .O(\data_reg[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFBFBFBF80)) 
    \data_reg[8]_i_1 
       (.I0(data_reg[8]),
        .I1(en_n),
        .I2(state_reg_n_0),
        .I3(address_counter[12]),
        .I4(\data_reg[8]_i_4_n_0 ),
        .I5(address_counter[13]),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'h38F373C3C3CFC3CF)) 
    \data_reg[8]_i_10 
       (.I0(address_counter[0]),
        .I1(address_counter[5]),
        .I2(address_counter[4]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[3]),
        .O(\data_reg[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCCFBE444BBBA4133)) 
    \data_reg[8]_i_11 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[1]),
        .I4(address_counter[3]),
        .I5(address_counter[2]),
        .O(\data_reg[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFEECEAC1BB99BFCE)) 
    \data_reg[8]_i_12 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0C4CCCCC83030333)) 
    \data_reg[8]_i_15 
       (.I0(address_counter[0]),
        .I1(address_counter[5]),
        .I2(address_counter[3]),
        .I3(address_counter[1]),
        .I4(address_counter[2]),
        .I5(address_counter[4]),
        .O(\data_reg[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FFFFFE000000)) 
    \data_reg[8]_i_16 
       (.I0(address_counter[4]),
        .I1(\data_reg[8]_i_21_n_0 ),
        .I2(address_counter[3]),
        .I3(address_counter[5]),
        .I4(address_counter[6]),
        .I5(\data_reg[8]_i_10_n_0 ),
        .O(\data_reg[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF000FFFF04CFCCCC)) 
    \data_reg[8]_i_19 
       (.I0(address_counter[0]),
        .I1(address_counter[5]),
        .I2(address_counter[1]),
        .I3(address_counter[2]),
        .I4(address_counter[4]),
        .I5(address_counter[3]),
        .O(\data_reg[8]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data_reg[8]_i_2 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg_reg[8]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEF4CBBCDBB9BACBB)) 
    \data_reg[8]_i_20 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[8]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_reg[8]_i_21 
       (.I0(address_counter[2]),
        .I1(address_counter[1]),
        .O(\data_reg[8]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h23AC35C55C73AA3B)) 
    \data_reg[8]_i_22 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[8]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hB69CD27C22088228)) 
    \data_reg[8]_i_23 
       (.I0(address_counter[5]),
        .I1(address_counter[1]),
        .I2(address_counter[2]),
        .I3(address_counter[3]),
        .I4(address_counter[0]),
        .I5(address_counter[4]),
        .O(\data_reg[8]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h47BCBF7F30F0F030)) 
    \data_reg[8]_i_24 
       (.I0(address_counter[0]),
        .I1(address_counter[5]),
        .I2(address_counter[4]),
        .I3(address_counter[1]),
        .I4(address_counter[3]),
        .I5(address_counter[2]),
        .O(\data_reg[8]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h195C98C880995584)) 
    \data_reg[8]_i_25 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[1]),
        .I5(address_counter[2]),
        .O(\data_reg[8]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \data_reg[8]_i_3 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg_reg[8]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEAA)) 
    \data_reg[8]_i_4 
       (.I0(address_counter[10]),
        .I1(\data_reg[8]_i_6_n_0 ),
        .I2(address_counter[8]),
        .I3(address_counter[9]),
        .I4(\data_reg[8]_i_7_n_0 ),
        .I5(address_counter[11]),
        .O(\data_reg[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_reg[8]_i_6 
       (.I0(\data_reg[8]_i_9_n_0 ),
        .I1(\data_reg[8]_i_10_n_0 ),
        .I2(address_counter[7]),
        .I3(\data_reg[8]_i_11_n_0 ),
        .I4(address_counter[6]),
        .I5(\data_reg[8]_i_12_n_0 ),
        .O(\data_reg[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B8BBB8BB)) 
    \data_reg[8]_i_7 
       (.I0(\data_reg_reg[8]_i_13_n_0 ),
        .I1(address_counter[8]),
        .I2(\data_reg_reg[8]_i_14_n_0 ),
        .I3(address_counter[7]),
        .I4(\data_reg[8]_i_15_n_0 ),
        .I5(address_counter[6]),
        .O(\data_reg[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \data_reg[8]_i_8 
       (.I0(\data_reg[8]_i_12_n_0 ),
        .I1(address_counter[6]),
        .I2(\data_reg[8]_i_11_n_0 ),
        .I3(address_counter[7]),
        .I4(\data_reg[8]_i_16_n_0 ),
        .I5(address_counter[8]),
        .O(\data_reg[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \data_reg[8]_i_9 
       (.I0(address_counter[4]),
        .I1(address_counter[1]),
        .I2(address_counter[2]),
        .I3(address_counter[3]),
        .I4(address_counter[5]),
        .O(\data_reg[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080BF8080)) 
    \data_reg[9]_i_1 
       (.I0(data_reg[9]),
        .I1(en_n),
        .I2(state_reg_n_0),
        .I3(address_counter[12]),
        .I4(\data_reg[9]_i_4_n_0 ),
        .I5(address_counter[13]),
        .O(p_2_in[9]));
  LUT6 #(
    .INIT(64'hF333B333300C000C)) 
    \data_reg[9]_i_10 
       (.I0(address_counter[0]),
        .I1(address_counter[5]),
        .I2(address_counter[3]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[4]),
        .O(\data_reg[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h333333337CFCFCCC)) 
    \data_reg[9]_i_14 
       (.I0(address_counter[0]),
        .I1(address_counter[5]),
        .I2(address_counter[3]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[4]),
        .O(\data_reg[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFBBEEAAF6BFA8)) 
    \data_reg[9]_i_15 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[9]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h226626677DD9DD99)) 
    \data_reg[9]_i_16 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[3]),
        .O(\data_reg[9]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h04FFFFFF04FF0000)) 
    \data_reg[9]_i_17 
       (.I0(address_counter[4]),
        .I1(\data_reg[9]_i_22_n_0 ),
        .I2(address_counter[3]),
        .I3(address_counter[5]),
        .I4(address_counter[6]),
        .I5(\data_reg[9]_i_10_n_0 ),
        .O(\data_reg[9]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFEF)) 
    \data_reg[9]_i_2 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg_reg[9]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFFF3333F3B30000)) 
    \data_reg[9]_i_20 
       (.I0(address_counter[0]),
        .I1(address_counter[5]),
        .I2(address_counter[2]),
        .I3(address_counter[1]),
        .I4(address_counter[4]),
        .I5(address_counter[3]),
        .O(\data_reg[9]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAE6EFDEFDD)) 
    \data_reg[9]_i_21 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[3]),
        .O(\data_reg[9]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_reg[9]_i_22 
       (.I0(address_counter[1]),
        .I1(address_counter[2]),
        .O(\data_reg[9]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h22200515577FFBBB)) 
    \data_reg[9]_i_23 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[1]),
        .I3(address_counter[0]),
        .I4(address_counter[2]),
        .I5(address_counter[3]),
        .O(\data_reg[9]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h9CEECE66A2002088)) 
    \data_reg[9]_i_24 
       (.I0(address_counter[5]),
        .I1(address_counter[3]),
        .I2(address_counter[0]),
        .I3(address_counter[2]),
        .I4(address_counter[1]),
        .I5(address_counter[4]),
        .O(\data_reg[9]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFF0FF83FF0F00)) 
    \data_reg[9]_i_25 
       (.I0(address_counter[0]),
        .I1(address_counter[1]),
        .I2(address_counter[2]),
        .I3(address_counter[5]),
        .I4(address_counter[4]),
        .I5(address_counter[3]),
        .O(\data_reg[9]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h1981885598158844)) 
    \data_reg[9]_i_26 
       (.I0(address_counter[5]),
        .I1(address_counter[4]),
        .I2(address_counter[0]),
        .I3(address_counter[3]),
        .I4(address_counter[2]),
        .I5(address_counter[1]),
        .O(\data_reg[9]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data_reg[9]_i_3 
       (.I0(address_counter[13]),
        .I1(address_counter[11]),
        .I2(\data_reg_reg[9]_i_5_n_0 ),
        .I3(address_counter[10]),
        .I4(address_counter[12]),
        .I5(reset_n),
        .O(\data_reg[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \data_reg[9]_i_4 
       (.I0(address_counter[10]),
        .I1(\data_reg[9]_i_6_n_0 ),
        .I2(address_counter[8]),
        .I3(address_counter[9]),
        .I4(\data_reg[9]_i_7_n_0 ),
        .I5(address_counter[11]),
        .O(\data_reg[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFFBFB00000)) 
    \data_reg[9]_i_6 
       (.I0(\data_reg[9]_i_9_n_0 ),
        .I1(address_counter[5]),
        .I2(address_counter[6]),
        .I3(\data_reg[9]_i_10_n_0 ),
        .I4(address_counter[7]),
        .I5(\data_reg_reg[9]_i_11_n_0 ),
        .O(\data_reg[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \data_reg[9]_i_7 
       (.I0(\data_reg_reg[9]_i_12_n_0 ),
        .I1(address_counter[8]),
        .I2(\data_reg_reg[9]_i_13_n_0 ),
        .I3(address_counter[7]),
        .I4(\data_reg[9]_i_14_n_0 ),
        .I5(address_counter[6]),
        .O(\data_reg[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \data_reg[9]_i_8 
       (.I0(\data_reg[9]_i_15_n_0 ),
        .I1(address_counter[6]),
        .I2(\data_reg[9]_i_16_n_0 ),
        .I3(address_counter[7]),
        .I4(\data_reg[9]_i_17_n_0 ),
        .I5(address_counter[8]),
        .O(\data_reg[9]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \data_reg[9]_i_9 
       (.I0(address_counter[3]),
        .I1(address_counter[1]),
        .I2(address_counter[2]),
        .I3(address_counter[4]),
        .O(\data_reg[9]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    data_reg_inferred__0_i_1
       (.I0(\data_reg_reg[12]_P_n_0 ),
        .I1(\data_reg_reg[12]_LDC_n_0 ),
        .I2(\data_reg_reg[12]_C_n_0 ),
        .O(data_reg[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_reg_inferred__0_i_10
       (.I0(\data_reg_reg[3]_P_n_0 ),
        .I1(\data_reg_reg[3]_LDC_n_0 ),
        .I2(\data_reg_reg[3]_C_n_0 ),
        .O(data_reg[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_reg_inferred__0_i_11
       (.I0(\data_reg_reg[2]_P_n_0 ),
        .I1(\data_reg_reg[2]_LDC_n_0 ),
        .I2(\data_reg_reg[2]_C_n_0 ),
        .O(data_reg[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_reg_inferred__0_i_12
       (.I0(\data_reg_reg[1]_P_n_0 ),
        .I1(\data_reg_reg[1]_LDC_n_0 ),
        .I2(\data_reg_reg[1]_C_n_0 ),
        .O(data_reg[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_reg_inferred__0_i_13
       (.I0(\data_reg_reg[0]_P_n_0 ),
        .I1(\data_reg_reg[0]_LDC_n_0 ),
        .I2(\data_reg_reg[0]_C_n_0 ),
        .O(data_reg[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_reg_inferred__0_i_2
       (.I0(\data_reg_reg[11]_P_n_0 ),
        .I1(\data_reg_reg[11]_LDC_n_0 ),
        .I2(\data_reg_reg[11]_C_n_0 ),
        .O(data_reg[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_reg_inferred__0_i_3
       (.I0(\data_reg_reg[10]_P_n_0 ),
        .I1(\data_reg_reg[10]_LDC_n_0 ),
        .I2(\data_reg_reg[10]_C_n_0 ),
        .O(data_reg[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_reg_inferred__0_i_4
       (.I0(\data_reg_reg[9]_P_n_0 ),
        .I1(\data_reg_reg[9]_LDC_n_0 ),
        .I2(\data_reg_reg[9]_C_n_0 ),
        .O(data_reg[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_reg_inferred__0_i_5
       (.I0(\data_reg_reg[8]_P_n_0 ),
        .I1(\data_reg_reg[8]_LDC_n_0 ),
        .I2(\data_reg_reg[8]_C_n_0 ),
        .O(data_reg[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_reg_inferred__0_i_6
       (.I0(\data_reg_reg[7]_P_n_0 ),
        .I1(\data_reg_reg[7]_LDC_n_0 ),
        .I2(\data_reg_reg[7]_C_n_0 ),
        .O(data_reg[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_reg_inferred__0_i_7
       (.I0(\data_reg_reg[6]_P_n_0 ),
        .I1(\data_reg_reg[6]_LDC_n_0 ),
        .I2(\data_reg_reg[6]_C_n_0 ),
        .O(data_reg[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_reg_inferred__0_i_8
       (.I0(\data_reg_reg[5]_P_n_0 ),
        .I1(\data_reg_reg[5]_LDC_n_0 ),
        .I2(\data_reg_reg[5]_C_n_0 ),
        .O(data_reg[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_reg_inferred__0_i_9
       (.I0(\data_reg_reg[4]_P_n_0 ),
        .I1(\data_reg_reg[4]_LDC_n_0 ),
        .I2(\data_reg_reg[4]_C_n_0 ),
        .O(data_reg[4]));
  (* KEEP = "yes" *) 
  FDCP #(
    .INIT(1'b0)) 
    \data_reg_reg[0] 
       (.C(sys_clk),
        .CLR(\data_reg[0]_i_2_n_0 ),
        .D(p_2_in[0]),
        .PRE(\data_reg[0]_i_3_n_0 ),
        .Q(\NLW_data_reg_reg[0]_Q_UNCONNECTED ));
  FDCE \data_reg_reg[0]_C 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\data_reg[0]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(\data_reg_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[0]_LDC 
       (.CLR(\data_reg[0]_i_2_n_0 ),
        .D(1'b1),
        .G(\data_reg[0]_i_3_n_0 ),
        .GE(1'b1),
        .Q(\data_reg_reg[0]_LDC_n_0 ));
  FDPE \data_reg_reg[0]_P 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_2_in[0]),
        .PRE(\data_reg[0]_i_3_n_0 ),
        .Q(\data_reg_reg[0]_P_n_0 ));
  MUXF7 \data_reg_reg[0]_i_10 
       (.I0(\data_reg[0]_i_19_n_0 ),
        .I1(\data_reg[0]_i_20_n_0 ),
        .O(\data_reg_reg[0]_i_10_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[0]_i_11 
       (.I0(\data_reg[0]_i_21_n_0 ),
        .I1(\data_reg[0]_i_22_n_0 ),
        .O(\data_reg_reg[0]_i_11_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[0]_i_13 
       (.I0(\data_reg[0]_i_23_n_0 ),
        .I1(\data_reg[0]_i_24_n_0 ),
        .O(\data_reg_reg[0]_i_13_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[0]_i_14 
       (.I0(\data_reg[0]_i_25_n_0 ),
        .I1(\data_reg[0]_i_26_n_0 ),
        .O(\data_reg_reg[0]_i_14_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[0]_i_5 
       (.I0(\data_reg[0]_i_6_n_0 ),
        .I1(\data_reg[0]_i_7_n_0 ),
        .O(\data_reg_reg[0]_i_5_n_0 ),
        .S(address_counter[9]));
  MUXF7 \data_reg_reg[0]_i_8 
       (.I0(\data_reg[0]_i_15_n_0 ),
        .I1(\data_reg[0]_i_16_n_0 ),
        .O(\data_reg_reg[0]_i_8_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[0]_i_9 
       (.I0(\data_reg[0]_i_17_n_0 ),
        .I1(\data_reg[0]_i_18_n_0 ),
        .O(\data_reg_reg[0]_i_9_n_0 ),
        .S(address_counter[6]));
  (* KEEP = "yes" *) 
  FDCP #(
    .INIT(1'b0)) 
    \data_reg_reg[10] 
       (.C(sys_clk),
        .CLR(\data_reg[10]_i_2_n_0 ),
        .D(p_2_in[10]),
        .PRE(\data_reg[10]_i_3_n_0 ),
        .Q(\NLW_data_reg_reg[10]_Q_UNCONNECTED ));
  FDCE \data_reg_reg[10]_C 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\data_reg[10]_i_2_n_0 ),
        .D(p_2_in[10]),
        .Q(\data_reg_reg[10]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[10]_LDC 
       (.CLR(\data_reg[10]_i_2_n_0 ),
        .D(1'b1),
        .G(\data_reg[10]_i_3_n_0 ),
        .GE(1'b1),
        .Q(\data_reg_reg[10]_LDC_n_0 ));
  FDPE \data_reg_reg[10]_P 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_2_in[10]),
        .PRE(\data_reg[10]_i_3_n_0 ),
        .Q(\data_reg_reg[10]_P_n_0 ));
  MUXF7 \data_reg_reg[10]_i_11 
       (.I0(\data_reg[10]_i_16_n_0 ),
        .I1(\data_reg[10]_i_17_n_0 ),
        .O(\data_reg_reg[10]_i_11_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[10]_i_12 
       (.I0(\data_reg[10]_i_18_n_0 ),
        .I1(\data_reg[10]_i_19_n_0 ),
        .O(\data_reg_reg[10]_i_12_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[10]_i_13 
       (.I0(\data_reg[10]_i_20_n_0 ),
        .I1(\data_reg[10]_i_21_n_0 ),
        .O(\data_reg_reg[10]_i_13_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[10]_i_14 
       (.I0(\data_reg[10]_i_22_n_0 ),
        .I1(\data_reg[10]_i_15_n_0 ),
        .O(\data_reg_reg[10]_i_14_n_0 ),
        .S(address_counter[6]));
  MUXF8 \data_reg_reg[10]_i_9 
       (.I0(\data_reg_reg[10]_i_13_n_0 ),
        .I1(\data_reg_reg[10]_i_12_n_0 ),
        .O(\data_reg_reg[10]_i_9_n_0 ),
        .S(address_counter[7]));
  (* KEEP = "yes" *) 
  FDCP #(
    .INIT(1'b0)) 
    \data_reg_reg[11] 
       (.C(sys_clk),
        .CLR(\data_reg[11]_i_2_n_0 ),
        .D(p_2_in[11]),
        .PRE(\data_reg[11]_i_3_n_0 ),
        .Q(\NLW_data_reg_reg[11]_Q_UNCONNECTED ));
  FDCE \data_reg_reg[11]_C 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\data_reg[11]_i_2_n_0 ),
        .D(p_2_in[11]),
        .Q(\data_reg_reg[11]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[11]_LDC 
       (.CLR(\data_reg[11]_i_2_n_0 ),
        .D(1'b1),
        .G(\data_reg[11]_i_3_n_0 ),
        .GE(1'b1),
        .Q(\data_reg_reg[11]_LDC_n_0 ));
  FDPE \data_reg_reg[11]_P 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_2_in[11]),
        .PRE(\data_reg[11]_i_3_n_0 ),
        .Q(\data_reg_reg[11]_P_n_0 ));
  MUXF7 \data_reg_reg[11]_i_14 
       (.I0(\data_reg[11]_i_19_n_0 ),
        .I1(\data_reg[11]_i_15_n_0 ),
        .O(\data_reg_reg[11]_i_14_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[11]_i_6 
       (.I0(\data_reg[11]_i_10_n_0 ),
        .I1(\data_reg[11]_i_11_n_0 ),
        .O(\data_reg_reg[11]_i_6_n_0 ),
        .S(address_counter[7]));
  MUXF7 \data_reg_reg[11]_i_9 
       (.I0(\data_reg[11]_i_13_n_0 ),
        .I1(\data_reg[11]_i_12_n_0 ),
        .O(\data_reg_reg[11]_i_9_n_0 ),
        .S(address_counter[7]));
  (* KEEP = "yes" *) 
  FDCP #(
    .INIT(1'b0)) 
    \data_reg_reg[12] 
       (.C(sys_clk),
        .CLR(\data_reg[12]_i_2_n_0 ),
        .D(p_2_in[12]),
        .PRE(\data_reg[12]_i_3_n_0 ),
        .Q(\NLW_data_reg_reg[12]_Q_UNCONNECTED ));
  FDCE \data_reg_reg[12]_C 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\data_reg[12]_i_2_n_0 ),
        .D(p_2_in[12]),
        .Q(\data_reg_reg[12]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[12]_LDC 
       (.CLR(\data_reg[12]_i_2_n_0 ),
        .D(1'b1),
        .G(\data_reg[12]_i_3_n_0 ),
        .GE(1'b1),
        .Q(\data_reg_reg[12]_LDC_n_0 ));
  FDPE \data_reg_reg[12]_P 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_2_in[12]),
        .PRE(\data_reg[12]_i_3_n_0 ),
        .Q(\data_reg_reg[12]_P_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_2_in[13]),
        .Q(data_reg[13]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_2_in[14]),
        .Q(data_reg[14]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(p_2_in[15]),
        .Q(data_reg[15]));
  (* KEEP = "yes" *) 
  FDCP #(
    .INIT(1'b0)) 
    \data_reg_reg[1] 
       (.C(sys_clk),
        .CLR(\data_reg[1]_i_2_n_0 ),
        .D(p_2_in[1]),
        .PRE(\data_reg[1]_i_3_n_0 ),
        .Q(\NLW_data_reg_reg[1]_Q_UNCONNECTED ));
  FDCE \data_reg_reg[1]_C 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\data_reg[1]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(\data_reg_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[1]_LDC 
       (.CLR(\data_reg[1]_i_2_n_0 ),
        .D(1'b1),
        .G(\data_reg[1]_i_3_n_0 ),
        .GE(1'b1),
        .Q(\data_reg_reg[1]_LDC_n_0 ));
  FDPE \data_reg_reg[1]_P 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_2_in[1]),
        .PRE(\data_reg[1]_i_3_n_0 ),
        .Q(\data_reg_reg[1]_P_n_0 ));
  MUXF7 \data_reg_reg[1]_i_10 
       (.I0(\data_reg[1]_i_19_n_0 ),
        .I1(\data_reg[1]_i_20_n_0 ),
        .O(\data_reg_reg[1]_i_10_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[1]_i_11 
       (.I0(\data_reg[1]_i_21_n_0 ),
        .I1(\data_reg[1]_i_22_n_0 ),
        .O(\data_reg_reg[1]_i_11_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[1]_i_13 
       (.I0(\data_reg[1]_i_23_n_0 ),
        .I1(\data_reg[1]_i_24_n_0 ),
        .O(\data_reg_reg[1]_i_13_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[1]_i_14 
       (.I0(\data_reg[1]_i_25_n_0 ),
        .I1(\data_reg[1]_i_26_n_0 ),
        .O(\data_reg_reg[1]_i_14_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[1]_i_5 
       (.I0(\data_reg[1]_i_6_n_0 ),
        .I1(\data_reg[1]_i_7_n_0 ),
        .O(\data_reg_reg[1]_i_5_n_0 ),
        .S(address_counter[9]));
  MUXF7 \data_reg_reg[1]_i_8 
       (.I0(\data_reg[1]_i_15_n_0 ),
        .I1(\data_reg[1]_i_16_n_0 ),
        .O(\data_reg_reg[1]_i_8_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[1]_i_9 
       (.I0(\data_reg[1]_i_17_n_0 ),
        .I1(\data_reg[1]_i_18_n_0 ),
        .O(\data_reg_reg[1]_i_9_n_0 ),
        .S(address_counter[6]));
  (* KEEP = "yes" *) 
  FDCP #(
    .INIT(1'b0)) 
    \data_reg_reg[2] 
       (.C(sys_clk),
        .CLR(\data_reg[2]_i_2_n_0 ),
        .D(p_2_in[2]),
        .PRE(\data_reg[2]_i_3_n_0 ),
        .Q(\NLW_data_reg_reg[2]_Q_UNCONNECTED ));
  FDCE \data_reg_reg[2]_C 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\data_reg[2]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(\data_reg_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[2]_LDC 
       (.CLR(\data_reg[2]_i_2_n_0 ),
        .D(1'b1),
        .G(\data_reg[2]_i_3_n_0 ),
        .GE(1'b1),
        .Q(\data_reg_reg[2]_LDC_n_0 ));
  FDPE \data_reg_reg[2]_P 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_2_in[2]),
        .PRE(\data_reg[2]_i_3_n_0 ),
        .Q(\data_reg_reg[2]_P_n_0 ));
  MUXF7 \data_reg_reg[2]_i_10 
       (.I0(\data_reg[2]_i_19_n_0 ),
        .I1(\data_reg[2]_i_20_n_0 ),
        .O(\data_reg_reg[2]_i_10_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[2]_i_11 
       (.I0(\data_reg[2]_i_21_n_0 ),
        .I1(\data_reg[2]_i_22_n_0 ),
        .O(\data_reg_reg[2]_i_11_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[2]_i_13 
       (.I0(\data_reg[2]_i_23_n_0 ),
        .I1(\data_reg[2]_i_24_n_0 ),
        .O(\data_reg_reg[2]_i_13_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[2]_i_14 
       (.I0(\data_reg[2]_i_25_n_0 ),
        .I1(\data_reg[2]_i_26_n_0 ),
        .O(\data_reg_reg[2]_i_14_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[2]_i_5 
       (.I0(\data_reg[2]_i_6_n_0 ),
        .I1(\data_reg[2]_i_7_n_0 ),
        .O(\data_reg_reg[2]_i_5_n_0 ),
        .S(address_counter[9]));
  MUXF7 \data_reg_reg[2]_i_8 
       (.I0(\data_reg[2]_i_15_n_0 ),
        .I1(\data_reg[2]_i_16_n_0 ),
        .O(\data_reg_reg[2]_i_8_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[2]_i_9 
       (.I0(\data_reg[2]_i_17_n_0 ),
        .I1(\data_reg[2]_i_18_n_0 ),
        .O(\data_reg_reg[2]_i_9_n_0 ),
        .S(address_counter[6]));
  (* KEEP = "yes" *) 
  FDCP #(
    .INIT(1'b0)) 
    \data_reg_reg[3] 
       (.C(sys_clk),
        .CLR(\data_reg[3]_i_2_n_0 ),
        .D(p_2_in[3]),
        .PRE(\data_reg[3]_i_3_n_0 ),
        .Q(\NLW_data_reg_reg[3]_Q_UNCONNECTED ));
  FDCE \data_reg_reg[3]_C 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\data_reg[3]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(\data_reg_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[3]_LDC 
       (.CLR(\data_reg[3]_i_2_n_0 ),
        .D(1'b1),
        .G(\data_reg[3]_i_3_n_0 ),
        .GE(1'b1),
        .Q(\data_reg_reg[3]_LDC_n_0 ));
  FDPE \data_reg_reg[3]_P 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_2_in[3]),
        .PRE(\data_reg[3]_i_3_n_0 ),
        .Q(\data_reg_reg[3]_P_n_0 ));
  MUXF7 \data_reg_reg[3]_i_10 
       (.I0(\data_reg[3]_i_19_n_0 ),
        .I1(\data_reg[3]_i_20_n_0 ),
        .O(\data_reg_reg[3]_i_10_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[3]_i_11 
       (.I0(\data_reg[3]_i_21_n_0 ),
        .I1(\data_reg[3]_i_22_n_0 ),
        .O(\data_reg_reg[3]_i_11_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[3]_i_13 
       (.I0(\data_reg[3]_i_23_n_0 ),
        .I1(\data_reg[3]_i_24_n_0 ),
        .O(\data_reg_reg[3]_i_13_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[3]_i_14 
       (.I0(\data_reg[3]_i_25_n_0 ),
        .I1(\data_reg[3]_i_26_n_0 ),
        .O(\data_reg_reg[3]_i_14_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[3]_i_5 
       (.I0(\data_reg[3]_i_6_n_0 ),
        .I1(\data_reg[3]_i_7_n_0 ),
        .O(\data_reg_reg[3]_i_5_n_0 ),
        .S(address_counter[9]));
  MUXF7 \data_reg_reg[3]_i_8 
       (.I0(\data_reg[3]_i_15_n_0 ),
        .I1(\data_reg[3]_i_16_n_0 ),
        .O(\data_reg_reg[3]_i_8_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[3]_i_9 
       (.I0(\data_reg[3]_i_17_n_0 ),
        .I1(\data_reg[3]_i_18_n_0 ),
        .O(\data_reg_reg[3]_i_9_n_0 ),
        .S(address_counter[6]));
  (* KEEP = "yes" *) 
  FDCP #(
    .INIT(1'b0)) 
    \data_reg_reg[4] 
       (.C(sys_clk),
        .CLR(\data_reg[4]_i_2_n_0 ),
        .D(p_2_in[4]),
        .PRE(\data_reg[4]_i_3_n_0 ),
        .Q(\NLW_data_reg_reg[4]_Q_UNCONNECTED ));
  FDCE \data_reg_reg[4]_C 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\data_reg[4]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(\data_reg_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[4]_LDC 
       (.CLR(\data_reg[4]_i_2_n_0 ),
        .D(1'b1),
        .G(\data_reg[4]_i_3_n_0 ),
        .GE(1'b1),
        .Q(\data_reg_reg[4]_LDC_n_0 ));
  FDPE \data_reg_reg[4]_P 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_2_in[4]),
        .PRE(\data_reg[4]_i_3_n_0 ),
        .Q(\data_reg_reg[4]_P_n_0 ));
  MUXF8 \data_reg_reg[4]_i_10 
       (.I0(\data_reg_reg[4]_i_14_n_0 ),
        .I1(\data_reg_reg[4]_i_13_n_0 ),
        .O(\data_reg_reg[4]_i_10_n_0 ),
        .S(address_counter[7]));
  MUXF7 \data_reg_reg[4]_i_11 
       (.I0(\data_reg[4]_i_17_n_0 ),
        .I1(\data_reg[4]_i_18_n_0 ),
        .O(\data_reg_reg[4]_i_11_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[4]_i_12 
       (.I0(\data_reg[4]_i_19_n_0 ),
        .I1(\data_reg[4]_i_20_n_0 ),
        .O(\data_reg_reg[4]_i_12_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[4]_i_13 
       (.I0(\data_reg[4]_i_21_n_0 ),
        .I1(\data_reg[4]_i_22_n_0 ),
        .O(\data_reg_reg[4]_i_13_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[4]_i_14 
       (.I0(\data_reg[4]_i_23_n_0 ),
        .I1(\data_reg[4]_i_24_n_0 ),
        .O(\data_reg_reg[4]_i_14_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[4]_i_15 
       (.I0(\data_reg[4]_i_25_n_0 ),
        .I1(\data_reg[4]_i_26_n_0 ),
        .O(\data_reg_reg[4]_i_15_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[4]_i_16 
       (.I0(\data_reg[4]_i_27_n_0 ),
        .I1(\data_reg[4]_i_28_n_0 ),
        .O(\data_reg_reg[4]_i_16_n_0 ),
        .S(address_counter[6]));
  MUXF8 \data_reg_reg[4]_i_8 
       (.I0(\data_reg_reg[4]_i_16_n_0 ),
        .I1(\data_reg_reg[4]_i_15_n_0 ),
        .O(\data_reg_reg[4]_i_8_n_0 ),
        .S(address_counter[7]));
  MUXF8 \data_reg_reg[4]_i_9 
       (.I0(\data_reg_reg[4]_i_12_n_0 ),
        .I1(\data_reg_reg[4]_i_11_n_0 ),
        .O(\data_reg_reg[4]_i_9_n_0 ),
        .S(address_counter[7]));
  (* KEEP = "yes" *) 
  FDCP #(
    .INIT(1'b0)) 
    \data_reg_reg[5] 
       (.C(sys_clk),
        .CLR(\data_reg[5]_i_2_n_0 ),
        .D(p_2_in[5]),
        .PRE(\data_reg[5]_i_3_n_0 ),
        .Q(\NLW_data_reg_reg[5]_Q_UNCONNECTED ));
  FDCE \data_reg_reg[5]_C 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\data_reg[5]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(\data_reg_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[5]_LDC 
       (.CLR(\data_reg[5]_i_2_n_0 ),
        .D(1'b1),
        .G(\data_reg[5]_i_3_n_0 ),
        .GE(1'b1),
        .Q(\data_reg_reg[5]_LDC_n_0 ));
  FDPE \data_reg_reg[5]_P 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_2_in[5]),
        .PRE(\data_reg[5]_i_3_n_0 ),
        .Q(\data_reg_reg[5]_P_n_0 ));
  MUXF8 \data_reg_reg[5]_i_10 
       (.I0(\data_reg_reg[5]_i_13_n_0 ),
        .I1(\data_reg_reg[5]_i_12_n_0 ),
        .O(\data_reg_reg[5]_i_10_n_0 ),
        .S(address_counter[7]));
  MUXF8 \data_reg_reg[5]_i_11 
       (.I0(\data_reg_reg[5]_i_15_n_0 ),
        .I1(\data_reg_reg[5]_i_14_n_0 ),
        .O(\data_reg_reg[5]_i_11_n_0 ),
        .S(address_counter[7]));
  MUXF7 \data_reg_reg[5]_i_12 
       (.I0(\data_reg[5]_i_21_n_0 ),
        .I1(\data_reg[5]_i_22_n_0 ),
        .O(\data_reg_reg[5]_i_12_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[5]_i_13 
       (.I0(\data_reg[5]_i_23_n_0 ),
        .I1(\data_reg[5]_i_24_n_0 ),
        .O(\data_reg_reg[5]_i_13_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[5]_i_14 
       (.I0(\data_reg[5]_i_25_n_0 ),
        .I1(\data_reg[5]_i_26_n_0 ),
        .O(\data_reg_reg[5]_i_14_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[5]_i_15 
       (.I0(\data_reg[5]_i_27_n_0 ),
        .I1(\data_reg[5]_i_28_n_0 ),
        .O(\data_reg_reg[5]_i_15_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[5]_i_17 
       (.I0(\data_reg[5]_i_29_n_0 ),
        .I1(\data_reg[5]_i_30_n_0 ),
        .O(\data_reg_reg[5]_i_17_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[5]_i_18 
       (.I0(\data_reg[5]_i_31_n_0 ),
        .I1(\data_reg[5]_i_32_n_0 ),
        .O(\data_reg_reg[5]_i_18_n_0 ),
        .S(address_counter[6]));
  MUXF8 \data_reg_reg[5]_i_9 
       (.I0(\data_reg_reg[5]_i_18_n_0 ),
        .I1(\data_reg_reg[5]_i_17_n_0 ),
        .O(\data_reg_reg[5]_i_9_n_0 ),
        .S(address_counter[7]));
  (* KEEP = "yes" *) 
  FDCP #(
    .INIT(1'b0)) 
    \data_reg_reg[6] 
       (.C(sys_clk),
        .CLR(\data_reg[6]_i_2_n_0 ),
        .D(p_2_in[6]),
        .PRE(\data_reg[6]_i_3_n_0 ),
        .Q(\NLW_data_reg_reg[6]_Q_UNCONNECTED ));
  FDCE \data_reg_reg[6]_C 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\data_reg[6]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(\data_reg_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[6]_LDC 
       (.CLR(\data_reg[6]_i_2_n_0 ),
        .D(1'b1),
        .G(\data_reg[6]_i_3_n_0 ),
        .GE(1'b1),
        .Q(\data_reg_reg[6]_LDC_n_0 ));
  FDPE \data_reg_reg[6]_P 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_2_in[6]),
        .PRE(\data_reg[6]_i_3_n_0 ),
        .Q(\data_reg_reg[6]_P_n_0 ));
  MUXF8 \data_reg_reg[6]_i_10 
       (.I0(\data_reg_reg[6]_i_13_n_0 ),
        .I1(\data_reg_reg[6]_i_12_n_0 ),
        .O(\data_reg_reg[6]_i_10_n_0 ),
        .S(address_counter[7]));
  MUXF8 \data_reg_reg[6]_i_11 
       (.I0(\data_reg_reg[6]_i_15_n_0 ),
        .I1(\data_reg_reg[6]_i_14_n_0 ),
        .O(\data_reg_reg[6]_i_11_n_0 ),
        .S(address_counter[7]));
  MUXF7 \data_reg_reg[6]_i_12 
       (.I0(\data_reg[6]_i_21_n_0 ),
        .I1(\data_reg[6]_i_22_n_0 ),
        .O(\data_reg_reg[6]_i_12_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[6]_i_13 
       (.I0(\data_reg[6]_i_23_n_0 ),
        .I1(\data_reg[6]_i_24_n_0 ),
        .O(\data_reg_reg[6]_i_13_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[6]_i_14 
       (.I0(\data_reg[6]_i_25_n_0 ),
        .I1(\data_reg[6]_i_26_n_0 ),
        .O(\data_reg_reg[6]_i_14_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[6]_i_15 
       (.I0(\data_reg[6]_i_27_n_0 ),
        .I1(\data_reg[6]_i_28_n_0 ),
        .O(\data_reg_reg[6]_i_15_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[6]_i_17 
       (.I0(\data_reg[6]_i_29_n_0 ),
        .I1(\data_reg[6]_i_30_n_0 ),
        .O(\data_reg_reg[6]_i_17_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[6]_i_18 
       (.I0(\data_reg[6]_i_31_n_0 ),
        .I1(\data_reg[6]_i_32_n_0 ),
        .O(\data_reg_reg[6]_i_18_n_0 ),
        .S(address_counter[6]));
  MUXF8 \data_reg_reg[6]_i_9 
       (.I0(\data_reg_reg[6]_i_18_n_0 ),
        .I1(\data_reg_reg[6]_i_17_n_0 ),
        .O(\data_reg_reg[6]_i_9_n_0 ),
        .S(address_counter[7]));
  (* KEEP = "yes" *) 
  FDCP #(
    .INIT(1'b0)) 
    \data_reg_reg[7] 
       (.C(sys_clk),
        .CLR(\data_reg[7]_i_2_n_0 ),
        .D(p_2_in[7]),
        .PRE(\data_reg[7]_i_3_n_0 ),
        .Q(\NLW_data_reg_reg[7]_Q_UNCONNECTED ));
  FDCE \data_reg_reg[7]_C 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\data_reg[7]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(\data_reg_reg[7]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[7]_LDC 
       (.CLR(\data_reg[7]_i_2_n_0 ),
        .D(1'b1),
        .G(\data_reg[7]_i_3_n_0 ),
        .GE(1'b1),
        .Q(\data_reg_reg[7]_LDC_n_0 ));
  FDPE \data_reg_reg[7]_P 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_2_in[7]),
        .PRE(\data_reg[7]_i_3_n_0 ),
        .Q(\data_reg_reg[7]_P_n_0 ));
  MUXF7 \data_reg_reg[7]_i_10 
       (.I0(\data_reg[7]_i_17_n_0 ),
        .I1(\data_reg[7]_i_18_n_0 ),
        .O(\data_reg_reg[7]_i_10_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[7]_i_11 
       (.I0(\data_reg[7]_i_19_n_0 ),
        .I1(\data_reg[7]_i_20_n_0 ),
        .O(\data_reg_reg[7]_i_11_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[7]_i_12 
       (.I0(\data_reg[7]_i_21_n_0 ),
        .I1(\data_reg[7]_i_22_n_0 ),
        .O(\data_reg_reg[7]_i_12_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[7]_i_13 
       (.I0(\data_reg[7]_i_23_n_0 ),
        .I1(\data_reg[7]_i_24_n_0 ),
        .O(\data_reg_reg[7]_i_13_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[7]_i_14 
       (.I0(\data_reg[7]_i_25_n_0 ),
        .I1(\data_reg[7]_i_26_n_0 ),
        .O(\data_reg_reg[7]_i_14_n_0 ),
        .S(address_counter[6]));
  MUXF8 \data_reg_reg[7]_i_6 
       (.I0(\data_reg_reg[7]_i_9_n_0 ),
        .I1(\data_reg_reg[7]_i_10_n_0 ),
        .O(\data_reg_reg[7]_i_6_n_0 ),
        .S(address_counter[7]));
  MUXF8 \data_reg_reg[7]_i_7 
       (.I0(\data_reg_reg[7]_i_11_n_0 ),
        .I1(\data_reg_reg[7]_i_12_n_0 ),
        .O(\data_reg_reg[7]_i_7_n_0 ),
        .S(address_counter[7]));
  MUXF8 \data_reg_reg[7]_i_8 
       (.I0(\data_reg_reg[7]_i_13_n_0 ),
        .I1(\data_reg_reg[7]_i_14_n_0 ),
        .O(\data_reg_reg[7]_i_8_n_0 ),
        .S(address_counter[7]));
  MUXF7 \data_reg_reg[7]_i_9 
       (.I0(\data_reg[7]_i_15_n_0 ),
        .I1(\data_reg[7]_i_16_n_0 ),
        .O(\data_reg_reg[7]_i_9_n_0 ),
        .S(address_counter[6]));
  (* KEEP = "yes" *) 
  FDCP #(
    .INIT(1'b0)) 
    \data_reg_reg[8] 
       (.C(sys_clk),
        .CLR(\data_reg[8]_i_2_n_0 ),
        .D(p_2_in[8]),
        .PRE(\data_reg[8]_i_3_n_0 ),
        .Q(\NLW_data_reg_reg[8]_Q_UNCONNECTED ));
  FDCE \data_reg_reg[8]_C 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\data_reg[8]_i_2_n_0 ),
        .D(p_2_in[8]),
        .Q(\data_reg_reg[8]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[8]_LDC 
       (.CLR(\data_reg[8]_i_2_n_0 ),
        .D(1'b1),
        .G(\data_reg[8]_i_3_n_0 ),
        .GE(1'b1),
        .Q(\data_reg_reg[8]_LDC_n_0 ));
  FDPE \data_reg_reg[8]_P 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_2_in[8]),
        .PRE(\data_reg[8]_i_3_n_0 ),
        .Q(\data_reg_reg[8]_P_n_0 ));
  MUXF8 \data_reg_reg[8]_i_13 
       (.I0(\data_reg_reg[8]_i_17_n_0 ),
        .I1(\data_reg_reg[8]_i_18_n_0 ),
        .O(\data_reg_reg[8]_i_13_n_0 ),
        .S(address_counter[7]));
  MUXF7 \data_reg_reg[8]_i_14 
       (.I0(\data_reg[8]_i_19_n_0 ),
        .I1(\data_reg[8]_i_20_n_0 ),
        .O(\data_reg_reg[8]_i_14_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[8]_i_17 
       (.I0(\data_reg[8]_i_22_n_0 ),
        .I1(\data_reg[8]_i_23_n_0 ),
        .O(\data_reg_reg[8]_i_17_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[8]_i_18 
       (.I0(\data_reg[8]_i_24_n_0 ),
        .I1(\data_reg[8]_i_25_n_0 ),
        .O(\data_reg_reg[8]_i_18_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[8]_i_5 
       (.I0(\data_reg[8]_i_7_n_0 ),
        .I1(\data_reg[8]_i_8_n_0 ),
        .O(\data_reg_reg[8]_i_5_n_0 ),
        .S(address_counter[9]));
  (* KEEP = "yes" *) 
  FDCP #(
    .INIT(1'b0)) 
    \data_reg_reg[9] 
       (.C(sys_clk),
        .CLR(\data_reg[9]_i_2_n_0 ),
        .D(p_2_in[9]),
        .PRE(\data_reg[9]_i_3_n_0 ),
        .Q(\NLW_data_reg_reg[9]_Q_UNCONNECTED ));
  FDCE \data_reg_reg[9]_C 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\data_reg[9]_i_2_n_0 ),
        .D(p_2_in[9]),
        .Q(\data_reg_reg[9]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[9]_LDC 
       (.CLR(\data_reg[9]_i_2_n_0 ),
        .D(1'b1),
        .G(\data_reg[9]_i_3_n_0 ),
        .GE(1'b1),
        .Q(\data_reg_reg[9]_LDC_n_0 ));
  FDPE \data_reg_reg[9]_P 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_2_in[9]),
        .PRE(\data_reg[9]_i_3_n_0 ),
        .Q(\data_reg_reg[9]_P_n_0 ));
  MUXF7 \data_reg_reg[9]_i_11 
       (.I0(\data_reg[9]_i_15_n_0 ),
        .I1(\data_reg[9]_i_16_n_0 ),
        .O(\data_reg_reg[9]_i_11_n_0 ),
        .S(address_counter[6]));
  MUXF8 \data_reg_reg[9]_i_12 
       (.I0(\data_reg_reg[9]_i_18_n_0 ),
        .I1(\data_reg_reg[9]_i_19_n_0 ),
        .O(\data_reg_reg[9]_i_12_n_0 ),
        .S(address_counter[7]));
  MUXF7 \data_reg_reg[9]_i_13 
       (.I0(\data_reg[9]_i_20_n_0 ),
        .I1(\data_reg[9]_i_21_n_0 ),
        .O(\data_reg_reg[9]_i_13_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[9]_i_18 
       (.I0(\data_reg[9]_i_23_n_0 ),
        .I1(\data_reg[9]_i_24_n_0 ),
        .O(\data_reg_reg[9]_i_18_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[9]_i_19 
       (.I0(\data_reg[9]_i_25_n_0 ),
        .I1(\data_reg[9]_i_26_n_0 ),
        .O(\data_reg_reg[9]_i_19_n_0 ),
        .S(address_counter[6]));
  MUXF7 \data_reg_reg[9]_i_5 
       (.I0(\data_reg[9]_i_7_n_0 ),
        .I1(\data_reg[9]_i_8_n_0 ),
        .O(\data_reg_reg[9]_i_5_n_0 ),
        .S(address_counter[9]));
  LUT2 #(
    .INIT(4'h2)) 
    send_en_clk_rise_inferred_i_1
       (.I0(send_en),
        .I1(send_en_detected),
        .O(send_en_clk_rise));
  LUT3 #(
    .INIT(8'hB8)) 
    send_en_detected_i_1
       (.I0(send_en),
        .I1(reset_n),
        .I2(send_en_detected),
        .O(send_en_detected_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    send_en_detected_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(send_en_detected_i_1_n_0),
        .Q(send_en_detected),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF8F8F838)) 
    state_i_1
       (.I0(send_en_clk_rise),
        .I1(reset_n),
        .I2(state_reg_n_0),
        .I3(en_n),
        .I4(\address_counter[14]_i_3_n_0 ),
        .O(state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state_reg_n_0),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_top
   (ldac_n,
    reset_n_0,
    ss_n,
    sclk,
    state_reg,
    mosi,
    clk,
    reset_n,
    send_en,
    mosi_INST_0_i_1);
  output ldac_n;
  output reset_n_0;
  output [0:0]ss_n;
  output sclk;
  output state_reg;
  output mosi;
  input clk;
  input reset_n;
  input send_en;
  input mosi_INST_0_i_1;

  wire busy_signal;
  wire clk;
  wire [15:0]dac_data_signal;
  wire dac_tx_ena_signal;
  wire en_n_signal;
  wire ldac_n;
  wire mosi;
  wire mosi_INST_0_i_1;
  wire reset_n;
  wire reset_n_0;
  wire sclk;
  wire send_en;
  wire [0:0]ss_n;
  wire state_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller ctrl_instance
       (.AR(reset_n_0),
        .busy_signal(busy_signal),
        .clk(clk),
        .dac_tx_ena_signal(dac_tx_ena_signal),
        .en_n(en_n_signal),
        .ldac_n(ldac_n),
        .reset_n(reset_n));
  (* KEEP_HIERARCHY = "soft" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_data_entity dac_data_instance
       (.data_out(dac_data_signal),
        .en_n(en_n_signal),
        .reset_n(reset_n),
        .send_en(send_en),
        .sys_clk(clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_dac_ad5541a dac_module_instance
       (.AR(reset_n_0),
        .D(dac_data_signal),
        .busy_signal(busy_signal),
        .clk(clk),
        .dac_tx_ena_signal(dac_tx_ena_signal),
        .mosi(mosi),
        .mosi_INST_0_i_1(mosi_INST_0_i_1),
        .reset_n(reset_n),
        .sclk(sclk),
        .ss_n(ss_n),
        .state_reg(state_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_dac_ad5541a
   (AR,
    busy_signal,
    ss_n,
    sclk,
    state_reg,
    mosi,
    clk,
    reset_n,
    dac_tx_ena_signal,
    mosi_INST_0_i_1,
    D);
  output [0:0]AR;
  output busy_signal;
  output [0:0]ss_n;
  output sclk;
  output state_reg;
  output mosi;
  input clk;
  input reset_n;
  input dac_tx_ena_signal;
  input mosi_INST_0_i_1;
  input [15:0]D;

  wire [0:0]AR;
  wire [15:0]D;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire busy_i_1_n_0;
  wire busy_signal;
  wire clk;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_1_n_0 ;
  wire \count[10]_i_1_n_0 ;
  wire \count[11]_i_1_n_0 ;
  wire \count[12]_i_1__0_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[8]_i_1_n_0 ;
  wire \count[9]_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire dac_tx_ena_signal;
  wire mosi;
  wire mosi_INST_0_i_1;
  wire [12:1]p_1_in;
  wire reset_n;
  wire sclk;
  wire spi_busy;
  wire spi_busy_prev;
  wire spi_ena_reg_n_0;
  wire spi_master_0_n_4;
  wire spi_master_0_n_6;
  wire spi_tx_data;
  wire [0:0]ss_n;
  wire [1:0]state__0;
  wire state_reg;
  wire [15:0]tx_data;
  wire [3:3]NLW_count0_carry__1_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFAF3FA03)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(dac_tx_ena_signal),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1011FFFF)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\count_reg_n_0_[10] ),
        .I1(\count_reg_n_0_[11] ),
        .I2(\FSM_sequential_state[0]_i_3_n_0 ),
        .I3(\FSM_sequential_state[0]_i_4_n_0 ),
        .I4(\count_reg_n_0_[12] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[3] ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[9] ),
        .I2(\count_reg_n_0_[8] ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[8] ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_4_n_0 ),
        .I4(\FSM_sequential_state[1]_i_5_n_0 ),
        .I5(\count_reg_n_0_[0] ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[6] ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\count_reg_n_0_[10] ),
        .I1(\count_reg_n_0_[9] ),
        .I2(\count_reg_n_0_[12] ),
        .I3(\count_reg_n_0_[11] ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[3] ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "pause:01,ready:10,start:00,send_data:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "pause:01,ready:10,start:00,send_data:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(spi_master_0_n_6),
        .Q(state__0[1]));
  LUT5 #(
    .INIT(32'hEEFF00F3)) 
    busy_i_1
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[1]),
        .I2(dac_tx_ena_signal),
        .I3(state__0[0]),
        .I4(busy_signal),
        .O(busy_i_1_n_0));
  FDPE busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .PRE(AR),
        .Q(busy_signal));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({NLW_count0_carry__1_CO_UNCONNECTED[3],count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \count[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \count[10]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(p_1_in[10]),
        .O(\count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \count[11]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(p_1_in[11]),
        .O(\count[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[12]_i_1__0 
       (.I0(reset_n),
        .I1(state__0[1]),
        .O(\count[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \count[12]_i_2 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(p_1_in[12]),
        .O(\count[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \count[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(p_1_in[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \count[2]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(p_1_in[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \count[3]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(p_1_in[3]),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \count[4]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(p_1_in[4]),
        .O(\count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \count[5]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(p_1_in[5]),
        .O(\count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \count[6]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(p_1_in[6]),
        .O(\count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \count[7]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(p_1_in[7]),
        .O(\count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \count[8]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(p_1_in[8]),
        .O(\count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \count[9]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(p_1_in[9]),
        .O(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[12]_i_1__0_n_0 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(\count[12]_i_1__0_n_0 ),
        .D(\count[10]_i_1_n_0 ),
        .Q(\count_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(\count[12]_i_1__0_n_0 ),
        .D(\count[11]_i_1_n_0 ),
        .Q(\count_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(\count[12]_i_1__0_n_0 ),
        .D(\count[12]_i_2_n_0 ),
        .Q(\count_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[12]_i_1__0_n_0 ),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[12]_i_1__0_n_0 ),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[12]_i_1__0_n_0 ),
        .D(\count[3]_i_1_n_0 ),
        .Q(\count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[12]_i_1__0_n_0 ),
        .D(\count[4]_i_1_n_0 ),
        .Q(\count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[12]_i_1__0_n_0 ),
        .D(\count[5]_i_1_n_0 ),
        .Q(\count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[12]_i_1__0_n_0 ),
        .D(\count[6]_i_1_n_0 ),
        .Q(\count_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(\count[12]_i_1__0_n_0 ),
        .D(\count[7]_i_1_n_0 ),
        .Q(\count_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(\count[12]_i_1__0_n_0 ),
        .D(\count[8]_i_1_n_0 ),
        .Q(\count_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(\count[12]_i_1__0_n_0 ),
        .D(\count[9]_i_1_n_0 ),
        .Q(\count_reg_n_0_[9] ),
        .R(1'b0));
  FDRE spi_busy_prev_reg
       (.C(clk),
        .CE(reset_n),
        .D(spi_busy),
        .Q(spi_busy_prev),
        .R(1'b0));
  FDCE spi_ena_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(spi_master_0_n_4),
        .Q(spi_ena_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master spi_master_0
       (.\FSM_sequential_state_reg[1] (spi_master_0_n_4),
        .\FSM_sequential_state_reg[1]_0 (\FSM_sequential_state[1]_i_2_n_0 ),
        .Q(tx_data),
        .clk(clk),
        .\count_reg[0]_0 (spi_ena_reg_n_0),
        .mosi(mosi),
        .mosi_INST_0_i_1(mosi_INST_0_i_1),
        .reset_n(reset_n),
        .reset_n_0(AR),
        .sclk(sclk),
        .spi_busy(spi_busy),
        .spi_busy_prev(spi_busy_prev),
        .spi_busy_prev_reg(spi_master_0_n_6),
        .ss_n(ss_n),
        .state__0(state__0),
        .state_reg_0(state_reg));
  LUT3 #(
    .INIT(8'h40)) 
    \spi_tx_data[15]_i_1 
       (.I0(state__0[0]),
        .I1(dac_tx_ena_signal),
        .I2(state__0[1]),
        .O(spi_tx_data));
  FDCE \spi_tx_data_reg[0] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[0]),
        .Q(tx_data[0]));
  FDCE \spi_tx_data_reg[10] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[10]),
        .Q(tx_data[10]));
  FDCE \spi_tx_data_reg[11] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[11]),
        .Q(tx_data[11]));
  FDCE \spi_tx_data_reg[12] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[12]),
        .Q(tx_data[12]));
  FDCE \spi_tx_data_reg[13] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[13]),
        .Q(tx_data[13]));
  FDCE \spi_tx_data_reg[14] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[14]),
        .Q(tx_data[14]));
  FDCE \spi_tx_data_reg[15] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[15]),
        .Q(tx_data[15]));
  FDCE \spi_tx_data_reg[1] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[1]),
        .Q(tx_data[1]));
  FDCE \spi_tx_data_reg[2] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[2]),
        .Q(tx_data[2]));
  FDCE \spi_tx_data_reg[3] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[3]),
        .Q(tx_data[3]));
  FDCE \spi_tx_data_reg[4] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[4]),
        .Q(tx_data[4]));
  FDCE \spi_tx_data_reg[5] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[5]),
        .Q(tx_data[5]));
  FDCE \spi_tx_data_reg[6] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[6]),
        .Q(tx_data[6]));
  FDCE \spi_tx_data_reg[7] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[7]),
        .Q(tx_data[7]));
  FDCE \spi_tx_data_reg[8] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[8]),
        .Q(tx_data[8]));
  FDCE \spi_tx_data_reg[9] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(AR),
        .D(D[9]),
        .Q(tx_data[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master
   (reset_n_0,
    spi_busy,
    ss_n,
    sclk,
    \FSM_sequential_state_reg[1] ,
    state_reg_0,
    spi_busy_prev_reg,
    mosi,
    clk,
    reset_n,
    \count_reg[0]_0 ,
    state__0,
    spi_busy_prev,
    mosi_INST_0_i_1,
    Q,
    \FSM_sequential_state_reg[1]_0 );
  output reset_n_0;
  output spi_busy;
  output [0:0]ss_n;
  output sclk;
  output \FSM_sequential_state_reg[1] ;
  output state_reg_0;
  output spi_busy_prev_reg;
  output mosi;
  input clk;
  input reset_n;
  input \count_reg[0]_0 ;
  input [1:0]state__0;
  input spi_busy_prev;
  input mosi_INST_0_i_1;
  input [15:0]Q;
  input \FSM_sequential_state_reg[1]_0 ;

  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [15:0]Q;
  wire assert_data_i_1_n_0;
  wire assert_data_reg_n_0;
  wire busy1;
  wire busy117_out;
  wire busy1_carry__0_i_1_n_0;
  wire busy1_carry__0_i_2_n_0;
  wire busy1_carry__0_i_3_n_0;
  wire busy1_carry__0_i_4_n_0;
  wire busy1_carry__0_n_0;
  wire busy1_carry__0_n_1;
  wire busy1_carry__0_n_2;
  wire busy1_carry__0_n_3;
  wire busy1_carry__1_i_1_n_0;
  wire busy1_carry__1_i_2_n_0;
  wire busy1_carry__1_i_3_n_0;
  wire busy1_carry__1_n_2;
  wire busy1_carry__1_n_3;
  wire busy1_carry_i_1_n_0;
  wire busy1_carry_i_2_n_0;
  wire busy1_carry_i_3_n_0;
  wire busy1_carry_i_4_n_0;
  wire busy1_carry_n_0;
  wire busy1_carry_n_1;
  wire busy1_carry_n_2;
  wire busy1_carry_n_3;
  wire clk;
  wire [31:31]clk_ratio;
  wire \clk_ratio[31]_i_1_n_0 ;
  wire [5:1]clk_toggles;
  wire clk_toggles0;
  wire \clk_toggles[0]_i_1_n_0 ;
  wire \clk_toggles[5]_i_1_n_0 ;
  wire \clk_toggles_reg_n_0_[0] ;
  wire \clk_toggles_reg_n_0_[1] ;
  wire \clk_toggles_reg_n_0_[2] ;
  wire \clk_toggles_reg_n_0_[3] ;
  wire \clk_toggles_reg_n_0_[4] ;
  wire \clk_toggles_reg_n_0_[5] ;
  wire [31:1]count0;
  wire count0_0;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__3_n_0;
  wire count0_carry__3_n_1;
  wire count0_carry__3_n_2;
  wire count0_carry__3_n_3;
  wire count0_carry__4_n_0;
  wire count0_carry__4_n_1;
  wire count0_carry__4_n_2;
  wire count0_carry__4_n_3;
  wire count0_carry__5_n_0;
  wire count0_carry__5_n_1;
  wire count0_carry__5_n_2;
  wire count0_carry__5_n_3;
  wire count0_carry__6_n_2;
  wire count0_carry__6_n_3;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_1_n_0 ;
  wire \count[10]_i_1__0_n_0 ;
  wire \count[11]_i_1__0_n_0 ;
  wire \count[12]_i_1_n_0 ;
  wire \count[13]_i_1_n_0 ;
  wire \count[14]_i_1_n_0 ;
  wire \count[15]_i_1_n_0 ;
  wire \count[16]_i_1_n_0 ;
  wire \count[17]_i_1_n_0 ;
  wire \count[18]_i_1_n_0 ;
  wire \count[19]_i_1_n_0 ;
  wire \count[1]_i_1__0_n_0 ;
  wire \count[20]_i_1_n_0 ;
  wire \count[21]_i_1_n_0 ;
  wire \count[22]_i_1_n_0 ;
  wire \count[23]_i_1_n_0 ;
  wire \count[24]_i_1_n_0 ;
  wire \count[25]_i_1_n_0 ;
  wire \count[26]_i_1_n_0 ;
  wire \count[27]_i_1_n_0 ;
  wire \count[28]_i_1_n_0 ;
  wire \count[29]_i_1_n_0 ;
  wire \count[2]_i_1__0_n_0 ;
  wire \count[30]_i_1_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire \count[31]_i_3_n_0 ;
  wire \count[3]_i_1__0_n_0 ;
  wire \count[4]_i_1__0_n_0 ;
  wire \count[5]_i_1__0_n_0 ;
  wire \count[6]_i_1__0_n_0 ;
  wire \count[7]_i_1__0_n_0 ;
  wire \count[8]_i_1__0_n_0 ;
  wire \count[9]_i_1__0_n_0 ;
  wire \count_reg[0]_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[20] ;
  wire \count_reg_n_0_[21] ;
  wire \count_reg_n_0_[22] ;
  wire \count_reg_n_0_[23] ;
  wire \count_reg_n_0_[24] ;
  wire \count_reg_n_0_[25] ;
  wire \count_reg_n_0_[26] ;
  wire \count_reg_n_0_[27] ;
  wire \count_reg_n_0_[28] ;
  wire \count_reg_n_0_[29] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[30] ;
  wire \count_reg_n_0_[31] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [4:4]last_bit_rx;
  wire \last_bit_rx[4]_i_1_n_0 ;
  wire mosi;
  wire mosi0__0;
  wire mosi_INST_0_i_1;
  wire mosi_tristate_oe_i_1_n_0;
  wire mosi_tristate_oe_reg_n_0;
  wire reset_n;
  wire reset_n_0;
  wire sclk;
  wire sclk_i_1_n_0;
  wire sclk_i_2_n_0;
  wire sclk_i_3_n_0;
  wire spi_busy;
  wire spi_busy_prev;
  wire spi_busy_prev_reg;
  wire [0:0]ss_n;
  wire \ss_n[0]_i_1_n_0 ;
  wire state;
  wire [1:0]state__0;
  wire state_i_1_n_0;
  wire state_reg_0;
  wire tx_buffer0;
  wire \tx_buffer[0]_i_1_n_0 ;
  wire \tx_buffer[10]_i_1_n_0 ;
  wire \tx_buffer[11]_i_1_n_0 ;
  wire \tx_buffer[12]_i_1_n_0 ;
  wire \tx_buffer[13]_i_1_n_0 ;
  wire \tx_buffer[14]_i_1_n_0 ;
  wire \tx_buffer[15]_i_2_n_0 ;
  wire \tx_buffer[15]_i_4_n_0 ;
  wire \tx_buffer[1]_i_1_n_0 ;
  wire \tx_buffer[2]_i_1_n_0 ;
  wire \tx_buffer[3]_i_1_n_0 ;
  wire \tx_buffer[4]_i_1_n_0 ;
  wire \tx_buffer[5]_i_1_n_0 ;
  wire \tx_buffer[6]_i_1_n_0 ;
  wire \tx_buffer[7]_i_1_n_0 ;
  wire \tx_buffer[8]_i_1_n_0 ;
  wire \tx_buffer[9]_i_1_n_0 ;
  wire \tx_buffer_reg_n_0_[0] ;
  wire \tx_buffer_reg_n_0_[10] ;
  wire \tx_buffer_reg_n_0_[11] ;
  wire \tx_buffer_reg_n_0_[12] ;
  wire \tx_buffer_reg_n_0_[13] ;
  wire \tx_buffer_reg_n_0_[14] ;
  wire \tx_buffer_reg_n_0_[15] ;
  wire \tx_buffer_reg_n_0_[1] ;
  wire \tx_buffer_reg_n_0_[2] ;
  wire \tx_buffer_reg_n_0_[3] ;
  wire \tx_buffer_reg_n_0_[4] ;
  wire \tx_buffer_reg_n_0_[5] ;
  wire \tx_buffer_reg_n_0_[6] ;
  wire \tx_buffer_reg_n_0_[7] ;
  wire \tx_buffer_reg_n_0_[8] ;
  wire \tx_buffer_reg_n_0_[9] ;
  wire [3:0]NLW_busy1_carry_O_UNCONNECTED;
  wire [3:0]NLW_busy1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_busy1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_busy1_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__6_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hDD0FFF00)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(spi_busy_prev),
        .I1(spi_busy),
        .I2(\FSM_sequential_state_reg[1]_0 ),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(spi_busy_prev_reg));
  LUT5 #(
    .INIT(32'h5FFFA808)) 
    assert_data_i_1
       (.I0(reset_n),
        .I1(\count_reg[0]_0 ),
        .I2(state),
        .I3(busy1),
        .I4(assert_data_reg_n_0),
        .O(assert_data_i_1_n_0));
  FDRE assert_data_reg
       (.C(clk),
        .CE(1'b1),
        .D(assert_data_i_1_n_0),
        .Q(assert_data_reg_n_0),
        .R(1'b0));
  CARRY4 busy1_carry
       (.CI(1'b0),
        .CO({busy1_carry_n_0,busy1_carry_n_1,busy1_carry_n_2,busy1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_busy1_carry_O_UNCONNECTED[3:0]),
        .S({busy1_carry_i_1_n_0,busy1_carry_i_2_n_0,busy1_carry_i_3_n_0,busy1_carry_i_4_n_0}));
  CARRY4 busy1_carry__0
       (.CI(busy1_carry_n_0),
        .CO({busy1_carry__0_n_0,busy1_carry__0_n_1,busy1_carry__0_n_2,busy1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_busy1_carry__0_O_UNCONNECTED[3:0]),
        .S({busy1_carry__0_i_1_n_0,busy1_carry__0_i_2_n_0,busy1_carry__0_i_3_n_0,busy1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__0_i_1
       (.I0(\count_reg_n_0_[23] ),
        .I1(\count_reg_n_0_[22] ),
        .I2(\count_reg_n_0_[21] ),
        .O(busy1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__0_i_2
       (.I0(\count_reg_n_0_[20] ),
        .I1(\count_reg_n_0_[19] ),
        .I2(\count_reg_n_0_[18] ),
        .O(busy1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__0_i_3
       (.I0(\count_reg_n_0_[17] ),
        .I1(\count_reg_n_0_[16] ),
        .I2(\count_reg_n_0_[15] ),
        .O(busy1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__0_i_4
       (.I0(\count_reg_n_0_[14] ),
        .I1(\count_reg_n_0_[13] ),
        .I2(\count_reg_n_0_[12] ),
        .O(busy1_carry__0_i_4_n_0));
  CARRY4 busy1_carry__1
       (.CI(busy1_carry__0_n_0),
        .CO({NLW_busy1_carry__1_CO_UNCONNECTED[3],busy1,busy1_carry__1_n_2,busy1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_busy1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,busy1_carry__1_i_1_n_0,busy1_carry__1_i_2_n_0,busy1_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'h09)) 
    busy1_carry__1_i_1
       (.I0(\count_reg_n_0_[31] ),
        .I1(clk_ratio),
        .I2(\count_reg_n_0_[30] ),
        .O(busy1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__1_i_2
       (.I0(\count_reg_n_0_[29] ),
        .I1(\count_reg_n_0_[28] ),
        .I2(\count_reg_n_0_[27] ),
        .O(busy1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__1_i_3
       (.I0(\count_reg_n_0_[26] ),
        .I1(\count_reg_n_0_[25] ),
        .I2(\count_reg_n_0_[24] ),
        .O(busy1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry_i_1
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[10] ),
        .I2(\count_reg_n_0_[9] ),
        .O(busy1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry_i_2
       (.I0(\count_reg_n_0_[8] ),
        .I1(\count_reg_n_0_[7] ),
        .I2(\count_reg_n_0_[6] ),
        .O(busy1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry_i_3
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .O(busy1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h0009)) 
    busy1_carry_i_4
       (.I0(\count_reg_n_0_[0] ),
        .I1(last_bit_rx),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .O(busy1_carry_i_4_n_0));
  FDPE busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .PRE(reset_n_0),
        .Q(spi_busy));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDF00)) 
    \clk_ratio[31]_i_1 
       (.I0(reset_n),
        .I1(state),
        .I2(\count_reg[0]_0 ),
        .I3(clk_ratio),
        .O(\clk_ratio[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \clk_ratio_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_ratio[31]_i_1_n_0 ),
        .Q(clk_ratio),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_toggles[0]_i_1 
       (.I0(\clk_toggles_reg_n_0_[0] ),
        .O(\clk_toggles[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFF0000FFFF00)) 
    \clk_toggles[1]_i_1 
       (.I0(\clk_toggles_reg_n_0_[2] ),
        .I1(\clk_toggles_reg_n_0_[4] ),
        .I2(\clk_toggles_reg_n_0_[3] ),
        .I3(\clk_toggles_reg_n_0_[1] ),
        .I4(\clk_toggles_reg_n_0_[0] ),
        .I5(\clk_toggles_reg_n_0_[5] ),
        .O(clk_toggles[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \clk_toggles[2]_i_1 
       (.I0(\clk_toggles_reg_n_0_[2] ),
        .I1(\clk_toggles_reg_n_0_[1] ),
        .I2(\clk_toggles_reg_n_0_[0] ),
        .O(clk_toggles[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \clk_toggles[3]_i_1 
       (.I0(\clk_toggles_reg_n_0_[2] ),
        .I1(\clk_toggles_reg_n_0_[3] ),
        .I2(\clk_toggles_reg_n_0_[1] ),
        .I3(\clk_toggles_reg_n_0_[0] ),
        .O(clk_toggles[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \clk_toggles[4]_i_1 
       (.I0(\clk_toggles_reg_n_0_[2] ),
        .I1(\clk_toggles_reg_n_0_[4] ),
        .I2(\clk_toggles_reg_n_0_[3] ),
        .I3(\clk_toggles_reg_n_0_[1] ),
        .I4(\clk_toggles_reg_n_0_[0] ),
        .O(clk_toggles[4]));
  LUT3 #(
    .INIT(8'h20)) 
    \clk_toggles[5]_i_1 
       (.I0(reset_n),
        .I1(state),
        .I2(\count_reg[0]_0 ),
        .O(\clk_toggles[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \clk_toggles[5]_i_2 
       (.I0(reset_n),
        .I1(busy1),
        .I2(state),
        .O(clk_toggles0));
  LUT6 #(
    .INIT(64'h7FFEFFFF80000000)) 
    \clk_toggles[5]_i_3 
       (.I0(\clk_toggles_reg_n_0_[2] ),
        .I1(\clk_toggles_reg_n_0_[4] ),
        .I2(\clk_toggles_reg_n_0_[3] ),
        .I3(\clk_toggles_reg_n_0_[1] ),
        .I4(\clk_toggles_reg_n_0_[0] ),
        .I5(\clk_toggles_reg_n_0_[5] ),
        .O(clk_toggles[5]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[0] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(\clk_toggles[0]_i_1_n_0 ),
        .Q(\clk_toggles_reg_n_0_[0] ),
        .R(\clk_toggles[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[1] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(clk_toggles[1]),
        .Q(\clk_toggles_reg_n_0_[1] ),
        .R(\clk_toggles[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[2] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(clk_toggles[2]),
        .Q(\clk_toggles_reg_n_0_[2] ),
        .R(\clk_toggles[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[3] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(clk_toggles[3]),
        .Q(\clk_toggles_reg_n_0_[3] ),
        .R(\clk_toggles[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[4] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(clk_toggles[4]),
        .Q(\clk_toggles_reg_n_0_[4] ),
        .R(\clk_toggles[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[5] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(clk_toggles[5]),
        .Q(\clk_toggles_reg_n_0_[5] ),
        .R(\clk_toggles[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[4:1]),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[8:5]),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[12:9]),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[16:13]),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({count0_carry__3_n_0,count0_carry__3_n_1,count0_carry__3_n_2,count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[20:17]),
        .S({\count_reg_n_0_[20] ,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__4
       (.CI(count0_carry__3_n_0),
        .CO({count0_carry__4_n_0,count0_carry__4_n_1,count0_carry__4_n_2,count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[24:21]),
        .S({\count_reg_n_0_[24] ,\count_reg_n_0_[23] ,\count_reg_n_0_[22] ,\count_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__5
       (.CI(count0_carry__4_n_0),
        .CO({count0_carry__5_n_0,count0_carry__5_n_1,count0_carry__5_n_2,count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[28:25]),
        .S({\count_reg_n_0_[28] ,\count_reg_n_0_[27] ,\count_reg_n_0_[26] ,\count_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__6
       (.CI(count0_carry__5_n_0),
        .CO({NLW_count0_carry__6_CO_UNCONNECTED[3:2],count0_carry__6_n_2,count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__6_O_UNCONNECTED[3],count0[31:29]}),
        .S({1'b0,\count_reg_n_0_[31] ,\count_reg_n_0_[30] ,\count_reg_n_0_[29] }));
  LUT5 #(
    .INIT(32'hDFAADAAA)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(busy1),
        .I2(state),
        .I3(reset_n),
        .I4(\count_reg[0]_0 ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[10]_i_1__0 
       (.I0(count0[10]),
        .I1(busy1),
        .O(\count[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[11]_i_1__0 
       (.I0(count0[11]),
        .I1(busy1),
        .O(\count[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[12]_i_1 
       (.I0(count0[12]),
        .I1(busy1),
        .O(\count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[13]_i_1 
       (.I0(count0[13]),
        .I1(busy1),
        .O(\count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[14]_i_1 
       (.I0(count0[14]),
        .I1(busy1),
        .O(\count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[15]_i_1 
       (.I0(count0[15]),
        .I1(busy1),
        .O(\count[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[16]_i_1 
       (.I0(count0[16]),
        .I1(busy1),
        .O(\count[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[17]_i_1 
       (.I0(count0[17]),
        .I1(busy1),
        .O(\count[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[18]_i_1 
       (.I0(count0[18]),
        .I1(busy1),
        .O(\count[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[19]_i_1 
       (.I0(count0[19]),
        .I1(busy1),
        .O(\count[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[1]_i_1__0 
       (.I0(count0[1]),
        .I1(busy1),
        .O(\count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[20]_i_1 
       (.I0(count0[20]),
        .I1(busy1),
        .O(\count[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[21]_i_1 
       (.I0(count0[21]),
        .I1(busy1),
        .O(\count[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[22]_i_1 
       (.I0(count0[22]),
        .I1(busy1),
        .O(\count[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[23]_i_1 
       (.I0(count0[23]),
        .I1(busy1),
        .O(\count[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[24]_i_1 
       (.I0(count0[24]),
        .I1(busy1),
        .O(\count[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[25]_i_1 
       (.I0(count0[25]),
        .I1(busy1),
        .O(\count[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[26]_i_1 
       (.I0(count0[26]),
        .I1(busy1),
        .O(\count[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[27]_i_1 
       (.I0(count0[27]),
        .I1(busy1),
        .O(\count[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[28]_i_1 
       (.I0(count0[28]),
        .I1(busy1),
        .O(\count[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[29]_i_1 
       (.I0(count0[29]),
        .I1(busy1),
        .O(\count[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[2]_i_1__0 
       (.I0(count0[2]),
        .I1(busy1),
        .O(\count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[30]_i_1 
       (.I0(count0[30]),
        .I1(busy1),
        .O(\count[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[31]_i_1 
       (.I0(\count_reg[0]_0 ),
        .I1(reset_n),
        .I2(state),
        .O(\count[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \count[31]_i_2 
       (.I0(reset_n),
        .I1(\count_reg[0]_0 ),
        .I2(state),
        .O(count0_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[31]_i_3 
       (.I0(count0[31]),
        .I1(busy1),
        .O(\count[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[3]_i_1__0 
       (.I0(count0[3]),
        .I1(busy1),
        .O(\count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_1__0 
       (.I0(count0[4]),
        .I1(busy1),
        .O(\count[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[5]_i_1__0 
       (.I0(count0[5]),
        .I1(busy1),
        .O(\count[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[6]_i_1__0 
       (.I0(count0[6]),
        .I1(busy1),
        .O(\count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[7]_i_1__0 
       (.I0(count0[7]),
        .I1(busy1),
        .O(\count[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_1__0 
       (.I0(count0[8]),
        .I1(busy1),
        .O(\count[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[9]_i_1__0 
       (.I0(count0[9]),
        .I1(busy1),
        .O(\count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[10]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[10] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[11]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[11] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[12]_i_1_n_0 ),
        .Q(\count_reg_n_0_[12] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[13]_i_1_n_0 ),
        .Q(\count_reg_n_0_[13] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[14]_i_1_n_0 ),
        .Q(\count_reg_n_0_[14] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[15]_i_1_n_0 ),
        .Q(\count_reg_n_0_[15] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[16]_i_1_n_0 ),
        .Q(\count_reg_n_0_[16] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[17]_i_1_n_0 ),
        .Q(\count_reg_n_0_[17] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[18]_i_1_n_0 ),
        .Q(\count_reg_n_0_[18] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[19]_i_1_n_0 ),
        .Q(\count_reg_n_0_[19] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[1]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[20]_i_1_n_0 ),
        .Q(\count_reg_n_0_[20] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[21]_i_1_n_0 ),
        .Q(\count_reg_n_0_[21] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[22]_i_1_n_0 ),
        .Q(\count_reg_n_0_[22] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[23]_i_1_n_0 ),
        .Q(\count_reg_n_0_[23] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[24]_i_1_n_0 ),
        .Q(\count_reg_n_0_[24] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[25]_i_1_n_0 ),
        .Q(\count_reg_n_0_[25] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[26]_i_1_n_0 ),
        .Q(\count_reg_n_0_[26] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[27]_i_1_n_0 ),
        .Q(\count_reg_n_0_[27] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[28]_i_1_n_0 ),
        .Q(\count_reg_n_0_[28] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[29]_i_1_n_0 ),
        .Q(\count_reg_n_0_[29] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[30]_i_1_n_0 ),
        .Q(\count_reg_n_0_[30] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \count_reg[31] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[31]_i_3_n_0 ),
        .Q(\count_reg_n_0_[31] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[3]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[4]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[5]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[6]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[7]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[7] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[8]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[8] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[9]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[9] ),
        .R(\count[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \last_bit_rx[4]_i_1 
       (.I0(\count_reg[0]_0 ),
        .I1(state),
        .I2(reset_n),
        .I3(last_bit_rx),
        .O(\last_bit_rx[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_bit_rx_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\last_bit_rx[4]_i_1_n_0 ),
        .Q(last_bit_rx),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    mosi_INST_0
       (.I0(mosi_tristate_oe_reg_n_0),
        .I1(mosi_INST_0_i_1),
        .O(mosi));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h5F004000)) 
    mosi_INST_0_i_2
       (.I0(busy117_out),
        .I1(mosi0__0),
        .I2(busy1),
        .I3(state),
        .I4(mosi_INST_0_i_1),
        .O(state_reg_0));
  LUT6 #(
    .INIT(64'hABFFAAAAA800AAAA)) 
    mosi_tristate_oe_i_1
       (.I0(\tx_buffer_reg_n_0_[15] ),
        .I1(busy117_out),
        .I2(mosi0__0),
        .I3(busy1),
        .I4(state),
        .I5(mosi_tristate_oe_reg_n_0),
        .O(mosi_tristate_oe_i_1_n_0));
  FDRE mosi_tristate_oe_reg
       (.C(clk),
        .CE(1'b1),
        .D(mosi_tristate_oe_i_1_n_0),
        .Q(mosi_tristate_oe_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h57F7F7F7A0000000)) 
    sclk_i_1
       (.I0(reset_n),
        .I1(\count_reg[0]_0 ),
        .I2(state),
        .I3(sclk_i_2_n_0),
        .I4(busy1),
        .I5(sclk),
        .O(sclk_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sclk_i_2
       (.I0(sclk_i_3_n_0),
        .I1(ss_n),
        .O(sclk_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    sclk_i_3
       (.I0(\clk_toggles_reg_n_0_[0] ),
        .I1(\clk_toggles_reg_n_0_[2] ),
        .I2(\clk_toggles_reg_n_0_[1] ),
        .I3(\clk_toggles_reg_n_0_[4] ),
        .I4(\clk_toggles_reg_n_0_[3] ),
        .I5(\clk_toggles_reg_n_0_[5] ),
        .O(sclk_i_3_n_0));
  FDRE sclk_reg
       (.C(clk),
        .CE(1'b1),
        .D(sclk_i_1_n_0),
        .Q(sclk),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h77FF0008)) 
    spi_ena_i_1
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(spi_busy_prev),
        .I3(spi_busy),
        .I4(\count_reg[0]_0 ),
        .O(\FSM_sequential_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \ss_n[0]_i_1 
       (.I0(busy117_out),
        .I1(busy1),
        .I2(state),
        .O(\ss_n[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ss_n[0]_i_2 
       (.I0(reset_n),
        .O(reset_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ss_n[0]_i_3 
       (.I0(\clk_toggles_reg_n_0_[1] ),
        .I1(\clk_toggles_reg_n_0_[4] ),
        .I2(\clk_toggles_reg_n_0_[5] ),
        .I3(\clk_toggles_reg_n_0_[0] ),
        .I4(\clk_toggles_reg_n_0_[3] ),
        .I5(\clk_toggles_reg_n_0_[2] ),
        .O(busy117_out));
  FDPE \ss_n_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ss_n[0]_i_1_n_0 ),
        .PRE(reset_n_0),
        .Q(ss_n));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F70)) 
    state_i_1
       (.I0(busy117_out),
        .I1(busy1),
        .I2(state),
        .I3(\count_reg[0]_0 ),
        .O(state_i_1_n_0));
  FDCE state_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(state_i_1_n_0),
        .Q(state));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tx_buffer[0]_i_1 
       (.I0(Q[0]),
        .I1(state),
        .O(\tx_buffer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[10]_i_1 
       (.I0(\tx_buffer_reg_n_0_[9] ),
        .I1(state),
        .I2(Q[10]),
        .O(\tx_buffer[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[11]_i_1 
       (.I0(\tx_buffer_reg_n_0_[10] ),
        .I1(state),
        .I2(Q[11]),
        .O(\tx_buffer[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[12]_i_1 
       (.I0(\tx_buffer_reg_n_0_[11] ),
        .I1(state),
        .I2(Q[12]),
        .O(\tx_buffer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[13]_i_1 
       (.I0(\tx_buffer_reg_n_0_[12] ),
        .I1(state),
        .I2(Q[13]),
        .O(\tx_buffer[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[14]_i_1 
       (.I0(\tx_buffer_reg_n_0_[13] ),
        .I1(state),
        .I2(Q[14]),
        .O(\tx_buffer[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8080808)) 
    \tx_buffer[15]_i_1 
       (.I0(reset_n),
        .I1(\count_reg[0]_0 ),
        .I2(state),
        .I3(mosi0__0),
        .I4(busy1),
        .O(tx_buffer0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[15]_i_2 
       (.I0(\tx_buffer_reg_n_0_[14] ),
        .I1(state),
        .I2(Q[15]),
        .O(\tx_buffer[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \tx_buffer[15]_i_3 
       (.I0(assert_data_reg_n_0),
        .I1(\clk_toggles_reg_n_0_[5] ),
        .I2(\tx_buffer[15]_i_4_n_0 ),
        .O(mosi0__0));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \tx_buffer[15]_i_4 
       (.I0(\clk_toggles_reg_n_0_[0] ),
        .I1(\clk_toggles_reg_n_0_[1] ),
        .I2(\clk_toggles_reg_n_0_[2] ),
        .I3(\clk_toggles_reg_n_0_[3] ),
        .I4(\clk_toggles_reg_n_0_[4] ),
        .I5(last_bit_rx),
        .O(\tx_buffer[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[1]_i_1 
       (.I0(\tx_buffer_reg_n_0_[0] ),
        .I1(state),
        .I2(Q[1]),
        .O(\tx_buffer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[2]_i_1 
       (.I0(\tx_buffer_reg_n_0_[1] ),
        .I1(state),
        .I2(Q[2]),
        .O(\tx_buffer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[3]_i_1 
       (.I0(\tx_buffer_reg_n_0_[2] ),
        .I1(state),
        .I2(Q[3]),
        .O(\tx_buffer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[4]_i_1 
       (.I0(\tx_buffer_reg_n_0_[3] ),
        .I1(state),
        .I2(Q[4]),
        .O(\tx_buffer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[5]_i_1 
       (.I0(\tx_buffer_reg_n_0_[4] ),
        .I1(state),
        .I2(Q[5]),
        .O(\tx_buffer[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[6]_i_1 
       (.I0(\tx_buffer_reg_n_0_[5] ),
        .I1(state),
        .I2(Q[6]),
        .O(\tx_buffer[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[7]_i_1 
       (.I0(\tx_buffer_reg_n_0_[6] ),
        .I1(state),
        .I2(Q[7]),
        .O(\tx_buffer[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[8]_i_1 
       (.I0(\tx_buffer_reg_n_0_[7] ),
        .I1(state),
        .I2(Q[8]),
        .O(\tx_buffer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[9]_i_1 
       (.I0(\tx_buffer_reg_n_0_[8] ),
        .I1(state),
        .I2(Q[9]),
        .O(\tx_buffer[9]_i_1_n_0 ));
  FDRE \tx_buffer_reg[0] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[0]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[10] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[10]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[11] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[11]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[12] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[12]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[13] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[13]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[14] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[14]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[15] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[15]_i_2_n_0 ),
        .Q(\tx_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[1] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[1]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[2] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[2]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[3] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[3]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[4] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[4]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[5] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[5]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[6] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[6]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[7] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[7]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[8] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[8]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[9] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[9]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[9] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
