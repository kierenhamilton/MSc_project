module decoder (
	input [4:0] opcode,
	input [2:0] func3,
	input [31:0] immediate_unclean
	output logic [31:0] imm_out,
	output logic [1:0] branch_type,
	output logic A,
	output logic B,
	output logic C,
	output logic D,
	output logic E,
	output logic F
);

timeunit 1ns; timeprecision 100ps;

always_comb begin
	case (opcode)
		5'b01101: begin // LUI
			end
		5'b00101: begin // AUIPC
			end
		5'b00100: begin // OPIMM
			end
		5'b01100: begin // OP
			end
		5'b00000: begin // LOAD
			end
		5'b01000: begin // STORE
			end
		5'b11011: begin // JAL
			end
		5'b11001: begin // JALR
			end
		5'b11000: begin // BRANCH
			end
	endcase
end

endmodule
