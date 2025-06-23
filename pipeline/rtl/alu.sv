`include "./coreUtils.sv"
import coreUtils::*;
module alu (

    output logic [31:0] result,
    output logic [31:0] aluOut,
    output logic zeroFlag,
    output logic negFlag,
    output logic neguFlag,

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

  logic [31:0] aluin1_m_out, aluin2_m_out, aluPC_m_out, PC4;

  always_comb begin

    PC4 = PC + 4;

    // input multiplexers

    aluin1_m_out = (aluin1_m) ? PC : rs1F;
    aluin2_m_out = (aluin2_m) ? imm : rs2F;

    // alu

    neguFlag = 0;

    case (aluCode)
      ADD: aluOut = aluin1_m_out + aluin2_m_out;
      SUB: {neguFlag, aluOut} = {1'b0, aluin1_m_out} + ~{1'b0, aluin2_m_out} + 1;
      SLL: aluOut = aluin1_m_out << aluin2_m_out[4:0];
      SLT: aluOut = {31'b0, (aluin1_m_out < aluin2_m_out)};
      SLTU: aluOut = {31'b0, ($unsigned(aluin1_m_out) < $unsigned(aluin2_m_out))};
      XOR: aluOut = aluin1_m_out ^ aluin2_m_out;
      OR: aluOut = aluin1_m_out | aluin2_m_out;
      AND: aluOut = aluin1_m_out & aluin2_m_out;
      SRL: aluOut = aluin1_m_out >> aluin2_m_out[4:0];
      SRA: aluOut = aluin1_m_out >>> aluin2_m_out[4:0];
      NOP: aluOut = 0;
      default: aluOut = 0;
    endcase

    negFlag = aluOut[31];

    // output multiplexers

    aluPC_m_out = (aluPC_m) ? aluOut : PC4;
    result = (aluImm_m) ? aluPC_m_out : imm;

  end

endmodule
