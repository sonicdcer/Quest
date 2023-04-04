.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.12.1 */

glabel osMotorStop
/* 3AC00 8003A000 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 3AC04 8003A004 AFA40050 */  sw         $a0, 0x50($sp)
/* 3AC08 8003A008 8FAF0050 */  lw         $t7, 0x50($sp)
/* 3AC0C 8003A00C 3C0E8009 */  lui        $t6, %hi(__osPfsPifRam)
/* 3AC10 8003A010 25CE5660 */  addiu      $t6, $t6, %lo(__osPfsPifRam)
/* 3AC14 8003A014 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3AC18 8003A018 AFAE0044 */  sw         $t6, 0x44($sp)
/* 3AC1C 8003A01C 8DF80008 */  lw         $t8, 0x8($t7)
/* 3AC20 8003A020 3C088007 */  lui        $t0, %hi(D_800709B0)
/* 3AC24 8003A024 0018C880 */  sll        $t9, $t8, 2
/* 3AC28 8003A028 01194021 */  addu       $t0, $t0, $t9
/* 3AC2C 8003A02C 8D0809B0 */  lw         $t0, %lo(D_800709B0)($t0)
/* 3AC30 8003A030 15000003 */  bnez       $t0, .L8003A040
/* 3AC34 8003A034 00000000 */   nop
/* 3AC38 8003A038 10000055 */  b          .L8003A190
/* 3AC3C 8003A03C 24020005 */   addiu     $v0, $zero, 0x5
.L8003A040:
/* 3AC40 8003A040 0C011210 */  jal        __osSiGetAccess
/* 3AC44 8003A044 00000000 */   nop
/* 3AC48 8003A048 8FAA0050 */  lw         $t2, 0x50($sp)
/* 3AC4C 8003A04C 24090003 */  addiu      $t1, $zero, 0x3
/* 3AC50 8003A050 3C018009 */  lui        $at, %hi(__osContLastCmd)
/* 3AC54 8003A054 A0295490 */  sb         $t1, %lo(__osContLastCmd)($at)
/* 3AC58 8003A058 8D4B0008 */  lw         $t3, 0x8($t2)
/* 3AC5C 8003A05C 3C0D8009 */  lui        $t5, %hi(D_80095210)
/* 3AC60 8003A060 25AD5210 */  addiu      $t5, $t5, %lo(D_80095210)
/* 3AC64 8003A064 000B6180 */  sll        $t4, $t3, 6
/* 3AC68 8003A068 018D2821 */  addu       $a1, $t4, $t5
/* 3AC6C 8003A06C 0C011A54 */  jal        __osSiRawStartDma
/* 3AC70 8003A070 24040001 */   addiu     $a0, $zero, 0x1
/* 3AC74 8003A074 8FAE0050 */  lw         $t6, 0x50($sp)
/* 3AC78 8003A078 00002825 */  or         $a1, $zero, $zero
/* 3AC7C 8003A07C 24060001 */  addiu      $a2, $zero, 0x1
/* 3AC80 8003A080 0C00D008 */  jal        osRecvMesg
/* 3AC84 8003A084 8DC40004 */   lw        $a0, 0x4($t6)
/* 3AC88 8003A088 3C058009 */  lui        $a1, %hi(__osPfsPifRam)
/* 3AC8C 8003A08C 24A55660 */  addiu      $a1, $a1, %lo(__osPfsPifRam)
/* 3AC90 8003A090 0C011A54 */  jal        __osSiRawStartDma
/* 3AC94 8003A094 00002025 */   or        $a0, $zero, $zero
/* 3AC98 8003A098 8FAF0050 */  lw         $t7, 0x50($sp)
/* 3AC9C 8003A09C AFA20048 */  sw         $v0, 0x48($sp)
/* 3ACA0 8003A0A0 00002825 */  or         $a1, $zero, $zero
/* 3ACA4 8003A0A4 24060001 */  addiu      $a2, $zero, 0x1
/* 3ACA8 8003A0A8 0C00D008 */  jal        osRecvMesg
/* 3ACAC 8003A0AC 8DE40004 */   lw        $a0, 0x4($t7)
/* 3ACB0 8003A0B0 8FB90050 */  lw         $t9, 0x50($sp)
/* 3ACB4 8003A0B4 3C188009 */  lui        $t8, %hi(__osPfsPifRam)
/* 3ACB8 8003A0B8 27185660 */  addiu      $t8, $t8, %lo(__osPfsPifRam)
/* 3ACBC 8003A0BC AFB80044 */  sw         $t8, 0x44($sp)
/* 3ACC0 8003A0C0 8F280008 */  lw         $t0, 0x8($t9)
/* 3ACC4 8003A0C4 11000010 */  beqz       $t0, .L8003A108
/* 3ACC8 8003A0C8 00000000 */   nop
/* 3ACCC 8003A0CC AFA0004C */  sw         $zero, 0x4C($sp)
/* 3ACD0 8003A0D0 8F290008 */  lw         $t1, 0x8($t9)
/* 3ACD4 8003A0D4 1920000C */  blez       $t1, .L8003A108
/* 3ACD8 8003A0D8 00000000 */   nop
.L8003A0DC:
/* 3ACDC 8003A0DC 8FAC004C */  lw         $t4, 0x4C($sp)
/* 3ACE0 8003A0E0 8FAA0044 */  lw         $t2, 0x44($sp)
/* 3ACE4 8003A0E4 8FAE0050 */  lw         $t6, 0x50($sp)
/* 3ACE8 8003A0E8 258D0001 */  addiu      $t5, $t4, 0x1
/* 3ACEC 8003A0EC 254B0001 */  addiu      $t3, $t2, 0x1
/* 3ACF0 8003A0F0 AFAD004C */  sw         $t5, 0x4C($sp)
/* 3ACF4 8003A0F4 AFAB0044 */  sw         $t3, 0x44($sp)
/* 3ACF8 8003A0F8 8DCF0008 */  lw         $t7, 0x8($t6)
/* 3ACFC 8003A0FC 01AF082A */  slt        $at, $t5, $t7
/* 3AD00 8003A100 1420FFF6 */  bnez       $at, .L8003A0DC
/* 3AD04 8003A104 00000000 */   nop
.L8003A108:
/* 3AD08 8003A108 8FA80044 */  lw         $t0, 0x44($sp)
/* 3AD0C 8003A10C 27B8001C */  addiu      $t8, $sp, 0x1C
/* 3AD10 8003A110 25090024 */  addiu      $t1, $t0, 0x24
.L8003A114:
/* 3AD14 8003A114 89010000 */  lwl        $at, 0x0($t0)
/* 3AD18 8003A118 99010003 */  lwr        $at, 0x3($t0)
/* 3AD1C 8003A11C 2508000C */  addiu      $t0, $t0, 0xC
/* 3AD20 8003A120 2718000C */  addiu      $t8, $t8, 0xC
/* 3AD24 8003A124 AF01FFF4 */  sw         $at, -0xC($t8)
/* 3AD28 8003A128 8901FFF8 */  lwl        $at, -0x8($t0)
/* 3AD2C 8003A12C 9901FFFB */  lwr        $at, -0x5($t0)
/* 3AD30 8003A130 AF01FFF8 */  sw         $at, -0x8($t8)
/* 3AD34 8003A134 8901FFFC */  lwl        $at, -0x4($t0)
/* 3AD38 8003A138 9901FFFF */  lwr        $at, -0x1($t0)
/* 3AD3C 8003A13C 1509FFF5 */  bne        $t0, $t1, .L8003A114
/* 3AD40 8003A140 AF01FFFC */   sw        $at, -0x4($t8)
/* 3AD44 8003A144 89010000 */  lwl        $at, 0x0($t0)
/* 3AD48 8003A148 99010003 */  lwr        $at, 0x3($t0)
/* 3AD4C 8003A14C AF010000 */  sw         $at, 0x0($t8)
/* 3AD50 8003A150 93AA001E */  lbu        $t2, 0x1E($sp)
/* 3AD54 8003A154 314B00C0 */  andi       $t3, $t2, 0xC0
/* 3AD58 8003A158 000B6103 */  sra        $t4, $t3, 4
/* 3AD5C 8003A15C 15800009 */  bnez       $t4, .L8003A184
/* 3AD60 8003A160 AFAC0048 */   sw        $t4, 0x48($sp)
/* 3AD64 8003A164 3C048009 */  lui        $a0, %hi(D_80095410)
/* 3AD68 8003A168 0C011AAC */  jal        __osContDataCrc
/* 3AD6C 8003A16C 24845410 */   addiu     $a0, $a0, %lo(D_80095410)
/* 3AD70 8003A170 93AE0042 */  lbu        $t6, 0x42($sp)
/* 3AD74 8003A174 104E0003 */  beq        $v0, $t6, .L8003A184
/* 3AD78 8003A178 00000000 */   nop
/* 3AD7C 8003A17C 240D0004 */  addiu      $t5, $zero, 0x4
/* 3AD80 8003A180 AFAD0048 */  sw         $t5, 0x48($sp)
.L8003A184:
/* 3AD84 8003A184 0C011221 */  jal        __osSiRelAccess
/* 3AD88 8003A188 00000000 */   nop
/* 3AD8C 8003A18C 8FA20048 */  lw         $v0, 0x48($sp)
.L8003A190:
/* 3AD90 8003A190 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3AD94 8003A194 27BD0050 */  addiu      $sp, $sp, 0x50
/* 3AD98 8003A198 03E00008 */  jr         $ra
/* 3AD9C 8003A19C 00000000 */   nop

