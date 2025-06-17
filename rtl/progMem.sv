module progMem (
    input [31:0] PC,
    output logic [31:0] instruction
);

  logic [7:0] programMemory[0:1023];

  initial begin
    foreach (programMemory[i]) programMemory[i] = 0;
    $readmemb("program.bin", programMemory);
  end

  always_comb begin
    instruction[7:0]   = programMemory[PC];
    instruction[15:8]  = programMemory[PC+1];
    instruction[23:16] = programMemory[PC+2];
    instruction[31:24] = programMemory[PC+3];
  end

endmodule
