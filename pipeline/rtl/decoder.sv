`include "./coreUtils.sv"
`include "./core_types_pkg.sv"

import core_types_pkg::*;
import coreUtils::*;

module decoder (

    output decoder_out_t control_signals,

    input f7,
    input [2:0] func3,
    input [24:0] immSample,
    input opcodes_t opcode
);

  always_comb begin

    control_signals.func3 = func3;

    case (opcode)
      LUI: begin
        control_signals.imm = get_U_imm(immSample);
        control_signals.alu_codes = ADD;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluin1_m, control_signals.aluin2_m,
          control_signals.aluPC_m, control_signals.aluImm_m,
          control_signals.Rmem
        } = get_lui_signals();
      end

      AUIPC: begin
        control_signals.imm = get_U_imm(immSample);
        control_signals.alu_codes = ADD;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluin1_m, control_signals.aluin2_m,
          control_signals.aluPC_m, control_signals.aluImm_m,
          control_signals.Rmem
        } = get_auipc_signals();
      end

      OPIMM: begin
        control_signals.imm = get_I_imm(immSample);
        case (func3)
          3'b101:  control_signals.alu_codes = alu_codes_t'({f7, func3});
          3'b011:  control_signals.alu_codes = alu_codes_t'({1'b1, func3});
          default: control_signals.alu_codes = alu_codes_t'({1'b0, func3});
        endcase
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluin1_m, control_signals.aluin2_m,
          control_signals.aluPC_m, control_signals.aluImm_m,
          control_signals.Rmem
        } = get_opimm_signals();
      end

      OP: begin
        control_signals.imm = get_R_imm(immSample);
        control_signals.alu_codes = alu_codes_t'({f7, func3});
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluin1_m, control_signals.aluin2_m,
          control_signals.aluPC_m, control_signals.aluImm_m,
          control_signals.Rmem
        } = get_op_signals();
      end

      LOAD: begin
        control_signals.imm = get_I_imm(immSample);
        control_signals.alu_codes = ADD;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluin1_m, control_signals.aluin2_m,
          control_signals.aluPC_m, control_signals.aluImm_m,
          control_signals.Rmem
        } = get_load_signals();
      end

      STORE: begin
        control_signals.imm = get_S_imm(immSample);
        control_signals.alu_codes = ADD;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluin1_m, control_signals.aluin2_m,
          control_signals.aluPC_m, control_signals.aluImm_m,
          control_signals.Rmem
        } = get_store_signals();
      end

      JAL: begin
        control_signals.imm = get_J_imm(immSample);
        control_signals.alu_codes = ADD;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluin1_m, control_signals.aluin2_m,
          control_signals.aluPC_m, control_signals.aluImm_m,
          control_signals.Rmem
        } = get_jal_signals();
      end

      JALR: begin
        control_signals.imm = get_I_imm(immSample);
        control_signals.alu_codes = ADD;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluin1_m, control_signals.aluin2_m,
          control_signals.aluPC_m, control_signals.aluImm_m,
          control_signals.Rmem
        } = get_jal_signals();
      end

      BRANCH: begin
        control_signals.imm = get_B_imm(immSample);
        control_signals.alu_codes = SUB;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluin1_m, control_signals.aluin2_m,
          control_signals.aluPC_m, control_signals.aluImm_m,
          control_signals.Rmem
        } = get_branch_signals();
      end

      default: begin
        control_signals.imm = 0;
        control_signals.alu_codes = ADD;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluin1_m, control_signals.aluin2_m,
          control_signals.aluPC_m, control_signals.aluImm_m,
          control_signals.Rmem
        } = get_op_signals();
      end

    endcase

  end

endmodule
