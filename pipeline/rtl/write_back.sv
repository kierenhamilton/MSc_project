// `include "./core_types_pkg.sv"
import core_types_pkg::*;

module write_back (

    output write_back_out_t write_back_out,

    input Rmem,
    input Wreg,
    input [31:0] result,
    input [31:0] memOut,
    input [4:0] rd

);

  always_comb begin
    write_back_out.Wdata = (Rmem) ? memOut : result;
    write_back_out.rd = rd;
    write_back_out.Wreg = Wreg;
  end

endmodule
