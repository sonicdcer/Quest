.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel guPositionF
/* 35B70 80034F70 3C018007 */  lui        $at, %hi(D_80071B30)
/* 35B74 80034F74 C4201B30 */  lwc1       $f0, %lo(D_80071B30)($at)
/* 35B78 80034F78 44856000 */  mtc1       $a1, $f12
/* 35B7C 80034F7C 44867000 */  mtc1       $a2, $f14
/* 35B80 80034F80 44878000 */  mtc1       $a3, $f16
/* 35B84 80034F84 46006302 */  mul.s      $f12, $f12, $f0
/* 35B88 80034F88 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 35B8C 80034F8C AFBF002C */  sw         $ra, 0x2C($sp)
/* 35B90 80034F90 46007382 */  mul.s      $f14, $f14, $f0
/* 35B94 80034F94 AFB00028 */  sw         $s0, 0x28($sp)
/* 35B98 80034F98 3C018009 */  lui        $at, %hi(D_80095200)
/* 35B9C 80034F9C 46008402 */  mul.s      $f16, $f16, $f0
/* 35BA0 80034FA0 00808025 */  or         $s0, $a0, $zero
/* 35BA4 80034FA4 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 35BA8 80034FA8 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 35BAC 80034FAC E7AE0050 */  swc1       $f14, 0x50($sp)
/* 35BB0 80034FB0 E7AC004C */  swc1       $f12, 0x4C($sp)
/* 35BB4 80034FB4 E4205200 */  swc1       $f0, %lo(D_80095200)($at)
/* 35BB8 80034FB8 0C00D5A0 */  jal        sinf
/* 35BBC 80034FBC E7B00054 */   swc1      $f16, 0x54($sp)
/* 35BC0 80034FC0 C7AC004C */  lwc1       $f12, 0x4C($sp)
/* 35BC4 80034FC4 0C00D87C */  jal        cosf
/* 35BC8 80034FC8 46000506 */   mov.s     $f20, $f0
/* 35BCC 80034FCC 46000586 */  mov.s      $f22, $f0
/* 35BD0 80034FD0 0C00D5A0 */  jal        sinf
/* 35BD4 80034FD4 C7AC0050 */   lwc1      $f12, 0x50($sp)
/* 35BD8 80034FD8 E7A00040 */  swc1       $f0, 0x40($sp)
/* 35BDC 80034FDC 0C00D87C */  jal        cosf
/* 35BE0 80034FE0 C7AC0050 */   lwc1      $f12, 0x50($sp)
/* 35BE4 80034FE4 C7AC0054 */  lwc1       $f12, 0x54($sp)
/* 35BE8 80034FE8 0C00D5A0 */  jal        sinf
/* 35BEC 80034FEC E7A00034 */   swc1      $f0, 0x34($sp)
/* 35BF0 80034FF0 C7AC0054 */  lwc1       $f12, 0x54($sp)
/* 35BF4 80034FF4 0C00D87C */  jal        cosf
/* 35BF8 80034FF8 E7A0003C */   swc1      $f0, 0x3C($sp)
/* 35BFC 80034FFC C7B00034 */  lwc1       $f16, 0x34($sp)
/* 35C00 80035000 C7A20058 */  lwc1       $f2, 0x58($sp)
/* 35C04 80035004 C7AE003C */  lwc1       $f14, 0x3C($sp)
/* 35C08 80035008 46008102 */  mul.s      $f4, $f16, $f0
/* 35C0C 8003500C 44809000 */  mtc1       $zero, $f18
/* 35C10 80035010 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 35C14 80035014 46022182 */  mul.s      $f6, $f4, $f2
/* 35C18 80035018 00000000 */  nop
/* 35C1C 8003501C 460E8202 */  mul.s      $f8, $f16, $f14
/* 35C20 80035020 E6060000 */  swc1       $f6, 0x0($s0)
/* 35C24 80035024 46024282 */  mul.s      $f10, $f8, $f2
/* 35C28 80035028 E60A0004 */  swc1       $f10, 0x4($s0)
/* 35C2C 8003502C C7A40040 */  lwc1       $f4, 0x40($sp)
/* 35C30 80035030 E612000C */  swc1       $f18, 0xC($s0)
/* 35C34 80035034 46002187 */  neg.s      $f6, $f4
/* 35C38 80035038 46023202 */  mul.s      $f8, $f6, $f2
/* 35C3C 8003503C E6080008 */  swc1       $f8, 0x8($s0)
/* 35C40 80035040 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* 35C44 80035044 E612001C */  swc1       $f18, 0x1C($s0)
/* 35C48 80035048 460AA302 */  mul.s      $f12, $f20, $f10
/* 35C4C 8003504C 00000000 */  nop
/* 35C50 80035050 46006102 */  mul.s      $f4, $f12, $f0
/* 35C54 80035054 00000000 */  nop
/* 35C58 80035058 460EB182 */  mul.s      $f6, $f22, $f14
/* 35C5C 8003505C 46062201 */  sub.s      $f8, $f4, $f6
/* 35C60 80035060 46024282 */  mul.s      $f10, $f8, $f2
/* 35C64 80035064 00000000 */  nop
/* 35C68 80035068 460E6102 */  mul.s      $f4, $f12, $f14
/* 35C6C 8003506C 00000000 */  nop
/* 35C70 80035070 4600B182 */  mul.s      $f6, $f22, $f0
/* 35C74 80035074 E60A0010 */  swc1       $f10, 0x10($s0)
/* 35C78 80035078 46062200 */  add.s      $f8, $f4, $f6
/* 35C7C 8003507C 46024282 */  mul.s      $f10, $f8, $f2
/* 35C80 80035080 00000000 */  nop
/* 35C84 80035084 4610A102 */  mul.s      $f4, $f20, $f16
/* 35C88 80035088 E60A0014 */  swc1       $f10, 0x14($s0)
/* 35C8C 8003508C 46022182 */  mul.s      $f6, $f4, $f2
/* 35C90 80035090 E6060018 */  swc1       $f6, 0x18($s0)
/* 35C94 80035094 C7A80040 */  lwc1       $f8, 0x40($sp)
/* 35C98 80035098 E612002C */  swc1       $f18, 0x2C($s0)
/* 35C9C 8003509C 4608B302 */  mul.s      $f12, $f22, $f8
/* 35CA0 800350A0 00000000 */  nop
/* 35CA4 800350A4 46006282 */  mul.s      $f10, $f12, $f0
/* 35CA8 800350A8 00000000 */  nop
/* 35CAC 800350AC 460EA102 */  mul.s      $f4, $f20, $f14
/* 35CB0 800350B0 46045180 */  add.s      $f6, $f10, $f4
/* 35CB4 800350B4 46023202 */  mul.s      $f8, $f6, $f2
/* 35CB8 800350B8 00000000 */  nop
/* 35CBC 800350BC 460E6282 */  mul.s      $f10, $f12, $f14
/* 35CC0 800350C0 00000000 */  nop
/* 35CC4 800350C4 4600A102 */  mul.s      $f4, $f20, $f0
/* 35CC8 800350C8 E6080020 */  swc1       $f8, 0x20($s0)
/* 35CCC 800350CC 46045181 */  sub.s      $f6, $f10, $f4
/* 35CD0 800350D0 46023202 */  mul.s      $f8, $f6, $f2
/* 35CD4 800350D4 00000000 */  nop
/* 35CD8 800350D8 4610B282 */  mul.s      $f10, $f22, $f16
/* 35CDC 800350DC E6080024 */  swc1       $f8, 0x24($s0)
/* 35CE0 800350E0 46025102 */  mul.s      $f4, $f10, $f2
/* 35CE4 800350E4 E6040028 */  swc1       $f4, 0x28($s0)
/* 35CE8 800350E8 C7A6005C */  lwc1       $f6, 0x5C($sp)
/* 35CEC 800350EC 44812000 */  mtc1       $at, $f4
/* 35CF0 800350F0 E6060030 */  swc1       $f6, 0x30($s0)
/* 35CF4 800350F4 C7A80060 */  lwc1       $f8, 0x60($sp)
/* 35CF8 800350F8 E6080034 */  swc1       $f8, 0x34($s0)
/* 35CFC 800350FC C7AA0064 */  lwc1       $f10, 0x64($sp)
/* 35D00 80035100 E604003C */  swc1       $f4, 0x3C($s0)
/* 35D04 80035104 E60A0038 */  swc1       $f10, 0x38($s0)
/* 35D08 80035108 8FBF002C */  lw         $ra, 0x2C($sp)
/* 35D0C 8003510C 8FB00028 */  lw         $s0, 0x28($sp)
/* 35D10 80035110 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 35D14 80035114 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 35D18 80035118 03E00008 */  jr         $ra
/* 35D1C 8003511C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel guPosition
/* 35D20 80035120 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 35D24 80035124 44856000 */  mtc1       $a1, $f12
/* 35D28 80035128 44867000 */  mtc1       $a2, $f14
/* 35D2C 8003512C 44878000 */  mtc1       $a3, $f16
/* 35D30 80035130 C7A40078 */  lwc1       $f4, 0x78($sp)
/* 35D34 80035134 C7A6007C */  lwc1       $f6, 0x7C($sp)
/* 35D38 80035138 C7A80080 */  lwc1       $f8, 0x80($sp)
/* 35D3C 8003513C C7AA0084 */  lwc1       $f10, 0x84($sp)
/* 35D40 80035140 AFBF0024 */  sw         $ra, 0x24($sp)
/* 35D44 80035144 AFA40068 */  sw         $a0, 0x68($sp)
/* 35D48 80035148 44056000 */  mfc1       $a1, $f12
/* 35D4C 8003514C 44067000 */  mfc1       $a2, $f14
/* 35D50 80035150 44078000 */  mfc1       $a3, $f16
/* 35D54 80035154 27A40028 */  addiu      $a0, $sp, 0x28
/* 35D58 80035158 E7A40010 */  swc1       $f4, 0x10($sp)
/* 35D5C 8003515C E7A60014 */  swc1       $f6, 0x14($sp)
/* 35D60 80035160 E7A80018 */  swc1       $f8, 0x18($sp)
/* 35D64 80035164 0C00D3DC */  jal        guPositionF
/* 35D68 80035168 E7AA001C */   swc1      $f10, 0x1C($sp)
/* 35D6C 8003516C 27A40028 */  addiu      $a0, $sp, 0x28
/* 35D70 80035170 0C00D480 */  jal        guMtxF2L
/* 35D74 80035174 8FA50068 */   lw        $a1, 0x68($sp)
/* 35D78 80035178 8FBF0024 */  lw         $ra, 0x24($sp)
/* 35D7C 8003517C 27BD0068 */  addiu      $sp, $sp, 0x68
/* 35D80 80035180 03E00008 */  jr         $ra
/* 35D84 80035184 00000000 */   nop
/* 35D88 80035188 00000000 */  nop
/* 35D8C 8003518C 00000000 */  nop
