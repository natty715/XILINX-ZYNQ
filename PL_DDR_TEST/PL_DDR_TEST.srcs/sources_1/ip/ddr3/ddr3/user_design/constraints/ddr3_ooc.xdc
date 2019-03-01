###################################################################################################
## This constraints file contains default clock frequencies to be used during creation of a 
## Synthesis Design Checkpoint (DCP). For best results the frequencies should be modified 
## to match the target frequencies. 
## This constraints file is not used in top-down/global synthesis (not the default flow of Vivado).
###################################################################################################


##################################################################################################
## 
##  Xilinx, Inc. 2010            www.xilinx.com 
##  ���� ���� 24 19:44:11 2019
##  Generated by MIG Version 4.0
##  
##################################################################################################
##  File name :       ddr3.xdc
##  Details :     Constraints file
##                    FPGA Family:       ZYNQ
##                    FPGA Part:         XC7Z035-FFG676
##                    Speedgrade:        -2
##                    Design Entry:      VERILOG
##                    Frequency:         0 MHz
##                    Time Period:       1250 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR3_SDRAM->Components->MT41J256m16XX-125
## Data Width: 32
## Time Period: 1250
## Data Mask: 1
##################################################################################################

create_clock -period 5 [get_ports sys_clk_i]
          