#!/bin/tcsh

set OUTFILE=profile.txt

echo "P1 P2 P3 Time" >$OUTFILE

set N=$1
set M1=$2
set M2=$3
set M3=$4
set T=$5
set B=$6

set i=1


set L1=`echo "$N-$M1+2" |bc`
set L2=`echo "$L1-$M2+2" | bc`
set L3=`echo "$L2-$M3+2" | bc`

echo "$L1 $L2 $L3"

while ($i < $L1)
set j=1
while ($j < $L2)
set k=1
while ($k < $L3)
	./eval_testmode3 $1 $2 $3 $4 $5 $6 $i $j $k | grep Simulated | awk -v info="$i $j $k "  '{print info $2 }' >> $OUTFILE
@ k++
end
@ j++
end
@ i++
end

sort -nk4 $OUTFILE

echo 
