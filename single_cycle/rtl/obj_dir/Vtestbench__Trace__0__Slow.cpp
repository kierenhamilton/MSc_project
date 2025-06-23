// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtestbench__Syms.h"


VL_ATTR_COLD void Vtestbench___024root__trace_init_sub__TOP__0(Vtestbench___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->pushPrefix("testbench", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+104,0,"Clock",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+105,0,"nReset",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("dut", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+104,0,"Clock",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+105,0,"nReset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+1,0,"instruction",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+2,0,"pc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+3,0,"pcNext",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+4,0,"A",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+5,0,"B",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+6,0,"C",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+7,0,"D",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+8,0,"E",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"F",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+10,0,"G",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+11,0,"H",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+12,0,"branch",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+13,0,"writeReg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+14,0,"writeRam",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+15,0,"aluCode",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+16,0,"immSample",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+17,0,"Bout",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+18,0,"Cout",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+19,0,"Dout",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+20,0,"Eout",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+21,0,"Fout",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+22,0,"Gout",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+23,0,"aluResult",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+24,0,"rs1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+25,0,"rs2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+26,0,"ramOut",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+27,0,"branchLogicOut",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+28,0,"zeroFlag",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+29,0,"negFlag",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+30,0,"carryFlag",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("alu0", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+23,0,"aluResult",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+29,0,"negative_flag",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+28,0,"zero_flag",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+30,0,"carry_flag",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+15,0,"aluCode",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+22,0,"aluIn1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+19,0,"aluIn2",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("b", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+17,0,"result",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+20,0,"aluIn",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+31,0,"immIn",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBit(c+5,0,"B",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("branLog0", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+27,0,"PCout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+32,0,"ctrl",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBit(c+12,0,"branch",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+29,0,"neg_flag",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+28,0,"zero_flag",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+30,0,"carry_flag",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+17,0,"PCin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("c", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+18,0,"result",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+33,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 19,0);
    tracep->declBus(c+21,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+6,0,"C",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("d", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+19,0,"result",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+25,0,"rs2",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+34,0,"imm",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 24,0);
    tracep->declBus(c+16,0,"immSample",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBit(c+7,0,"D",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("decoder0", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+13,0,"writeReg",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+14,0,"writeRam",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+12,0,"branch",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+15,0,"aluCode",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+16,0,"immSample",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBit(c+4,0,"A",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+5,0,"B",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+6,0,"C",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+7,0,"D",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+8,0,"E",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"F",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+10,0,"G",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+11,0,"H",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+35,0,"opcode",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+36,0,"ctrl",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->popPrefix();
    tracep->pushPrefix("e", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+20,0,"result",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+23,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+26,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+8,0,"E",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("f", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+21,0,"result",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+3,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+20,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+9,0,"F",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("g", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+22,0,"result",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+2,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+24,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+10,0,"G",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("progCounter", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+104,0,"Clock",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+105,0,"nReset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+27,0,"PCin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+4,0,"A",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+11,0,"H",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+2,0,"PC",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+3,0,"PCnext",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("progMem0", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+2,0,"PC",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+1,0,"instruction",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("ram0", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+26,0,"rData",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+104,0,"Clock",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+105,0,"nReset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+14,0,"writeRam",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+32,0,"ctrl",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+23,0,"address",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+25,0,"wData",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->pushPrefix("ramMemory", VerilatedTracePrefixType::ARRAY_UNPACKED);
    for (int i = 0; i < 32; ++i) {
        tracep->declBus(c+37+i*1,0,"",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, true,(i+0), 7,0);
    }
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("regMem0", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+24,0,"rs1",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+25,0,"rs2",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+104,0,"Clock",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+105,0,"nReset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+13,0,"writeRegMem",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+69,0,"rd",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+70,0,"addr1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+71,0,"addr2",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+18,0,"dataIn",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->pushPrefix("regMemory", VerilatedTracePrefixType::ARRAY_UNPACKED);
    for (int i = 0; i < 32; ++i) {
        tracep->declBus(c+72+i*1,0,"",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, true,(i+0), 31,0);
    }
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void Vtestbench___024root__trace_init_top(Vtestbench___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_init_top\n"); );
    // Body
    Vtestbench___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vtestbench___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void Vtestbench___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vtestbench___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vtestbench___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vtestbench___024root__trace_register(Vtestbench___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_register\n"); );
    // Body
    tracep->addConstCb(&Vtestbench___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&Vtestbench___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&Vtestbench___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&Vtestbench___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vtestbench___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_const_0\n"); );
    // Init
    Vtestbench___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtestbench___024root*>(voidSelf);
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
}

VL_ATTR_COLD void Vtestbench___024root__trace_full_0_sub_0(Vtestbench___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vtestbench___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_full_0\n"); );
    // Init
    Vtestbench___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtestbench___024root*>(voidSelf);
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vtestbench___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vtestbench___024root__trace_full_0_sub_0(Vtestbench___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_full_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullIData(oldp+1,(vlSelf->testbench__DOT__dut__DOT__instruction),32);
    bufp->fullIData(oldp+2,(vlSelf->testbench__DOT__dut__DOT__pc),32);
    bufp->fullIData(oldp+3,(((IData)(4U) + vlSelf->testbench__DOT__dut__DOT__pc)),32);
    bufp->fullBit(oldp+4,(vlSelf->testbench__DOT__dut__DOT__A));
    bufp->fullBit(oldp+5,(vlSelf->testbench__DOT__dut__DOT__B));
    bufp->fullBit(oldp+6,(vlSelf->testbench__DOT__dut__DOT__C));
    bufp->fullBit(oldp+7,(vlSelf->testbench__DOT__dut__DOT__D));
    bufp->fullBit(oldp+8,(vlSelf->testbench__DOT__dut__DOT__E));
    bufp->fullBit(oldp+9,(vlSelf->testbench__DOT__dut__DOT__F));
    bufp->fullBit(oldp+10,(vlSelf->testbench__DOT__dut__DOT__G));
    bufp->fullBit(oldp+11,(vlSelf->testbench__DOT__dut__DOT__H));
    bufp->fullBit(oldp+12,(vlSelf->testbench__DOT__dut__DOT__branch));
    bufp->fullBit(oldp+13,(vlSelf->testbench__DOT__dut__DOT__writeReg));
    bufp->fullBit(oldp+14,(vlSelf->testbench__DOT__dut__DOT__writeRam));
    bufp->fullCData(oldp+15,(vlSelf->testbench__DOT__dut__DOT__aluCode),4);
    bufp->fullCData(oldp+16,(vlSelf->testbench__DOT__dut__DOT__immSample),3);
    bufp->fullIData(oldp+17,(vlSelf->testbench__DOT__dut__DOT__Bout),32);
    bufp->fullIData(oldp+18,(((IData)(vlSelf->testbench__DOT__dut__DOT__C)
                               ? ((IData)(vlSelf->testbench__DOT__dut__DOT__F)
                                   ? vlSelf->testbench__DOT__dut__DOT__Eout
                                   : ((IData)(4U) + vlSelf->testbench__DOT__dut__DOT__pc))
                               : (0xfffff000U & vlSelf->testbench__DOT__dut__DOT__instruction))),32);
    bufp->fullIData(oldp+19,(vlSelf->testbench__DOT__dut__DOT__Dout),32);
    bufp->fullIData(oldp+20,(vlSelf->testbench__DOT__dut__DOT__Eout),32);
    bufp->fullIData(oldp+21,(((IData)(vlSelf->testbench__DOT__dut__DOT__F)
                               ? vlSelf->testbench__DOT__dut__DOT__Eout
                               : ((IData)(4U) + vlSelf->testbench__DOT__dut__DOT__pc))),32);
    bufp->fullIData(oldp+22,(vlSelf->testbench__DOT__dut__DOT__Gout),32);
    bufp->fullIData(oldp+23,(vlSelf->testbench__DOT__dut__DOT__aluResult),32);
    bufp->fullIData(oldp+24,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory
                             [(0x1fU & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                        >> 0xfU))]),32);
    bufp->fullIData(oldp+25,(vlSelf->testbench__DOT__dut__DOT__rs2),32);
    bufp->fullIData(oldp+26,(vlSelf->testbench__DOT__dut__DOT__ramOut),32);
    bufp->fullIData(oldp+27,(vlSelf->testbench__DOT__dut__DOT__branchLogicOut),32);
    bufp->fullBit(oldp+28,(vlSelf->testbench__DOT__dut__DOT__zeroFlag));
    bufp->fullBit(oldp+29,(vlSelf->testbench__DOT__dut__DOT__negFlag));
    bufp->fullBit(oldp+30,(vlSelf->testbench__DOT__dut__DOT__carryFlag));
    bufp->fullSData(oldp+31,(((0xfe0U & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                         >> 0x14U)) 
                              | (0x1fU & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                          >> 7U)))),12);
    bufp->fullCData(oldp+32,((7U & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                    >> 0xcU))),3);
    bufp->fullIData(oldp+33,((vlSelf->testbench__DOT__dut__DOT__instruction 
                              >> 0xcU)),20);
    bufp->fullIData(oldp+34,((vlSelf->testbench__DOT__dut__DOT__instruction 
                              >> 7U)),25);
    bufp->fullCData(oldp+35,((0x1fU & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                       >> 2U))),5);
    bufp->fullCData(oldp+36,(((8U & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                     >> 0x1bU)) | (7U 
                                                   & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                      >> 0xcU)))),4);
    bufp->fullCData(oldp+37,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[0]),8);
    bufp->fullCData(oldp+38,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[1]),8);
    bufp->fullCData(oldp+39,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[2]),8);
    bufp->fullCData(oldp+40,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[3]),8);
    bufp->fullCData(oldp+41,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[4]),8);
    bufp->fullCData(oldp+42,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[5]),8);
    bufp->fullCData(oldp+43,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[6]),8);
    bufp->fullCData(oldp+44,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[7]),8);
    bufp->fullCData(oldp+45,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[8]),8);
    bufp->fullCData(oldp+46,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[9]),8);
    bufp->fullCData(oldp+47,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[10]),8);
    bufp->fullCData(oldp+48,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[11]),8);
    bufp->fullCData(oldp+49,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[12]),8);
    bufp->fullCData(oldp+50,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[13]),8);
    bufp->fullCData(oldp+51,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[14]),8);
    bufp->fullCData(oldp+52,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[15]),8);
    bufp->fullCData(oldp+53,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[16]),8);
    bufp->fullCData(oldp+54,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[17]),8);
    bufp->fullCData(oldp+55,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[18]),8);
    bufp->fullCData(oldp+56,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[19]),8);
    bufp->fullCData(oldp+57,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[20]),8);
    bufp->fullCData(oldp+58,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[21]),8);
    bufp->fullCData(oldp+59,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[22]),8);
    bufp->fullCData(oldp+60,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[23]),8);
    bufp->fullCData(oldp+61,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[24]),8);
    bufp->fullCData(oldp+62,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[25]),8);
    bufp->fullCData(oldp+63,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[26]),8);
    bufp->fullCData(oldp+64,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[27]),8);
    bufp->fullCData(oldp+65,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[28]),8);
    bufp->fullCData(oldp+66,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[29]),8);
    bufp->fullCData(oldp+67,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[30]),8);
    bufp->fullCData(oldp+68,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[31]),8);
    bufp->fullCData(oldp+69,((0x1fU & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                       >> 7U))),5);
    bufp->fullCData(oldp+70,((0x1fU & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                       >> 0xfU))),5);
    bufp->fullCData(oldp+71,((0x1fU & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                       >> 0x14U))),5);
    bufp->fullIData(oldp+72,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[0]),32);
    bufp->fullIData(oldp+73,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[1]),32);
    bufp->fullIData(oldp+74,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[2]),32);
    bufp->fullIData(oldp+75,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[3]),32);
    bufp->fullIData(oldp+76,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[4]),32);
    bufp->fullIData(oldp+77,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[5]),32);
    bufp->fullIData(oldp+78,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[6]),32);
    bufp->fullIData(oldp+79,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[7]),32);
    bufp->fullIData(oldp+80,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[8]),32);
    bufp->fullIData(oldp+81,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[9]),32);
    bufp->fullIData(oldp+82,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[10]),32);
    bufp->fullIData(oldp+83,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[11]),32);
    bufp->fullIData(oldp+84,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[12]),32);
    bufp->fullIData(oldp+85,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[13]),32);
    bufp->fullIData(oldp+86,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[14]),32);
    bufp->fullIData(oldp+87,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[15]),32);
    bufp->fullIData(oldp+88,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[16]),32);
    bufp->fullIData(oldp+89,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[17]),32);
    bufp->fullIData(oldp+90,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[18]),32);
    bufp->fullIData(oldp+91,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[19]),32);
    bufp->fullIData(oldp+92,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[20]),32);
    bufp->fullIData(oldp+93,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[21]),32);
    bufp->fullIData(oldp+94,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[22]),32);
    bufp->fullIData(oldp+95,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[23]),32);
    bufp->fullIData(oldp+96,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[24]),32);
    bufp->fullIData(oldp+97,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[25]),32);
    bufp->fullIData(oldp+98,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[26]),32);
    bufp->fullIData(oldp+99,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[27]),32);
    bufp->fullIData(oldp+100,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[28]),32);
    bufp->fullIData(oldp+101,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[29]),32);
    bufp->fullIData(oldp+102,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[30]),32);
    bufp->fullIData(oldp+103,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[31]),32);
    bufp->fullBit(oldp+104,(vlSelf->testbench__DOT__Clock));
    bufp->fullBit(oldp+105,(vlSelf->testbench__DOT__nReset));
}
