// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Jul  1 19:25:56 2018
// Host        : DESKTOP-PV7K49D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ arty_eth_000_mc6800_controller_0_0_sim_netlist.v
// Design      : arty_eth_000_mc6800_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "arty_eth_000_mc6800_controller_0_0,mc6800_controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mc6800_controller,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK100MHZ,
    led,
    address,
    data_from_fpga,
    data_to_fpga,
    data_from_fpga_enable_n,
    cpu_clock,
    reset_n,
    irq_n,
    nmi_n,
    write_n,
    btn,
    sw);
  input CLK100MHZ;
  output [15:0]led;
  input [15:0]address;
  output [7:0]data_from_fpga;
  input [7:0]data_to_fpga;
  output data_from_fpga_enable_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cpu_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cpu_clock, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN arty_eth_000_mc6800_controller_0_0_cpu_clock" *) output [1:0]cpu_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW" *) output reset_n;
  output irq_n;
  output nmi_n;
  input write_n;
  input btn;
  input [3:0]sw;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK100MHZ;
  wire [15:0]address;
  wire btn;
  wire [1:0]cpu_clock;
  wire [5:0]\^data_from_fpga ;
  wire data_from_fpga_enable_n;
  wire [15:0]led;
  wire reset_n;
  wire [3:0]sw;
  wire write_n;

  assign data_from_fpga[7] = \<const0> ;
  assign data_from_fpga[6] = \^data_from_fpga [5];
  assign data_from_fpga[5] = \^data_from_fpga [5];
  assign data_from_fpga[4] = \<const0> ;
  assign data_from_fpga[3] = \^data_from_fpga [5];
  assign data_from_fpga[2] = \^data_from_fpga [5];
  assign data_from_fpga[1] = \^data_from_fpga [5];
  assign data_from_fpga[0] = \^data_from_fpga [0];
  assign irq_n = \<const1> ;
  assign nmi_n = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    data_from_fpga_enable_n_INST_0
       (.I0(write_n),
        .O(data_from_fpga_enable_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mc6800_controller inst
       (.CLK100MHZ(CLK100MHZ),
        .address(address),
        .cpu_clock(cpu_clock),
        .data_from_fpga({\^data_from_fpga [5],\^data_from_fpga [0]}),
        .sw(sw));
  LUT4 #(
    .INIT(16'h0001)) 
    \led[0]_INST_0 
       (.I0(address[15]),
        .I1(address[14]),
        .I2(address[13]),
        .I3(address[12]),
        .O(led[0]));
  LUT4 #(
    .INIT(16'h0400)) 
    \led[10]_INST_0 
       (.I0(address[14]),
        .I1(address[15]),
        .I2(address[12]),
        .I3(address[13]),
        .O(led[10]));
  LUT4 #(
    .INIT(16'h4000)) 
    \led[11]_INST_0 
       (.I0(address[14]),
        .I1(address[15]),
        .I2(address[13]),
        .I3(address[12]),
        .O(led[11]));
  LUT4 #(
    .INIT(16'h1000)) 
    \led[12]_INST_0 
       (.I0(address[13]),
        .I1(address[12]),
        .I2(address[15]),
        .I3(address[14]),
        .O(led[12]));
  LUT4 #(
    .INIT(16'h4000)) 
    \led[13]_INST_0 
       (.I0(address[13]),
        .I1(address[12]),
        .I2(address[15]),
        .I3(address[14]),
        .O(led[13]));
  LUT4 #(
    .INIT(16'h4000)) 
    \led[14]_INST_0 
       (.I0(address[12]),
        .I1(address[13]),
        .I2(address[15]),
        .I3(address[14]),
        .O(led[14]));
  LUT4 #(
    .INIT(16'h8000)) 
    \led[15]_INST_0 
       (.I0(address[14]),
        .I1(address[15]),
        .I2(address[12]),
        .I3(address[13]),
        .O(led[15]));
  LUT4 #(
    .INIT(16'h0100)) 
    \led[1]_INST_0 
       (.I0(address[15]),
        .I1(address[14]),
        .I2(address[13]),
        .I3(address[12]),
        .O(led[1]));
  LUT4 #(
    .INIT(16'h0100)) 
    \led[2]_INST_0 
       (.I0(address[15]),
        .I1(address[14]),
        .I2(address[12]),
        .I3(address[13]),
        .O(led[2]));
  LUT4 #(
    .INIT(16'h1000)) 
    \led[3]_INST_0 
       (.I0(address[15]),
        .I1(address[14]),
        .I2(address[13]),
        .I3(address[12]),
        .O(led[3]));
  LUT4 #(
    .INIT(16'h0004)) 
    \led[4]_INST_0 
       (.I0(address[15]),
        .I1(address[14]),
        .I2(address[13]),
        .I3(address[12]),
        .O(led[4]));
  LUT4 #(
    .INIT(16'h0400)) 
    \led[5]_INST_0 
       (.I0(address[15]),
        .I1(address[14]),
        .I2(address[13]),
        .I3(address[12]),
        .O(led[5]));
  LUT4 #(
    .INIT(16'h0400)) 
    \led[6]_INST_0 
       (.I0(address[15]),
        .I1(address[14]),
        .I2(address[12]),
        .I3(address[13]),
        .O(led[6]));
  LUT4 #(
    .INIT(16'h4000)) 
    \led[7]_INST_0 
       (.I0(address[15]),
        .I1(address[14]),
        .I2(address[13]),
        .I3(address[12]),
        .O(led[7]));
  LUT4 #(
    .INIT(16'h0004)) 
    \led[8]_INST_0 
       (.I0(address[14]),
        .I1(address[15]),
        .I2(address[13]),
        .I3(address[12]),
        .O(led[8]));
  LUT4 #(
    .INIT(16'h0400)) 
    \led[9]_INST_0 
       (.I0(address[14]),
        .I1(address[15]),
        .I2(address[13]),
        .I3(address[12]),
        .O(led[9]));
  LUT1 #(
    .INIT(2'h1)) 
    reset_n_INST_0
       (.I0(btn),
        .O(reset_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu_clock_gen
   (cpu_clock,
    CLK100MHZ);
  output [1:0]cpu_clock;
  input CLK100MHZ;

  wire CLK100MHZ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire [1:0]cpu_clock;
  wire p_0_in;
  wire [8:0]p_0_in__0;
  wire [1:1]p_1_out;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[4] ),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter[5]_i_1 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[6]_i_1 
       (.I0(\counter[8]_i_2_n_0 ),
        .I1(\counter_reg_n_0_[6] ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[7]_i_1 
       (.I0(\counter[8]_i_2_n_0 ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\counter_reg_n_0_[7] ),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[8]_i_1 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter[8]_i_2_n_0 ),
        .I2(\counter_reg_n_0_[7] ),
        .I3(p_0_in),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[8]_i_2 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter_reg_n_0_[2] ),
        .I5(\counter_reg_n_0_[4] ),
        .O(\counter[8]_i_2_n_0 ));
  FDRE \counter_reg[0] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \counter_reg[3] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \counter_reg[4] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(\counter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \counter_reg[5] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(\counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \counter_reg[6] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(\counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \counter_reg[7] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(\counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \counter_reg[8] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(p_0_in),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \state[1]_i_1 
       (.I0(p_0_in),
        .O(p_1_out));
  FDRE \state_reg[0] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_0_in),
        .Q(cpu_clock[0]),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_1_out),
        .Q(cpu_clock[1]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mc6800_controller
   (data_from_fpga,
    cpu_clock,
    address,
    sw,
    CLK100MHZ);
  output [1:0]data_from_fpga;
  output [1:0]cpu_clock;
  input [15:0]address;
  input [3:0]sw;
  input CLK100MHZ;

  wire CLK100MHZ;
  wire [15:0]address;
  wire [1:0]cpu_clock;
  wire [1:0]data_from_fpga;
  wire [3:0]sw;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu_clock_gen cpu_clock_gen_inst
       (.CLK100MHZ(CLK100MHZ),
        .cpu_clock(cpu_clock));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_program_rom program_rom_inst
       (.CLK100MHZ(CLK100MHZ),
        .address(address),
        .data_from_fpga(data_from_fpga),
        .sw(sw));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_program_rom
   (data_from_fpga,
    address,
    sw,
    CLK100MHZ);
  output [1:0]data_from_fpga;
  input [15:0]address;
  input [3:0]sw;
  input CLK100MHZ;

  wire CLK100MHZ;
  wire [15:0]address;
  wire [1:0]data_from_fpga;
  wire \out[0]_i_1_n_0 ;
  wire \out[0]_i_2_n_0 ;
  wire \out[0]_i_3_n_0 ;
  wire \out[0]_i_4_n_0 ;
  wire \out[0]_i_5_n_0 ;
  wire \out[0]_i_6_n_0 ;
  wire \out[6]_i_1_n_0 ;
  wire \out[6]_i_2_n_0 ;
  wire \out[6]_i_3_n_0 ;
  wire \out[6]_i_4_n_0 ;
  wire \out[6]_i_5_n_0 ;
  wire \out[6]_i_6_n_0 ;
  wire [3:0]sw;

  LUT6 #(
    .INIT(64'hFFFFFFAEFFFFFFFE)) 
    \out[0]_i_1 
       (.I0(\out[0]_i_2_n_0 ),
        .I1(\out[6]_i_2_n_0 ),
        .I2(address[6]),
        .I3(\out[0]_i_3_n_0 ),
        .I4(\out[0]_i_4_n_0 ),
        .I5(address[3]),
        .O(\out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFAAAAAAAA)) 
    \out[0]_i_2 
       (.I0(\out[0]_i_5_n_0 ),
        .I1(\out[0]_i_6_n_0 ),
        .I2(address[10]),
        .I3(address[4]),
        .I4(address[2]),
        .I5(address[6]),
        .O(\out[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \out[0]_i_3 
       (.I0(address[8]),
        .I1(address[9]),
        .I2(address[6]),
        .O(\out[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \out[0]_i_4 
       (.I0(address[5]),
        .I1(address[7]),
        .I2(address[6]),
        .O(\out[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h3FA0)) 
    \out[0]_i_5 
       (.I0(address[0]),
        .I1(address[11]),
        .I2(address[1]),
        .I3(address[6]),
        .O(\out[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \out[0]_i_6 
       (.I0(address[13]),
        .I1(address[12]),
        .I2(address[15]),
        .I3(address[14]),
        .O(\out[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \out[6]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[6]),
        .I3(\out[6]_i_2_n_0 ),
        .O(\out[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[6]_i_2 
       (.I0(\out[6]_i_3_n_0 ),
        .I1(\out[6]_i_4_n_0 ),
        .I2(\out[6]_i_5_n_0 ),
        .I3(\out[6]_i_6_n_0 ),
        .O(\out[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[6]_i_3 
       (.I0(address[7]),
        .I1(address[5]),
        .I2(address[9]),
        .I3(address[8]),
        .O(\out[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBE)) 
    \out[6]_i_4 
       (.I0(address[2]),
        .I1(address[15]),
        .I2(sw[3]),
        .I3(address[4]),
        .I4(address[3]),
        .O(\out[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \out[6]_i_5 
       (.I0(sw[0]),
        .I1(address[12]),
        .I2(sw[1]),
        .I3(address[13]),
        .O(\out[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEFFE)) 
    \out[6]_i_6 
       (.I0(address[11]),
        .I1(address[10]),
        .I2(sw[2]),
        .I3(address[14]),
        .O(\out[6]_i_6_n_0 ));
  FDRE \out_reg[0] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\out[0]_i_1_n_0 ),
        .Q(data_from_fpga[0]),
        .R(1'b0));
  FDRE \out_reg[6] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\out[6]_i_1_n_0 ),
        .Q(data_from_fpga[1]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
