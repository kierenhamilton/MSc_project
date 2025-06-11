
typedef enum logic [3:0] {
  ADD = 4'b0000,
  SUB = 4'b1000,
  SLL = 4'b0001,
  SLT = 4'b0010,
  SLTU = 4'b1010,
  XOR = 4'b0100,
  OR = 4'b0110,
  AND = 4'b0111,
  SRL = 4'b0101,
  SRA = 4'b1101,
  NOP = 4'b1111
} aluCodes;

module alu (
    output logic [31:0] aluResult,
    output logic negative,
    output logic zero,
    input aluCodes aluCode,
    input signed [31:0] aluIn1,
    input signed [31:0] aluIn2
);

  always_comb begin

    negative = 0;
    zero = 0;
    aluResult = 0;

    case (aluCode)
      ADD: aluResult = aluIn1 + aluIn2;
      SUB: begin
        aluResult = aluIn1 + ~aluIn2 + 1;
      end
      SLL: begin
        aluResult = aluIn1 << aluIn2;
      end
      SLT: begin
        aluResult = {31'b0, (aluIn1 < aluIn2)};
      end
      SLTU: begin
        aluResult = {31'b0, ($unsigned(aluIn1) < $unsigned(aluIn2))};
      end
      XOR: begin
        aluResult = aluIn1 ^ aluIn2;
      end
      OR: begin
        aluResult = aluIn1 | aluIn2;
      end
      AND: begin
        aluResult = aluIn1 & aluIn2;
      end
      SRL: begin
        aluResult = aluIn1 >> aluIn2;
      end
      SRA: begin
        aluResult = aluIn1 >> aluIn2;
      end
      NOP: begin
        aluResult = 0;
      end
      default: begin
        aluResult = 0;
      end
    endcase
  end

endmodule
