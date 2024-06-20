// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon May 13 16:52:49 2024
// Host        : Predator-Offset running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Thesis/DAS_v2/DAS/DAS.gen/sources_1/bd/Jupyter/ip/Jupyter_dma_multiplexer_0_1/Jupyter_dma_multiplexer_0_1_stub.v
// Design      : Jupyter_dma_multiplexer_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dma_multiplexer,Vivado 2023.2" *)
module Jupyter_dma_multiplexer_0_1(clk, reset_n, activate, dma_axis_tdata_1, 
  dma_axis_tvalid_1, dma_axis_tready_1, dma_axis_tlast_1, dma_axis_tdata_2, 
  dma_axis_tvalid_2, dma_axis_tready_2, dma_axis_tlast_2, dma_axis_tdata_3, 
  dma_axis_tvalid_3, dma_axis_tready_3, dma_axis_tlast_3, dma_axis_tdata_4, 
  dma_axis_tvalid_4, dma_axis_tready_4, dma_axis_tlast_4, dma_axis_tdata, dma_axis_tvalid, 
  dma_axis_tready, dma_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="reset_n,activate,dma_axis_tdata_1[255:0],dma_axis_tvalid_1,dma_axis_tready_1,dma_axis_tlast_1,dma_axis_tdata_2[255:0],dma_axis_tvalid_2,dma_axis_tready_2,dma_axis_tlast_2,dma_axis_tdata_3[255:0],dma_axis_tvalid_3,dma_axis_tready_3,dma_axis_tlast_3,dma_axis_tdata_4[255:0],dma_axis_tvalid_4,dma_axis_tready_4,dma_axis_tlast_4,dma_axis_tdata[255:0],dma_axis_tvalid,dma_axis_tready,dma_axis_tlast" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset_n;
  input activate;
  input [255:0]dma_axis_tdata_1;
  input dma_axis_tvalid_1;
  output dma_axis_tready_1;
  input dma_axis_tlast_1;
  input [255:0]dma_axis_tdata_2;
  input dma_axis_tvalid_2;
  output dma_axis_tready_2;
  input dma_axis_tlast_2;
  input [255:0]dma_axis_tdata_3;
  input dma_axis_tvalid_3;
  output dma_axis_tready_3;
  input dma_axis_tlast_3;
  input [255:0]dma_axis_tdata_4;
  input dma_axis_tvalid_4;
  output dma_axis_tready_4;
  input dma_axis_tlast_4;
  output [255:0]dma_axis_tdata;
  output dma_axis_tvalid;
  input dma_axis_tready;
  output dma_axis_tlast;
endmodule
