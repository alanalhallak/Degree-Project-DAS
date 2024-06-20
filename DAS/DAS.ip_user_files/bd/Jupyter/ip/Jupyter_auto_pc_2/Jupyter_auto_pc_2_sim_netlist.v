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
