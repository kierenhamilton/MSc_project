


module branching_tb;

	timeunit 1ns; timeprecision 100ps;

	logic Clock;
	logic nReset;
	logic [2:0] func3_DEC;
	logic [31:0] PC;
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

	wire flush;
	wire hold;
	wire [31:0] PCnext;

	branching dut(
		.Clock(Clock),
		.nReset(nReset),
		.flush(flush),
		.hold(hold),
		.PCnext(PCnext),
		.func3_DEC(func3_DEC),
		.PC(PC),
		.PC_IF(PC_IF),
		.PC_DEC(PC_DEC),
		.is_load(is_load),
		.branch_type(branch_type),
		.imm(imm),
		.imm_DEC(imm_DEC),
		.aluOut(aluOut),
		.zeroFlag(zeroFlag),
		.negFlag(negFlag),
		.neguFlag(neguFlag)
	);

	property non_type_test;
		@(posedge Clock) (!flush && (branch_type == 2'd0) && (is_load == 0)) |-> (PCnext == (PC) + 4);
	endproperty
	
	property non_load_test;
		@(posedge Clock) (!flush && (branch_type == 2'd0) && (is_load == 1)) |-> (PCnext == PC);
	endproperty
	
	property jal_test_p;
		@(posedge Clock) (!flush && (branch_type == 2'd1)) |-> (hold == 1 && PCnext == (PC_IF + imm));
	endproperty
	
	property jalr_test_p;
		@(posedge Clock) (!flush && (branch_type == 2'd2)) |->##1 (flush == 1 && PCnext == PC_DEC + aluOut);
	endproperty
	
	property branch_prediction_test_1_p;
		@(posedge Clock) (dut.isBranch == 1 && dut.branch_type_DEC == 4 && dut.branch_confirmed != dut.prediction_DEC) 
			|->##1	(dut.prediction_DEC != $past(dut.prediction_DEC));
	endproperty
	
	property pipelining_test_p;
		@(posedge Clock) (!flush && (branch_type == 2 || branch_type == 3)) |->##1 (dut.isBranch == 1);
	endproperty
	
	property branch_prediction_test_2_p;
		@(posedge Clock) (!flush && branch_type == 3 && dut.prediction_new == 1) |-> 
			(PCnext == (PC_IF + imm) && hold == 1);
	endproperty
	
	property branch_prediction_test_3_p;
		@(posedge Clock) (!flush && branch_type == 3 && dut.prediction_new == 0) |-> 
			(PCnext == PC+4);
	endproperty
	
	property branch_prediction_test_4_p;
		@(posedge Clock) (dut.isBranch == 1 && dut.branch_type_DEC == 3 && dut.branch_confirmed == dut.prediction_DEC) 
			|->##1 ($past(dut.prediction_new) == dut.prediction_DEC);
	endproperty
	
	property branch_prediction_test_5_p;
		@(posedge Clock) (dut.isBranch == 1 && dut.branch_type_DEC == 3 && dut.branch_confirmed != dut.prediction_DEC) 
			|->##1 ($past(dut.prediction_new) != dut.prediction_DEC);
	endproperty
	
	property beq_test_p;
		@(posedge Clock) (func3_DEC == 0 && dut.isBranch == 1) |-> (dut.branch_confirmed == zeroFlag);
	endproperty
	property bne_test_p;
		@(posedge Clock) (func3_DEC == 1 && dut.isBranch == 1) |-> (dut.branch_confirmed != zeroFlag);
	endproperty
	property blt_test_p;
		@(posedge Clock) (func3_DEC == 4 && dut.isBranch == 1) |-> (dut.branch_confirmed == negFlag);
	endproperty
	property bge_test_p;
		@(posedge Clock) (func3_DEC == 5 && dut.isBranch == 1) |-> (dut.branch_confirmed == !negFlag);
	endproperty
	property bltu_test_p;
		@(posedge Clock) (func3_DEC == 6 && dut.isBranch == 1) |-> (dut.branch_confirmed == neguFlag);
	endproperty
	property bgeu_test_p;
		@(posedge Clock) (func3_DEC == 7 && dut.isBranch == 1) |-> (dut.branch_confirmed == !neguFlag);
	endproperty

	
	

	non_test: assert property(non_type_test);
	load_test: assert property(non_load_test);
	jal_test: assert property(jal_test_p);
	jalr_test: assert property(jalr_test_p);
	branch_prediction_test_1: assert property(branch_prediction_test_1_p);
	branch_prediction_test_2: assert property(branch_prediction_test_2_p);
	branch_prediction_test_3: assert property(branch_prediction_test_3_p);
	branch_prediction_test_4: assert property(branch_prediction_test_4_p);
	pipelining_test: assert property(pipelining_test_p);
	beq_test: assert property(beq_test_p);
	bne_test: assert property(bne_test_p);
	blt_test: assert property(blt_test_p);
	bge_test: assert property(bge_test_p);
	bltu_test : assert property(bltu_test_p);
	bgeu_test: assert property(bgeu_test_p);
	
endmodule
