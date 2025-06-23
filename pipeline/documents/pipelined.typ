#set page(margin: (inside: 1.5cm, outside: 1.5cm, y: 1cm))
#set text(size: 11pt, font: "Times New Roman")

#set par(spacing: 10pt)
#align(center)[#text([*Design Document*], size: 20pt)]

*32-bit RISCV pipelined* #h(1fr)
*Author:* Kieren Hamilton #h(1fr)
*Supervisor:* Ivan Ling
#v(0pt, weak: true)
#line(length: 100%, start: (0% + 0pt, 0% + 4pt))

= #h(1fr)Supported Instructions
#v(0pt, weak: true)
#line(length: 100%, start: (0% + 0pt, 0% + 7pt))
#set text(9pt)
#table(
  columns: 4,
  [\#], [*INST.*], [*NAME*],                     [*FORMAT* ``` 32-bit instructions```],
  [1],  [LUI],     [Load upper immediate],       [``` imm[31:12], rd[11:7], 01101, 11```],
  [2],  [AUIPC],   [Add upper immediate to pc],  [``` imm[31:12], rd[11:7], 00101, 11```],
  [3],  [ADDI],    [Add immediate],              [``` imm[31:20], rs1[19:15], 000, rd[11:7], 00100, 11```],
  [4],  [SLTI],    [Set less than immediate],    [``` imm[31:20], rs1[19:15], 010, rd[11:7], 00100, 11```],
  [5],  [SLTIU],   [SLTI unsigned],              [``` imm[31:20], rs1[19:15], 011, rd[11:7], 00100, 11```],
  [6],  [XORI],    [XOR immediate],              [``` imm[31:20], rs1[19:15], 100, rd[11:7], 00100, 11```],
  [7],  [ORI],     [OR immediate],               [``` imm[31:20], rs1[19:15], 110, rd[11:7], 00100, 11```],
  [8],  [ANDI],    [AND immediate],              [``` imm[31:20], rs1[19:15], 111, rd[11:7], 00100, 11 ```],
  [9],  [SLLI],    [Logical left shift imm],     [``` 00000, 0X[26:25], shamt[24:20], rs1[19:15], 001, rd[11:7], 00100, 11```],
  [10], [SRLI],    [Logical right shift imm],    [``` 00000, 0X[26:25], shamt[24:20], rs1[19:15], 101, rd[11:7], 00100, 11```],
  [11], [SRAI],    [Arithmetic right shift imm], [``` 01000, 0X[26:25], shamt[24:20], rs1[19:15], 101, rd[11:7], 00100, 11```],
  [12], [ADD],     [Add],                        [``` 00000, 00, rs2[24:20], rs1[19:15], 000, rd[11:7], 01100, 11```],
  [13], [SUB],     [Subtract],                   [``` 01000, 00, rs2[24:20], rs1[19:15], 000, rd[11:7], 01100, 11```],
  [14], [SLL],     [Logical left shift],         [``` 00000, 00, rs2[24:20], rs1[19:15], 001, rd[11:7], 01100, 11```],
  [15], [SLT],     [Set less than],              [``` 00000, 00, rs2[24:20], rs1[19:15], 010, rd[11:7], 01100, 11```],
  [16], [SLTU],    [Set less than unsigned],     [``` 00000, 00, rs2[24:20], rs1[19:15], 011, rd[11:7], 01100, 11```],
  [17], [XOR],     [XOR],                        [``` 00000, 00, rs2[24:20], rs1[19:15], 100, rd[11:7], 01100, 11```],
  [18], [SRL],     [Logical right shift],        [``` 00000, 00, rs2[24:20], rs1[19:15], 101, rd[11:7], 01100, 11```],
  [19], [SRA],     [Arithmetic right shift],     [``` 01000, 00, rs2[24:20], rs1[19:15], 101, rd[11:7], 01100, 11```],
  [20], [OR],      [OR],                         [``` 00000, 00, rs2[24:20], rs1[19:15], 110, rd[11:7], 01100, 11```],
  [21], [AND],     [AND],                        [``` 00000, 00, rs2[24:20], rs1[19:15], 111, rd[11:7], 01100, 11```],
  [22], [LB],      [Load byte],                  [``` offset[31:20], rs1[19:15], 000, rd[11:7], 00000, 11```],
  [23], [LH],      [Load half-word],             [``` offset[31:20], rs1[19:15], 001, rd[11:7], 00000, 11```],
  [24], [LW],      [Load word],                  [``` offset[31:20], rs1[19:15], 010, rd[11:7], 00000, 11```],
  [25], [LBU],     [Load byte unsigned],         [``` offset[31:20], rs1[19:15], 100, rd[11:7], 00000, 11```],
  [26], [LHU],     [Load half-word unsigned],    [``` offset[31:20], rs1[19:15], 101, rd[11:7], 00000, 11```],
  [27], [SB],      [Store byte],                 [``` offset[31:20], rs1[19:15], 000, rd[11:7], 01000, 11```],
  [28], [SH],      [Store half-word],            [``` offset[31:20], rs1[19:15], 001, rd[11:7], 01000, 11```],
  [29], [SW],      [Store word],                 [``` offset[31:20], rs1[19:15], 010, rd[11:7], 01000, 11```],
  [30], [JAL],     [Jump and link],              [``` offset[31:20], [19:12], rd[11:7], 11011, 11```],
  [31], [JALR],    [Jump and link return],       [``` offset[31:20], rs1[19:15], 000, rd[11:7], 11001, 11```],
  [32], [BEQ],     [Branch if equal],            [``` offset[31:25], rs2[24:20], rs1[19:15], 000, offset[11:7], 11000, 11```],
  [33], [BNE],     [Branch if not equal],        [``` offset[31:25], rs2[24:20], rs1[19:15], 001, offset[11:7], 11000, 11```],
  [34], [BLT],     [Branch if less than],        [``` offset[31:25], rs2[24:20], rs1[19:15], 100, offset[11:7], 11000, 11```],
  [35], [BGE],     [Branch if greater than],     [``` offset[31:25], rs2[24:20], rs1[19:15], 101, offset[11:7], 11000, 11```],
  [36], [BLTU],    [BLT unsigned],               [``` offset[31:25], rs2[24:20], rs1[19:15], 110, offset[11:7], 11000, 11```],
  [37], [BGEU],    [BGE unsigned],               [``` offset[31:25], rs2[24:20], rs1[19:15], 111, offset[11:7], 11000, 11```],
)
#set text(11pt)
#align(center)[Table 1: RV32I instruction breakdown]
#pagebreak()

