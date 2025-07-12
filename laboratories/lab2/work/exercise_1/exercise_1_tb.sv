typedef enum bit [3:0] {
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
} alu_control_e;


class Rv;

  rand bit [31:0] a;
  rand bit [31:0] b;
  rand alu_control_e alu_control;

  constraint legal_c {alu_control inside {ADD, SUB, SLL, SLT, SLTU, XOR, SRL, SRA, OR, AND};}



endclass

module exercise_1_tb;
  timeunit 1ns; timeprecision 100ps;

  Rv rv;

  initial begin
    rv = new();
    repeat (20) begin
      'void(rv.randomize());
      $display("a=%d, b=%d, control=%b", rv.a, rv.b, rv.alu_control);
    end
  end
endmodule

