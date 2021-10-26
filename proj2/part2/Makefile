SRC=memory.sv part1_mac.sv conv_112_49.sv
TBFILE=part2_simple_tb.sv
TB=check_timing
TBFILE1=part2_random_tb.sv
TB1=tbench2
SEED=30

comp:
	vlog $(SRC) $(TBFILE)

run: comp
	#vsim -sv_seed 42 $(TB) -c -do "run -all"
	vsim -sv_seed 30 $(TB) -c -do "run -all"

comp1:
	vlog $(SRC) $(TBFILE1)

run1: comp1
	#vsim -sv_seed 42 $(TB) -c -do "run -all"
	vsim -sv_seed $(SEED) $(TB1) -c -do "run -all"

dc:
	dc_shell -f runsynth.tcl
