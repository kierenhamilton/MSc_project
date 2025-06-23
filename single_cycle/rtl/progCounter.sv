module progCounter (
    input Clock,
    input nReset,
    input [31:0] PCin,
    input A,
    input H,
    output logic [31:0] PC,
    output logic [31:0] PCnext
);

timeunit 1ns; timeprecision 100ps;
  always_ff @(posedge Clock, negedge nReset)

    if (!nReset) PC <= 0;
    else if (H) PC <= PCin;
    else if (A) PC <= PC + 32'd4;
    else PC <= PC + PCin;

  assign PCnext = PC + 32'd4;

endmodule
