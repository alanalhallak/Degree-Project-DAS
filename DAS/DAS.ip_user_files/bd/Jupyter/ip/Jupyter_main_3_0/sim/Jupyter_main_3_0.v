// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:main:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Jupyter_main_3_0 (
  clk,
  areset_n,
  activate,
  fifo_resetn,
  data_o,
  data_ready,
  fifo_m_axis_tdata,
  fifo_m_axis_tvalid,
  fifo_m_axis_tready,
  fifo_s_axis_tdata,
  fifo_s_axis_tvalid,
  fifo_s_axis_tready,
  axis_data_count,
  dma_axis_tdata,
  dma_axis_tvalid,
  dma_axis_tready,
  dma_axis_tlast
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF dma_axis:fifo_m_axis:fifo_s_axis, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire areset_n;
input wire activate;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 fifo_resetn RST" *)
output wire fifo_resetn;
input wire [15 : 0] data_o;
input wire data_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fifo_m_axis TDATA" *)
output wire [255 : 0] fifo_m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fifo_m_axis TVALID" *)
output wire fifo_m_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_m_axis, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fifo_m_axis TREADY" *)
input wire fifo_m_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fifo_s_axis TDATA" *)
input wire [255 : 0] fifo_s_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fifo_s_axis TVALID" *)
input wire fifo_s_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_s_axis, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fifo_s_axis TREADY" *)
output wire fifo_s_axis_tready;
input wire [11 : 0] axis_data_count;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis TDATA" *)
output wire [255 : 0] dma_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis TVALID" *)
output wire dma_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis TREADY" *)
input wire dma_axis_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma_axis, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis TLAST" *)
output wire dma_axis_tlast;

  main #(
    .DATA_WIDTH(16),
    .FIFO_SIZE(14)
  ) inst (
    .clk(clk),
    .areset_n(areset_n),
    .activate(activate),
    .fifo_resetn(fifo_resetn),
    .data_o(data_o),
    .data_ready(data_ready),
    .fifo_m_axis_tdata(fifo_m_axis_tdata),
    .fifo_m_axis_tvalid(fifo_m_axis_tvalid),
    .fifo_m_axis_tready(fifo_m_axis_tready),
    .fifo_s_axis_tdata(fifo_s_axis_tdata),
    .fifo_s_axis_tvalid(fifo_s_axis_tvalid),
    .fifo_s_axis_tready(fifo_s_axis_tready),
    .axis_data_count(axis_data_count),
    .dma_axis_tdata(dma_axis_tdata),
    .dma_axis_tvalid(dma_axis_tvalid),
    .dma_axis_tready(dma_axis_tready),
    .dma_axis_tlast(dma_axis_tlast)
  );
endmodule
