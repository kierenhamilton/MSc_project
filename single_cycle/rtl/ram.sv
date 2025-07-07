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
  logic [7:0] ramMemory[0:1023];

  always_ff @(posedge Clock, negedge nReset) begin // logic for writing to the ram
    if (!nReset) begin
    end else if (writeRam)
      case (ctrl)
        3'b000: ramMemory[address] <= wData[7:0];
        3'b001: {ramMemory[address], ramMemory[address+1]} <= wData[15:0];
        3'b010:
        {ramMemory[address], ramMemory[address+1], ramMemory[address+2], ramMemory[address+3]}
        <= wData;
        default: begin
        end
      endcase
  end

  always_comb begin // logic for reading from the ram
    rData = 0;
    case (ctrl)
      3'b000: rData = {{24{ramMemory[address][7]}}, ramMemory[address]};  // load byte
      3'b001:
      rData = {
        {16{ramMemory[address][7]}}, ramMemory[address], ramMemory[address+1]
      };  // load half-word

      3'b010:  // load word
      rData = {
        ramMemory[address], ramMemory[address+1], ramMemory[address+2], ramMemory[address+3]
      };
      3'b100: rData = {24'b0, ramMemory[address]};  // load byte unsigned
      3'b101: rData = {16'b0, ramMemory[address], ramMemory[address+1]};  // load half-word unsigend
      default: begin
      end
    endcase
  end

endmodule
