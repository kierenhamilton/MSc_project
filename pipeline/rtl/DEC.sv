module DEC (

    output logic [31:0] PC_out,
    output logic [4:0] rd_out,
    output logic [4:0] addr1_out,
    output logic [4:0] addr2_out,
    output logic [3:0] aluCode_out,
    output logic [31:0] imm_out,
    output logic Wmem_out,
    output logic Rmem_out,
    output logic Wreg_out,
    output logic func3_out,
    output logic aluin1_m_out,
    output logic aluin2_m_out,
    output logic aluPC_m_out,
    output logic aluImm_m_out,
    output logic [31:0] rs1_out,
    output logic [31:0] rs2_out,

    input Clock,
    input nReset,
    input [31:0] PC,
    input [4:0] rd,
    input [4:0] addr1,
    input [4:0] addr2,
    input [3:0] aluCode,
    input [31:0] imm,
    input Wmem,
    input Rmem,
    input Wreg,
    input func3,
    input flush,
    input aluin1_m,
    input aluin2_m,
    input aluPC_m,
    input aluImm_m,
    input [31:0] rs1,
    input [31:0] rs2
);

  always_ff @(posedge Clock, negedge nReset)
    if (!nReset) begin

      PC_out <= 0;
      rd_out <= 0;
      addr1_out <= 0;
      addr2_out <= 0;
      aluCode_out <= 0;
      imm_out <= 0;
      Wmem_out <= 0;
      Rmem_out <= 0;
      Wreg_out <= 0;
      func3_out <= 0;
      aluin1_m_out <= 0;
      aluin2_m_out <= 1;
      aluPC_m_out <= 1;
      aluImm_m_out <= 1;

    end else begin
      if (flush) begin

        PC_out <= 0;
        rd_out <= 0;
        addr1_out <= 0;
        addr2_out <= 0;
        aluCode_out <= 0;
        imm_out <= 0;
        Wmem_out <= 0;
        Rmem_out <= 0;
        Wreg_out <= 0;
        func3_out <= 0;
        aluin1_m_out <= 0;
        aluin2_m_out <= 1;
        aluPC_m_out <= 1;
        aluImm_m_out <= 1;

      end else begin

        PC_out <= PC;
        rd_out <= rd;
        addr1_out <= addr1;
        addr2_out <= addr2;
        aluCode_out <= aluCode;
        imm_out <= imm;
        Wmem_out <= Wmem;
        Rmem_out <= Rmem;
        Wreg_out <= Wreg;
        func3_out <= func3;
        aluin1_m_out <= aluin1_m;
        aluin2_m_out <= aluin2_m;
        aluPC_m_out <= aluPC_m;
        aluImm_m_out <= aluImm_m;

      end
    end

  always_comb begin

    if (flush) begin

      rs1_out = 0;
      rs2_out = 0;

    end else begin

      rs1_out = rs1;
      rs2_out = rs2;

    end
  end

endmodule
