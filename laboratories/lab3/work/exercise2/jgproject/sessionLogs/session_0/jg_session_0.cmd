# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2023.09
# platform  : Linux 4.18.0-553.58.1.el8_10.x86_64
# version   : 2023.09 FCS 64 bits
# build date: 2023.09.27 19:40:18 UTC
# ----------------------------------------
# started   : 2025-08-05 14:52:27 BST
# hostname  : srv04154.(none)
# pid       : 239276
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42567' '-style' 'windows' '-data' 'AAAA7nicfYzBCoJQFETPI9yGXyJhBCEu2rRTRBftpVylBqabNvap/clzelHYogbmzmXu3DFAPFprcVjcNHwSUgr2mhkHKdRsCNmyYseRkhMVrbZKl4aAKxd6sdVeyg8YOBP9/Vr//HMwj5cSG+Yw+f1LwXsHPxFxSaeuZ2+v3tr5Ez6dH3c=' '-proj' '/home/kh5u24/summer/MSc_project/laboratories/lab3/work/exercise2/jgproject/sessionLogs/session_0' '-init' '-hidden' '/home/kh5u24/summer/MSc_project/laboratories/lab3/work/exercise2/jgproject/.tmp/.initCmds.tcl' 'run.tcl'
clear -all

analyze -sv09 ./branching_tb.sv
analyze -sv09 ./branching.sv

elaborate -top branching_tb
clock Clock
reset ~nReset


prove -all


visualize -property <embedded>::branching_tb.pipelining_test:precondition1 -new_window
visualize -property <embedded>::branching_tb.non_test:precondition1 -new_window
