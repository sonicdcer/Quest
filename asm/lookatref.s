.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.10.1 */

glabel guLookAtReflectF
/* 36890 80035C90 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 36894 80035C94 AFBF0044 */  sw         $ra, 0x44($sp)
/* 36898 80035C98 F7BE0038 */  sdc1       $f30, 0x38($sp)
/* 3689C 80035C9C F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 368A0 80035CA0 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 368A4 80035CA4 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 368A8 80035CA8 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 368AC 80035CAC F7B40010 */  sdc1       $f20, 0x10($sp)
/* 368B0 80035CB0 AFA60050 */  sw         $a2, 0x50($sp)
/* 368B4 80035CB4 AFA70054 */  sw         $a3, 0x54($sp)
/* 368B8 80035CB8 AFA40048 */  sw         $a0, 0x48($sp)
/* 368BC 80035CBC 0C00D4C0 */  jal        guMtxIdentF
/* 368C0 80035CC0 AFA5004C */   sw        $a1, 0x4C($sp)
/* 368C4 80035CC4 C7A4005C */  lwc1       $f4, 0x5C($sp)
/* 368C8 80035CC8 C7A60050 */  lwc1       $f6, 0x50($sp)
/* 368CC 80035CCC C7A80060 */  lwc1       $f8, 0x60($sp)
/* 368D0 80035CD0 C7AA0054 */  lwc1       $f10, 0x54($sp)
/* 368D4 80035CD4 46062001 */  sub.s      $f0, $f4, $f6
/* 368D8 80035CD8 C7A60058 */  lwc1       $f6, 0x58($sp)
/* 368DC 80035CDC C7A40064 */  lwc1       $f4, 0x64($sp)
/* 368E0 80035CE0 460A4581 */  sub.s      $f22, $f8, $f10
/* 368E4 80035CE4 46000202 */  mul.s      $f8, $f0, $f0
/* 368E8 80035CE8 46000506 */  mov.s      $f20, $f0
/* 368EC 80035CEC 46062601 */  sub.s      $f24, $f4, $f6
/* 368F0 80035CF0 4616B282 */  mul.s      $f10, $f22, $f22
/* 368F4 80035CF4 460A4100 */  add.s      $f4, $f8, $f10
/* 368F8 80035CF8 4618C182 */  mul.s      $f6, $f24, $f24
/* 368FC 80035CFC 0C00D3D8 */  jal        _nsqrtf
/* 36900 80035D00 46062300 */   add.s     $f12, $f4, $f6
/* 36904 80035D04 3C01BFF0 */  lui        $at, (0xBFF00000 >> 16)
/* 36908 80035D08 44814800 */  mtc1       $at, $f9
/* 3690C 80035D0C 44804000 */  mtc1       $zero, $f8
/* 36910 80035D10 460002A1 */  cvt.d.s    $f10, $f0
/* 36914 80035D14 C7A6006C */  lwc1       $f6, 0x6C($sp)
/* 36918 80035D18 462A4103 */  div.d      $f4, $f8, $f10
/* 3691C 80035D1C C7AA0070 */  lwc1       $f10, 0x70($sp)
/* 36920 80035D20 462020A0 */  cvt.s.d    $f2, $f4
/* 36924 80035D24 4602A502 */  mul.s      $f20, $f20, $f2
/* 36928 80035D28 00000000 */  nop
/* 3692C 80035D2C 4602B582 */  mul.s      $f22, $f22, $f2
/* 36930 80035D30 00000000 */  nop
/* 36934 80035D34 4602C602 */  mul.s      $f24, $f24, $f2
/* 36938 80035D38 00000000 */  nop
/* 3693C 80035D3C 46183202 */  mul.s      $f8, $f6, $f24
/* 36940 80035D40 00000000 */  nop
/* 36944 80035D44 46165102 */  mul.s      $f4, $f10, $f22
/* 36948 80035D48 46044681 */  sub.s      $f26, $f8, $f4
/* 3694C 80035D4C 46145202 */  mul.s      $f8, $f10, $f20
/* 36950 80035D50 C7A40068 */  lwc1       $f4, 0x68($sp)
/* 36954 80035D54 46182282 */  mul.s      $f10, $f4, $f24
/* 36958 80035D58 460A4701 */  sub.s      $f28, $f8, $f10
/* 3695C 80035D5C 46162202 */  mul.s      $f8, $f4, $f22
/* 36960 80035D60 00000000 */  nop
/* 36964 80035D64 46143282 */  mul.s      $f10, $f6, $f20
/* 36968 80035D68 460A4781 */  sub.s      $f30, $f8, $f10
/* 3696C 80035D6C 461AD102 */  mul.s      $f4, $f26, $f26
/* 36970 80035D70 00000000 */  nop
/* 36974 80035D74 461CE182 */  mul.s      $f6, $f28, $f28
/* 36978 80035D78 46062200 */  add.s      $f8, $f4, $f6
/* 3697C 80035D7C 461EF282 */  mul.s      $f10, $f30, $f30
/* 36980 80035D80 0C00D3D8 */  jal        _nsqrtf
/* 36984 80035D84 460A4300 */   add.s     $f12, $f8, $f10
/* 36988 80035D88 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 3698C 80035D8C 44812800 */  mtc1       $at, $f5
/* 36990 80035D90 44802000 */  mtc1       $zero, $f4
/* 36994 80035D94 460001A1 */  cvt.d.s    $f6, $f0
/* 36998 80035D98 46262203 */  div.d      $f8, $f4, $f6
/* 3699C 80035D9C 462043A0 */  cvt.s.d    $f14, $f8
/* 369A0 80035DA0 460ED682 */  mul.s      $f26, $f26, $f14
/* 369A4 80035DA4 00000000 */  nop
/* 369A8 80035DA8 460EE702 */  mul.s      $f28, $f28, $f14
/* 369AC 80035DAC 00000000 */  nop
/* 369B0 80035DB0 460EF782 */  mul.s      $f30, $f30, $f14
/* 369B4 80035DB4 00000000 */  nop
/* 369B8 80035DB8 461EB282 */  mul.s      $f10, $f22, $f30
/* 369BC 80035DBC 00000000 */  nop
/* 369C0 80035DC0 461CC102 */  mul.s      $f4, $f24, $f28
/* 369C4 80035DC4 00000000 */  nop
/* 369C8 80035DC8 461AC182 */  mul.s      $f6, $f24, $f26
/* 369CC 80035DCC 00000000 */  nop
/* 369D0 80035DD0 461EA202 */  mul.s      $f8, $f20, $f30
/* 369D4 80035DD4 46045081 */  sub.s      $f2, $f10, $f4
/* 369D8 80035DD8 461CA282 */  mul.s      $f10, $f20, $f28
/* 369DC 80035DDC 00000000 */  nop
/* 369E0 80035DE0 461AB102 */  mul.s      $f4, $f22, $f26
/* 369E4 80035DE4 E7A20068 */  swc1       $f2, 0x68($sp)
/* 369E8 80035DE8 46083401 */  sub.s      $f16, $f6, $f8
/* 369EC 80035DEC 46021182 */  mul.s      $f6, $f2, $f2
/* 369F0 80035DF0 00000000 */  nop
/* 369F4 80035DF4 46108202 */  mul.s      $f8, $f16, $f16
/* 369F8 80035DF8 E7B0006C */  swc1       $f16, 0x6C($sp)
/* 369FC 80035DFC 46045481 */  sub.s      $f18, $f10, $f4
/* 36A00 80035E00 46129102 */  mul.s      $f4, $f18, $f18
/* 36A04 80035E04 46083280 */  add.s      $f10, $f6, $f8
/* 36A08 80035E08 E7B20070 */  swc1       $f18, 0x70($sp)
/* 36A0C 80035E0C 0C00D3D8 */  jal        _nsqrtf
/* 36A10 80035E10 46045300 */   add.s     $f12, $f10, $f4
/* 36A14 80035E14 3C018007 */  lui        $at, %hi(D_80071BA0)
/* 36A18 80035E18 D4221BA0 */  ldc1       $f2, %lo(D_80071BA0)($at)
/* 36A1C 80035E1C 3C014060 */  lui        $at, (0x40600000 >> 16)
/* 36A20 80035E20 44818800 */  mtc1       $at, $f17
/* 36A24 80035E24 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 36A28 80035E28 44813800 */  mtc1       $at, $f7
/* 36A2C 80035E2C 44803000 */  mtc1       $zero, $f6
/* 36A30 80035E30 46000221 */  cvt.d.s    $f8, $f0
/* 36A34 80035E34 C7A40068 */  lwc1       $f4, 0x68($sp)
/* 36A38 80035E38 46283283 */  div.d      $f10, $f6, $f8
/* 36A3C 80035E3C C7A8006C */  lwc1       $f8, 0x6C($sp)
/* 36A40 80035E40 44808000 */  mtc1       $zero, $f16
/* 36A44 80035E44 8FA40048 */  lw         $a0, 0x48($sp)
/* 36A48 80035E48 8FA5004C */  lw         $a1, 0x4C($sp)
/* 36A4C 80035E4C 24020080 */  addiu      $v0, $zero, 0x80
/* 36A50 80035E50 462053A0 */  cvt.s.d    $f14, $f10
/* 36A54 80035E54 460E2182 */  mul.s      $f6, $f4, $f14
/* 36A58 80035E58 C7A40070 */  lwc1       $f4, 0x70($sp)
/* 36A5C 80035E5C 460E4282 */  mul.s      $f10, $f8, $f14
/* 36A60 80035E60 4600D221 */  cvt.d.s    $f8, $f26
/* 36A64 80035E64 E7A60068 */  swc1       $f6, 0x68($sp)
/* 36A68 80035E68 460E2182 */  mul.s      $f6, $f4, $f14
/* 36A6C 80035E6C E7AA006C */  swc1       $f10, 0x6C($sp)
/* 36A70 80035E70 46304302 */  mul.d      $f12, $f8, $f16
/* 36A74 80035E74 E7A60070 */  swc1       $f6, 0x70($sp)
/* 36A78 80035E78 4622603C */  c.lt.d     $f12, $f2
/* 36A7C 80035E7C 00000000 */  nop
/* 36A80 80035E80 45020004 */  bc1fl      .L80035E94
/* 36A84 80035E84 46201006 */   mov.d     $f0, $f2
/* 36A88 80035E88 10000002 */  b          .L80035E94
/* 36A8C 80035E8C 46206006 */   mov.d     $f0, $f12
/* 36A90 80035E90 46201006 */  mov.d      $f0, $f2
.L80035E94:
/* 36A94 80035E94 4600E121 */  cvt.d.s    $f4, $f28
/* 36A98 80035E98 4620028D */  trunc.w.d  $f10, $f0
/* 36A9C 80035E9C 46302302 */  mul.d      $f12, $f4, $f16
/* 36AA0 80035EA0 44185000 */  mfc1       $t8, $f10
/* 36AA4 80035EA4 00000000 */  nop
/* 36AA8 80035EA8 A0B80008 */  sb         $t8, 0x8($a1)
/* 36AAC 80035EAC 4622603C */  c.lt.d     $f12, $f2
/* 36AB0 80035EB0 00000000 */  nop
/* 36AB4 80035EB4 45020004 */  bc1fl      .L80035EC8
/* 36AB8 80035EB8 46201006 */   mov.d     $f0, $f2
/* 36ABC 80035EBC 10000002 */  b          .L80035EC8
/* 36AC0 80035EC0 46206006 */   mov.d     $f0, $f12
/* 36AC4 80035EC4 46201006 */  mov.d      $f0, $f2
.L80035EC8:
/* 36AC8 80035EC8 4600F221 */  cvt.d.s    $f8, $f30
/* 36ACC 80035ECC 4620018D */  trunc.w.d  $f6, $f0
/* 36AD0 80035ED0 46304302 */  mul.d      $f12, $f8, $f16
/* 36AD4 80035ED4 44093000 */  mfc1       $t1, $f6
/* 36AD8 80035ED8 00000000 */  nop
/* 36ADC 80035EDC A0A90009 */  sb         $t1, 0x9($a1)
/* 36AE0 80035EE0 4622603C */  c.lt.d     $f12, $f2
/* 36AE4 80035EE4 00000000 */  nop
/* 36AE8 80035EE8 45020004 */  bc1fl      .L80035EFC
/* 36AEC 80035EEC 46201006 */   mov.d     $f0, $f2
/* 36AF0 80035EF0 10000002 */  b          .L80035EFC
/* 36AF4 80035EF4 46206006 */   mov.d     $f0, $f12
/* 36AF8 80035EF8 46201006 */  mov.d      $f0, $f2
.L80035EFC:
/* 36AFC 80035EFC 4620028D */  trunc.w.d  $f10, $f0
/* 36B00 80035F00 440C5000 */  mfc1       $t4, $f10
/* 36B04 80035F04 00000000 */  nop
/* 36B08 80035F08 A0AC000A */  sb         $t4, 0xA($a1)
/* 36B0C 80035F0C C7A40068 */  lwc1       $f4, 0x68($sp)
/* 36B10 80035F10 460021A1 */  cvt.d.s    $f6, $f4
/* 36B14 80035F14 46303302 */  mul.d      $f12, $f6, $f16
/* 36B18 80035F18 4622603C */  c.lt.d     $f12, $f2
/* 36B1C 80035F1C 00000000 */  nop
/* 36B20 80035F20 45020004 */  bc1fl      .L80035F34
/* 36B24 80035F24 46201006 */   mov.d     $f0, $f2
/* 36B28 80035F28 10000002 */  b          .L80035F34
/* 36B2C 80035F2C 46206006 */   mov.d     $f0, $f12
/* 36B30 80035F30 46201006 */  mov.d      $f0, $f2
.L80035F34:
/* 36B34 80035F34 4620020D */  trunc.w.d  $f8, $f0
/* 36B38 80035F38 440F4000 */  mfc1       $t7, $f8
/* 36B3C 80035F3C 00000000 */  nop
/* 36B40 80035F40 A0AF0018 */  sb         $t7, 0x18($a1)
/* 36B44 80035F44 C7AA006C */  lwc1       $f10, 0x6C($sp)
/* 36B48 80035F48 46005121 */  cvt.d.s    $f4, $f10
/* 36B4C 80035F4C 46302302 */  mul.d      $f12, $f4, $f16
/* 36B50 80035F50 4622603C */  c.lt.d     $f12, $f2
/* 36B54 80035F54 00000000 */  nop
/* 36B58 80035F58 45020004 */  bc1fl      .L80035F6C
/* 36B5C 80035F5C 46201006 */   mov.d     $f0, $f2
/* 36B60 80035F60 10000002 */  b          .L80035F6C
/* 36B64 80035F64 46206006 */   mov.d     $f0, $f12
/* 36B68 80035F68 46201006 */  mov.d      $f0, $f2
.L80035F6C:
/* 36B6C 80035F6C 4620018D */  trunc.w.d  $f6, $f0
/* 36B70 80035F70 44083000 */  mfc1       $t0, $f6
/* 36B74 80035F74 00000000 */  nop
/* 36B78 80035F78 A0A80019 */  sb         $t0, 0x19($a1)
/* 36B7C 80035F7C C7A80070 */  lwc1       $f8, 0x70($sp)
/* 36B80 80035F80 460042A1 */  cvt.d.s    $f10, $f8
/* 36B84 80035F84 46305302 */  mul.d      $f12, $f10, $f16
/* 36B88 80035F88 4622603C */  c.lt.d     $f12, $f2
/* 36B8C 80035F8C 00000000 */  nop
/* 36B90 80035F90 45020004 */  bc1fl      .L80035FA4
/* 36B94 80035F94 46201006 */   mov.d     $f0, $f2
/* 36B98 80035F98 10000002 */  b          .L80035FA4
/* 36B9C 80035F9C 46206006 */   mov.d     $f0, $f12
/* 36BA0 80035FA0 46201006 */  mov.d      $f0, $f2
.L80035FA4:
/* 36BA4 80035FA4 4620010D */  trunc.w.d  $f4, $f0
/* 36BA8 80035FA8 A0A00000 */  sb         $zero, 0x0($a1)
/* 36BAC 80035FAC A0A00001 */  sb         $zero, 0x1($a1)
/* 36BB0 80035FB0 A0A00002 */  sb         $zero, 0x2($a1)
/* 36BB4 80035FB4 440B2000 */  mfc1       $t3, $f4
/* 36BB8 80035FB8 A0A00003 */  sb         $zero, 0x3($a1)
/* 36BBC 80035FBC A0A00004 */  sb         $zero, 0x4($a1)
/* 36BC0 80035FC0 A0A00005 */  sb         $zero, 0x5($a1)
/* 36BC4 80035FC4 A0A00006 */  sb         $zero, 0x6($a1)
/* 36BC8 80035FC8 A0A00007 */  sb         $zero, 0x7($a1)
/* 36BCC 80035FCC A0A00010 */  sb         $zero, 0x10($a1)
/* 36BD0 80035FD0 A0A20011 */  sb         $v0, 0x11($a1)
/* 36BD4 80035FD4 A0A00012 */  sb         $zero, 0x12($a1)
/* 36BD8 80035FD8 A0A00013 */  sb         $zero, 0x13($a1)
/* 36BDC 80035FDC A0A00014 */  sb         $zero, 0x14($a1)
/* 36BE0 80035FE0 A0A20015 */  sb         $v0, 0x15($a1)
/* 36BE4 80035FE4 A0A00016 */  sb         $zero, 0x16($a1)
/* 36BE8 80035FE8 A0A00017 */  sb         $zero, 0x17($a1)
/* 36BEC 80035FEC A0AB001A */  sb         $t3, 0x1A($a1)
/* 36BF0 80035FF0 E49A0000 */  swc1       $f26, 0x0($a0)
/* 36BF4 80035FF4 C7B20050 */  lwc1       $f18, 0x50($sp)
/* 36BF8 80035FF8 C7B00054 */  lwc1       $f16, 0x54($sp)
/* 36BFC 80035FFC C7AE0058 */  lwc1       $f14, 0x58($sp)
/* 36C00 80036000 461A9182 */  mul.s      $f6, $f18, $f26
/* 36C04 80036004 C7A00068 */  lwc1       $f0, 0x68($sp)
/* 36C08 80036008 C7AC006C */  lwc1       $f12, 0x6C($sp)
/* 36C0C 8003600C 461C8202 */  mul.s      $f8, $f16, $f28
/* 36C10 80036010 C7A20070 */  lwc1       $f2, 0x70($sp)
/* 36C14 80036014 E49C0010 */  swc1       $f28, 0x10($a0)
/* 36C18 80036018 461E7102 */  mul.s      $f4, $f14, $f30
/* 36C1C 8003601C E49E0020 */  swc1       $f30, 0x20($a0)
/* 36C20 80036020 E4940008 */  swc1       $f20, 0x8($a0)
/* 36C24 80036024 E4960018 */  swc1       $f22, 0x18($a0)
/* 36C28 80036028 E4980028 */  swc1       $f24, 0x28($a0)
/* 36C2C 8003602C 46083280 */  add.s      $f10, $f6, $f8
/* 36C30 80036030 E4800004 */  swc1       $f0, 0x4($a0)
/* 36C34 80036034 E48C0014 */  swc1       $f12, 0x14($a0)
/* 36C38 80036038 E4820024 */  swc1       $f2, 0x24($a0)
/* 36C3C 8003603C 46045180 */  add.s      $f6, $f10, $f4
/* 36C40 80036040 46009282 */  mul.s      $f10, $f18, $f0
/* 36C44 80036044 44800000 */  mtc1       $zero, $f0
/* 36C48 80036048 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 36C4C 8003604C 460C8102 */  mul.s      $f4, $f16, $f12
/* 36C50 80036050 46003207 */  neg.s      $f8, $f6
/* 36C54 80036054 E4880030 */  swc1       $f8, 0x30($a0)
/* 36C58 80036058 46027202 */  mul.s      $f8, $f14, $f2
/* 36C5C 8003605C 46045180 */  add.s      $f6, $f10, $f4
/* 36C60 80036060 46083280 */  add.s      $f10, $f6, $f8
/* 36C64 80036064 46005107 */  neg.s      $f4, $f10
/* 36C68 80036068 E4840034 */  swc1       $f4, 0x34($a0)
/* 36C6C 8003606C C7A60050 */  lwc1       $f6, 0x50($sp)
/* 36C70 80036070 C7AA0054 */  lwc1       $f10, 0x54($sp)
/* 36C74 80036074 46143202 */  mul.s      $f8, $f6, $f20
/* 36C78 80036078 00000000 */  nop
/* 36C7C 8003607C 46165102 */  mul.s      $f4, $f10, $f22
/* 36C80 80036080 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* 36C84 80036084 E480000C */  swc1       $f0, 0xC($a0)
/* 36C88 80036088 E480001C */  swc1       $f0, 0x1C($a0)
/* 36C8C 8003608C E480002C */  swc1       $f0, 0x2C($a0)
/* 36C90 80036090 46044180 */  add.s      $f6, $f8, $f4
/* 36C94 80036094 46185202 */  mul.s      $f8, $f10, $f24
/* 36C98 80036098 46083100 */  add.s      $f4, $f6, $f8
/* 36C9C 8003609C 44813000 */  mtc1       $at, $f6
/* 36CA0 800360A0 46002287 */  neg.s      $f10, $f4
/* 36CA4 800360A4 E486003C */  swc1       $f6, 0x3C($a0)
/* 36CA8 800360A8 E48A0038 */  swc1       $f10, 0x38($a0)
/* 36CAC 800360AC 8FBF0044 */  lw         $ra, 0x44($sp)
/* 36CB0 800360B0 D7BE0038 */  ldc1       $f30, 0x38($sp)
/* 36CB4 800360B4 D7BC0030 */  ldc1       $f28, 0x30($sp)
/* 36CB8 800360B8 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 36CBC 800360BC D7B80020 */  ldc1       $f24, 0x20($sp)
/* 36CC0 800360C0 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 36CC4 800360C4 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 36CC8 800360C8 03E00008 */  jr         $ra
/* 36CCC 800360CC 27BD0048 */   addiu     $sp, $sp, 0x48

