module E_m(
  output logic [31:0] result,
  input [31:0] a,
  input [31:0] b,
  input E
  );

  assign result = (E) ? a : b;

endmodule
