############## Sample Synthesis script: uses makerchip_module as top #############
# 200MHz
set clock_period 5.0

# Input delays - variables
set in_delay_cyc_cnt           [expr $clock_period * 0.25] 
set in_delay_reset             [expr $clock_period * 0.25] 

# Output delays - variables 
set out_delay_passed [expr $clock_period * 0.60]
set out_delay_failed [expr $clock_period * 0.60]

# All clocks
set clock_ports [list \
    clk \
]


############## Defining default clock definitions ##############

create_clock \
      -name clk \
      -period $clock_period \
      [get_ports clk] 

set_clock_uncertainity -setup 0.2   [get_clocks clk]
# set_clock_latency -source -max 2 [get_clocks clk]
# set_clock_latency -max 1 [get_clocks clk]
# set_propagated_clock [get_clocks clk]   

########### Defining Default I/O constraints ###################

set all_clock_ports $clock_ports


set_input_delay  $in_delay_cyc_cnt   [get_ports cyc_cnt        ] -clock clk
set_input_delay  $in_delay_reset     [get_ports reset          ] -clock clk

set_output_delay $out_delay_passed   [ get_ports passed            ] -clock clk
set_output_delay $out_delay_failed   [ get_ports failed            ] -clock clk
