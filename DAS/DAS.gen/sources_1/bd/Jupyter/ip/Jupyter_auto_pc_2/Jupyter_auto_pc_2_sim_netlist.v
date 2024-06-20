// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu May  9 15:54:30 2024
// Host        : Predator-Offset running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top Jupyter_auto_pc_2 -prefix
//               Jupyter_auto_pc_2_ Jupyter_auto_pc_2_sim_netlist.v
// Design      : Jupyter_auto_pc_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Jupyter_auto_pc_2,axi_protocol_converter_v2_1_29_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_29_axi_protocol_converter,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module Jupyter_auto_pc_2
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 64, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN Jupyter_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_bready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_rready_UNCONNECTED;
  wire NLW_inst_s_axi_arready_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_inst_s_axi_rvalid_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "0" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "0" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b011" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Jupyter_auto_pc_2_axi_protocol_converter_v2_1_29_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(NLW_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[3:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock({NLW_inst_m_axi_awlock_UNCONNECTED[1],\^m_axi_awlock }),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b1),
        .m_axi_rready(NLW_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,s_axi_awlen[3:0]}),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(NLW_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module Jupyter_auto_pc_2_axi_data_fifo_v2_1_28_axic_fifo
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  Jupyter_auto_pc_2_axi_data_fifo_v2_1_28_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(m_axi_awvalid_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module Jupyter_auto_pc_2_axi_data_fifo_v2_1_28_fifo_gen
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire full;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [4:4]NLW_fifo_gen_inst_dout_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AREADY_I_i_1
       (.I0(aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h22722272FFFF2272)) 
    S_AXI_AREADY_I_i_2
       (.I0(E),
        .I1(s_axi_awvalid),
        .I2(m_axi_awready),
        .I3(S_AXI_AREADY_I_i_3_n_0),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    S_AXI_AREADY_I_i_3
       (.I0(m_axi_awvalid_0),
        .I1(full),
        .I2(command_ongoing),
        .O(S_AXI_AREADY_I_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00888A88)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_awvalid_0),
        .I2(full),
        .I3(command_ongoing),
        .I4(m_axi_awready),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'hF222FFFFD000D000)) 
    command_ongoing_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(E),
        .I3(s_axi_awvalid),
        .I4(command_ongoing_i_2_n_0),
        .I5(command_ongoing),
        .O(\areset_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    command_ongoing_i_2
       (.I0(m_axi_awready),
        .I1(command_ongoing),
        .I2(full),
        .I3(m_axi_awvalid_0),
        .O(command_ongoing_i_2_n_0));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "5" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "5" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  Jupyter_auto_pc_2_fifo_generator_v13_2_9 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({1'b0,m_axi_awlen}),
        .dout({NLW_fifo_gen_inst_dout_UNCONNECTED[4],dout}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_1
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(cmd_push));
  LUT6 #(
    .INIT(64'hE4E4CC664E4ECC66)) 
    \length_counter_1[1]_i_1 
       (.I0(empty_fwft_i_reg),
        .I1(length_counter_1_reg[1]),
        .I2(dout[1]),
        .I3(length_counter_1_reg[0]),
        .I4(first_mi_word),
        .I5(dout[0]),
        .O(length_counter_1_reg_1_sn_1));
  LUT3 #(
    .INIT(8'hA2)) 
    m_axi_awvalid_INST_0
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_axi_wready_INST_0
       (.I0(empty),
        .I1(s_axi_wvalid),
        .I2(m_axi_wready),
        .O(empty_fwft_i_reg));
endmodule

module Jupyter_auto_pc_2_axi_protocol_converter_v2_1_29_a_axi3_conv
   (dout,
    empty,
    SR,
    m_axi_awlen,
    m_axi_awlock,
    E,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_awaddr,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    aclk,
    rd_en,
    s_axi_awlock,
    aresetn,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output [3:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [0:0]E;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input aclk;
  input rd_en;
  input [0:0]s_axi_awlock;
  input aresetn;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input s_axi_awvalid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;

  wire [0:0]E;
  wire [0:0]SR;
  wire \USE_BURSTS.cmd_queue_n_11 ;
  wire \USE_BURSTS.cmd_queue_n_12 ;
  wire \USE_BURSTS.cmd_queue_n_6 ;
  wire aclk;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block_reg_n_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[0]),
        .Q(m_axi_awaddr[0]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[10]),
        .Q(m_axi_awaddr[10]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[11]),
        .Q(m_axi_awaddr[11]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[12]),
        .Q(m_axi_awaddr[12]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[13]),
        .Q(m_axi_awaddr[13]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[14]),
        .Q(m_axi_awaddr[14]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[15]),
        .Q(m_axi_awaddr[15]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[16]),
        .Q(m_axi_awaddr[16]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[17]),
        .Q(m_axi_awaddr[17]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[18]),
        .Q(m_axi_awaddr[18]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[19]),
        .Q(m_axi_awaddr[19]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[1]),
        .Q(m_axi_awaddr[1]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[20]),
        .Q(m_axi_awaddr[20]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[21]),
        .Q(m_axi_awaddr[21]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[22]),
        .Q(m_axi_awaddr[22]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[23]),
        .Q(m_axi_awaddr[23]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[24]),
        .Q(m_axi_awaddr[24]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[25]),
        .Q(m_axi_awaddr[25]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[26]),
        .Q(m_axi_awaddr[26]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[27]),
        .Q(m_axi_awaddr[27]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[28]),
        .Q(m_axi_awaddr[28]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[29]),
        .Q(m_axi_awaddr[29]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[2]),
        .Q(m_axi_awaddr[2]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[30]),
        .Q(m_axi_awaddr[30]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[31]),
        .Q(m_axi_awaddr[31]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[3]),
        .Q(m_axi_awaddr[3]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[4]),
        .Q(m_axi_awaddr[4]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[5]),
        .Q(m_axi_awaddr[5]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[6]),
        .Q(m_axi_awaddr[6]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[7]),
        .Q(m_axi_awaddr[7]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[8]),
        .Q(m_axi_awaddr[8]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[9]),
        .Q(m_axi_awaddr[9]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[0]),
        .Q(m_axi_awburst[0]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[1]),
        .Q(m_axi_awburst[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[0]),
        .Q(m_axi_awlen[0]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[1]),
        .Q(m_axi_awlen[1]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[2]),
        .Q(m_axi_awlen[2]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[3]),
        .Q(m_axi_awlen[3]),
        .R(SR));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlock),
        .Q(m_axi_awlock),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_11 ),
        .Q(E),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[0]),
        .Q(m_axi_awsize[0]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[1]),
        .Q(m_axi_awsize[1]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[2]),
        .Q(m_axi_awsize[2]),
        .R(SR));
  Jupyter_auto_pc_2_axi_data_fifo_v2_1_28_axic_fifo \USE_BURSTS.cmd_queue 
       (.E(E),
        .Q(areset_d),
        .SR(SR),
        .S_AXI_AREADY_I_reg(\USE_BURSTS.cmd_queue_n_11 ),
        .aclk(aclk),
        .\areset_d_reg[1] (\USE_BURSTS.cmd_queue_n_12 ),
        .aresetn(aresetn),
        .aresetn_0(\USE_BURSTS.cmd_queue_n_6 ),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(cmd_push_block_reg_n_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_6 ),
        .Q(cmd_push_block_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_12 ),
        .Q(command_ongoing),
        .R(SR));
endmodule

module Jupyter_auto_pc_2_axi_protocol_converter_v2_1_29_axi3_conv
   (m_axi_awlen,
    m_axi_awaddr,
    E,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_wlast,
    aresetn,
    m_axi_awready,
    aclk,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    m_axi_wready,
    s_axi_wvalid,
    s_axi_awvalid);
  output [3:0]m_axi_awlen;
  output [31:0]m_axi_awaddr;
  output [0:0]E;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output m_axi_wlast;
  input aresetn;
  input m_axi_awready;
  input aclk;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input m_axi_wready;
  input s_axi_wvalid;
  input s_axi_awvalid;

  wire [0:0]E;
  wire \USE_BURSTS.cmd_queue/inst/empty ;
  wire [3:0]\USE_WRITE.wr_cmd_length ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire \USE_WRITE.write_addr_inst_n_13 ;
  wire \USE_WRITE.write_addr_inst_n_5 ;
  wire aclk;
  wire aresetn;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  Jupyter_auto_pc_2_axi_protocol_converter_v2_1_29_a_axi3_conv \USE_WRITE.write_addr_inst 
       (.E(E),
        .SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(\USE_WRITE.write_addr_inst_n_13 ),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  Jupyter_auto_pc_2_axi_protocol_converter_v2_1_29_w_axi3_conv \USE_WRITE.write_data_inst 
       (.SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .first_mi_word(first_mi_word),
        .\length_counter_1_reg[1]_0 (length_counter_1_reg),
        .\length_counter_1_reg[1]_1 (\USE_WRITE.write_addr_inst_n_13 ),
        .\length_counter_1_reg[2]_0 (empty_fwft_i_reg),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "0" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b011" *) 
(* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) (* P_INCR = "2'b01" *) 
(* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module Jupyter_auto_pc_2_axi_protocol_converter_v2_1_29_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wstrb[7:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Jupyter_auto_pc_2_axi_protocol_converter_v2_1_29_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.E(s_axi_awready),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty_fwft_i_reg(s_axi_wready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(\^m_axi_awlock ),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module Jupyter_auto_pc_2_axi_protocol_converter_v2_1_29_w_axi3_conv
   (\length_counter_1_reg[1]_0 ,
    first_mi_word,
    rd_en,
    m_axi_wlast,
    SR,
    aclk,
    \length_counter_1_reg[1]_1 ,
    \length_counter_1_reg[2]_0 ,
    m_axi_wready,
    s_axi_wvalid,
    empty,
    dout);
  output [1:0]\length_counter_1_reg[1]_0 ;
  output first_mi_word;
  output rd_en;
  output m_axi_wlast;
  input [0:0]SR;
  input aclk;
  input \length_counter_1_reg[1]_1 ;
  input \length_counter_1_reg[2]_0 ;
  input m_axi_wready;
  input s_axi_wvalid;
  input empty;
  input [3:0]dout;

  wire [0:0]SR;
  wire aclk;
  wire [3:0]dout;
  wire empty;
  wire first_mi_word;
  wire first_mi_word_i_1_n_0;
  wire \length_counter_1[0]_i_1_n_0 ;
  wire \length_counter_1[2]_i_1_n_0 ;
  wire \length_counter_1[3]_i_1_n_0 ;
  wire \length_counter_1[4]_i_1_n_0 ;
  wire \length_counter_1[4]_i_2_n_0 ;
  wire \length_counter_1[5]_i_1_n_0 ;
  wire \length_counter_1[6]_i_1_n_0 ;
  wire \length_counter_1[7]_i_1_n_0 ;
  wire [7:2]length_counter_1_reg;
  wire [1:0]\length_counter_1_reg[1]_0 ;
  wire \length_counter_1_reg[1]_1 ;
  wire \length_counter_1_reg[2]_0 ;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wlast_INST_0_i_2_n_0;
  wire m_axi_wlast_INST_0_i_3_n_0;
  wire m_axi_wready;
  wire rd_en;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'h0000CC000000CC04)) 
    fifo_gen_inst_i_2
       (.I0(length_counter_1_reg[7]),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[5]),
        .I3(first_mi_word),
        .I4(m_axi_wlast_INST_0_i_1_n_0),
        .I5(length_counter_1_reg[6]),
        .O(rd_en));
  LUT6 #(
    .INIT(64'h0F0FFFFF00010000)) 
    first_mi_word_i_1
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(length_counter_1_reg[6]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(first_mi_word),
        .O(first_mi_word_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    first_mi_word_reg
       (.C(aclk),
        .CE(1'b1),
        .D(first_mi_word_i_1_n_0),
        .Q(first_mi_word),
        .S(SR));
  LUT6 #(
    .INIT(64'hF2FFFFFF07000000)) 
    \length_counter_1[0]_i_1 
       (.I0(first_mi_word),
        .I1(dout[0]),
        .I2(empty),
        .I3(s_axi_wvalid),
        .I4(m_axi_wready),
        .I5(\length_counter_1_reg[1]_0 [0]),
        .O(\length_counter_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \length_counter_1[2]_i_1 
       (.I0(\length_counter_1_reg[2]_0 ),
        .I1(m_axi_wlast_INST_0_i_3_n_0),
        .I2(length_counter_1_reg[2]),
        .I3(first_mi_word),
        .I4(dout[2]),
        .O(\length_counter_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8B474B4)) 
    \length_counter_1[3]_i_1 
       (.I0(\length_counter_1[4]_i_2_n_0 ),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[3]),
        .I3(first_mi_word),
        .I4(dout[3]),
        .O(\length_counter_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A3A35AAAAAAAA)) 
    \length_counter_1[4]_i_1 
       (.I0(length_counter_1_reg[4]),
        .I1(dout[3]),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[3]),
        .I4(\length_counter_1[4]_i_2_n_0 ),
        .I5(\length_counter_1_reg[2]_0 ),
        .O(\length_counter_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \length_counter_1[4]_i_2 
       (.I0(m_axi_wlast_INST_0_i_3_n_0),
        .I1(length_counter_1_reg[2]),
        .I2(first_mi_word),
        .I3(dout[2]),
        .O(\length_counter_1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0000FFF70808)) 
    \length_counter_1[5]_i_1 
       (.I0(m_axi_wready),
        .I1(s_axi_wvalid),
        .I2(empty),
        .I3(first_mi_word),
        .I4(length_counter_1_reg[5]),
        .I5(m_axi_wlast_INST_0_i_1_n_0),
        .O(\length_counter_1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3EFF0D00)) 
    \length_counter_1[6]_i_1 
       (.I0(length_counter_1_reg[5]),
        .I1(first_mi_word),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(\length_counter_1_reg[2]_0 ),
        .I4(length_counter_1_reg[6]),
        .O(\length_counter_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F3EFFFF30310000)) 
    \length_counter_1[7]_i_1 
       (.I0(length_counter_1_reg[6]),
        .I1(m_axi_wlast_INST_0_i_1_n_0),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[5]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(length_counter_1_reg[7]),
        .O(\length_counter_1[7]_i_1_n_0 ));
  FDRE \length_counter_1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[0]_i_1_n_0 ),
        .Q(\length_counter_1_reg[1]_0 [0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1_reg[1]_1 ),
        .Q(\length_counter_1_reg[1]_0 [1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[2]_i_1_n_0 ),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[3]_i_1_n_0 ),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[4]_i_1_n_0 ),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[5]_i_1_n_0 ),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[6]_i_1_n_0 ),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[7]_i_1_n_0 ),
        .Q(length_counter_1_reg[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00F000F1)) 
    m_axi_wlast_INST_0
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(first_mi_word),
        .I3(m_axi_wlast_INST_0_i_1_n_0),
        .I4(length_counter_1_reg[6]),
        .O(m_axi_wlast));
  LUT6 #(
    .INIT(64'hFFFFFFFEFCFCFFFE)) 
    m_axi_wlast_INST_0_i_1
       (.I0(length_counter_1_reg[4]),
        .I1(m_axi_wlast_INST_0_i_2_n_0),
        .I2(m_axi_wlast_INST_0_i_3_n_0),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_2
       (.I0(dout[3]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[3]),
        .O(m_axi_wlast_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    m_axi_wlast_INST_0_i_3
       (.I0(\length_counter_1_reg[1]_0 [1]),
        .I1(dout[1]),
        .I2(\length_counter_1_reg[1]_0 [0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(m_axi_wlast_INST_0_i_3_n_0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module Jupyter_auto_pc_2_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gcDjvJ18gZEH8C+LHMq/N7AaYWSyHgvjIQn585rdUOTVX2orO9n8j6LNiga3BYkS91+lbHAjAieW
oD/8serz9uvKt9uVuyMIE6oOFFScZR6q2wQk1d1Qzq717+8yPCwgBT9HIhfJIHLujHt+cA2l2L5t
tux9aNBdVKkk1MHv7yY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
exhH3ieiewq538XhQByQWj7PMh1Y+pzdDw+4bALHgOXUMTZleYL0Pvhip/E5VwYBOb3/5i/ElWf3
Vm6OeE9b1Jj8xb7x10akeyRaNdCJYAtTqgb7gFS/crjXeoaYKJgLqCiyaB7LdWR9BiZOWqxEPSxe
/lr/8F8psti0kra2jACCbz94iU3qDIdZWH5kqd21Pp2/YczWpJBQzh+bBz9V+EuMAeZIzY3x2GZy
jOMZPemqiqFhSEcDf09mKK3xKEUxE+TPz82hd9ZrF5OjFst6mWMVye10lkzmY5Hmmx5Y/PVgPx3R
fN0tTAZfIDGH/YUu758U8UWOIcMzBHF6rytqmg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Umfm0FNxPKfdryB9QccnkcrzqkPtalTpE+R0M3D9kxaXOa1YOGT+9jGc1TRZMLcN5NyGN3UIZcH4
LWFVfGg80k9RmFHBDZaHzOXaomQhoPSO++ArXvmvO5zgttfCHEl7jypYkuPgwfQMfjK7YII9Deex
KOC8JtqORVWmhq47cpQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cm7WeJnXtFlUdJuJH7wHYfinJTaBhpglyFWD2YwmOuS4fmVA4nXbX0IMaU1F1WGO1VK25KlFf8Nm
w8L6BJ6ZpH12xPIl3J17rMT4/3KHv9tpBWqeC080GeV5nISo8JrhOpIKa4+HBHZ6lYLce8LBAu/Z
EiBmDqw22aLsAuPAzAMh9yuHT5rpX9ykD9u0uZ5UplK05S0TsvYMUqcHNQ2hijt/lbxvUxXHTa+W
GJ5RRQAdw98wG1mc65u16hfZPsLimnw4BHwpyNGOPadShqb78rQihc+YiBTn4lgN1HhquWRGqCYZ
ZEjBmtWOJm8WJSTWtcpFEkmPlOTDmNX82e9mnw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a1mMNsEVIHwFCxw3sHygQ6eU3z5whgDQI+YHUmPAwU6q4vqfu2NVxu0z42QL1rV1rCsm39SqZ078
EGEqt7XUt6bdvI3yu4dU8gF+jou5njJ2UU34VmbOw/MQt48Hmi+hxtH1/zSlbNe2iOksDFEFTHmW
WGHgPS2bACG/KtAZMYK3gBtbnb9dtu+p5hxiQtwMOFnv9kQGBxcMaciN0yqy2TE5fygwKcNEua29
jiGUF0qgPS1k6qN+zLrYWkaVT0amR1MFXpv0WcwL+xVkxj6bBQhe5D7t5xCIsfLR4xqa5WVpa0dN
FkxGlIoufL17G/cGRr4nV4QP0sqcDCCHYpRoIA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPFWI49JcHqYFxRrTG2uFixmE4jeIWIero9KijBFo7+FOCC7hJeSlCuNlwb8mBsI0Up57fm7C8t9
tb1l2QCfvy82JqTvEuH49UmS+8/GEnbK1QbVHsDIiv3/8cFn+0zw/VSuVeaN8L0yzeNIo8m59iAq
AQ9wOyqKFEhKKkbn+nVg+hQW3L/P25hisjV06sqmfsA0Rx4bYhFoxEvIw3A4x9LsBIIfDpgDsPzS
NICAEhfA7fWXKK6UsOmuq1NZLTDmFe2zEHijVMovzm/qqvHfu7fCt5POlGtLOPZhXGCDZi0v1yiq
VyT7JTUW5P/rcLgzkfyKToozq36lEkXd6VSaLg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T4EV2kKcg5a7rlvEGr4AG3uvv0JzSoc0NQb9aIeE2gsKGq0oLel4q0oZ7eO6He8noW5KEowgkY0O
xDnerk/R4qxdSePYeRRmUg3KZ7hAHVEQrHpQ2RbYwK5mUIpQLjxCWRWzBjeWOce2bh0dAMR/4OH6
t95V8b9VWpgepcUXynGvLDv31tVgr+8LtXlgWTNBiJj2mTZ3gEVxpgGRwMGsampw9yKqBKoR+/hg
++FP8JJkrOSdB2bhnNaD4fZotMLkhYDrWvQm9z6rW7fwxA2oEI+oUqi+K+82oiLzeVWy7FhVyzgS
Y273uSE53DWk35UE9A6ebcI/xUl1iGqwdeZihA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gZRrJLrBkbil4BLf1tia07NzGL28f+Pk9zyPElbTDf8NEXCsuwTum6RjR5lvY/odzAYHlcKxpG+6
gwjafT2OV5gHqqtPXrRHcVU4p5LEzOOl5p3puqvK+1z2+YpHqxOZIIZPIH9kjtzNgcBmcU7S2sFN
zTxyAYuLL9sAN+AIQ9UrW4MXDWxUtdkwPaSyFIvuKoxOKUD5IXEY9NtBpz1zsABMKNHneOO8pAix
qg8S/uQ/XJ8Qggr+vE7HDUUMCsijNXvqbkLM3xf6dXFpOqanKxd6/GfTcob4sezm/hMOZ2xiXcfS
hsYUMRdO9H6fmhECfszoK2XMsMt6xM+vlLywWJ0I6u468qVFxROkf9vL+ZDq/tMiJOm7E1p+HDif
98f5v1OybtzlZJP9bDMwWYcsCqcDejCMQyYOgPCgg+2jTR1JezxuK7PpjyliT0rnu7FfI/0tRzbL
d5YqO79RN0byWVTTdIlTWzL/qBD8BLVqXzWs3M+up46dGPxbkzv44od4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
A79lFm/8JnoMxv1MOWkY+AtU24uc6/CeGf6bjoYWLJXkzzHQooKleg9l+jH7oajoC3oVQh/sMXdi
3QmwZ5SKMt6sb03SC5BW7xPky8zyP6w8FRMCI2Tz1/GhozqjIbgSstUfCaemxIgj3rG7GkRYZ/2k
ualG2mpYDNyaxz1lMYaHfm7stH/IQlkCh6HHMbi7ImYJ6pILa828Ls3VREjo7dtXPS2ZDFxreSIH
2SZ3NpLJO0/umchZaUkt1xN0bsxgtGdOzSqGDpTJrU/ltmclBX199pmrXQa5p/q0FSLj2WkB043l
l3x1Rdipn49DvChkvbVzJP9aej4kwSPhvxHnHQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GFpXmWYmUY46GvuVucUW1VOu3+gGtLxYW4Ho/p4wggZ+jWrpUVhz2RSAxu+ufiLHtM9oYgKPaSYT
DOeuIJGTnxGr20Vh6Nn3cc41TyKAf0vxN2fGISEQQWrjh9OOgNcBmJfaHsSq7+5dhCaIWlGrInVr
GD5TqclLzw6cHAuPGxMi2wD4rq16RkDJnQbPf8ptaskWz81NxZfyWAL4T2E24soybpln8+vuF+72
IQYfLQh/dDDsNHKNKwTKAtGjpFS8eVSbYnS+k3Am4loN8JRflh0+c4yGUo4EkuRzUFiIBrJOKylp
qicgwQw7vdbe+yPl6moUlvA1U2CjJ87bsXk5CA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hzklq501x4qEym07A6+Vh+O6T5Q1srpTjckVi/KQ8/P6I6xpFqHBBikoKASz9mkWuvFaf6aly934
etGfnzZuPuKCoMPixevIcq9cgFblu43p0H0FR4BSbqN+A/K2utwAblPur01qwtH9nc1azxOtPedI
3KLsEBUN2ObidzkZIUbiQlQ72wru0lGZ5uN6iiNcLRnEhqjdjWiOHf5qGo+df2QyP6S5zRR7hGOd
N5h9/9towH2UQ++6hnOd4pjtl7PKHWlU92421M+LhruDkz4Bw6c7d7EVdbIcZ3ub+l/OnCyNwQsr
WUo2E+j4vd3zIVA0gzTA1oLX73BJ1oxwQdO3JA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71120)
`pragma protect data_block
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
`pragma protect end_protected
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
