# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a35ticsg324-1L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.cache/wt [current_project]
set_property parent.project_path C:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part_repo_paths C:/Users/phaz/vivado-boards-master/new/board_files [current_project]
set_property board_part digilentinc.com:arty-a7-35:part0:1.0 [current_project]
set_property ip_output_repo c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/hdl/arty_eth_000_wrapper.v
add_files C:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/arty_eth_000.bd
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_clk_wiz_0_1/arty_eth_000_clk_wiz_0_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_clk_wiz_0_1/arty_eth_000_clk_wiz_0_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_clk_wiz_0_1/arty_eth_000_clk_wiz_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_mig_7series_0_0/arty_eth_000_mig_7series_0_0/user_design/constraints/arty_eth_000_mig_7series_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_mig_7series_0_0/arty_eth_000_mig_7series_0_0/user_design/constraints/arty_eth_000_mig_7series_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_mig_7series_0_0/arty_eth_000_mig_7series_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_microblaze_0_0/arty_eth_000_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_microblaze_0_0/arty_eth_000_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_microblaze_0_0/arty_eth_000_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_microblaze_0_axi_intc_0/arty_eth_000_microblaze_0_axi_intc_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_microblaze_0_axi_intc_0/arty_eth_000_microblaze_0_axi_intc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_microblaze_0_axi_intc_0/arty_eth_000_microblaze_0_axi_intc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_mdm_1_0/arty_eth_000_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_mdm_1_0/arty_eth_000_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_rst_mig_7series_0_83M_0/arty_eth_000_rst_mig_7series_0_83M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_rst_mig_7series_0_83M_0/arty_eth_000_rst_mig_7series_0_83M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_rst_mig_7series_0_83M_0/arty_eth_000_rst_mig_7series_0_83M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_uartlite_0_0/arty_eth_000_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_uartlite_0_0/arty_eth_000_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_uartlite_0_0/arty_eth_000_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_ethernetlite_0_0/arty_eth_000_axi_ethernetlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_ethernetlite_0_0/arty_eth_000_axi_ethernetlite_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_ethernetlite_0_0/arty_eth_000_axi_ethernetlite_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_ethernetlite_0_0/arty_eth_000_axi_ethernetlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_timer_0_0/arty_eth_000_axi_timer_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_timer_0_0/arty_eth_000_axi_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_10/bd_2493_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_19/bd_2493_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_22/bd_2493_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_23/bd_2493_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_24/bd_2493_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_25/bd_2493_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_26/bd_2493_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_27/bd_2493_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_20/bd_2493_sarn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_21/bd_2493_srn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_11/bd_2493_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_12/bd_2493_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_13/bd_2493_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_14/bd_2493_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_15/bd_2493_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_2/bd_2493_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_3/bd_2493_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_4/bd_2493_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_5/bd_2493_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_6/bd_2493_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_1/bd_2493_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/bd_0/ip/ip_1/bd_2493_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_xbar_0/arty_eth_000_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_dlmb_v10_0/arty_eth_000_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_dlmb_v10_0/arty_eth_000_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_ilmb_v10_0/arty_eth_000_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_ilmb_v10_0/arty_eth_000_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_dlmb_bram_if_cntlr_0/arty_eth_000_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_ilmb_bram_if_cntlr_0/arty_eth_000_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_lmb_bram_0/arty_eth_000_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/arty_eth_000_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/constrs_1/new/eth_ref_clk.xdc
set_property used_in_implementation false [get_files C:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/constrs_1/new/eth_ref_clk.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top arty_eth_000_wrapper -part xc7a35ticsg324-1L


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef arty_eth_000_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file arty_eth_000_wrapper_utilization_synth.rpt -pb arty_eth_000_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]