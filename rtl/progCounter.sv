module progCounter (
    input Clock,
    input nReset,
    input [31:0] PCin,
    input [31:0] PCbypass,
    input A,
    input H,
    output logic [31:0] PC,
    output logic [31:0] PCnext
);

  always_ff @(posedge Clock, negedge nReset)

    if (!nReset) PC <= 0;
    else if (H) PC <= PCbypass;
    else if (A) PC <= PC + 4;
    else PC <= PC + PCin;

  assign PCnext = PC + 4;

endmodule
