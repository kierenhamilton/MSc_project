// `include "./coreUtils.sv"
// `include "./core_types_pkg.sv"
import coreUtils::*;
import core_types_pkg::*;

module alu (

    output alu_out_t alu_out,

    input [31:0] rs1F,
    input [31:0] rs2F,
    input [31:0] PC,
    input [31:0] imm,
    input alu_codes_t aluCode,
    input aluin1_m,
    input aluin2_m,
    input aluImm_m,
    input aluPC_m

);

  timeunit 1ns; timeprecision 100ps;

  logic [31:0] aluin1_m_out, aluin2_m_out, aluPC_m_out, PC4;

  always_comb begin

    PC4 = PC + 4;

    // input multiplexers

    aluin1_m_out = (aluin1_m) ? PC : rs1F;
    aluin2_m_out = (aluin2_m) ? imm : rs2F;

    // alu

    alu_out.neguFlag = 0;

    case (aluCode)
      ADD: alu_out.aluOut = aluin1_m_out + aluin2_m_out;
      SUB: {alu_out.neguFlag, alu_out.aluOut} = {1'b0, aluin1_m_out} + ~{1'b0, aluin2_m_out} + 1;
      SLL: alu_out.aluOut = aluin1_m_out << aluin2_m_out[4:0];
      SLT: alu_out.aluOut = {31'b0, (aluin1_m_out < aluin2_m_out)};
      SLTU: alu_out.aluOut = {31'b0, ($unsigned(aluin1_m_out) < $unsigned(aluin2_m_out))};
      XOR: alu_out.aluOut = aluin1_m_out ^ aluin2_m_out;
      OR: alu_out.aluOut = aluin1_m_out | aluin2_m_out;
      AND: alu_out.aluOut = aluin1_m_out & aluin2_m_out;
      SRL: alu_out.aluOut = aluin1_m_out >> aluin2_m_out[4:0];
      SRA: alu_out.aluOut = aluin1_m_out >>> aluin2_m_out[4:0];
      NOP: alu_out.aluOut = 0;
      default: alu_out.aluOut = 0;
    endcase

    alu_out.zeroFlag = alu_out.aluOut == 0;
    alu_out.negFlag = alu_out.aluOut[31];

    // output multiplexers

    aluPC_m_out = (aluPC_m) ? alu_out.aluOut : PC4;
    alu_out.result = (aluImm_m) ? aluPC_m_out : imm;

  end

endmodule
