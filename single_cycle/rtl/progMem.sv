module progMem (
    input [31:0] PC,
    output logic [31:0] instruction
);

  timeunit 1ns; timeprecision 100ps;
  logic [7:0] programMemory[0:500];

// initial begin
//   //foreach (programMemory[i]) programMemory[i] = 0;
//   $readmemh("../../scripts/inst_mem.hex", programMemory);
//   foreach (programMemory[i]) $display("%d: %h", i, programMemory[i]);
// end

  always_comb begin
    instruction[7:0]   = programMemory[PC+3];
    instruction[15:8]  = programMemory[PC+2];
    instruction[23:16] = programMemory[PC+1];
    instruction[31:24] = programMemory[PC];
  end

endmodule
