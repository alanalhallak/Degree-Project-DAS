// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu May  9 15:54:22 2024
// Host        : Predator-Offset running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Thesis/DAS_v2/DAS/DAS.gen/sources_1/bd/Jupyter/ip/Jupyter_AD7091R_1_0/Jupyter_AD7091R_1_0_sim_netlist.v
// Design      : Jupyter_AD7091R_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Jupyter_AD7091R_1_0,AD7091R,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "AD7091R,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module Jupyter_AD7091R_1_0
   (fpga_clk_i,
    adc_clk_i,
    reset_n_i,
    data_o,
    data_rd_ready_o,
    adc_sdata_i,
    adc_sdata_t,
    adc_sclk_o,
    adc_cs_n_o,
    adc_convst_n_o,
    sclk_clk_cnt_db,
    adc_state_db);
  input fpga_clk_i;
  input adc_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n_i RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n_i, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n_i;
  output [15:0]data_o;
  output data_rd_ready_o;
  input adc_sdata_i;
  output adc_sdata_t;
  output adc_sclk_o;
  output adc_cs_n_o;
  output adc_convst_n_o;
  output [4:0]sclk_clk_cnt_db;
  output [6:0]adc_state_db;

  wire \<const0> ;
  wire \<const1> ;
  wire adc_clk_i;
  wire adc_convst_n_o;
  wire adc_cs_n_o;
  wire adc_sclk_o;
  wire adc_sdata_i;
  wire [6:0]adc_state_db;
  wire [11:0]\^data_o ;
  wire data_rd_ready_o;
  wire fpga_clk_i;
  wire reset_n_i;
  wire [4:0]sclk_clk_cnt_db;

  assign adc_sdata_t = \<const1> ;
  assign data_o[15] = \<const0> ;
  assign data_o[14] = \<const0> ;
  assign data_o[13] = \<const0> ;
  assign data_o[12] = \<const0> ;
  assign data_o[11:0] = \^data_o [11:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  Jupyter_AD7091R_1_0_AD7091R inst
       (.adc_clk_i(adc_clk_i),
        .adc_convst_n_o(adc_convst_n_o),
        .adc_cs_n_o(adc_cs_n_o),
        .adc_sclk_o(adc_sclk_o),
        .adc_sdata_i(adc_sdata_i),
        .adc_state_db(adc_state_db),
        .data_o(\^data_o ),
        .data_rd_ready_o(data_rd_ready_o),
        .fpga_clk_i(fpga_clk_i),
        .reset_n_i(reset_n_i),
        .sclk_clk_cnt_db(sclk_clk_cnt_db));
endmodule

(* ORIG_REF_NAME = "AD7091R" *) 
module Jupyter_AD7091R_1_0_AD7091R
   (adc_state_db,
    data_o,
    data_rd_ready_o,
    sclk_clk_cnt_db,
    adc_sclk_o,
    adc_convst_n_o,
    adc_cs_n_o,
    fpga_clk_i,
    reset_n_i,
    adc_clk_i,
    adc_sdata_i);
  output [6:0]adc_state_db;
  output [11:0]data_o;
  output data_rd_ready_o;
  output [4:0]sclk_clk_cnt_db;
  output adc_sclk_o;
  output adc_convst_n_o;
  output adc_cs_n_o;
  input fpga_clk_i;
  input reset_n_i;
  input adc_clk_i;
  input adc_sdata_i;

  wire adc_clk_en;
  wire adc_clk_en0;
  wire adc_clk_en_i_2_n_0;
  wire adc_clk_en_i_3_n_0;
  wire adc_clk_i;
  wire adc_cnv_s_i_1_n_0;
  wire adc_cnv_s_i_2_n_0;
  wire adc_cnv_s_i_3_n_0;
  wire adc_cnv_s_i_4_n_0;
  wire adc_convst_n_o;
  wire adc_cs_n_o;
  wire adc_cs_n_s;
  wire adc_cs_n_s_i_1_n_0;
  wire adc_cs_n_s_i_3_n_0;
  wire adc_cs_n_s_i_5_n_0;
  wire adc_cs_n_s_i_6_n_0;
  wire \adc_data_s[11]_i_1_n_0 ;
  wire \adc_data_s[11]_i_2_n_0 ;
  wire \adc_data_s[11]_i_3_n_0 ;
  wire \adc_data_s_reg_n_0_[11] ;
  wire [7:1]adc_next_state;
  wire \adc_next_state_inferred__2/i___0_n_0 ;
  wire \adc_next_state_inferred__2/i___1_n_0 ;
  wire \adc_next_state_inferred__2/i___2_n_0 ;
  wire \adc_next_state_inferred__2/i___3_n_0 ;
  wire \adc_next_state_inferred__2/i__n_0 ;
  wire adc_sclk_o;
  wire adc_sdata_i;
  wire \adc_state[1]_i_2_n_0 ;
  wire \adc_state[1]_i_3_n_0 ;
  wire \adc_state[1]_i_4_n_0 ;
  wire \adc_state[2]_i_2_n_0 ;
  wire \adc_state[5]_i_2_n_0 ;
  wire \adc_state[6]_i_1_n_0 ;
  wire \adc_state[6]_i_2_n_0 ;
  wire \adc_state[6]_i_4_n_0 ;
  wire \adc_state[6]_i_5_n_0 ;
  wire \adc_state[6]_i_6_n_0 ;
  wire \adc_state[6]_i_7_n_0 ;
  wire \adc_state[6]_i_8_n_0 ;
  wire [6:0]adc_state_db;
  wire [7:0]adc_state_nc_m1;
  wire [7:0]adc_state_pc_m1;
  wire [7:7]adc_state_reg;
  wire adc_sw_reset0_out;
  wire adc_sw_reset_i_1_n_0;
  wire adc_sw_reset_reg_n_0;
  wire [6:0]adc_tconvert_cnt0;
  wire \adc_tconvert_cnt[6]_i_1_n_0 ;
  wire \adc_tconvert_cnt[6]_i_3_n_0 ;
  wire [6:0]adc_tconvert_cnt_reg;
  wire [6:0]adc_tconvst_cnt0;
  wire \adc_tconvst_cnt[6]_i_1_n_0 ;
  wire \adc_tconvst_cnt[6]_i_3_n_0 ;
  wire [6:0]adc_tconvst_cnt_reg;
  wire [0:0]adc_tcycle_cnt;
  wire \adc_tcycle_cnt[0]_i_1_n_0 ;
  wire \adc_tcycle_cnt[1]_i_1_n_0 ;
  wire \adc_tcycle_cnt[2]_i_1_n_0 ;
  wire \adc_tcycle_cnt[3]_i_1_n_0 ;
  wire \adc_tcycle_cnt[3]_i_2_n_0 ;
  wire \adc_tcycle_cnt[4]_i_1_n_0 ;
  wire \adc_tcycle_cnt[4]_i_2_n_0 ;
  wire \adc_tcycle_cnt[5]_i_1_n_0 ;
  wire \adc_tcycle_cnt[5]_i_2_n_0 ;
  wire \adc_tcycle_cnt[6]_i_1_n_0 ;
  wire \adc_tcycle_cnt[6]_i_2_n_0 ;
  wire \adc_tcycle_cnt[6]_i_3_n_0 ;
  wire \adc_tcycle_cnt[6]_i_5_n_0 ;
  wire \adc_tcycle_cnt_reg_n_0_[0] ;
  wire \adc_tcycle_cnt_reg_n_0_[1] ;
  wire \adc_tcycle_cnt_reg_n_0_[2] ;
  wire \adc_tcycle_cnt_reg_n_0_[3] ;
  wire \adc_tcycle_cnt_reg_n_0_[4] ;
  wire \adc_tcycle_cnt_reg_n_0_[5] ;
  wire \adc_tcycle_cnt_reg_n_0_[6] ;
  wire [11:0]data_o;
  wire data_rd_ready_o;
  wire data_rd_ready_o_i_1_n_0;
  wire data_rd_ready_s;
  wire data_rd_ready_s_0;
  wire data_rd_ready_s_i_1_n_0;
  wire fpga_clk_i;
  wire [11:1]p_0_in;
  wire reset_n_i;
  wire sclk_clk_cnt;
  wire [4:0]sclk_clk_cnt0;
  wire \sclk_clk_cnt[4]_i_3_n_0 ;
  wire [4:0]sclk_clk_cnt_db;

  LUT4 #(
    .INIT(16'h2808)) 
    adc_clk_en_i_1
       (.I0(adc_clk_en_i_2_n_0),
        .I1(adc_state_nc_m1[4]),
        .I2(adc_state_nc_m1[5]),
        .I3(adc_clk_en_i_3_n_0),
        .O(adc_clk_en0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    adc_clk_en_i_2
       (.I0(adc_state_nc_m1[2]),
        .I1(adc_state_nc_m1[3]),
        .I2(adc_state_nc_m1[0]),
        .I3(adc_state_nc_m1[1]),
        .I4(adc_state_nc_m1[7]),
        .I5(adc_state_nc_m1[6]),
        .O(adc_clk_en_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    adc_clk_en_i_3
       (.I0(sclk_clk_cnt_db[3]),
        .I1(sclk_clk_cnt_db[1]),
        .I2(sclk_clk_cnt_db[0]),
        .I3(sclk_clk_cnt_db[2]),
        .I4(sclk_clk_cnt_db[4]),
        .O(adc_clk_en_i_3_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    adc_clk_en_reg
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_clk_en0),
        .Q(adc_clk_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBBBBBFBBBBBBB0)) 
    adc_cnv_s_i_1
       (.I0(adc_state_db[1]),
        .I1(adc_state_db[2]),
        .I2(adc_cs_n_s_i_3_n_0),
        .I3(adc_cnv_s_i_2_n_0),
        .I4(adc_cs_n_s_i_6_n_0),
        .I5(adc_convst_n_o),
        .O(adc_cnv_s_i_1_n_0));
  LUT6 #(
    .INIT(64'h0017000000140000)) 
    adc_cnv_s_i_2
       (.I0(\adc_state[2]_i_2_n_0 ),
        .I1(adc_state_db[0]),
        .I2(adc_state_db[1]),
        .I3(adc_cnv_s_i_3_n_0),
        .I4(reset_n_i),
        .I5(adc_cnv_s_i_4_n_0),
        .O(adc_cnv_s_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    adc_cnv_s_i_3
       (.I0(adc_state_db[4]),
        .I1(adc_state_db[3]),
        .I2(adc_state_reg),
        .O(adc_cnv_s_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h06)) 
    adc_cnv_s_i_4
       (.I0(adc_state_db[6]),
        .I1(adc_state_db[5]),
        .I2(adc_state_db[2]),
        .O(adc_cnv_s_i_4_n_0));
  FDRE adc_cnv_s_reg
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_cnv_s_i_1_n_0),
        .Q(adc_convst_n_o),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    adc_cs_n_s_i_1
       (.I0(adc_cs_n_s),
        .I1(adc_cs_n_s_i_3_n_0),
        .I2(adc_sw_reset0_out),
        .I3(adc_cs_n_s_i_5_n_0),
        .I4(adc_cs_n_s_i_6_n_0),
        .I5(adc_cs_n_o),
        .O(adc_cs_n_s_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEF)) 
    adc_cs_n_s_i_2
       (.I0(adc_state_db[2]),
        .I1(adc_state_db[1]),
        .I2(adc_state_db[5]),
        .I3(adc_state_db[6]),
        .I4(adc_state_db[3]),
        .I5(adc_state_db[4]),
        .O(adc_cs_n_s));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    adc_cs_n_s_i_3
       (.I0(adc_state_db[2]),
        .I1(adc_state_db[5]),
        .I2(adc_state_db[6]),
        .I3(reset_n_i),
        .I4(\adc_state[6]_i_7_n_0 ),
        .O(adc_cs_n_s_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000600000000)) 
    adc_cs_n_s_i_4
       (.I0(adc_state_db[0]),
        .I1(adc_state_db[1]),
        .I2(adc_state_reg),
        .I3(\adc_state[1]_i_3_n_0 ),
        .I4(\adc_state[2]_i_2_n_0 ),
        .I5(reset_n_i),
        .O(adc_sw_reset0_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00001400)) 
    adc_cs_n_s_i_5
       (.I0(adc_state_db[2]),
        .I1(adc_state_db[5]),
        .I2(adc_state_db[6]),
        .I3(reset_n_i),
        .I4(\adc_state[6]_i_7_n_0 ),
        .O(adc_cs_n_s_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00101040)) 
    adc_cs_n_s_i_6
       (.I0(\adc_state[1]_i_4_n_0 ),
        .I1(adc_state_reg),
        .I2(reset_n_i),
        .I3(adc_state_db[4]),
        .I4(adc_state_db[3]),
        .O(adc_cs_n_s_i_6_n_0));
  FDRE adc_cs_n_s_reg
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_cs_n_s_i_1_n_0),
        .Q(adc_cs_n_o),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \adc_data_s[11]_i_1 
       (.I0(sclk_clk_cnt),
        .I1(adc_clk_en),
        .O(\adc_data_s[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFF00FF00)) 
    \adc_data_s[11]_i_2 
       (.I0(sclk_clk_cnt_db[0]),
        .I1(sclk_clk_cnt_db[1]),
        .I2(sclk_clk_cnt_db[2]),
        .I3(sclk_clk_cnt),
        .I4(\adc_data_s[11]_i_3_n_0 ),
        .I5(adc_clk_en),
        .O(\adc_data_s[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \adc_data_s[11]_i_3 
       (.I0(sclk_clk_cnt_db[4]),
        .I1(sclk_clk_cnt_db[3]),
        .O(\adc_data_s[11]_i_3_n_0 ));
  FDRE \adc_data_s_reg[0] 
       (.C(adc_clk_i),
        .CE(\adc_data_s[11]_i_2_n_0 ),
        .D(adc_sdata_i),
        .Q(p_0_in[1]),
        .R(\adc_data_s[11]_i_1_n_0 ));
  FDRE \adc_data_s_reg[10] 
       (.C(adc_clk_i),
        .CE(\adc_data_s[11]_i_2_n_0 ),
        .D(p_0_in[10]),
        .Q(p_0_in[11]),
        .R(\adc_data_s[11]_i_1_n_0 ));
  FDRE \adc_data_s_reg[11] 
       (.C(adc_clk_i),
        .CE(\adc_data_s[11]_i_2_n_0 ),
        .D(p_0_in[11]),
        .Q(\adc_data_s_reg_n_0_[11] ),
        .R(\adc_data_s[11]_i_1_n_0 ));
  FDRE \adc_data_s_reg[1] 
       (.C(adc_clk_i),
        .CE(\adc_data_s[11]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(\adc_data_s[11]_i_1_n_0 ));
  FDRE \adc_data_s_reg[2] 
       (.C(adc_clk_i),
        .CE(\adc_data_s[11]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(\adc_data_s[11]_i_1_n_0 ));
  FDRE \adc_data_s_reg[3] 
       (.C(adc_clk_i),
        .CE(\adc_data_s[11]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(\adc_data_s[11]_i_1_n_0 ));
  FDRE \adc_data_s_reg[4] 
       (.C(adc_clk_i),
        .CE(\adc_data_s[11]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(\adc_data_s[11]_i_1_n_0 ));
  FDRE \adc_data_s_reg[5] 
       (.C(adc_clk_i),
        .CE(\adc_data_s[11]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(\adc_data_s[11]_i_1_n_0 ));
  FDRE \adc_data_s_reg[6] 
       (.C(adc_clk_i),
        .CE(\adc_data_s[11]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(\adc_data_s[11]_i_1_n_0 ));
  FDRE \adc_data_s_reg[7] 
       (.C(adc_clk_i),
        .CE(\adc_data_s[11]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(p_0_in[8]),
        .R(\adc_data_s[11]_i_1_n_0 ));
  FDRE \adc_data_s_reg[8] 
       (.C(adc_clk_i),
        .CE(\adc_data_s[11]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(p_0_in[9]),
        .R(\adc_data_s[11]_i_1_n_0 ));
  FDRE \adc_data_s_reg[9] 
       (.C(adc_clk_i),
        .CE(\adc_data_s[11]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(p_0_in[10]),
        .R(\adc_data_s[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \adc_next_state_inferred__2/i_ 
       (.I0(adc_state_db[0]),
        .I1(adc_state_db[1]),
        .I2(adc_state_db[2]),
        .I3(adc_state_db[3]),
        .O(\adc_next_state_inferred__2/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFEE8)) 
    \adc_next_state_inferred__2/i___0 
       (.I0(adc_state_db[0]),
        .I1(adc_state_db[1]),
        .I2(adc_state_db[2]),
        .I3(adc_state_db[3]),
        .O(\adc_next_state_inferred__2/i___0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \adc_next_state_inferred__2/i___1 
       (.I0(adc_state_db[4]),
        .I1(adc_state_db[5]),
        .I2(adc_state_db[6]),
        .I3(adc_state_reg),
        .O(\adc_next_state_inferred__2/i___1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEE8)) 
    \adc_next_state_inferred__2/i___2 
       (.I0(adc_state_db[4]),
        .I1(adc_state_db[5]),
        .I2(adc_state_db[6]),
        .I3(adc_state_reg),
        .O(\adc_next_state_inferred__2/i___2_n_0 ));
  LUT4 #(
    .INIT(16'h0012)) 
    \adc_next_state_inferred__2/i___3 
       (.I0(\adc_next_state_inferred__2/i__n_0 ),
        .I1(\adc_next_state_inferred__2/i___0_n_0 ),
        .I2(\adc_next_state_inferred__2/i___1_n_0 ),
        .I3(\adc_next_state_inferred__2/i___2_n_0 ),
        .O(\adc_next_state_inferred__2/i___3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    adc_sclk_o_INST_0
       (.I0(adc_clk_i),
        .I1(adc_clk_en),
        .O(adc_sclk_o));
  LUT6 #(
    .INIT(64'hFFFFFEEAFEEAFFFF)) 
    \adc_state[1]_i_1 
       (.I0(\adc_state[1]_i_2_n_0 ),
        .I1(adc_state_db[6]),
        .I2(adc_state_db[5]),
        .I3(adc_state_db[2]),
        .I4(\adc_state[1]_i_3_n_0 ),
        .I5(\adc_state[1]_i_4_n_0 ),
        .O(adc_next_state[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEF888)) 
    \adc_state[1]_i_2 
       (.I0(adc_state_db[0]),
        .I1(adc_state_db[1]),
        .I2(adc_state_db[4]),
        .I3(adc_state_db[3]),
        .I4(\adc_state[2]_i_2_n_0 ),
        .I5(adc_state_reg),
        .O(\adc_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \adc_state[1]_i_3 
       (.I0(adc_state_db[3]),
        .I1(adc_state_db[4]),
        .O(\adc_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_state[1]_i_4 
       (.I0(adc_state_db[2]),
        .I1(adc_state_db[5]),
        .I2(adc_state_db[6]),
        .I3(adc_state_db[1]),
        .I4(adc_state_db[0]),
        .O(\adc_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010000)) 
    \adc_state[2]_i_1 
       (.I0(\adc_state[2]_i_2_n_0 ),
        .I1(adc_state_db[4]),
        .I2(adc_state_db[3]),
        .I3(adc_state_reg),
        .I4(adc_state_db[1]),
        .I5(adc_state_db[0]),
        .O(adc_next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \adc_state[2]_i_2 
       (.I0(adc_state_db[6]),
        .I1(adc_state_db[5]),
        .I2(adc_state_db[2]),
        .O(\adc_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \adc_state[3]_i_1 
       (.I0(adc_state_db[2]),
        .I1(adc_state_db[5]),
        .I2(adc_state_db[6]),
        .I3(\adc_state[6]_i_7_n_0 ),
        .O(adc_next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \adc_state[4]_i_1 
       (.I0(adc_state_db[3]),
        .I1(adc_state_db[4]),
        .I2(\adc_state[5]_i_2_n_0 ),
        .O(adc_next_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \adc_state[5]_i_1 
       (.I0(adc_state_db[3]),
        .I1(adc_state_db[4]),
        .I2(\adc_state[5]_i_2_n_0 ),
        .O(adc_next_state[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \adc_state[5]_i_2 
       (.I0(adc_state_db[0]),
        .I1(adc_state_db[1]),
        .I2(adc_state_db[6]),
        .I3(adc_state_db[5]),
        .I4(adc_state_db[2]),
        .I5(adc_state_reg),
        .O(\adc_state[5]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_state[6]_i_1 
       (.I0(reset_n_i),
        .O(\adc_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \adc_state[6]_i_2 
       (.I0(\adc_state[6]_i_4_n_0 ),
        .I1(\adc_next_state_inferred__2/i___3_n_0 ),
        .I2(adc_state_db[0]),
        .I3(adc_state_db[4]),
        .I4(\adc_state[6]_i_5_n_0 ),
        .I5(\adc_state[6]_i_6_n_0 ),
        .O(\adc_state[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \adc_state[6]_i_3 
       (.I0(adc_state_db[2]),
        .I1(adc_state_db[5]),
        .I2(adc_state_db[6]),
        .I3(\adc_state[6]_i_7_n_0 ),
        .O(adc_next_state[6]));
  LUT6 #(
    .INIT(64'h0404040404FF0404)) 
    \adc_state[6]_i_4 
       (.I0(\adc_tconvst_cnt[6]_i_3_n_0 ),
        .I1(adc_state_db[2]),
        .I2(adc_tconvst_cnt_reg[6]),
        .I3(\adc_tconvert_cnt[6]_i_3_n_0 ),
        .I4(adc_state_db[3]),
        .I5(adc_tconvert_cnt_reg[6]),
        .O(\adc_state[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \adc_state[6]_i_5 
       (.I0(\adc_data_s[11]_i_3_n_0 ),
        .I1(adc_state_db[5]),
        .I2(sclk_clk_cnt_db[2]),
        .I3(adc_sw_reset_reg_n_0),
        .I4(sclk_clk_cnt_db[1]),
        .I5(sclk_clk_cnt_db[0]),
        .O(\adc_state[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFEFE)) 
    \adc_state[6]_i_6 
       (.I0(\adc_state[6]_i_8_n_0 ),
        .I1(adc_state_db[6]),
        .I2(adc_state_reg),
        .I3(\adc_tcycle_cnt[6]_i_5_n_0 ),
        .I4(\adc_tcycle_cnt_reg_n_0_[6] ),
        .I5(adc_state_db[1]),
        .O(\adc_state[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_state[6]_i_7 
       (.I0(adc_state_reg),
        .I1(adc_state_db[3]),
        .I2(adc_state_db[4]),
        .I3(adc_state_db[1]),
        .I4(adc_state_db[0]),
        .O(\adc_state[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \adc_state[6]_i_8 
       (.I0(adc_state_db[5]),
        .I1(sclk_clk_cnt_db[4]),
        .I2(sclk_clk_cnt_db[2]),
        .I3(sclk_clk_cnt_db[0]),
        .I4(sclk_clk_cnt_db[1]),
        .I5(sclk_clk_cnt_db[3]),
        .O(\adc_state[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \adc_state[7]_i_1 
       (.I0(adc_state_db[2]),
        .I1(adc_state_db[6]),
        .I2(adc_state_db[5]),
        .I3(\adc_state[6]_i_7_n_0 ),
        .O(adc_next_state[7]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \adc_state_nc_m1_reg[0] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_db[0]),
        .Q(adc_state_nc_m1[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \adc_state_nc_m1_reg[1] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_db[1]),
        .Q(adc_state_nc_m1[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \adc_state_nc_m1_reg[2] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_db[2]),
        .Q(adc_state_nc_m1[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \adc_state_nc_m1_reg[3] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_db[3]),
        .Q(adc_state_nc_m1[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \adc_state_nc_m1_reg[4] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_db[4]),
        .Q(adc_state_nc_m1[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \adc_state_nc_m1_reg[5] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_db[5]),
        .Q(adc_state_nc_m1[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \adc_state_nc_m1_reg[6] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_db[6]),
        .Q(adc_state_nc_m1[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \adc_state_nc_m1_reg[7] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_reg),
        .Q(adc_state_nc_m1[7]),
        .R(1'b0));
  FDRE \adc_state_pc_m1_reg[0] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_db[0]),
        .Q(adc_state_pc_m1[0]),
        .R(1'b0));
  FDRE \adc_state_pc_m1_reg[1] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_db[1]),
        .Q(adc_state_pc_m1[1]),
        .R(1'b0));
  FDRE \adc_state_pc_m1_reg[2] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_db[2]),
        .Q(adc_state_pc_m1[2]),
        .R(1'b0));
  FDRE \adc_state_pc_m1_reg[3] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_db[3]),
        .Q(adc_state_pc_m1[3]),
        .R(1'b0));
  FDRE \adc_state_pc_m1_reg[4] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_db[4]),
        .Q(adc_state_pc_m1[4]),
        .R(1'b0));
  FDRE \adc_state_pc_m1_reg[5] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_db[5]),
        .Q(adc_state_pc_m1[5]),
        .R(1'b0));
  FDRE \adc_state_pc_m1_reg[6] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_db[6]),
        .Q(adc_state_pc_m1[6]),
        .R(1'b0));
  FDRE \adc_state_pc_m1_reg[7] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .D(adc_state_reg),
        .Q(adc_state_pc_m1[7]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000," *) 
  FDSE \adc_state_reg[0] 
       (.C(fpga_clk_i),
        .CE(\adc_state[6]_i_2_n_0 ),
        .D(1'b0),
        .Q(adc_state_db[0]),
        .S(\adc_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000," *) 
  FDRE \adc_state_reg[1] 
       (.C(fpga_clk_i),
        .CE(\adc_state[6]_i_2_n_0 ),
        .D(adc_next_state[1]),
        .Q(adc_state_db[1]),
        .R(\adc_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000," *) 
  FDRE \adc_state_reg[2] 
       (.C(fpga_clk_i),
        .CE(\adc_state[6]_i_2_n_0 ),
        .D(adc_next_state[2]),
        .Q(adc_state_db[2]),
        .R(\adc_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000," *) 
  FDRE \adc_state_reg[3] 
       (.C(fpga_clk_i),
        .CE(\adc_state[6]_i_2_n_0 ),
        .D(adc_next_state[3]),
        .Q(adc_state_db[3]),
        .R(\adc_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000," *) 
  FDRE \adc_state_reg[4] 
       (.C(fpga_clk_i),
        .CE(\adc_state[6]_i_2_n_0 ),
        .D(adc_next_state[4]),
        .Q(adc_state_db[4]),
        .R(\adc_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000," *) 
  FDRE \adc_state_reg[5] 
       (.C(fpga_clk_i),
        .CE(\adc_state[6]_i_2_n_0 ),
        .D(adc_next_state[5]),
        .Q(adc_state_db[5]),
        .R(\adc_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000," *) 
  FDRE \adc_state_reg[6] 
       (.C(fpga_clk_i),
        .CE(\adc_state[6]_i_2_n_0 ),
        .D(adc_next_state[6]),
        .Q(adc_state_db[6]),
        .R(\adc_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ADC_SW_RESET_STATE:00000001,ADC_IDLE_STATE:00000010,ADC_START_CNV_STATE:00000100,ADC_WAIT_CNV_DONE_STATE:00001000,ADC_WAIT_DATA_VALID_STATE:00010000,ADC_READ_CNV_RESULT:00100000,ADC_END_CNV_STATE:01000000,ADC_DATAREADY_STATE:10000000," *) 
  FDRE \adc_state_reg[7] 
       (.C(fpga_clk_i),
        .CE(\adc_state[6]_i_2_n_0 ),
        .D(adc_next_state[7]),
        .Q(adc_state_reg),
        .R(\adc_state[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F40)) 
    adc_sw_reset_i_1
       (.I0(adc_state_db[1]),
        .I1(adc_next_state[2]),
        .I2(reset_n_i),
        .I3(adc_sw_reset_reg_n_0),
        .O(adc_sw_reset_i_1_n_0));
  FDRE adc_sw_reset_reg
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_sw_reset_i_1_n_0),
        .Q(adc_sw_reset_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tconvert_cnt[0]_i_1 
       (.I0(adc_tconvert_cnt_reg[0]),
        .O(adc_tconvert_cnt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \adc_tconvert_cnt[1]_i_1 
       (.I0(adc_tconvert_cnt_reg[1]),
        .I1(adc_tconvert_cnt_reg[0]),
        .O(adc_tconvert_cnt0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \adc_tconvert_cnt[2]_i_1 
       (.I0(adc_tconvert_cnt_reg[2]),
        .I1(adc_tconvert_cnt_reg[0]),
        .I2(adc_tconvert_cnt_reg[1]),
        .O(adc_tconvert_cnt0[2]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \adc_tconvert_cnt[3]_i_1 
       (.I0(adc_tconvert_cnt_reg[3]),
        .I1(adc_tconvert_cnt_reg[1]),
        .I2(adc_tconvert_cnt_reg[0]),
        .I3(adc_tconvert_cnt_reg[2]),
        .O(adc_tconvert_cnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \adc_tconvert_cnt[4]_i_1 
       (.I0(adc_tconvert_cnt_reg[4]),
        .I1(adc_tconvert_cnt_reg[2]),
        .I2(adc_tconvert_cnt_reg[0]),
        .I3(adc_tconvert_cnt_reg[1]),
        .I4(adc_tconvert_cnt_reg[3]),
        .O(adc_tconvert_cnt0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \adc_tconvert_cnt[5]_i_1 
       (.I0(adc_tconvert_cnt_reg[5]),
        .I1(adc_tconvert_cnt_reg[3]),
        .I2(adc_tconvert_cnt_reg[1]),
        .I3(adc_tconvert_cnt_reg[0]),
        .I4(adc_tconvert_cnt_reg[2]),
        .I5(adc_tconvert_cnt_reg[4]),
        .O(adc_tconvert_cnt0[5]));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \adc_tconvert_cnt[6]_i_1 
       (.I0(reset_n_i),
        .I1(adc_state_db[4]),
        .I2(adc_state_db[3]),
        .I3(\adc_state[5]_i_2_n_0 ),
        .O(\adc_tconvert_cnt[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \adc_tconvert_cnt[6]_i_2 
       (.I0(\adc_tconvert_cnt[6]_i_3_n_0 ),
        .I1(adc_tconvert_cnt_reg[6]),
        .O(adc_tconvert_cnt0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \adc_tconvert_cnt[6]_i_3 
       (.I0(adc_tconvert_cnt_reg[4]),
        .I1(adc_tconvert_cnt_reg[2]),
        .I2(adc_tconvert_cnt_reg[0]),
        .I3(adc_tconvert_cnt_reg[1]),
        .I4(adc_tconvert_cnt_reg[3]),
        .I5(adc_tconvert_cnt_reg[5]),
        .O(\adc_tconvert_cnt[6]_i_3_n_0 ));
  FDSE \adc_tconvert_cnt_reg[0] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_tconvert_cnt0[0]),
        .Q(adc_tconvert_cnt_reg[0]),
        .S(\adc_tconvert_cnt[6]_i_1_n_0 ));
  FDSE \adc_tconvert_cnt_reg[1] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_tconvert_cnt0[1]),
        .Q(adc_tconvert_cnt_reg[1]),
        .S(\adc_tconvert_cnt[6]_i_1_n_0 ));
  FDSE \adc_tconvert_cnt_reg[2] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_tconvert_cnt0[2]),
        .Q(adc_tconvert_cnt_reg[2]),
        .S(\adc_tconvert_cnt[6]_i_1_n_0 ));
  FDRE \adc_tconvert_cnt_reg[3] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_tconvert_cnt0[3]),
        .Q(adc_tconvert_cnt_reg[3]),
        .R(\adc_tconvert_cnt[6]_i_1_n_0 ));
  FDSE \adc_tconvert_cnt_reg[4] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_tconvert_cnt0[4]),
        .Q(adc_tconvert_cnt_reg[4]),
        .S(\adc_tconvert_cnt[6]_i_1_n_0 ));
  FDSE \adc_tconvert_cnt_reg[5] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_tconvert_cnt0[5]),
        .Q(adc_tconvert_cnt_reg[5]),
        .S(\adc_tconvert_cnt[6]_i_1_n_0 ));
  FDRE \adc_tconvert_cnt_reg[6] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_tconvert_cnt0[6]),
        .Q(adc_tconvert_cnt_reg[6]),
        .R(\adc_tconvert_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \adc_tconvst_cnt[0]_i_1 
       (.I0(adc_tconvst_cnt_reg[0]),
        .O(adc_tconvst_cnt0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \adc_tconvst_cnt[1]_i_1 
       (.I0(adc_tconvst_cnt_reg[1]),
        .I1(adc_tconvst_cnt_reg[0]),
        .O(adc_tconvst_cnt0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \adc_tconvst_cnt[2]_i_1 
       (.I0(adc_tconvst_cnt_reg[2]),
        .I1(adc_tconvst_cnt_reg[0]),
        .I2(adc_tconvst_cnt_reg[1]),
        .O(adc_tconvst_cnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \adc_tconvst_cnt[3]_i_1 
       (.I0(adc_tconvst_cnt_reg[3]),
        .I1(adc_tconvst_cnt_reg[1]),
        .I2(adc_tconvst_cnt_reg[0]),
        .I3(adc_tconvst_cnt_reg[2]),
        .O(adc_tconvst_cnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \adc_tconvst_cnt[4]_i_1 
       (.I0(adc_tconvst_cnt_reg[4]),
        .I1(adc_tconvst_cnt_reg[2]),
        .I2(adc_tconvst_cnt_reg[0]),
        .I3(adc_tconvst_cnt_reg[1]),
        .I4(adc_tconvst_cnt_reg[3]),
        .O(adc_tconvst_cnt0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \adc_tconvst_cnt[5]_i_1 
       (.I0(adc_tconvst_cnt_reg[5]),
        .I1(adc_tconvst_cnt_reg[3]),
        .I2(adc_tconvst_cnt_reg[1]),
        .I3(adc_tconvst_cnt_reg[0]),
        .I4(adc_tconvst_cnt_reg[2]),
        .I5(adc_tconvst_cnt_reg[4]),
        .O(adc_tconvst_cnt0[5]));
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \adc_tconvst_cnt[6]_i_1 
       (.I0(\adc_state[6]_i_7_n_0 ),
        .I1(reset_n_i),
        .I2(adc_state_db[6]),
        .I3(adc_state_db[5]),
        .I4(adc_state_db[2]),
        .O(\adc_tconvst_cnt[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \adc_tconvst_cnt[6]_i_2 
       (.I0(\adc_tconvst_cnt[6]_i_3_n_0 ),
        .I1(adc_tconvst_cnt_reg[6]),
        .O(adc_tconvst_cnt0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \adc_tconvst_cnt[6]_i_3 
       (.I0(adc_tconvst_cnt_reg[4]),
        .I1(adc_tconvst_cnt_reg[2]),
        .I2(adc_tconvst_cnt_reg[0]),
        .I3(adc_tconvst_cnt_reg[1]),
        .I4(adc_tconvst_cnt_reg[3]),
        .I5(adc_tconvst_cnt_reg[5]),
        .O(\adc_tconvst_cnt[6]_i_3_n_0 ));
  FDSE \adc_tconvst_cnt_reg[0] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_tconvst_cnt0[0]),
        .Q(adc_tconvst_cnt_reg[0]),
        .S(\adc_tconvst_cnt[6]_i_1_n_0 ));
  FDRE \adc_tconvst_cnt_reg[1] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_tconvst_cnt0[1]),
        .Q(adc_tconvst_cnt_reg[1]),
        .R(\adc_tconvst_cnt[6]_i_1_n_0 ));
  FDRE \adc_tconvst_cnt_reg[2] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_tconvst_cnt0[2]),
        .Q(adc_tconvst_cnt_reg[2]),
        .R(\adc_tconvst_cnt[6]_i_1_n_0 ));
  FDSE \adc_tconvst_cnt_reg[3] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_tconvst_cnt0[3]),
        .Q(adc_tconvst_cnt_reg[3]),
        .S(\adc_tconvst_cnt[6]_i_1_n_0 ));
  FDRE \adc_tconvst_cnt_reg[4] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_tconvst_cnt0[4]),
        .Q(adc_tconvst_cnt_reg[4]),
        .R(\adc_tconvst_cnt[6]_i_1_n_0 ));
  FDRE \adc_tconvst_cnt_reg[5] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_tconvst_cnt0[5]),
        .Q(adc_tconvst_cnt_reg[5]),
        .R(\adc_tconvst_cnt[6]_i_1_n_0 ));
  FDRE \adc_tconvst_cnt_reg[6] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(adc_tconvst_cnt0[6]),
        .Q(adc_tconvst_cnt_reg[6]),
        .R(\adc_tconvst_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \adc_tcycle_cnt[0]_i_1 
       (.I0(adc_tcycle_cnt),
        .I1(\adc_tcycle_cnt_reg_n_0_[0] ),
        .O(\adc_tcycle_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hF9)) 
    \adc_tcycle_cnt[1]_i_1 
       (.I0(\adc_tcycle_cnt_reg_n_0_[0] ),
        .I1(\adc_tcycle_cnt_reg_n_0_[1] ),
        .I2(adc_tcycle_cnt),
        .O(\adc_tcycle_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAA60000)) 
    \adc_tcycle_cnt[2]_i_1 
       (.I0(\adc_tcycle_cnt_reg_n_0_[2] ),
        .I1(\adc_tcycle_cnt[6]_i_3_n_0 ),
        .I2(\adc_tcycle_cnt_reg_n_0_[1] ),
        .I3(\adc_tcycle_cnt_reg_n_0_[0] ),
        .I4(reset_n_i),
        .I5(adc_tcycle_cnt),
        .O(\adc_tcycle_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A600)) 
    \adc_tcycle_cnt[3]_i_1 
       (.I0(\adc_tcycle_cnt_reg_n_0_[3] ),
        .I1(\adc_tcycle_cnt[6]_i_3_n_0 ),
        .I2(\adc_tcycle_cnt[3]_i_2_n_0 ),
        .I3(reset_n_i),
        .I4(adc_tcycle_cnt),
        .O(\adc_tcycle_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \adc_tcycle_cnt[3]_i_2 
       (.I0(\adc_tcycle_cnt_reg_n_0_[1] ),
        .I1(\adc_tcycle_cnt_reg_n_0_[0] ),
        .I2(\adc_tcycle_cnt_reg_n_0_[2] ),
        .O(\adc_tcycle_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C3C20000)) 
    \adc_tcycle_cnt[4]_i_1 
       (.I0(\adc_tcycle_cnt_reg_n_0_[6] ),
        .I1(\adc_tcycle_cnt_reg_n_0_[4] ),
        .I2(\adc_tcycle_cnt[4]_i_2_n_0 ),
        .I3(\adc_tcycle_cnt_reg_n_0_[5] ),
        .I4(reset_n_i),
        .I5(adc_tcycle_cnt),
        .O(\adc_tcycle_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_tcycle_cnt[4]_i_2 
       (.I0(\adc_tcycle_cnt_reg_n_0_[2] ),
        .I1(\adc_tcycle_cnt_reg_n_0_[0] ),
        .I2(\adc_tcycle_cnt_reg_n_0_[1] ),
        .I3(\adc_tcycle_cnt_reg_n_0_[3] ),
        .O(\adc_tcycle_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF9)) 
    \adc_tcycle_cnt[5]_i_1 
       (.I0(\adc_tcycle_cnt[5]_i_2_n_0 ),
        .I1(\adc_tcycle_cnt_reg_n_0_[5] ),
        .I2(adc_tcycle_cnt),
        .O(\adc_tcycle_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_tcycle_cnt[5]_i_2 
       (.I0(\adc_tcycle_cnt_reg_n_0_[3] ),
        .I1(\adc_tcycle_cnt_reg_n_0_[1] ),
        .I2(\adc_tcycle_cnt_reg_n_0_[0] ),
        .I3(\adc_tcycle_cnt_reg_n_0_[2] ),
        .I4(\adc_tcycle_cnt_reg_n_0_[4] ),
        .O(\adc_tcycle_cnt[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \adc_tcycle_cnt[6]_i_1 
       (.I0(\adc_tcycle_cnt[6]_i_3_n_0 ),
        .I1(adc_tcycle_cnt),
        .O(\adc_tcycle_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF9)) 
    \adc_tcycle_cnt[6]_i_2 
       (.I0(\adc_tcycle_cnt[6]_i_5_n_0 ),
        .I1(\adc_tcycle_cnt_reg_n_0_[6] ),
        .I2(adc_tcycle_cnt),
        .O(\adc_tcycle_cnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \adc_tcycle_cnt[6]_i_3 
       (.I0(\adc_tcycle_cnt[6]_i_5_n_0 ),
        .I1(\adc_tcycle_cnt_reg_n_0_[6] ),
        .O(\adc_tcycle_cnt[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000006)) 
    \adc_tcycle_cnt[6]_i_4 
       (.I0(adc_state_db[0]),
        .I1(adc_state_db[1]),
        .I2(adc_cnv_s_i_3_n_0),
        .I3(\adc_state[2]_i_2_n_0 ),
        .I4(\adc_tcycle_cnt_reg_n_0_[6] ),
        .I5(\adc_tcycle_cnt[6]_i_5_n_0 ),
        .O(adc_tcycle_cnt));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \adc_tcycle_cnt[6]_i_5 
       (.I0(\adc_tcycle_cnt_reg_n_0_[4] ),
        .I1(\adc_tcycle_cnt_reg_n_0_[2] ),
        .I2(\adc_tcycle_cnt_reg_n_0_[0] ),
        .I3(\adc_tcycle_cnt_reg_n_0_[1] ),
        .I4(\adc_tcycle_cnt_reg_n_0_[3] ),
        .I5(\adc_tcycle_cnt_reg_n_0_[5] ),
        .O(\adc_tcycle_cnt[6]_i_5_n_0 ));
  FDRE \adc_tcycle_cnt_reg[0] 
       (.C(fpga_clk_i),
        .CE(\adc_tcycle_cnt[6]_i_1_n_0 ),
        .D(\adc_tcycle_cnt[0]_i_1_n_0 ),
        .Q(\adc_tcycle_cnt_reg_n_0_[0] ),
        .R(\adc_state[6]_i_1_n_0 ));
  FDRE \adc_tcycle_cnt_reg[1] 
       (.C(fpga_clk_i),
        .CE(\adc_tcycle_cnt[6]_i_1_n_0 ),
        .D(\adc_tcycle_cnt[1]_i_1_n_0 ),
        .Q(\adc_tcycle_cnt_reg_n_0_[1] ),
        .R(\adc_state[6]_i_1_n_0 ));
  FDRE \adc_tcycle_cnt_reg[2] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(\adc_tcycle_cnt[2]_i_1_n_0 ),
        .Q(\adc_tcycle_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \adc_tcycle_cnt_reg[3] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(\adc_tcycle_cnt[3]_i_1_n_0 ),
        .Q(\adc_tcycle_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \adc_tcycle_cnt_reg[4] 
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(\adc_tcycle_cnt[4]_i_1_n_0 ),
        .Q(\adc_tcycle_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \adc_tcycle_cnt_reg[5] 
       (.C(fpga_clk_i),
        .CE(\adc_tcycle_cnt[6]_i_1_n_0 ),
        .D(\adc_tcycle_cnt[5]_i_1_n_0 ),
        .Q(\adc_tcycle_cnt_reg_n_0_[5] ),
        .R(\adc_state[6]_i_1_n_0 ));
  FDRE \adc_tcycle_cnt_reg[6] 
       (.C(fpga_clk_i),
        .CE(\adc_tcycle_cnt[6]_i_1_n_0 ),
        .D(\adc_tcycle_cnt[6]_i_2_n_0 ),
        .Q(\adc_tcycle_cnt_reg_n_0_[6] ),
        .R(\adc_state[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o[-1111111100] 
       (.CLR(1'b0),
        .D(\adc_data_s_reg_n_0_[11] ),
        .G(data_rd_ready_o),
        .GE(1'b1),
        .Q(data_o[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o[-1111111101] 
       (.CLR(1'b0),
        .D(p_0_in[11]),
        .G(data_rd_ready_o),
        .GE(1'b1),
        .Q(data_o[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o[-1111111102] 
       (.CLR(1'b0),
        .D(p_0_in[10]),
        .G(data_rd_ready_o),
        .GE(1'b1),
        .Q(data_o[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o[-1111111103] 
       (.CLR(1'b0),
        .D(p_0_in[9]),
        .G(data_rd_ready_o),
        .GE(1'b1),
        .Q(data_o[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o[-1111111104] 
       (.CLR(1'b0),
        .D(p_0_in[8]),
        .G(data_rd_ready_o),
        .GE(1'b1),
        .Q(data_o[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o[-1111111105] 
       (.CLR(1'b0),
        .D(p_0_in[7]),
        .G(data_rd_ready_o),
        .GE(1'b1),
        .Q(data_o[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o[-1111111106] 
       (.CLR(1'b0),
        .D(p_0_in[6]),
        .G(data_rd_ready_o),
        .GE(1'b1),
        .Q(data_o[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o[-1111111107] 
       (.CLR(1'b0),
        .D(p_0_in[5]),
        .G(data_rd_ready_o),
        .GE(1'b1),
        .Q(data_o[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o[-1111111108] 
       (.CLR(1'b0),
        .D(p_0_in[4]),
        .G(data_rd_ready_o),
        .GE(1'b1),
        .Q(data_o[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o[-1111111109] 
       (.CLR(1'b0),
        .D(p_0_in[3]),
        .G(data_rd_ready_o),
        .GE(1'b1),
        .Q(data_o[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o[-1111111110] 
       (.CLR(1'b0),
        .D(p_0_in[2]),
        .G(data_rd_ready_o),
        .GE(1'b1),
        .Q(data_o[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_o[-1111111111] 
       (.CLR(1'b0),
        .D(p_0_in[1]),
        .G(data_rd_ready_o),
        .GE(1'b1),
        .Q(data_o[0]));
  LUT2 #(
    .INIT(4'h8)) 
    data_rd_ready_o_i_1
       (.I0(data_rd_ready_s),
        .I1(reset_n_i),
        .O(data_rd_ready_o_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    data_rd_ready_o_reg
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(data_rd_ready_o_i_1_n_0),
        .Q(data_rd_ready_o),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    data_rd_ready_s_i_1
       (.I0(data_rd_ready_s_0),
        .I1(adc_cs_n_s_i_3_n_0),
        .I2(adc_sw_reset0_out),
        .I3(adc_cs_n_s_i_5_n_0),
        .I4(adc_cs_n_s_i_6_n_0),
        .I5(data_rd_ready_s),
        .O(data_rd_ready_s_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    data_rd_ready_s_i_2
       (.I0(adc_state_db[1]),
        .I1(adc_state_db[3]),
        .I2(adc_state_db[4]),
        .I3(adc_state_db[2]),
        .I4(adc_state_db[5]),
        .I5(adc_state_db[6]),
        .O(data_rd_ready_s_0));
  FDRE data_rd_ready_s_reg
       (.C(fpga_clk_i),
        .CE(1'b1),
        .D(data_rd_ready_s_i_1_n_0),
        .Q(data_rd_ready_s),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sclk_clk_cnt[0]_i_1 
       (.I0(sclk_clk_cnt_db[0]),
        .O(sclk_clk_cnt0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \sclk_clk_cnt[1]_i_1 
       (.I0(sclk_clk_cnt_db[1]),
        .I1(sclk_clk_cnt_db[0]),
        .O(sclk_clk_cnt0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \sclk_clk_cnt[2]_i_1 
       (.I0(sclk_clk_cnt_db[2]),
        .I1(sclk_clk_cnt_db[0]),
        .I2(sclk_clk_cnt_db[1]),
        .O(sclk_clk_cnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \sclk_clk_cnt[3]_i_1 
       (.I0(sclk_clk_cnt_db[3]),
        .I1(sclk_clk_cnt_db[1]),
        .I2(sclk_clk_cnt_db[0]),
        .I3(sclk_clk_cnt_db[2]),
        .O(sclk_clk_cnt0[3]));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \sclk_clk_cnt[4]_i_1 
       (.I0(\sclk_clk_cnt[4]_i_3_n_0 ),
        .I1(adc_state_pc_m1[1]),
        .I2(adc_state_pc_m1[0]),
        .I3(adc_state_pc_m1[3]),
        .I4(adc_state_pc_m1[2]),
        .I5(adc_clk_en),
        .O(sclk_clk_cnt));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \sclk_clk_cnt[4]_i_2 
       (.I0(sclk_clk_cnt_db[4]),
        .I1(sclk_clk_cnt_db[2]),
        .I2(sclk_clk_cnt_db[0]),
        .I3(sclk_clk_cnt_db[1]),
        .I4(sclk_clk_cnt_db[3]),
        .O(sclk_clk_cnt0[4]));
  LUT4 #(
    .INIT(16'hFEEF)) 
    \sclk_clk_cnt[4]_i_3 
       (.I0(adc_state_pc_m1[7]),
        .I1(adc_state_pc_m1[4]),
        .I2(adc_state_pc_m1[6]),
        .I3(adc_state_pc_m1[5]),
        .O(\sclk_clk_cnt[4]_i_3_n_0 ));
  FDSE \sclk_clk_cnt_reg[0] 
       (.C(adc_clk_i),
        .CE(adc_clk_en),
        .D(sclk_clk_cnt0[0]),
        .Q(sclk_clk_cnt_db[0]),
        .S(sclk_clk_cnt));
  FDRE \sclk_clk_cnt_reg[1] 
       (.C(adc_clk_i),
        .CE(adc_clk_en),
        .D(sclk_clk_cnt0[1]),
        .Q(sclk_clk_cnt_db[1]),
        .R(sclk_clk_cnt));
  FDSE \sclk_clk_cnt_reg[2] 
       (.C(adc_clk_i),
        .CE(adc_clk_en),
        .D(sclk_clk_cnt0[2]),
        .Q(sclk_clk_cnt_db[2]),
        .S(sclk_clk_cnt));
  FDSE \sclk_clk_cnt_reg[3] 
       (.C(adc_clk_i),
        .CE(adc_clk_en),
        .D(sclk_clk_cnt0[3]),
        .Q(sclk_clk_cnt_db[3]),
        .S(sclk_clk_cnt));
  FDRE \sclk_clk_cnt_reg[4] 
       (.C(adc_clk_i),
        .CE(adc_clk_en),
        .D(sclk_clk_cnt0[4]),
        .Q(sclk_clk_cnt_db[4]),
        .R(sclk_clk_cnt));
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
