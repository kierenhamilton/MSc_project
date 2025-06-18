module E_m(
  output logic [31:0] result,
  input [31:0] a,
  input [31:0] b,
  input E
  );

timeunit 1ns; timeprecision 100ps;
  assign result = (E) ? b : a;

endmodule
