module C_m (
    output logic [31:0] result,
    input [31:0] rs1,
    input [31:0] PC,
    input C
);

  always_comb
    if (C) result = rs1;
    else result = PC;

endmodule
