#!/bin/tcsh


# ./testmode1 N M T clk
mkdir -p hdl
cp testgen gen proj3_common.sv 3layer_top.sv *txt conv_template* *tcl testmode* tbtemplate.txt  hdl/
cd hdl
rm -rf work
vlib work
./testmode1 $1 $2 $3
sed -i -e 's/set TOP_MOD_NAME .*/set TOP_MOD_NAME '"conv_$1_$2_$3_1"'/' runsynth.tcl
sed -i -e 's/set SRC_FILE .*/set SRC_FILE '"conv_$1_$2_$3_1.sv"'/' runsynth.tcl
sed -i -e 's/set CLK_PERIOD .*/set CLK_PERIOD '"$4"'/' runsynth.tcl
dc_shell -f runsynth.tcl > "conv_$1_$2_$3_1.synth.txt"
cat "conv_$1_$2_$3_1.synth.txt" | grep "slack ("
cd ../
