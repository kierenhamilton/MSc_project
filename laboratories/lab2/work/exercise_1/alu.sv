typedef enum logic [3:0] {
  ADD  = 4'b0000,
  SUB  = 4'b1000,
  SLL  = 4'b0001,
  SLT  = 4'b0010,
  SLTU = 4'b0011,
  XOR  = 4'b0100,
  SRL  = 4'b0101,
  SRA  = 4'b1101,
  OR   = 4'b0110,
  AND  = 4'b0111
} operation_t;

module alu (
    output logic [31:0] alu_result,
    output logic zero_flag,
    output logic neg_flag,
    output logic carry_flag,
    input [31:0] a,
    input [31:0] b,
    input operation_t control_signals
);

  timeunit 1ns; timeprecision 100ps;

  always_comb begin

    {zero_flag, neg_flag, carry_flag} = 0;

    case (control_signals)
      ADD:  // YOUR CODE HERE
      SUB:  // YOUR CODE HERE
      SLL:  // YOUR CODE HERE
      SLT:  // YOUR CODE HERE
      SLTU: // YOUR CODE HERE
      XOR:  // YOUR CODE HERE
      SRL:  // YOUR CODE HERE
      SRA:  // YOUR CODE HERE
      OR:   // YOUR CODE HERE
      AND:  // YOUR CODE HERE
      default: result = 0;
    endcase
  end
endmodule
