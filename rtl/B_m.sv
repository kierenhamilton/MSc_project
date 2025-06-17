module B_m (
    output logic [31:0] result,
    input logic [31:0] aluIn,
    input logic [19:0] immIn,
    input logic B
);

  always_comb begin

    if (B) result = {immIn, 12'b0};
    else result = aluIn;

  end

endmodule
