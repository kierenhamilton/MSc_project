// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtestbench__Syms.h"


void Vtestbench___024root__trace_chg_0_sub_0(Vtestbench___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vtestbench___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_chg_0\n"); );
    // Init
    Vtestbench___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtestbench___024root*>(voidSelf);
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vtestbench___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vtestbench___024root__trace_chg_0_sub_0(Vtestbench___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        bufp->chgIData(oldp+0,(vlSelf->testbench__DOT__dut__DOT__instruction),32);
        bufp->chgIData(oldp+1,(vlSelf->testbench__DOT__dut__DOT__pc),32);
        bufp->chgIData(oldp+2,(((IData)(4U) + vlSelf->testbench__DOT__dut__DOT__pc)),32);
        bufp->chgBit(oldp+3,(vlSelf->testbench__DOT__dut__DOT__A));
        bufp->chgBit(oldp+4,(vlSelf->testbench__DOT__dut__DOT__B));
        bufp->chgBit(oldp+5,(vlSelf->testbench__DOT__dut__DOT__C));
        bufp->chgBit(oldp+6,(vlSelf->testbench__DOT__dut__DOT__D));
        bufp->chgBit(oldp+7,(vlSelf->testbench__DOT__dut__DOT__E));
        bufp->chgBit(oldp+8,(vlSelf->testbench__DOT__dut__DOT__F));
        bufp->chgBit(oldp+9,(vlSelf->testbench__DOT__dut__DOT__G));
        bufp->chgBit(oldp+10,(vlSelf->testbench__DOT__dut__DOT__H));
        bufp->chgBit(oldp+11,(vlSelf->testbench__DOT__dut__DOT__branch));
        bufp->chgBit(oldp+12,(vlSelf->testbench__DOT__dut__DOT__writeReg));
        bufp->chgBit(oldp+13,(vlSelf->testbench__DOT__dut__DOT__writeRam));
        bufp->chgCData(oldp+14,(vlSelf->testbench__DOT__dut__DOT__aluCode),4);
        bufp->chgCData(oldp+15,(vlSelf->testbench__DOT__dut__DOT__immSample),3);
        bufp->chgIData(oldp+16,(vlSelf->testbench__DOT__dut__DOT__Bout),32);
        bufp->chgIData(oldp+17,(((IData)(vlSelf->testbench__DOT__dut__DOT__C)
                                  ? ((IData)(vlSelf->testbench__DOT__dut__DOT__F)
                                      ? vlSelf->testbench__DOT__dut__DOT__Eout
                                      : ((IData)(4U) 
                                         + vlSelf->testbench__DOT__dut__DOT__pc))
                                  : (0xfffff000U & vlSelf->testbench__DOT__dut__DOT__instruction))),32);
        bufp->chgIData(oldp+18,(vlSelf->testbench__DOT__dut__DOT__Dout),32);
        bufp->chgIData(oldp+19,(vlSelf->testbench__DOT__dut__DOT__Eout),32);
        bufp->chgIData(oldp+20,(((IData)(vlSelf->testbench__DOT__dut__DOT__F)
                                  ? vlSelf->testbench__DOT__dut__DOT__Eout
                                  : ((IData)(4U) + vlSelf->testbench__DOT__dut__DOT__pc))),32);
        bufp->chgIData(oldp+21,(vlSelf->testbench__DOT__dut__DOT__Gout),32);
        bufp->chgIData(oldp+22,(vlSelf->testbench__DOT__dut__DOT__aluResult),32);
        bufp->chgIData(oldp+23,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory
                                [(0x1fU & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                           >> 0xfU))]),32);
        bufp->chgIData(oldp+24,(vlSelf->testbench__DOT__dut__DOT__rs2),32);
        bufp->chgIData(oldp+25,(vlSelf->testbench__DOT__dut__DOT__ramOut),32);
        bufp->chgIData(oldp+26,(vlSelf->testbench__DOT__dut__DOT__branchLogicOut),32);
        bufp->chgBit(oldp+27,(vlSelf->testbench__DOT__dut__DOT__zeroFlag));
        bufp->chgBit(oldp+28,(vlSelf->testbench__DOT__dut__DOT__negFlag));
        bufp->chgBit(oldp+29,(vlSelf->testbench__DOT__dut__DOT__carryFlag));
        bufp->chgSData(oldp+30,(((0xfe0U & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                            >> 0x14U)) 
                                 | (0x1fU & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                             >> 7U)))),12);
        bufp->chgCData(oldp+31,((7U & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                       >> 0xcU))),3);
        bufp->chgIData(oldp+32,((vlSelf->testbench__DOT__dut__DOT__instruction 
                                 >> 0xcU)),20);
        bufp->chgIData(oldp+33,((vlSelf->testbench__DOT__dut__DOT__instruction 
                                 >> 7U)),25);
        bufp->chgCData(oldp+34,((0x1fU & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                          >> 2U))),5);
        bufp->chgCData(oldp+35,(((8U & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                        >> 0x1bU)) 
                                 | (7U & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                          >> 0xcU)))),4);
        bufp->chgCData(oldp+36,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[0]),8);
        bufp->chgCData(oldp+37,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[1]),8);
        bufp->chgCData(oldp+38,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[2]),8);
        bufp->chgCData(oldp+39,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[3]),8);
        bufp->chgCData(oldp+40,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[4]),8);
        bufp->chgCData(oldp+41,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[5]),8);
        bufp->chgCData(oldp+42,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[6]),8);
        bufp->chgCData(oldp+43,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[7]),8);
        bufp->chgCData(oldp+44,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[8]),8);
        bufp->chgCData(oldp+45,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[9]),8);
        bufp->chgCData(oldp+46,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[10]),8);
        bufp->chgCData(oldp+47,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[11]),8);
        bufp->chgCData(oldp+48,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[12]),8);
        bufp->chgCData(oldp+49,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[13]),8);
        bufp->chgCData(oldp+50,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[14]),8);
        bufp->chgCData(oldp+51,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[15]),8);
        bufp->chgCData(oldp+52,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[16]),8);
        bufp->chgCData(oldp+53,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[17]),8);
        bufp->chgCData(oldp+54,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[18]),8);
        bufp->chgCData(oldp+55,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[19]),8);
        bufp->chgCData(oldp+56,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[20]),8);
        bufp->chgCData(oldp+57,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[21]),8);
        bufp->chgCData(oldp+58,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[22]),8);
        bufp->chgCData(oldp+59,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[23]),8);
        bufp->chgCData(oldp+60,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[24]),8);
        bufp->chgCData(oldp+61,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[25]),8);
        bufp->chgCData(oldp+62,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[26]),8);
        bufp->chgCData(oldp+63,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[27]),8);
        bufp->chgCData(oldp+64,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[28]),8);
        bufp->chgCData(oldp+65,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[29]),8);
        bufp->chgCData(oldp+66,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[30]),8);
        bufp->chgCData(oldp+67,(vlSelf->testbench__DOT__dut__DOT__ram0__DOT__ramMemory[31]),8);
        bufp->chgCData(oldp+68,((0x1fU & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                          >> 7U))),5);
        bufp->chgCData(oldp+69,((0x1fU & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                          >> 0xfU))),5);
        bufp->chgCData(oldp+70,((0x1fU & (vlSelf->testbench__DOT__dut__DOT__instruction 
                                          >> 0x14U))),5);
        bufp->chgIData(oldp+71,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[0]),32);
        bufp->chgIData(oldp+72,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[1]),32);
        bufp->chgIData(oldp+73,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[2]),32);
        bufp->chgIData(oldp+74,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[3]),32);
        bufp->chgIData(oldp+75,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[4]),32);
        bufp->chgIData(oldp+76,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[5]),32);
        bufp->chgIData(oldp+77,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[6]),32);
        bufp->chgIData(oldp+78,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[7]),32);
        bufp->chgIData(oldp+79,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[8]),32);
        bufp->chgIData(oldp+80,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[9]),32);
        bufp->chgIData(oldp+81,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[10]),32);
        bufp->chgIData(oldp+82,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[11]),32);
        bufp->chgIData(oldp+83,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[12]),32);
        bufp->chgIData(oldp+84,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[13]),32);
        bufp->chgIData(oldp+85,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[14]),32);
        bufp->chgIData(oldp+86,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[15]),32);
        bufp->chgIData(oldp+87,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[16]),32);
        bufp->chgIData(oldp+88,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[17]),32);
        bufp->chgIData(oldp+89,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[18]),32);
        bufp->chgIData(oldp+90,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[19]),32);
        bufp->chgIData(oldp+91,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[20]),32);
        bufp->chgIData(oldp+92,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[21]),32);
        bufp->chgIData(oldp+93,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[22]),32);
        bufp->chgIData(oldp+94,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[23]),32);
        bufp->chgIData(oldp+95,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[24]),32);
        bufp->chgIData(oldp+96,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[25]),32);
        bufp->chgIData(oldp+97,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[26]),32);
        bufp->chgIData(oldp+98,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[27]),32);
        bufp->chgIData(oldp+99,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[28]),32);
        bufp->chgIData(oldp+100,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[29]),32);
        bufp->chgIData(oldp+101,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[30]),32);
        bufp->chgIData(oldp+102,(vlSelf->testbench__DOT__dut__DOT__regMem0__DOT__regMemory[31]),32);
    }
    bufp->chgBit(oldp+103,(vlSelf->testbench__DOT__Clock));
    bufp->chgBit(oldp+104,(vlSelf->testbench__DOT__nReset));
}

void Vtestbench___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_cleanup\n"); );
    // Init
    Vtestbench___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtestbench___024root*>(voidSelf);
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
}
