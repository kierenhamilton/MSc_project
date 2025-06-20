//`include "codes.sv"

import codes::*;

module decoder (
    output logic writeReg,
    output logic writeRam,
    output logic branch,
    output logic [3:0] aluCode,
    output logic [2:0] immSample,
    output logic A,
    output logic B,
    output logic C,
    output logic D,
    output logic E,
    output logic F,
    output logic G,
    output logic H,
    input [4:0] opcode,
    input [3:0] ctrl
);
  timeunit 1ns; timeprecision 100ps;
  always_comb begin

    {writeReg, writeRam, branch, A, B, C, D, E, F, G, H} = 0;
    aluCode = NOP;
    immSample = '1;

    case (opcode)

      5'b001101: begin // lui
        writeReg = 1;
        A = 1;
      end

      5'b00101: begin // auipc
        writeReg = 1;
        aluCode = 4'b0000; // add
        D = 1;
        E = 1;
        F = 1;
        C = 1;
        B = 1;
        G = 1;
        A = 1;
        immSample = 3'b110;
      end

      5'b11011: begin // jal
        writeReg = 1;
        aluCode = 0000; // add
        C = 1;
        B = 1;
        H = 1;
        immSample = 3'b101;
      end

      5'b11001: begin // jalr
        writeReg = 1;
        aluCode = 4'b0000; // add
        C = 1;
        G = 1;
        H = 1;
        B = 1;
        immSample = 3'b000;
      end

      5'b11000: begin // branch
        branch = 1;
        aluCode = 4'b1000; // sub
        F = 1;
        G = 1;
        B = 0;
        D = 1;
        immSample = 3'b100;
      end

      5'b00000: begin // load
        writeReg = 1;
        A = 1;
        C = 1;
        E = 1;
        F = 1;
        G = 1;
        aluCode = 4'b0000; // add
        immSample = 3'b000;
      end

      5'b01000: begin // store
        writeRam = 1;
        aluCode = 4'b0000; // add
        A = 1;
        F = 1;
        G = 1;
        immSample = 3'b010;
      end

      5'b00100: begin // opimm
        writeReg = 1;
        A = 1;
        C = 1;
        F = 1;
        G = 1;
        aluCode = ctrl;

        if(ctrl[2:0] == 3'b000) aluCode = 4'b0000; // addi

        if (ctrl[2:0] == 3'b011) aluCode = 4'b1010; // sltiu

        if (ctrl == 4'b1101) immSample = 3'b001; // srai
        else immSample = 3'b000;
      end

      5'b01100: begin // op
        writeReg = 1;
        A = 1;
        C = 1;
        D = 1;
        F = 1;
        G = 1;
        aluCode = ctrl;

        if (ctrl[2:0] == 3'b011) aluCode = 4'b1010;
      end

      default: begin
      end

    endcase

  end

endmodule