glabel guLookAtReflect
/* 36CD0 800360D0 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 36CD4 800360D4 C7A40088 */  lwc1       $f4, 0x88($sp)
/* 36CD8 800360D8 44866000 */  mtc1       $a2, $f12
/* 36CDC 800360DC 44877000 */  mtc1       $a3, $f14
/* 36CE0 800360E0 E7A40010 */  swc1       $f4, 0x10($sp)
/* 36CE4 800360E4 C7A400A0 */  lwc1       $f4, 0xA0($sp)
/* 36CE8 800360E8 C7A6008C */  lwc1       $f6, 0x8C($sp)
/* 36CEC 800360EC C7A80090 */  lwc1       $f8, 0x90($sp)
/* 36CF0 800360F0 C7AA0094 */  lwc1       $f10, 0x94($sp)
/* 36CF4 800360F4 C7B00098 */  lwc1       $f16, 0x98($sp)
/* 36CF8 800360F8 C7B2009C */  lwc1       $f18, 0x9C($sp)
/* 36CFC 800360FC AFBF0034 */  sw         $ra, 0x34($sp)
/* 36D00 80036100 AFA40078 */  sw         $a0, 0x78($sp)
/* 36D04 80036104 44066000 */  mfc1       $a2, $f12
/* 36D08 80036108 44077000 */  mfc1       $a3, $f14
/* 36D0C 8003610C 27A40038 */  addiu      $a0, $sp, 0x38
/* 36D10 80036110 E7A40028 */  swc1       $f4, 0x28($sp)
/* 36D14 80036114 E7A60014 */  swc1       $f6, 0x14($sp)
/* 36D18 80036118 E7A80018 */  swc1       $f8, 0x18($sp)
/* 36D1C 8003611C E7AA001C */  swc1       $f10, 0x1C($sp)
/* 36D20 80036120 E7B00020 */  swc1       $f16, 0x20($sp)
/* 36D24 80036124 0C00D724 */  jal        guLookAtReflectF
/* 36D28 80036128 E7B20024 */   swc1      $f18, 0x24($sp)
/* 36D2C 8003612C 27A40038 */  addiu      $a0, $sp, 0x38
/* 36D30 80036130 0C00D480 */  jal        guMtxF2L
/* 36D34 80036134 8FA50078 */   lw        $a1, 0x78($sp)
/* 36D38 80036138 8FBF0034 */  lw         $ra, 0x34($sp)
/* 36D3C 8003613C 27BD0078 */  addiu      $sp, $sp, 0x78
/* 36D40 80036140 03E00008 */  jr         $ra
/* 36D44 80036144 00000000 */   nop
/* 36D48 80036148 00000000 */  nop
/* 36D4C 8003614C 00000000 */  nop
