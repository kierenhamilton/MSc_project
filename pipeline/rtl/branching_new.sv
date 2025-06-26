
`include "../include/core_types_pkg.sv"
`include "../include/coreUtils.sv"

import coreUtils::*;
import core_types_pkg::*;

module branching_new (

    output branching_out_t branching_out,

    input Clock,
    input nReset,
    input isLoad,
    input branch_signals_t f3DEC,
    input branch_type_t branchType,
    input [31:0] PCIF,
    input [31:0] PCDEC,
    input [31:0] imm,
    input [31:0] immDEC,
    input [31:0] aluOut,
    input zeroFlag,
    input negFlag,
    input neguFlag

);

  timeunit 1ns; timeprecision 100ps;

  logic predictionReg;
  logic prediction;
  logic branchConfirmed;
  logic correctPrediction;
  branch_type_t branchTypeEXE;
  logic flush_internal;

  always_ff @(posedge Clock, negedge nReset)
    if (!nReset) begin
      branchTypeEXE <= NON_TYPE;
      predictionReg <= 0;
    end else begin

      branchTypeEXE <= branchType;

      predictionReg <= prediction;

    end

  assign flush_internal = branching_out.flush;

  always_comb begin

    branching_out.flush = 0;
    branching_out.hold = 0;
    branching_out.PCnext = 0;
    branching_out.PCcurrent = 0;
    branching_out.branch = 0;
    branching_out.bypass = 0;

    branchConfirmed = 0;
    correctPrediction = 0;

    prediction = predictionReg;



    unique case (branchTypeEXE)
      NON_TYPE: begin
      end
      JAL_TYPE: begin
      end
      JALR_TYPE: begin
        branching_out.flush  = 1;
        branching_out.bypass = 1;
        branching_out.PCnext = aluOut;
      end
      CONDITIONAL_TYPE: begin
        case (f3DEC)
          BEQ: if (zeroFlag) branchConfirmed = 1;
          BNE: if (!zeroFlag) branchConfirmed = 1;
          BLT: if (negFlag) branchConfirmed = 1;
          BGE: if (!negFlag) branchConfirmed = 1;
          BLTU: if (neguFlag) branchConfirmed = 1;
          BGEU: if (!neguFlag) branchConfirmed = 1;
          default: branchConfirmed = 0;
        endcase

        unique case ({
          prediction, branchConfirmed
        })
          00: begin  // predicted flase, actually false
            correctPrediction = 1;
          end
          01: begin  // predicted flase, actually true
            branching_out.flush = 1;
            branching_out.branch = 1;
            branching_out.PCnext = immDEC;
            branching_out.PCcurrent = PCDEC;
          end
          10: begin  // predicted true, actually false
            branching_out.flush = 1;
            branching_out.branch = 1;
            branching_out.PCnext = 4;
            branching_out.PCcurrent = PCDEC;
          end
          11: begin  // predicted true, actually true
            correctPrediction = 1;
          end
        endcase

        if (correctPrediction) prediction = 1;
        else prediction = 0;
      end
    endcase


    if (!flush_internal) begin : decode_stage

      branching_out.flush = 0;
      branching_out.hold = 0;
      branching_out.PCnext = 0;
      branching_out.PCcurrent = 0;
      branching_out.branch = 0;
      branching_out.bypass = 0;

      unique case (branchType)
        NON_TYPE: if (isLoad) branching_out.hold = 1;
        JAL_TYPE: begin
          branching_out.branch = 1;
          branching_out.hold = 1;
          branching_out.PCnext = imm;
          branching_out.PCcurrent = PCIF;
        end
        JALR_TYPE: begin
          branching_out.hold = 1;
        end
        CONDITIONAL_TYPE: begin
          if (prediction) // we are predicting that the branch is going to happen
          begin
            branching_out.branch = 1;
            branching_out.PCnext = imm;
            branching_out.hold = 1;
            branching_out.PCcurrent = PCIF;
          end
        end
      endcase
    end : decode_stage
  end

endmodule

