module main;


  logic [7:0] memory[50:0];

  initial begin
    $readmemh("program.hex", memory);
  end


endmodule
