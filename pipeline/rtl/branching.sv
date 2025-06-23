
`include "./coreUtils.sv"
import coreUtils::*;

module forwarding (

    output logic flush,
    output logic hold,
    output logic [31:0] PCnext,
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
      branchingEXE  <= branchType != NON_TYPE;

      // Execute stage

      if (branchingEXE && branchTypeEXE == CONDITIONAL_TYPE && correctPrediction == 0)
        prediction <= !prediction;

    end
  end


  always_comb begin


    if (branchingEXE) begin : execute_stage

      case (branchTypeEXE)

        JAL_TYPE: begin
          flush  = 0;
          hold   = 0;
          bypass = 0;
          branch = 0;
          PCnext = 0;
        end

        JALR_TYPE: begin
          flush  = 1;
          hold   = 0;
          bypass = 1;
          branch = 0;
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

          if (branchConfirmed == prediction) begin
            correctPrediction = 1;
            flush = 0;
            hold = 0;
            bypass = 0;
            branch = 0;
            PCnext = 0;
          end else begin
            correctPrediction = 0;

            flush = 1;
            hold = 0;
            bypass = 0;
            branch = 1;
            PCnext = immEXE;
          end

        end

        default: begin
          flush  = 0;
          hold   = 0;
          bypass = 0;
          branch = 0;
          PCnext = 0;
        end

      endcase

    end : execute_stage

    else begin : decode_stage

      unique case (branchType)

        NON_TYPE: begin
          hold   = 0;
          flush  = 0;
          branch = 0;
          bypass = 0;
          PCnext = 0;
        end

        JAL_TYPE: begin
          hold   = 0;
          flush  = 0;
          branch = 1;
          bypass = 0;
          PCnext = imm;
        end

        JALR_TYPE: begin
          hold   = 1;
          flush  = 0;
          branch = 0;
          bypass = 0;
          PCnext = 0;
        end

        CONDITIONAL_TYPE: begin

          if (prediction) begin
            hold   = 0;
            flush  = 0;
            branch = 1;
            bypass = 0;
            PCnext = imm;

          end else begin
            hold   = 0;
            flush  = 0;
            branch = 0;
            bypass = 0;
            PCnext = 0;
          end

        end

      endcase

    end : decode_stage
  end  // always_comb
endmodule
