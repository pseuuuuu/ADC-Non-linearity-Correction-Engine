################################################################################
# DESIGN COMPILER:  Logic Synthesis Tool                                       #
################################################################################
remove_design -all

# Add search paths for our technology libs.
set hdlin_vrlg_std "2001"
set search_path "$search_path . ./verilog /w/apps2/public.2/tech/synopsys/32-28nm/SAED32_EDK/lib/stdcell_rvt/db_nldm" 
set target_library "saed32rvt_ff1p16vn40c.db saed32rvt_ss0p95v125c.db"
set link_library "* saed32rvt_ff1p16vn40c.db saed32rvt_ss0p95v125c.db dw_foundation.sldb"
set synthetic_library "dw_foundation.sldb"

# Define work path (note: The work path must exist, so you need to create a folder WORK first)
define_design_lib WORK -path ./WORK
set alib_library_analysis_path “./alib-52/”

# Read the gate-level verilog files 
#Add all your files that compose your project here
analyze -format verilog {define.h} 
analyze -format verilog {SynLib.v}  
analyze -format verilog {smc_float_adder.v} 
analyze -format verilog {fp_to_smc_float.v}
analyze -format verilog {smc_float_multiplier.v}
analyze -format verilog {smc_float_to_fp.v}
analyze -format verilog {NLC.v}

set DESIGN_NAME NLC_4sec_8th_order_16ch_v0

elaborate $DESIGN_NAME
current_design $DESIGN_NAME
link


set_operating_conditions -min ff1p16vn40c -max ss0p95v125c


# Describe the clock waveform & setup operating conditions
#Tclk as frequency of 6.144MHz and put all other parameters #relative to it
set Tclk 162.0
set TCU  0.1
set IN_DEL 0.6
set IN_DEL_MIN 0.3
set OUT_DEL 0.6
set OUT_DEL_MIN 0.3
set ALL_IN_BUT_CLK [remove_from_collection [all_inputs] "clk"]

create_clock -name "clk" -period $Tclk [get_ports "clk"]
set_fix_hold clk
set_dont_touch_network [get_clocks "clk"]
set_clock_uncertainty $TCU [get_clocks "clk"]

set_input_delay $IN_DEL -clock "clk" $ALL_IN_BUT_CLK
set_input_delay -min $IN_DEL_MIN -clock "clk" $ALL_IN_BUT_CLK
set_output_delay $OUT_DEL -clock "clk" [all_outputs]
set_output_delay -min $OUT_DEL_MIN -clock "clk" [all_outputs]


#It's your choice to optimize fro area or power
set_max_area 0.0


ungroup -flatten -all
uniquify

compile -only_design_rule
compile -map high
compile -boundary_optimization
compile -only_hold_time


report_timing -path full -delay min -max_paths 10 -nworst 2 > holdtiming-SID
report_timing -path full -delay max -max_paths 10 -nworst 2 > setuptiming-SID
report_area -hierarchy > area-SID
report_power -hier -hier_level 2 > power-SID
report_resources > resources-SID
report_constraint -verbose > constraint-SID
check_design > check-design-SID
check_timing > timing-SID

write -hierarchy -format verilog -output $DESIGN_NAME.vg
write_sdf -version 1.0 -context verilog $DESIGN_NAME.sdf
set_propagated_clock [all_clocks]
write_sdc $DESIGN_NAME.sdc
