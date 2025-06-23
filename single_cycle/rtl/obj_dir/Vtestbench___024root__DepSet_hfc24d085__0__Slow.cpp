// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtestbench.h for the primary calling header

#include "Vtestbench__pch.h"
#include "Vtestbench__Syms.h"
#include "Vtestbench___024root.h"

VL_ATTR_COLD void Vtestbench___024root___eval_initial__TOP(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_initial__TOP\n"); );
    // Init
    IData/*31:0*/ testbench__DOT__dut__DOT__progMem0__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__i;
    testbench__DOT__dut__DOT__progMem0__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__i = 0;
    VlWide<3>/*95:0*/ __Vtemp_1;
    VlWide<5>/*159:0*/ __Vtemp_2;
    // Body
    __Vtemp_1[0U] = 0x2e766364U;
    __Vtemp_1[1U] = 0x666f726dU;
    __Vtemp_1[2U] = 0x77617665U;
    vlSymsp->_vm_contextp__->dumpfile(VL_CVT_PACK_STR_NW(3, __Vtemp_1));
    vlSymsp->_traceDumpOpen();
    __Vtemp_2[0U] = 0x2e686578U;
    __Vtemp_2[1U] = 0x6d61696eU;
    __Vtemp_2[2U] = 0x7074732fU;
    __Vtemp_2[3U] = 0x73637269U;
    __Vtemp_2[4U] = 0x2e2e2fU;
    VL_READMEM_N(true, 8, 501, 0, VL_CVT_PACK_STR_NW(5, __Vtemp_2)
                 ,  &(vlSelf->testbench__DOT__dut__DOT__progMem0__DOT__programMemory)
                 , 0, ~0ULL);
    testbench__DOT__dut__DOT__progMem0__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__i = 0U;
    while (VL_GTES_III(32, 0x1f4U, testbench__DOT__dut__DOT__progMem0__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__i)) {
        VL_WRITEF("%11d: %x\n",32,testbench__DOT__dut__DOT__progMem0__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__i,
                  8,((0x1f4U >= (0x1ffU & testbench__DOT__dut__DOT__progMem0__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__i))
                      ? vlSelf->testbench__DOT__dut__DOT__progMem0__DOT__programMemory
                     [(0x1ffU & testbench__DOT__dut__DOT__progMem0__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__i)]
                      : 0U));
        testbench__DOT__dut__DOT__progMem0__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__i 
            = ((IData)(1U) + testbench__DOT__dut__DOT__progMem0__DOT__unnamedblk1__DOT__unnamedblk2_1__DOT__i);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__stl(Vtestbench___024root* vlSelf);
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtestbench___024root___eval_triggers__stl(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_triggers__stl\n"); );
    // Body
    vlSelf->__VstlTriggered.set(0U, (IData)(vlSelf->__VstlFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtestbench___024root___dump_triggers__stl(vlSelf);
    }
#endif
}
