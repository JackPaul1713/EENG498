
t
Command: %s
1870*	planAhead2?
+open_checkpoint enhancedPwm_v1_0_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.042 . Memory (MB): peak = 308.496 ; gain = 8.8402default:defaulth px� 
V
Loading part %s157*device2#
xc7z010clg400-12default:defaultZ21-403h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
865.3982default:default2
0.0002default:defaultZ17-268h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
22default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2023.12default:defaultZ1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
Read XDEF Files: 2default:default2
00:00:002default:default2 
00:00:00.0942default:default2
982.9382default:default2
24.8592default:defaultZ17-268h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
0.0000002default:default2
0.0000002default:defaultZ20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:002default:default2 
00:00:00.0942default:default2
982.9382default:default2
24.8592default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1367.0512default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2023.1 (64-bit)2default:default2
38658092default:defaultZ1-604h px� 
�
�Critical violations of the methodology design rules detected. Critical violations may contribute to timing failures or cause functional issues in hardware. Run report_methodology for more information.10702*	planAheadZ12-23575h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:112default:default2
00:00:122default:default2
1367.0512default:default2
1069.6252default:defaultZ17-268h px� 
p
Command: %s
53*	vivadotcl2?
+write_bitstream -force enhancedPwm_v1_0.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2023.1/data/ip2default:defaultZ19-2313h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�Unspecified I/O Standard: 91 out of 91 logical ports use I/O standard (IOSTANDARD) value 'DEFAULT', instead of a user assigned specific value. This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all I/O standards. This design will fail to generate a bitstream unless all logical ports have a user specified I/O standard value defined. To allow bitstream creation with unspecified I/O standard values (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks NSTD-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run. Problem ports: %s.%s*DRC2�
 ":
s00_axi_araddr[3]s00_axi_araddr[3]2default:default":
s00_axi_araddr[2]s00_axi_araddr[2]2default:default":
s00_axi_awaddr[3]s00_axi_awaddr[3]2default:default":
s00_axi_awaddr[2]s00_axi_awaddr[2]2default:default"7
s00_axi_bresp[1:0]s00_axi_bresp2default:default"8
s00_axi_rdata[31:0]s00_axi_rdata2default:default"7
s00_axi_rresp[1:0]s00_axi_rresp2default:default"8
s00_axi_wdata[31:0]s00_axi_wdata2default:default"7
s00_axi_wstrb[3:0]s00_axi_wstrb2default:default"&
enb_extenb_ext2default:default"2
pwmSignal_extpwmSignal_ext2default:default"0
rollOver_extrollOver_ext2default:default"0
s00_axi_aclks00_axi_aclk2default:default"6
s00_axi_aresetns00_axi_aresetn2default:default"2
s00_axi_arreadys00_axi_arready2default:..."/
(the first 15 of 24 listed)2default:default2default:default2(
 DRC|Pin Planning2default:default8ZNSTD-1h px� 
�
�Unconstrained Logical Port: 91 out of 91 logical ports have no user assigned specific location constraint (LOC). This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all pin locations. This design will fail to generate a bitstream unless all logical ports have a user specified site LOC constraint defined.  To allow bitstream creation with unspecified pin locations (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks UCIO-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run.  Problem ports: %s.%s*DRC2�
 ":
s00_axi_araddr[3]s00_axi_araddr[3]2default:default":
s00_axi_araddr[2]s00_axi_araddr[2]2default:default":
s00_axi_awaddr[3]s00_axi_awaddr[3]2default:default":
s00_axi_awaddr[2]s00_axi_awaddr[2]2default:default"7
s00_axi_bresp[1:0]s00_axi_bresp2default:default"8
s00_axi_rdata[31:0]s00_axi_rdata2default:default"7
s00_axi_rresp[1:0]s00_axi_rresp2default:default"8
s00_axi_wdata[31:0]s00_axi_wdata2default:default"7
s00_axi_wstrb[3:0]s00_axi_wstrb2default:default"&
enb_extenb_ext2default:default"2
pwmSignal_extpwmSignal_ext2default:default"0
rollOver_extrollOver_ext2default:default"0
s00_axi_aclks00_axi_aclk2default:default"6
s00_axi_aresetns00_axi_aresetn2default:default"2
s00_axi_arreadys00_axi_arready2default:..."/
(the first 15 of 24 listed)2default:default2default:default2(
 DRC|Pin Planning2default:default8ZUCIO-1h px� 
�
uPS7 block required: The PS7 cell must be used in this Zynq design in order to enable correct default configuration.%s*DRC2;
 #DRC|PS7|Zynq requires PS7 block|PS72default:default8ZZPS7-1h px� 
f
DRC finished with %s
1905*	planAhead2(
2 Errors, 1 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
R
+Error(s) found during DRC. Bitgen not run.
1345*	planAheadZ12-1345h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
152default:default2
22default:default2
02default:default2
32default:defaultZ4-41h px� 
Q

%s failed
30*	vivadotcl2#
write_bitstream2default:defaultZ4-43h px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Nov 30 21:51:40 20232default:defaultZ17-206h px� 


End Record