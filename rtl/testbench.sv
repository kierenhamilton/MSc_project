module testbench;

  timeunit 1ns; timeprecision 100ps;

  logic Clock, nReset;

  always begin
    Clock = 1;
    #100 Clock = 0;
    #100 Clock = 1;
  end

  initial begin
    nReset = 1;
    #10 nReset = 0;
    #10 nReset = 1;
  end

  initial begin
    #10000 $stop;
  end

endmodule
