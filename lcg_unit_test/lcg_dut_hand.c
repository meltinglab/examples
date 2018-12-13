#include "lcg_dut_hand.h"

uint32_t A = 1664525U;
uint32_t B = 1013904223U;    

uint32_t lcg_dut_hand(uint32_t x)
{
    return A*x + B;
}