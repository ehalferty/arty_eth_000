set_property SRC_FILE_INFO {cfile:c:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_clk_wiz_0_1/arty_eth_000_clk_wiz_0_1.xdc rfile:../../../arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_clk_wiz_0_1/arty_eth_000_clk_wiz_0_1.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
