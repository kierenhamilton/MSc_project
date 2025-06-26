// `include "./coreUtils.sv"
import coreUtils::*;

package core_types_pkg;

  timeunit 1ns; timeprecision 100ps;

  typedef struct packed {

    logic [31:0] PC;
    logic [4:0] rd;
    logic [4:0] addr1;
    logic [4:0] addr2;
    logic [3:0] aluCode;
    logic [31:0] imm;
    logic Wmem;
    logic Rmem;
    logic Wreg;
    logic [2:0] func3;
    logic aluin1_m;
    logic aluin2_m;
    logic aluPC_m;
    logic aluImm_m;

  } DEC_out_t;

  typedef struct packed {

    logic [31:0] rs2;
    logic [4:0] rd;
    logic [31:0] result;
    logic Wmem;
    logic Rmem;
    logic Wreg;
    logic [2:0] func3;
  } EXE_out_t;

  typedef struct packed {logic [31:0] PC;} IF_out_t;

  typedef struct packed {

    logic [4:0] rd;
    logic [31:0] result;
    logic Wreg;
    logic Rmem;

  } MEM_out_t;

  typedef struct packed {

    logic [31:0] result;
    logic [31:0] aluOut;
    logic zeroFlag;
    logic negFlag;
    logic neguFlag;

  } alu_out_t;

  typedef struct packed {

    logic flush;
    logic hold;
    logic [31:0] PCnext;
    logic [31:0] PCcurrent;
    logic branch;
    logic bypass;

  } branching_out_t;

  typedef struct packed {logic [31:0] memOut;} dataMem_out_t;

  typedef struct packed {

    logic [2:0] func3;
    logic [31:0] imm;
    alu_codes_t alu_codes;
    branch_type_t branch_type;
    logic Wmem;
    logic Wreg;
    logic isLoad;
    logic Rmem;
    logic aluin1_m;
    logic aluin2_m;
    logic aluPC_m;
    logic aluImm_m;

  } decoder_out_t;

  typedef struct packed {

    logic [31:0] rs1F;
    logic [31:0] rs2F;

  } forwarding_out_t;

  typedef struct packed {logic [31:0] PC;} progCount_out_t;

  typedef struct packed {logic [31:0] instruction;} progMem_out_t;

  typedef struct packed {

    logic [31:0] rs1;
    logic [31:0] rs2;

  } regMem_out_t;

  typedef struct packed {

    logic [31:0] WdataR;
    logic [4:0] rdR;
    logic WregR;

    logic [31:0] Wdata;
    logic [4:0] rd;
    logic Wreg;

  } write_back_out_t;

endpackage
