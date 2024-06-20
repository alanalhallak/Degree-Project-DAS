//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Thu Jun  6 15:24:43 2024
//Host        : Predator-Offset running 64-bit major release  (build 9200)
//Command     : generate_target Jupyter_wrapper.bd
//Design      : Jupyter_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Jupyter_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    adc_convst_n_o_0,
    adc_convst_n_o_1,
    adc_convst_n_o_2,
    adc_convst_n_o_3,
    adc_cs_n_o_0,
    adc_cs_n_o_1,
    adc_cs_n_o_2,
    adc_cs_n_o_3,
    adc_sclk_o_0,
    adc_sclk_o_1,
    adc_sclk_o_2,
    adc_sclk_o_3,
    adc_sdata_i_0,
    adc_sdata_i_1,
    adc_sdata_i_2,
    adc_sdata_i_3,
    adc_sdata_t_0,
    adc_sdata_t_1,
    adc_sdata_t_2,
    adc_sdata_t_3,
    gpio_io_o_0,
    ldac_n_0,
    mosi_0,
    sclk_0,
    ss_n_0);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output adc_convst_n_o_0;
  output adc_convst_n_o_1;
  output adc_convst_n_o_2;
  output adc_convst_n_o_3;
  output adc_cs_n_o_0;
  output adc_cs_n_o_1;
  output adc_cs_n_o_2;
  output adc_cs_n_o_3;
  output adc_sclk_o_0;
  output adc_sclk_o_1;
  output adc_sclk_o_2;
  output adc_sclk_o_3;
  input adc_sdata_i_0;
  input adc_sdata_i_1;
  input adc_sdata_i_2;
  input adc_sdata_i_3;
  output adc_sdata_t_0;
  output adc_sdata_t_1;
  output adc_sdata_t_2;
  output adc_sdata_t_3;
  output [0:0]gpio_io_o_0;
  output ldac_n_0;
  output mosi_0;
  output sclk_0;
  output [0:0]ss_n_0;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire adc_convst_n_o_0;
  wire adc_convst_n_o_1;
  wire adc_convst_n_o_2;
  wire adc_convst_n_o_3;
  wire adc_cs_n_o_0;
  wire adc_cs_n_o_1;
  wire adc_cs_n_o_2;
  wire adc_cs_n_o_3;
  wire adc_sclk_o_0;
  wire adc_sclk_o_1;
  wire adc_sclk_o_2;
  wire adc_sclk_o_3;
  wire adc_sdata_i_0;
  wire adc_sdata_i_1;
  wire adc_sdata_i_2;
  wire adc_sdata_i_3;
  wire adc_sdata_t_0;
  wire adc_sdata_t_1;
  wire adc_sdata_t_2;
  wire adc_sdata_t_3;
  wire [0:0]gpio_io_o_0;
  wire ldac_n_0;
  wire mosi_0;
  wire sclk_0;
  wire [0:0]ss_n_0;

  Jupyter Jupyter_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .adc_convst_n_o_0(adc_convst_n_o_0),
        .adc_convst_n_o_1(adc_convst_n_o_1),
        .adc_convst_n_o_2(adc_convst_n_o_2),
        .adc_convst_n_o_3(adc_convst_n_o_3),
        .adc_cs_n_o_0(adc_cs_n_o_0),
        .adc_cs_n_o_1(adc_cs_n_o_1),
        .adc_cs_n_o_2(adc_cs_n_o_2),
        .adc_cs_n_o_3(adc_cs_n_o_3),
        .adc_sclk_o_0(adc_sclk_o_0),
        .adc_sclk_o_1(adc_sclk_o_1),
        .adc_sclk_o_2(adc_sclk_o_2),
        .adc_sclk_o_3(adc_sclk_o_3),
        .adc_sdata_i_0(adc_sdata_i_0),
        .adc_sdata_i_1(adc_sdata_i_1),
        .adc_sdata_i_2(adc_sdata_i_2),
        .adc_sdata_i_3(adc_sdata_i_3),
        .adc_sdata_t_0(adc_sdata_t_0),
        .adc_sdata_t_1(adc_sdata_t_1),
        .adc_sdata_t_2(adc_sdata_t_2),
        .adc_sdata_t_3(adc_sdata_t_3),
        .gpio_io_o_0(gpio_io_o_0),
        .ldac_n_0(ldac_n_0),
        .mosi_0(mosi_0),
        .sclk_0(sclk_0),
        .ss_n_0(ss_n_0));
endmodule
