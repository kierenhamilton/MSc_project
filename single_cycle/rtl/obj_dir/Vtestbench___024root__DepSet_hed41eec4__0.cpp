// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtestbench.h for the primary calling header

#include "Vtestbench__pch.h"
#include "Vtestbench___024root.h"

VL_ATTR_COLD void Vtestbench___024root___eval_initial__TOP(Vtestbench___024root* vlSelf);
VlCoroutine Vtestbench___024root___eval_initial__TOP__Vtiming__0(Vtestbench___024root* vlSelf);
VlCoroutine Vtestbench___024root___eval_initial__TOP__Vtiming__1(Vtestbench___024root* vlSelf);
VlCoroutine Vtestbench___024root___eval_initial__TOP__Vtiming__2(Vtestbench___024root* vlSelf);

void Vtestbench___024root___eval_initial(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_initial\n"); );
    // Body
    Vtestbench___024root___eval_initial__TOP(vlSelf);
    Vtestbench___024root___eval_initial__TOP__Vtiming__0(vlSelf);
    Vtestbench___024root___eval_initial__TOP__Vtiming__1(vlSelf);
    Vtestbench___024root___eval_initial__TOP__Vtiming__2(vlSelf);
    vlSelf->__Vtrigprevexpr___TOP__testbench__DOT__Clock__0 
        = vlSelf->testbench__DOT__Clock;
    vlSelf->__Vtrigprevexpr___TOP__testbench__DOT__nReset__0 
        = vlSelf->testbench__DOT__nReset;
}

VL_INLINE_OPT VlCoroutine Vtestbench___024root___eval_initial__TOP__Vtiming__0(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_initial__TOP__Vtiming__0\n"); );
    // Body
    vlSelf->testbench__DOT__nReset = 1U;
    co_await vlSelf->__VdlySched.delay(0x64ULL, nullptr, 
                                       "testbench.sv", 
                                       25);
    vlSelf->testbench__DOT__nReset = 0U;
    co_await vlSelf->__VdlySched.delay(0x64ULL, nullptr, 
                                       "testbench.sv", 
                                       26);
    vlSelf->testbench__DOT__nReset = 1U;
}

VL_INLINE_OPT VlCoroutine Vtestbench___024root___eval_initial__TOP__Vtiming__1(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_initial__TOP__Vtiming__1\n"); );
    // Body
    co_await vlSelf->__VdlySched.delay(0x989680ULL, 
                                       nullptr, "testbench.sv", 
                                       30);
    VL_FINISH_MT("testbench.sv", 30, "");
}

VL_INLINE_OPT VlCoroutine Vtestbench___024root___eval_initial__TOP__Vtiming__2(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_initial__TOP__Vtiming__2\n"); );
    // Body
    while (1U) {
        vlSelf->testbench__DOT__Clock = 1U;
        co_await vlSelf->__VdlySched.delay(0x3e8ULL, 
                                           nullptr, 
                                           "testbench.sv", 
                                           14);
        vlSelf->testbench__DOT__Clock = 0U;
        co_await vlSelf->__VdlySched.delay(0x3e8ULL, 
                                           nullptr, 
                                           "testbench.sv", 
                                           15);
        vlSelf->testbench__DOT__Clock = 1U;
    }
}

void Vtestbench___024root___eval_act(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_act\n"); );
}

extern const VlUnpacked<CData/*0:0*/, 512> Vtestbench__ConstPool__TABLE_h7da29fe6_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtestbench__ConstPool__TABLE_h3a2ed9c4_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtestbench__ConstPool__TABLE_he1ebf836_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtestbench__ConstPool__TABLE_hc32df9cd_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtestbench__ConstPool__TABLE_h9ab1ba15_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtestbench__ConstPool__TABLE_h9527dd95_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtestbench__ConstPool__TABLE_hbdb9ab79_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtestbench__ConstPool__TABLE_hf45643e0_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtestbench__ConstPool__TABLE_hd84d0c72_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtestbench__ConstPool__TABLE_h353effd0_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtestbench__ConstPool__TABLE_h09b44643_0;
extern const VlUnpacked<CData/*3:0*/, 512> Vtestbench__ConstPool__TABLE_h2423c59b_0;
extern const VlUnpacked<CData/*2:0*/, 512> Vtestbench__ConstPool__TABLE_hc6ca4ea2_0;

