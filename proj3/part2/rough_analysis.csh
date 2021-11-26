#!/bin/tcsh
true > analysis.txt
foreach n (0.5 0.6 0.7 0.8 0.9 1)
	echo "CLK set to $n" >> analysis.txt
	sed -i -e 's/set CLK_PERIOD .*/set CLK_PERIOD '"$n"'/' runsynth.tcl
	make dc >> analysis.txt
end
