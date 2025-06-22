module MEM (

    output logic [4:0] rd_out,
    output logic [31:0] result_out,
    output logic [31:0] memOut_out,
    output logic Wreg_out,

    input Clock,
    input nReset,
    input [4:0] rd,
    input [31:0] result,
    input [31:0] memOut,
    input Wreg

);

  always_ff @(posedge Clock, negedge nReset)
    if (!nReset) begin

      rd_out <= 0;
      result_out <= 0;
      Wreg_out <= 0;

    end else begin

      rd_out <= rd;
      result_out <= result;
      Wreg_out <= Wreg;

    end

  always_comb begin
    memOut_out = memOut;
  end

endmodule
