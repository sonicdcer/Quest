.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.12.1 */

glabel sinf
/* 36280 80035680 E7AC0000 */  swc1       $f12, 0x0($sp)
/* 36284 80035684 8FA20000 */  lw         $v0, 0x0($sp)
/* 36288 80035688 C7A40000 */  lwc1       $f4, 0x0($sp)
/* 3628C 8003568C 00021D83 */  sra        $v1, $v0, 22
/* 36290 80035690 306E01FF */  andi       $t6, $v1, 0x1FF
/* 36294 80035694 29C100FF */  slti       $at, $t6, 0xFF
/* 36298 80035698 10200019 */  beqz       $at, .L80035700
/* 3629C 8003569C 01C01825 */   or        $v1, $t6, $zero
/* 362A0 800356A0 29C100E6 */  slti       $at, $t6, 0xE6
/* 362A4 800356A4 14200014 */  bnez       $at, .L800356F8
/* 362A8 800356A8 460020A1 */   cvt.d.s   $f2, $f4
/* 362AC 800356AC 46221302 */  mul.d      $f12, $f2, $f2
/* 362B0 800356B0 3C038007 */  lui        $v1, %hi(D_80071B40)
/* 362B4 800356B4 24631B40 */  addiu      $v1, $v1, %lo(D_80071B40)
/* 362B8 800356B8 D4660020 */  ldc1       $f6, 0x20($v1)
/* 362BC 800356BC D46A0018 */  ldc1       $f10, 0x18($v1)
/* 362C0 800356C0 D4640010 */  ldc1       $f4, 0x10($v1)
/* 362C4 800356C4 462C3202 */  mul.d      $f8, $f6, $f12
/* 362C8 800356C8 462A4400 */  add.d      $f16, $f8, $f10
/* 362CC 800356CC D46A0008 */  ldc1       $f10, 0x8($v1)
/* 362D0 800356D0 462C8482 */  mul.d      $f18, $f16, $f12
/* 362D4 800356D4 46249180 */  add.d      $f6, $f18, $f4
/* 362D8 800356D8 462C3202 */  mul.d      $f8, $f6, $f12
/* 362DC 800356DC 46285380 */  add.d      $f14, $f10, $f8
/* 362E0 800356E0 462C1402 */  mul.d      $f16, $f2, $f12
/* 362E4 800356E4 00000000 */  nop
/* 362E8 800356E8 462E8482 */  mul.d      $f18, $f16, $f14
/* 362EC 800356EC 46229100 */  add.d      $f4, $f18, $f2
/* 362F0 800356F0 03E00008 */  jr         $ra
/* 362F4 800356F4 46202020 */   cvt.s.d   $f0, $f4
.L800356F8:
/* 362F8 800356F8 03E00008 */  jr         $ra
/* 362FC 800356FC C7A00000 */   lwc1      $f0, 0x0($sp)
.L80035700:
/* 36300 80035700 28610136 */  slti       $at, $v1, 0x136
/* 36304 80035704 10200044 */  beqz       $at, .L80035818
/* 36308 80035708 C7A40000 */   lwc1      $f4, 0x0($sp)
/* 3630C 8003570C C7A60000 */  lwc1       $f6, 0x0($sp)
/* 36310 80035710 3C018007 */  lui        $at, %hi(D_80071B68)
/* 36314 80035714 D42A1B68 */  ldc1       $f10, %lo(D_80071B68)($at)
/* 36318 80035718 460030A1 */  cvt.d.s    $f2, $f6
/* 3631C 8003571C 44804800 */  mtc1       $zero, $f9
/* 36320 80035720 462A1002 */  mul.d      $f0, $f2, $f10
/* 36324 80035724 44804000 */  mtc1       $zero, $f8
/* 36328 80035728 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* 3632C 8003572C 4620403E */  c.le.d     $f8, $f0
/* 36330 80035730 00000000 */  nop
/* 36334 80035734 4502000B */  bc1fl      .L80035764
/* 36338 80035738 44813800 */   mtc1      $at, $f7
/* 3633C 8003573C 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* 36340 80035740 44818800 */  mtc1       $at, $f17
/* 36344 80035744 44808000 */  mtc1       $zero, $f16
/* 36348 80035748 00000000 */  nop
/* 3634C 8003574C 46300480 */  add.d      $f18, $f0, $f16
/* 36350 80035750 4620910D */  trunc.w.d  $f4, $f18
/* 36354 80035754 44022000 */  mfc1       $v0, $f4
/* 36358 80035758 10000009 */  b          .L80035780
/* 3635C 8003575C 44828000 */   mtc1      $v0, $f16
/* 36360 80035760 44813800 */  mtc1       $at, $f7
.L80035764:
/* 36364 80035764 44803000 */  mtc1       $zero, $f6
/* 36368 80035768 00000000 */  nop
/* 3636C 8003576C 46260281 */  sub.d      $f10, $f0, $f6
/* 36370 80035770 4620520D */  trunc.w.d  $f8, $f10
/* 36374 80035774 44024000 */  mfc1       $v0, $f8
/* 36378 80035778 00000000 */  nop
/* 3637C 8003577C 44828000 */  mtc1       $v0, $f16
.L80035780:
/* 36380 80035780 3C018007 */  lui        $at, %hi(D_80071B70)
/* 36384 80035784 D4321B70 */  ldc1       $f18, %lo(D_80071B70)($at)
/* 36388 80035788 46808021 */  cvt.d.w    $f0, $f16
/* 3638C 8003578C 3C018007 */  lui        $at, %hi(D_80071B78)
/* 36390 80035790 D4261B78 */  ldc1       $f6, %lo(D_80071B78)($at)
/* 36394 80035794 3C038007 */  lui        $v1, %hi(D_80071B40)
/* 36398 80035798 24631B40 */  addiu      $v1, $v1, %lo(D_80071B40)
/* 3639C 8003579C 46320102 */  mul.d      $f4, $f0, $f18
/* 363A0 800357A0 D4680020 */  ldc1       $f8, 0x20($v1)
/* 363A4 800357A4 D4720018 */  ldc1       $f18, 0x18($v1)
/* 363A8 800357A8 30590001 */  andi       $t9, $v0, 0x1
/* 363AC 800357AC 46260282 */  mul.d      $f10, $f0, $f6
/* 363B0 800357B0 46241081 */  sub.d      $f2, $f2, $f4
/* 363B4 800357B4 462A1081 */  sub.d      $f2, $f2, $f10
/* 363B8 800357B8 D46A0010 */  ldc1       $f10, 0x10($v1)
/* 363BC 800357BC 46221302 */  mul.d      $f12, $f2, $f2
/* 363C0 800357C0 00000000 */  nop
/* 363C4 800357C4 462C4402 */  mul.d      $f16, $f8, $f12
/* 363C8 800357C8 46328100 */  add.d      $f4, $f16, $f18
/* 363CC 800357CC D4720008 */  ldc1       $f18, 0x8($v1)
/* 363D0 800357D0 462C2182 */  mul.d      $f6, $f4, $f12
/* 363D4 800357D4 462A3200 */  add.d      $f8, $f6, $f10
/* 363D8 800357D8 462C4402 */  mul.d      $f16, $f8, $f12
/* 363DC 800357DC 17200007 */  bnez       $t9, .L800357FC
/* 363E0 800357E0 46309380 */   add.d     $f14, $f18, $f16
/* 363E4 800357E4 462C1102 */  mul.d      $f4, $f2, $f12
/* 363E8 800357E8 00000000 */  nop
/* 363EC 800357EC 462E2182 */  mul.d      $f6, $f4, $f14
/* 363F0 800357F0 46223280 */  add.d      $f10, $f6, $f2
/* 363F4 800357F4 03E00008 */  jr         $ra
/* 363F8 800357F8 46205020 */   cvt.s.d   $f0, $f10
.L800357FC:
/* 363FC 800357FC 462C1202 */  mul.d      $f8, $f2, $f12
/* 36400 80035800 00000000 */  nop
/* 36404 80035804 462E4482 */  mul.d      $f18, $f8, $f14
/* 36408 80035808 46229400 */  add.d      $f16, $f18, $f2
/* 3640C 8003580C 46208020 */  cvt.s.d    $f0, $f16
/* 36410 80035810 03E00008 */  jr         $ra
/* 36414 80035814 46000007 */   neg.s     $f0, $f0
.L80035818:
/* 36418 80035818 46042032 */  c.eq.s     $f4, $f4
/* 3641C 8003581C 3C018007 */  lui        $at, %hi(D_80071B80)
/* 36420 80035820 45010004 */  bc1t       .L80035834
/* 36424 80035824 00000000 */   nop
/* 36428 80035828 3C018007 */  lui        $at, %hi(D_80071F10)
/* 3642C 8003582C 03E00008 */  jr         $ra
/* 36430 80035830 C4201F10 */   lwc1      $f0, %lo(D_80071F10)($at)
.L80035834:
/* 36434 80035834 C4201B80 */  lwc1       $f0, %lo(D_80071B80)($at)
/* 36438 80035838 03E00008 */  jr         $ra
/* 3643C 8003583C 00000000 */   nop
