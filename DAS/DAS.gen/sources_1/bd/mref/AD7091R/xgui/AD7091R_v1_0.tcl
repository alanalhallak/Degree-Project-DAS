# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADC_CONVERT_CNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_CONVERT_TIME" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_CONVST_CNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_CONVST_TIME" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_CYCLE_CNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_CYCLE_TIME" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_DATAREADY_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_DATAREADY_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_END_CNV_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_IDLE_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_READ_CNV_RESULT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_RESET_SCLK_PERIODS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_SCLK_PERIODS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_START_CNV_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_SW_RESET_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_WAIT_CNV_DONE_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADC_WAIT_DATA_VALID_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FPGA_CLOCK_FREQ" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADC_CONVERT_CNT { PARAM_VALUE.ADC_CONVERT_CNT } {
	# Procedure called to update ADC_CONVERT_CNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_CONVERT_CNT { PARAM_VALUE.ADC_CONVERT_CNT } {
	# Procedure called to validate ADC_CONVERT_CNT
	return true
}

proc update_PARAM_VALUE.ADC_CONVERT_TIME { PARAM_VALUE.ADC_CONVERT_TIME } {
	# Procedure called to update ADC_CONVERT_TIME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_CONVERT_TIME { PARAM_VALUE.ADC_CONVERT_TIME } {
	# Procedure called to validate ADC_CONVERT_TIME
	return true
}

proc update_PARAM_VALUE.ADC_CONVST_CNT { PARAM_VALUE.ADC_CONVST_CNT } {
	# Procedure called to update ADC_CONVST_CNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_CONVST_CNT { PARAM_VALUE.ADC_CONVST_CNT } {
	# Procedure called to validate ADC_CONVST_CNT
	return true
}

proc update_PARAM_VALUE.ADC_CONVST_TIME { PARAM_VALUE.ADC_CONVST_TIME } {
	# Procedure called to update ADC_CONVST_TIME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_CONVST_TIME { PARAM_VALUE.ADC_CONVST_TIME } {
	# Procedure called to validate ADC_CONVST_TIME
	return true
}

proc update_PARAM_VALUE.ADC_CYCLE_CNT { PARAM_VALUE.ADC_CYCLE_CNT } {
	# Procedure called to update ADC_CYCLE_CNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_CYCLE_CNT { PARAM_VALUE.ADC_CYCLE_CNT } {
	# Procedure called to validate ADC_CYCLE_CNT
	return true
}

proc update_PARAM_VALUE.ADC_CYCLE_TIME { PARAM_VALUE.ADC_CYCLE_TIME } {
	# Procedure called to update ADC_CYCLE_TIME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_CYCLE_TIME { PARAM_VALUE.ADC_CYCLE_TIME } {
	# Procedure called to validate ADC_CYCLE_TIME
	return true
}

proc update_PARAM_VALUE.ADC_DATAREADY_STATE { PARAM_VALUE.ADC_DATAREADY_STATE } {
	# Procedure called to update ADC_DATAREADY_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_DATAREADY_STATE { PARAM_VALUE.ADC_DATAREADY_STATE } {
	# Procedure called to validate ADC_DATAREADY_STATE
	return true
}

proc update_PARAM_VALUE.ADC_DATAREADY_WIDTH { PARAM_VALUE.ADC_DATAREADY_WIDTH } {
	# Procedure called to update ADC_DATAREADY_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_DATAREADY_WIDTH { PARAM_VALUE.ADC_DATAREADY_WIDTH } {
	# Procedure called to validate ADC_DATAREADY_WIDTH
	return true
}

proc update_PARAM_VALUE.ADC_END_CNV_STATE { PARAM_VALUE.ADC_END_CNV_STATE } {
	# Procedure called to update ADC_END_CNV_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_END_CNV_STATE { PARAM_VALUE.ADC_END_CNV_STATE } {
	# Procedure called to validate ADC_END_CNV_STATE
	return true
}

proc update_PARAM_VALUE.ADC_IDLE_STATE { PARAM_VALUE.ADC_IDLE_STATE } {
	# Procedure called to update ADC_IDLE_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_IDLE_STATE { PARAM_VALUE.ADC_IDLE_STATE } {
	# Procedure called to validate ADC_IDLE_STATE
	return true
}

proc update_PARAM_VALUE.ADC_READ_CNV_RESULT { PARAM_VALUE.ADC_READ_CNV_RESULT } {
	# Procedure called to update ADC_READ_CNV_RESULT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_READ_CNV_RESULT { PARAM_VALUE.ADC_READ_CNV_RESULT } {
	# Procedure called to validate ADC_READ_CNV_RESULT
	return true
}

