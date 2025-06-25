module IF (

    output logic [31:0] PC_out,
    output logic [31:0] instruction_out,

    input Clock,
    input nReset,
    input flush,
    input hold,
    input [31:0] instruction,
    input [31:0] PC

);

  timeunit 1ns; timeprecision 100ps;

  always_ff @(posedge Clock, negedge nReset)

    if (!nReset) PC_out <= 0;
    else if (flush || hold) PC_out <= 0;
    else PC_out <= PC;

  always_comb begin

    instruction_out = instruction;

  end

endmodule
