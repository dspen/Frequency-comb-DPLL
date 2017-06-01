# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.cache/wt [current_project]
set_property parent.project_path /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_ip /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.srcs/sources_1/ip/pll_wide_mult/pll_wide_mult.xci
set_property is_locked true [get_files /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.srcs/sources_1/ip/pll_wide_mult/pll_wide_mult.xci]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top pll_wide_mult -part xc7z010clg400-1 -mode out_of_context
rename_ref -prefix_all pll_wide_mult_
write_checkpoint -noxdef pll_wide_mult.dcp
catch { report_utilization -file pll_wide_mult_utilization_synth.rpt -pb pll_wide_mult_utilization_synth.pb }
if { [catch {
  file copy -force /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.runs/pll_wide_mult_synth_1/pll_wide_mult.dcp /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.srcs/sources_1/ip/pll_wide_mult/pll_wide_mult.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.srcs/sources_1/ip/pll_wide_mult/pll_wide_mult_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.srcs/sources_1/ip/pll_wide_mult/pll_wide_mult_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.srcs/sources_1/ip/pll_wide_mult/pll_wide_mult_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.srcs/sources_1/ip/pll_wide_mult/pll_wide_mult_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.ip_user_files/ip/pll_wide_mult]} {
  catch { 
    file copy -force /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.srcs/sources_1/ip/pll_wide_mult/pll_wide_mult_stub.v /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.ip_user_files/ip/pll_wide_mult
  }
}

if {[file isdir /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.ip_user_files/ip/pll_wide_mult]} {
  catch { 
    file copy -force /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.srcs/sources_1/ip/pll_wide_mult/pll_wide_mult_stub.vhdl /media/sf_D/Projects/RedPitaya/fpga/project/redpitaya.ip_user_files/ip/pll_wide_mult
  }
}