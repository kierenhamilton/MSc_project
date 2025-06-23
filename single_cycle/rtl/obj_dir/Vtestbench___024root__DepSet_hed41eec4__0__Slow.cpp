// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtestbench.h for the primary calling header

#include "Vtestbench__pch.h"
#include "Vtestbench___024root.h"

VL_ATTR_COLD void Vtestbench___024root___eval_static(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vtestbench___024root___eval_final(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__stl(Vtestbench___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vtestbench___024root___eval_phase__stl(Vtestbench___024root* vlSelf);

VL_ATTR_COLD void Vtestbench___024root___eval_settle(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_settle\n"); );
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelf->__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY((0x64U < __VstlIterCount))) {
#ifdef VL_DEBUG
            Vtestbench___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("testbench.sv", 1, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vtestbench___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__stl(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

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

VL_ATTR_COLD void Vtestbench___024root___stl_sequent__TOP__0(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___stl_sequent__TOP__0\n"); );
    // Init
    SData/*8:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    // Body
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

VL_ATTR_COLD void Vtestbench___024root___eval_stl(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vtestbench___024root___stl_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
        vlSelf->__Vm_traceActivity[0U] = 1U;
    }
}

VL_ATTR_COLD void Vtestbench___024root___eval_triggers__stl(Vtestbench___024root* vlSelf);

VL_ATTR_COLD bool Vtestbench___024root___eval_phase__stl(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vtestbench___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vtestbench___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__act(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge testbench.Clock or negedge testbench.nReset)\n");
    }
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 1 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__nba(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge testbench.Clock or negedge testbench.nReset)\n");
    }
    if ((2ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 1 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtestbench___024root___ctor_var_reset(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->testbench__DOT__Clock = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__nReset = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__instruction = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__pc = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__A = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__B = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__C = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__D = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__E = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__F = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__G = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__H = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__branch = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__writeReg = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__writeRam = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__aluCode = VL_RAND_RESET_I(4);
    vlSelf->testbench__DOT__dut__DOT__immSample = VL_RAND_RESET_I(3);
    vlSelf->testbench__DOT__dut__DOT__Bout = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__Dout = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__Eout = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__Gout = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__aluResult = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__rs2 = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__ramOut = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__branchLogicOut = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__zeroFlag = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__negFlag = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__carryFlag = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 32; ++__Vi0) {
        vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[__Vi0] = VL_RAND_RESET_I(32);
    }
    for (int __Vi0 = 0; __Vi0 < 32; ++__Vi0) {
        vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[__Vi0] = VL_RAND_RESET_I(8);
    }
    for (int __Vi0 = 0; __Vi0 < 501; ++__Vi0) {
        vlSelf->testbench__DOT__dut__DOT__progMem0__DOT__programMemory[__Vi0] = VL_RAND_RESET_I(8);
    }
    vlSelf->__Vtrigprevexpr___TOP__testbench__DOT__Clock__0 = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP__testbench__DOT__nReset__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
