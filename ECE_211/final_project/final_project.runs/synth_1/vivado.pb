
y
Command: %s
53*	vivadotcl2H
4synth_design -top project_top -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
104642default:defaultZ8-7075h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1140.445 ; gain = 57.723
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
project_top2default:default2
 2default:default2Z
DC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/project_top.sv2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
clkdiv2default:default2
 2default:default2J
4C:/Users/fowlersp/Documents/ECE_211/Lab 07/clkdiv.sv2default:default2
302default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DIVFREQ bound to: 1000 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DIVBITS bound to: 26 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter CLKFREQ bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DIVAMT bound to: 50000 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clkdiv2default:default2
 2default:default2
12default:default2
12default:default2J
4C:/Users/fowlersp/Documents/ECE_211/Lab 07/clkdiv.sv2default:default2
302default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
heart_rate_top2default:default2
 2default:default2]
GC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/heart_rate_top.sv2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
delay_counter2default:default2
 2default:default2\
FC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/delay_counter.sv2default:default2
242default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter DELAY_LIMIT bound to: 5000 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter DELAY_WIDTH bound to: 13 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
delay_counter2default:default2
 2default:default2
22default:default2
12default:default2\
FC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/delay_counter.sv2default:default2
242default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	pulse_cnt2default:default2
 2default:default2X
BC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/pulse_cnt.sv2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
debounce2default:default2
 2default:default2W
AC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/debounce.sv2default:default2
232default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter CLKFREQ bound to: 1000 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter DEBOUNCE_MS bound to: 10 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter CTRBITS bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
debounce2default:default2
 2default:default2
32default:default2
12default:default2W
AC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/debounce.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
single_pulser2default:default2
 2default:default2\
FC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/single_pulser.sv2default:default2
242default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
single_pulser2default:default2
 2default:default2
42default:default2
12default:default2\
FC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/single_pulser.sv2default:default2
242default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	pulse_cnt2default:default2
 2default:default2
52default:default2
12default:default2X
BC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/pulse_cnt.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
register2default:default2
 2default:default2W
AC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/register.sv2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
register2default:default2
 2default:default2
62default:default2
12default:default2W
AC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/register.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
add_62default:default2
 2default:default2T
>C:/Users/fowlersp/Documents/ECE_211/final_project/RTL/add_6.sv2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
adder2default:default2
 2default:default2T
>C:/Users/fowlersp/Documents/ECE_211/final_project/RTL/adder.sv2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
adder2default:default2
 2default:default2
72default:default2
12default:default2T
>C:/Users/fowlersp/Documents/ECE_211/final_project/RTL/adder.sv2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
add_62default:default2
 2default:default2
82default:default2
12default:default2T
>C:/Users/fowlersp/Documents/ECE_211/final_project/RTL/add_6.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
add_72default:default2
 2default:default2T
>C:/Users/fowlersp/Documents/ECE_211/final_project/RTL/add_7.sv2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
add_72default:default2
 2default:default2
92default:default2
12default:default2T
>C:/Users/fowlersp/Documents/ECE_211/final_project/RTL/add_7.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
average2default:default2
 2default:default2V
@C:/Users/fowlersp/Documents/ECE_211/final_project/RTL/average.sv2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
average2default:default2
 2default:default2
102default:default2
12default:default2V
@C:/Users/fowlersp/Documents/ECE_211/final_project/RTL/average.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
binary_to_bcd2default:default2
 2default:default2\
FC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/binary_to_bcd.sv2default:default2
242default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
add32default:default2
 2default:default2S
=C:/Users/fowlersp/Documents/ECE_211/final_project/RTL/add3.sv2default:default2
242default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
add32default:default2
 2default:default2
112default:default2
12default:default2S
=C:/Users/fowlersp/Documents/ECE_211/final_project/RTL/add3.sv2default:default2
242default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
binary_to_bcd2default:default2
 2default:default2
122default:default2
12default:default2\
FC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/binary_to_bcd.sv2default:default2
242default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
heart_rate_top2default:default2
 2default:default2
132default:default2
12default:default2]
GC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/heart_rate_top.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
reaction_timer_top2default:default2
 2default:default2a
