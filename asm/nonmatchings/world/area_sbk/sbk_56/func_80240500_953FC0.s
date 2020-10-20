.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240500_9544C0
/* 9544C0 80240500 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 9544C4 80240504 AFB1001C */  sw        $s1, 0x1c($sp)
/* 9544C8 80240508 0080882D */  daddu     $s1, $a0, $zero
/* 9544CC 8024050C AFBF0020 */  sw        $ra, 0x20($sp)
/* 9544D0 80240510 AFB00018 */  sw        $s0, 0x18($sp)
/* 9544D4 80240514 8E30000C */  lw        $s0, 0xc($s1)
/* 9544D8 80240518 8E050000 */  lw        $a1, ($s0)
/* 9544DC 8024051C 0C0B1EAF */  jal       get_variable
/* 9544E0 80240520 26100004 */   addiu    $s0, $s0, 4
/* 9544E4 80240524 0C04417A */  jal       get_entity_by_index
/* 9544E8 80240528 0040202D */   daddu    $a0, $v0, $zero
/* 9544EC 8024052C 8E100000 */  lw        $s0, ($s0)
/* 9544F0 80240530 C444004C */  lwc1      $f4, 0x4c($v0)
/* 9544F4 80240534 3C014148 */  lui       $at, 0x4148
/* 9544F8 80240538 44810000 */  mtc1      $at, $f0
/* 9544FC 8024053C 3C013F33 */  lui       $at, 0x3f33
/* 954500 80240540 34213333 */  ori       $at, $at, 0x3333
/* 954504 80240544 44811000 */  mtc1      $at, $f2
/* 954508 80240548 AFA00014 */  sw        $zero, 0x14($sp)
/* 95450C 8024054C 46002100 */  add.s     $f4, $f4, $f0
/* 954510 80240550 E7A20010 */  swc1      $f2, 0x10($sp)
/* 954514 80240554 8C450048 */  lw        $a1, 0x48($v0)
/* 954518 80240558 8C470050 */  lw        $a3, 0x50($v0)
/* 95451C 8024055C 44062000 */  mfc1      $a2, $f4
/* 954520 80240560 0C01C5D4 */  jal       func_80071750
/* 954524 80240564 0000202D */   daddu    $a0, $zero, $zero
/* 954528 80240568 0220202D */  daddu     $a0, $s1, $zero
/* 95452C 8024056C 0200282D */  daddu     $a1, $s0, $zero
/* 954530 80240570 0C0B2026 */  jal       set_variable
/* 954534 80240574 0040302D */   daddu    $a2, $v0, $zero
/* 954538 80240578 8FBF0020 */  lw        $ra, 0x20($sp)
/* 95453C 8024057C 8FB1001C */  lw        $s1, 0x1c($sp)
/* 954540 80240580 8FB00018 */  lw        $s0, 0x18($sp)
/* 954544 80240584 24020002 */  addiu     $v0, $zero, 2
/* 954548 80240588 03E00008 */  jr        $ra
/* 95454C 8024058C 27BD0028 */   addiu    $sp, $sp, 0x28
