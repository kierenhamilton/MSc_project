module regMem (

    output logic [31:0] rs1,
    output logic [31:0] rs2,

    input Clock,
    input nReset,
    input flush,
    input Wreg,
    input [4:0] rd,
    input [31:0] Wdata,
    input [4:0] addr1,
    input [4:0] addr2

);

  logic [31:0] regs[0:31];

  always_ff @(posedge Clock, negedge nReset)

    if (!nReset) foreach (regs[i]) regs[i] <= 0;

    else begin

      if (Wreg && rd != 0) regs[rd] <= Wdata;

      if (flush) begin

        rs1 <= 0;
        rs2 <= 0;

      end else begin

        rs1 <= regs[addr1];
        rs2 <= regs[addr2];

      end

    end  // else

endmodule
