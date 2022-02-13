## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk_100MHz }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk_100MHz}];

#Bank = 14, Pin name = IO_L24N_T3_RS0_15,			
set_property PACKAGE_PIN J15 [get_ports {b[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {ls}]
#Bank = 14, Pin name = IO_L3N_T0_DQS_EMCCLK_14, 		
set_property PACKAGE_PIN L16 [get_ports {b[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {rs}]
#Bank = 14, Pin name = IO_L6N_T3_D08_VREF_14,		
set_property PACKAGE_PIN M13 [get_ports {b[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {haz}]


##ones
#Bank = 14, IO_L24N_T3_A00_D16_14, 				
set_property PACKAGE_PIN H17 [get_ports {rc}]
	set_property IOSTANDARD LVCMOS33 [get_ports {rc}]
#Bank = 14, IO_25_14,							
set_property PACKAGE_PIN K15 [get_ports {rb}]
	set_property IOSTANDARD LVCMOS33 [get_ports {rb}]
#Bank = 15, IO_25_15,							
set_property PACKAGE_PIN J13 [get_ports {ra}]
	set_property IOSTANDARD LVCMOS33 [get_ports {ra}]		
#Bank = 15, IO_L17P_T2_A26_15,					
set_property PACKAGE_PIN N14 [get_ports {la}]
	set_property IOSTANDARD LVCMOS33 [get_ports {la}]
	

#Bank = 14, IO_L13P_T2_MRCC_14,					
set_property PACKAGE_PIN R18 [get_ports {lb}]
	set_property IOSTANDARD LVCMOS33 [get_ports {lb}]
#Bank = 14, IO_L19P_T3_A10_D26_14,				
set_property PACKAGE_PIN V17 [get_ports {lc}]
	set_property IOSTANDARD LVCMOS33 [get_ports {lc}]
