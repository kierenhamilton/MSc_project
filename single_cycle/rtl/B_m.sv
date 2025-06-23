module B_m (
    output logic [31:0] result,
    input logic [31:0] aluIn,
    input logic [11:0] immIn,
    input logic B
);

timeunit 1ns; timeprecision 100ps;

  always_comb begin

    if (B) result = aluIn;
    else result = {{19{immIn[11]}}, immIn[11], immIn[0], immIn[10:5], immIn[4:1], 1'b0 };

  end

endmodule
