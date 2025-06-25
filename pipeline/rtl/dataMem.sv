module dataMem (

    output logic [31:0] memOut,

    input Clock,
    input [2:0] f3,
    input [31:0] addr,
    input [31:0] data,
    input Wmem,
    input Rmem

);

  timeunit 1ns; timeprecision 100ps;

  logic [7:0] mem[0:1023];


  always_ff @(posedge Clock) begin : memory_allocation

    if (Rmem)

      case (f3)

        3'b000: memOut <= {{24{mem[addr][7]}}, mem[addr]};  // load byte

        3'b001: memOut <= {{16{mem[addr][7]}}, mem[addr], mem[addr+1]};  // load half

        3'b010: memOut <= {mem[addr], mem[addr+1], mem[addr+2], mem[addr+3]};  // lod word

        3'b100: memOut <= {{24{1'b0}}, mem[addr]};  // load byte unsigned

        3'b101: memOut <= {{16{1'b0}}, mem[addr], mem[addr+1]};  // load half unsigned

        default: memOut <= 0;

      endcase

    else memOut <= 0;

    if (Wmem)

      case (f3)

        3'b000: begin  // store byte
          mem[addr] <= data[7:0];
        end

        3'b001: begin  // store half
          mem[addr]   <= data[15:8];
          mem[addr+1] <= data[7:0];
        end

        3'b010: begin  // store word
          mem[addr]   <= data[31:24];
          mem[addr+1] <= data[23:16];
          mem[addr+2] <= data[15:8];
          mem[addr+3] <= data[7:0];
        end

        default: begin
        end

      endcase

  end : memory_allocation

endmodule
