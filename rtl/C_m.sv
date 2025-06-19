module C_m (
    output logic [31:0] result,
    input [19:0] a,
    input [31:0] b,
    input C
);

timeunit 1ns; timeprecision 100ps;

assign result = (C) ? b : {a[19:0], 12'b0};
endmodule
