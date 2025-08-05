module dataMem(
	output logic [31:0] data_out,
	input Clock,
	input write_data,
	input [31:0] address,
	input [31:0] data_in,
	input func3_e func3 
);

timeunit 1ns; timeprecision 100ps;

	logic [7:0] memory [1023:0];
endmodule
