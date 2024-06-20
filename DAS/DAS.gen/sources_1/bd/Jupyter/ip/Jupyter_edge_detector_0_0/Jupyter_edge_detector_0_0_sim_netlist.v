// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu May  9 15:54:20 2024
// Host        : Predator-Offset running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Thesis/DAS_v2/DAS/DAS.gen/sources_1/bd/Jupyter/ip/Jupyter_edge_detector_0_0/Jupyter_edge_detector_0_0_sim_netlist.v
// Design      : Jupyter_edge_detector_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Jupyter_edge_detector_0_0,edge_detector,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "edge_detector,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module Jupyter_edge_detector_0_0
   (reset_n,
    clk,
    ps_gpio,
    pl_gpio);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input ps_gpio;
  output pl_gpio;

  wire clk;
  wire pl_gpio;
  wire ps_gpio;
  wire reset_n;

  Jupyter_edge_detector_0_0_edge_detector inst
       (.clk(clk),
        .pl_gpio(pl_gpio),
        .ps_gpio(ps_gpio),
        .reset_n(reset_n));
endmodule

(* ORIG_REF_NAME = "edge_detector" *) 
module Jupyter_edge_detector_0_0_edge_detector
   (pl_gpio,
    clk,
    ps_gpio,
    reset_n);
  output pl_gpio;
  input clk;
  input ps_gpio;
  input reset_n;

  wire clk;
  wire [26:1]data0;
  wire delay_counter0_carry__0_n_0;
  wire delay_counter0_carry__0_n_1;
  wire delay_counter0_carry__0_n_2;
  wire delay_counter0_carry__0_n_3;
  wire delay_counter0_carry__1_n_0;
  wire delay_counter0_carry__1_n_1;
  wire delay_counter0_carry__1_n_2;
  wire delay_counter0_carry__1_n_3;
  wire delay_counter0_carry__2_n_0;
  wire delay_counter0_carry__2_n_1;
  wire delay_counter0_carry__2_n_2;
  wire delay_counter0_carry__2_n_3;
  wire delay_counter0_carry__3_n_0;
  wire delay_counter0_carry__3_n_1;
  wire delay_counter0_carry__3_n_2;
  wire delay_counter0_carry__3_n_3;
  wire delay_counter0_carry__4_n_0;
  wire delay_counter0_carry__4_n_1;
  wire delay_counter0_carry__4_n_2;
  wire delay_counter0_carry__4_n_3;
  wire delay_counter0_carry__5_n_3;
  wire delay_counter0_carry_n_0;
  wire delay_counter0_carry_n_1;
  wire delay_counter0_carry_n_2;
  wire delay_counter0_carry_n_3;
  wire [26:0]p_0_in;
  wire pl_gpio;
  wire pl_gpio_s_i_1_n_0;
  wire pl_gpio_s_i_2_n_0;
  wire pl_gpio_s_i_3_n_0;
  wire pl_gpio_s_i_4_n_0;
  wire pl_gpio_s_i_5_n_0;
  wire pl_gpio_s_i_6_n_0;
  wire pl_gpio_s_i_7_n_0;
  wire pl_gpio_s_i_8_n_0;
  wire pl_gpio_s_i_9_n_0;
  wire ps_gpio;
  wire reset_n;
  wire [26:0]sel0;
  wire [3:1]NLW_delay_counter0_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_delay_counter0_carry__5_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry
       (.CI(1'b0),
        .CO({delay_counter0_carry_n_0,delay_counter0_carry_n_1,delay_counter0_carry_n_2,delay_counter0_carry_n_3}),
        .CYINIT(sel0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(sel0[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__0
       (.CI(delay_counter0_carry_n_0),
        .CO({delay_counter0_carry__0_n_0,delay_counter0_carry__0_n_1,delay_counter0_carry__0_n_2,delay_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(sel0[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__1
       (.CI(delay_counter0_carry__0_n_0),
        .CO({delay_counter0_carry__1_n_0,delay_counter0_carry__1_n_1,delay_counter0_carry__1_n_2,delay_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(sel0[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__2
       (.CI(delay_counter0_carry__1_n_0),
        .CO({delay_counter0_carry__2_n_0,delay_counter0_carry__2_n_1,delay_counter0_carry__2_n_2,delay_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(sel0[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__3
       (.CI(delay_counter0_carry__2_n_0),
        .CO({delay_counter0_carry__3_n_0,delay_counter0_carry__3_n_1,delay_counter0_carry__3_n_2,delay_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(sel0[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__4
       (.CI(delay_counter0_carry__3_n_0),
        .CO({delay_counter0_carry__4_n_0,delay_counter0_carry__4_n_1,delay_counter0_carry__4_n_2,delay_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(sel0[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__5
       (.CI(delay_counter0_carry__4_n_0),
        .CO({NLW_delay_counter0_carry__5_CO_UNCONNECTED[3:1],delay_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_delay_counter0_carry__5_O_UNCONNECTED[3:2],data0[26:25]}),
        .S({1'b0,1'b0,sel0[26:25]}));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_counter[0]_i_1 
       (.I0(sel0[0]),
        .I1(ps_gpio),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[10]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[10]),
        .I4(ps_gpio),
        .O(p_0_in[10]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[11]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[11]),
        .I4(ps_gpio),
        .O(p_0_in[11]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[12]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[12]),
        .I4(ps_gpio),
        .O(p_0_in[12]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[13]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[13]),
        .I4(ps_gpio),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[14]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[14]),
        .I4(ps_gpio),
        .O(p_0_in[14]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[15]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[15]),
        .I4(ps_gpio),
        .O(p_0_in[15]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[16]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[16]),
        .I4(ps_gpio),
        .O(p_0_in[16]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[17]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[17]),
        .I4(ps_gpio),
        .O(p_0_in[17]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[18]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[18]),
        .I4(ps_gpio),
        .O(p_0_in[18]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[19]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[19]),
        .I4(ps_gpio),
        .O(p_0_in[19]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[1]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[1]),
        .I4(ps_gpio),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[20]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[20]),
        .I4(ps_gpio),
        .O(p_0_in[20]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[21]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[21]),
        .I4(ps_gpio),
        .O(p_0_in[21]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[22]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[22]),
        .I4(ps_gpio),
        .O(p_0_in[22]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[23]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[23]),
        .I4(ps_gpio),
        .O(p_0_in[23]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[24]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[24]),
        .I4(ps_gpio),
        .O(p_0_in[24]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[25]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[25]),
        .I4(ps_gpio),
        .O(p_0_in[25]));
  LUT5 #(
    .INIT(32'h44444440)) 
    \delay_counter[26]_i_1 
       (.I0(ps_gpio),
        .I1(data0[26]),
        .I2(pl_gpio_s_i_3_n_0),
        .I3(pl_gpio_s_i_4_n_0),
        .I4(pl_gpio_s_i_5_n_0),
        .O(p_0_in[26]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[2]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[2]),
        .I4(ps_gpio),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[3]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[3]),
        .I4(ps_gpio),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[4]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[4]),
        .I4(ps_gpio),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[5]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[5]),
        .I4(ps_gpio),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[6]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[6]),
        .I4(ps_gpio),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[7]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[7]),
        .I4(ps_gpio),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[8]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[8]),
        .I4(ps_gpio),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \delay_counter[9]_i_1 
       (.I0(pl_gpio_s_i_3_n_0),
        .I1(pl_gpio_s_i_4_n_0),
        .I2(pl_gpio_s_i_5_n_0),
        .I3(data0[9]),
        .I4(ps_gpio),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[0]),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[10]),
        .Q(sel0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[11]),
        .Q(sel0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[12]),
        .Q(sel0[12]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[13]),
        .Q(sel0[13]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[14]),
        .Q(sel0[14]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[15]),
        .Q(sel0[15]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[16]),
        .Q(sel0[16]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[17]),
        .Q(sel0[17]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[18]),
        .Q(sel0[18]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[19]),
        .Q(sel0[19]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[1]),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[20]),
        .Q(sel0[20]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[21]),
        .Q(sel0[21]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[22]),
        .Q(sel0[22]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[23]),
        .Q(sel0[23]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[24]),
        .Q(sel0[24]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[25]),
        .Q(sel0[25]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[26]),
        .Q(sel0[26]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[2]),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[3]),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[4]),
        .Q(sel0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[5]),
        .Q(sel0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[6]),
        .Q(sel0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[7]),
        .Q(sel0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[8]),
        .Q(sel0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(p_0_in[9]),
        .Q(sel0[9]));
  LUT5 #(
    .INIT(32'hFFFEAAAA)) 
    pl_gpio_s_i_1
       (.I0(ps_gpio),
        .I1(pl_gpio_s_i_3_n_0),
        .I2(pl_gpio_s_i_4_n_0),
        .I3(pl_gpio_s_i_5_n_0),
        .I4(pl_gpio),
        .O(pl_gpio_s_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pl_gpio_s_i_2
       (.I0(reset_n),
        .O(pl_gpio_s_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    pl_gpio_s_i_3
       (.I0(sel0[6]),
        .I1(sel0[13]),
        .I2(sel0[16]),
        .I3(sel0[18]),
        .I4(pl_gpio_s_i_6_n_0),
        .O(pl_gpio_s_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    pl_gpio_s_i_4
       (.I0(sel0[8]),
        .I1(sel0[20]),
        .I2(sel0[3]),
        .I3(sel0[15]),
        .I4(pl_gpio_s_i_7_n_0),
        .O(pl_gpio_s_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    pl_gpio_s_i_5
       (.I0(sel0[0]),
        .I1(sel0[22]),
        .I2(sel0[4]),
        .I3(pl_gpio_s_i_8_n_0),
        .I4(pl_gpio_s_i_9_n_0),
        .O(pl_gpio_s_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    pl_gpio_s_i_6
       (.I0(sel0[26]),
        .I1(sel0[25]),
        .I2(sel0[19]),
        .I3(sel0[12]),
        .O(pl_gpio_s_i_6_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    pl_gpio_s_i_7
       (.I0(sel0[23]),
        .I1(sel0[1]),
        .I2(sel0[21]),
        .I3(sel0[5]),
        .O(pl_gpio_s_i_7_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    pl_gpio_s_i_8
       (.I0(sel0[24]),
        .I1(sel0[14]),
        .I2(sel0[7]),
        .I3(sel0[17]),
        .O(pl_gpio_s_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    pl_gpio_s_i_9
       (.I0(sel0[9]),
        .I1(sel0[10]),
        .I2(sel0[2]),
        .I3(sel0[11]),
        .O(pl_gpio_s_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pl_gpio_s_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(pl_gpio_s_i_2_n_0),
        .D(pl_gpio_s_i_1_n_0),
        .Q(pl_gpio));
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
