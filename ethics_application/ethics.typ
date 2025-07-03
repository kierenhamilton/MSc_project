#set text(font: "Calibri", size: 12pt)
#text("Developing RISC-V Educational Labs to Support ZPD-Based Scaffolding in Processor Education (MSc project)", size: 20pt, weight: "bold")

#let ref = [#text("REF", red)]

#align(center)[#text([Kieren Hamilton,\
Supervised by Ivan Ling, University of Southampton, United Kingdom], weight: "bold")]

= Introduction

Given the rapid growth of the hardware industry, academia has yet to formalize the implementation
of cutting-edge educational techniques into its labs, often relying on traditional styles, which are
designed to maintain a minimum floor of competency, rather than push students to learn further.
In recent years, the work of Vygotsky and his theory about Zone of Proximal Development (ZPD) has been
used to structure labs in computer science @wang_zpd-based_2009 and in the teaching of languages @shabani_vygotskys_2010 in Australia to the effect of
higher learning outcomes, increased satisfaction for students, and an increased student capacity for labs.
The theory proposes that a student will learn best when the content is in their ZPD, meaning
it is just outside their current ability, which represents a task difficult enough to stimulate cognitive
growth, yet not so difficult as to exceed the learners capacity for engagement @verenikina_understanding_2003 . This research proposal
aims to run a ZPD scaffolded RISC-V labs to study its effects on learning outcomes in the context of hardware,
while also developing a generalizable framework for its implementation across engineering disciplines.

= Project Description

A labs in the form of an educational RISC-V devkit will be developed using 2 implementations of
RISC-V cores designed to be compatible with the RV32I instruction set and of varying
architectural complexity (designs can be found #link("https://github.com/kierenhamilton/MSc_project")[#text("here", blue)]).
The Devkit will include an environment with automated testing, offering instant feedback for some lab exercises, as well
as integration with the RISC-V toolchain, enabling cross-compiled C binaries to be simulated
into the cores.

The labs will be designed with ZPD factors which can be turned off and on, enabling experimental data collection
about the efficacy of ZPD scaffolding on learning outcomes. More information can be found in Table 1.

The lab structure, inspired by Cadence lab material, will consist of a multiple lab scripts and
directories inside the Devkit where learners can build and test their own designs.
A Linux environment will be used, to make use of open-source design tools for hardware.

#pagebreak()
#set text(size: 11pt)
#table(
  columns: 3,
  [*ZPD Factor*],        [*Description*],                                                               [*Implementation*],
  [Timed content],       [The content is spaced out rather than provided all at once,
  promoting mastery and avoiding cognitive overload.],                          [Processor design concepts can be split into stages: machine code, architecture, pipeline hazards, compilation,
  implementation of branch prediction/forwarding, and protocols],
  [Choice over task],    [Students may choose from labs of varying difficulty, with
  higher complexity linked to potential for higher marks.],                     [Multiple architectures are available,
  ranging from single-cycle designs to full 5-stage pipelines, allowing students to select on challenge preference.],
  [Immediate feedback],  [Timely feedback keeps students engaged and able to iterate
  quickly through the learning process.],                                       [Automated testbenches provide verification.
  Feedback verbosity can be adjusted can be adjusted, offering detailed messages for beginners and minimal hints for advanced learners.],
  [Optional enrichment], [Offering advanced students challenging tasks,
  keeping them in their ZPD and allowing to stretch beyond the original task.], [Students capable of self motivated learning
  can engage in optional extras like implementing custom branch prediction or extending processor core functionality.],
)
#set text(size: 12pt)
#align(center)[*Table 1:* Description and implementation of ZPD factors]

All students will be given sufficient support to complete core requirements regardless of
which ZPD factors are enabled.

= Methodology

This study will involve the running of 2 separate labs in parallel. The first
group will undergo a traditional style labs, where ZPD scaffolding is not
used. The second group will go through the labs with ZPD factors enables.

Surveys, submissions, and tests may be used to measure learning outcomes, track
progress through the laboratory, and gauge student satisfaction.

After completion of the labs, and when sensitive data is aliased, data
collected from both labs will be analyzed and compared to measure the effect of ZPD
scaffolding on learning outcomes and student satisfaction.

= Data protection plan

#underline[*Type of Data Collected*]
- *Academic data:* pre-test and post-test scores assessing learning outcomes
- *Questionnaire responses:* Student satisfaction and feedback
- *Demographic data:* Limited, anonymized information such as age range, gender, and year of study (if collected)
- *Lab interaction data:* Usage logs indicating which ZPD factors were enabled and student progress.

#underline[*Data collection and storage*]

- Sensitive data will be stored securely on university-managed servers, accessible only through 
  multi-step authentication.
- Data will be retained for the duration of the lab activities to ensure operational continuity
  and effective support for participants.
- After lab completion, sensitive data will be aliased to protect participant identity while retaining necessary records
  for analysis.

= Ethical consideration

#table(
  columns: 2,
  [*Ethical consideration*],  [*Description*],
  [Privacy of participants],  [Data will be protected through secure storage and anaonymization techniques],
  [Safety of in-person labs], [All in-person sessions will follow established health and safety protocols],
  [Informed consent] , [Participants will receive clear information and provide voluntary consent],
  [Right to withdraw], [Participants can withdraw from the study at any time without penalty],
)
#align(center)[*Table 2:* Ethical considerations for RISC-V laboratory]

= Timeline and Key Milestone

= Bibliography
#set text(size: 9pt)
#bibliography("./include/ethics_application_refs.bib", title: none)
