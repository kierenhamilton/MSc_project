module regMem (
    output logic [31:0] rs1,
    output logic [31:0] rs2,
    input Clock,
    input nReset,
    input writeRegMem,
    input [4:0] rd,
    input [4:0] addr1,
    input [4:0] addr2,
    input [31:0] dataIn
);

  timeunit 1ns; timeprecision 100ps;
  logic [31:0] regMemory[0:31];

  always_ff @(posedge Clock, negedge nReset) begin


    if (writeRegMem) regMemory[rd] <= dataIn;

  end

  always_comb begin

    rs1 = regMemory[addr1];
    rs2 = regMemory[addr2];

  end

endmodule
