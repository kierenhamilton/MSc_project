
typedef enum logic [3:0] {
  ADD  = 4'b0000,
  SUB  = 4'b1000,
  SLL  = 4'b0001,
  SLT  = 4'b0010,
  SLTU = 4'b1010,
  XOR  = 4'b0100,
  OR   = 4'b0110,
  AND  = 4'b0111,
  SRL  = 4'b0101,
  SRA  = 4'b1101,
  NOP  = 4'b1111
} aluCodes_t;

module alu (
    output logic signed [31:0] aluResult,
    output logic negative_flag,
    output logic zero_flag,
    output logic carry_flag,
    input aluCodes_t aluCode,
    input signed [31:0] aluIn1,
    input signed [31:0] aluIn2
);

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
