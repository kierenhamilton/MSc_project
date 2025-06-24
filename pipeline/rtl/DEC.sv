`include "./core_types_pkg.sv"
import core_types_pkg::*;
module DEC (

    output DEC_out_t DEC_out,

    output logic [31:0] rs1_out,
    output logic [31:0] rs2_out,

    input Clock,
    input nReset,
    input [31:0] PC,
    input [4:0] rd,
    input [4:0] addr1,
    input [4:0] addr2,
    input [3:0] aluCode,
    input [31:0] imm,
    input Wmem,
    input Rmem,
    input Wreg,
    input func3,
    input flush,
    input aluin1_m,
    input aluin2_m,
    input aluPC_m,
    input aluImm_m,
    input [31:0] rs1,
    input [31:0] rs2
);

  always_ff @(posedge Clock, negedge nReset)
    if (!nReset) begin

      DEC_out.PC <= 0;
      DEC_out.rd <= 0;
      DEC_out.addr1 <= 0;
      DEC_out.addr2 <= 0;
      DEC_out.aluCode <= 0;
      DEC_out.imm <= 0;
      DEC_out.Wmem <= 0;
      DEC_out.Rmem <= 0;
      DEC_out.Wreg <= 0;
      DEC_out.func3 <= 0;
      DEC_out.aluin1_m <= 0;
      DEC_out.aluin2_m <= 1;
      DEC_out.aluPC_m <= 1;
      DEC_out.aluImm_m <= 1;

    end else begin
      if (flush) begin

        DEC_out.PC <= 0;
        DEC_out.rd <= 0;
        DEC_out.addr1 <= 0;
        DEC_out.addr2 <= 0;
        DEC_out.aluCode <= 0;
        DEC_out.imm <= 0;
        DEC_out.Wmem <= 0;
        DEC_out.Rmem <= 0;
        DEC_out.Wreg <= 0;
        DEC_out.func3 <= 0;
        DEC_out.aluin1_m <= 0;
        DEC_out.aluin2_m <= 1;
        DEC_out.aluPC_m <= 1;
        DEC_out.aluImm_m <= 1;

      end else begin

        DEC_out.PC <= PC;
        DEC_out.rd <= rd;
        DEC_out.addr1 <= addr1;
        DEC_out.addr2 <= addr2;
        DEC_out.aluCode <= aluCode;
        DEC_out.imm <= imm;
        DEC_out.Wmem <= Wmem;
        DEC_out.Rmem <= Rmem;
        DEC_out.Wreg <= Wreg;
        DEC_out.func3 <= func3;
        DEC_out.aluin1_m <= aluin1_m;
        DEC_out.aluin2_m <= aluin2_m;
        DEC_out.aluPC_m <= aluPC_m;
        DEC_out.aluImm_m <= aluImm_m;

      end
    end

  always_comb begin

    rs1_out = rs1;
    rs2_out = rs2;

  end

endmodule
