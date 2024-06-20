// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu May  9 15:54:20 2024
// Host        : Predator-Offset running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Thesis/DAS_v2/DAS/DAS.gen/sources_1/bd/Jupyter/ip/Jupyter_AD7091R_0_0/Jupyter_AD7091R_0_0_stub.v
// Design      : Jupyter_AD7091R_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AD7091R,Vivado 2023.2" *)
module Jupyter_AD7091R_0_0(fpga_clk_i, adc_clk_i, reset_n_i, data_o, 
  data_rd_ready_o, adc_sdata_i, adc_sdata_t, adc_sclk_o, adc_cs_n_o, adc_convst_n_o, 
  sclk_clk_cnt_db, adc_state_db)
/* synthesis syn_black_box black_box_pad_pin="reset_n_i,data_o[15:0],adc_sdata_i,adc_sdata_t,adc_sclk_o,adc_cs_n_o,adc_convst_n_o,sclk_clk_cnt_db[4:0],adc_state_db[6:0]" */
/* synthesis syn_force_seq_prim="fpga_clk_i" */
/* synthesis syn_force_seq_prim="adc_clk_i" */
/* synthesis syn_force_seq_prim="data_rd_ready_o" */;
  input fpga_clk_i /* synthesis syn_isclock = 1 */;
  input adc_clk_i /* synthesis syn_isclock = 1 */;
  input reset_n_i;
  output [15:0]data_o;
  output data_rd_ready_o /* synthesis syn_isclock = 1 */;
  input adc_sdata_i;
  output adc_sdata_t;
  output adc_sclk_o;
  output adc_cs_n_o;
  output adc_convst_n_o;
  output [4:0]sclk_clk_cnt_db;
  output [6:0]adc_state_db;
endmodule
