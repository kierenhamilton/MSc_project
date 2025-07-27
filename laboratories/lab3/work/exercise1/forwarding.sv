module forwarding (
    output logic [31:0] rs1F,
    rs2F,
    input [31:0] rs1,
    rs2,
    input [4:0] addr1,
    addr2,
    input [4:0] rd_EXE,
    rd_MEM,
    rd_WB,
    input [31:0] data_EXE,
    data_MEM,
    data_WB,
    input Wreg_EXE,
    Wreg_MEM,
    Wreg_WB
);

timeunit 1ns; timeprecision 100ps;

always_comb begin

  // Forwarding path for rs1F

	if (addr1 == 0) rs1F = 0;
	else rs1F = rs1;
  
	if (addr2 == 0) rs2F = 0;
	else rs2F = rs2;
  
	
  // Forwarding path for rs2F


end

endmodule


