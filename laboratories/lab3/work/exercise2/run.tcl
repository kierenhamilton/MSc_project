clear -all

analyze -sv09 ./branching_tb.sv
analyze -sv09 ./branching.sv

elaborate -top branching_tb
clock Clock
reset ~nReset


prove -all


