#!/bin/tcsh
set OUTFILE=output.txt
#make dc
grep "report_timing" -B 2 $1
grep "Total cell area" $1
awk '/Point/,/slack/' $1
