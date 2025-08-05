class Rv;

	rand bit Wdata;
	rand bit [4:0] addr1;
	rand bit [4:0] addr2;
	rand bit [4:0] rd;
	rand bit [31:0] data_in;

endclass



module exercise_2_tb;

timeunit 1ns; timeprecision 100ps;

logic Clock;
logic nReset;
logic [31:0] data_in;
logic [4:0] addr1;
logic [4:0] addr2;
logic [4:0] rd;
logic Wdata;
logic valid_addr;
wire [31:0] rs1;
wire [31:0] rs2;

Rv rv;

regMem dut (
	.rs1(rs1),
	.rs2(rs2),
	.Clock(Clock),
	.nReset(nReset),
	.data_in(data_in),
	.addr1(addr1),
	.addr2(addr2),
	.rd(rd),
	.Wdata(Wdata)	
);

always begin Clock = 1; #50 Clock = 0; #50 Clock = 1; end

initial begin
	rv=new();
	valid_addr = 0;
	nReset = 1;
	#10 nReset = 0;
	#10 nReset = 1;
	valid_addr = 1;
end

initial begin
	repeat(100) begin
		void'(rv.randomize());
		Wdata = rv.Wdata;
		data_in = rv.data_in;
		addr1=rv.addr1;
		addr2=rv.addr2;
		rd=rv.rd;
		@(posedge Clock);
	end
	$finish();
end

default clocking dflt_clock @(posedge Clock); endclocking

default disable iff (!nReset);

check_writing: assert property (@(posedge Clock) Wdata |-> (dut.memory[rd] == data_in));

check_reading: assert property (@(posedge Clock) (valid_addr) |=> (
	(dut.memory[addr1] == rs1) &&
	(dut.memory[addr2] == rs2)
	)
);

endmodule
