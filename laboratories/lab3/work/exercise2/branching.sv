module branching (
	output logic flush,
	output logic hold,
	output logic [31:0] PCnext,
	input Clock,
	input nReset,
	input [2:0] func3_DEC,
	input [31:0] PC_IF,
	input [31:0]PC_DEC,
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

	logic [31:0] PCnext_decode;
	logic [31:0] PCnext_execute;
	// Define any additional logic here
	
	always_ff @(posedge Clock, negedge nReset) // Branching Registers
		if (!nReset) begin
			prediction <= 0;
			isBranch <= 0;
			branchType <= 0;
		end else begin
			branch_type_DEC <= branch_type;
			prediction_DEC <= prediction_new;
			isBranch_DEC <= is_branch;
		end
	
	always_comb begin : Execute_stage

		// Default values
		flush = 0;
		flush_internal = 0;
		PCnext_execute = 0;
		prediction_new = prediction_DEC;

		unique case (branch_type)
			2'b00:	
			2'b01: 
			2'b10:  
			2'b11:	begin // CONDITIONAL
				// Your code here
				case (func3_DEC) // set branch_confirmed
					3'b000: // BEQ
					3'b001: // BNE
					3'b100: // BLT
					3'b101: // BGE
					3'b110: // BLTU
					3'b111: // BGEU
					default: 
				endcase

			end // CONDITIONAL
		endcase
		unique case ({prediction_DEC, branch_confirmed})
			2'b00: // predicted false, actually false
			2'b01: // predicted false, actually true
			2'b10: // predicted true, actually false
			2'b11: // predicted true, actually true
		endcase
	end : Execute_stage
	
	always_comb begin : Decode_stage
		hold = 0;
		PCnext_decode = 0;
		branch_type = 0;
		is_branch = 0;
		if (!flush_internal) begin // nothing should happen here if execute stage is flushing.
			unique case (branch_type)
				2'b00: 	begin // NONE
					// STEP 1
				end
				2'b01:	begin // JAL
					// Your code here
				end
				2'b10:	begin // JALR
					// Your code here
				end
				2'b11:	begin // CONDITIONAL
					// Your code here
				end
			endcase
		end // if
	end : Decode_stage

	// The multiplexer for PCnext
	assign PCnext = (flush_internal) ? PCnext_decode : PCnext_execute;

endmodule	
