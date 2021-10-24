#!/bin/tcsh
true > analysis.txt
foreach n (0.70 0.71 0.72 0.73 0.74 0.75)
	echo "CLK set to $n" >> analysis.txt
	sed -i -e 's/set CLK_PERIOD .*/set CLK_PERIOD '"$n"'/' runsynth.tcl
	make dcnoout >> analysis.txt
end
