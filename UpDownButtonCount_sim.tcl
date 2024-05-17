##########################################################################
#
# UpDownButtonCount_sim.tcl
# Author: Joshua Harris
# Class: ECEN 323
#
# This .tcl script will apply the input stimulus to the circuit
# as shown in the waveform in the lab wiki.
#
##########################################################################

# restart the simulation at time 0
restart

# Run circuit with no input stimulus settings
run 20 ns

# Set the clock to oscillate with a period of 10 ns
add_force clk {0} {1 5} -repeat_every 10

# Run the circuit for two clock cycles
run 20 ns

# Issue a reset (btnc) an set all switches, inc and dec to 0
add_force btnc 1
add_force btnu 0
add_force btnd 0
add_force btnl 0
add_force btnr 0
add_force sw 0
run 10 ns

# Set reset (btnc) back to 0
add_force btnc 0
run 10 ns

# set inc (btnu)=1 for four clock cycles
add_force btnu 1
run 40 ns

# set inc (btnu)=0 for one clock cycles
add_force btnu 0
run 10 ns

# set inc (btnu)=1 for one clock cycles
add_force btnu 1
run 10 ns

# set inc (btnu)=0 for three clock cycles
add_force btnu 0
run 30 ns

# set inc (btnu)=1 for two clock cycles
add_force btnu 1
run 20 ns

# Issue a reset (btnc) for one clock cycle
add_force btnc 1
add_force btnu 0
run 10 ns

# Return rst to 0
add_force btnc 0
run 30 ns

# Add additional input stimulus here

# 2 More Up Presses

# a right press to add the switches value for two clock cycle
add_force btnu 1
run 20ns

# stop the right press for one clock cycle
add_force btnu 0
run 10ns

# a right press to add the switches value for one clock cycle
add_force sw 100
run 10ns
add_force btnr 1
run 10ns

# stop the right press for one clock cycle
add_force btnr 0
run 10ns

# 3 Down Presses

# A down press to decement the count for one clock cycle
add_force btnd 1
run 10ns

# end of down press for one clock cycle
add_force btnd 0
run 10ns

# a left press to decrement the switches value for two clock cycle
add_force sw 0
run 30ns

# set the button high for one cycle
add_force btnl 1
run 20ns

# stop the left press for one clock cycle
add_force btnl 0
run 10ns

# a left press to decrement the switches value for one clock cycle
add_force sw 10
add_force btnl 1
run 10ns

# stop the left press for one clock cycle
add_force btnl 0
run 10ns

#decrement for one cycle
add_force btnd 1
run 10ns

#stop button push
add_force btnd 0
run 30ns