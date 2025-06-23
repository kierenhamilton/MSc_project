//`include "./codes.sv"
import codes::*;

module alu (
    output logic signed [31:0] aluResult,
    output logic negative_flag,
    output logic zero_flag,
    output logic carry_flag,
    input alucodes_t aluCode,
    input signed [31:0] aluIn1,
    input signed [31:0] aluIn2
);

  timeunit 1ns; timeprecision 100ps;
  always_comb begin

    negative_flag = 0;
    zero_flag = 0;
    carry_flag = 0;
    aluResult = 0;

    case (aluCode)
      ADD: aluResult = aluIn1 + aluIn2;
      SUB: {carry_flag, aluResult} = {1'b0, aluIn1} + ~{1'b0, aluIn2} + 1;
      SLL: aluResult = aluIn1 << aluIn2;
      SLT: aluResult = {31'b0, (aluIn1 < aluIn2)};
      SLTU: aluResult = {31'b0, ($unsigned(aluIn1) < $unsigned(aluIn2))};
      XOR: aluResult = aluIn1 ^ aluIn2;
      OR: aluResult = aluIn1 | aluIn2;
      AND: aluResult = aluIn1 & aluIn2;
      SRL: aluResult = aluIn1 >> aluIn2;
      SRA: aluResult = aluIn1 >>> aluIn2;
      NOP: aluResult = 0;
      default: aluResult = 0;
    endcase

    if (aluResult < 0) negative_flag = 1;
    if (aluResult == 0) zero_flag = 1;

  end

endmodule
