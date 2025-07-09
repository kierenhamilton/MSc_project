module regMem (
    output logic [31:0] rs1,
    output logic [31:0] rs2,
    input Clock,
    input nReset,
    input [31:0] data_in,
    input [4:0] addr1,
    input [4:0] addr2,
    input [4:0] rd,
    input Wdata
);

  timeunit 1ns; timeprecision 100ps;

  logic [31:0] memory[0:31];  // Memory array 

  // [31:0] at the start describes the size of each register
  //
  // [0:31] at the end describes how many registers there are
  //

  always_ff @(posedge Clock, negedge nReset) begin
  end

  always_comb begin
  end

endmodule
