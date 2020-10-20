.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240404_8236C4
/* 8236C4 80240404 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 8236C8 80240408 AFB00010 */  sw        $s0, 0x10($sp)
/* 8236CC 8024040C 0080802D */  daddu     $s0, $a0, $zero
/* 8236D0 80240410 10A00005 */  beqz      $a1, .L80240428
/* 8236D4 80240414 AFBF0014 */   sw       $ra, 0x14($sp)
/* 8236D8 80240418 AE000070 */  sw        $zero, 0x70($s0)
/* 8236DC 8024041C AE000074 */  sw        $zero, 0x74($s0)
/* 8236E0 80240420 AE000078 */  sw        $zero, 0x78($s0)
/* 8236E4 80240424 AE00007C */  sw        $zero, 0x7c($s0)
.L80240428:
/* 8236E8 80240428 8E020070 */  lw        $v0, 0x70($s0)
/* 8236EC 8024042C 1440000E */  bnez      $v0, .L80240468
/* 8236F0 80240430 00000000 */   nop      
/* 8236F4 80240434 8E0300A8 */  lw        $v1, 0xa8($s0)
/* 8236F8 80240438 8E020088 */  lw        $v0, 0x88($s0)
/* 8236FC 8024043C 00621821 */  addu      $v1, $v1, $v0
/* 823700 80240440 04610004 */  bgez      $v1, .L80240454
/* 823704 80240444 AE0300A8 */   sw       $v1, 0xa8($s0)
/* 823708 80240448 3C020002 */  lui       $v0, 2
/* 82370C 8024044C 08090119 */  j         .L80240464
/* 823710 80240450 00621021 */   addu     $v0, $v1, $v0
.L80240454:
/* 823714 80240454 3C040002 */  lui       $a0, 2
/* 823718 80240458 0083102A */  slt       $v0, $a0, $v1
/* 82371C 8024045C 10400002 */  beqz      $v0, .L80240468
/* 823720 80240460 00641023 */   subu     $v0, $v1, $a0
.L80240464:
/* 823724 80240464 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240468:
/* 823728 80240468 8E020074 */  lw        $v0, 0x74($s0)
/* 82372C 8024046C 1440000E */  bnez      $v0, .L802404A8
/* 823730 80240470 00000000 */   nop      
/* 823734 80240474 8E0300AC */  lw        $v1, 0xac($s0)
/* 823738 80240478 8E02008C */  lw        $v0, 0x8c($s0)
/* 82373C 8024047C 00621821 */  addu      $v1, $v1, $v0
/* 823740 80240480 04610004 */  bgez      $v1, .L80240494
/* 823744 80240484 AE0300AC */   sw       $v1, 0xac($s0)
/* 823748 80240488 3C020002 */  lui       $v0, 2
/* 82374C 8024048C 08090129 */  j         .L802404A4
/* 823750 80240490 00621021 */   addu     $v0, $v1, $v0
.L80240494:
/* 823754 80240494 3C040002 */  lui       $a0, 2
/* 823758 80240498 0083102A */  slt       $v0, $a0, $v1
/* 82375C 8024049C 10400002 */  beqz      $v0, .L802404A8
/* 823760 802404A0 00641023 */   subu     $v0, $v1, $a0
.L802404A4:
/* 823764 802404A4 AE0200AC */  sw        $v0, 0xac($s0)
.L802404A8:
/* 823768 802404A8 8E020078 */  lw        $v0, 0x78($s0)
/* 82376C 802404AC 1440000E */  bnez      $v0, .L802404E8
/* 823770 802404B0 00000000 */   nop      
/* 823774 802404B4 8E0300B0 */  lw        $v1, 0xb0($s0)
/* 823778 802404B8 8E020090 */  lw        $v0, 0x90($s0)
/* 82377C 802404BC 00621821 */  addu      $v1, $v1, $v0
/* 823780 802404C0 04610004 */  bgez      $v1, .L802404D4
/* 823784 802404C4 AE0300B0 */   sw       $v1, 0xb0($s0)
/* 823788 802404C8 3C020002 */  lui       $v0, 2
/* 82378C 802404CC 08090139 */  j         .L802404E4
/* 823790 802404D0 00621021 */   addu     $v0, $v1, $v0
.L802404D4:
/* 823794 802404D4 3C040002 */  lui       $a0, 2
/* 823798 802404D8 0083102A */  slt       $v0, $a0, $v1
/* 82379C 802404DC 10400002 */  beqz      $v0, .L802404E8
/* 8237A0 802404E0 00641023 */   subu     $v0, $v1, $a0
.L802404E4:
/* 8237A4 802404E4 AE0200B0 */  sw        $v0, 0xb0($s0)
.L802404E8:
/* 8237A8 802404E8 8E02007C */  lw        $v0, 0x7c($s0)
/* 8237AC 802404EC 1440000E */  bnez      $v0, .L80240528
/* 8237B0 802404F0 00000000 */   nop      
/* 8237B4 802404F4 8E0300B4 */  lw        $v1, 0xb4($s0)
/* 8237B8 802404F8 8E020094 */  lw        $v0, 0x94($s0)
/* 8237BC 802404FC 00621821 */  addu      $v1, $v1, $v0
/* 8237C0 80240500 04610004 */  bgez      $v1, .L80240514
/* 8237C4 80240504 AE0300B4 */   sw       $v1, 0xb4($s0)
/* 8237C8 80240508 3C020002 */  lui       $v0, 2
/* 8237CC 8024050C 08090149 */  j         .L80240524
/* 8237D0 80240510 00621021 */   addu     $v0, $v1, $v0
.L80240514:
/* 8237D4 80240514 3C040002 */  lui       $a0, 2
/* 8237D8 80240518 0083102A */  slt       $v0, $a0, $v1
/* 8237DC 8024051C 10400002 */  beqz      $v0, .L80240528
/* 8237E0 80240520 00641023 */   subu     $v0, $v1, $a0
.L80240524:
/* 8237E4 80240524 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240528:
/* 8237E8 80240528 8E040084 */  lw        $a0, 0x84($s0)
/* 8237EC 8024052C 0C046F07 */  jal       set_main_pan_u
/* 8237F0 80240530 8E0500A8 */   lw       $a1, 0xa8($s0)
/* 8237F4 80240534 8E040084 */  lw        $a0, 0x84($s0)
/* 8237F8 80240538 0C046F0D */  jal       set_main_pan_v
/* 8237FC 8024053C 8E0500AC */   lw       $a1, 0xac($s0)
/* 823800 80240540 8E040084 */  lw        $a0, 0x84($s0)
/* 823804 80240544 0C046F13 */  jal       set_aux_pan_u
/* 823808 80240548 8E0500B0 */   lw       $a1, 0xb0($s0)
/* 82380C 8024054C 8E040084 */  lw        $a0, 0x84($s0)
/* 823810 80240550 0C046F19 */  jal       set_aux_pan_v
/* 823814 80240554 8E0500B4 */   lw       $a1, 0xb4($s0)
/* 823818 80240558 8E020070 */  lw        $v0, 0x70($s0)
/* 82381C 8024055C 8E030078 */  lw        $v1, 0x78($s0)
/* 823820 80240560 8E040098 */  lw        $a0, 0x98($s0)
/* 823824 80240564 24420001 */  addiu     $v0, $v0, 1
/* 823828 80240568 AE020070 */  sw        $v0, 0x70($s0)
/* 82382C 8024056C 8E020074 */  lw        $v0, 0x74($s0)
/* 823830 80240570 24630001 */  addiu     $v1, $v1, 1
/* 823834 80240574 AE030078 */  sw        $v1, 0x78($s0)
/* 823838 80240578 8E030070 */  lw        $v1, 0x70($s0)
/* 82383C 8024057C 24420001 */  addiu     $v0, $v0, 1
/* 823840 80240580 AE020074 */  sw        $v0, 0x74($s0)
/* 823844 80240584 8E02007C */  lw        $v0, 0x7c($s0)
/* 823848 80240588 0064182A */  slt       $v1, $v1, $a0
/* 82384C 8024058C 24420001 */  addiu     $v0, $v0, 1
/* 823850 80240590 14600002 */  bnez      $v1, .L8024059C
/* 823854 80240594 AE02007C */   sw       $v0, 0x7c($s0)
/* 823858 80240598 AE000070 */  sw        $zero, 0x70($s0)
.L8024059C:
/* 82385C 8024059C 8E020074 */  lw        $v0, 0x74($s0)
/* 823860 802405A0 8E03009C */  lw        $v1, 0x9c($s0)
/* 823864 802405A4 0043102A */  slt       $v0, $v0, $v1
/* 823868 802405A8 50400001 */  beql      $v0, $zero, .L802405B0
/* 82386C 802405AC AE000074 */   sw       $zero, 0x74($s0)
.L802405B0:
/* 823870 802405B0 8E020078 */  lw        $v0, 0x78($s0)
/* 823874 802405B4 8E0300A0 */  lw        $v1, 0xa0($s0)
/* 823878 802405B8 0043102A */  slt       $v0, $v0, $v1
/* 82387C 802405BC 50400001 */  beql      $v0, $zero, .L802405C4
/* 823880 802405C0 AE000078 */   sw       $zero, 0x78($s0)
.L802405C4:
/* 823884 802405C4 8E02007C */  lw        $v0, 0x7c($s0)
/* 823888 802405C8 8E0300A4 */  lw        $v1, 0xa4($s0)
/* 82388C 802405CC 0043102A */  slt       $v0, $v0, $v1
/* 823890 802405D0 50400001 */  beql      $v0, $zero, .L802405D8
/* 823894 802405D4 AE00007C */   sw       $zero, 0x7c($s0)
.L802405D8:
/* 823898 802405D8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 82389C 802405DC 8FB00010 */  lw        $s0, 0x10($sp)
/* 8238A0 802405E0 0000102D */  daddu     $v0, $zero, $zero
/* 8238A4 802405E4 03E00008 */  jr        $ra
/* 8238A8 802405E8 27BD0018 */   addiu    $sp, $sp, 0x18
/* 8238AC 802405EC 00000000 */  nop       