glabel osMotorStart
/* 3ADA0 8003A1A0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 3ADA4 8003A1A4 AFA40050 */  sw         $a0, 0x50($sp)
/* 3ADA8 8003A1A8 8FAF0050 */  lw         $t7, 0x50($sp)
/* 3ADAC 8003A1AC 3C0E8009 */  lui        $t6, %hi(__osPfsPifRam)
/* 3ADB0 8003A1B0 25CE5660 */  addiu      $t6, $t6, %lo(__osPfsPifRam)
/* 3ADB4 8003A1B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3ADB8 8003A1B8 AFAE0044 */  sw         $t6, 0x44($sp)
/* 3ADBC 8003A1BC 8DF80008 */  lw         $t8, 0x8($t7)
/* 3ADC0 8003A1C0 3C088007 */  lui        $t0, %hi(D_800709B0)
/* 3ADC4 8003A1C4 0018C880 */  sll        $t9, $t8, 2
/* 3ADC8 8003A1C8 01194021 */  addu       $t0, $t0, $t9
/* 3ADCC 8003A1CC 8D0809B0 */  lw         $t0, %lo(D_800709B0)($t0)
/* 3ADD0 8003A1D0 15000003 */  bnez       $t0, .L8003A1E0
/* 3ADD4 8003A1D4 00000000 */   nop
/* 3ADD8 8003A1D8 10000055 */  b          .L8003A330
/* 3ADDC 8003A1DC 24020005 */   addiu     $v0, $zero, 0x5
.L8003A1E0:
/* 3ADE0 8003A1E0 0C011210 */  jal        __osSiGetAccess
/* 3ADE4 8003A1E4 00000000 */   nop
/* 3ADE8 8003A1E8 8FAA0050 */  lw         $t2, 0x50($sp)
/* 3ADEC 8003A1EC 24090003 */  addiu      $t1, $zero, 0x3
/* 3ADF0 8003A1F0 3C018009 */  lui        $at, %hi(__osContLastCmd)
/* 3ADF4 8003A1F4 A0295490 */  sb         $t1, %lo(__osContLastCmd)($at)
/* 3ADF8 8003A1F8 8D4B0008 */  lw         $t3, 0x8($t2)
/* 3ADFC 8003A1FC 3C0D8009 */  lui        $t5, %hi(D_80095310)
/* 3AE00 8003A200 25AD5310 */  addiu      $t5, $t5, %lo(D_80095310)
/* 3AE04 8003A204 000B6180 */  sll        $t4, $t3, 6
/* 3AE08 8003A208 018D2821 */  addu       $a1, $t4, $t5
/* 3AE0C 8003A20C 0C011A54 */  jal        __osSiRawStartDma
/* 3AE10 8003A210 24040001 */   addiu     $a0, $zero, 0x1
/* 3AE14 8003A214 8FAE0050 */  lw         $t6, 0x50($sp)
/* 3AE18 8003A218 00002825 */  or         $a1, $zero, $zero
/* 3AE1C 8003A21C 24060001 */  addiu      $a2, $zero, 0x1
/* 3AE20 8003A220 0C00D008 */  jal        osRecvMesg
/* 3AE24 8003A224 8DC40004 */   lw        $a0, 0x4($t6)
/* 3AE28 8003A228 3C058009 */  lui        $a1, %hi(__osPfsPifRam)
/* 3AE2C 8003A22C 24A55660 */  addiu      $a1, $a1, %lo(__osPfsPifRam)
/* 3AE30 8003A230 0C011A54 */  jal        __osSiRawStartDma
/* 3AE34 8003A234 00002025 */   or        $a0, $zero, $zero
/* 3AE38 8003A238 8FAF0050 */  lw         $t7, 0x50($sp)
/* 3AE3C 8003A23C AFA20048 */  sw         $v0, 0x48($sp)
/* 3AE40 8003A240 00002825 */  or         $a1, $zero, $zero
/* 3AE44 8003A244 24060001 */  addiu      $a2, $zero, 0x1
/* 3AE48 8003A248 0C00D008 */  jal        osRecvMesg
/* 3AE4C 8003A24C 8DE40004 */   lw        $a0, 0x4($t7)
/* 3AE50 8003A250 8FB90050 */  lw         $t9, 0x50($sp)
/* 3AE54 8003A254 3C188009 */  lui        $t8, %hi(__osPfsPifRam)
/* 3AE58 8003A258 27185660 */  addiu      $t8, $t8, %lo(__osPfsPifRam)
/* 3AE5C 8003A25C AFB80044 */  sw         $t8, 0x44($sp)
/* 3AE60 8003A260 8F280008 */  lw         $t0, 0x8($t9)
/* 3AE64 8003A264 11000010 */  beqz       $t0, .L8003A2A8
/* 3AE68 8003A268 00000000 */   nop
/* 3AE6C 8003A26C AFA0004C */  sw         $zero, 0x4C($sp)
/* 3AE70 8003A270 8F290008 */  lw         $t1, 0x8($t9)
/* 3AE74 8003A274 1920000C */  blez       $t1, .L8003A2A8
/* 3AE78 8003A278 00000000 */   nop
.L8003A27C:
/* 3AE7C 8003A27C 8FAC004C */  lw         $t4, 0x4C($sp)
/* 3AE80 8003A280 8FAA0044 */  lw         $t2, 0x44($sp)
/* 3AE84 8003A284 8FAE0050 */  lw         $t6, 0x50($sp)
/* 3AE88 8003A288 258D0001 */  addiu      $t5, $t4, 0x1
/* 3AE8C 8003A28C 254B0001 */  addiu      $t3, $t2, 0x1
/* 3AE90 8003A290 AFAD004C */  sw         $t5, 0x4C($sp)
/* 3AE94 8003A294 AFAB0044 */  sw         $t3, 0x44($sp)
/* 3AE98 8003A298 8DCF0008 */  lw         $t7, 0x8($t6)
/* 3AE9C 8003A29C 01AF082A */  slt        $at, $t5, $t7
/* 3AEA0 8003A2A0 1420FFF6 */  bnez       $at, .L8003A27C
/* 3AEA4 8003A2A4 00000000 */   nop
.L8003A2A8:
/* 3AEA8 8003A2A8 8FA80044 */  lw         $t0, 0x44($sp)
/* 3AEAC 8003A2AC 27B8001C */  addiu      $t8, $sp, 0x1C
/* 3AEB0 8003A2B0 25090024 */  addiu      $t1, $t0, 0x24
.L8003A2B4:
/* 3AEB4 8003A2B4 89010000 */  lwl        $at, 0x0($t0)
/* 3AEB8 8003A2B8 99010003 */  lwr        $at, 0x3($t0)
/* 3AEBC 8003A2BC 2508000C */  addiu      $t0, $t0, 0xC
/* 3AEC0 8003A2C0 2718000C */  addiu      $t8, $t8, 0xC
/* 3AEC4 8003A2C4 AF01FFF4 */  sw         $at, -0xC($t8)
/* 3AEC8 8003A2C8 8901FFF8 */  lwl        $at, -0x8($t0)
/* 3AECC 8003A2CC 9901FFFB */  lwr        $at, -0x5($t0)
/* 3AED0 8003A2D0 AF01FFF8 */  sw         $at, -0x8($t8)
/* 3AED4 8003A2D4 8901FFFC */  lwl        $at, -0x4($t0)
/* 3AED8 8003A2D8 9901FFFF */  lwr        $at, -0x1($t0)
/* 3AEDC 8003A2DC 1509FFF5 */  bne        $t0, $t1, .L8003A2B4
/* 3AEE0 8003A2E0 AF01FFFC */   sw        $at, -0x4($t8)
/* 3AEE4 8003A2E4 89010000 */  lwl        $at, 0x0($t0)
/* 3AEE8 8003A2E8 99010003 */  lwr        $at, 0x3($t0)
/* 3AEEC 8003A2EC AF010000 */  sw         $at, 0x0($t8)
/* 3AEF0 8003A2F0 93AA001E */  lbu        $t2, 0x1E($sp)
/* 3AEF4 8003A2F4 314B00C0 */  andi       $t3, $t2, 0xC0
/* 3AEF8 8003A2F8 000B6103 */  sra        $t4, $t3, 4
/* 3AEFC 8003A2FC 15800009 */  bnez       $t4, .L8003A324
/* 3AF00 8003A300 AFAC0048 */   sw        $t4, 0x48($sp)
/* 3AF04 8003A304 3C048009 */  lui        $a0, %hi(D_80095430)
/* 3AF08 8003A308 0C011AAC */  jal        __osContDataCrc
/* 3AF0C 8003A30C 24845430 */   addiu     $a0, $a0, %lo(D_80095430)
/* 3AF10 8003A310 93AE0042 */  lbu        $t6, 0x42($sp)
/* 3AF14 8003A314 104E0003 */  beq        $v0, $t6, .L8003A324
/* 3AF18 8003A318 00000000 */   nop
/* 3AF1C 8003A31C 240D0004 */  addiu      $t5, $zero, 0x4
/* 3AF20 8003A320 AFAD0048 */  sw         $t5, 0x48($sp)
.L8003A324:
/* 3AF24 8003A324 0C011221 */  jal        __osSiRelAccess
/* 3AF28 8003A328 00000000 */   nop
/* 3AF2C 8003A32C 8FA20048 */  lw         $v0, 0x48($sp)
.L8003A330:
/* 3AF30 8003A330 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3AF34 8003A334 27BD0050 */  addiu      $sp, $sp, 0x50
/* 3AF38 8003A338 03E00008 */  jr         $ra
/* 3AF3C 8003A33C 00000000 */   nop

