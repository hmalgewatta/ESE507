TBFILE=part2_tb_simple.sv
SRCFILE=part2_mac.sv
TB=tb_part2_mac
C_FILE=test2_gen.c
comp:
	vlog $(TBFILE) $(SRCFILE)

run: comp
	vsim $(TB) -c -do "run -all" > run.log

rungui:
	vsim $(TB) &

dc:
	dc_shell -f runsynth.tcl > output.txt

test:
	gcc $(C_FILE) -o test_gen -lm

testrun: test
	./test_gen
	
