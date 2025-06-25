
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

  logic prediction;
  logic branchConfirmed;
  logic correctPrediction;
  branch_type_t branchTypeEXE;
  logic branchingEXE;

  always_ff @(posedge Clock, negedge nReset) begin : prediction_logic
    if (!nReset) begin
      prediction <= 0;
      branchTypeEXE <= NON_TYPE;
      branchingEXE <= 0;
    end else begin

      // pipelining

      if (!branchConfirmed) branchTypeEXE <= branchType;
      else branchTypeEXE <= NON_TYPE;
      branchingEXE <= (branchType != NON_TYPE);

      // Execute stage

      if (branchingEXE && branchTypeEXE == CONDITIONAL_TYPE && correctPrediction == 0)
        prediction <= !prediction;

    end
  end

  always_comb begin
    // setting defaults

    // output signals
    branching_out.flush = 0;
    branching_out.hold = 0;
    branching_out.bypass = 0;
    branching_out.branch = 0;
    branching_out.PCnext = 0;
    branching_out.PCcurrent = 0;

    // internal signals
    branchConfirmed = 0;
    correctPrediction = 0;

    if (branchingEXE) begin : execute_stage

      case (branchTypeEXE)
        JAL_TYPE: branchConfirmed = 1;

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

          if (branchConfirmed == prediction) correctPrediction = 1;

          else begin
            correctPrediction = 0;
            branching_out.flush = 1;
            branching_out.branch = 1;
            branching_out.PCnext = immDEC;
            branching_out.PCcurrent = PCDEC;
          end
        end

        default: begin
          // default values
        end

      endcase
    end : execute_stage


    // decode stage

    if (!branchConfirmed) begin : decode_stage

      unique case (branchType)

        NON_TYPE:  if (isLoad) branching_out.hold = 1;
        JAL_TYPE: begin
          branching_out.branch = 1;
          branching_out.hold = 1;
          branching_out.PCnext = imm;
          branching_out.PCcurrent = PCIF;
        end
        JALR_TYPE: branching_out.hold = 1;

        CONDITIONAL_TYPE: begin

          if (prediction) begin
            branching_out.branch = 1;
            branching_out.PCnext = imm;
            branching_out.PCcurrent = PCIF;
          end else begin
            // default values
          end

        end
      endcase
    end : decode_stage
  end

endmodule

