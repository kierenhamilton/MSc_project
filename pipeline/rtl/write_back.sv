// `include "./core_types_pkg.sv"
import core_types_pkg::*;

module write_back (

    output write_back_out_t write_back_out,

    input Clock,
    input nReset,
    input Rmem,
    input Wreg,
    input [31:0] result,
    input [31:0] memOut,
    input [4:0] rd

);

  timeunit 1ns; timeprecision 100ps;

  always_ff @(posedge Clock, negedge nReset)
    if (!nReset) begin
      write_back_out.WregR <= 0;
      write_back_out.rdR <= 0;
      write_back_out.WdataR <= 0;
    end else begin
      write_back_out.WregR <= Wreg;
      write_back_out.rdR   <= rd;
      write_back_out.Wdata <= (Rmem) ? memOut : result;
    end

  always_comb begin
    write_back_out.Wdata = (Rmem) ? memOut : result;
    write_back_out.rd = rd;
    write_back_out.Wreg = Wreg;
  end

endmodule
