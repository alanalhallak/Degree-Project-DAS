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


// IP VLNV: xilinx.com:module_ref:dma_multiplexer:1.0
// IP Revision: 1

(* X_CORE_INFO = "dma_multiplexer,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "Jupyter_dma_multiplexer_0_1,dma_multiplexer,{}" *)
(* CORE_GENERATION_INFO = "Jupyter_dma_multiplexer_0_1,dma_multiplexer,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=dma_multiplexer,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DATA_WIDTH=16}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Jupyter_dma_multiplexer_0_1 (
  clk,
  reset_n,
  activate,
  dma_axis_tdata_1,
  dma_axis_tvalid_1,
  dma_axis_tready_1,
  dma_axis_tlast_1,
  dma_axis_tdata_2,
  dma_axis_tvalid_2,
  dma_axis_tready_2,
  dma_axis_tlast_2,
  dma_axis_tdata_3,
  dma_axis_tvalid_3,
  dma_axis_tready_3,
  dma_axis_tlast_3,
  dma_axis_tdata_4,
  dma_axis_tvalid_4,
  dma_axis_tready_4,
  dma_axis_tlast_4,
  dma_axis_tdata,
  dma_axis_tvalid,
  dma_axis_tready,
  dma_axis_tlast
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF dma_axis:dma_axis_1:dma_axis_2:dma_axis_3:dma_axis_4, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *)
input wire reset_n;
input wire activate;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_1 TDATA" *)
input wire [255 : 0] dma_axis_tdata_1;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_1 TVALID" *)
input wire dma_axis_tvalid_1;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_1 TREADY" *)
output wire dma_axis_tready_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma_axis_1, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_1 TLAST" *)
input wire dma_axis_tlast_1;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_2 TDATA" *)
input wire [255 : 0] dma_axis_tdata_2;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_2 TVALID" *)
input wire dma_axis_tvalid_2;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_2 TREADY" *)
output wire dma_axis_tready_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma_axis_2, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_2 TLAST" *)
input wire dma_axis_tlast_2;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_3 TDATA" *)
input wire [255 : 0] dma_axis_tdata_3;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_3 TVALID" *)
input wire dma_axis_tvalid_3;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_3 TREADY" *)
output wire dma_axis_tready_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma_axis_3, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_3 TLAST" *)
input wire dma_axis_tlast_3;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_4 TDATA" *)
input wire [255 : 0] dma_axis_tdata_4;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_4 TVALID" *)
input wire dma_axis_tvalid_4;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_4 TREADY" *)
output wire dma_axis_tready_4;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma_axis_4, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis_4 TLAST" *)
input wire dma_axis_tlast_4;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis TDATA" *)
output wire [255 : 0] dma_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis TVALID" *)
output wire dma_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis TREADY" *)
input wire dma_axis_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma_axis, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma_axis TLAST" *)
output wire dma_axis_tlast;

  dma_multiplexer #(
    .DATA_WIDTH(16)
  ) inst (
    .clk(clk),
    .reset_n(reset_n),
    .activate(activate),
    .dma_axis_tdata_1(dma_axis_tdata_1),
    .dma_axis_tvalid_1(dma_axis_tvalid_1),
    .dma_axis_tready_1(dma_axis_tready_1),
    .dma_axis_tlast_1(dma_axis_tlast_1),
    .dma_axis_tdata_2(dma_axis_tdata_2),
    .dma_axis_tvalid_2(dma_axis_tvalid_2),
    .dma_axis_tready_2(dma_axis_tready_2),
    .dma_axis_tlast_2(dma_axis_tlast_2),
    .dma_axis_tdata_3(dma_axis_tdata_3),
    .dma_axis_tvalid_3(dma_axis_tvalid_3),
    .dma_axis_tready_3(dma_axis_tready_3),
    .dma_axis_tlast_3(dma_axis_tlast_3),
    .dma_axis_tdata_4(dma_axis_tdata_4),
    .dma_axis_tvalid_4(dma_axis_tvalid_4),
    .dma_axis_tready_4(dma_axis_tready_4),
    .dma_axis_tlast_4(dma_axis_tlast_4),
    .dma_axis_tdata(dma_axis_tdata),
    .dma_axis_tvalid(dma_axis_tvalid),
    .dma_axis_tready(dma_axis_tready),
    .dma_axis_tlast(dma_axis_tlast)
  );
endmodule
