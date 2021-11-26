#!/bin/tcsh

set N = (16 19 30 39)
set M = (6 11 9 16)
set T = (16 20 11 32)

set i = 0

while ( $i < 5 )
./testmode1 $N[$i] $M[$i] $T[$i] > $N[$i]_$M[$i]_$T[$i].test.results
sed -i -e 's/set TOP_MOD_NAME .*/set TOP_MOD_NAME '"conv_$N[$i]_$M[$i]_$T[$i]_1"'/' runsynth.tcl
sed -i -e 's/set SRC_FILE .*/set SRC_FILE '"conv_$N[$i]_$M[$i]_$T[$i]_1.sv"'/' runsynth.tcl
dc_shell -f runsynth.tcl > $N[$i]_$M[$i]_$T[$i].synth.results
@ i++
end
