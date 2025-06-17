module main;

  logic [31:0] a;
  logic [ 7:0] b;


  initial begin

    b = '1;


    a = $signed(b);

    $display(b);
  end

endmodule
