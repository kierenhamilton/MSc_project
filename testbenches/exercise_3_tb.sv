typedef enum logic[2:0] {
	BYTE = 3'b000,
	HW = 3'b001,
	WORD = 3'b010,
	LBU = 3'b100,
	LHU = 3'b101
} func3_e;

class Rv;

	rand bit write_data;
	rand bit [31:0] address;
	rand bit [31:0] data_in;
	rand func3_e func3;

	constraint legal_c {
		func3 inside {BYTE, HW, WORD, LBU, LHU};
		address <= 1024;
	}

endclass

module exercise_3_tb;

	timeunit 1ns; timeprecision 100ps;

	logic Clock;
	logic write_data;
	logic [31:0] address;
	logic [31:0] data_in;
	func3_e func3;
	wire [31:0] data_out;
	Rv rv; 
		
	dataMem dut(
		.data_out(data_out),
		.Clock(Clock),
		.write_data(write_data),
		.address(address),
		.data_in(data_in),
		.func3(func3)
	);

	always begin Clock = 1; #50 Clock = 0; #1 Clock = 1; end

	initial begin

		rv = new();

		repeat(100) begin
			void'(rv.randomize());
			write_data = rv.write_data;
			address = rv.address;
			data_in = rv.data_in;
			func3 = rv.func3;
			@(posedge Clock);
		end
		$finish;
	end

check_read:assert property(@(posedge Clock) data_out == dut.memory[address]);
check_write:assert property(@(posedge Clock) write_data |-> (dut.memory[address] == $past(data_in))); 

endmodule
