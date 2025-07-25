#set text(font: "calibri")
#set text(size: 12pt)
#set page(numbering: "1")
#set heading(numbering: "1.1")
#text("Lab 3: ", size: 17pt, weight: "bold")
#text("Pipelined RISC-V core", size: 15pt)
#line(length: 100%)

= Pipelined architecture overview

Unlike the single cycle core, where the instruction is read, processed, calculated, and stored within
the same clock cycle, pipelined cores split this up int multiple sections. This has the
benefits of reducing the critical path#footnote[The critical path is the longest combinational chain of logic
and it bottlenecks clock speed.], allowing the processor to operate at a faster clock speed.
In addition, the processor uses fully sequential memory, allowing compatibility with
more efficient memory units.

Pipelines come with the drawback of more complexity such as pipeline hazards, branch prediction,
forwarding, and synchronization. _Figure 2_ details an implementation of a 5 stage pipelined RISC-V core.
The stages are Fetch instruction, Decode, Execute, Memory, and Write back. Instructions flow through the core
like an assembly line, and each stage has its specific function _Table 1_.

#align(center)[
  #table(
    columns: 2,
    align: left,
    [*Stage*],                [*Function*],
    [Instruction Fetch (IF)], [Reads from the Program Memory and returns the instruction as well as current program counter value.],
    [Decode (DEC)],           [Takes in instruction, returns control signals as well as immediate for use in branching and further stages.],
    [Execute (EXE)],          [Data is forwarded if necessary, and the result is calculated in the ALU.],
    [Memory (MEM)],           [Responsible for writing and reading from the RAM.],
    [Write back (WB)],        [Writes the result back to register memory.],
  )
]

#figure(image("./include/forwarding_diagram.svg", width: 60%), caption: "Forwarding illustration")
There are cases where an instruction requires data that is written into the
register memory by the previous instruction. However, an instruction can reach
the execute stage before it has access to this data in a 5 stage pipeline. In
order to avoid stalling, forwarding paths should be included to get this data
while the instruction is in the execute, write, or write back phase.

_Figure 1_ shows an exaple with four addi instructions. The latter 3 all reference x1,
has not yet been written to in their decode phase. Forwarding check, during the execute phase, whether
one of its source registers is to be written to by data in EXE, MEM, and WB registers (in that order). It then
extracts this for use as its true source, instead outdated data inside regMem.
#pagebreak()
#set page(flipped: true)

== RISC-V Data Path
#figure(image("./include/pipelined.svg"), caption: "Pipelined RISC-V datapath")
#pagebreak()
#set page(flipped: false)

== Branching and branch prediction

Another key area of complexity in pipelined processors is how branching is
handled.

The outcome of conditional branch instructions (BGE, BLT, etc.) will not be
knows until the execute stage, leaving cycles where instructions can be loaded
uncertain.

The most simple solution is to stall (Load null instructions) until the execution phase, however
this leaves empty cycles. We can do better.

Branch prediction uses an algorithm to determine whether we use these cycles
predicting a failure or a success from the conditional branch. Instructions can
then be processed until known in the execute phase.

If they are successes, then there is nothing to do. If they fail, then the
loaded instructions need to be flushed and the correct instructions loaded in.

= Exercises
This labs aims to take you through the implementation of forwarding and branching in RISC-V cores.

*Learning objectives:*
- Understanding of the hazards of a 5-stage pipeline.
- Understanding of how data is forwarded in a 5 stage-pipeline.
- Understanding of why branch prediction is used.
- Implementation of forwarding.
- Implementation of branch prediction.
- Understanding of some of the branch prediction methods used.

