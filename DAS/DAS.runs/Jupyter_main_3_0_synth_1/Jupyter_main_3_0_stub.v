// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jun  6 15:29:37 2024
// Host        : Predator-Offset running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Jupyter_main_3_0_stub.v
// Design      : Jupyter_main_3_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "main,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, areset_n, activate, fifo_resetn, data_o, 
  data_ready, fifo_m_axis_tdata, fifo_m_axis_tvalid, fifo_m_axis_tready, fifo_s_axis_tdata, 
  fifo_s_axis_tvalid, fifo_s_axis_tready, axis_data_count, dma_axis_tdata, dma_axis_tvalid, 
  dma_axis_tready, dma_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="areset_n,activate,fifo_resetn,data_o[15:0],data_ready,fifo_m_axis_tdata[255:0],fifo_m_axis_tvalid,fifo_m_axis_tready,fifo_s_axis_tdata[255:0],fifo_s_axis_tvalid,fifo_s_axis_tready,axis_data_count[11:0],dma_axis_tdata[255:0],dma_axis_tvalid,dma_axis_tready,dma_axis_tlast" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input areset_n;
  input activate;
  output fifo_resetn;
  input [15:0]data_o;
  input data_ready;
  output [255:0]fifo_m_axis_tdata;
  output fifo_m_axis_tvalid;
  input fifo_m_axis_tready;
  input [255:0]fifo_s_axis_tdata;
  input fifo_s_axis_tvalid;
  output fifo_s_axis_tready;
  input [11:0]axis_data_count;
  output [255:0]dma_axis_tdata;
  output dma_axis_tvalid;
  input dma_axis_tready;
  output dma_axis_tlast;
endmodule
