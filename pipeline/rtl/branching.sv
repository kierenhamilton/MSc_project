
`include "./coreUtils.sv"
import coreUtils::*;

module  branching(

    output logic flush,
    output logic hold,
    output logic [31:0] PCnext,
    output logic [31:0] PCcurrent,
    output logic branch,
    output logic bypass,

    input Clock,
    input nReset,
    input isLoad,
    input branch_signals_t f3EXE,
    input branch_type_t branchType,
    input [31:0] PCIF,
    input [31:0] PCEXE,
    input [31:0] imm,
    input [31:0] immEXE,
    input [31:0] aluOut,
    input zeroFlag,
    input negFlag,
    input neguFlag

);

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

      branchTypeEXE <= branchType;
      branchingEXE  <= (branchType != NON_TYPE);

      // Execute stage

      if (branchingEXE && branchTypeEXE == CONDITIONAL_TYPE && correctPrediction == 0)
        prediction <= !prediction;

    end
  end


  always_comb begin
    // setting defaults

    // output signals
    flush = 0;
    hold = 0;
    bypass = 0;
    branch = 0;
    PCnext = 0;
    PCcurrent = 0;

    // internal signals
    branchConfirmed = 0;
    correctPrediction = 0;

    if (branchingEXE) begin : execute_stage
      case (branchTypeEXE)
        JAL_TYPE: begin
          // default values
        end
        JALR_TYPE: begin
          flush  = 1;
          bypass = 1;
          PCnext = aluOut;
        end
        CONDITIONAL_TYPE: begin

          case (f3EXE)
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
            flush = 1;
            branch = 1;
            PCnext = immEXE;
            PCcurrent = PCEXE;
          end

        end

        default: begin
          // default values
        end
      endcase
    end : execute_stage
    else begin : decode_stage
      unique case (branchType)
        NON_TYPE: begin
          if (isLoad) hold = 1;
        end
        JAL_TYPE: begin
          branch = 1;
          PCnext = imm;
          PCcurrent = PCIF;
        end
        JALR_TYPE: begin
          // default values
        end
        CONDITIONAL_TYPE: begin
          if (prediction) begin
            branch = 1;
            PCnext = imm;
            PCcurrent = PCIF;
          end else begin
            // default values
          end
        end
      endcase
    end : decode_stage
  end

endmodule
