//`include "codes.sv"

import codes::*;

module decoder (
    output logic writeReg,
    output logic writeRam,
    output logic branch,
    output alucodes_t aluCode,
    output logic [2:0] immSample,
    output logic A,
    output logic B,
    output logic C,
    output logic D,
    output logic E,
    output logic F,
    output logic G,
    output logic H,
    input opcodes_t opcode,
    input alucodes_t ctrl
);
  timeunit 1ns; timeprecision 100ps;
  always_comb begin

    {writeReg, writeRam, branch, A, B, C, D, E, F, G, H} = 0;
    aluCode = NOP;
    immSample = '1;

    case (opcode)

      LUI: begin
        writeReg = 1;
        A = 1;
      end

      AUIPC: begin
        writeReg = 1;
        aluCode = ADD;
        D = 1;
        E = 1;
        F = 1;
        C = 1;
        B = 1;
        G = 1;
        A = 1;
        immSample = 3'b110;
      end

      JAL: begin
        writeReg = 1;
        aluCode = ADD;
        C = 1;
        immSample = 3'b101;
      end

      JALR: begin
        writeReg = 1;
        aluCode = ADD;
        C = 1;
        G = 1;
        H = 1;
        immSample = 3'b000;
      end

      BRANCH: begin
        branch = 1;
        aluCode = SUB;
        F = 1;
        immSample = 3'b100;
      end

      LOAD: begin
        writeReg = 1;
        A = 1;
        C = 1;
        E = 1;
        F = 1;
        G = 1;
        aluCode = ADD;
        immSample = 3'b000;
      end

      STORE: begin
        writeReg = 1;
        aluCode = ADD;
        A = 1;
        F = 1;
        G = 1;
        immSample = 3'b010;
      end

      OPIMM: begin
        writeReg = 1;
        A = 1;
        C = 1;
        F = 1;
        G = 1;
        aluCode = ctrl;

        if (ctrl == 4'b1010) immSample = 3'b001;
        else immSample = 3'b000;
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