= #h(1fr) High-level Diagram
#v(0pt, weak: true)
#line(length: 100%, start: (0% + 0pt, 0% + 7pt))
#figure(image("./Diagrams/pipelined.svg", width: 100%), caption: "Datapath for RiscV pipelined processor")

== #h(1fr)ALU
#v(0pt, weak: true)
#line(length: 100%, start: (0% + 0pt, 0% + 5pt))

#align(center)[*ALU CODES*]
#table(
  columns: 5,
  [*aluCodes*], [*Description*],          [], [*branType*], [*Description*],
  [0000],       [ADD],                    [], [00],         [No branching],
  [1000],       [SUBTRACT],               [], [01],         [Jump and Link],
  [0001],       [LOGICAL LEFT SHIFT],     [], [10],         [Jump and Link Register],
  [0010],       [SET LESS THAN],          [], [11],         [Conditional jump],
  [0011],       [SET LESS THAN UNSIGNED], [], [],           [],
  [0100],       [XOR],                    [], [],           [],
  [0110],       [OR],                     [], [],           [],
  [0111],       [AND],                    [], [],           [],
  [0101],       [LOGICAL RIGHT SHIFT],    [], [],           [],
  [1101],       [ARITHMETIC RIGHT SHIFT], [], [],           [],
  [1111],       [NOP],                    [], [],           [],
)

== #h(1fr)DECODER
#v(0pt, weak: true)
#line(length: 100%, start: (0% + 0pt, 0% + 5pt))

== #h(1fr)PROGRAM COUNTER
#v(0pt, weak: true)
#line(length: 100%, start: (0% + 0pt, 0% + 5pt))

== #h(1fr)REGISTER MEMORY
#v(0pt, weak: true)
#line(length: 100%, start: (0% + 0pt, 0% + 5pt))

== #h(1fr)MAIN MEMORY
#v(0pt, weak: true)
#line(length: 100%, start: (0% + 0pt, 0% + 5pt))

== #h(1fr)MULTIPLEXERS
#v(0pt, weak: true)
#line(length: 100%, start: (0% + 0pt, 0% + 5pt))

#pagebreak()

== #h(1fr)Instruction implementation
#v(0pt, weak: true)
#line(length: 100%, start: (0% + 0pt, 0% + 5pt))

#figure(image("./Diagrams/rv32i_format.svg", width: 80%), caption: "RV32I instruction formats")

