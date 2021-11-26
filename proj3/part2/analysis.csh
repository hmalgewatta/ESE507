#!/bin/tcsh
true > analysis.txt
foreach n (1.01 1.02 1.03 1.04 1.05 1.06 1.07 1.08 1.09 1.1)
	echo "CLK set to $n" >> analysis.txt
	sed -i -e 's/set CLK_PERIOD .*/set CLK_PERIOD '"$n"'/' runsynth.tcl
	make dc >> analysis.txt
end
