module C_m (
    output logic [31:0] result,
    input [31:12] a,
    input [31:0] b,
    input C
);

timeunit 1ns; timeprecision 100ps;

assign result = (C) ? b : {{12{a[31]}}, a[31:12]};
endmodule
