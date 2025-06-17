module branLog (
    output logic [31:0] PCout,
    input [2:0] ctrl,
    input branch,
    input neg_flag,
    input zero_flag,
    input carry_flag,
    input [31:0] PCin
);

  always_comb

    if (branch) begin

      PCout = 4;

      case (ctrl)

        3'b000:  if (zero_flag) PCout = PCin;  // beq
        3'b001:  if (!zero_flag) PCout = PCin;  // bne
        3'b100:  if (neg_flag) PCout = PCin;  // blt
        3'b101:  if (!zero_flag && !neg_flag) PCout = PCin;  // bge
        3'b110:  if (carry_flag) PCout = PCin;  // bltu
        3'b111:  if (!zero_flag && !carry_flag) PCout = PCin;  // bgeu
        default: PCout = PCin;

      endcase

    end else PCout = PCin;

endmodule
