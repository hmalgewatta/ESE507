TBFILE=part3_tb_simple.sv
SRCFILE=part3_mac.sv
TB=tb_part3_mac
SRCFILEB=part3b_mac.sv
C_FILE=test_gen.c
C_FILEB=testb_gen.c
comp:
	vlog $(TBFILE) $(SRCFILE)
	vlog /usr/local/synopsys/syn//dw/sim_ver/DW02_mult*.v

compb:
	vlog $(TBFILE) $(SRCFILEB)
	vlog /usr/local/synopsys/syn//dw/sim_ver/DW02_mult*.v

runb: compb
	vsim $(TB) -c -do "run -all" > runb.log

run: comp
	vsim $(TB) -c -do "run -all" > run.log

rungui:
	vsim $(TB) &

dc:
	dc_shell -f runsynth.tcl > output.txt

dcnoout:
	dc_shell -f runsynth.tcl

test:
	gcc $(C_FILE) -o test_gen -lm

testrun: test
	./test_gen

testb:
	gcc $(C_FILEB) -o testb_gen -lm

testrunb: testb
	./testb_gen
	
all: testrun run

allb: testrunb runb
