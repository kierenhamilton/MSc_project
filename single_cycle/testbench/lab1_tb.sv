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
	logic [0:7]  mem [0:490];
	Random_value rv = new;
	
	netlist dut (.Clock(Clock), .nReset(nReset));
	
	initial begin
		$readmemh ("submission.hex",dut.progMem0.programMemory); 
	end
	
	always begin Clock = 1; #50 Clock = 0; #50 Clock = 1; end
	
	initial begin
		
		repeat(10) begin
		
		void'(rv.randomize());
		
		result = rv.a * rv.b;
		
		$display ("a=%d, b=%d, result=%d", rv.a, rv.b, result); 
		
		
		end
		repeat(10) begin
			
			// set new random values in the prog_mem
		
	  	nReset = 1;
			@(posedge Clock) nReset = 0;
			@(posedge Clock) nReset = 1;
			repeat(300) @(posedge Clock);
			
			{dut.ram0.ramMemory[0], dut.ram0.ramMemory[1],
				dut.ram0.ramMemory[2], dut.ram0.ramMemory[3]} = { rv.a };
				
			{dut.ram0.ramMemory[4], dut.ram0.ramMemory[5],
				dut.ram0.ramMemory[6], dut.ram0.ramMemory[7]} = { rv.b };
			
			
			
			// check to see if MEM[8] = rand(a) * rand(b)
			
			@(posedge Clock);
			
		end
		$finish;
	end
	
endmodule
