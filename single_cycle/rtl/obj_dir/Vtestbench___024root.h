// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtestbench.h for the primary calling header

#ifndef VERILATED_VTESTBENCH___024ROOT_H_
#define VERILATED_VTESTBENCH___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class Vtestbench__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtestbench___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ testbench__DOT__Clock;
    CData/*0:0*/ testbench__DOT__nReset;
    CData/*0:0*/ testbench__DOT__dut__DOT__A;
    CData/*0:0*/ testbench__DOT__dut__DOT__B;
    CData/*0:0*/ testbench__DOT__dut__DOT__C;
    CData/*0:0*/ testbench__DOT__dut__DOT__D;
    CData/*0:0*/ testbench__DOT__dut__DOT__E;
    CData/*0:0*/ testbench__DOT__dut__DOT__F;
    CData/*0:0*/ testbench__DOT__dut__DOT__G;
    CData/*0:0*/ testbench__DOT__dut__DOT__H;
    CData/*0:0*/ testbench__DOT__dut__DOT__branch;
    CData/*0:0*/ testbench__DOT__dut__DOT__writeReg;
    CData/*0:0*/ testbench__DOT__dut__DOT__writeRam;
    CData/*3:0*/ testbench__DOT__dut__DOT__aluCode;
    CData/*2:0*/ testbench__DOT__dut__DOT__immSample;
    CData/*0:0*/ testbench__DOT__dut__DOT__zeroFlag;
    CData/*0:0*/ testbench__DOT__dut__DOT__negFlag;
    CData/*0:0*/ testbench__DOT__dut__DOT__carryFlag;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__testbench__DOT__Clock__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__testbench__DOT__nReset__0;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ testbench__DOT__dut__DOT__instruction;
    IData/*31:0*/ testbench__DOT__dut__DOT__pc;
    IData/*31:0*/ testbench__DOT__dut__DOT__Bout;
    IData/*31:0*/ testbench__DOT__dut__DOT__Dout;
    IData/*31:0*/ testbench__DOT__dut__DOT__Eout;
    IData/*31:0*/ testbench__DOT__dut__DOT__Gout;
    IData/*31:0*/ testbench__DOT__dut__DOT__aluResult;
    IData/*31:0*/ testbench__DOT__dut__DOT__rs2;
    IData/*31:0*/ testbench__DOT__dut__DOT__ramOut;
    IData/*31:0*/ testbench__DOT__dut__DOT__branchLogicOut;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<IData/*31:0*/, 32> testbench__DOT__dut__DOT__regMem0__DOT__regMemory;
    VlUnpacked<CData/*7:0*/, 32> testbench__DOT__dut__DOT__ram0__DOT__ramMemory;
    VlUnpacked<CData/*7:0*/, 501> testbench__DOT__dut__DOT__progMem0__DOT__programMemory;
    VlUnpacked<CData/*0:0*/, 2> __Vm_traceActivity;
    VlDelayScheduler __VdlySched;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<2> __VactTriggered;
    VlTriggerVec<2> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vtestbench__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtestbench___024root(Vtestbench__Syms* symsp, const char* v__name);
    ~Vtestbench___024root();
    VL_UNCOPYABLE(Vtestbench___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
