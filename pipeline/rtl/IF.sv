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

  always_ff @(posedge Clock, negedge nReset)

    if (!nReset) PC_out <= 0;
    else if (flush || hold) PC_out <= 0;
    else PC_out <= PC;

  always_comb begin

    if (flush || hold) instruction_out = 32'h00000013; // NOP -> addi x0 x0 0
    else instruction_out = instruction;

  end

endmodule
