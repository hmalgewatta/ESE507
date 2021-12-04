#!/bin/tcsh


# ./testmode1 N M1 M2 M3 T B clk
mkdir -p hdl
cp testgen gen proj3_common.sv 3layer_top.sv *txt conv_template* *tcl testmode*  hdl/
cd hdl
rm -rf work
vlib work
./testmode3 $1 $2 $3 $4 $5 $6
sed -i -e 's/set TOP_MOD_NAME .*/set TOP_MOD_NAME '"net_$1_$2_$3_$4_$5_$6"'/' runsynth.tcl
sed -i -e 's/set SRC_FILE .*/set SRC_FILE '"net_$1_$2_$3_$4_$5_$6.sv"'/' runsynth.tcl
sed -i -e 's/set CLK_PERIOD .*/set CLK_PERIOD '"$7"'/' runsynth.tcl
dc_shell -f runsynth.tcl > "net_$1_$2_$3_$4_$5_$6.synth.txt"
cat "net_$1_$2_$3_$4_$5_$6.synth.txt" | grep "slack ("
cd ../
