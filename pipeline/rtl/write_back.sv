module write_back (

    output logic [31:0] Wdata,
    output logic [4:0] rd_wb,
    output logic Wreg_wb,

    input Rmem,
    input Wreg,
    input [31:0] result,
    input [31:0] memOut,
    input [4:0] rd

);

  always_comb begin
    Wdata   = (Rmem) ? memOut : result;
    rd_wb   = rd;
    Wreg_wb = Wreg;
  end

endmodule