VL_INLINE_OPT void Vtestbench___024root___nba_sequent__TOP__0(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___nba_sequent__TOP__0\n"); );
    // Init
    SData/*8:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    CData/*4:0*/ __Vdlyvdim0__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v0;
    __Vdlyvdim0__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v0 = 0;
    IData/*31:0*/ __Vdlyvval__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v0;
    __Vdlyvval__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v0 = 0;
    CData/*0:0*/ __Vdlyvset__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v0;
    __Vdlyvset__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v0 = 0;
    CData/*0:0*/ __Vdlyvset__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v1;
    __Vdlyvset__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v1 = 0;
    CData/*4:0*/ __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v0;
    __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v0 = 0;
    CData/*7:0*/ __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v0;
    __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v0 = 0;
    CData/*0:0*/ __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v0;
    __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v0 = 0;
    CData/*4:0*/ __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v1;
    __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v1 = 0;
    CData/*7:0*/ __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v1;
    __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v1 = 0;
    CData/*0:0*/ __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v1;
    __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v1 = 0;
    CData/*4:0*/ __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v2;
    __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v2 = 0;
    CData/*7:0*/ __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v2;
    __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v2 = 0;
    CData/*4:0*/ __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v3;
    __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v3 = 0;
    CData/*7:0*/ __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v3;
    __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v3 = 0;
    CData/*0:0*/ __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v3;
    __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v3 = 0;
    CData/*4:0*/ __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v4;
    __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v4 = 0;
    CData/*7:0*/ __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v4;
    __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v4 = 0;
    CData/*4:0*/ __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v5;
    __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v5 = 0;
    CData/*7:0*/ __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v5;
    __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v5 = 0;
    CData/*4:0*/ __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v6;
    __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v6 = 0;
    CData/*7:0*/ __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v6;
    __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v6 = 0;
    CData/*0:0*/ __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v7;
    __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v7 = 0;
    IData/*31:0*/ __Vdly__testbench__DOT__dut__DOT__pc;
    __Vdly__testbench__DOT__dut__DOT__pc = 0;
    // Body
    __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v0 = 0U;
    __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v1 = 0U;
    __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v3 = 0U;
    __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v7 = 0U;
    __Vdly__testbench__DOT__dut__DOT__pc = vlSelf->testbench__DOT__dut__DOT__pc;
    __Vdlyvset__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v0 = 0U;
    __Vdlyvset__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v1 = 0U;
    if (vlSelf->testbench__DOT__nReset) {
        if (vlSelf->testbench__DOT__dut__DOT__writeRam) {
            if ((0U == (7U & (vlSelf->testbench__DOT__dut__DOT__instruction 
                              >> 0xcU)))) {
                __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v0 
                    = (0xffU & vlSelf->testbench__DOT__dut__DOT__rs2);
                __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v0 = 1U;
                __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v0 
                    = (0x1fU & vlSelf->testbench__DOT__dut__DOT__aluResult);
            } else if ((1U == (7U & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                     >> 0xcU)))) {
                __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v1 
                    = (0xffU & (vlSelf->testbench__DOT__dut__DOT__rs2 
                                >> 8U));
                __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v1 = 1U;
                __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v1 
                    = (0x1fU & ((IData)(1U) + vlSelf->testbench__DOT__dut__DOT__aluResult));
                __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v2 
                    = (0xffU & vlSelf->testbench__DOT__dut__DOT__rs2);
                __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v2 
                    = (0x1fU & vlSelf->testbench__DOT__dut__DOT__aluResult);
            } else if ((2U == (7U & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                     >> 0xcU)))) {
                __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v3 
                    = (vlSelf->testbench__DOT__dut__DOT__rs2 
                       >> 0x18U);
                __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v3 = 1U;
                __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v3 
                    = (0x1fU & ((IData)(3U) + vlSelf->testbench__DOT__dut__DOT__aluResult));
                __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v4 
                    = (0xffU & (vlSelf->testbench__DOT__dut__DOT__rs2 
                                >> 0x10U));
                __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v4 
                    = (0x1fU & ((IData)(2U) + vlSelf->testbench__DOT__dut__DOT__aluResult));
                __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v5 
                    = (0xffU & (vlSelf->testbench__DOT__dut__DOT__rs2 
                                >> 8U));
                __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v5 
                    = (0x1fU & ((IData)(1U) + vlSelf->testbench__DOT__dut__DOT__aluResult));
                __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v6 
                    = (0xffU & vlSelf->testbench__DOT__dut__DOT__rs2);
                __Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v6 
                    = (0x1fU & vlSelf->testbench__DOT__dut__DOT__aluResult);
            }
        }
        __Vdly__testbench__DOT__dut__DOT__pc = ((IData)(vlSelf->testbench__DOT__dut__DOT__H)
                                                 ? vlSelf->testbench__DOT__dut__DOT__branchLogicOut
                                                 : 
                                                ((IData)(vlSelf->testbench__DOT__dut__DOT__A)
                                                  ? 
                                                 ((IData)(4U) 
                                                  + vlSelf->testbench__DOT__dut__DOT__pc)
                                                  : 
                                                 (vlSelf->testbench__DOT__dut__DOT__pc 
                                                  + vlSelf->testbench__DOT__dut__DOT__branchLogicOut)));
        if (vlSelf->testbench__DOT__dut__DOT__writeReg) {
            if ((0U != (0x1fU & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                 >> 7U)))) {
                __Vdlyvval__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v0 
                    = ((IData)(vlSelf->testbench__DOT__dut__DOT__C)
                        ? ((IData)(vlSelf->testbench__DOT__dut__DOT__F)
                            ? vlSelf->testbench__DOT__dut__DOT__Eout
                            : ((IData)(4U) + vlSelf->testbench__DOT__dut__DOT__pc))
                        : (0xfffff000U & vlSelf->testbench__DOT__dut__DOT__instruction));
                __Vdlyvset__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v0 = 1U;
                __Vdlyvdim0__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v0 
                    = (0x1fU & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                >> 7U));
            }
        }
    } else {
        __Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v7 = 1U;
        __Vdly__testbench__DOT__dut__DOT__pc = 0U;
        __Vdlyvset__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v1 = 1U;
    }
    if (__Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v0) {
        vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[__Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v0] 
            = __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v0;
    }
    if (__Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v1) {
        vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[__Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v1] 
            = __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v1;
        vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[__Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v2] 
            = __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v2;
    }
    if (__Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v3) {
        vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[__Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v3] 
            = __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v3;
        vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[__Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v4] 
            = __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v4;
        vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[__Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v5] 
            = __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v5;
        vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[__Vdlyvdim0__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v6] 
            = __Vdlyvval__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v6;
    }
    if (__Vdlyvset__testbench__DOT__dut__DOT__ram0__DOT__ramMemory__v7) {
        vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[0U] = 0U;
    }
    if (__Vdlyvset__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v0) {
        vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[__Vdlyvdim0__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v0] 
            = __Vdlyvval__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v0;
    }
    if (__Vdlyvset__testbench__DOT__dut__DOT__regMem0__DOT__regMemory__v1) {
        vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[0U] = 0U;
    }
    vlSelf->testbench__DOT__dut__DOT__pc = __Vdly__testbench__DOT__dut__DOT__pc;
    vlSelf->testbench__DOT__dut__DOT__instruction = 
        ((0xffffff00U & vlSelf->testbench__DOT__dut__DOT__instruction) 
         | ((0x1f4U >= (0x1ffU & ((IData)(3U) + vlSelf->testbench__DOT__dut__DOT__pc)))
             ? vlSelf->testbench__DOT__dut__DOT__progMem0__DOT__programMemory
            [(0x1ffU & ((IData)(3U) + vlSelf->testbench__DOT__dut__DOT__pc))]
             : 0U));
    vlSelf->testbench__DOT__dut__DOT__instruction = 
        ((0xffff00ffU & vlSelf->testbench__DOT__dut__DOT__instruction) 
         | (((0x1f4U >= (0x1ffU & ((IData)(2U) + vlSelf->testbench__DOT__dut__DOT__pc)))
              ? vlSelf->testbench__DOT__dut__DOT__progMem0__DOT__programMemory
             [(0x1ffU & ((IData)(2U) + vlSelf->testbench__DOT__dut__DOT__pc))]
              : 0U) << 8U));
    vlSelf->testbench__DOT__dut__DOT__instruction = 
        ((0xff00ffffU & vlSelf->testbench__DOT__dut__DOT__instruction) 
         | (((0x1f4U >= (0x1ffU & ((IData)(1U) + vlSelf->testbench__DOT__dut__DOT__pc)))
              ? vlSelf->testbench__DOT__dut__DOT__progMem0__DOT__programMemory
             [(0x1ffU & ((IData)(1U) + vlSelf->testbench__DOT__dut__DOT__pc))]
              : 0U) << 0x10U));
    vlSelf->testbench__DOT__dut__DOT__instruction = 
        ((0xffffffU & vlSelf->testbench__DOT__dut__DOT__instruction) 
         | (((0x1f4U >= (0x1ffU & vlSelf->testbench__DOT__dut__DOT__pc))
              ? vlSelf->testbench__DOT__dut__DOT__progMem0__DOT__programMemory
             [(0x1ffU & vlSelf->testbench__DOT__dut__DOT__pc)]
              : 0U) << 0x18U));
    vlSelf->testbench__DOT__dut__DOT__rs2 = vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory
        [(0x1fU & (vlSelf->testbench__DOT__dut__DOT__instruction 
                   >> 0x14U))];
    __Vtableidx1 = ((0x100U & (vlSelf->testbench__DOT__dut__DOT__instruction 
                               >> 0x16U)) | ((0xe0U 
                                              & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                 >> 7U)) 
                                             | (0x1fU 
                                                & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                   >> 2U))));
    vlSelf->testbench__DOT__dut__DOT__writeReg = Vtestbench__ConstPool__TABLE_h7da29fe6_0
        [__Vtableidx1];
    vlSelf->testbench__DOT__dut__DOT__writeRam = Vtestbench__ConstPool__TABLE_h3a2ed9c4_0
        [__Vtableidx1];
    vlSelf->testbench__DOT__dut__DOT__branch = Vtestbench__ConstPool__TABLE_he1ebf836_0
        [__Vtableidx1];
    vlSelf->testbench__DOT__dut__DOT__A = Vtestbench__ConstPool__TABLE_hc32df9cd_0
        [__Vtableidx1];
    vlSelf->testbench__DOT__dut__DOT__B = Vtestbench__ConstPool__TABLE_h9ab1ba15_0
        [__Vtableidx1];
    vlSelf->testbench__DOT__dut__DOT__C = Vtestbench__ConstPool__TABLE_h9527dd95_0
        [__Vtableidx1];
    vlSelf->testbench__DOT__dut__DOT__D = Vtestbench__ConstPool__TABLE_hbdb9ab79_0
        [__Vtableidx1];
    vlSelf->testbench__DOT__dut__DOT__E = Vtestbench__ConstPool__TABLE_hf45643e0_0
        [__Vtableidx1];
    vlSelf->testbench__DOT__dut__DOT__F = Vtestbench__ConstPool__TABLE_hd84d0c72_0
        [__Vtableidx1];
    vlSelf->testbench__DOT__dut__DOT__G = Vtestbench__ConstPool__TABLE_h353effd0_0
        [__Vtableidx1];
    vlSelf->testbench__DOT__dut__DOT__H = Vtestbench__ConstPool__TABLE_h09b44643_0
        [__Vtableidx1];
    vlSelf->testbench__DOT__dut__DOT__aluCode = Vtestbench__ConstPool__TABLE_h2423c59b_0
        [__Vtableidx1];
    vlSelf->testbench__DOT__dut__DOT__immSample = Vtestbench__ConstPool__TABLE_hc6ca4ea2_0
        [__Vtableidx1];
    vlSelf->testbench__DOT__dut__DOT__Gout = ((IData)(vlSelf->testbench__DOT__dut__DOT__G)
                                               ? vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory
                                              [(0x1fU 
                                                & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                   >> 0xfU))]
                                               : vlSelf->testbench__DOT__dut__DOT__pc);
    vlSelf->testbench__DOT__dut__DOT__Dout = ((IData)(vlSelf->testbench__DOT__dut__DOT__D)
                                               ? vlSelf->testbench__DOT__dut__DOT__rs2
                                               : ((4U 
                                                   & (IData)(vlSelf->testbench__DOT__dut__DOT__immSample))
                                                   ? 
                                                  ((2U 
                                                    & (IData)(vlSelf->testbench__DOT__dut__DOT__immSample))
                                                    ? 
                                                   ((1U 
                                                     & (IData)(vlSelf->testbench__DOT__dut__DOT__immSample))
                                                     ? 0U
                                                     : 
                                                    (0xfffff000U 
                                                     & vlSelf->testbench__DOT__dut__DOT__instruction))
                                                    : 
                                                   ((1U 
                                                     & (IData)(vlSelf->testbench__DOT__dut__DOT__immSample))
                                                     ? 
                                                    (((- (IData)(
                                                                 (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                                  >> 0x1fU))) 
                                                      << 0x13U) 
                                                     | ((0x40000U 
                                                         & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                            >> 0xdU)) 
                                                        | ((0x3f800U 
                                                            & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                               >> 3U)) 
                                                           | (0x7feU 
                                                              & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                                 >> 0x14U)))))
                                                     : 
                                                    (((- (IData)(
                                                                 (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                                  >> 0x1fU))) 
                                                      << 0xdU) 
                                                     | ((0x1000U 
                                                         & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                            >> 0x13U)) 
                                                        | ((0x800U 
                                                            & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                               << 4U)) 
                                                           | ((0x7e0U 
                                                               & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                                  >> 0x14U)) 
                                                              | (0x1eU 
                                                                 & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                                    >> 7U))))))))
                                                   : 
                                                  ((2U 
                                                    & (IData)(vlSelf->testbench__DOT__dut__DOT__immSample))
                                                    ? 
                                                   ((1U 
                                                     & (IData)(vlSelf->testbench__DOT__dut__DOT__immSample))
                                                     ? 0U
                                                     : 
                                                    (((- (IData)(
                                                                 (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                                  >> 0x1fU))) 
                                                      << 0xcU) 
                                                     | ((0xfe0U 
                                                         & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                            >> 0x14U)) 
                                                        | (0x1fU 
                                                           & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                              >> 7U)))))
                                                    : 
                                                   ((1U 
                                                     & (IData)(vlSelf->testbench__DOT__dut__DOT__immSample))
                                                     ? 
                                                    (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                     >> 0x14U)
                                                     : 
                                                    (((- (IData)(
                                                                 (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                                  >> 0x1fU))) 
                                                      << 0xcU) 
                                                     | (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                        >> 0x14U))))));
    vlSelf->testbench__DOT__dut__DOT__carryFlag = 0U;
    if ((8U & (IData)(vlSelf->testbench__DOT__dut__DOT__aluCode))) {
        if ((1U & (~ ((IData)(vlSelf->testbench__DOT__dut__DOT__aluCode) 
                      >> 2U)))) {
            if ((1U & (~ ((IData)(vlSelf->testbench__DOT__dut__DOT__aluCode) 
                          >> 1U)))) {
                if ((1U & (~ (IData)(vlSelf->testbench__DOT__dut__DOT__aluCode)))) {
                    vlSelf->testbench__DOT__dut__DOT__carryFlag 
                        = (1U & (IData)((1ULL & ((1ULL 
                                                  + 
                                                  ((QData)((IData)(vlSelf->testbench__DOT__dut__DOT__Gout)) 
                                                   + 
                                                   (~ (QData)((IData)(vlSelf->testbench__DOT__dut__DOT__Dout))))) 
                                                 >> 0x20U))));
                }
            }
        }
        vlSelf->testbench__DOT__dut__DOT__aluResult 
            = ((4U & (IData)(vlSelf->testbench__DOT__dut__DOT__aluCode))
                ? ((2U & (IData)(vlSelf->testbench__DOT__dut__DOT__aluCode))
                    ? 0U : ((1U & (IData)(vlSelf->testbench__DOT__dut__DOT__aluCode))
                             ? VL_SHIFTRS_III(32,32,32, vlSelf->testbench__DOT__dut__DOT__Gout, vlSelf->testbench__DOT__dut__DOT__Dout)
                             : 0U)) : ((2U & (IData)(vlSelf->testbench__DOT__dut__DOT__aluCode))
                                        ? ((1U & (IData)(vlSelf->testbench__DOT__dut__DOT__aluCode))
                                            ? 0U : 
                                           (vlSelf->testbench__DOT__dut__DOT__Gout 
                                            < vlSelf->testbench__DOT__dut__DOT__Dout))
                                        : ((1U & (IData)(vlSelf->testbench__DOT__dut__DOT__aluCode))
                                            ? 0U : 
                                           ((IData)(1U) 
                                            + (vlSelf->testbench__DOT__dut__DOT__Gout 
                                               + (~ vlSelf->testbench__DOT__dut__DOT__Dout))))));
    } else {
        vlSelf->testbench__DOT__dut__DOT__aluResult 
            = ((4U & (IData)(vlSelf->testbench__DOT__dut__DOT__aluCode))
                ? ((2U & (IData)(vlSelf->testbench__DOT__dut__DOT__aluCode))
                    ? ((1U & (IData)(vlSelf->testbench__DOT__dut__DOT__aluCode))
                        ? (vlSelf->testbench__DOT__dut__DOT__Gout 
                           & vlSelf->testbench__DOT__dut__DOT__Dout)
                        : (vlSelf->testbench__DOT__dut__DOT__Gout 
                           | vlSelf->testbench__DOT__dut__DOT__Dout))
                    : ((1U & (IData)(vlSelf->testbench__DOT__dut__DOT__aluCode))
                        ? VL_SHIFTR_III(32,32,32, vlSelf->testbench__DOT__dut__DOT__Gout, vlSelf->testbench__DOT__dut__DOT__Dout)
                        : (vlSelf->testbench__DOT__dut__DOT__Gout 
                           ^ vlSelf->testbench__DOT__dut__DOT__Dout)))
                : ((2U & (IData)(vlSelf->testbench__DOT__dut__DOT__aluCode))
                    ? ((1U & (IData)(vlSelf->testbench__DOT__dut__DOT__aluCode))
                        ? 0U : VL_LTS_III(32, vlSelf->testbench__DOT__dut__DOT__Gout, vlSelf->testbench__DOT__dut__DOT__Dout))
                    : ((1U & (IData)(vlSelf->testbench__DOT__dut__DOT__aluCode))
                        ? VL_SHIFTL_III(32,32,32, vlSelf->testbench__DOT__dut__DOT__Gout, vlSelf->testbench__DOT__dut__DOT__Dout)
                        : (vlSelf->testbench__DOT__dut__DOT__Gout 
                           + vlSelf->testbench__DOT__dut__DOT__Dout))));
    }
    vlSelf->testbench__DOT__dut__DOT__negFlag = 0U;
    vlSelf->testbench__DOT__dut__DOT__zeroFlag = 0U;
    if (VL_GTS_III(32, 0U, vlSelf->testbench__DOT__dut__DOT__aluResult)) {
        vlSelf->testbench__DOT__dut__DOT__negFlag = 1U;
    }
    if ((0U == vlSelf->testbench__DOT__dut__DOT__aluResult)) {
        vlSelf->testbench__DOT__dut__DOT__zeroFlag = 1U;
    }
    vlSelf->testbench__DOT__dut__DOT__ramOut = 0U;
    if ((0x4000U & vlSelf->testbench__DOT__dut__DOT__instruction)) {
        if ((1U & (~ (vlSelf->testbench__DOT__dut__DOT__instruction 
                      >> 0xdU)))) {
            vlSelf->testbench__DOT__dut__DOT__ramOut 
                = ((0x1000U & vlSelf->testbench__DOT__dut__DOT__instruction)
                    ? ((vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory
                        [(0x1fU & ((IData)(1U) + vlSelf->testbench__DOT__dut__DOT__aluResult))] 
                        << 8U) | vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory
                       [(0x1fU & vlSelf->testbench__DOT__dut__DOT__aluResult)])
                    : vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory
                   [(0x1fU & vlSelf->testbench__DOT__dut__DOT__aluResult)]);
        }
    } else if ((0x2000U & vlSelf->testbench__DOT__dut__DOT__instruction)) {
        if ((1U & (~ (vlSelf->testbench__DOT__dut__DOT__instruction 
                      >> 0xcU)))) {
            vlSelf->testbench__DOT__dut__DOT__ramOut 
                = ((vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory
                    [(0x1fU & ((IData)(3U) + vlSelf->testbench__DOT__dut__DOT__aluResult))] 
                    << 0x18U) | ((vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory
                                  [(0x1fU & ((IData)(2U) 
                                             + vlSelf->testbench__DOT__dut__DOT__aluResult))] 
                                  << 0x10U) | ((vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory
                                                [(0x1fU 
                                                  & ((IData)(1U) 
                                                     + vlSelf->testbench__DOT__dut__DOT__aluResult))] 
                                                << 8U) 
                                               | vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory
                                               [(0x1fU 
                                                 & vlSelf->testbench__DOT__dut__DOT__aluResult)])));
        }
    } else {
        vlSelf->testbench__DOT__dut__DOT__ramOut = 
            ((0x1000U & vlSelf->testbench__DOT__dut__DOT__instruction)
              ? (((- (IData)((1U & (vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory
                                    [(0x1fU & ((IData)(1U) 
                                               + vlSelf->testbench__DOT__dut__DOT__aluResult))] 
                                    >> 7U)))) << 0x10U) 
                 | ((vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory
                     [(0x1fU & ((IData)(1U) + vlSelf->testbench__DOT__dut__DOT__aluResult))] 
                     << 8U) | vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory
                    [(0x1fU & vlSelf->testbench__DOT__dut__DOT__aluResult)]))
              : (((- (IData)((1U & (vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory
                                    [(0x1fU & vlSelf->testbench__DOT__dut__DOT__aluResult)] 
                                    >> 7U)))) << 8U) 
                 | vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory
                 [(0x1fU & vlSelf->testbench__DOT__dut__DOT__aluResult)]));
    }
    vlSelf->testbench__DOT__dut__DOT__Eout = ((IData)(vlSelf->testbench__DOT__dut__DOT__E)
                                               ? vlSelf->testbench__DOT__dut__DOT__ramOut
                                               : vlSelf->testbench__DOT__dut__DOT__aluResult);
    vlSelf->testbench__DOT__dut__DOT__Bout = ((IData)(vlSelf->testbench__DOT__dut__DOT__B)
                                               ? vlSelf->testbench__DOT__dut__DOT__Eout
                                               : ((
                                                   (- (IData)(
                                                              (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                               >> 0x1fU))) 
                                                   << 0xdU) 
                                                  | ((0x1000U 
                                                      & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                         >> 0x13U)) 
                                                     | ((0x800U 
                                                         & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                            << 4U)) 
                                                        | ((0x7e0U 
                                                            & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                               >> 0x14U)) 
                                                           | (0x1eU 
                                                              & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                                                 >> 7U)))))));
    if (vlSelf->testbench__DOT__dut__DOT__branch) {
        vlSelf->testbench__DOT__dut__DOT__branchLogicOut = 4U;
        if ((0x4000U & vlSelf->testbench__DOT__dut__DOT__instruction)) {
            if ((0x2000U & vlSelf->testbench__DOT__dut__DOT__instruction)) {
                if ((0x1000U & vlSelf->testbench__DOT__dut__DOT__instruction)) {
                    if ((1U & ((~ (IData)(vlSelf->testbench__DOT__dut__DOT__zeroFlag)) 
                               & (~ (IData)(vlSelf->testbench__DOT__dut__DOT__carryFlag))))) {
                        vlSelf->testbench__DOT__dut__DOT__branchLogicOut 
                            = vlSelf->testbench__DOT__dut__DOT__Bout;
                    }
                } else if (vlSelf->testbench__DOT__dut__DOT__carryFlag) {
                    vlSelf->testbench__DOT__dut__DOT__branchLogicOut 
                        = vlSelf->testbench__DOT__dut__DOT__Bout;
                }
            } else if ((0x1000U & vlSelf->testbench__DOT__dut__DOT__instruction)) {
                if ((1U & ((~ (IData)(vlSelf->testbench__DOT__dut__DOT__zeroFlag)) 
                           & (~ (IData)(vlSelf->testbench__DOT__dut__DOT__negFlag))))) {
                    vlSelf->testbench__DOT__dut__DOT__branchLogicOut 
                        = vlSelf->testbench__DOT__dut__DOT__Bout;
                }
            } else if (vlSelf->testbench__DOT__dut__DOT__negFlag) {
                vlSelf->testbench__DOT__dut__DOT__branchLogicOut 
                    = vlSelf->testbench__DOT__dut__DOT__Bout;
            }
        } else if ((0x2000U & vlSelf->testbench__DOT__dut__DOT__instruction)) {
            vlSelf->testbench__DOT__dut__DOT__branchLogicOut 
                = vlSelf->testbench__DOT__dut__DOT__Bout;
        } else if ((0x1000U & vlSelf->testbench__DOT__dut__DOT__instruction)) {
            if ((1U & (~ (IData)(vlSelf->testbench__DOT__dut__DOT__zeroFlag)))) {
                vlSelf->testbench__DOT__dut__DOT__branchLogicOut 
                    = vlSelf->testbench__DOT__dut__DOT__Bout;
            }
        } else if (vlSelf->testbench__DOT__dut__DOT__zeroFlag) {
            vlSelf->testbench__DOT__dut__DOT__branchLogicOut 
                = vlSelf->testbench__DOT__dut__DOT__Bout;
        }
    } else {
        vlSelf->testbench__DOT__dut__DOT__branchLogicOut 
            = vlSelf->testbench__DOT__dut__DOT__Bout;
    }
}

void Vtestbench___024root___eval_nba(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
    }
}

void Vtestbench___024root___timing_resume(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___timing_resume\n"); );
    // Body
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VdlySched.resume();
    }
}

void Vtestbench___024root___eval_triggers__act(Vtestbench___024root* vlSelf);

bool Vtestbench___024root___eval_phase__act(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<2> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vtestbench___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vtestbench___024root___timing_resume(vlSelf);
        Vtestbench___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vtestbench___024root___eval_phase__nba(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vtestbench___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__nba(Vtestbench___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__act(Vtestbench___024root* vlSelf);
#endif  // VL_DEBUG

void Vtestbench___024root___eval(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vtestbench___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("testbench.sv", 1, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vtestbench___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("testbench.sv", 1, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vtestbench___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vtestbench___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vtestbench___024root___eval_debug_assertions(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG
