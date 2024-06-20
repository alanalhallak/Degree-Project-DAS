// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu May  9 15:54:37 2024
// Host        : Predator-Offset running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Thesis/DAS_v2/DAS/DAS.gen/sources_1/bd/Jupyter/ip/Jupyter_fifo_generator_0_0/Jupyter_fifo_generator_0_0_stub.v
// Design      : Jupyter_fifo_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *)
module Jupyter_fifo_generator_0_0(wr_rst_busy, rd_rst_busy, s_aclk, s_aresetn, 
  s_axis_tvalid, s_axis_tready, s_axis_tdata, s_axis_tuser, m_axis_tvalid, m_axis_tready, 
  m_axis_tdata, m_axis_tuser, axis_data_count)
/* synthesis syn_black_box black_box_pad_pin="wr_rst_busy,rd_rst_busy,s_aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[255:0],s_axis_tuser[3:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[255:0],m_axis_tuser[3:0],axis_data_count[11:0]" */
/* synthesis syn_force_seq_prim="s_aclk" */;
  output wr_rst_busy;
  output rd_rst_busy;
  input s_aclk /* synthesis syn_isclock = 1 */;
  input s_aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [255:0]s_axis_tdata;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [255:0]m_axis_tdata;
  output [3:0]m_axis_tuser;
  output [11:0]axis_data_count;
endmodule
