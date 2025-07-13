
module branchLog (
	output logic [31:0] pc_out,
	input [31:0] pc_in,
	input [31:0] alu_result,
	input [31:0] imm_in,
	input [2:0] func3,
	input [1:0] branch_type,
	input neg_flag,
	input carry_flag,
	input zero_flag
);

	timeunit 1ns; timeprecision 100ps;

	always_comb begin
		unique case (branch_type)
			2'b00: pc_out = pc_in + 4; // NONE
			2'b01: pc_out = pc_in + imm_in; // JAL
			2'b10: pc_out = alu_result; // JALR
			2'b11: 											// BRANCH
				case (func3)  
					3'b000: pc_out = (zero_flag)   ? pc_in + imm_in : pc_in + 4; // BEQ
					3'b001: pc_out = (!zero_flag)  ? pc_in + imm_in : pc_in + 4; // BNE
					3'b010: pc_out = (neg_flag)    ? pc_in + imm_in : pc_in + 4; // BLT
					3'b100: pc_out = (!neg_flag)   ? pc_in + imm_in : pc_in + 4; // BGE
					3'b101: pc_out = (carry_flag)  ? pc_in + imm_in : pc_in + 4; // bltu
					3'b111: pc_out = (!carry_flag) ? pc_in + imm_in : pc_in + 4; // bgeu
					default: pc_out = pc_in + 4;
				endcase
		endcase
	end

endmodule
