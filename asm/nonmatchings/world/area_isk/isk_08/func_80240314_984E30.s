.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240314_985144
/* 985144 80240314 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 985148 80240318 AFB10014 */  sw        $s1, 0x14($sp)
/* 98514C 8024031C 0080882D */  daddu     $s1, $a0, $zero
/* 985150 80240320 AFBF0018 */  sw        $ra, 0x18($sp)
/* 985154 80240324 AFB00010 */  sw        $s0, 0x10($sp)
/* 985158 80240328 8E300148 */  lw        $s0, 0x148($s1)
/* 98515C 8024032C 0C00EABB */  jal       get_npc_unsafe
/* 985160 80240330 86040008 */   lh       $a0, 8($s0)
/* 985164 80240334 0040202D */  daddu     $a0, $v0, $zero
/* 985168 80240338 9482008E */  lhu       $v0, 0x8e($a0)
/* 98516C 8024033C 24030003 */  addiu     $v1, $zero, 3
/* 985170 80240340 24420001 */  addiu     $v0, $v0, 1
/* 985174 80240344 A482008E */  sh        $v0, 0x8e($a0)
/* 985178 80240348 00021400 */  sll       $v0, $v0, 0x10
/* 98517C 8024034C 00021403 */  sra       $v0, $v0, 0x10
/* 985180 80240350 14430003 */  bne       $v0, $v1, .L80240360
/* 985184 80240354 00000000 */   nop      
/* 985188 80240358 96020086 */  lhu       $v0, 0x86($s0)
/* 98518C 8024035C A48200A8 */  sh        $v0, 0xa8($a0)
.L80240360:
/* 985190 80240360 8482008E */  lh        $v0, 0x8e($a0)
/* 985194 80240364 8E030080 */  lw        $v1, 0x80($s0)
/* 985198 80240368 0043102A */  slt       $v0, $v0, $v1
/* 98519C 8024036C 14400004 */  bnez      $v0, .L80240380
/* 9851A0 80240370 00000000 */   nop      
/* 9851A4 80240374 96020086 */  lhu       $v0, 0x86($s0)
/* 9851A8 80240378 A48200A8 */  sh        $v0, 0xa8($a0)
/* 9851AC 8024037C AE200070 */  sw        $zero, 0x70($s1)
.L80240380:
/* 9851B0 80240380 8FBF0018 */  lw        $ra, 0x18($sp)
/* 9851B4 80240384 8FB10014 */  lw        $s1, 0x14($sp)
/* 9851B8 80240388 8FB00010 */  lw        $s0, 0x10($sp)
/* 9851BC 8024038C 03E00008 */  jr        $ra
/* 9851C0 80240390 27BD0020 */   addiu    $sp, $sp, 0x20
