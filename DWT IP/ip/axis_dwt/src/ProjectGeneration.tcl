# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set VHDL2008Support 1
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {on}
	set DSPDevice {xc7z020}
	set DSPFamily {zynq}
	set DSPPackage {clg484}
	set DSPSpeed {-1}
	set FPGAClockPeriod 10
	set GenerateTestBench 1
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {C:/Users/alanh/AppData/Local/Xilinx/Sysgen/SysgenVivado/win64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {Vitis Model Composer}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {VMC}
	set IP_LifeCycle_Menu {1}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {DWT}
	set IP_Revision {348343851}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {axis_dwt}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{vivado_ip.tcl}}
		{{axis_dwt_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{axis_dwt.vhd} -lib {xil_defaultlib}}
		{{axis_dwt_tb.vhd}}
		{{axis_dwt_clock.xdc}}
		{{axis_dwt.xdc}}
		{{axis_dwt.htm}}
	}
	set SimPeriod 1e-06
	set SimTime 0.008279
	set SimulationTime {83000.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Users/alanh/Downloads/Thesis/vivado/ip_with_datarate/ip/axis_dwt/src}
	set TestBenchModule {axis_dwt_tb}
	set TopLevelModule {axis_dwt}
	set TopLevelSimulinkHandle 12.0005
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface signal_in Name {signal_in}
	dict set TopLevelPortInterface signal_in Type Fix_18_16
	dict set TopLevelPortInterface signal_in ArithmeticType xlSigned
	dict set TopLevelPortInterface signal_in BinaryPoint 16
	dict set TopLevelPortInterface signal_in Width 18
	dict set TopLevelPortInterface signal_in DatFile {dwt_opt_fixed_point_axis_dwt_signal_in.dat}
	dict set TopLevelPortInterface signal_in IconText {signal_in}
	dict set TopLevelPortInterface signal_in Direction in
	dict set TopLevelPortInterface signal_in Period 1
	dict set TopLevelPortInterface signal_in Interface 0
	dict set TopLevelPortInterface signal_in InterfaceName {}
	dict set TopLevelPortInterface signal_in InterfaceString {DATA}
	dict set TopLevelPortInterface signal_in ClockDomain {axis_dwt}
	dict set TopLevelPortInterface signal_in Locs {}
	dict set TopLevelPortInterface signal_in IOStandard {}
	dict set TopLevelPortInterface signal_out Name {signal_out}
	dict set TopLevelPortInterface signal_out Type Fix_18_16
	dict set TopLevelPortInterface signal_out ArithmeticType xlSigned
	dict set TopLevelPortInterface signal_out BinaryPoint 16
	dict set TopLevelPortInterface signal_out Width 18
	dict set TopLevelPortInterface signal_out DatFile {dwt_opt_fixed_point_axis_dwt_signal_out.dat}
	dict set TopLevelPortInterface signal_out IconText {signal_out}
	dict set TopLevelPortInterface signal_out Direction out
	dict set TopLevelPortInterface signal_out Period 1
	dict set TopLevelPortInterface signal_out Interface 0
	dict set TopLevelPortInterface signal_out InterfaceName {}
	dict set TopLevelPortInterface signal_out InterfaceString {DATA}
	dict set TopLevelPortInterface signal_out ClockDomain {axis_dwt}
	dict set TopLevelPortInterface signal_out Locs {}
	dict set TopLevelPortInterface signal_out IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {axis_dwt}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project