proc update_PARAM_VALUE.ADC_RESET_SCLK_PERIODS { PARAM_VALUE.ADC_RESET_SCLK_PERIODS } {
	# Procedure called to update ADC_RESET_SCLK_PERIODS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_RESET_SCLK_PERIODS { PARAM_VALUE.ADC_RESET_SCLK_PERIODS } {
	# Procedure called to validate ADC_RESET_SCLK_PERIODS
	return true
}

proc update_PARAM_VALUE.ADC_SCLK_PERIODS { PARAM_VALUE.ADC_SCLK_PERIODS } {
	# Procedure called to update ADC_SCLK_PERIODS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_SCLK_PERIODS { PARAM_VALUE.ADC_SCLK_PERIODS } {
	# Procedure called to validate ADC_SCLK_PERIODS
	return true
}

proc update_PARAM_VALUE.ADC_START_CNV_STATE { PARAM_VALUE.ADC_START_CNV_STATE } {
	# Procedure called to update ADC_START_CNV_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_START_CNV_STATE { PARAM_VALUE.ADC_START_CNV_STATE } {
	# Procedure called to validate ADC_START_CNV_STATE
	return true
}

proc update_PARAM_VALUE.ADC_SW_RESET_STATE { PARAM_VALUE.ADC_SW_RESET_STATE } {
	# Procedure called to update ADC_SW_RESET_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_SW_RESET_STATE { PARAM_VALUE.ADC_SW_RESET_STATE } {
	# Procedure called to validate ADC_SW_RESET_STATE
	return true
}

proc update_PARAM_VALUE.ADC_WAIT_CNV_DONE_STATE { PARAM_VALUE.ADC_WAIT_CNV_DONE_STATE } {
	# Procedure called to update ADC_WAIT_CNV_DONE_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_WAIT_CNV_DONE_STATE { PARAM_VALUE.ADC_WAIT_CNV_DONE_STATE } {
	# Procedure called to validate ADC_WAIT_CNV_DONE_STATE
	return true
}

proc update_PARAM_VALUE.ADC_WAIT_DATA_VALID_STATE { PARAM_VALUE.ADC_WAIT_DATA_VALID_STATE } {
	# Procedure called to update ADC_WAIT_DATA_VALID_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_WAIT_DATA_VALID_STATE { PARAM_VALUE.ADC_WAIT_DATA_VALID_STATE } {
	# Procedure called to validate ADC_WAIT_DATA_VALID_STATE
	return true
}

proc update_PARAM_VALUE.FPGA_CLOCK_FREQ { PARAM_VALUE.FPGA_CLOCK_FREQ } {
	# Procedure called to update FPGA_CLOCK_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FPGA_CLOCK_FREQ { PARAM_VALUE.FPGA_CLOCK_FREQ } {
	# Procedure called to validate FPGA_CLOCK_FREQ
	return true
}


proc update_MODELPARAM_VALUE.ADC_SW_RESET_STATE { MODELPARAM_VALUE.ADC_SW_RESET_STATE PARAM_VALUE.ADC_SW_RESET_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_SW_RESET_STATE}] ${MODELPARAM_VALUE.ADC_SW_RESET_STATE}
}

proc update_MODELPARAM_VALUE.ADC_IDLE_STATE { MODELPARAM_VALUE.ADC_IDLE_STATE PARAM_VALUE.ADC_IDLE_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_IDLE_STATE}] ${MODELPARAM_VALUE.ADC_IDLE_STATE}
}

proc update_MODELPARAM_VALUE.ADC_START_CNV_STATE { MODELPARAM_VALUE.ADC_START_CNV_STATE PARAM_VALUE.ADC_START_CNV_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_START_CNV_STATE}] ${MODELPARAM_VALUE.ADC_START_CNV_STATE}
}

proc update_MODELPARAM_VALUE.ADC_WAIT_CNV_DONE_STATE { MODELPARAM_VALUE.ADC_WAIT_CNV_DONE_STATE PARAM_VALUE.ADC_WAIT_CNV_DONE_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_WAIT_CNV_DONE_STATE}] ${MODELPARAM_VALUE.ADC_WAIT_CNV_DONE_STATE}
}

