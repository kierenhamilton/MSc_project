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
      end
      AUIPC: begin
        control_signals.imm = get_U_imm(immSample);
        control_signals.alu_codes = ADD;
      end
      OPIMM: begin
        control_signals.imm = get_I_imm(immSample);
        case (f3)
          3'b101:  control_signals.alu_codes = alu_codes_t'({f7, f3});
          3'b011:  control_signals.alu_codes = alu_codes_t'({1'b1, f3});
          default: control_signals.alu_codes = alu_codes_t'({1'b0, f3});
        endcase
      end
      OP: begin
        control_signals.imm = get_R_imm(immSample);
        control_signals.alu_codes = alu_codes_t'({f7, f3});
      end
      LOAD: begin
        control_signals.imm = get_I_imm(immSample);
        control_signals.alu_codes = ADD;
      end
      STORE: begin
        control_signals.imm = get_S_imm(immSample);
        control_signals.alu_codes = ADD;
      end
      JAL: begin
        control_signals.imm = get_J_imm(immSample);
        control_signals.alu_codes = ADD;
      end
      JALR: begin
        control_signals.imm = get_I_imm(immSample);
        control_signals.alu_codes = ADD;
      end
      BRANCH: begin
        control_signals.imm = get_B_imm(immSample);
        control_signals.alu_codes = SUB;
      end
      default: begin
        control_signals.imm = 0;
      end
    endcase

  end

endmodule
