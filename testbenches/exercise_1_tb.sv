typedef enum bit [3:0] {
  ADD  = 4'b0000,
  SUB  = 4'b1000,
  SLL  = 4'b0001,
  SLT  = 4'b0010,
  SLTU = 4'b0011,
  XOR  = 4'b0100,
  SRL  = 4'b0101,
  SRA  = 4'b1101,
  OR   = 4'b0110,
  AND  = 4'b0111
} alu_control_e;



class Rv;
	
  rand bit [31:0] a;
  rand bit [31:0] b;
  rand alu_control_e alu_control;
	
  constraint legal_c {
	
		alu_control inside {ADD, SUB, SLL, SLT, SLTU, XOR, SRL, SRA, OR, AND};
		
		(alu_control inside {SLL, SRL, SRA})->(a <= 31 && b <=31);
	}

endclass


module exercise_1_tb;
  timeunit 1ns; timeprecision 100ps;

  Rv rv;
	bit add_b, sub_b, sll_b, slt_b, sltu_b, xor_b, srl_b, sra_b, or_b, and_b, carry_b, zero_b, neg_b;
	logic [31:0] result;
	logic zero_flag;
	logic carry_flag;
	logic neg_flag;
	
	logic [31:0] alu_result;
	logic alu_zero_flag;
	logic alu_neg_flag;
	logic alu_carry_flag;
	logic [31:0] alu_in_a;
	logic [31:0] alu_in_b;
	string correct = "test";
	alu_control_e alu_in_control;
	

	alu dut(
		.alu_result(alu_result),
		.zero_flag(alu_zero_flag),
		.neg_flag(alu_neg_flag),
		.carry_flag(alu_carry_flag),
		.a(alu_in_a),
		.b(alu_in_b),
		.control_signals(alu_in_control) 
		);
	
	initial begin
    rv = new();
			{add_b, sub_b, sll_b, slt_b, sltu_b, xor_b, srl_b, sra_b, or_b, and_b, carry_b, zero_b, neg_b} = '1;
    repeat (100) begin
      void'(rv.randomize());
			alu_in_a = rv.a;
			alu_in_b = rv.b;
			alu_in_control = rv.alu_control;
			
			{zero_flag, carry_flag, neg_flag} = 0;
  		
    	case (rv.alu_control)
				ADD: result = rv.a + rv.b;
				SUB: {carry_flag, result} = rv.a + ~rv.b + 1;
				SLL: result = rv.a << rv.b;
				SLT: result = ($signed(rv.a) < $signed(rv.b)) ? 1 : 0;
				SLTU: result = ($unsigned(rv.a) < $unsigned(rv.b)) ? 1 : 0; 
				XOR: result = rv.a ^ rv.b;
				SRL:	result = rv.a >> rv.b;
				SRA:	result = rv.a >>> rv.b;
				OR:		result = rv.a | rv.b;
				AND:	result = rv.a & rv.b;
				default: result = 0;
				
			
			endcase

			neg_flag = result[31];
			zero_flag = (result == 0);
			#10;
			if (alu_result == result) correct = "PASS";
			else begin 
				correct = "FAIL";
				case (rv.alu_control)
					ADD:	add_b = 0;
					SUB:	sub_b = 0;
					SLL:	sll_b = 0;
					SLT:	slt_b = 0;
					SLTU:	sltu_b = 0;
					XOR:	xor_b = 0;
					SRL:	srl_b = 0;
					SRA:	sra_b = 0;
					OR:		or_b = 0;
					AND:	and_b = 0;
					default: begin end
				endcase
			end
			if (alu_in_control == SUB) begin
				if (alu_carry_flag != carry_flag) carry_b = 0;
				if (alu_zero_flag != zero_flag) zero_b = 0;
				if (alu_neg_flag != neg_flag) neg_b = 0;
			end
      $display("a=%d, b=%d, control=%s, result=%d, measured=%d, carry_flag=%b, zero_flag=%b, neg_flag=%b, %s", 
			 rv.a, rv.b, rv.alu_control.name(), $signed(result), $signed(alu_result), carry_flag, zero_flag, neg_flag, correct);
			// report:


    end
				$display("------------------ALU REPORT-------------------");
				$display("ADD: %s", (add_b) ? "PASS" : "FAIL");
				$display("SUB: %s", (sub_b) ? "PASS" : "FAIL");
				$display("SLL: %s", (sll_b) ? "PASS" : "FAIL");
				$display("SLT: %s", (slt_b) ? "PASS" : "FAIL");
				$display("SLTU: %s", (sltu_b) ? "PASS" : "FAIL");
				$display("XOR: %s", (xor_b) ? "PASS" : "FAIL");
				$display("SRL: %s", (srl_b) ? "PASS" : "FAIL");
				$display("SRA: %s", (sra_b) ? "PASS" : "FAIL");
				$display("OR: %s", (or_b) ? "PASS" : "FAIL");
				$display("AND: %s", (and_b) ? "PASS" : "FAIL");
				$display("zero_flag: %s", (zero_b) ? "PASS" : "FAIL");
				$display("carry_flag: %s", (carry_b) ? "PASS" : "FAIL");
				$display("neg_flag: %s", (neg_b) ? "PASS" : "FAIL");
				
    
  end
endmodule

