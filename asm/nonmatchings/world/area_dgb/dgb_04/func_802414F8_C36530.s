.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802414F8_C37A28
/* C37A28 802414F8 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* C37A2C 802414FC AFB3001C */  sw        $s3, 0x1c($sp)
/* C37A30 80241500 0080982D */  daddu     $s3, $a0, $zero
/* C37A34 80241504 AFBF0020 */  sw        $ra, 0x20($sp)
/* C37A38 80241508 AFB20018 */  sw        $s2, 0x18($sp)
/* C37A3C 8024150C AFB10014 */  sw        $s1, 0x14($sp)
/* C37A40 80241510 AFB00010 */  sw        $s0, 0x10($sp)
/* C37A44 80241514 F7B40028 */  sdc1      $f20, 0x28($sp)
/* C37A48 80241518 8E720148 */  lw        $s2, 0x148($s3)
/* C37A4C 8024151C 86440008 */  lh        $a0, 8($s2)
/* C37A50 80241520 0C00EABB */  jal       get_npc_unsafe
/* C37A54 80241524 00A0882D */   daddu    $s1, $a1, $zero
/* C37A58 80241528 0040802D */  daddu     $s0, $v0, $zero
/* C37A5C 8024152C 9602008E */  lhu       $v0, 0x8e($s0)
/* C37A60 80241530 2442FFFF */  addiu     $v0, $v0, -1
/* C37A64 80241534 A602008E */  sh        $v0, 0x8e($s0)
/* C37A68 80241538 00021400 */  sll       $v0, $v0, 0x10
/* C37A6C 8024153C 1C40003C */  bgtz      $v0, .L80241630
/* C37A70 80241540 3C03FFDF */   lui      $v1, 0xffdf
/* C37A74 80241544 8E020000 */  lw        $v0, ($s0)
/* C37A78 80241548 3463FFFF */  ori       $v1, $v1, 0xffff
/* C37A7C 8024154C 00431024 */  and       $v0, $v0, $v1
/* C37A80 80241550 AE020000 */  sw        $v0, ($s0)
/* C37A84 80241554 8E240020 */  lw        $a0, 0x20($s1)
/* C37A88 80241558 000417C2 */  srl       $v0, $a0, 0x1f
/* C37A8C 8024155C 00822021 */  addu      $a0, $a0, $v0
/* C37A90 80241560 00042043 */  sra       $a0, $a0, 1
/* C37A94 80241564 0C00A67F */  jal       rand_int
/* C37A98 80241568 24840001 */   addiu    $a0, $a0, 1
/* C37A9C 8024156C 8E230020 */  lw        $v1, 0x20($s1)
/* C37AA0 80241570 C60C0038 */  lwc1      $f12, 0x38($s0)
/* C37AA4 80241574 000327C2 */  srl       $a0, $v1, 0x1f
/* C37AA8 80241578 00641821 */  addu      $v1, $v1, $a0
/* C37AAC 8024157C 00031843 */  sra       $v1, $v1, 1
/* C37AB0 80241580 00621821 */  addu      $v1, $v1, $v0
/* C37AB4 80241584 A603008E */  sh        $v1, 0x8e($s0)
/* C37AB8 80241588 8E4200CC */  lw        $v0, 0xcc($s2)
/* C37ABC 8024158C C60E0040 */  lwc1      $f14, 0x40($s0)
/* C37AC0 80241590 8C420020 */  lw        $v0, 0x20($v0)
/* C37AC4 80241594 AE020028 */  sw        $v0, 0x28($s0)
/* C37AC8 80241598 C6200018 */  lwc1      $f0, 0x18($s1)
/* C37ACC 8024159C 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* C37AD0 802415A0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* C37AD4 802415A4 E6000018 */  swc1      $f0, 0x18($s0)
/* C37AD8 802415A8 8C460028 */  lw        $a2, 0x28($v0)
/* C37ADC 802415AC 0C00A720 */  jal       atan2
/* C37AE0 802415B0 8C470030 */   lw       $a3, 0x30($v0)
/* C37AE4 802415B4 46000506 */  mov.s     $f20, $f0
/* C37AE8 802415B8 C60C000C */  lwc1      $f12, 0xc($s0)
/* C37AEC 802415BC 0C00A70A */  jal       get_clamped_angle_diff
/* C37AF0 802415C0 4600A386 */   mov.s    $f14, $f20
/* C37AF4 802415C4 46000086 */  mov.s     $f2, $f0
/* C37AF8 802415C8 8E22001C */  lw        $v0, 0x1c($s1)
/* C37AFC 802415CC 46001005 */  abs.s     $f0, $f2
/* C37B00 802415D0 44822000 */  mtc1      $v0, $f4
/* C37B04 802415D4 00000000 */  nop       
/* C37B08 802415D8 46802120 */  cvt.s.w   $f4, $f4
/* C37B0C 802415DC 4600203C */  c.lt.s    $f4, $f0
/* C37B10 802415E0 00000000 */  nop       
/* C37B14 802415E4 4500000D */  bc1f      .L8024161C
/* C37B18 802415E8 00000000 */   nop      
/* C37B1C 802415EC 44800000 */  mtc1      $zero, $f0
/* C37B20 802415F0 C614000C */  lwc1      $f20, 0xc($s0)
/* C37B24 802415F4 4600103C */  c.lt.s    $f2, $f0
/* C37B28 802415F8 00000000 */  nop       
/* C37B2C 802415FC 45000006 */  bc1f      .L80241618
/* C37B30 80241600 00021023 */   negu     $v0, $v0
/* C37B34 80241604 44820000 */  mtc1      $v0, $f0
/* C37B38 80241608 00000000 */  nop       
/* C37B3C 8024160C 46800020 */  cvt.s.w   $f0, $f0
/* C37B40 80241610 08090587 */  j         .L8024161C
/* C37B44 80241614 4600A500 */   add.s    $f20, $f20, $f0
.L80241618:
/* C37B48 80241618 4604A500 */  add.s     $f20, $f20, $f4
.L8024161C:
/* C37B4C 8024161C 0C00A6C9 */  jal       clamp_angle
/* C37B50 80241620 4600A306 */   mov.s    $f12, $f20
/* C37B54 80241624 2402000D */  addiu     $v0, $zero, 0xd
/* C37B58 80241628 E600000C */  swc1      $f0, 0xc($s0)
/* C37B5C 8024162C AE620070 */  sw        $v0, 0x70($s3)
.L80241630:
/* C37B60 80241630 8FBF0020 */  lw        $ra, 0x20($sp)
/* C37B64 80241634 8FB3001C */  lw        $s3, 0x1c($sp)
/* C37B68 80241638 8FB20018 */  lw        $s2, 0x18($sp)
/* C37B6C 8024163C 8FB10014 */  lw        $s1, 0x14($sp)
/* C37B70 80241640 8FB00010 */  lw        $s0, 0x10($sp)
/* C37B74 80241644 D7B40028 */  ldc1      $f20, 0x28($sp)
/* C37B78 80241648 03E00008 */  jr        $ra
/* C37B7C 8024164C 27BD0030 */   addiu    $sp, $sp, 0x30
