module core_stim;

timeunit 1ns; timeprecision 100ps;

logic Clock;
logic nReset;

core core_dut (
  .Clock(Clock),
  .nReset(nReset)
);

always begin Clock = 1; #50 Clock = 0; #50 Clock = 1; end

initial begin nReset = 1; #10 nReset = 0; #10 nReset = 1; end

initial begin
  #100000 $finish;
end

endmodule
