#!/bin/tcsh
set OUTFILE=output.txt
#make dc
grep "report_timing" -B 2 $OUTFILE
grep "Total cell area" $OUTFILE
awk '/Point/,/slack/' $OUTFILE
