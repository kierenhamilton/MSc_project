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
} t_aluCodes;

typedef enum logic [4:0] {
  LUI = 5'b001101,
  AUIPC = 5'b00101,
  JAL = 5'b11011,
  JALR = 5'b11001,
  BRANCH = 5'b11000,
  LOAD = 5'b00000,
  STORE = 5'b01000,
  OPIMM = 5'b00100,
  OP = 5'b01100
} t_opcodes;

module decoder (
    output logic writeReg,
    output logic writeRam,
    output logic branch,
    output t_aluCodes aluCode,
    output logic [1:0] immSample,
    output logic A,
    output logic B,
    output logic C,
    output logic D,
    output logic E,
    output logic F,
    output logic G,
    output logic H,
    input t_opcodes opcode,
    input t_aluCodes ctrl
);

  always_comb begin

    {writeReg, writeRam, branch, A, B, C, D, E, F, G, H} = 0;
    aluCode = NOP;
    immSample = 2'd0;

    case (opcode)

      LUI: begin
        writeReg = 1;
        A = 1;
      end

      AUIPC: begin
        B = 1;
        G = 1;
      end

      JAL: begin
        writeReg = 1;
        aluCode = ADD;
        C = 1;
      end

      JALR: begin
        writeReg = 1;
        aluCode = ADD;
        C = 1;
        G = 1;
        H = 1;
      end

      BRANCH: begin
        immSample = 2'b00;
        branch = 1;
        aluCode = SUB;
        F = 1;
      end

      LOAD: begin
        immSample = 2'b01;
        writeReg = 1;
        A = 1;
        C = 1;
        E = 1;
        F = 1;
        G = 1;
        aluCode = ADD;
      end

      STORE: begin
        immSample = 2'b10;
        writeReg = 1;
        aluCode = ADD;
        A = 1;
        F = 1;
        G = 1;
      end

      OPIMM: begin
        writeReg = 1;
        A = 1;
        C = 1;
        F = 1;
        G = 1;
        aluCode = ctrl;

        immSample = 2'b11;

      end

      OP: begin
        writeReg = 1;
        A = 1;
        C = 1;
        D = 1;
        F = 1;
        G = 1;
        aluCode = ctrl;
      end

      default: begin
      end

    endcase

  end

endmodule
