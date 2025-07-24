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
  ]
)

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


#figure(
  image("./include/waveform.svg", width: 80%),
  caption: "Internal Registers of pipeline for factorial 11 calculation"
)

= Background

= Design of RISC-V Cores

= Verification and automated testing

= Methodology 

== Structure of labs

== Implementation of ZPD factors

== Experimental procedure

= Experimental results 

= Discussion

= Conclusion

#pagebreak()

#bibliography("./include/work.bib")
