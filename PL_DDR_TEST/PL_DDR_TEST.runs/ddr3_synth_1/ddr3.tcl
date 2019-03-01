# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7z035ffg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.cache/wt [current_project]
set_property parent.project_path F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3.xci
set_property used_in_implementation false [get_files -all f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/constraints/ddr3.xdc]
set_property used_in_implementation false [get_files -all f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/constraints/ddr3_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.runs/ddr3_synth_1 -new_name ddr3 -ip [get_ips ddr3]]

if { $cached_ip eq {} } {

synth_design -top ddr3 -part xc7z035ffg676-2 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix ddr3_ ddr3.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ddr3_stub.v
 lappend ipCachedFiles ddr3_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ddr3_stub.vhdl
 lappend ipCachedFiles ddr3_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ddr3_sim_netlist.v
 lappend ipCachedFiles ddr3_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ddr3_sim_netlist.vhdl
 lappend ipCachedFiles ddr3_sim_netlist.vhdl

 config_ip_cache -add -dcp ddr3.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips ddr3]
}

rename_ref -prefix_all ddr3_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef ddr3.dcp
create_report "ddr3_synth_1_synth_report_utilization_0" "report_utilization -file ddr3_utilization_synth.rpt -pb ddr3_utilization_synth.pb"

if { [catch {
  file copy -force F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.runs/ddr3_synth_1/ddr3.dcp f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.runs/ddr3_synth_1/ddr3.dcp f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.runs/ddr3_synth_1/ddr3_stub.v f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.runs/ddr3_synth_1/ddr3_stub.vhdl f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.runs/ddr3_synth_1/ddr3_sim_netlist.v f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.runs/ddr3_synth_1/ddr3_sim_netlist.vhdl f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.ip_user_files/ip/ddr3]} {
  catch { 
    file copy -force f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3_stub.v F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.ip_user_files/ip/ddr3
  }
}

if {[file isdir F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.ip_user_files/ip/ddr3]} {
  catch { 
    file copy -force f:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3_stub.vhdl F:/ZYNQ7020/FPGA_EXAMPLE/PL_DDR_TEST/PL_DDR_TEST/PL_DDR_TEST.ip_user_files/ip/ddr3
  }
}