glabel _MakeMotorData
/* 3AF40 8003A340 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 3AF44 8003A344 AFA70054 */  sw         $a3, 0x54($sp)
/* 3AF48 8003A348 8FAE0054 */  lw         $t6, 0x54($sp)
/* 3AF4C 8003A34C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3AF50 8003A350 AFA40048 */  sw         $a0, 0x48($sp)
/* 3AF54 8003A354 AFA5004C */  sw         $a1, 0x4C($sp)
/* 3AF58 8003A358 AFA60050 */  sw         $a2, 0x50($sp)
/* 3AF5C 8003A35C AFA00018 */  sw         $zero, 0x18($sp)
/* 3AF60 8003A360 AFAE0044 */  sw         $t6, 0x44($sp)
.L8003A364:
/* 3AF64 8003A364 8FB80018 */  lw         $t8, 0x18($sp)
/* 3AF68 8003A368 8FAF0054 */  lw         $t7, 0x54($sp)
/* 3AF6C 8003A36C 0018C880 */  sll        $t9, $t8, 2
/* 3AF70 8003A370 01F94021 */  addu       $t0, $t7, $t9
/* 3AF74 8003A374 AD000000 */  sw         $zero, 0x0($t0)
/* 3AF78 8003A378 8FA90018 */  lw         $t1, 0x18($sp)
/* 3AF7C 8003A37C 252A0001 */  addiu      $t2, $t1, 0x1
/* 3AF80 8003A380 2941000F */  slti       $at, $t2, 0xF
/* 3AF84 8003A384 1420FFF7 */  bnez       $at, .L8003A364
/* 3AF88 8003A388 AFAA0018 */   sw        $t2, 0x18($sp)
/* 3AF8C 8003A38C 8FAC0054 */  lw         $t4, 0x54($sp)
/* 3AF90 8003A390 240B0001 */  addiu      $t3, $zero, 0x1
/* 3AF94 8003A394 240D00FF */  addiu      $t5, $zero, 0xFF
/* 3AF98 8003A398 AD8B003C */  sw         $t3, 0x3C($t4)
/* 3AF9C 8003A39C 240E0023 */  addiu      $t6, $zero, 0x23
/* 3AFA0 8003A3A0 24180001 */  addiu      $t8, $zero, 0x1
/* 3AFA4 8003A3A4 240F0003 */  addiu      $t7, $zero, 0x3
/* 3AFA8 8003A3A8 A3AD001C */  sb         $t5, 0x1C($sp)
/* 3AFAC 8003A3AC A3AE001D */  sb         $t6, 0x1D($sp)
/* 3AFB0 8003A3B0 A3B8001E */  sb         $t8, 0x1E($sp)
/* 3AFB4 8003A3B4 A3AF001F */  sb         $t7, 0x1F($sp)
/* 3AFB8 8003A3B8 0C011A80 */  jal        __osContAddressCrc
/* 3AFBC 8003A3BC 97A4004E */   lhu       $a0, 0x4E($sp)
/* 3AFC0 8003A3C0 97B9004E */  lhu        $t9, 0x4E($sp)
/* 3AFC4 8003A3C4 240A00FF */  addiu      $t2, $zero, 0xFF
/* 3AFC8 8003A3C8 A3AA0042 */  sb         $t2, 0x42($sp)
/* 3AFCC 8003A3CC 00194140 */  sll        $t0, $t9, 5
/* 3AFD0 8003A3D0 00484825 */  or         $t1, $v0, $t0
/* 3AFD4 8003A3D4 A7A90020 */  sh         $t1, 0x20($sp)
/* 3AFD8 8003A3D8 AFA00018 */  sw         $zero, 0x18($sp)
.L8003A3DC:
/* 3AFDC 8003A3DC 8FAB0050 */  lw         $t3, 0x50($sp)
/* 3AFE0 8003A3E0 8FAD0018 */  lw         $t5, 0x18($sp)
/* 3AFE4 8003A3E4 916C0000 */  lbu        $t4, 0x0($t3)
/* 3AFE8 8003A3E8 03AD7021 */  addu       $t6, $sp, $t5
/* 3AFEC 8003A3EC A1CC0022 */  sb         $t4, 0x22($t6)
/* 3AFF0 8003A3F0 8FB90018 */  lw         $t9, 0x18($sp)
/* 3AFF4 8003A3F4 8FB80050 */  lw         $t8, 0x50($sp)
/* 3AFF8 8003A3F8 27280001 */  addiu      $t0, $t9, 0x1
/* 3AFFC 8003A3FC 29010020 */  slti       $at, $t0, 0x20
/* 3B000 8003A400 270F0001 */  addiu      $t7, $t8, 0x1
/* 3B004 8003A404 AFA80018 */  sw         $t0, 0x18($sp)
/* 3B008 8003A408 1420FFF4 */  bnez       $at, .L8003A3DC
/* 3B00C 8003A40C AFAF0050 */   sw        $t7, 0x50($sp)
/* 3B010 8003A410 8FA90048 */  lw         $t1, 0x48($sp)
/* 3B014 8003A414 1120000E */  beqz       $t1, .L8003A450
/* 3B018 8003A418 00000000 */   nop
/* 3B01C 8003A41C 1920000C */  blez       $t1, .L8003A450
/* 3B020 8003A420 AFA00018 */   sw        $zero, 0x18($sp)
.L8003A424:
/* 3B024 8003A424 8FAA0044 */  lw         $t2, 0x44($sp)
/* 3B028 8003A428 A1400000 */  sb         $zero, 0x0($t2)
/* 3B02C 8003A42C 8FAD0018 */  lw         $t5, 0x18($sp)
/* 3B030 8003A430 8FB80048 */  lw         $t8, 0x48($sp)
/* 3B034 8003A434 8FAB0044 */  lw         $t3, 0x44($sp)
/* 3B038 8003A438 25AE0001 */  addiu      $t6, $t5, 0x1
/* 3B03C 8003A43C 01D8082A */  slt        $at, $t6, $t8
/* 3B040 8003A440 256C0001 */  addiu      $t4, $t3, 0x1
/* 3B044 8003A444 AFAE0018 */  sw         $t6, 0x18($sp)
/* 3B048 8003A448 1420FFF6 */  bnez       $at, .L8003A424
/* 3B04C 8003A44C AFAC0044 */   sw        $t4, 0x44($sp)
.L8003A450:
/* 3B050 8003A450 27B9001C */  addiu      $t9, $sp, 0x1C
/* 3B054 8003A454 27290024 */  addiu      $t1, $t9, 0x24
/* 3B058 8003A458 8FAF0044 */  lw         $t7, 0x44($sp)
.L8003A45C:
/* 3B05C 8003A45C 8F210000 */  lw         $at, 0x0($t9)
/* 3B060 8003A460 2739000C */  addiu      $t9, $t9, 0xC
/* 3B064 8003A464 25EF000C */  addiu      $t7, $t7, 0xC
/* 3B068 8003A468 A9E1FFF4 */  swl        $at, -0xC($t7)
/* 3B06C 8003A46C B9E1FFF7 */  swr        $at, -0x9($t7)
/* 3B070 8003A470 8F21FFF8 */  lw         $at, -0x8($t9)
/* 3B074 8003A474 A9E1FFF8 */  swl        $at, -0x8($t7)
/* 3B078 8003A478 B9E1FFFB */  swr        $at, -0x5($t7)
/* 3B07C 8003A47C 8F21FFFC */  lw         $at, -0x4($t9)
/* 3B080 8003A480 A9E1FFFC */  swl        $at, -0x4($t7)
/* 3B084 8003A484 1729FFF5 */  bne        $t9, $t1, .L8003A45C
/* 3B088 8003A488 B9E1FFFF */   swr       $at, -0x1($t7)
/* 3B08C 8003A48C 8F210000 */  lw         $at, 0x0($t9)
/* 3B090 8003A490 240C00FE */  addiu      $t4, $zero, 0xFE
/* 3B094 8003A494 A9E10000 */  swl        $at, 0x0($t7)
/* 3B098 8003A498 B9E10003 */  swr        $at, 0x3($t7)
/* 3B09C 8003A49C 8FAA0044 */  lw         $t2, 0x44($sp)
/* 3B0A0 8003A4A0 254B0028 */  addiu      $t3, $t2, 0x28
/* 3B0A4 8003A4A4 AFAB0044 */  sw         $t3, 0x44($sp)
/* 3B0A8 8003A4A8 A16C0000 */  sb         $t4, 0x0($t3)
/* 3B0AC 8003A4AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3B0B0 8003A4B0 27BD0048 */  addiu      $sp, $sp, 0x48
/* 3B0B4 8003A4B4 03E00008 */  jr         $ra
/* 3B0B8 8003A4B8 00000000 */   nop

