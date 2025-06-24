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

module core (
    input Clock,
    input nReset
);

  decoder_out_t decoder_out;
  DEC_out_t DEC_out;
  EXE_out_t EXE_out;
  IF_out_t IF_out;
  MEM_out_t MEM_out;
  alu_out_t alu_out;
  branching_out_t branching_out;
  dataMem_out_t dataMem_out;
  forwarding_out_t forwarding_out;
  progCount_out_t progCount_out;
  progMem_out_t progMem_out;
  regMem_out_t regMem_out;
  write_back_out_t write_back_out;

  DEC DEC0 (
      .DEC_out(DEC_out),
      .rs1_out(rs1DEC),
      .rs2_out(rs2DEC),

      .Clock (Clock),
      .nReset(nReset),
  );

  EXE EXE0 (
      .EXE_out(EXE_out),

      .Clock (Clock),
      .nReset(nReset),
  );

  IF IF0 (
      .PC_out(PC_IF),
      .instruction_out(inst_IF),

      .Clock (Clock),
      .nReset(nReset),
  );

  MEM MEM0 (
      .MEM_out(MEM_out),
      .memOut_out(memOut_MEM),

      .Clock (Clock),
      .nReset(nReset),
  );

  alu alu0 (.alu_out(alu_out),);

  branching branching0 (
      .branching_out(branching_out),

      .Clock (Clock),
      .nReset(nReset),
  );

  dataMem dataMem0 (
      .memOut(memOut_DM),

      .Clock(Clock),
  );

  decoder decoder0 (.control_signals(decoder_out),);

  forwarding forwarding0 (
      .rs1F(rs1F),
      .rs2F(rs2F),
  );

  progCount progCount0 (
      .PC(PC),

      .Clock (Clock),
      .nReset(nReset),
  );

  progMem progMem0 (
      .instruction(inst_PM),

      .Clock(Clock),
  );

  regMem regMem0 (
      .rs1(rs1_RM),
      .rs2(rs2_RM),

      .Clock (Clock),
      .nReset(nReset),
  );

  write_back write_back0 (.write_back_out(write_back_out),);


endmodule
