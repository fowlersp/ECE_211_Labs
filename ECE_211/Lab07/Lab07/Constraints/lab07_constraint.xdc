#Constraint file to test lab7_toplevel.xdc
#

## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk_100MHz }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk_100MHz}];

#Bank = 14, Pin name = IO_L24N_T3_RS0_15,			Sch name = Sw0
set_property PACKAGE_PIN J15 [get_ports {a0[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a0[0]}]
#Bank = 14, Pin name = IO_L3N_T0_DQS_EMCCLK_14, 	Sch name = Sw1
set_property PACKAGE_PIN L16 [get_ports {a0[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a0[1]}]
#Bank = 14, Pin name = IO_L6N_T3_D08_VREF_14,		Sch name = Sw2
set_property PACKAGE_PIN M13 [get_ports {a0[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a0[2]}]
#Bank = 14, Pin name = IO_L13N_T2_MRCC_14, 			Sch name = Sw3
set_property PACKAGE_PIN R15 [get_ports {a0[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a0[3]}]
#Bank = 14, Pin name = IO_L20P_T3_A08_D24_14		Sch name = Sw4
set_property PACKAGE_PIN R17 [get_ports {a1[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a1[0]}]
#Bank = 14, Pin name = IO_L19N_T3_A09_D25_VREF_14, 	Sch name = Sw5
set_property PACKAGE_PIN T18 [get_ports {a1[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a1[1]}]
#Bank = 14, Pin name = IO_L19N_T3_A09_D25_VREF_14, 	Sch name = Sw6
set_property PACKAGE_PIN U18 [get_ports {a1[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a1[2]}]
#Bank = 14, Pin name = IO_L21_T3_DQS_14,			Sch name = Sw7
set_property PACKAGE_PIN R13 [get_ports {a1[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a1[3]}]
	
set_property PACKAGE_PIN T8 [get_ports {a2[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a2[0]}]
#Bank = 14, Pin name = IO_L3N_T0_DQS_EMCCLK_14, 	Sch name = Sw8
set_property PACKAGE_PIN U8 [get_ports {a2[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a2[1]}]
#Bank = 14, Pin name = IO_L6N_T3_D08_VREF_14,		Sch name = Sw9
set_property PACKAGE_PIN R16 [get_ports {a2[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a2[2]}]
#Bank = 14, Pin name = IO_L13N_T2_MRCC_14, 			Sch name = Sw10
set_property PACKAGE_PIN T13 [get_ports {a2[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a2[3]}]
#Bank = 14, Pin name = IO_L20P_T3_A08_D24_14		Sch name = Sw11
set_property PACKAGE_PIN H6 [get_ports {a3[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a3[0]}]
#Bank = 14, Pin name = IO_L19N_T3_A09_D25_VREF_14, 	Sch name = Sw12
set_property PACKAGE_PIN U12 [get_ports {a3[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a3[1]}]
#Bank = 14, Pin name = IO_L19N_T3_A09_D25_VREF_14, 	Sch name = Sw13
set_property PACKAGE_PIN U11 [get_ports {a3[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a3[2]}]
#Bank = 14, Pin name = IO_L21_T3_DQS_14,			Sch name = Sw14
set_property PACKAGE_PIN V10 [get_ports {a3[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a3[3]}]





##7 segment display
#Bank = 14, IO_L24N_T3_A00_D16_14,					   	Sch name = ca
set_property PACKAGE_PIN T10 [get_ports {segs_1[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[6]}]
#Bank = 14, IO_25_14,					            	Sch name = cb
set_property PACKAGE_PIN R10 [get_ports {segs_1[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[5]}]
#Bank = 15, IO_25_15,					            	Sch name = cc
set_property PACKAGE_PIN K16 [get_ports {segs_1[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[4]}]
#Bank = 15, IO_L17P_T2_A26_15,					        Sch name = cd
set_property PACKAGE_PIN K13 [get_ports {segs_1[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[3]}]
#Bank = 14, IO_L13P_T2_MRCC_14,					        Sch name = ce
set_property PACKAGE_PIN P15 [get_ports {segs_1[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[2]}]
#Bank = 14, IO_L19P_T3_A10_D26_14,					    Sch name = cf
set_property PACKAGE_PIN T11 [get_ports {segs_1[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[1]}]
#Bank = 14, IO_L4P_T0_D04_14,					         Sch name = cg
set_property PACKAGE_PIN L18 [get_ports {segs_1[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[0]}]


#anode outputs
#Bank = 15, IO_L23P_T3_FOE_B_15,					     Sch name = an[0]
set_property PACKAGE_PIN J17 [get_ports {an_1[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an_1[0]}]
#Bank = 15, IO_L23N_T3_FWE_B_15,					     Sch name = an[1]
set_property PACKAGE_PIN J18 [get_ports {an_1[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an_1[1]}]
#Bank = 14, IO_L24P_T3_A01_D17_14,					     Sch name = an[2]
set_property PACKAGE_PIN T9 [get_ports {an_1[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an_1[2]}]
#Bank = 15, IO_L19P_T3_A22_15,					         Sch name = an[3]
set_property PACKAGE_PIN J14 [get_ports {an_1[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an_1[3]}]
#Bank = 14, IO_L8N_T1_D12_14,					         Sch name = an[4]
set_property PACKAGE_PIN P14 [get_ports {an_1[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an_1[4]}]
#Bank = 14, IO_L14P_T2_SRCC_14,					         Sch name = an[5]
set_property PACKAGE_PIN T14 [get_ports {an_1[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an_1[5]}]
#Bank = 35, IO_L23P_T3_35,					             Sch name = an[6]
set_property PACKAGE_PIN K2 [get_ports {an_1[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an_1[6]}]
#Bank = 14, IO_L23N_T3_A02_D18_14,					     Sch name = an[7]
set_property PACKAGE_PIN U13 [get_ports {an_1[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an_1[7]}]

#button out
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports {rst}]; #IO_L9P_T1_DQS_14 Sch=btnc
	