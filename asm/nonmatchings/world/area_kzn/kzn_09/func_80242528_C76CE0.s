.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242528_C79208
/* C79208 80242528 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* C7920C 8024252C AFB10034 */  sw        $s1, 0x34($sp)
/* C79210 80242530 0080882D */  daddu     $s1, $a0, $zero
/* C79214 80242534 AFBF0038 */  sw        $ra, 0x38($sp)
/* C79218 80242538 AFB00030 */  sw        $s0, 0x30($sp)
/* C7921C 8024253C 8E300148 */  lw        $s0, 0x148($s1)
/* C79220 80242540 0C00EABB */  jal       get_npc_unsafe
/* C79224 80242544 86040008 */   lh       $a0, 8($s0)
/* C79228 80242548 0040282D */  daddu     $a1, $v0, $zero
/* C7922C 8024254C 94A2008E */  lhu       $v0, 0x8e($a1)
/* C79230 80242550 24420001 */  addiu     $v0, $v0, 1
/* C79234 80242554 A4A2008E */  sh        $v0, 0x8e($a1)
/* C79238 80242558 00021400 */  sll       $v0, $v0, 0x10
/* C7923C 8024255C 8E0300A0 */  lw        $v1, 0xa0($s0)
/* C79240 80242560 00021403 */  sra       $v0, $v0, 0x10
/* C79244 80242564 14430004 */  bne       $v0, $v1, .L80242578
/* C79248 80242568 00000000 */   nop      
/* C7924C 8024256C 8E0200CC */  lw        $v0, 0xcc($s0)
/* C79250 80242570 8C42002C */  lw        $v0, 0x2c($v0)
/* C79254 80242574 ACA20028 */  sw        $v0, 0x28($a1)
.L80242578:
/* C79258 80242578 84A3008E */  lh        $v1, 0x8e($a1)
/* C7925C 8024257C 8E0200A4 */  lw        $v0, 0xa4($s0)
/* C79260 80242580 14620002 */  bne       $v1, $v0, .L8024258C
/* C79264 80242584 24020003 */   addiu    $v0, $zero, 3
/* C79268 80242588 AE02006C */  sw        $v0, 0x6c($s0)
.L8024258C:
/* C7926C 8024258C 84A2008E */  lh        $v0, 0x8e($a1)
/* C79270 80242590 8E03009C */  lw        $v1, 0x9c($s0)
/* C79274 80242594 0043102A */  slt       $v0, $v0, $v1
/* C79278 80242598 1440001E */  bnez      $v0, .L80242614
/* C7927C 8024259C 24020004 */   addiu    $v0, $zero, 4
/* C79280 802425A0 AE02006C */  sw        $v0, 0x6c($s0)
/* C79284 802425A4 24020008 */  addiu     $v0, $zero, 8
/* C79288 802425A8 24040003 */  addiu     $a0, $zero, 3
/* C7928C 802425AC A4A2008E */  sh        $v0, 0x8e($a1)
/* C79290 802425B0 8E0200CC */  lw        $v0, 0xcc($s0)
/* C79294 802425B4 84A300A8 */  lh        $v1, 0xa8($a1)
/* C79298 802425B8 3C013F80 */  lui       $at, 0x3f80
/* C7929C 802425BC 44810000 */  mtc1      $at, $f0
/* C792A0 802425C0 3C014000 */  lui       $at, 0x4000
/* C792A4 802425C4 44811000 */  mtc1      $at, $f2
/* C792A8 802425C8 3C01C1A0 */  lui       $at, 0xc1a0
/* C792AC 802425CC 44812000 */  mtc1      $at, $f4
/* C792B0 802425D0 44833000 */  mtc1      $v1, $f6
/* C792B4 802425D4 00000000 */  nop       
/* C792B8 802425D8 468031A0 */  cvt.s.w   $f6, $f6
/* C792BC 802425DC 8C420000 */  lw        $v0, ($v0)
/* C792C0 802425E0 44073000 */  mfc1      $a3, $f6
/* C792C4 802425E4 0000302D */  daddu     $a2, $zero, $zero
/* C792C8 802425E8 ACA20028 */  sw        $v0, 0x28($a1)
/* C792CC 802425EC 2402000A */  addiu     $v0, $zero, 0xa
/* C792D0 802425F0 AFA2001C */  sw        $v0, 0x1c($sp)
/* C792D4 802425F4 27A20028 */  addiu     $v0, $sp, 0x28
/* C792D8 802425F8 E7A00010 */  swc1      $f0, 0x10($sp)
/* C792DC 802425FC E7A20014 */  swc1      $f2, 0x14($sp)
/* C792E0 80242600 E7A40018 */  swc1      $f4, 0x18($sp)
/* C792E4 80242604 0C01BFA4 */  jal       fx_emote
/* C792E8 80242608 AFA20020 */   sw       $v0, 0x20($sp)
/* C792EC 8024260C 2402000D */  addiu     $v0, $zero, 0xd
/* C792F0 80242610 AE220070 */  sw        $v0, 0x70($s1)
.L80242614:
/* C792F4 80242614 8FBF0038 */  lw        $ra, 0x38($sp)
/* C792F8 80242618 8FB10034 */  lw        $s1, 0x34($sp)
/* C792FC 8024261C 8FB00030 */  lw        $s0, 0x30($sp)
/* C79300 80242620 03E00008 */  jr        $ra
/* C79304 80242624 27BD0040 */   addiu    $sp, $sp, 0x40
