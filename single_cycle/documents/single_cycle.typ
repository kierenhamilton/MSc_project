#set page(margin: (inside: 1.5cm, outside: 1.5cm, y: 1cm))
#set text(size: 11pt, font: "Times New Roman")

#set par(spacing: 10pt)
#align(center)[#text([*Design Document*], size: 20pt)]

*32-bit RISCV single stage* #h(1fr)
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
#figure(image("./Diagrams/8_bit_RV32I_Processor.svg", width: 100%), caption: "Datapath for RV32I single stage 8-bit Processor")

== #h(1fr)ALU
#v(0pt, weak: true)
#line(length: 100%, start: (0% + 0pt, 0% + 5pt))

#align(center)[*ALU CODES*]
#table(
  columns: 3,
  [*Code*], [*Description*],          [*Implementation*],
  [0000],   [ADD],                    [],
  [1000],   [SUBTRACT],               [],
  [0001],   [LOGICAL LEFT SHIFT],     [],
  [0010],   [SET LESS THAN],          [],
  [0011],   [SET LESS THAN UNSIGNED], [],
  [0100],   [XOR],                    [],
  [0110],   [OR],                     [],
  [0111],   [AND],                    [],
  [0101],   [LOGICAL RIGHT SHIFT],    [],
  [1101],   [ARITHMETIC RIGHT SHIFT], [],
  [1111],   [NOP],                    [],
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

#table(
  columns: 14,
  [\#], [*Instruction*], [*WriteRegMem*], [*writeRam*], [*aluCode*], [*Branch*], [*A*], [*B*], [*C*], [*D*], [*E*], [*F*], [*G*], [*H*],
  [1],  [LUI],           [1],             [0],          [NOP],       [0],        [1],   [0],   [0],   [0],   [0],   [1],   [1],   [0],
  [2],  [AUIPC],         [0],             [0],          [NOP],       [0],        [0],   [1],   [0],   [0],   [0],   [1],   [1],   [0],
  [3],  [ADDI],          [1],             [0],          [ADD],       [0],        [1],   [0],   [1],   [0],   [0],   [1],   [1],   [0],
  [4],  [SLTI],          [1],             [0],          [LT],        [0],        [1],   [0],   [1],   [0],   [0],   [1],   [1],   [0],
  [5],  [SLTIU],         [1],             [0],          [LTU],       [0],        [1],   [0],   [1],   [0],   [0],   [1],   [1],   [0],
  [6],  [XORI],          [1],             [0],          [XOR],       [0],        [1],   [0],   [1],   [0],   [0],   [1],   [1],   [0],
  [7],  [ORI],           [1],             [0],          [OR],        [0],        [1],   [0],   [1],   [0],   [0],   [1],   [1],   [0],
  [8],  [ANDI],          [1],             [0],          [AND],       [0],        [1],   [0],   [1],   [0],   [0],   [1],   [1],   [0],
  [9],  [SLLI],          [1],             [0],          [SL],        [0],        [1],   [0],   [1],   [0],   [0],   [1],   [1],   [0],
  [10], [SRLI],          [1],             [0],          [SR],        [0],        [1],   [0],   [1],   [0],   [0],   [1],   [1],   [0],
  [11], [SRAI],          [1],             [0],          [SRA],       [0],        [1],   [0],   [1],   [0],   [0],   [1],   [1],   [0],
  [12], [ADD],           [1],             [0],          [ADD],       [0],        [1],   [0],   [1],   [1],   [0],   [1],   [1],   [0],
  [13], [SUB],           [1],             [0],          [SUB],       [0],        [1],   [0],   [1],   [1],   [0],   [1],   [1],   [0],
  [14], [SLL],           [1],             [0],          [SL],        [0],        [1],   [0],   [1],   [1],   [0],   [1],   [1],   [0],
  [15], [SLT],           [1],             [0],          [LT],        [0],        [1],   [0],   [1],   [1],   [0],   [1],   [1],   [0],
  [16], [SLTU],          [1],             [0],          [LTU],       [0],        [1],   [0],   [1],   [1],   [0],   [1],   [1],   [0],
  [17], [XOR],           [1],             [0],          [XOR],       [0],        [1],   [0],   [1],   [1],   [0],   [1],   [1],   [0],
  [18], [SRL],           [1],             [0],          [SR],        [0],        [1],   [0],   [1],   [1],   [0],   [1],   [1],   [0],
  [19], [SRLA],          [1],             [0],          [SRA],       [0],        [1],   [0],   [1],   [1],   [0],   [1],   [1],   [0],
  [20], [OR],            [1],             [0],          [OR],        [0],        [1],   [0],   [1],   [1],   [0],   [1],   [1],   [0],
  [21], [AND],           [1],             [0],          [AND],       [0],        [1],   [0],   [1],   [1],   [0],   [1],   [1],   [0],
  [22], [LB],            [1],             [0],          [ADD],       [0],        [1],   [0],   [1],   [0],   [1],   [1],   [1],   [0],
  [23], [LH],            [1],             [0],          [ADD],       [0],        [1],   [0],   [1],   [0],   [1],   [1],   [1],   [0],
  [24], [LW],            [1],             [0],          [ADD],       [0],        [1],   [0],   [1],   [0],   [1],   [1],   [1],   [0],
  [25], [LBU],           [1],             [0],          [ADD],       [0],        [1],   [0],   [1],   [0],   [1],   [1],   [1],   [0],
  [26], [LHU],           [1],             [0],          [ADD],       [0],        [1],   [0],   [1],   [0],   [1],   [1],   [1],   [0],
  [27], [SB],            [0],             [1],          [ADD],       [0],        [1],   [0],   [0],   [0],   [0],   [1],   [1],   [0],
  [28], [SH],            [0],             [1],          [ADD],       [0],        [1],   [0],   [0],   [0],   [0],   [1],   [1],   [0],
  [29], [SW],            [0],             [1],          [ADD],       [0],        [1],   [0],   [0],   [0],   [0],   [1],   [1],   [0],
  [30], [JAL],           [1],             [0],          [ADD],       [0],        [0],   [0],   [1],   [0],   [0],   [0],   [0],   [0],
  [31], [JALR],          [1],             [0],          [ADD],       [0],        [0],   [0],   [1],   [0],   [0],   [0],   [1],   [1],
  [32], [BEQ],           [0],             [0],          [SUB],       [1],        [0],   [0],   [0],   [0],   [0],   [0],   [1],   [0],
  [33], [BNE],           [0],             [0],          [SUB],       [1],        [0],   [0],   [0],   [0],   [0],   [0],   [1],   [0],
  [34], [BLT],           [0],             [0],          [SUB],       [1],        [0],   [0],   [0],   [0],   [0],   [0],   [1],   [0],
  [35], [BGE],           [0],             [0],          [SUB],       [1],        [0],   [0],   [0],   [0],   [0],   [0],   [1],   [0],
  [36], [BLTU],          [0],             [0],          [SUB],       [1],        [0],   [0],   [0],   [0],   [0],   [0],   [1],   [0],
  [37], [BGEU],          [0],             [0],          [SUB],       [1],        [0],   [0],   [0],   [0],   [0],   [0],   [1],   [0],
)


#pagebreak()

