
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

package core_pkg;


  function logic [31:0] get_immediate (logic[31:0] instruction);
    // Your code here
  endfunction

  function logic [6:0] get_muxs (opcode_t opcode);
    // opcodes
  endfunction


endpackage: core_pkg
