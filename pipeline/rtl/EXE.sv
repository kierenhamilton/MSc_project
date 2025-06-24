`include "./core_types_pkg.sv"
import core_types_pkg::*;
module EXE (

    output EXE_out_t EXE_out,

    input Clock,
    input nReset,
    input [31:0] rs2,
    input [4:0] rd,
    input [31:0] result,
    input Wmem,
    input Rmem,
    input Wreg,
    input [2:0] func3

);

  always_ff @(posedge Clock, negedge nReset)
    if (!nReset) begin

      EXE_out.rs2 <= 0;
      EXE_out.rd <= 0;
      EXE_out.result <= 0;
      EXE_out.Wmem <= 0;
      EXE_out.Rmem <= 0;
      EXE_out.Wreg <= 0;
      EXE_out.func3 <= 0;

    end else begin

      EXE_out.rs2 <= rs2;
      EXE_out.rd <= rd;
      EXE_out.result <= result;
      EXE_out.Wmem <= Wmem;
      EXE_out.Rmem <= Rmem;
      EXE_out.Wreg <= Wreg;
      EXE_out.func3 <= func3;

    end
endmodule

