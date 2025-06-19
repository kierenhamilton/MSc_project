module ram (
    output logic [31:0] rData,
    input Clock,
    input nReset,
    input writeRam,
    input [2:0] ctrl,
    input [31:0] address,
    input [31:0] wData
);
  timeunit 1ns; timeprecision 100ps;
  logic [7:0] ramMemory[0:31];

  always_ff @(posedge Clock, negedge nReset) begin
    if (!nReset) begin
      ramMemory[0] <= 0;
    end else if (writeRam)
      case (ctrl)
        3'b000: ramMemory[address] <= wData[7:0];
        3'b001: {ramMemory[address+1], ramMemory[address]} <= wData[15:0];
        3'b010:
        {ramMemory[address+3], ramMemory[address+2], ramMemory[address+1], ramMemory[address]}
        <= wData;
        default: begin
        end
      endcase
  end

  always_comb begin
    rData = 0;
    case (ctrl)
      3'b000: rData = {{24{ramMemory[address][7]}}, ramMemory[address]};  // load byte
      3'b001:
      rData = {
        {16{ramMemory[address+1][7]}}, ramMemory[address+1], ramMemory[address]
      };  // load half-word

      3'b010:  // load word
      rData = {
        ramMemory[address+3], ramMemory[address+2], ramMemory[address+1], ramMemory[address]
      };
      3'b100: rData = {24'b0, ramMemory[address]};  // load byte unsigned
      3'b101: rData = {16'b0, ramMemory[address+1], ramMemory[address]};  // load half-word unsigend
      default: begin
      end
    endcase
  end

endmodule
