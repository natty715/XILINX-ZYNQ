
o
Command: %s
53*	vivadotcl2>
*link_design -top top -part xc7z035ffg676-22default:defaultZ4-113h px� 
g
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_12default:defaultZ12-437h px� 
j
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_12default:defaultZ12-434h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2z
ff:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp2default:default2
	clk_refm02default:defaultZ1-454h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2p
\f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3.dcp2default:default2
u_ddr32default:defaultZ1-454h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
7332default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2017.42default:defaultZ1-479h px� 
V
Loading part %s157*device2#
xc7z035ffg676-22default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
lf:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc2default:default2$
clk_refm0/inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
lf:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc2default:default2$
clk_refm0/inst	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2|
ff:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2$
clk_refm0/inst	2default:default8Z20-848h px� 
�
%Done setting XDC timing constraints.
35*timing2|
ff:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2
572default:default8@Z38-35h px� 
�
Deriving generated clocks
2*timing2|
ff:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2
572default:default8@Z38-2h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
get_clocks: 2default:default2
00:00:162default:default2
00:00:172default:default2
1349.7232default:default2
585.6132default:defaultZ17-268h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2|
ff:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2$
clk_refm0/inst	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
yf:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/constraints/ddr3.xdc2default:default2
u_ddr3	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
yf:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/constraints/ddr3.xdc2default:default2
u_ddr3	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2r
\F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/constrs_1/new/ddr_test.xdc2default:default8Z20-179h px� 
�
nA clock with name '%s' already exists, creating a clock with the same name will overwrite the previous clock.
576*constraints2
sys_clk2default:default2r
\F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/constrs_1/new/ddr_test.xdc2default:default2
92default:default8@Z18-619h px� 
�
Finished Parsing XDC File [%s]
178*designutils2r
\F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/constrs_1/new/ddr_test.xdc2default:default8Z20-178h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 268 instances were transformed.
  IOBUFDS_DIFF_OUT_DCIEN => IOBUFDS_DIFF_OUT_DCIEN (IBUFDS_IBUFDISABLE_INT, IBUFDS_IBUFDISABLE_INT, INV, OBUFTDS_DCIEN, OBUFTDS_DCIEN): 4 instances
  IOBUF_DCIEN => IOBUF_DCIEN (IBUF_IBUFDISABLE, OBUFT_DCIEN): 32 instances
  OBUFDS => OBUFDS_DUAL_BUF (INV, OBUFDS, OBUFDS): 1 instances
  RAM32M => RAM32M (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 231 instances
2default:defaultZ1-111h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
112default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px� 
]
%s completed successfully
29*	vivadotcl2
link_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2!
link_design: 2default:default2
00:00:322default:default2
00:00:342default:default2
1397.1562default:default2
1085.7812default:defaultZ17-268h px� 


End Record