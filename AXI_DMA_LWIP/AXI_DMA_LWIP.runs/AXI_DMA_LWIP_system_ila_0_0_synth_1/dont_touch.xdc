# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# IP: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/AXI_DMA_LWIP_system_ila_0_0.xci
# IP: The module: 'AXI_DMA_LWIP_system_ila_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# Block Designs: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/bd_0/bd_983d.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_983d || ORIG_REF_NAME==bd_983d} -quiet] -quiet

# IP: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/bd_0/ip/ip_0/bd_983d_ila_lib_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_983d_ila_lib_0 || ORIG_REF_NAME==bd_983d_ila_lib_0} -quiet] -quiet

# IP: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/bd_0/ip/ip_1/bd_983d_g_inst_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_983d_g_inst_0 || ORIG_REF_NAME==bd_983d_g_inst_0} -quiet] -quiet

# XDC: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_983d_ila_lib_0 || ORIG_REF_NAME==bd_983d_ila_lib_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_983d_ila_lib_0 || ORIG_REF_NAME==bd_983d_ila_lib_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/bd_0/ip/ip_0/bd_983d_ila_lib_0_ooc.xdc

# XDC: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/bd_0/bd_983d_ooc.xdc

# XDC: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/AXI_DMA_LWIP_system_ila_0_0_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'AXI_DMA_LWIP_system_ila_0_0'. Do not add the DONT_TOUCH constraint.
set_property DONT_TOUCH TRUE [get_cells inst -quiet] -quiet

# IP: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/AXI_DMA_LWIP_system_ila_0_0.xci
# IP: The module: 'AXI_DMA_LWIP_system_ila_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# Block Designs: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/bd_0/bd_983d.bd
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_983d || ORIG_REF_NAME==bd_983d} -quiet] -quiet

# IP: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/bd_0/ip/ip_0/bd_983d_ila_lib_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_983d_ila_lib_0 || ORIG_REF_NAME==bd_983d_ila_lib_0} -quiet] -quiet

# IP: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/bd_0/ip/ip_1/bd_983d_g_inst_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_983d_g_inst_0 || ORIG_REF_NAME==bd_983d_g_inst_0} -quiet] -quiet

# XDC: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_983d_ila_lib_0 || ORIG_REF_NAME==bd_983d_ila_lib_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_983d_ila_lib_0 || ORIG_REF_NAME==bd_983d_ila_lib_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/bd_0/ip/ip_0/bd_983d_ila_lib_0_ooc.xdc

# XDC: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/bd_0/bd_983d_ooc.xdc

# XDC: f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_LWIP/AXI_DMA_LWIP.srcs/sources_1/bd/AXI_DMA_LWIP/ip/AXI_DMA_LWIP_system_ila_0_0/AXI_DMA_LWIP_system_ila_0_0_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'AXI_DMA_LWIP_system_ila_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property DONT_TOUCH TRUE [get_cells inst -quiet] -quiet
