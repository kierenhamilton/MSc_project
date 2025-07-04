module D_m (
    output logic [31:0] result,
    input [31:0] rs2,
    input [24:0] imm,
    input [2:0] immSample,
    input D
);

  timeunit 1ns; timeprecision 100ps;

  always_comb begin
    if (D) result = rs2;
    else
      case (immSample)


        3'b000: begin  // load
          result = {{20{imm[24]}}, imm[24:13]};
        end
        3'b001: begin  // loadu
          result = {20'd0, imm[24:13]};
        end
        3'b010: begin  // store
          result = {{20{imm[24]}}, imm[24:18], imm[4:0]};
        end
        3'b100: begin  // branch
          result = {{19{imm[24]}}, imm[24], imm[0], imm[23:18], imm[4:1], 1'b0};
        end
        3'b101: begin  // jal
          result = {{13{imm[24]}}, imm[24], imm[13:7], imm[23:14], 1'b0};
        end
        3'b110: begin // auipc
          result = {imm[24:5], 12'b0};
        end

        default: begin
          result = 0;
        end

      endcase
  end

endmodule
