module progMem (

    output logic [31:0] instruction,

    input flush,
    input hold,
    input Clock,
    input [31:0] PC

);

  logic [7:0] mem[0:255];

  initial begin
    $readmemh("", mem);
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
