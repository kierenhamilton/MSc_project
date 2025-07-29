module branching (
	output logic flush,
	output logic hold,
	output logic [31:0] PCnext,
	input Clock,
	input nReset,
	input [2:0] func3_DEC,
	input [31:0] PC_IF,
	input [31:0] PC,
	input [31:0] PC_DEC,
	input is_load,
	input [1:0] branch_type,
	input [31:0] imm,
	input [31:0] imm_DEC,
	input [31:0] aluOut,
	input zeroFlag,
	input negFlag,
	input neguFlag
);

	timeunit 1ns; timeprecision 100ps;
	
	logic prediction_DEC;
	logic isBranch_DEC;
	logic [1:0] branch_type_DEC;
	logic flush_internal;
	logic prediction_new;
	logic branch_confirmed;
	logic prediction;
	logic isBranch;

	logic [31:0] PCnext_decode;
	logic [31:0] PCnext_execute;
	// Define any additional logic here
	
	always_ff @(posedge Clock, negedge nReset) // Branching Registers
		if (!nReset) begin
			prediction <= 0;
			isBranch_DEC <= 0;
			branch_type_DEC <= 0;
		end else begin
			branch_type_DEC <= branch_type;
			prediction_DEC <= prediction_new;
			isBranch_DEC <= isBranch;
		end
	
	always_comb begin : Execute_stage

		// Default values
		flush = 0;
		flush_internal = 0;
		PCnext_execute = 0;
		prediction_new = prediction_DEC;

		unique case (branch_type_DEC)
			2'b00:	begin end
			2'b01: begin end
			2'b10: begin
				flush = 1;
				flush_internal = 1;
				PCnext_execute = PC_DEC + aluOut;
			end
			2'b11:	begin // CONDITIONAL

				case (func3_DEC) // set branch_confirmed
					3'b000: begin end // BEQ
					3'b001: begin end // BNE
					3'b100: begin end // BLT
					3'b101: begin end // BGE
					3'b110: begin end // BLTU
					3'b111: begin end // BGEU
					default: begin end
				endcase

			end // CONDITIONAL
		endcase
		unique case ({prediction_DEC, branch_confirmed})
			2'b00: begin end // predicted false, actually false
			2'b01: begin end // predicted false, actually true
			2'b10: begin end // predicted true, actually false
			2'b11: begin end // predicted true, actually true
		endcase
	end : Execute_stage
	
	always_comb begin : Decode_stage
		hold = 0;
		PCnext_decode = 0;
		isBranch = 0;
		if (!flush_internal) begin // nothing should happen here if execute stage is flushing.
			unique case (branch_type)
				2'b00: 	begin
					if (is_load) begin
						hold = 1;
						PCnext_decode = PC;
					end else
						PCnext_decode = PC+4;
				end
				2'b01:	begin
					hold = 1;
					PCnext_decode = PC_IF + imm;
				end
				2'b10:	begin end
				2'b11:	begin end
			endcase // if
		end
	end : Decode_stage

	// The multiplexer for PCnext
	assign PCnext = (!flush_internal) ? PCnext_decode : PCnext_execute;

endmodule	
