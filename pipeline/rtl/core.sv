module core (
    input Clock,
    input nReset
);

DEC DEC0();
EXE EXE0();
IF IF0();
MEM MEM0();
alu alu0();
branching branching0();
dataMem dataMem0();
decoder decoder0();
forwarding forwarding0();
progCount progCount0();
progMem progMem0();
regMem regMem0();
write_back write_back0();


endmodule
