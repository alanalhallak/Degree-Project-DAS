set rateCeaxis_dwt2 axis_dwt_default_clock_driver/clockdriver_x3/pipelined_ce.ce_pipeline[1].ce_reg/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp
set rateCellsaxis_dwt2 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeaxis_dwt2/Q]] IS_ENABLE]]
set rateCeaxis_dwt4 axis_dwt_default_clock_driver/clockdriver_x2/pipelined_ce.ce_pipeline[1].ce_reg/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp
set rateCellsaxis_dwt4 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeaxis_dwt4/Q]] IS_ENABLE]]
set rateCeaxis_dwt8 axis_dwt_default_clock_driver/clockdriver_x1/pipelined_ce.ce_pipeline[1].ce_reg/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp
set rateCellsaxis_dwt8 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeaxis_dwt8/Q]] IS_ENABLE]]
set rateCeaxis_dwt16 axis_dwt_default_clock_driver/clockdriver_x0/pipelined_ce.ce_pipeline[1].ce_reg/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp
set rateCellsaxis_dwt16 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeaxis_dwt16/Q]] IS_ENABLE]]
set rateCeaxis_dwt32 axis_dwt_default_clock_driver/clockdriver/pipelined_ce.ce_pipeline[1].ce_reg/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp
set rateCellsaxis_dwt32 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeaxis_dwt32/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellsaxis_dwt2 -to $rateCellsaxis_dwt2 -setup 2
set_multicycle_path -from $rateCellsaxis_dwt2 -to $rateCellsaxis_dwt2 -hold 1
set_multicycle_path -from $rateCellsaxis_dwt2 -to $rateCellsaxis_dwt4 -setup 2
set_multicycle_path -from $rateCellsaxis_dwt2 -to $rateCellsaxis_dwt4 -hold 1
set_multicycle_path -from $rateCellsaxis_dwt2 -to $rateCellsaxis_dwt8 -setup 2
set_multicycle_path -from $rateCellsaxis_dwt2 -to $rateCellsaxis_dwt8 -hold 1
set_multicycle_path -from $rateCellsaxis_dwt2 -to $rateCellsaxis_dwt16 -setup 2
set_multicycle_path -from $rateCellsaxis_dwt2 -to $rateCellsaxis_dwt16 -hold 1
set_multicycle_path -from $rateCellsaxis_dwt2 -to $rateCellsaxis_dwt32 -setup 2
set_multicycle_path -from $rateCellsaxis_dwt2 -to $rateCellsaxis_dwt32 -hold 1
set_multicycle_path -from $rateCellsaxis_dwt4 -to $rateCellsaxis_dwt2 -setup 2
set_multicycle_path -from $rateCellsaxis_dwt4 -to $rateCellsaxis_dwt2 -hold 1
set_multicycle_path -from $rateCellsaxis_dwt4 -to $rateCellsaxis_dwt4 -setup 4
set_multicycle_path -from $rateCellsaxis_dwt4 -to $rateCellsaxis_dwt4 -hold 3
set_multicycle_path -from $rateCellsaxis_dwt4 -to $rateCellsaxis_dwt8 -setup 4
set_multicycle_path -from $rateCellsaxis_dwt4 -to $rateCellsaxis_dwt8 -hold 3
set_multicycle_path -from $rateCellsaxis_dwt4 -to $rateCellsaxis_dwt16 -setup 4
set_multicycle_path -from $rateCellsaxis_dwt4 -to $rateCellsaxis_dwt16 -hold 3
set_multicycle_path -from $rateCellsaxis_dwt4 -to $rateCellsaxis_dwt32 -setup 4
set_multicycle_path -from $rateCellsaxis_dwt4 -to $rateCellsaxis_dwt32 -hold 3
set_multicycle_path -from $rateCellsaxis_dwt8 -to $rateCellsaxis_dwt2 -setup 2
set_multicycle_path -from $rateCellsaxis_dwt8 -to $rateCellsaxis_dwt2 -hold 1
set_multicycle_path -from $rateCellsaxis_dwt8 -to $rateCellsaxis_dwt4 -setup 4
set_multicycle_path -from $rateCellsaxis_dwt8 -to $rateCellsaxis_dwt4 -hold 3
set_multicycle_path -from $rateCellsaxis_dwt8 -to $rateCellsaxis_dwt8 -setup 8
set_multicycle_path -from $rateCellsaxis_dwt8 -to $rateCellsaxis_dwt8 -hold 7
set_multicycle_path -from $rateCellsaxis_dwt8 -to $rateCellsaxis_dwt16 -setup 8
set_multicycle_path -from $rateCellsaxis_dwt8 -to $rateCellsaxis_dwt16 -hold 7
set_multicycle_path -from $rateCellsaxis_dwt8 -to $rateCellsaxis_dwt32 -setup 8
set_multicycle_path -from $rateCellsaxis_dwt8 -to $rateCellsaxis_dwt32 -hold 7
set_multicycle_path -from $rateCellsaxis_dwt16 -to $rateCellsaxis_dwt2 -setup 2
set_multicycle_path -from $rateCellsaxis_dwt16 -to $rateCellsaxis_dwt2 -hold 1
set_multicycle_path -from $rateCellsaxis_dwt16 -to $rateCellsaxis_dwt4 -setup 4
set_multicycle_path -from $rateCellsaxis_dwt16 -to $rateCellsaxis_dwt4 -hold 3
set_multicycle_path -from $rateCellsaxis_dwt16 -to $rateCellsaxis_dwt8 -setup 8
set_multicycle_path -from $rateCellsaxis_dwt16 -to $rateCellsaxis_dwt8 -hold 7
set_multicycle_path -from $rateCellsaxis_dwt16 -to $rateCellsaxis_dwt16 -setup 16
set_multicycle_path -from $rateCellsaxis_dwt16 -to $rateCellsaxis_dwt16 -hold 15
set_multicycle_path -from $rateCellsaxis_dwt16 -to $rateCellsaxis_dwt32 -setup 16
set_multicycle_path -from $rateCellsaxis_dwt16 -to $rateCellsaxis_dwt32 -hold 15
set_multicycle_path -from $rateCellsaxis_dwt32 -to $rateCellsaxis_dwt2 -setup 2
set_multicycle_path -from $rateCellsaxis_dwt32 -to $rateCellsaxis_dwt2 -hold 1
set_multicycle_path -from $rateCellsaxis_dwt32 -to $rateCellsaxis_dwt4 -setup 4
set_multicycle_path -from $rateCellsaxis_dwt32 -to $rateCellsaxis_dwt4 -hold 3
set_multicycle_path -from $rateCellsaxis_dwt32 -to $rateCellsaxis_dwt8 -setup 8
set_multicycle_path -from $rateCellsaxis_dwt32 -to $rateCellsaxis_dwt8 -hold 7
set_multicycle_path -from $rateCellsaxis_dwt32 -to $rateCellsaxis_dwt16 -setup 16
set_multicycle_path -from $rateCellsaxis_dwt32 -to $rateCellsaxis_dwt16 -hold 15
set_multicycle_path -from $rateCellsaxis_dwt32 -to $rateCellsaxis_dwt32 -setup 32
set_multicycle_path -from $rateCellsaxis_dwt32 -to $rateCellsaxis_dwt32 -hold 31
