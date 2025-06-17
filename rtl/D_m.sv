module D_m (
    output logic [31:0] result,
    input [31:0] rs2,
    input [19:0] imm,
    input [4:0] imm2,
    input [1:0] immSample,
    input D
);


  always_comb begin
    if (D) result = rs2;
    else
      case (immSample)

        // immop

        // shamt

        // branch

        // load

        // store


        default: begin
        end
      endcase
  end

endmodule
