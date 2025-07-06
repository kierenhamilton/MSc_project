package codes;

  timeunit 1ns; timeprecision 100ps;

  typedef enum logic [3:0] {
    ADD  = 4'b0000,
    SUB  = 4'b1000,
    SLL  = 4'b0001,
    SLT  = 4'b0010,
    SLTU = 4'b1010,
    XOR  = 4'b0100,
    OR   = 4'b0110,
    AND  = 4'b0111,
    SRL  = 4'b0101,
    SRA  = 4'b1101,
    NOP  = 4'b1111
  } alucodes_t;


  typedef enum logic [4:0] {
    LUI = 5'b001101,
    AUIPC = 5'b00101,
    JAL = 5'b11011,
    JALR = 5'b11001,
    BRANCH = 5'b11000,
    LOAD = 5'b00000,
    STORE = 5'b01000,
    OPIMM = 5'b00100,
    OP = 5'b01100
  } opcodes_t;

endpackage
