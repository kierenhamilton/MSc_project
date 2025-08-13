#let title = [
  *Effects of ZPD scaffolding on learning outcomes and\
  student satisfaction for RISC-V labs*
]
#set par(first-line-indent: 1em, spacing: 0.65em, justify: true)

#set text(size: 13pt)

#align(center, text(17pt)[#title])
#linebreak()

#grid(
  columns: (1fr, 1fr),
  align(center)[
    Kieren Hamilton\
    University of Southampton\
    kh5u24\@soton.ac.uk
  ], align(center)[
    Supervised by Ivan Ling\
    University of Southampton\
    Ivan.Ling\@soton.ac.uk
  ],
)
\
\

#align(center)[
  Examined by Dr Ruomeng Huang\
  University of Southampton\
  rh3g09\@soton.ac.uk

]
\
\
#align(center)[
  #linebreak()
  September 2025

  MSc Microelectronics Systems Design
]

#pagebreak()
#set text(size: 12pt)

#set page(numbering: "I")
#align(center)[*Abstract*]
#lorem(100)

#pagebreak()

#outline()

#pagebreak()

#outline(title: "Table of figures", target: figure.where(kind: image))

#pagebreak()

#counter(page).update(1)
#set heading(numbering: "1.1.1")
#set page(numbering: "1")

= Introduction

Given the rapid growth of the hardware industry in a fast paced and changing
global landscape, in addition to the changing learning styles and habits of
newer generations @duderstadt_engineering_2007, academia has unique challenges
in preparing new graduates. The Engineering discipline in particular has been
slow to adapt, opting instead for a traditional model prevalent since the
post-war era of professor as lecture giver and student as recipient of of
domain specific information. Strides have been made since although, as the
industry has moved away from wartime contracts, and towards short production
cycles with customer satisfaction as priority, expertise is more important than
ever @barley_between_2018. A detailed breakdown of the development of expertise

Recent years, the child-development work of Russian psychologist Vygotsky has
seen its spotlight throughout pedagogy research as a theoretical base for
scaffolded learning @daniels_inside_2007.

#figure(image("./include/waveform.svg", width: 80%), caption: "Internal Registers of pipeline for factorial 11 calculation")

= Background

Given the 2-fold nature of this project, the background will be split into 2
distinct sections. It is the aim of this paper to adapt cutting edge
educational techniques into engineering laboratories, while maintaining industry
relevance. The background will therefor be split into pedagogy theory and
the technical background of the labs.

== Technical background

CPU ISAs are the backbone of the tech industry - they define the behavior of
CPU cores and ensure compatibility with other systems like GPUs, multithreading,
memory, IO devices. So that they always react in a particular way. In the early days
of computing, ISAs came in many different shapes, proprietary for every different
implementation of a computing machine. It as mainly the job of hobbyists to ensure
compatibility with each different ISA with programs, software, and external devices.
As computers got more mainstream, CPU cores were required to be smaller, faster, and more capable.
Their complexity skyrocketed, and it became the domain of
specialized companies like Intel, Arm, and Qualcom to develop the ISAs and licence them
out at a high price.

As a result, the barrier for entry into the microelectronics industry, already
requiring expensive licensing for CAD tools and fabrication, had gotten even
more difficult. In recent years, the push to produce and open source ISA has
seen a lot of interest from both academia and industry, promising to reduce
the cost of licensing and disrupt the business model of large players in the
microelectronics industry. Beginning as a small project back in the 1970s, and
through an iterative process by the RISC-V foundation, the ISA has seen
tapeout and proof of viability as a core.

== Pedagogy background

= Design of RISC-V Cores

Two designs of a RISC-V core are the backbone for the educational labs. Both
utilizing a subset of the RV32I instruction set. They were designed to be
understandable, synthesizable, flexible, and to work in a standard
environment. This enables them to work alongside the RISC-V C compiler.

== Single Cycle Core

The Single cycle RISC-V core utilizes a Harvard architecture, splitting up the
memory locations for the program instructions and RAM. In addition,
multiplexers, labeled A through F are used to control the flow of data through
the CPU. For example, E is used to determine whether the ALU output or the
immediate is passed through to the next stage.

This core makes up Lab 2, and is designed to aid in understanding how CPU
cores are implemented and dive into the challenges involved in realizing the
RV32I instruction set. 

#figure(image("./include/single_cycle_annotated.svg"), caption: "Single Cycle Core Datapath")

The core structure of the single-cycle processor _Figure 2_ is organized into
concise, modulate units, each dedicated to a single, well-defined function.
This modularity promotes clarity, simplifies debugging, and enhances
reusability across the design.

A key design decision was to separate the data routing logic from the
functional modules. Instead of embedding routing within each module,
multiplexers handle the selection and flow of data externally. This separation
keeps each module focused on its core responsibility while the multiplexers
manage data flow, resulting in tight and focused laboratory exercises derived
from the design and avoiding tedium from high localized complexity. Students can 
concentrate on understanding individual modules first, then consider how data 
connections integrate the design as a whole.

== Simulation environment

A standardized simulation environment was designed inside the RISC-V devkit which allows the 
user to cross-compile C programs to run on the core.  




#align(center)[

  #table(
    columns: 2,
    align: left,
    [*Component*],     [*Description*],
    [Program Counter], [A register for storing the current Program Counter value.],
    [Program Memory],  [Initialized at the beginning of simulation or synthesis, this
    module store the RISC-V machine code in 8-bit registers.],
    [Decoder],         [Taking in the opcode, func. 3, func. 7, and immediate, this module returns
    the control signals and cleans the immediate as per the instruction format.],
    [Branch Logic],    [Given the flags produced by the ALU and the type of
    branch, this module updates the program counter.],
    [ALU],             [Given two inputs and a control signal, this module
    performs mathematical operations and sets control signals for branching.],
    [RAM],             [With sequential writes and asynchronous reads, the CPU can access this for storing and retrieving data. ],
    [Multiplexers],    [These control how data is routed through the CPU and can be configured by the decoder to implement instructions.],
  )
]


== 5-stage pipeline Core

= Verification and automated testing

= Processor visualization techniques

= Methodology

== Structure of labs

== Implementation of ZPD factors

== Experimental procedure

= Experimental results

= Discussion

= Conclusion

#pagebreak()

#bibliography("./include/work.bib")
