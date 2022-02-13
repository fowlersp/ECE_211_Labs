#Constraint file to test lab4_toplevel.xdc
#
#Bank = 14, Pin name = IO_L24N_T3_RS0_15,			Sch name = Sw0
set_property PACKAGE_PIN J15 [get_ports {b[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {b[0]}]
#Bank = 14, Pin name = IO_L3N_T0_DQS_EMCCLK_14, 		Sch name = Sw1
set_property PACKAGE_PIN L16 [get_ports {b[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {b[1]}]
#Bank = 14, Pin name = IO_L6N_T3_D08_VREF_14,		Sch name = Sw2
set_property PACKAGE_PIN M13 [get_ports {b[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {b[2]}]
#Bank = 14, Pin name = IO_L13N_T2_MRCC_14, 			Sch name = Sw3
set_property PACKAGE_PIN R15 [get_ports {b[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {b[3]}]
#Bank = 14, Pin name = IO_L20P_T3_A08_D24_14		Sch name = Sw4
set_property PACKAGE_PIN R17 [get_ports {b[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {b[4]}]
#Bank = 14, Pin name = IO_L19N_T3_A09_D25_VREF_14, 	Sch name = Sw5
set_property PACKAGE_PIN T18 [get_ports {b[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {b[5]}]
#Bank = 14, Pin name = IO_L19N_T3_A09_D25_VREF_14, 	Sch name = Sw6
set_property PACKAGE_PIN U18 [get_ports {b[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {b[6]}]
#Bank = 14, Pin name = IO_L21_T3_DQS_14,			Sch name = Sw7
set_property PACKAGE_PIN R13 [get_ports {b[7]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {b[7]}]


##ones
#Bank = 14, IO_L24N_T3_A00_D16_14, 				Sch name = ca
set_property PACKAGE_PIN H17 [get_ports {ones[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {ones[0]}]
#Bank = 14, IO_25_14,							Sch name = cb
set_property PACKAGE_PIN K15 [get_ports {ones[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {ones[1]}]
#Bank = 15, IO_25_15,							Sch name = cc
set_property PACKAGE_PIN J13 [get_ports {ones[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {ones[2]}]		
#Bank = 15, IO_L17P_T2_A26_15,					Sch name = cd
set_property PACKAGE_PIN N14 [get_ports {ones[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {ones[3]}]
	
##tens	
#Bank = 14, IO_L13P_T2_MRCC_14,					Sch name = ce
set_property PACKAGE_PIN R18 [get_ports {tens[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {tens[0]}]
#Bank = 14, IO_L19P_T3_A10_D26_14,				Sch name = cf
set_property PACKAGE_PIN V17 [get_ports {tens[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {tens[1]}]
#Bank = 14, IO_L4P_T0_D04_14,					Sch name = cg
set_property PACKAGE_PIN U17 [get_ports {tens[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {tens[2]}]
#Bank = 14, IO_L4P_T0_D04_14,					Sch name = cg
set_property PACKAGE_PIN U16 [get_ports {tens[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {tens[3]}]

##hundreds
#Bank = 14, IO_L4P_T0_D04_14,					Sch name = cg
set_property PACKAGE_PIN V16 [get_ports {hundreds[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {hundreds[0]}]
#Bank = 14, IO_L4P_T0_D04_14,					Sch name = cg
set_property PACKAGE_PIN T15 [get_ports {hundreds[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {hundreds[1]}]
#Bank = 14, IO_L4P_T0_D04_14,					Sch name = cg
set_property PACKAGE_PIN U14 [get_ports {hundreds[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {hundreds[2]}]
#Bank = 14, IO_L4P_T0_D04_14,					Sch name = cg
set_property PACKAGE_PIN T16 [get_ports {hundreds[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {hundreds[3]}]
	