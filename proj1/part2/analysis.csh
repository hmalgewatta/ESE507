#!/bin/tcsh
true > analysis.txt
foreach n (1 1.1 1.2 1.3 1.4)
	echo "CLK set to $n" >> analysis.txt
	sed -i -e 's/set CLK_PERIOD .*/set CLK_PERIOD '"$n"'/' runsynth.tcl
	make dcnoout >> analysis.txt
end
