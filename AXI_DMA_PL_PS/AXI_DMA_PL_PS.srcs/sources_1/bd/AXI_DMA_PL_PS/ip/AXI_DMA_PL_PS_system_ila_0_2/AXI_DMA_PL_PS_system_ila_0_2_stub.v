// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Mar  3 18:06:00 2019
// Host        : SEELE-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               f:/ZYNQ7020/FPGA_EXAMPLE/AXI_DMA_PL_PS/AXI_DMA_PL_PS/AXI_DMA_PL_PS.srcs/sources_1/bd/AXI_DMA_PL_PS/ip/AXI_DMA_PL_PS_system_ila_0_2/AXI_DMA_PL_PS_system_ila_0_2_stub.v
// Design      : AXI_DMA_PL_PS_system_ila_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_8b20,Vivado 2017.4" *)
module AXI_DMA_PL_PS_system_ila_0_2(clk, SLOT_0_AXIS_tdata, SLOT_0_AXIS_tlast, 
  SLOT_0_AXIS_tvalid, resetn, SLOT_0_AXIS_tkeep)
/* synthesis syn_black_box black_box_pad_pin="clk,SLOT_0_AXIS_tdata[31:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tvalid,resetn,SLOT_0_AXIS_tkeep[3:0]" */;
  input clk;
  input [31:0]SLOT_0_AXIS_tdata;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tvalid;
  input resetn;
  input [3:0]SLOT_0_AXIS_tkeep;
endmodule