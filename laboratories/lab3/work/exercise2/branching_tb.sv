


module branching_tb;

	timeunit 1ns; timeprecision 100ps;

	logic Clock;
	logic nReset;
	logic [2:0] func3_DEC;
	logic [31:0] PC_IF;
	logic [31:0] PC_DEC;
	logic is_load;
	logic [1:0] branch_type;
	logic [31:0] imm;
	logic [31:0] imm_DEC;
	logic [31:0] aluOut;
	logic zeroFlag;
	logic negFlag;
	logic neguFlag;


	branching dut(
		.flush(flush),
		.branch(branch),
		.hold(hold),
		.PCnext(PCnext),
		.Clock(Clock),
		.nReset(nReset),
		.func3_DEC(func3_DEC),
		.PC_IF(PC_IF),
		.PC_DEC(PC_DEC),
		.is_load(is_load),
		.branch_type(branch_type),
		.imm(imm),
		.imm_DEC(imm_DEC),
		.aluOut(aluOut),
		.zeroFlag(zeroFlag),
		.neguFlag(neguFlag)
	);

	

endmodule
