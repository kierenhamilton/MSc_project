module forwarding (

    output logic [31:0] rs1F,
    output logic [31:0] rs2F,

    input [31:0] rs1DEC,
    input [31:0] rs2DEC,

    input [4:0] addr1DEC,
    input [4:0] addr2DEC,

    input [4:0] rdEXE,
    input [31:0] resultEXE,
    input WregEXE,

    input [4:0] rdMEM,
    input [31:0] WdataMEM,
    input WregMEM

);

  timeunit 1ns; timeprecision 100ps;

  always_comb begin : main

      // for address 1

      if (rdEXE == addr1DEC && rdEXE != 0 && WregEXE) rs1F = resultEXE; // checks execute
      else if (rdMEM == addr1DEC && WregMEM &&rdMEM != 0) rs1F = WdataMEM; // checks memory
      else rs1F = rs1DEC; // default


      // address 2

      if (rdEXE == addr2DEC && rdEXE != 0 && WregEXE) rs2F = resultEXE; // checks execute
      else if (rdMEM == addr2DEC && WregMEM && rdMEM != 0) rs2F = WdataMEM; // checks memory
      else rs2F = rs2DEC;

  end : main

endmodule
