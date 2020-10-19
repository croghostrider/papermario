.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802402E0_8A26B0
/* 8A26B0 802402E0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 8A26B4 802402E4 AFB00010 */  sw        $s0, 0x10($sp)
/* 8A26B8 802402E8 0080802D */  daddu     $s0, $a0, $zero
/* 8A26BC 802402EC AFBF0014 */  sw        $ra, 0x14($sp)
/* 8A26C0 802402F0 8E0300A8 */  lw        $v1, 0xa8($s0)
/* 8A26C4 802402F4 8E020088 */  lw        $v0, 0x88($s0)
/* 8A26C8 802402F8 00621821 */  addu      $v1, $v1, $v0
/* 8A26CC 802402FC 04610004 */  bgez      $v1, .L80240310
/* 8A26D0 80240300 AE0300A8 */   sw       $v1, 0xa8($s0)
/* 8A26D4 80240304 3C020002 */  lui       $v0, 2
/* 8A26D8 80240308 080900C8 */  j         .L80240320
/* 8A26DC 8024030C 00621021 */   addu     $v0, $v1, $v0
.L80240310:
/* 8A26E0 80240310 3C040002 */  lui       $a0, 2
/* 8A26E4 80240314 0083102A */  slt       $v0, $a0, $v1
/* 8A26E8 80240318 10400002 */  beqz      $v0, .L80240324
/* 8A26EC 8024031C 00641023 */   subu     $v0, $v1, $a0
.L80240320:
/* 8A26F0 80240320 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240324:
/* 8A26F4 80240324 8E0300AC */  lw        $v1, 0xac($s0)
/* 8A26F8 80240328 8E02008C */  lw        $v0, 0x8c($s0)
/* 8A26FC 8024032C 00621821 */  addu      $v1, $v1, $v0
/* 8A2700 80240330 04610004 */  bgez      $v1, .L80240344
/* 8A2704 80240334 AE0300AC */   sw       $v1, 0xac($s0)
/* 8A2708 80240338 3C020002 */  lui       $v0, 2
/* 8A270C 8024033C 080900D5 */  j         .L80240354
/* 8A2710 80240340 00621021 */   addu     $v0, $v1, $v0
.L80240344:
/* 8A2714 80240344 3C040002 */  lui       $a0, 2
/* 8A2718 80240348 0083102A */  slt       $v0, $a0, $v1
/* 8A271C 8024034C 10400002 */  beqz      $v0, .L80240358
/* 8A2720 80240350 00641023 */   subu     $v0, $v1, $a0
.L80240354:
/* 8A2724 80240354 AE0200AC */  sw        $v0, 0xac($s0)
.L80240358:
/* 8A2728 80240358 8E0300B0 */  lw        $v1, 0xb0($s0)
/* 8A272C 8024035C 8E020090 */  lw        $v0, 0x90($s0)
/* 8A2730 80240360 00621821 */  addu      $v1, $v1, $v0
/* 8A2734 80240364 04610004 */  bgez      $v1, .L80240378
/* 8A2738 80240368 AE0300B0 */   sw       $v1, 0xb0($s0)
/* 8A273C 8024036C 3C020002 */  lui       $v0, 2
/* 8A2740 80240370 080900E2 */  j         .L80240388
/* 8A2744 80240374 00621021 */   addu     $v0, $v1, $v0
.L80240378:
/* 8A2748 80240378 3C040002 */  lui       $a0, 2
/* 8A274C 8024037C 0083102A */  slt       $v0, $a0, $v1
/* 8A2750 80240380 10400002 */  beqz      $v0, .L8024038C
/* 8A2754 80240384 00641023 */   subu     $v0, $v1, $a0
.L80240388:
/* 8A2758 80240388 AE0200B0 */  sw        $v0, 0xb0($s0)
.L8024038C:
/* 8A275C 8024038C 8E0300B4 */  lw        $v1, 0xb4($s0)
/* 8A2760 80240390 8E020094 */  lw        $v0, 0x94($s0)
/* 8A2764 80240394 00621821 */  addu      $v1, $v1, $v0
/* 8A2768 80240398 04610004 */  bgez      $v1, .L802403AC
/* 8A276C 8024039C AE0300B4 */   sw       $v1, 0xb4($s0)
/* 8A2770 802403A0 3C020002 */  lui       $v0, 2
/* 8A2774 802403A4 080900EF */  j         .L802403BC
/* 8A2778 802403A8 00621021 */   addu     $v0, $v1, $v0
.L802403AC:
/* 8A277C 802403AC 3C040002 */  lui       $a0, 2
/* 8A2780 802403B0 0083102A */  slt       $v0, $a0, $v1
/* 8A2784 802403B4 10400002 */  beqz      $v0, .L802403C0
/* 8A2788 802403B8 00641023 */   subu     $v0, $v1, $a0
.L802403BC:
/* 8A278C 802403BC AE0200B4 */  sw        $v0, 0xb4($s0)
.L802403C0:
/* 8A2790 802403C0 8E040084 */  lw        $a0, 0x84($s0)
/* 8A2794 802403C4 0C046F07 */  jal       set_main_pan_u
/* 8A2798 802403C8 8E0500A8 */   lw       $a1, 0xa8($s0)
/* 8A279C 802403CC 8E040084 */  lw        $a0, 0x84($s0)
/* 8A27A0 802403D0 0C046F0D */  jal       set_main_pan_v
/* 8A27A4 802403D4 8E0500AC */   lw       $a1, 0xac($s0)
/* 8A27A8 802403D8 8E040084 */  lw        $a0, 0x84($s0)
/* 8A27AC 802403DC 0C046F13 */  jal       set_aux_pan_u
/* 8A27B0 802403E0 8E0500B0 */   lw       $a1, 0xb0($s0)
/* 8A27B4 802403E4 8E040084 */  lw        $a0, 0x84($s0)
/* 8A27B8 802403E8 0C046F19 */  jal       set_aux_pan_v
/* 8A27BC 802403EC 8E0500B4 */   lw       $a1, 0xb4($s0)
/* 8A27C0 802403F0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 8A27C4 802403F4 8FB00010 */  lw        $s0, 0x10($sp)
/* 8A27C8 802403F8 0000102D */  daddu     $v0, $zero, $zero
/* 8A27CC 802403FC 03E00008 */  jr        $ra
/* 8A27D0 80240400 27BD0018 */   addiu    $sp, $sp, 0x18
