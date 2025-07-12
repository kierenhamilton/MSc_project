// typedef enum logic [3:0] {
  // ADD  = 4'b0000,
  // SUB  = 4'b1000,
  // SLL  = 4'b0001,
  // SLT  = 4'b0010,
  // SLTU = 4'b0011,
  // XOR  = 4'b0100,
  // SRL  = 4'b0101,
  // SRA  = 4'b1101,
  // OR   = 4'b0110,
  // AND  = 4'b0111
// } alu_control_e;

module alu (
    output logic [31:0] alu_result,
    output logic zero_flag,
    output logic neg_flag,
    output logic carry_flag,
    input [31:0] a,
    input [31:0] b,
    input alu_control_e control_signals
);

  timeunit 1ns; timeprecision 100ps;

  always_comb begin

    {zero_flag, neg_flag, carry_flag} = 0;

    case (control_signals)
      ADD:  alu_result = a + b;
      SUB:  {carry_flag, alu_result} = a + ~b + 1;
      SLL:  alu_result = a << b;
      SLT:  alu_result =  ($signed(a) < $signed(b)) ? 1 : 0;
      SLTU: alu_result = ($unsigned(a) < $unsigned(b)) ? 1 : 0;
      XOR:  alu_result = a ^ b;
      SRL:  alu_result = a >>> b;
      SRA:  alu_result = a >> b;
      OR:   alu_result = a | b;
      AND:  alu_result = a & b;
      default: alu_result = 0;
    endcase
    
    neg_flag = alu_result[31];
    zero_flag = (alu_result == 0);
  end
endmodule
