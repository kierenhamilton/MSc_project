module F_m(
  output logic [31:0] result,
  input [31:0] a,
  input [31:0] b,
  input F
  );

  assign result = (F) ? a : b;

endmodule
