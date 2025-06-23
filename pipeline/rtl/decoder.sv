`include "./coreUtils.sv"
import coreUtils::*;

module decoder (
    output control_signals_t control_signals,
    input f7,
    input [2:0] f3,
    input [24:0] immSample,
    input opcodes_t opcode
);

  always_comb begin

    control_signals.f3 = f3;

    case (opcode)
      LUI: begin
        control_signals.imm = get_U_imm(immSample);
        control_signals.alu_codes = ADD;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluIn1, control_signals.aluIn2,
          control_signals.aluPC, control_signals.aluImm,
          control_signals.Rmem
        } = get_lui_signals();
      end

      AUIPC: begin
        control_signals.imm = get_U_imm(immSample);
        control_signals.alu_codes = ADD;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluIn1, control_signals.aluIn2,
          control_signals.aluPC, control_signals.aluImm,
          control_signals.Rmem
        } = get_auipc_signals();
      end

      OPIMM: begin
        control_signals.imm = get_I_imm(immSample);
        case (f3)
          3'b101:  control_signals.alu_codes = alu_codes_t'({f7, f3});
          3'b011:  control_signals.alu_codes = alu_codes_t'({1'b1, f3});
          default: control_signals.alu_codes = alu_codes_t'({1'b0, f3});
        endcase
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluIn1, control_signals.aluIn2,
          control_signals.aluPC, control_signals.aluImm,
          control_signals.Rmem
        } = get_opimm_signals();
      end

      OP: begin
        control_signals.imm = get_R_imm(immSample);
        control_signals.alu_codes = alu_codes_t'({f7, f3});
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluIn1, control_signals.aluIn2,
          control_signals.aluPC, control_signals.aluImm,
          control_signals.Rmem
        } = get_op_signals();
      end

      LOAD: begin
        control_signals.imm = get_I_imm(immSample);
        control_signals.alu_codes = ADD;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluIn1, control_signals.aluIn2,
          control_signals.aluPC, control_signals.aluImm,
          control_signals.Rmem
        } = get_load_signals();
      end

      STORE: begin
        control_signals.imm = get_S_imm(immSample);
        control_signals.alu_codes = ADD;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluIn1, control_signals.aluIn2,
          control_signals.aluPC, control_signals.aluImm,
          control_signals.Rmem
        } = get_store_signals();
      end

      JAL: begin
        control_signals.imm = get_J_imm(immSample);
        control_signals.alu_codes = ADD;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluIn1, control_signals.aluIn2,
          control_signals.aluPC, control_signals.aluImm,
          control_signals.Rmem
        } = get_jal_signals();
      end

      JALR: begin
        control_signals.imm = get_I_imm(immSample);
        control_signals.alu_codes = ADD;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluIn1, control_signals.aluIn2,
          control_signals.aluPC, control_signals.aluImm,
          control_signals.Rmem
        } = get_jal_signals();
      end

      BRANCH: begin
        control_signals.imm = get_B_imm(immSample);
        control_signals.alu_codes = SUB;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluIn1, control_signals.aluIn2,
          control_signals.aluPC, control_signals.aluImm,
          control_signals.Rmem
        } = get_branch_signals();
      end

      default: begin
        control_signals.imm = 0;
        control_signals.alu_codes = ADD;
        {
          control_signals.branch_type, control_signals.Wmem,
          control_signals.Wreg, control_signals.isLoad,
          control_signals.aluIn1, control_signals.aluIn2,
          control_signals.aluPC, control_signals.aluImm,
          control_signals.Rmem
        } = get_op_signals();
      end

    endcase

  end

endmodule
