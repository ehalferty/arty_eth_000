// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Jul  1 19:25:56 2018
// Host        : DESKTOP-PV7K49D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/phaz/vivado_projects/arty_eth_000/arty_eth_000.srcs/sources_1/bd/arty_eth_000/ip/arty_eth_000_clk_wiz_0_1/arty_eth_000_clk_wiz_0_1_stub.v
// Design      : arty_eth_000_clk_wiz_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module arty_eth_000_clk_wiz_0_1(clk_out1, clk_out2, clk_out3, clk_out4, resetn, 
  locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,clk_out3,clk_out4,resetn,locked,clk_in1" */;
  output clk_out1;
  output clk_out2;
  output clk_out3;
  output clk_out4;
  input resetn;
  output locked;
  input clk_in1;
endmodule
