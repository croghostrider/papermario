.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802400BC_97B6EC
/* 97B6EC 802400BC 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 97B6F0 802400C0 AFB3001C */  sw        $s3, 0x1c($sp)
/* 97B6F4 802400C4 0080982D */  daddu     $s3, $a0, $zero
/* 97B6F8 802400C8 AFBF0020 */  sw        $ra, 0x20($sp)
/* 97B6FC 802400CC AFB20018 */  sw        $s2, 0x18($sp)
/* 97B700 802400D0 AFB10014 */  sw        $s1, 0x14($sp)
/* 97B704 802400D4 AFB00010 */  sw        $s0, 0x10($sp)
/* 97B708 802400D8 8E710148 */  lw        $s1, 0x148($s3)
/* 97B70C 802400DC 86240008 */  lh        $a0, 8($s1)
/* 97B710 802400E0 0C00EABB */  jal       get_npc_unsafe
/* 97B714 802400E4 00A0902D */   daddu    $s2, $a1, $zero
/* 97B718 802400E8 0040802D */  daddu     $s0, $v0, $zero
/* 97B71C 802400EC 8602008E */  lh        $v0, 0x8e($s0)
/* 97B720 802400F0 9603008E */  lhu       $v1, 0x8e($s0)
/* 97B724 802400F4 18400005 */  blez      $v0, .L8024010C
/* 97B728 802400F8 2462FFFF */   addiu    $v0, $v1, -1
/* 97B72C 802400FC A602008E */  sh        $v0, 0x8e($s0)
/* 97B730 80240100 00021400 */  sll       $v0, $v0, 0x10
/* 97B734 80240104 1C400033 */  bgtz      $v0, .L802401D4
/* 97B738 80240108 00000000 */   nop      
.L8024010C:
/* 97B73C 8024010C 8602008C */  lh        $v0, 0x8c($s0)
/* 97B740 80240110 14400030 */  bnez      $v0, .L802401D4
/* 97B744 80240114 00000000 */   nop      
/* 97B748 80240118 8E2200CC */  lw        $v0, 0xcc($s1)
/* 97B74C 8024011C 8C420024 */  lw        $v0, 0x24($v0)
/* 97B750 80240120 AE020028 */  sw        $v0, 0x28($s0)
/* 97B754 80240124 C6400018 */  lwc1      $f0, 0x18($s2)
/* 97B758 80240128 E6000018 */  swc1      $f0, 0x18($s0)
/* 97B75C 8024012C 8E230088 */  lw        $v1, 0x88($s1)
/* 97B760 80240130 24020005 */  addiu     $v0, $zero, 5
/* 97B764 80240134 10620005 */  beq       $v1, $v0, .L8024014C
/* 97B768 80240138 00000000 */   nop      
/* 97B76C 8024013C 10600003 */  beqz      $v1, .L8024014C
/* 97B770 80240140 24020001 */   addiu    $v0, $zero, 1
/* 97B774 80240144 14620006 */  bne       $v1, $v0, .L80240160
/* 97B778 80240148 00000000 */   nop      
.L8024014C:
/* 97B77C 8024014C 8E220084 */  lw        $v0, 0x84($s1)
/* 97B780 80240150 00021FC2 */  srl       $v1, $v0, 0x1f
/* 97B784 80240154 00431021 */  addu      $v0, $v0, $v1
/* 97B788 80240158 00021043 */  sra       $v0, $v0, 1
/* 97B78C 8024015C A60200A8 */  sh        $v0, 0xa8($s0)
.L80240160:
/* 97B790 80240160 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 97B794 80240164 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 97B798 80240168 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 97B79C 8024016C C60E0040 */  lwc1      $f14, 0x40($s0)
/* 97B7A0 80240170 8C460028 */  lw        $a2, 0x28($v0)
/* 97B7A4 80240174 0C00A7B5 */  jal       dist2D
/* 97B7A8 80240178 8C470030 */   lw       $a3, 0x30($v0)
/* 97B7AC 8024017C C6020018 */  lwc1      $f2, 0x18($s0)
/* 97B7B0 80240180 46020003 */  div.s     $f0, $f0, $f2
/* 97B7B4 80240184 3C018024 */  lui       $at, 0x8024
/* 97B7B8 80240188 D4222430 */  ldc1      $f2, 0x2430($at)
/* 97B7BC 8024018C 46000021 */  cvt.d.s   $f0, $f0
/* 97B7C0 80240190 46220000 */  add.d     $f0, $f0, $f2
/* 97B7C4 80240194 4620010D */  trunc.w.d $f4, $f0
/* 97B7C8 80240198 44022000 */  mfc1      $v0, $f4
/* 97B7CC 8024019C 00000000 */  nop       
/* 97B7D0 802401A0 A602008E */  sh        $v0, 0x8e($s0)
/* 97B7D4 802401A4 00021400 */  sll       $v0, $v0, 0x10
/* 97B7D8 802401A8 8E230078 */  lw        $v1, 0x78($s1)
/* 97B7DC 802401AC 00021403 */  sra       $v0, $v0, 0x10
/* 97B7E0 802401B0 0043102A */  slt       $v0, $v0, $v1
/* 97B7E4 802401B4 10400003 */  beqz      $v0, .L802401C4
/* 97B7E8 802401B8 00000000 */   nop      
/* 97B7EC 802401BC 9622007A */  lhu       $v0, 0x7a($s1)
/* 97B7F0 802401C0 A602008E */  sh        $v0, 0x8e($s0)
.L802401C4:
/* 97B7F4 802401C4 8602008E */  lh        $v0, 0x8e($s0)
/* 97B7F8 802401C8 AE22007C */  sw        $v0, 0x7c($s1)
/* 97B7FC 802401CC 2402000E */  addiu     $v0, $zero, 0xe
/* 97B800 802401D0 AE620070 */  sw        $v0, 0x70($s3)
.L802401D4:
/* 97B804 802401D4 8FBF0020 */  lw        $ra, 0x20($sp)
/* 97B808 802401D8 8FB3001C */  lw        $s3, 0x1c($sp)
/* 97B80C 802401DC 8FB20018 */  lw        $s2, 0x18($sp)
/* 97B810 802401E0 8FB10014 */  lw        $s1, 0x14($sp)
/* 97B814 802401E4 8FB00010 */  lw        $s0, 0x10($sp)
/* 97B818 802401E8 03E00008 */  jr        $ra
/* 97B81C 802401EC 27BD0028 */   addiu    $sp, $sp, 0x28