KC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/reaction_timer_top.sv2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
reaction_fsm2default:default2
 2default:default2[
EC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/reaction_fsm.sv2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
reaction_fsm2default:default2
 2default:default2
142default:default2
12default:default2[
EC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/reaction_fsm.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
rgb_control2default:default2
 2default:default2Z
DC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/rgb_control.sv2default:default2
222default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
rgb_control2default:default2
 2default:default2
152default:default2
12default:default2Z
DC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/rgb_control.sv2default:default2
222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
time_cnt2default:default2
 2default:default2W
AC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/time_cnt.sv2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
time_cnt2default:default2
 2default:default2
162default:default2
12default:default2W
AC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/time_cnt.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
random_wait2default:default2
 2default:default2Z
DC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/random_wait.sv2default:default2
222default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
random_wait2default:default2
 2default:default2
172default:default2
12default:default2Z
DC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/random_wait.sv2default:default2
222default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
reaction_timer_top2default:default2
 2default:default2
182default:default2
12default:default2a
KC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/reaction_timer_top.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
mode_select2default:default2
 2default:default2Z
DC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/mode_select.sv2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mode_select2default:default2
 2default:default2
192default:default2
12default:default2Z
DC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/mode_select.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
seven_seg_top2default:default2
 2default:default2\
FC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/seven_seg_top.sv2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
mux_8_12default:default2
 2default:default2T
>C:/Users/fowlersp/Documents/ECE_211/Lab07/Lab07/RTL/mux_8_1.sv2default:default2
232default:default8@Z8-6157h px? 
?
default block is never used226*oasys2T
>C:/Users/fowlersp/Documents/ECE_211/Lab07/Lab07/RTL/mux_8_1.sv2default:default2
272default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux_8_12default:default2
 2default:default2
202default:default2
12default:default2T
>C:/Users/fowlersp/Documents/ECE_211/Lab07/Lab07/RTL/mux_8_1.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
dec_3_82default:default2
 2default:default2T
>C:/Users/fowlersp/Documents/ECE_211/Lab07/Lab07/RTL/dec_3_8.sv2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
dec_3_82default:default2
 2default:default2
212default:default2
12default:default2T
>C:/Users/fowlersp/Documents/ECE_211/Lab07/Lab07/RTL/dec_3_8.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
sevenseg_hex2default:default2
 2default:default2[
EC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/sevenseg_hex.sv2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
sevenseg_hex2default:default2
 2default:default2
222default:default2
12default:default2[
EC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/sevenseg_hex.sv2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
seven_seg_top2default:default2
 2default:default2
232default:default2
12default:default2\
FC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/seven_seg_top.sv2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
project_top2default:default2
 2default:default2
242default:default2
12default:default2Z
DC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/project_top.sv2default:default2
232default:default8@Z8-6155h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1194.484 ; gain = 111.762
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1194.484 ; gain = 111.762
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1194.484 ; gain = 111.762
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0102default:default2
1194.4842default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2b
LC:/Users/fowlersp/Documents/ECE_211/final_project/Constraint/project_top.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2b
LC:/Users/fowlersp/Documents/ECE_211/final_project/Constraint/project_top.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2`
LC:/Users/fowlersp/Documents/ECE_211/final_project/Constraint/project_top.xdc2default:default21
.Xil/project_top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1310.0432default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1310.0432default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1310.043 ; gain = 227.320
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1310.043 ; gain = 227.320
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1310.043 ; gain = 227.320
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
ps_reg2default:default2 
reaction_fsm2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  starts |                          0000001 |                              110
2default:defaulth p
x
? 
?
%s
*synth2s
_                  wait_t |                          0000010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 error_r |                          0000100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                 input_t |                          0001000 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_                 error_y |                          0010000 |                              100
2default:defaulth p
x
? 
?
%s
*synth2s
_                output_d |                          0100000 |                              101
2default:defaulth p
x
? 
?
%s
*synth2s
_                    Idle |                          1000000 |                              000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
ps_reg2default:default2
one-hot2default:default2 
reaction_fsm2default:defaultZ8-3354h px? 
?
!inferring latch for variable '%s'327*oasys2!
color_rgb_reg2default:default2[
EC:/Users/fowlersp/Documents/ECE_211/final_project/RTL/reaction_fsm.sv2default:default2
542default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
dp_reg2default:default2T
>C:/Users/fowlersp/Documents/ECE_211/Lab07/Lab07/RTL/dec_3_8.sv2default:default2
332default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 1310.043 ; gain = 227.320
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   26 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit         XORs := 13    
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               26 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   26 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 10    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1310.043 ; gain = 227.320
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:36 ; elapsed = 00:00:38 . Memory (MB): peak = 1310.043 ; gain = 227.320
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:36 ; elapsed = 00:00:38 . Memory (MB): peak = 1313.625 ; gain = 230.902
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:36 ; elapsed = 00:00:38 . Memory (MB): peak = 1320.496 ; gain = 237.773
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1336.176 ; gain = 253.453
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1336.176 ; gain = 253.453
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1336.176 ; gain = 253.453
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1336.176 ; gain = 253.453
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1336.176 ; gain = 253.453
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1336.176 ; gain = 253.453
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     2|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    23|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |    11|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    13|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |    13|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    42|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |    36|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |    55|
2default:defaulth px? 
D
%s*synth2,
|9     |FDRE   |   125|
2default:defaulth px? 
D
%s*synth2,
|10    |FDSE   |     2|
2default:defaulth px? 
D
%s*synth2,
|11    |LD     |     3|
2default:defaulth px? 
D
%s*synth2,
|12    |LDP    |     1|
2default:defaulth px? 
D
%s*synth2,
|13    |IBUF   |     6|
2default:defaulth px? 
D
%s*synth2,
|14    |OBUF   |    19|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1336.176 ; gain = 253.453
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:30 ; elapsed = 00:00:41 . Memory (MB): peak = 1336.176 ; gain = 137.895
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1336.176 ; gain = 253.453
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1348.2582default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
272default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1348.2582default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2t
`  A total of 4 instances were transformed.
  LD => LDCE: 3 instances
  LDP => LDPE: 1 instance 
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
662default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:502default:default2
00:00:542default:default2
1348.2582default:default2
265.5352default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2p
\C:/Users/fowlersp/Documents/ECE_211/final_project/final_project.runs/synth_1/project_top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
lExecuting : report_utilization -file project_top_utilization_synth.rpt -pb project_top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Dec  7 08:03:27 20212default:defaultZ17-206h px? 


End Record