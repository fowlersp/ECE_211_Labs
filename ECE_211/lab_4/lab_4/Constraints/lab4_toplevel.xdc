# Constraint file to test lab4_toplevel.xdc
#
#Bank = 14, Pin name = IO_L24N_T3_RS0_15,			    Sch name = SW0
set_property PACKAGE_PIN J15 [get_ports {data[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data[0]}]
#Bank = 14, Pin name = IO_L3N_T0_DQS_EMCCLK_14,			Sch name = SW1
set_property PACKAGE_PIN L16 [get_ports {data[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data[1]}]
#Bank = 14, Pin name = IO_L6N_T0_D08_VREF_14,			Sch name = SW2
set_property PACKAGE_PIN M13 [get_ports {data[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {data[2]}]		
#Bank = 14, Pin name = IO_L13N_T2_MRCC_14,			    Sch name = SW3
set_property PACKAGE_PIN R15 [get_ports {data[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {data[3]}]	
#Bank = 14, Pin name = IO_L20P_T3_A08_D24_14,			Sch name = SW13
set_property PACKAGE_PIN U12 [get_ports {a[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a[0]}]			
#Bank = 14, Pin name = IO_L19N_T3_A09_D25_VREF_14,		Sch name = SW14
set_property PACKAGE_PIN U11 [get_ports {a[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a[1]}]		
#Bank = 14, Pin name = IO_L21P_T3_DQS_14,		        Sch name = SW15
set_property PACKAGE_PIN V10 [get_ports {a[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {a[2]}]		


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

#decimal point
#Bank = 15, IO_L19N_T3_A21_VREF_15,					     Sch name = dp
#set_property PACKAGE_PIN H15 [get_ports {segs_1[6]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[6]}]

#anode outputs
#Bank = 15, IO_L23P_T3_FOE_B_15,					     Sch name = an[0]
set_property PACKAGE_PIN J17 [get_ports {an[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
#Bank = 15, IO_L23N_T3_FWE_B_15,					     Sch name = an[1]
set_property PACKAGE_PIN J18 [get_ports {an[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
#Bank = 14, IO_L24P_T3_A01_D17_14,					     Sch name = an[2]
set_property PACKAGE_PIN T9 [get_ports {an[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
#Bank = 15, IO_L19P_T3_A22_15,					         Sch name = an[3]
set_property PACKAGE_PIN J14 [get_ports {an[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]
#Bank = 14, IO_L8N_T1_D12_14,					         Sch name = an[4]
set_property PACKAGE_PIN P14 [get_ports {an[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[4]}]
#Bank = 14, IO_L14P_T2_SRCC_14,					         Sch name = an[5]
set_property PACKAGE_PIN T14 [get_ports {an[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[5]}]
#Bank = 35, IO_L23P_T3_35,					             Sch name = an[6]
set_property PACKAGE_PIN K2 [get_ports {an[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[6]}]
#Bank = 14, IO_L23N_T3_A02_D18_14,					     Sch name = an[7]
set_property PACKAGE_PIN U13 [get_ports {an[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[7]}]

