#!/bin/tcsh
true > analysis.txt
foreach n (0.75 0.76 0.7 0.78 0.79 0.8)
	echo "CLK set to $n" >> analysis.txt
	sed -i -e 's/set CLK_PERIOD .*/set CLK_PERIOD '"$n"'/' runsynth.tcl
	make dcnoout >> analysis.txt
end