proc update_MODELPARAM_VALUE.ADC_WAIT_DATA_VALID_STATE { MODELPARAM_VALUE.ADC_WAIT_DATA_VALID_STATE PARAM_VALUE.ADC_WAIT_DATA_VALID_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_WAIT_DATA_VALID_STATE}] ${MODELPARAM_VALUE.ADC_WAIT_DATA_VALID_STATE}
}

proc update_MODELPARAM_VALUE.ADC_READ_CNV_RESULT { MODELPARAM_VALUE.ADC_READ_CNV_RESULT PARAM_VALUE.ADC_READ_CNV_RESULT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_READ_CNV_RESULT}] ${MODELPARAM_VALUE.ADC_READ_CNV_RESULT}
}

proc update_MODELPARAM_VALUE.ADC_END_CNV_STATE { MODELPARAM_VALUE.ADC_END_CNV_STATE PARAM_VALUE.ADC_END_CNV_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_END_CNV_STATE}] ${MODELPARAM_VALUE.ADC_END_CNV_STATE}
}

proc update_MODELPARAM_VALUE.ADC_DATAREADY_STATE { MODELPARAM_VALUE.ADC_DATAREADY_STATE PARAM_VALUE.ADC_DATAREADY_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_DATAREADY_STATE}] ${MODELPARAM_VALUE.ADC_DATAREADY_STATE}
}

proc update_MODELPARAM_VALUE.FPGA_CLOCK_FREQ { MODELPARAM_VALUE.FPGA_CLOCK_FREQ PARAM_VALUE.FPGA_CLOCK_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FPGA_CLOCK_FREQ}] ${MODELPARAM_VALUE.FPGA_CLOCK_FREQ}
}

proc update_MODELPARAM_VALUE.ADC_CYCLE_TIME { MODELPARAM_VALUE.ADC_CYCLE_TIME PARAM_VALUE.ADC_CYCLE_TIME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_CYCLE_TIME}] ${MODELPARAM_VALUE.ADC_CYCLE_TIME}
}

proc update_MODELPARAM_VALUE.ADC_CONVST_TIME { MODELPARAM_VALUE.ADC_CONVST_TIME PARAM_VALUE.ADC_CONVST_TIME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_CONVST_TIME}] ${MODELPARAM_VALUE.ADC_CONVST_TIME}
}

proc update_MODELPARAM_VALUE.ADC_CONVERT_TIME { MODELPARAM_VALUE.ADC_CONVERT_TIME PARAM_VALUE.ADC_CONVERT_TIME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_CONVERT_TIME}] ${MODELPARAM_VALUE.ADC_CONVERT_TIME}
}

proc update_MODELPARAM_VALUE.ADC_CYCLE_CNT { MODELPARAM_VALUE.ADC_CYCLE_CNT PARAM_VALUE.ADC_CYCLE_CNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_CYCLE_CNT}] ${MODELPARAM_VALUE.ADC_CYCLE_CNT}
}

proc update_MODELPARAM_VALUE.ADC_CONVST_CNT { MODELPARAM_VALUE.ADC_CONVST_CNT PARAM_VALUE.ADC_CONVST_CNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_CONVST_CNT}] ${MODELPARAM_VALUE.ADC_CONVST_CNT}
}

proc update_MODELPARAM_VALUE.ADC_CONVERT_CNT { MODELPARAM_VALUE.ADC_CONVERT_CNT PARAM_VALUE.ADC_CONVERT_CNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_CONVERT_CNT}] ${MODELPARAM_VALUE.ADC_CONVERT_CNT}
}

proc update_MODELPARAM_VALUE.ADC_SCLK_PERIODS { MODELPARAM_VALUE.ADC_SCLK_PERIODS PARAM_VALUE.ADC_SCLK_PERIODS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_SCLK_PERIODS}] ${MODELPARAM_VALUE.ADC_SCLK_PERIODS}
}

proc update_MODELPARAM_VALUE.ADC_RESET_SCLK_PERIODS { MODELPARAM_VALUE.ADC_RESET_SCLK_PERIODS PARAM_VALUE.ADC_RESET_SCLK_PERIODS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_RESET_SCLK_PERIODS}] ${MODELPARAM_VALUE.ADC_RESET_SCLK_PERIODS}
}

proc update_MODELPARAM_VALUE.ADC_DATAREADY_WIDTH { MODELPARAM_VALUE.ADC_DATAREADY_WIDTH PARAM_VALUE.ADC_DATAREADY_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_DATAREADY_WIDTH}] ${MODELPARAM_VALUE.ADC_DATAREADY_WIDTH}
}

