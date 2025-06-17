module G_m(
  output logic [31:0] result,
  input [31:0] a,
  input [31:0] b,
  input G
  );

  assign result = (G) ? a : b;

endmodule
