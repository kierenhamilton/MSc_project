module progCount (

    output logic [31:0] PC,

    input Clock,
    input nReset,
    input hold,
    input branch,
    input bypass,
    input [31:0] PCbranch,
    input [31:0] PCcurrent

);

  timeunit 1ns; timeprecision 100ps;

  always_ff @(posedge Clock, negedge nReset)

    if (!nReset) PC <= 0;

    else begin

      if (bypass) PC <= PCbranch;

      else if (branch) PC <= PCcurrent + PCbranch;

      else if (hold) PC <= PC;

      else PC <= PC + 4;

    end

endmodule