#set text(size: 8pt)
#table(
  columns: 12,
  [*Inst.*], [*Format*], [*aluCode*], [*branType*], [*Wmem*], [*Wreg*], [*isLoad*], [*aluIn1*], [*aluIn2*], [*aluPC*], [*aluImm*], [*Rmem*],
  [LUI],     [U],        [NOP],       [NON],        [0],      [1],      [0],        [0],        [0],        [0],       [0],        [0],
  [AUIPC],   [U],        [NOP],       [NON],        [0],      [1],      [0],        [1],        [1],        [1],       [1],        [0],
  [ADDI],    [I],        [ADD],       [NON],        [0],      [1],      [0],        [0],        [1],        [1],       [1],        [0],
  [SLTI],    [I],        [LT],        [NON],        [0],      [1],      [0],        [0],        [1],        [1],       [1],        [0],
  [SLTIU],   [I],        [LTU],       [NON],        [0],      [1],      [0],        [0],        [1],        [1],       [1],        [0],
  [XORI],    [I],        [XOR],       [NON],        [0],      [1],      [0],        [0],        [1],        [1],       [1],        [0],
  [ORI],     [I],        [OR],        [NON],        [0],      [1],      [0],        [0],        [1],        [1],       [1],        [0],
  [ANDI],    [I],        [AND],       [NON],        [0],      [1],      [0],        [0],        [1],        [1],       [1],        [0],
  [SLLI],    [I],        [SL],        [NON],        [0],      [1],      [0],        [0],        [1],        [1],       [1],        [0],
  [SRLI],    [I],        [SR],        [NON],        [0],      [1],      [0],        [0],        [1],        [1],       [1],        [0],
  [SRAI],    [I],        [SRA],       [NON],        [0],      [1],      [0],        [0],        [1],        [1],       [1],        [0],
  [ADD],     [R],        [ADD],       [NON],        [0],      [1],      [0],        [0],        [0],        [1],       [1],        [0],
  [SUB],     [R],        [SUB],       [NON],        [0],      [1],      [0],        [0],        [0],        [1],       [1],        [0],
  [SLL],     [R],        [SL],        [NON],        [0],      [1],      [0],        [0],        [0],        [1],       [1],        [0],
  [SLT],     [R],        [LT],        [NON],        [0],      [1],      [0],        [0],        [0],        [1],       [1],        [0],
  [SLTU],    [R],        [LTU],       [NON],        [0],      [1],      [0],        [0],        [0],        [1],       [1],        [0],
  [XOR],     [R],        [XOR],       [NON],        [0],      [1],      [0],        [0],        [0],        [1],       [1],        [0],
  [SRL],     [R],        [SR],        [NON],        [0],      [1],      [0],        [0],        [0],        [1],       [1],        [0],
  [SRA],     [R],        [SRA],       [NON],        [0],      [1],      [0],        [0],        [0],        [1],       [1],        [0],
  [OR],      [R],        [OR],        [NON],        [0],      [1],      [0],        [0],        [0],        [1],       [1],        [0],
  [AND],     [R],        [AND],       [NON],        [0],      [1],      [0],        [0],        [0],        [1],       [1],        [0],
  [LB],      [I],        [ADD],       [NON],        [0],      [1],      [1],        [0],        [1],        [1],       [1],        [1],
  [LH],      [I],        [ADD],       [NON],        [0],      [1],      [1],        [0],        [1],        [1],       [1],        [1],
  [LW],      [I],        [ADD],       [NON],        [0],      [1],      [1],        [0],        [1],        [1],       [1],        [1],
  [LBU],     [I],        [ADD],       [NON],        [0],      [1],      [1],        [0],        [1],        [1],       [1],        [1],
  [LHU],     [I],        [ADD],       [NON],        [0],      [1],      [1],        [0],        [1],        [1],       [1],        [1],
  [SB],      [S],        [ADD],       [NON],        [1],      [0],      [0],        [0],        [1],        [1],       [1],        [0],
  [SH],      [S],        [ADD],       [NON],        [1],      [0],      [0],        [0],        [1],        [1],       [1],        [0],
  [SW],      [S],        [ADD],       [NON],        [1],      [0],      [0],        [0],        [1],        [1],       [1],        [0],
  [JAL],     [J],        [ADD],       [JAL],        [0],      [1],      [0],        [0],        [0],        [0],       [1],        [0],
  [JALR],    [I],        [ADD],       [JALR],       [0],      [1],      [0],        [0],        [0],        [0],       [1],        [0],
  [BEQ],     [B],        [SUB],       [COND],       [0],      [0],      [0],        [0],        [0],        [0],       [0],        [0],
  [BNE],     [B],        [SUB],       [COND],       [0],      [0],      [0],        [0],        [0],        [0],       [0],        [0],
  [BLT],     [B],        [SUB],       [COND],       [0],      [0],      [0],        [0],        [0],        [0],       [0],        [0],
  [BGE],     [B],        [SUB],       [COND],       [0],      [0],      [0],        [0],        [0],        [0],       [0],        [0],
  [BLTU],    [B],        [SUB],       [COND],       [0],      [0],      [0],        [0],        [0],        [0],       [0],        [0],
  [BGEU],    [B],        [SUB],       [COND],       [0],      [0],      [0],        [0],        [0],        [0],       [0],        [0],
)
