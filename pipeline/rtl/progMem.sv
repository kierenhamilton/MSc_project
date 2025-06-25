module progMem (

    output logic [31:0] instruction,

    input Clock,
    input flush,
    input hold,
    input [31:0] PC

);

  timeunit 1ns; timeprecision 100ps;

  logic [7:0] mem[0:255];

  initial begin
    $readmemh("../scripts/inst_mem.hex", mem);
  end

  always_ff @(posedge Clock) begin

    if (flush || hold) instruction <= 32'h00000013;  // addi x0 x0 0

    else begin

      instruction[7:0]   <= mem[PC+3];
      instruction[15:8]  <= mem[PC+2];
      instruction[23:16] <= mem[PC+1];
      instruction[31:24] <= mem[PC];

    end
  end

endmodule
