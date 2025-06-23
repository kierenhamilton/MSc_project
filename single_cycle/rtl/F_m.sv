module F_m(
  output logic [31:0] result,
  input [31:0] a,
  input [31:0] b,
  input F
  );

timeunit 1ns; timeprecision 100ps;
  assign result = (F) ? b : a;

endmodule