== Exercise 1: Forwarding module
#align(center)[
  #box(stroke: 1pt, inset: 4pt, width: 100%)[
    #underline([Forwarding Specification])
    #align(center)[
      #box(stroke: black, radius: 10pt, inset: 5pt)[
        #underline[#align(center)[Forwarding header]]
        ```systemverilog
        module forwarding(
        output logic [31:0] rs1F, rs2F,
        input [31:0] rs1, rs2,
        input [4:0] addr1, addr2,
        input [4:0] rd_EXE, rd_MEM, rd_WB,
        input [31:0] data_EXE, data_MEM, data_WB,
        input Wreg_EXE, Wreg_MEM, Wreg_WB
        );
        timeunit 1ns; timeprecision 100ps;
        // Your code here
        endmodule
        ```
      ]
    ]
    #align(left)[
      Addr1 and Addr2 are the source addresses for the current instruction. 
      rs1 and rs2 are the data read from regMem. Forwarding should occur if and only if:
      1. The source address equals destination addresses in rd_EXE, rd_MEM, rd_WB *and*
      2. The corresponding Wreg is 1 *and*
      3. The destination address is not zero.

      *Important notes*
      - For store word, the correct forwarding value will be inside Wdata_WB.
      - Check EXE, MEM, then WB are checked in that order to ensure most recent value is forwarded. 
      - If a match is not found, use values from rs1 and rs2 (no forwarding).
      - The forwarding lines for rs1 and rs2 should be done separately.
    ]
  ]
]

Complete the module found in ``` lab3/work/forwarding.sv```.
The forwarding module should be compatible with the following specification. 

#pagebreak()

== Simple branch prediction
The simplest form of prediction is to always predict a fail, and load instructions
assuming the condition will be false, achieving a 50% success rate.

Other methods exist, though this exercise will be graded based on the success rate of the
implementation.
  #box(stroke: 1pt, inset: 4pt, width: 100%)[

  #align(center)[
    #underline([Branching Specification])
    #table(
      columns: 2,
      stroke: none,
      align: left,
      [
      #align(center)[
        #box(stroke: black, radius: 10pt, inset: 5pt)[
          #underline[#align(center)[Branching header]]
          ```systemverilog
          module forwarding(
          output logic PC,
          output logic branch,
          output logic hold,
          output logic [31:0] PCnext,
          input [2:0] func3,
          input [31:0] PC_IF,
          input [31:0] PC_DEC,
          input is_load,
          input [2:0] branch_type,
          input [31:0] imm,
          input [31:0] aluOut,
          input zeroFlag,
          input negFlag,
          input neguFlag
          );
          timeunit 1ns; timeprecision 100ps;
          // Your code here
          endmodule
          ```
        ]
      ]
    ], [
      #table(
        columns: 2,
        [*branch_type*], [*Description*],
        [00],            [NONE],
        [01],            [JAL],
        [10],            [JALR],
        [11],            [CONDITIONAL],
      )
      #table(
        columns: 2,
        [*func3*], [*Conditional type*],
        [000],     [BGE],
        [001],     [BNE],
        [100],     [BLT],
        [101],     [BGE],
        [110],     [BLTU],
        [111],     [BGEU],
      )
    ],
    )
  ]
  - NONE instructions should update PC = PC+4 as well as set the control signals.
    In the event of a Load, denoted by a high is_load signal, A stall of 1 is required to ensure the next instruction can
    access data loaded from the memory.
  - JAL instructions are guaranteed to branch. The relative offset is given in the instruction, in the
    form of immediate.
  - JALR is guaranteed to branch. The destination is calculated in the execute stage, and
    can be accessed through alu_out.
  - CONDITIONAL instructions are not guaranteed. It is the main challenge of this exercise to
    handle this case.
  *Important notes*
  - Flushing or stalling will produce addi x0 x0 0 instructions,
    passing through the CPU with no effect.
  - The branch predictor works over the decode and execute phase, and is a pipelined process itself.
]

#figure(
  image("./include/branching_diagram.svg", width: 80%),
  caption: "Branching module datapath"
)

The branch module itself is pipelined since it acts in the decode and the execute stage.
To control the branching, it uses hold, flush, and PCnext.

*Step 1*
``` lab3/work/branching.sv``` has a case statement based on the branch_type.




