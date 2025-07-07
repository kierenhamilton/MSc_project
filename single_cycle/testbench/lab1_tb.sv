class Random_value;

rand bit unsigned [15:0] a, b;

endclass

module lab1_tb;
	timeunit 1ns; timeprecision 100ps;
	
	logic Clock;
	logic nReset;
	logic [31:0] a;
	logic [31:0] b;
	logic [31:0] result;
	logic [31:0] measured_result;
	logic [0:7]  mem [0:490];
	string pass_or_fail;
	Random_value rv = new;
	
	netlist dut (.Clock(Clock), .nReset(nReset));
	
	initial begin
		$readmemh ("submission.hex",dut.progMem0.programMemory); 
	end
	
	always begin Clock = 1; #50 Clock = 0; #50 Clock = 1; end
	
	initial begin
		
		repeat(10) begin
		
		void'(rv.randomize());
		
			{dut.ram0.ramMemory[0], dut.ram0.ramMemory[1],
				dut.ram0.ramMemory[2], dut.ram0.ramMemory[3]} = { 16'b0, rv.a };
				
			{dut.ram0.ramMemory[4], dut.ram0.ramMemory[5],
				dut.ram0.ramMemory[6], dut.ram0.ramMemory[7]} = { 16'b0, rv.b };

		  result = rv.a * rv.b;
		
	  	nReset = 1;
			@(posedge Clock) nReset = 0;
			@(posedge Clock) nReset = 1;
			repeat(300) @(posedge Clock);

			measured_result = {dut.ram0.ramMemory[8], dut.ram0.ramMemory[9], 
				dut.ram0.ramMemory[10], dut.ram0.ramMemory[11]};
			
			pass_or_fail = (measured_result == result) ?
					"PASS" : "FAIL";

			$display("A=%d, B=%d, A*B=%d, measured=%d, %s",
				rv.a, rv.b, result, measured_result, pass_or_fail); 

			@(posedge Clock);
			
		end
		$finish;
	end
	
endmodule
