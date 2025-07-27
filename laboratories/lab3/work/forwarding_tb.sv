class Rv;
  rand bit [31:0] rs1, rs2;

  rand bit [4:0] addr1, addr2;
  rand bit [4:0] rd_EXE, rd_MEM, rd_WB;
  rand bit [31:0] data_EXE, data_MEM, data_WB;
  rand bit Wreg_EXE, Wreg_MEM, Wreg_WB;

  constraint no_forwarding {
    addr2 != rd_EXE;
    addr2 != rd_MEM;
    addr2 != rd_WB;
    addr1 != rd_EXE;
    addr1 != rd_MEM;
    addr1 != rd_WB;
  }
  constraint forwarding_path_1 {
    rd_WB == addr1;
    rd_WB == addr2;
  }
  constraint forwarding_path_2 {
    rd_MEM == addr1;
    rd_MEM == addr2;
  }
  constraint forwarding_path_3 {
    rd_EXE == addr1;
    rd_EXE == addr2;
  }

endclass

module forwarding_tb;

  timeunit 1ns; timeprecision 100ps;

  Rv rv;
  logic [31:0] rs1F, rs2F;
  logic [31:0] rs1, rs2;
  logic [4:0] addr1, addr2;
  logic [4:0] rd_EXE, rd_MEM, rd_WB;
  logic [31:0] data_EXE, data_MEM, data_WB;
  logic Wreg_EXE, Wreg_MEM, Wreg_WB;

  forwarding dut (
      .rs1F(rs1F),
      .rs2F(rs2F),
      .rs1(rs1),
      .rs2(rs2),
      .addr1(addr1),
      .addr2(addr2),
      .rd_EXE(rd_EXE),
      .rd_MEM(rd_MEM),
      .rd_WB(rd_WB),
      .data_EXE(data_EXE),
      .data_MEM(data_MEM),
      .data_WB(data_WB),
      .Wreg_EXE(Wreg_EXE),
      .Wreg_MEM(Wreg_MEM),
      .Wreg_WB(Wreg_WB)
  );

  initial begin
    rv = new();
    rv.forwarding_path_1.constraint_mode(0);
    rv.forwarding_path_2.constraint_mode(0);
    rv.forwarding_path_3.constraint_mode(0);
    rv.no_forwarding.constraint_mode(1);
    void'(rv.randomize());
    rs1 = rv.rs1;
    rs2 = rv.rs2;
    addr1 = rv.addr1;
    addr2 = rv.addr2;
    rd_EXE = rv.rd_EXE;
    rd_MEM = rv.rd_MEM;
    rd_WB = rv.rd_WB;
    data_EXE = rv.data_EXE;
    data_MEM = rv.data_MEM;
    data_WB = rv.data_WB;
    Wreg_EXE = rv.Wreg_EXE;
    Wreg_MEM = rv.Wreg_MEM;
    Wreg_WB = rv.Wreg_WB;
    repeat (5) begin
      #10;
      rs1_no_forwarding : assert (rs1 == rs1f);
      rs2_no_forwarding : assert (rs2 == rs2f);
    end

    rv.forwarding_path_1.constraint_mode(0);
    rv.forwarding_path_2.constraint_mode(0);
    rv.forwarding_path_3.constraint_mode(1);
    rv.no_forwarding.constraint_mode(0);
    void'(rv.randomize());
    rs1 = rv.rs1;
    rs2 = rv.rs2;
    addr1 = rv.addr1;
    addr2 = rv.addr2;
    rd_EXE = rv.rd_EXE;
    rd_MEM = rv.rd_MEM;
    rd_WB = rv.rd_WB;
    data_EXE = rv.data_EXE;
    data_MEM = rv.data_MEM;
    data_WB = rv.data_WB;
    Wreg_EXE = rv.Wreg_EXE;
    Wreg_MEM = rv.Wreg_MEM;
    Wreg_WB = rv.Wreg_WB;

    repeat (5) begin
      #10;
      rs1F_forwarding_path_WB : assert (rs1F == (Wdreg_WB) ? rs1 : data_WB);
      rs2F_forwarding_path_WB : assert (rs2F == (Wdreg_WB) ? rs2 : data_WB);

    end

    rv.forwarding_path_1.constraint_mode(0);
    rv.forwarding_path_2.constraint_mode(1);
    rv.forwarding_path_3.constraint_mode(1);
    rv.no_forwarding.constraint_mode(0);
    void'(rv.randomize());
    rs1 = rv.rs1;
    rs2 = rv.rs2;
    addr1 = rv.addr1;
    addr2 = rv.addr2;
    rd_EXE = rv.rd_EXE;
    rd_MEM = rv.rd_MEM;
    rd_WB = rv.rd_WB;
    data_EXE = rv.data_EXE;
    data_MEM = rv.data_MEM;
    data_WB = rv.data_WB;
    Wreg_EXE = rv.Wreg_EXE;
    Wreg_MEM = rv.Wreg_MEM;
    Wreg_WB = rv.Wreg_WB;

    repeat (5) begin
      rs1F_forwarding_path_MEM : assert (rs1F == (Wdreg_MEM) ? rs1 : data_MEM);
      rs2F_forwarding_path_MEM : assert (rs2F == (Wdreg_MEM) ? rs2 : data_MEM);
    end

    rv.forwarding_path_1.constraint_mode(1);
    rv.forwarding_path_2.constraint_mode(1);
    rv.forwarding_path_3.constraint_mode(1);
    rv.no_forwarding.constraint_mode(0);
    void'(rv.randomize());
    rs1 = rv.rs1;
    rs2 = rv.rs2;
    addr1 = rv.addr1;
    addr2 = rv.addr2;
    rd_EXE = rv.rd_EXE;
    rd_MEM = rv.rd_MEM;
    rd_WB = rv.rd_WB;
    data_EXE = rv.data_EXE;
    data_MEM = rv.data_MEM;
    data_WB = rv.data_WB;
    Wreg_EXE = rv.Wreg_EXE;
    Wreg_MEM = rv.Wreg_MEM;
    Wreg_WB = rv.Wreg_WB;

    repeat (5) begin
      rs1F_forwarding_path_EXE : assert (rs1F == (Wdreg_EXE) ? rs1 : data_EXE);
      rs2F_forwarding_path_EXE : assert (rs2F == (Wdreg_EXE) ? rs2 : data_EXE);
    end

  end

endmodule
