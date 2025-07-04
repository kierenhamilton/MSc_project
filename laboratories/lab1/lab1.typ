#set text(font: "calibri")
#set text(size: 12pt)
#set heading(numbering: "I.")
#text("Lab 1: ", size: 17pt, weight: "bold")
#text("Introduction to the RISC-V RV32I Instruction set Architecture (ISA)", size: 15pt)
#line(length: 100%)

= Introduction
The RV32I#footnote[ The name of the ISA (RV32I) is a code which means: RV
  (RISC-V), 32 (32-bit CPU), I (Integer). There exist multiple for different
  functionalities e.g. RV32M (multiplication), RV32A (atomics - bit
  manipulation). All can be implemented in the same processor, however only
  RV32I is in the scope of this labs. ] ISA is an open-source specification for
the behavior of a processor core. It describes which binary instructions it can
read and how it should behave. Any architecture and implementation that adheres
to the specification is valid and can call itself RISC-V.

#figure(image("./include/rv32i_format.svg", width: 90%), caption: "RV32I Format")

Figure 1 details the format of the instructions available in the RV32I instruction set.
They are split into categories R(register), I(immediate), S(store), B(branch), U(upper immediate), and J(jump). This lab aims to
familiarize you with the 37 basic RV32I instructions #link("https://msyksphinz-self.github.io/riscv-isadoc/html/rvi.html", text("[RV32I]", blue)).

Core to the RISC-V 32-bit architecture are 32 registers of 32 bits, which can be quickly accessed by the core to mutate,
move, store, and load
data to and from RAM. These registers have specific names and uses for modern compilers _Table 1_, although most are functionally
identical.
#set text(size: 11pt)
#align(center)[

  #table(
    stroke: none,
    gutter: 1pt,
    columns: 4,
    align: left,
    [
      #table(
        columns: 3,
        [*Reg.*], [*Name*], [*Description*],
        [x0],     [zero],   [*Description*],
        [x1],     [ra],     [return address],
        [x2],     [sp],     [Stack pointer],
        [x3],     [gp],     [Global Pointer],
        [x4],     [tp],     [Thread pointer],
        [x5],     [t0],     [Temporaries],
        [x6],     [t1],     [#align(center)[\~]],
        [x7],     [t2],     [#align(center)[\~]],
        [x8],     [s0],     [Saved registers],
        [x9],     [s1],     [#align(center)[\~]],
        [x10],    [a0],     [Return Value 1],
      )
    ], [
      #table(
        columns: 3,
        [*Reg.*], [*N.*], [*Description*],
        [x11],    [a1],   [Return Value 2],
        [x12],    [a2],   [Function args.],
        [x13],    [a3],   [#align(center)[\~]],
        [x14],    [a4],   [#align(center)[\~]],
        [x15],    [a5],   [#align(center)[\~]],
        [x16],    [a6],   [#align(center)[\~]],
        [x17],    [a7],   [#align(center)[\~]],
        [x18],    [s2],   [Saved registers],
        [x19],    [s3],   [#align(center)[\~]],
        [x20],    [s4],   [#align(center)[\~]],
        [x21],    [s5],   [#align(center)[\~]],
      )
    ], [
      #table(
        columns: 3,
        [*Reg.*], [*N.*], [*Description*],
        [x22],    [s6],   [#align(center)[\~]],
        [x23],    [s7],   [#align(center)[\~]],
        [x24],    [s8],   [#align(center)[\~]],
        [x25],    [s9],   [#align(center)[\~]],
        [x26],    [s10],  [#align(center)[\~]],
        [x27],    [s11],  [#align(center)[\~]],
        [x28],    [t3],   [Temporaries],
        [x29],    [t4],   [#align(center)[\~]],
        [x30],    [t5],   [#align(center)[\~]],
        [x31],    [t6],   [#align(center)[\~]],
      )
    ]
  )
]
#set text(size: 12pt)
#align(center)[Table 1: 32 core registers of a RISC-V processor]

==
Each 32-bit binary instruction has a corollary in assembly language#footnote[A user friendly shorthand for pure binary instructions,
designed to make the process of hand rolling binaries easier.] in addition to some user
functionality for jumping.

#table(
  columns: 3,
  [*Assembly*], [*Format*], [*Description*],
  [addi],       [],         [],
  [],           [],         [],
)
