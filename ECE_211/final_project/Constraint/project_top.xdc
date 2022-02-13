set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk}]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];

##select mode (pulse/reaction)			
set_property PACKAGE_PIN J15 [get_ports {mode}]                  
	set_property IOSTANDARD LVCMOS33 [get_ports {mode}]
##reaction start (random wait initiate)	
set_property PACKAGE_PIN N17 [get_ports {start}]                        
	set_property IOSTANDARD LVCMOS33 [get_ports {start}]
##reaction input	
set_property PACKAGE_PIN P18 [get_ports {enter}]                        
	set_property IOSTANDARD LVCMOS33 [get_ports {enter}]
##reset
set_property PACKAGE_PIN P17 [get_ports {rst}]                          
	set_property IOSTANDARD LVCMOS33 [get_ports {rst}]
##reaction light red
set_property PACKAGE_PIN N15 [get_ports {rgb_r}]                 
	set_property IOSTANDARD LVCMOS33 [get_ports {rgb_r}]
##reaction light green	
set_property PACKAGE_PIN M16 [get_ports {rgb_g}]                 
	set_property IOSTANDARD LVCMOS33 [get_ports {rgb_g}]
##reaction light blue
set_property PACKAGE_PIN R12 [get_ports {rgb_b}]                 
	set_property IOSTANDARD LVCMOS33 [get_ports {rgb_b}]

##Pulse sensor JA pins????
set_property PACKAGE_PIN C17 [get_ports {pulse}]           
	set_property IOSTANDARD LVCMOS33 [get_ports {pulse}]


##7 segment display
#Bank = 14, IO_L24N_T3_A00_D16_14, 				Sch name = ca
set_property PACKAGE_PIN T10 [get_ports {segs_1[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[6]}]
#Bank = 14, IO_25_14,							Sch name = cb
set_property PACKAGE_PIN R10 [get_ports {segs_1[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[5]}]
#Bank = 15, IO_25_15,							Sch name = cc
set_property PACKAGE_PIN K16 [get_ports {segs_1[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[4]}]		
#Bank = 15, IO_L17P_T2_A26_15,					Sch name = cd
set_property PACKAGE_PIN K13 [get_ports {segs_1[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[3]}]
#Bank = 14, IO_L13P_T2_MRCC_14,					Sch name = ce
set_property PACKAGE_PIN P15 [get_ports {segs_1[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[2]}]
#Bank = 14, IO_L19P_T3_A10_D26_14,				Sch name = cf
set_property PACKAGE_PIN T11 [get_ports {segs_1[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[1]}]
#Bank = 14, IO_L4P_T0_D04_14,					Sch name = cg
set_property PACKAGE_PIN L18 [get_ports {segs_1[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[0]}]

#Decimal Point	
#Bank = 14, IO_L4P_T0_D04_14,					Sch name = cg
set_property PACKAGE_PIN H15 [get_ports {dp}]
	set_property IOSTANDARD LVCMOS33 [get_ports {dp}]

#anode outputs
#Bank = 15, IO_L33p_T3_FOE_B_15, 				Sch name = an[0]
set_property PACKAGE_PIN J17 [get_ports {an[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
#Bank = 15, IO_L23N_T3_FWE_B_15, 				Sch name = an[1]
set_property PACKAGE_PIN J18 [get_ports {an[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
#Bank = 14, IO_L24p_T3_A01_D17_14, 				Sch name = an[2]
set_property PACKAGE_PIN T9 [get_ports {an[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
#Bank = 15, IO_L19p_T3_A22_15, 					Sch name = an[3]
set_property PACKAGE_PIN J14 [get_ports {an[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]
#Bank = 14, IO_L8N_T1_D12_14, 					Sch name = an[4]
set_property PACKAGE_PIN P14 [get_ports {an[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {an[4]}]
#Bank = 14, IO_L14p_T2_SRCC_14, 					Sch name = an[5]
set_property PACKAGE_PIN T14 [get_ports {an[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {an[5]}]
#Bank = 35, IO_L23p_T3_35, 						Sch name = an[6]
set_property PACKAGE_PIN K2 [get_ports {an[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {an[6]}]
#Bank = 14, IO_L23N_T3_A02_D18_14, 				Sch name = an[7]
set_property PACKAGE_PIN U13 [get_ports {an[7]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {an[7]}]

