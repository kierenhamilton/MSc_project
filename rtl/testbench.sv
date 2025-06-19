module testbench;

  timeunit 1ns; timeprecision 100ps;

  logic Clock, nReset;

  netlist dut (
      .Clock (Clock),
      .nReset(nReset)
  );

  always begin
    Clock = 1;
    #100 Clock = 0;
    #100 Clock = 1;
  end

  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, testbench);
  end

  initial begin
    nReset = 1;
    #10 nReset = 0;
    #10 nReset = 1;
  end

  initial begin
    #1000000 $finish;
  end


endmodule
