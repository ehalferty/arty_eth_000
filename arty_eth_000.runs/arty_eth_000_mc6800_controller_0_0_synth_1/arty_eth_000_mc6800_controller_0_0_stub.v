// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Jul  1 19:25:56 2018
// Host        : DESKTOP-PV7K49D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ arty_eth_000_mc6800_controller_0_0_stub.v
// Design      : arty_eth_000_mc6800_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mc6800_controller,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(CLK100MHZ, led, address, data_from_fpga, 
  data_to_fpga, data_from_fpga_enable_n, cpu_clock, reset_n, irq_n, nmi_n, write_n, btn, sw)
/* synthesis syn_black_box black_box_pad_pin="CLK100MHZ,led[15:0],address[15:0],data_from_fpga[7:0],data_to_fpga[7:0],data_from_fpga_enable_n,cpu_clock[1:0],reset_n,irq_n,nmi_n,write_n,btn,sw[3:0]" */;
  input CLK100MHZ;
  output [15:0]led;
  input [15:0]address;
  output [7:0]data_from_fpga;
  input [7:0]data_to_fpga;
  output data_from_fpga_enable_n;
  output [1:0]cpu_clock;
  output reset_n;
  output irq_n;
  output nmi_n;
  input write_n;
  input btn;
  input [3:0]sw;
endmodule
