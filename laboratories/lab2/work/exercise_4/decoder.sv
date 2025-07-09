typedef enum logic [4:0] {

  LUI = 5'b01101,
  AUIPC = 5'b00101,
  OPIMM = 5'b00100,
  OP = 5'b01100,
  LOAD = 5'b00000,
  STORE = 5'b01000,
  JAL = 5'b11011,
  JALR = 5'b11001,
  BRANCH = 5'b11000

} opcode_t;

module decoder (
    input [31:0] instruction,
    output logic [31:0] immediate,
    output logic [2:0] func3,
    output logic [2:0] alu_code,
    output logic is_branch,
    output logic A,
    output logic B,
    output logic C,
    output logic D,
    output logic E,
    output logic F,
    output logic G
);

  timeunit 1ns; timeprecision 100ps;

  opcode_t opcode;

  always_comb begin

    opcode = 'opcode_t(instruction[6:2]);

    immediate = get_immediate(instruction);

    {A, B, C, D, E, F, G} = get_muxs(opcode_t);


  end



endmodule
