package coreUtils;

  timeunit 1ns; timeprecision 100ps;

  typedef enum logic [2:0] {
    BEQ = 3'b000,
    BNE = 3'b001,
    BLT = 3'b100,
    BGE = 3'b101,
    BLTU = 3'b110,
    BGEU = 3'b111
    } branch_signals_t;

  typedef enum logic [3:0] {
    ADD  = 4'b0000,
    SUB  = 4'b1000,
    SLL  = 4'b0001,
    SLT  = 4'b0010,
    SLTU = 4'b0011,
    XOR  = 4'b0100,
    SRL  = 4'b0101,
    SRA  = 4'b1101,
    OR   = 4'b0110,
    AND  = 4'b0111,
    NOP  = 4'b1111
  } alu_codes_t;

  typedef enum logic [4:0] {
    LUI    = 5'b01101,
    AUIPC  = 5'b00101,
    OPIMM  = 5'b00100,
    OP     = 5'b01100,
    LOAD   = 5'b00000,
    STORE  = 5'b01000,
    JAL    = 5'b11011,
    JALR   = 5'b11001,
    BRANCH = 5'b11000
  } opcodes_t;

  typedef enum logic [1:0] {
    NON_TYPE = 2'd0,
    JAL_TYPE,
    JALR_TYPE,
    CONDITIONAL_TYPE
  } branch_type_t;


  // immediate cleaning functions

  function automatic logic [31:0] get_R_imm(logic [24:0] immSample);
    return 0;
  endfunction : get_R_imm

  function automatic logic [31:0] get_I_imm(logic [24:0] immSample);
    return {{20{immSample[24]}}, immSample[24:13]};
  endfunction : get_I_imm

  function automatic logic [31:0] get_S_imm(logic [24:0] immSample);
    return {{20{immSample[24]}}, immSample[24:18], immSample[4:0]};
  endfunction : get_S_imm

  function automatic logic [31:0] get_B_imm(logic [24:0] immSample);
    return {
      {19{immSample[24]}}, immSample[24], immSample[0], immSample[23:18], immSample[4:1], 1'b0
    };
  endfunction : get_B_imm

  function automatic logic [31:0] get_U_imm(logic [24:0] immSample);
    return {immSample[24:5], 12'b0};
  endfunction : get_U_imm

  function automatic logic [31:0] get_J_imm(logic [24:0] immSample);
    return {
      {11{immSample[24]}}, immSample[24], immSample[12:5], immSample[13], immSample[23:14], 1'b0
    };
  endfunction : get_J_imm

  // control signal functions

  function automatic logic [9:0] get_lui_signals();
    return 10'b00_0100_0000;
  endfunction

  function automatic logic [9:0] get_auipc_signals();
    return 10'b00_0101_1110;
  endfunction

  function automatic logic [9:0] get_opimm_signals();
    return 10'b00_0100_1110;
  endfunction

  function automatic logic [9:0] get_op_signals();
    return 10'b00_0100_0110;
  endfunction

  function automatic logic [9:0] get_load_signals();
    return 10'b00_0110_1111;
  endfunction

  function automatic logic [9:0] get_store_signals();
    return 10'b00_1000_1110;
  endfunction

  function automatic logic [9:0] get_jal_signals();
    return 10'b01_0100_0010;
  endfunction

  function automatic logic [9:0] get_jalr_signals();
    return 10'b00_0100_1010;
  endfunction

  function automatic logic [9:0] get_branch_signals();
    return 10'b00_0000_0000;
  endfunction

endpackage
