.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024213C
/* 8542AC 8024213C 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* 8542B0 80242140 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* 8542B4 80242144 10A00002 */  beqz      $a1, .L80242150
/* 8542B8 80242148 2402003C */   addiu    $v0, $zero, 0x3c
/* 8542BC 8024214C AC820070 */  sw        $v0, 0x70($a0)
.L80242150:
/* 8542C0 80242150 C4620080 */  lwc1      $f2, 0x80($v1)
/* 8542C4 80242154 3C0141F0 */  lui       $at, 0x41f0
/* 8542C8 80242158 44810000 */  mtc1      $at, $f0
/* 8542CC 8024215C 00000000 */  nop       
/* 8542D0 80242160 46001000 */  add.s     $f0, $f2, $f0
/* 8542D4 80242164 3C0143B4 */  lui       $at, 0x43b4
/* 8542D8 80242168 44811000 */  mtc1      $at, $f2
/* 8542DC 8024216C 00000000 */  nop       
/* 8542E0 80242170 4600103E */  c.le.s    $f2, $f0
/* 8542E4 80242174 00000000 */  nop       
/* 8542E8 80242178 45000003 */  bc1f      .L80242188
/* 8542EC 8024217C E4600080 */   swc1     $f0, 0x80($v1)
/* 8542F0 80242180 46020001 */  sub.s     $f0, $f0, $f2
/* 8542F4 80242184 E4600080 */  swc1      $f0, 0x80($v1)
.L80242188:
/* 8542F8 80242188 8C820070 */  lw        $v0, 0x70($a0)
/* 8542FC 8024218C 2442FFFF */  addiu     $v0, $v0, -1
/* 854300 80242190 AC820070 */  sw        $v0, 0x70($a0)
/* 854304 80242194 000217C3 */  sra       $v0, $v0, 0x1f
/* 854308 80242198 03E00008 */  jr        $ra
/* 85430C 8024219C 30420002 */   andi     $v0, $v0, 2
