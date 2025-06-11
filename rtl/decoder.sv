module decoder (
    output logic writeReg,
    output logic writeRam,
    output logic branch,
    output logic [4:0] aluCode,
    output logic A,
    output logic B,
    output logic C,
    output logic D,
    output logic E,
    output logic F,
    output logic G,
    output logic H,
    input [4:0] opcode,
    input [3:0] ctrl
);

  always_comb begin

    {writeReg, writeRam, branch, aluCode, A, B, C, D, E, F, G, H} = 0;

    case (opcode)
      5'b01101: begin
      end
      5'b00101: begin
      end
      5'b00100: begin
      end
      5'b01100: begin
      end
      5'b00000: begin
      end
      5'b01000: begin
      end
      5'b11011: begin
      end
      5'b11001: begin
      end
      5'b11000: begin
      end
      default: begin
      end
    endcase

  end

endmodule
