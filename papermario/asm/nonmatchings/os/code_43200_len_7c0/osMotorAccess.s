.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osMotorAccess
/* 043200 80067E00 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 043204 80067E04 AFB10014 */  sw    $s1, 0x14($sp)
/* 043208 80067E08 00808821 */  addu  $s1, $a0, $zero
/* 04320C 80067E0C AFB3001C */  sw    $s3, 0x1c($sp)
/* 043210 80067E10 00A09821 */  addu  $s3, $a1, $zero
/* 043214 80067E14 AFBF0020 */  sw    $ra, 0x20($sp)
/* 043218 80067E18 AFB20018 */  sw    $s2, 0x18($sp)
/* 04321C 80067E1C AFB00010 */  sw    $s0, 0x10($sp)
/* 043220 80067E20 8E220008 */  lw    $v0, 8($s1)
/* 043224 80067E24 8E230000 */  lw    $v1, ($s1)
/* 043228 80067E28 3C04800B */  lui   $a0, 0x800b
/* 04322C 80067E2C 24840B30 */  addiu $a0, $a0, 0xb30
/* 043230 80067E30 00021180 */  sll   $v0, $v0, 6
/* 043234 80067E34 30630008 */  andi  $v1, $v1, 8
/* 043238 80067E38 14600003 */  bnez  $v1, .L80067E48
/* 04323C 80067E3C 00449021 */   addu  $s2, $v0, $a0
/* 043240 80067E40 08019FCA */  j     .L80067F28
/* 043244 80067E44 24020005 */   addiu $v0, $zero, 5

.L80067E48:
/* 043248 80067E48 0C019771 */  jal   osSiGetAccess
/* 04324C 80067E4C 00000000 */   nop   
/* 043250 80067E50 8E220008 */  lw    $v0, 8($s1)
/* 043254 80067E54 24030001 */  addiu $v1, $zero, 1
/* 043258 80067E58 00021180 */  sll   $v0, $v0, 6
/* 04325C 80067E5C 3C01800B */  lui   $at, 0x800b
/* 043260 80067E60 00220821 */  addu  $at, $at, $v0
/* 043264 80067E64 AC230B6C */  sw    $v1, 0xb6c($at)
/* 043268 80067E68 8E220008 */  lw    $v0, 8($s1)
/* 04326C 80067E6C 2403001F */  addiu $v1, $zero, 0x1f
/* 043270 80067E70 02429021 */  addu  $s2, $s2, $v0
/* 043274 80067E74 2642001F */  addiu $v0, $s2, 0x1f
.L80067E78:
/* 043278 80067E78 A0530006 */  sb    $s3, 6($v0)
/* 04327C 80067E7C 2463FFFF */  addiu $v1, $v1, -1
/* 043280 80067E80 0461FFFD */  bgez  $v1, .L80067E78
/* 043284 80067E84 2442FFFF */   addiu $v0, $v0, -1
/* 043288 80067E88 8E250008 */  lw    $a1, 8($s1)
/* 04328C 80067E8C 24040001 */  addiu $a0, $zero, 1
/* 043290 80067E90 240200FE */  addiu $v0, $zero, 0xfe
/* 043294 80067E94 3C10800B */  lui   $s0, 0x800b
/* 043298 80067E98 26100B30 */  addiu $s0, $s0, 0xb30
/* 04329C 80067E9C 3C01800A */  lui   $at, 0x800a
/* 0432A0 80067EA0 A022A61C */  sb    $v0, -0x59e4($at)
/* 0432A4 80067EA4 00052980 */  sll   $a1, $a1, 6
/* 0432A8 80067EA8 0C019730 */  jal   osSiRawStartDma
/* 0432AC 80067EAC 00B02821 */   addu  $a1, $a1, $s0
/* 0432B0 80067EB0 8E240004 */  lw    $a0, 4($s1)
/* 0432B4 80067EB4 00002821 */  addu  $a1, $zero, $zero
/* 0432B8 80067EB8 0C0195BC */  jal   osRecvMesg
/* 0432BC 80067EBC 24060001 */   addiu $a2, $zero, 1
/* 0432C0 80067EC0 8E250008 */  lw    $a1, 8($s1)
/* 0432C4 80067EC4 00002021 */  addu  $a0, $zero, $zero
/* 0432C8 80067EC8 00052980 */  sll   $a1, $a1, 6
/* 0432CC 80067ECC 0C019730 */  jal   osSiRawStartDma
/* 0432D0 80067ED0 00B02821 */   addu  $a1, $a1, $s0
/* 0432D4 80067ED4 8E240004 */  lw    $a0, 4($s1)
/* 0432D8 80067ED8 00002821 */  addu  $a1, $zero, $zero
/* 0432DC 80067EDC 0C0195BC */  jal   osRecvMesg
/* 0432E0 80067EE0 24060001 */   addiu $a2, $zero, 1
/* 0432E4 80067EE4 92420002 */  lbu   $v0, 2($s2)
/* 0432E8 80067EE8 305000C0 */  andi  $s0, $v0, 0xc0
/* 0432EC 80067EEC 1600000B */  bnez  $s0, .L80067F1C
/* 0432F0 80067EF0 00000000 */   nop   
/* 0432F4 80067EF4 16600006 */  bnez  $s3, .L80067F10
/* 0432F8 80067EF8 240200EB */   addiu $v0, $zero, 0xeb
/* 0432FC 80067EFC 92420026 */  lbu   $v0, 0x26($s2)
/* 043300 80067F00 10400006 */  beqz  $v0, .L80067F1C
/* 043304 80067F04 00000000 */   nop   
/* 043308 80067F08 08019FC7 */  j     .L80067F1C
/* 04330C 80067F0C 24100004 */   addiu $s0, $zero, 4

.L80067F10:
/* 043310 80067F10 92430026 */  lbu   $v1, 0x26($s2)
/* 043314 80067F14 54620001 */  bnel  $v1, $v0, .L80067F1C
/* 043318 80067F18 24100004 */   addiu $s0, $zero, 4
.L80067F1C:
/* 04331C 80067F1C 0C01978C */  jal   osSiRelAccess
/* 043320 80067F20 00000000 */   nop   
/* 043324 80067F24 02001021 */  addu  $v0, $s0, $zero
.L80067F28:
/* 043328 80067F28 8FBF0020 */  lw    $ra, 0x20($sp)
/* 04332C 80067F2C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 043330 80067F30 8FB20018 */  lw    $s2, 0x18($sp)
/* 043334 80067F34 8FB10014 */  lw    $s1, 0x14($sp)
/* 043338 80067F38 8FB00010 */  lw    $s0, 0x10($sp)
/* 04333C 80067F3C 03E00008 */  jr    $ra
/* 043340 80067F40 27BD0028 */   addiu $sp, $sp, 0x28
