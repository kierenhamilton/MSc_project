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



  // Forwarding path for rs2F


end

endmodule


