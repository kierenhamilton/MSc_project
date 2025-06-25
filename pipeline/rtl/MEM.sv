
// `include "./core_types_pkg.sv"
import core_types_pkg::*;
module MEM (

    output MEM_out_t MEM_out,
    output logic [31:0] memOut_out,

    input Clock,
    input nReset,
    input [4:0] rd,
    input [31:0] result,
    input [31:0] memOut,
    input Wreg,
    input Rmem

);

  timeunit 1ns; timeprecision 100ps;

  always_ff @(posedge Clock, negedge nReset)
    if (!nReset) begin

      MEM_out.rd <= 0;
      MEM_out.result <= 0;
      MEM_out.Wreg <= 0;
      MEM_out.Rmem <= 0;

    end else begin

      MEM_out.rd <= rd;
      MEM_out.result <= result;
      MEM_out.Wreg <= Wreg;
      MEM_out.Rmem <= Rmem;

    end

  always_comb begin
    memOut_out = memOut;
  end

endmodule