glabel osMotorInit
/* 3B0BC 8003A4BC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 3B0C0 8003A4C0 AFA40048 */  sw         $a0, 0x48($sp)
/* 3B0C4 8003A4C4 AFA5004C */  sw         $a1, 0x4C($sp)
/* 3B0C8 8003A4C8 8FAF004C */  lw         $t7, 0x4C($sp)
/* 3B0CC 8003A4CC 8FAE0048 */  lw         $t6, 0x48($sp)
/* 3B0D0 8003A4D0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 3B0D4 8003A4D4 AFA60050 */  sw         $a2, 0x50($sp)
/* 3B0D8 8003A4D8 ADEE0004 */  sw         $t6, 0x4($t7)
/* 3B0DC 8003A4DC 8FB9004C */  lw         $t9, 0x4C($sp)
/* 3B0E0 8003A4E0 8FB80050 */  lw         $t8, 0x50($sp)
/* 3B0E4 8003A4E4 24090080 */  addiu      $t1, $zero, 0x80
/* 3B0E8 8003A4E8 AF380008 */  sw         $t8, 0x8($t9)
/* 3B0EC 8003A4EC 8FA8004C */  lw         $t0, 0x4C($sp)
/* 3B0F0 8003A4F0 AD000000 */  sw         $zero, 0x0($t0)
/* 3B0F4 8003A4F4 8FAA004C */  lw         $t2, 0x4C($sp)
/* 3B0F8 8003A4F8 A1490065 */  sb         $t1, 0x65($t2)
/* 3B0FC 8003A4FC AFA00044 */  sw         $zero, 0x44($sp)
.L8003A500:
/* 3B100 8003A500 8FAC0044 */  lw         $t4, 0x44($sp)
/* 3B104 8003A504 240B00FE */  addiu      $t3, $zero, 0xFE
/* 3B108 8003A508 03AC6821 */  addu       $t5, $sp, $t4
/* 3B10C 8003A50C A1AB0020 */  sb         $t3, 0x20($t5)
/* 3B110 8003A510 8FAE0044 */  lw         $t6, 0x44($sp)
/* 3B114 8003A514 25CF0001 */  addiu      $t7, $t6, 0x1
/* 3B118 8003A518 29E10020 */  slti       $at, $t7, 0x20
/* 3B11C 8003A51C 1420FFF8 */  bnez       $at, .L8003A500
/* 3B120 8003A520 AFAF0044 */   sw        $t7, 0x44($sp)
/* 3B124 8003A524 8FA40048 */  lw         $a0, 0x48($sp)
/* 3B128 8003A528 8FA50050 */  lw         $a1, 0x50($sp)
/* 3B12C 8003A52C 24060400 */  addiu      $a2, $zero, 0x400
/* 3B130 8003A530 27A70020 */  addiu      $a3, $sp, 0x20
/* 3B134 8003A534 0C011AE0 */  jal        __osContRamWrite
/* 3B138 8003A538 AFA00010 */   sw        $zero, 0x10($sp)
/* 3B13C 8003A53C AFA20040 */  sw         $v0, 0x40($sp)
/* 3B140 8003A540 8FB80040 */  lw         $t8, 0x40($sp)
/* 3B144 8003A544 24010002 */  addiu      $at, $zero, 0x2
/* 3B148 8003A548 17010008 */  bne        $t8, $at, .L8003A56C
/* 3B14C 8003A54C 00000000 */   nop
/* 3B150 8003A550 8FA40048 */  lw         $a0, 0x48($sp)
/* 3B154 8003A554 8FA50050 */  lw         $a1, 0x50($sp)
/* 3B158 8003A558 24060400 */  addiu      $a2, $zero, 0x400
/* 3B15C 8003A55C 27A70020 */  addiu      $a3, $sp, 0x20
/* 3B160 8003A560 0C011AE0 */  jal        __osContRamWrite
/* 3B164 8003A564 AFA00010 */   sw        $zero, 0x10($sp)
/* 3B168 8003A568 AFA20040 */  sw         $v0, 0x40($sp)
.L8003A56C:
/* 3B16C 8003A56C 8FB90040 */  lw         $t9, 0x40($sp)
/* 3B170 8003A570 13200003 */  beqz       $t9, .L8003A580
/* 3B174 8003A574 00000000 */   nop
/* 3B178 8003A578 10000083 */  b          .L8003A788
/* 3B17C 8003A57C 03201025 */   or        $v0, $t9, $zero
.L8003A580:
/* 3B180 8003A580 8FA40048 */  lw         $a0, 0x48($sp)
/* 3B184 8003A584 8FA50050 */  lw         $a1, 0x50($sp)
/* 3B188 8003A588 24060400 */  addiu      $a2, $zero, 0x400
/* 3B18C 8003A58C 0C011614 */  jal        __osContRamRead
/* 3B190 8003A590 27A70020 */   addiu     $a3, $sp, 0x20
/* 3B194 8003A594 AFA20040 */  sw         $v0, 0x40($sp)
/* 3B198 8003A598 8FA80040 */  lw         $t0, 0x40($sp)
/* 3B19C 8003A59C 24010002 */  addiu      $at, $zero, 0x2
/* 3B1A0 8003A5A0 15010003 */  bne        $t0, $at, .L8003A5B0
/* 3B1A4 8003A5A4 00000000 */   nop
/* 3B1A8 8003A5A8 24090004 */  addiu      $t1, $zero, 0x4
/* 3B1AC 8003A5AC AFA90040 */  sw         $t1, 0x40($sp)
.L8003A5B0:
/* 3B1B0 8003A5B0 8FAA0040 */  lw         $t2, 0x40($sp)
/* 3B1B4 8003A5B4 11400003 */  beqz       $t2, .L8003A5C4
/* 3B1B8 8003A5B8 00000000 */   nop
/* 3B1BC 8003A5BC 10000072 */  b          .L8003A788
/* 3B1C0 8003A5C0 01401025 */   or        $v0, $t2, $zero
.L8003A5C4:
/* 3B1C4 8003A5C4 27AB0020 */  addiu      $t3, $sp, 0x20
/* 3B1C8 8003A5C8 916C001F */  lbu        $t4, 0x1F($t3)
/* 3B1CC 8003A5CC 240100FE */  addiu      $at, $zero, 0xFE
/* 3B1D0 8003A5D0 15810003 */  bne        $t4, $at, .L8003A5E0
/* 3B1D4 8003A5D4 00000000 */   nop
/* 3B1D8 8003A5D8 1000006B */  b          .L8003A788
/* 3B1DC 8003A5DC 2402000B */   addiu     $v0, $zero, 0xB
.L8003A5E0:
/* 3B1E0 8003A5E0 AFA00044 */  sw         $zero, 0x44($sp)
.L8003A5E4:
/* 3B1E4 8003A5E4 8FAE0044 */  lw         $t6, 0x44($sp)
/* 3B1E8 8003A5E8 240D0080 */  addiu      $t5, $zero, 0x80
/* 3B1EC 8003A5EC 03AE7821 */  addu       $t7, $sp, $t6
/* 3B1F0 8003A5F0 A1ED0020 */  sb         $t5, 0x20($t7)
/* 3B1F4 8003A5F4 8FB80044 */  lw         $t8, 0x44($sp)
/* 3B1F8 8003A5F8 27190001 */  addiu      $t9, $t8, 0x1
/* 3B1FC 8003A5FC 2B210020 */  slti       $at, $t9, 0x20
/* 3B200 8003A600 1420FFF8 */  bnez       $at, .L8003A5E4
/* 3B204 8003A604 AFB90044 */   sw        $t9, 0x44($sp)
/* 3B208 8003A608 8FA40048 */  lw         $a0, 0x48($sp)
/* 3B20C 8003A60C 8FA50050 */  lw         $a1, 0x50($sp)
/* 3B210 8003A610 24060400 */  addiu      $a2, $zero, 0x400
/* 3B214 8003A614 27A70020 */  addiu      $a3, $sp, 0x20
/* 3B218 8003A618 0C011AE0 */  jal        __osContRamWrite
/* 3B21C 8003A61C AFA00010 */   sw        $zero, 0x10($sp)
/* 3B220 8003A620 AFA20040 */  sw         $v0, 0x40($sp)
/* 3B224 8003A624 8FA80040 */  lw         $t0, 0x40($sp)
/* 3B228 8003A628 24010002 */  addiu      $at, $zero, 0x2
/* 3B22C 8003A62C 15010008 */  bne        $t0, $at, .L8003A650
/* 3B230 8003A630 00000000 */   nop
/* 3B234 8003A634 8FA40048 */  lw         $a0, 0x48($sp)
/* 3B238 8003A638 8FA50050 */  lw         $a1, 0x50($sp)
/* 3B23C 8003A63C 24060400 */  addiu      $a2, $zero, 0x400
/* 3B240 8003A640 27A70020 */  addiu      $a3, $sp, 0x20
/* 3B244 8003A644 0C011AE0 */  jal        __osContRamWrite
/* 3B248 8003A648 AFA00010 */   sw        $zero, 0x10($sp)
/* 3B24C 8003A64C AFA20040 */  sw         $v0, 0x40($sp)
.L8003A650:
/* 3B250 8003A650 8FA90040 */  lw         $t1, 0x40($sp)
/* 3B254 8003A654 11200003 */  beqz       $t1, .L8003A664
/* 3B258 8003A658 00000000 */   nop
/* 3B25C 8003A65C 1000004A */  b          .L8003A788
/* 3B260 8003A660 01201025 */   or        $v0, $t1, $zero
.L8003A664:
/* 3B264 8003A664 8FA40048 */  lw         $a0, 0x48($sp)
/* 3B268 8003A668 8FA50050 */  lw         $a1, 0x50($sp)
/* 3B26C 8003A66C 24060400 */  addiu      $a2, $zero, 0x400
/* 3B270 8003A670 0C011614 */  jal        __osContRamRead
/* 3B274 8003A674 27A70020 */   addiu     $a3, $sp, 0x20
/* 3B278 8003A678 AFA20040 */  sw         $v0, 0x40($sp)
/* 3B27C 8003A67C 8FAA0040 */  lw         $t2, 0x40($sp)
/* 3B280 8003A680 24010002 */  addiu      $at, $zero, 0x2
/* 3B284 8003A684 15410003 */  bne        $t2, $at, .L8003A694
/* 3B288 8003A688 00000000 */   nop
/* 3B28C 8003A68C 240B0004 */  addiu      $t3, $zero, 0x4
/* 3B290 8003A690 AFAB0040 */  sw         $t3, 0x40($sp)
.L8003A694:
/* 3B294 8003A694 8FAC0040 */  lw         $t4, 0x40($sp)
/* 3B298 8003A698 11800003 */  beqz       $t4, .L8003A6A8
/* 3B29C 8003A69C 00000000 */   nop
/* 3B2A0 8003A6A0 10000039 */  b          .L8003A788
/* 3B2A4 8003A6A4 01801025 */   or        $v0, $t4, $zero
.L8003A6A8:
/* 3B2A8 8003A6A8 27AD0020 */  addiu      $t5, $sp, 0x20
/* 3B2AC 8003A6AC 91AE001F */  lbu        $t6, 0x1F($t5)
/* 3B2B0 8003A6B0 24010080 */  addiu      $at, $zero, 0x80
/* 3B2B4 8003A6B4 11C10003 */  beq        $t6, $at, .L8003A6C4
/* 3B2B8 8003A6B8 00000000 */   nop
/* 3B2BC 8003A6BC 10000032 */  b          .L8003A788
/* 3B2C0 8003A6C0 2402000B */   addiu     $v0, $zero, 0xB
.L8003A6C4:
/* 3B2C4 8003A6C4 8FAF0050 */  lw         $t7, 0x50($sp)
/* 3B2C8 8003A6C8 3C198007 */  lui        $t9, %hi(D_800709B0)
/* 3B2CC 8003A6CC 000FC080 */  sll        $t8, $t7, 2
/* 3B2D0 8003A6D0 0338C821 */  addu       $t9, $t9, $t8
/* 3B2D4 8003A6D4 8F3909B0 */  lw         $t9, %lo(D_800709B0)($t9)
/* 3B2D8 8003A6D8 1720002A */  bnez       $t9, .L8003A784
/* 3B2DC 8003A6DC 00000000 */   nop
/* 3B2E0 8003A6E0 AFA00044 */  sw         $zero, 0x44($sp)
.L8003A6E4:
/* 3B2E4 8003A6E4 8FA90044 */  lw         $t1, 0x44($sp)
/* 3B2E8 8003A6E8 3C018009 */  lui        $at, %hi(D_80095430)
/* 3B2EC 8003A6EC 8FAA0044 */  lw         $t2, 0x44($sp)
/* 3B2F0 8003A6F0 24080001 */  addiu      $t0, $zero, 0x1
/* 3B2F4 8003A6F4 00290821 */  addu       $at, $at, $t1
/* 3B2F8 8003A6F8 8FAB0044 */  lw         $t3, 0x44($sp)
/* 3B2FC 8003A6FC A0285430 */  sb         $t0, %lo(D_80095430)($at)
/* 3B300 8003A700 3C018009 */  lui        $at, %hi(D_80095410)
/* 3B304 8003A704 002A0821 */  addu       $at, $at, $t2
/* 3B308 8003A708 A0205410 */  sb         $zero, %lo(D_80095410)($at)
/* 3B30C 8003A70C 256C0001 */  addiu      $t4, $t3, 0x1
/* 3B310 8003A710 29810020 */  slti       $at, $t4, 0x20
/* 3B314 8003A714 1420FFF3 */  bnez       $at, .L8003A6E4
/* 3B318 8003A718 AFAC0044 */   sw        $t4, 0x44($sp)
/* 3B31C 8003A71C 8FAD0050 */  lw         $t5, 0x50($sp)
/* 3B320 8003A720 3C0F8009 */  lui        $t7, %hi(D_80095310)
/* 3B324 8003A724 25EF5310 */  addiu      $t7, $t7, %lo(D_80095310)
/* 3B328 8003A728 3C068009 */  lui        $a2, %hi(D_80095430)
/* 3B32C 8003A72C 000D7180 */  sll        $t6, $t5, 6
/* 3B330 8003A730 01CF3821 */  addu       $a3, $t6, $t7
/* 3B334 8003A734 24C65430 */  addiu      $a2, $a2, %lo(D_80095430)
/* 3B338 8003A738 24050600 */  addiu      $a1, $zero, 0x600
/* 3B33C 8003A73C 0C00E8D0 */  jal        _MakeMotorData
/* 3B340 8003A740 01A02025 */   or        $a0, $t5, $zero
/* 3B344 8003A744 8FB80050 */  lw         $t8, 0x50($sp)
/* 3B348 8003A748 3C088009 */  lui        $t0, %hi(D_80095210)
/* 3B34C 8003A74C 25085210 */  addiu      $t0, $t0, %lo(D_80095210)
/* 3B350 8003A750 3C068009 */  lui        $a2, %hi(D_80095410)
/* 3B354 8003A754 0018C980 */  sll        $t9, $t8, 6
/* 3B358 8003A758 03283821 */  addu       $a3, $t9, $t0
/* 3B35C 8003A75C 24C65410 */  addiu      $a2, $a2, %lo(D_80095410)
/* 3B360 8003A760 24050600 */  addiu      $a1, $zero, 0x600
/* 3B364 8003A764 0C00E8D0 */  jal        _MakeMotorData
/* 3B368 8003A768 03002025 */   or        $a0, $t8, $zero
/* 3B36C 8003A76C 8FAA0050 */  lw         $t2, 0x50($sp)
/* 3B370 8003A770 3C018007 */  lui        $at, %hi(D_800709B0)
/* 3B374 8003A774 24090001 */  addiu      $t1, $zero, 0x1
/* 3B378 8003A778 000A5880 */  sll        $t3, $t2, 2
/* 3B37C 8003A77C 002B0821 */  addu       $at, $at, $t3
/* 3B380 8003A780 AC2909B0 */  sw         $t1, %lo(D_800709B0)($at)
.L8003A784:
/* 3B384 8003A784 00001025 */  or         $v0, $zero, $zero
.L8003A788:
/* 3B388 8003A788 8FBF001C */  lw         $ra, 0x1C($sp)
/* 3B38C 8003A78C 27BD0048 */  addiu      $sp, $sp, 0x48
/* 3B390 8003A790 03E00008 */  jr         $ra
/* 3B394 8003A794 00000000 */   nop
/* 3B398 8003A798 00000000 */  nop
/* 3B39C 8003A79C 00000000 */  nop
