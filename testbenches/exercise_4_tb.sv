class Rv;
	rand logic [31:0] pc_in;
	rand logic [31:0] alu_result;
	rand logic [31:0] imm_in;
	rand logic [2:0] func3;
	rand logic [1:0] branch_type;
	rand logic neg_flag;
	rand logic zero_flag;
	rand logic carry_flag;
endclass

module exercise_4_tb;

	timeunit 1ns; timeprecision 100ps;

	Rv rv;
	wire [31:0] pc_out;
	logic [31:0] pc_in;
	logic [31:0] alu_result;
	logic [31:0] imm_in;
	logic [2:0] func3;
	logic [1:0] branch_type;
	logic neg_flag;
	logic zero_flag;
	logic carry_flag;

	branchLog dut(
		.pc_out(pc_out),
		.pc_in(pc_in),
		.alu_result(alu_result),
		.imm_in(imm_in),
		.func3(func3),
		.branch_type(branch_type),
		.neg_flag(neg_flag),
		.carry_flag(carry_flag),
		.zero_flag(zero_flag)
	);

	initial begin
		rv = new();
		repeat(200) begin

			void'(rv.randomize());

			pc_in = rv.pc_in;
			alu_result = rv.alu_result;
			imm_in = rv.imm_in;
			func3 = rv.func3;
			branch_type = rv.branch_type;
			neg_flag = rv.neg_flag;
			zero_flag = rv.zero_flag;
			carry_flag = rv.carry_flag;

			#10;

			$display("PC=%d, pc_next=%d", pc_in, pc_out);
		end
		$finish;
	end
endmodule
