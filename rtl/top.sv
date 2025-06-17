module top (
    input Clock,
    input nReset
);

  timeunit 1ns; timeprecision 100ps;


  wire [31:0] instruction;
  wire [31:0] pc, pcNext;
  wire A, B, C, D, E, F, G, H;
  wire branch, writeReg, writeRam;
  wire [3:0] aluCode;
  wire [2:0] immSample;
  wire [31:0] Bout, Cout, Dout, Eout, Fout, Gout, Hout;
  wire [31:0] aluResult, rs1, rs2;
  wire [31:0] ramOut, branchLogicOut;
  wire zeroFlag, negFlag, carryFlag;

  regMem regMem0 (
      .rs1(rs1),
      .rs2(rs2),
      .Clock(Clock),
      .nReset(nReset),
      .writeRegMem(writeReg),
      .rd(instruction[11:7]),
      .addr1(instruction[19:15]),
      .addr2(instruction[24:20]),
      .dataIn(Cout)
  );

  ram ram0 (
      .Clock(Clock),
      .nReset(nReset),
      .rData(ramOut),
      .writeRam(writeRam),
      .ctrl(instruction[14:12]),
      .address(aluResult),
      .wData(rs2)
  );

  progMem progMem0 (
      .PC(pc),
      .instruction(instruction)
  );

  progCounter progCounter (
      .Clock(Clock),
      .nReset(nReset),
      .PCin(branchLogicOut),
      .A(A),
      .H(H),
      .PC(pc),
      .PCnext(pcNext)
  );

  decoder decoder0 (
      .writeReg(writeReg),
      .writeRam(writeRam),
      .branch(branch),
      .aluCode(aluCode),
      .immSample(immSample),
      .A(A),
      .B(B),
      .C(C),
      .D(D),
      .E(E),
      .F(F),
      .G(G),
      .H(H),
      .opcode(instruction[6:2]),
      .ctrl({instruction[30], instruction[14:12]})
  );

  branLog branLog0 (

      .PCout(branchLogicOut),
      .ctrl(instruction[14:12]),
      .branch(branch),
      .neg_flag(negFlag),
      .zero_flag(zeroFlag),
      .carry_flag(carryFlag),
      .PCin(Bout)
  );

  alu alu0 (

      .aluResult(aluResult),
      .negative_flag(negFlag),
      .zero_flag(zeroFlag),
      .carry_flag(carryFlag),
      .aluCode(aluCode),
      .aluIn1(Gout),
      .aluIn2(Dout)
  );

  B_m b (

      .result(Bout),
      .aluIn(Eout),
      .immIn(instruction[31:12]),
      .B(B)
  );

  C_m c (
      .result(Cout),
      .rs1(rs1),
      .PC(Fout),
      .C(C)
  );

  D_m d (
      .result(Dout),
      .rs2(rs2),
      .imm(instruction[31:7]),
      .immSample(immSample),
      .D(D)
  );

  E_m e (
      .result(Eout),
      .a(aluResult),
      .b(ramOut),
      .E(E)
  );
  F_m f (
      .result(Fout),
      .a(pcNext),
      .b(Eout),
      .F(F)
  );
  G_m g (
      .result(Gout),
      .a(pc),
      .b(rs1),
      .G(G)
  );


endmodule
