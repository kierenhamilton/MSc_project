#set text(font: "calibri")
#set text(size: 11pt)
#set page(numbering: "1")
#set heading(numbering: "1.1")
#text("RISC-V labs", size: 17pt, weight: "bold")
#line(length: 100%)

This labs is broken down into 3 parts lab1, lab2, and lab3 designed to build off of each other
for an overall understanding of RISC-V processors.

= prerequisites

- Access to cadteaching8.
- Basic navigation of the Unix terminal.
- This lab assumes basic competence in writing SystemVerilog
  and an ability to test your own designs using Xcellium and 
  SimVision inside CadTeaching8.

== Learning outcomes
The 3 parts focus on different aspects of processor design.
They can be broken down into 3 sections: 

- Lab1: RISC-V assembly 
  - Understanding of how RISC-V assembly relates to machine code.
  - Ability to write programs in RISC-V assembly.
- Lab2: RISC-V core, architecture, and implementation
  - Understanding of how a RISC-V core handles the instructions. 
  - Ability to implement SystemVerilog modules based on a specification.
  - Basic understanding of how instructions interface with memory.
  - 
- Lab3: pipeline hazards and branch prediction

Labs are broken down into tasks where a specification along with automated tests are provided.

Each labs can be found in ``` <laboratories/>``` inside their corresponding lab1, lab2, or lab3 directory. 

= UNIX and SystemVerilog tutorial 
Please feel free to skip this section to lab 1 if you already know how to write SystemVerilog and are comfortable in
the UNIX command line.


== Unix command tutorial:
1. Open the terminal which can be found in the top left of cadteaching8.
2. Make a directory that will house this project\
  ``` <mkdir riscv_labs>, <cd riscv_labs>```
3. Clone the lab repository from GitHub\
  ``` <git clone abs@github.com/askldjf> ```
4. ``` <cd labs>```
5. Go to the lab1 directory\
  ``` <cd ./laboratories/lab1>```
6. Open the lab1 script\
  ``` <evince lab1.pdf>```
7. To edit files, use command\
  ``` <nedit example.sv>```

If you are comfortable using SystemVerilog and some of its features, feel free to skip to lab1.

== SystemVerilog

SystemVerilog is a hardware description language (HDL), used to describe implementations
of digital logic. Based on the C programming language, a lot of syntax carries over.
SystemVeriog is a powerful language that is used for Synthesizable#footnote[
  Synthesis is the process of compiling SystemVerilog into standard Cells (e.g and2, nand3, nor, d-type flipflops, mux2)
  which is called a netlist. This can then be used to create and tape out a physical microchip.
] and non-synthesizable code
for testing.

#set text(size: 10pt)

== Basic structures
#align(center)[
  #box(stroke: black, inset: 4pt, radius: 4pt)[
    #underline([Hello World program])\
    #align(left)[
      ```systemverilog
      // hello_world.sv
      module hello_world; 
        initial begin
          $display("Hello World!");
        end
      endmodule
      ```
    ]
  ]
]
Run ``` <xmverilog hello_world.sv>```\
Synthesizable designs and non-synthesizable tests are split into separate files as follows.
#align(center)[
  #box(stroke: black, width: 100%,  inset: 4pt, radius: 4pt)[
    #underline([Counter.sv: Counter example])\
    #align(left)[
      ```SystemVerilog
module counter (
  input Clock, // is actually input wire Clock, though wire can be left out
  input nReset,
  output logic [7:0] counter, // counter is now an 8 bit register
  output logic is_even
  );
  timeunit 1ns; timeprecision 100ps;

  always_ff @(posedge Clock, negedge nReset) // Sequential, meaning updated at the rising edge of Clock. 
    if (!nReset) counter <= 0; // Asynchronous reset, meaning always runs at the falling edge of nReset. 
    else counter <= counter + 1; 

  always_comb begin
    is_even = counter[0];
  end
endmodule
      ```
    ]
  ]
]



#align(center)[
  #box(width: 100%, stroke: black, inset: 4pt, radius: 4pt)[
    #underline([counter_tb.sv -- This is non-synthesizable stimulus for counter.sv])
    #align(left)[
      ```SystemVerilog
module counter_tb;
  timeunit 1ns; timeprecision 100ps;
  logic Clock; // Use logic when the signal is driven from this module
  logic nReset; // Use wire when the signal is passed into this module
  wire [7:0] counter;
  wire is_even;

  initial begin nReset = 1; #10 nReset = 0; #10 nReset = 1; end // Pulses nReset
  always begin Clock = 1; #50 Clock = 0; #50 Clock = 1; end // Starts a Clock that runs forever

  test dut(.Clock(Clock), .nReset(nReset), .counter(counter), .is_even(is_even));
  // Used to create an instance of our design under test (DUT is test.sv) inside this testbench.
  initial begin 
    repeat(150) begin
      @(posedge Clock); 
      $display("counter=%d, is_even=%b", counter, is_even);
    end
    $finish;
  end
endmodule
      ```
    ]
  ]
]

Inside of cadteaching8, copy these two files into a directory of your choosing.
1. run ``` <xmverilog counter_tb.sv counter.sv>```
2. To see the individual signals use ``` <xmv_gui counter_tb.sv counter.sv>```


== Design patterns
#align(center)[
  #box(stroke: black, width: 100%,  inset: 4pt, radius: 4pt)[
    #underline([case-example.sv])\
    #align(left)[
      ```systemverilog
typedef enum logic [2:0] { // enumeration links names to numbers for convenience
  ADAM = 3'd0,
  BILL = 3'd1,
  CONNOR = 3'd2,
  DENVER = 3'd3,
} people_e;

module case_example; 
  people_e people = ADAM;
  logic [7:0] favourite_number;

  case (people)
    ADAM:    favourite_number = 8'd10;
    BILL:    favourite_number = 8'd20;
    CONNOR:  favourite_number = 8'd1;
    DENVER:  favourite_number = 8'd1;
    default: favourite_number = 8'd0;
  endcase
  $display("person=%s, favourite number=%d", people.name(), favourite_number);
endmodule
      ```
    ]
  ]
]
This file shows how enumerated logic can  be defined and used in place of logic, which is useful for debugging inside of the 
waveform viewer. 
#align(center)[
  #box(stroke: black, width: 100%,  inset: 4pt, radius: 4pt)[
    #underline([case-example_test.sv])\
    #align(left)[
      ```systemverilog
typedef enum logic [2:0] { // enumeration links names to numbers for convenience
  ADAM = 3'd0,
  BILL = 3'd1,
  CONNOR = 3'd2,
  DENVER = 3'd3,
} people_e;

module case_example_test; 
  people_e people = ADAM;
  logic [7:0] favourite_number;

  case (people)
    ADAM:    favourite_number = 8'd10;
    BILL:    favourite_number = 8'd20;
    CONNOR:  favourite_number = 8'd1;
    DENVER:  favourite_number = 8'd1;
    default: favourite_number = 8'd0;
  endcase
  $display("person=%s, favourite number=%d", people.name(), favourite_number);
endmodule
      ```
    ]
  ]
]

Stimulus file for case_example.sv.

The Typedef command is used to define a datatype. Under the hood, it is just logic, although using 
people_e in place of logic[2:0] has the benefit of type safety, and understandability.

