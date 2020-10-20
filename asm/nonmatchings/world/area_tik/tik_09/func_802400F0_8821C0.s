.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802400F0_8822B0
/* 8822B0 802400F0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 8822B4 802400F4 AFB10014 */  sw        $s1, 0x14($sp)
/* 8822B8 802400F8 0080882D */  daddu     $s1, $a0, $zero
/* 8822BC 802400FC AFBF001C */  sw        $ra, 0x1c($sp)
/* 8822C0 80240100 AFB20018 */  sw        $s2, 0x18($sp)
/* 8822C4 80240104 0C016AFA */  jal       get_current_map_header
/* 8822C8 80240108 AFB00010 */   sw       $s0, 0x10($sp)
/* 8822CC 8024010C 0220202D */  daddu     $a0, $s1, $zero
/* 8822D0 80240110 3C05FE36 */  lui       $a1, 0xfe36
/* 8822D4 80240114 34A53C80 */  ori       $a1, $a1, 0x3c80
/* 8822D8 80240118 0C0B1EAF */  jal       get_variable
/* 8822DC 8024011C 0040902D */   daddu    $s2, $v0, $zero
/* 8822E0 80240120 0220202D */  daddu     $a0, $s1, $zero
/* 8822E4 80240124 3C05FE36 */  lui       $a1, 0xfe36
/* 8822E8 80240128 8E430014 */  lw        $v1, 0x14($s2)
/* 8822EC 8024012C 00028100 */  sll       $s0, $v0, 4
/* 8822F0 80240130 02031821 */  addu      $v1, $s0, $v1
/* 8822F4 80240134 C4600000 */  lwc1      $f0, ($v1)
/* 8822F8 80240138 4600008D */  trunc.w.s $f2, $f0
/* 8822FC 8024013C 44061000 */  mfc1      $a2, $f2
/* 882300 80240140 0C0B2026 */  jal       set_variable
/* 882304 80240144 34A53C81 */   ori      $a1, $a1, 0x3c81
/* 882308 80240148 0220202D */  daddu     $a0, $s1, $zero
/* 88230C 8024014C 8E420014 */  lw        $v0, 0x14($s2)
/* 882310 80240150 3C05FE36 */  lui       $a1, 0xfe36
/* 882314 80240154 02021021 */  addu      $v0, $s0, $v0
/* 882318 80240158 C4400004 */  lwc1      $f0, 4($v0)
/* 88231C 8024015C 4600008D */  trunc.w.s $f2, $f0
/* 882320 80240160 44061000 */  mfc1      $a2, $f2
/* 882324 80240164 0C0B2026 */  jal       set_variable
/* 882328 80240168 34A53C82 */   ori      $a1, $a1, 0x3c82
/* 88232C 8024016C 0220202D */  daddu     $a0, $s1, $zero
/* 882330 80240170 8E420014 */  lw        $v0, 0x14($s2)
/* 882334 80240174 3C05FE36 */  lui       $a1, 0xfe36
/* 882338 80240178 02021021 */  addu      $v0, $s0, $v0
/* 88233C 8024017C C4400008 */  lwc1      $f0, 8($v0)
/* 882340 80240180 4600008D */  trunc.w.s $f2, $f0
/* 882344 80240184 44061000 */  mfc1      $a2, $f2
/* 882348 80240188 0C0B2026 */  jal       set_variable
/* 88234C 8024018C 34A53C83 */   ori      $a1, $a1, 0x3c83
/* 882350 80240190 0220202D */  daddu     $a0, $s1, $zero
/* 882354 80240194 8E420014 */  lw        $v0, 0x14($s2)
/* 882358 80240198 3C05FE36 */  lui       $a1, 0xfe36
/* 88235C 8024019C 02028021 */  addu      $s0, $s0, $v0
/* 882360 802401A0 C600000C */  lwc1      $f0, 0xc($s0)
/* 882364 802401A4 4600008D */  trunc.w.s $f2, $f0
/* 882368 802401A8 44061000 */  mfc1      $a2, $f2
/* 88236C 802401AC 0C0B2026 */  jal       set_variable
/* 882370 802401B0 34A53C84 */   ori      $a1, $a1, 0x3c84
/* 882374 802401B4 8FBF001C */  lw        $ra, 0x1c($sp)
/* 882378 802401B8 8FB20018 */  lw        $s2, 0x18($sp)
/* 88237C 802401BC 8FB10014 */  lw        $s1, 0x14($sp)
/* 882380 802401C0 8FB00010 */  lw        $s0, 0x10($sp)
/* 882384 802401C4 24020002 */  addiu     $v0, $zero, 2
/* 882388 802401C8 03E00008 */  jr        $ra
/* 88238C 802401CC 27BD0020 */   addiu    $sp, $sp, 0x20
