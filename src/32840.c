#include "common.h"

u8 D_DA68F0[];
u8 D_DC1620[];
u8 D_E27840[];
u8 gSoundBank0Ctl[];
u8 D_80100000[];

//#pragma GLOBAL_ASM("asm/nonmatchings/32840/func_80031C40.s")
void func_80031C40(void) {
    dma_write(D_DA68F0, D_80100000, D_DC1620 - D_DA68F0);
}

//#pragma GLOBAL_ASM("asm/nonmatchings/32840/func_80031C78.s")
void func_80031C78(void) {
    dma_write(D_DC1620, D_80100000, D_E27840 - D_DC1620);
}

//#pragma GLOBAL_ASM("asm/nonmatchings/32840/func_80031CB0.s")
void func_80031CB0(void) {
    dma_write(D_E27840, D_80100000, gSoundBank0Ctl - D_E27840);
}

