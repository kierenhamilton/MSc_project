`include "./coreUtils.sv"
`include "./core_types_pkg.sv"
import coreUtils::*;
import core_types_pkg::*;

wire [31:0] rs1DEC, rs2DEC;

wire [31:0] PC_IF, inst_IF;

wire [31:0] memOut_DM;

wire [31:0] rs1F, rs2F;

wire [31:0] PC;

wire [31:0] inst_PM;

wire [31:0] rs1_RM, rs2_RM;

wire [31:0] memOut_MEM;

module core (
    input Clock,
    input nReset
);

  decoder_out_t decoder_out;
  DEC_out_t DEC_out;
  EXE_out_t EXE_out;
  // IF_out_t IF_out;
  MEM_out_t MEM_out;
  alu_out_t alu_out;
  branching_out_t branching_out;
  //  dataMem_out_t dataMem_out;
  //  forwarding_out_t forwarding_out;
  //  progCount_out_t progCount_out;
  //  progMem_out_t progMem_out;
  //  regMem_out_t regMem_out;
  write_back_out_t write_back_out;

  DEC DEC0 (
      .DEC_out(DEC_out),
      .rs1_out(rs1DEC),
      .rs2_out(rs2DEC),

      .Clock (Clock),
      .nReset(nReset),

      .PC(PC_IF),
      .rd(inst_IF[11:7]),
      .addr1(inst_IF[19:15]),
      .addr2(inst_IF[24:20]),
      .aluCode(decoder_out.alu_codes),
      .imm(decoder_out.imm),
      .Wmem(decoder_out.Wmem),
      .Rmem(decoder_out.Rmem),
      .Wreg(decoder_out.Wreg),
      .func3(decoder_out.func3),
      .flush(branching_out.flush),
      .aluin1_m(decoder_out.aluin1_m),
      .aluin2_m(decoder_out.aluin2_m),
      .aluPC_m(decoder_out.aluPC_m),
      .aluImm_m(decoder_out.aluImm_m),
      .rs1(rs1_RM),
      .rs2(rs2_RM)

  );

  EXE EXE0 (
      .EXE_out(EXE_out),

      .Clock (Clock),
      .nReset(nReset),

      .rs2(rs2DEC),
      .rd(DEC_out.rd),
      .result(alu_out.result),
      .Wmem(DEC_out.Wmem),
      .Rmem(DEC_out.Rmem),
      .Wreg(DEC_out.Wreg),
      .func3(DEC_out.func3)
  );

  IF IF0 (
      .PC_out(PC_IF),
      .instruction_out(inst_IF),

      .Clock (Clock),
      .nReset(nReset),

      .flush(branching_out.flush),
      .hold(branching_out.hold),
      .instruction(inst_PM),
      .PC(PC)
  );

  MEM MEM0 (
      .MEM_out(MEM_out),
      .memOut_out(memOut_MEM),

      .Clock (Clock),
      .nReset(nReset),

      .rd(EXE_out.rd),
      .result(EXE_out.result),
      .memOut(memOut_DM),
      .Wreg(EXE_out.Wreg),
      .Rmem(EXE_out.Rmem)
  );

  alu alu0 (
      .alu_out(alu_out),

      .rs1F(rs1F),
      .rs2F(rs2F),
      .PC(DEC_out.PC),
      .imm(DEC_out.imm),
      .aluCode(DEC_out.aluCode),
      .aluin1_m(DEC_out.aluin1_m),
      .aluin2_m(DEC_out.aluin2_m),
      .aluImm_m(DEC_out.aluImm_m),
      .aluPC_m(DEC_out.aluPC_m)
  );

  branching branching0 (
      .branching_out(branching_out),

      .Clock (Clock),
      .nReset(nReset),

      .isLoad(decoder_out.isLoad),
      .f3DEC(DEC_out.func3),
      .branchType(decoder_out.branch_type),
      .PCIF(PC_IF),
      .PCDEC(DEC_out.PC),
      .imm(decoder_out.imm),
      .immDEC(DEC_out.imm),
      .aluOut(alu_out.aluOut),
      .zeroFlag(alu_out.zeroFlag),
      .negFlag(alu_out.negFlag),
      .neguFlag(alu_out.neguFlag)
  );

  dataMem dataMem0 (
      .memOut(memOut_DM),

      .Clock(Clock),

      .f3  (EXE_out.func3),
      .addr(EXE_out.result),
      .data(EXE_out.rs2),
      .Wmem(EXE_out.Wmem),
      .Rmem(EXE_out.Rmem)
  );

  decoder decoder0 (

      .control_signals(decoder_out),

      .f7(inst_IF[30]),
      .func3(inst_IF[14:12]),
      .immSample(inst_IF[31:7]),
      .opcode(inst_IF[6:2])
  );

  forwarding forwarding0 (
      .rs1F(rs1F),
      .rs2F(rs2F),

      .rs1DEC(rs1DEC),
      .rs2DEC(rs2DEC),

      .addr1DEC(DEC_out.addr1),
      .addr2DEC(DEC_out.addr2),
      .rdEXE(EXE_out.rd),
      .resultEXE(EXE_out.result),
      .WregEXE(EXE_out.Wreg),
      .rdMEM(MEM_out.rd),
      .resultMEM(MEM_out.result),
      .WregMEM(MEM_out.Wreg)
  );

  progCount progCount0 (
      .PC(PC),

      .Clock (Clock),
      .nReset(nReset),

      .hold(branching_out.hold),
      .branch(branching_out.branch),
      .bypass(branching_out.bypass),
      .PCbranch(branching_out.PCnext),
      .PCcurrent(branching_out.PCcurrent)
  );

  progMem progMem0 (
      .instruction(inst_PM),

      .Clock(Clock),

      .hold(branching_out.hold),
      .flush(branching_out.flush),
      .PC(PC)
  );

  regMem regMem0 (
      .rs1(rs1_RM),
      .rs2(rs2_RM),

      .Clock (Clock),
      .nReset(nReset),

      .flush(branching_out.flush),
      .Wreg(write_back_out.Wreg),
      .rd(write_back_out.rd),
      .Wdata(write_back_out.Wdata),
      .addr1(inst_IF[19:15]),
      .addr2(inst_IF[24:20])
  );

  write_back write_back0 (
      .write_back_out(write_back_out),
      .memOut(memOut_MEM),
      .Rmem(MEM_out.Rmem),
      .Wreg(MEM_out.Wreg),
      .result(MEM_out.result),
      .rd(MEM_out.rd)
  );


endmodule
