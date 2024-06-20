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


// IP VLNV: xilinx.com:module_ref:AD7091R:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Jupyter_AD7091R_0_0 (
  fpga_clk_i,
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
  adc_state_db
);

input wire fpga_clk_i;
input wire adc_clk_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n_i, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n_i RST" *)
input wire reset_n_i;
output wire [15 : 0] data_o;
output wire data_rd_ready_o;
input wire adc_sdata_i;
output wire adc_sdata_t;
output wire adc_sclk_o;
output wire adc_cs_n_o;
output wire adc_convst_n_o;
output wire [4 : 0] sclk_clk_cnt_db;
output wire [6 : 0] adc_state_db;

  AD7091R #(
    .ADC_SW_RESET_STATE(8'B00000001),
    .ADC_IDLE_STATE(8'B00000010),
    .ADC_START_CNV_STATE(8'B00000100),
    .ADC_WAIT_CNV_DONE_STATE(8'B00001000),
    .ADC_WAIT_DATA_VALID_STATE(8'B00010000),
    .ADC_READ_CNV_RESULT(8'B00100000),
    .ADC_END_CNV_STATE(8'B01000000),
    .ADC_DATAREADY_STATE(8'B10000000),
    .FPGA_CLOCK_FREQ(100),
    .ADC_CYCLE_TIME(1),
    .ADC_CONVST_TIME(0.10000000000000001),
    .ADC_CONVERT_TIME(0.56000000000000005),
    .ADC_CYCLE_CNT(99),
    .ADC_CONVST_CNT(9),
    .ADC_CONVERT_CNT(55),
    .ADC_SCLK_PERIODS(5'B01101),
    .ADC_RESET_SCLK_PERIODS(4'B0011),
    .ADC_DATAREADY_WIDTH(5'B00001)
  ) inst (
    .fpga_clk_i(fpga_clk_i),
    .adc_clk_i(adc_clk_i),
    .reset_n_i(reset_n_i),
    .data_o(data_o),
    .data_rd_ready_o(data_rd_ready_o),
    .adc_sdata_i(adc_sdata_i),
    .adc_sdata_t(adc_sdata_t),
    .adc_sclk_o(adc_sclk_o),
    .adc_cs_n_o(adc_cs_n_o),
    .adc_convst_n_o(adc_convst_n_o),
    .sclk_clk_cnt_db(sclk_clk_cnt_db),
    .adc_state_db(adc_state_db)
  );
endmodule
