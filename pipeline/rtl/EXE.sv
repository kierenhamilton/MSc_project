module EXE (

    output logic [31:0] rs2_out,
    output logic [4:0] rd_out,
    output logic [31:0] result_out,
    output logic Wmem_out,
    output logic Rmem_out,
    output logic Wreg_out,
    output logic [2:0] func_out,

    input Clock,
    input nReset,
    input [31:0] rs2,
    input [4:0] rd,
    input [31:0] result,
    input Wmem,
    input Rmem,
    input Wreg,
    input [2:0] func

);

  always_ff @(posedge Clock, negedge nReset)
    if (!nReset) begin

      rs2_out <= 0;
      rd_out <= 0;
      result_out <= 0;
      Wmem_out <= 0;
      Rmem_out <= 0;
      Wreg_out <= 0;
      func_out <= 0;

    end else begin

      rs2_out <= rs2;
      rd_out <= rd;
      result_out <= result;
      Wmem_out <= Wmem;
      Rmem_out <= Rmem;
      Wreg_out <= Wreg;
      func_out <= func;

    end
endmodule

