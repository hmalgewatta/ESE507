TBFILE=part1_tb_simple.sv
SRCFILE=part1_mac.sv
TB=tb_part1_mac
comp:
	vlog $(TBFILE) $(SRCFILE)

run: comp
	vsim $(TB) -c -do "run -all"

rungui:
	vsim $(TB) &

dc:
	dc_shell -f runsynth.tcl > output.txt

test:
	gcc test_gen.c -o test_gen

testrun: test
	./test_gen
	
