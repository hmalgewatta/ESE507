#!/bin/tcsh

set N = 64
set M1 = 33
set M2 = 9
set M3 = 10
set T = 16 
set B = (14 30 50)
# 0.5 0.55 0.6 0.65 0.7 0.75 0.8 0.85 0.9 
set clk = (0.95 1 1.05 1.1 1.15 1.2 1.25 1.3 1.35 1.4 1.45 1.5 1.55 1.6 1.65 1.7 1.75 1.8)

set i = 1

while ( $i < 7 )
#set j = 1
#echo "net_$N:q_$M1:q_$M2:q_$M3:q_$T:q_$B[$i]:q" > "net_$N:q_$M1:q_$M2:q_$M3:q_$T:q_$B[$i]:q.txt"
#while ($j < 27)
./testmode3 $N $M1 $M2 $M3 $T $B[$i] >> "net_$N:q_$M1:q_$M2:q_$M3:q_$T:q_$B[$i]:q.txt"
#cd hdl
#sed -i -e 's/set TOP_MOD_NAME .*/set TOP_MOD_NAME '"net_$N:q_$M1:q_$M2:q_$M3:q_$T:q_$B[$i]:q"'/' #runsynth.tcl
#sed -i -e 's/set SRC_FILE .*/set SRC_FILE '"net_$N:q_$M1:q_$M2:q_$M3:q_$T:q_$B[$i]:q.sv"'/' #runsynth.tcl
#sed -i -e 's/set CLK_PERIOD .*/set CLK_PERIOD '"$clk[$j]"'/' runsynth.tcl
#dc_shell -f runsynth.tcl >> "net_$N:q_$M1:q_$M2:q_$M3:q_$T:q_$B[$i]:q.txt"
@ i++
end
