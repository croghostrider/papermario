.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240084_D7B324
/* D7B324 80240084 00041403 */  sra       $v0, $a0, 0x10
/* D7B328 80240088 304300FF */  andi      $v1, $v0, 0xff
/* D7B32C 8024008C 24020006 */  addiu     $v0, $zero, 6
/* D7B330 80240090 10620015 */  beq       $v1, $v0, .L802400E8
/* D7B334 80240094 28620007 */   slti     $v0, $v1, 7
/* D7B338 80240098 10400005 */  beqz      $v0, .L802400B0
/* D7B33C 8024009C 24020001 */   addiu    $v0, $zero, 1
/* D7B340 802400A0 1062000A */  beq       $v1, $v0, .L802400CC
/* D7B344 802400A4 3C020100 */   lui      $v0, 0x100
/* D7B348 802400A8 03E00008 */  jr        $ra
/* D7B34C 802400AC 00821025 */   or       $v0, $a0, $v0
.L802400B0:
/* D7B350 802400B0 2862000A */  slti      $v0, $v1, 0xa
/* D7B354 802400B4 10400016 */  beqz      $v0, .L80240110
/* D7B358 802400B8 28620008 */   slti     $v0, $v1, 8
/* D7B35C 802400BC 14400015 */  bnez      $v0, .L80240114
/* D7B360 802400C0 3C020100 */   lui      $v0, 0x100
/* D7B364 802400C4 03E00008 */  jr        $ra
/* D7B368 802400C8 0080102D */   daddu    $v0, $a0, $zero
.L802400CC:
/* D7B36C 802400CC 3C020001 */  lui       $v0, 1
/* D7B370 802400D0 3442000C */  ori       $v0, $v0, 0xc
/* D7B374 802400D4 0044102A */  slt       $v0, $v0, $a0
/* D7B378 802400D8 1040000E */  beqz      $v0, .L80240114
/* D7B37C 802400DC 3C020100 */   lui      $v0, 0x100
.L802400E0:
/* D7B380 802400E0 03E00008 */  jr        $ra
/* D7B384 802400E4 0080102D */   daddu    $v0, $a0, $zero
.L802400E8:
/* D7B388 802400E8 3C02FFF9 */  lui       $v0, 0xfff9
/* D7B38C 802400EC 3442FFF4 */  ori       $v0, $v0, 0xfff4
/* D7B390 802400F0 00821821 */  addu      $v1, $a0, $v0
/* D7B394 802400F4 2C620010 */  sltiu     $v0, $v1, 0x10
/* D7B398 802400F8 10400005 */  beqz      $v0, .L80240110
/* D7B39C 802400FC 30620001 */   andi     $v0, $v1, 1
/* D7B3A0 80240100 1440FFF7 */  bnez      $v0, .L802400E0
/* D7B3A4 80240104 24820001 */   addiu    $v0, $a0, 1
/* D7B3A8 80240108 03E00008 */  jr        $ra
/* D7B3AC 8024010C 00000000 */   nop      
.L80240110:
/* D7B3B0 80240110 3C020100 */  lui       $v0, 0x100
.L80240114:
/* D7B3B4 80240114 03E00008 */  jr        $ra
/* D7B3B8 80240118 00821025 */   or       $v0, $a0, $v0
