
# XM-Sim Command File
# TOOL:	xmsim(64)	22.03-s005
#

set tcl_prompt1 {puts -nonewline "xcelium> "}
set tcl_prompt2 {puts -nonewline "> "}
set vlog_format %h
set vhdl_format %v
set real_precision 6
set display_unit auto
set time_unit module
set heap_garbage_size -200
set heap_garbage_time 0
set assert_report_level note
set assert_stop_level error
set autoscope yes
set assert_1164_warnings yes
set pack_assert_off {}
set severity_pack_assert_off {note warning}
set assert_output_stop_level failed
set tcl_debug_level 0
set relax_path_name 1
set vhdl_vcdmap XX01ZX01X
set intovf_severity_level ERROR
set probe_screen_format 0
set rangecnst_severity_level ERROR
set textio_severity_level ERROR
set vital_timing_checks_on 1
set vlog_code_show_force 0
set assert_count_attempts 1
set tcl_all64 false
set tcl_runerror_exit false
set assert_report_incompletes 0
set show_force 1
set force_reset_by_reinvoke 0
set tcl_relaxed_literal 0
set probe_exclude_patterns {}
set probe_packed_limit 4k
set probe_unpacked_limit 16k
set assert_internal_msg no
set svseed 1
set assert_reporting_mode 0
set vcd_compact_mode 0
alias . run
alias quit exit
database -open -shm -into waves.shm waves -default
probe -create -database waves core_stim.core_dut.regMem0.Clock core_stim.core_dut.regMem0.Wdata core_stim.core_dut.regMem0.Wreg core_stim.core_dut.regMem0.addr1 core_stim.core_dut.regMem0.addr2 core_stim.core_dut.regMem0.flush core_stim.core_dut.regMem0.nReset core_stim.core_dut.regMem0.rd core_stim.core_dut.regMem0.regs core_stim.core_dut.regMem0.rs1 core_stim.core_dut.regMem0.rs2
probe -create -database waves core_stim.core_dut.dataMem0.Clock core_stim.core_dut.dataMem0.Rmem core_stim.core_dut.dataMem0.Wmem core_stim.core_dut.dataMem0.addr core_stim.core_dut.dataMem0.data core_stim.core_dut.dataMem0.f3 core_stim.core_dut.dataMem0.mem core_stim.core_dut.dataMem0.memOut
probe -create -database waves core_stim.core_dut.decoder0.opcode
probe -create -database waves core_stim.core_dut.progMem0.instruction
probe -create -database waves core_stim.core_dut.progCount0.PC
probe -create -database waves core_stim.core_dut.DEC0.Clock core_stim.core_dut.DEC0.DEC_out core_stim.core_dut.DEC0.PC core_stim.core_dut.DEC0.Rmem core_stim.core_dut.DEC0.Wmem core_stim.core_dut.DEC0.Wreg core_stim.core_dut.DEC0.addr1 core_stim.core_dut.DEC0.addr2 core_stim.core_dut.DEC0.aluCode core_stim.core_dut.DEC0.aluImm_m core_stim.core_dut.DEC0.aluPC_m core_stim.core_dut.DEC0.aluin1_m core_stim.core_dut.DEC0.aluin2_m core_stim.core_dut.DEC0.flush core_stim.core_dut.DEC0.func3 core_stim.core_dut.DEC0.imm core_stim.core_dut.DEC0.nReset core_stim.core_dut.DEC0.rd core_stim.core_dut.DEC0.rs1 core_stim.core_dut.DEC0.rs1_out core_stim.core_dut.DEC0.rs2 core_stim.core_dut.DEC0.rs2_out core_stim.core_dut.EXE0.Clock core_stim.core_dut.EXE0.EXE_out core_stim.core_dut.EXE0.Rmem core_stim.core_dut.EXE0.Wmem core_stim.core_dut.EXE0.Wreg core_stim.core_dut.EXE0.func3 core_stim.core_dut.EXE0.nReset core_stim.core_dut.EXE0.rd core_stim.core_dut.EXE0.result core_stim.core_dut.EXE0.rs2 core_stim.core_dut.IF0.Clock core_stim.core_dut.IF0.PC core_stim.core_dut.IF0.PC_out core_stim.core_dut.IF0.flush core_stim.core_dut.IF0.hold core_stim.core_dut.IF0.instruction core_stim.core_dut.IF0.instruction_out core_stim.core_dut.IF0.nReset core_stim.core_dut.MEM0.Clock core_stim.core_dut.MEM0.MEM_out core_stim.core_dut.MEM0.Rmem core_stim.core_dut.MEM0.Wreg core_stim.core_dut.MEM0.memOut core_stim.core_dut.MEM0.memOut_out core_stim.core_dut.MEM0.nReset core_stim.core_dut.MEM0.rd core_stim.core_dut.MEM0.result
probe -create -database waves core_stim.core_dut.forwarding0.WdataMEM core_stim.core_dut.forwarding0.WdataWB core_stim.core_dut.forwarding0.WregEXE core_stim.core_dut.forwarding0.WregMEM core_stim.core_dut.forwarding0.WregWB core_stim.core_dut.forwarding0.addr1DEC core_stim.core_dut.forwarding0.addr2DEC core_stim.core_dut.forwarding0.rdEXE core_stim.core_dut.forwarding0.rdMEM core_stim.core_dut.forwarding0.rdWB core_stim.core_dut.forwarding0.resultEXE core_stim.core_dut.forwarding0.rs1DEC core_stim.core_dut.forwarding0.rs1F core_stim.core_dut.forwarding0.rs2DEC core_stim.core_dut.forwarding0.rs2F
probe -create -database waves core_stim.core_dut.branching0.Clock core_stim.core_dut.branching0.PCDEC core_stim.core_dut.branching0.PCIF core_stim.core_dut.branching0.aluOut core_stim.core_dut.branching0.branchConfirmed core_stim.core_dut.branching0.branchType core_stim.core_dut.branching0.branchTypeEXE core_stim.core_dut.branching0.branching_out core_stim.core_dut.branching0.f3DEC core_stim.core_dut.branching0.flush_internal core_stim.core_dut.branching0.imm core_stim.core_dut.branching0.immDEC core_stim.core_dut.branching0.isBranchEXE core_stim.core_dut.branching0.isLoad core_stim.core_dut.branching0.nReset core_stim.core_dut.branching0.negFlag core_stim.core_dut.branching0.neguFlag core_stim.core_dut.branching0.prediction core_stim.core_dut.branching0.predictionReg core_stim.core_dut.branching0.zeroFlag
probe -create -database waves core_stim.core_dut.alu0.PC core_stim.core_dut.alu0.PC4 core_stim.core_dut.alu0.aluCode core_stim.core_dut.alu0.aluImm_m core_stim.core_dut.alu0.aluPC_m core_stim.core_dut.alu0.aluPC_m_out core_stim.core_dut.alu0.alu_out core_stim.core_dut.alu0.aluin1_m core_stim.core_dut.alu0.aluin1_m_out core_stim.core_dut.alu0.aluin2_m core_stim.core_dut.alu0.aluin2_m_out core_stim.core_dut.alu0.imm core_stim.core_dut.alu0.rs1F core_stim.core_dut.alu0.rs2F

simvision -input /home/kh5u24/summer/MSc_project/pipeline/.simvision/387533_kh5u24__autosave.tcl.svcf
