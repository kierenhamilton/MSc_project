module top (
    input Clock,
    input nReset
);

  timeunit 1ns; timeprecision 100ps;

  logic [31:0] instruction;
  logic [31:0] rs1;
  logic [31:0] rs2;
  logic writeRegMem;
  logic writeRam;
  logic [4:0] rd;
  logic [4:0] addr1, addr2;
  logic A, B, C, D, E, F, G, H;
  logic wData;
  logic rData;


  regMem regMem0 (
      .rs1(rs1),
      .rs2(rs2),
      .Clock(Clock),
      .nReset(nReset),
      .writeRegMem(writeRegMem),
      .rd(rd),
      .addr1(addr1),
      .addr2(addr2),
      .dataIn(dataIn)
  );

  ram ram0 (
      .Clock(Clock),
      .nReset(nReset),
      .rData(rData),
      .writeRam(writeRam),
      .ctrl(ctrl),
      .address(address),
      .wData(wData)
  );

  progMem progMem0 (
      .PC(PC),
      .instruction(instruction)
  );

  progCounter progCounter (
      .Clock(Clock),
      .nReset(nReset),
      .PCin(PCin),
      .PCbypass(PCbypass),
      .A(A),
      .H(H),
      .PC(PC),
      .PCnext(PCnext)
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
      .opcode(opcode),
      .ctrl(ctrl)
  );

  branLog branLog0 (

      .PCout(PCout),
      .ctrl(ctrl),
      .branch(branch),
      .neg_flag(neg_flag),
      .zero_flag(zero_flag),
      .carry_flag(carry_flag),
      .PCin(PCin)
  );

  alu alu0 (

      .aluResult(aluResult),
      .negative_flag(negative_flag),
      .zero_flag(zero_flag),
      .carry_flag(carry_flag),
      .aluCode(aluCode),
      .aluIn1(aluIn1),
      .aluIn2(aluIn2)
  );

  B_m b (

      .result(result),
      .aluIn(aluIn),
      .immIn(immIn),
      .B(B)
  );

  C_m c (
      .result(result),
      .rs1(rs1),
      .PC(PC),
      .C(C)
  );

  D_m d (
      .result(result),
      .rs2(rs2),
      .imm(imm),
      .imm2(imm2),
      .immSample(immSample),
      .D(D)
  );

  E_m e ();
  F_m f ();
  G_m g ();


endmodule
