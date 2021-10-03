TBFILE=part1_tb_simple.sv
SRCFILE=part1_mac.sv
TB=tb_part1_mac
comp:
	vlog $(TBFILE) $(SRCFILE)

run: comp
	vsim $(TB) -c -do "run -all"  > run.log

rungui:
	vsim $(TB) &

dc:
	dc_shell -f runsynth.tcl > output.txt

test:
	gcc test_gen.c -o test_gen -lm

testrun: test
	./test_gen

testorig:
	vlog $(SRCFILE) simple_tb.sv
	vsim $(TB) -c -do "run -all"

all: testrun run
	
