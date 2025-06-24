`include "./coreUtils.sv"
`include "./core_types_pkg.sv"
import coreUtils::*;
import core_types_pkg::*;




module core (
    input Clock,
    input nReset
);

  decoder_out_t decoder_out;
  DEC_out_t DEC_out;
  EXE_out_t EXE_out;
  IF_out_t IF_out;
  MEM_out_t MEM_out;
  alu_out_t alu_out;
  branching_out_t branching_out;
  dataMem_out_t dataMem_out;
  forwarding_out_t forwarding_out;
  progCount_out_t progCount_out;
  progMem_out_t progMem_out;
  regMem_out_t regMem_out;
  write_back_out_t write_back_out;

  DEC DEC0 ();
  EXE EXE0 ();
  IF IF0 ();
  MEM MEM0 ();
  alu alu0 ();
  branching branching0 ();
  dataMem dataMem0 ();
  decoder decoder0 ();
  forwarding forwarding0 ();
  progCount progCount0 ();
  progMem progMem0 ();
  regMem regMem0 ();
  write_back write_back0 ();


endmodule
