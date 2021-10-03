TBFILE=part3_tb_simple.sv
SRCFILE=part3_mac.sv
TB=tb_part3_mac
C_FILE=test3_gen.c
comp:
	vlog $(TBFILE) $(SRCFILE)
	vlog /usr/local/synopsys/syn//dw/sim_ver/DW02_mult*.v

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
	
all: testrun run
