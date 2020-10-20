.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240404_87F1F4
/* 87F1F4 80240404 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 87F1F8 80240408 AFB00010 */  sw        $s0, 0x10($sp)
/* 87F1FC 8024040C 0080802D */  daddu     $s0, $a0, $zero
/* 87F200 80240410 10A00005 */  beqz      $a1, .L80240428
/* 87F204 80240414 AFBF0014 */   sw       $ra, 0x14($sp)
/* 87F208 80240418 AE000070 */  sw        $zero, 0x70($s0)
/* 87F20C 8024041C AE000074 */  sw        $zero, 0x74($s0)
/* 87F210 80240420 AE000078 */  sw        $zero, 0x78($s0)
/* 87F214 80240424 AE00007C */  sw        $zero, 0x7c($s0)
.L80240428:
/* 87F218 80240428 8E020070 */  lw        $v0, 0x70($s0)
/* 87F21C 8024042C 1440000E */  bnez      $v0, .L80240468
/* 87F220 80240430 00000000 */   nop      
/* 87F224 80240434 8E0300A8 */  lw        $v1, 0xa8($s0)
/* 87F228 80240438 8E020088 */  lw        $v0, 0x88($s0)
/* 87F22C 8024043C 00621821 */  addu      $v1, $v1, $v0
/* 87F230 80240440 04610004 */  bgez      $v1, .L80240454
/* 87F234 80240444 AE0300A8 */   sw       $v1, 0xa8($s0)
/* 87F238 80240448 3C020002 */  lui       $v0, 2
/* 87F23C 8024044C 08090119 */  j         .L80240464
/* 87F240 80240450 00621021 */   addu     $v0, $v1, $v0
.L80240454:
/* 87F244 80240454 3C040002 */  lui       $a0, 2
/* 87F248 80240458 0083102A */  slt       $v0, $a0, $v1
/* 87F24C 8024045C 10400002 */  beqz      $v0, .L80240468
/* 87F250 80240460 00641023 */   subu     $v0, $v1, $a0
.L80240464:
/* 87F254 80240464 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240468:
/* 87F258 80240468 8E020074 */  lw        $v0, 0x74($s0)
/* 87F25C 8024046C 1440000E */  bnez      $v0, .L802404A8
/* 87F260 80240470 00000000 */   nop      
/* 87F264 80240474 8E0300AC */  lw        $v1, 0xac($s0)
/* 87F268 80240478 8E02008C */  lw        $v0, 0x8c($s0)
/* 87F26C 8024047C 00621821 */  addu      $v1, $v1, $v0
/* 87F270 80240480 04610004 */  bgez      $v1, .L80240494
/* 87F274 80240484 AE0300AC */   sw       $v1, 0xac($s0)
/* 87F278 80240488 3C020002 */  lui       $v0, 2
/* 87F27C 8024048C 08090129 */  j         .L802404A4
/* 87F280 80240490 00621021 */   addu     $v0, $v1, $v0
.L80240494:
/* 87F284 80240494 3C040002 */  lui       $a0, 2
/* 87F288 80240498 0083102A */  slt       $v0, $a0, $v1
/* 87F28C 8024049C 10400002 */  beqz      $v0, .L802404A8
/* 87F290 802404A0 00641023 */   subu     $v0, $v1, $a0
.L802404A4:
/* 87F294 802404A4 AE0200AC */  sw        $v0, 0xac($s0)
.L802404A8:
/* 87F298 802404A8 8E020078 */  lw        $v0, 0x78($s0)
/* 87F29C 802404AC 1440000E */  bnez      $v0, .L802404E8
/* 87F2A0 802404B0 00000000 */   nop      
/* 87F2A4 802404B4 8E0300B0 */  lw        $v1, 0xb0($s0)
/* 87F2A8 802404B8 8E020090 */  lw        $v0, 0x90($s0)
/* 87F2AC 802404BC 00621821 */  addu      $v1, $v1, $v0
/* 87F2B0 802404C0 04610004 */  bgez      $v1, .L802404D4
/* 87F2B4 802404C4 AE0300B0 */   sw       $v1, 0xb0($s0)
/* 87F2B8 802404C8 3C020002 */  lui       $v0, 2
/* 87F2BC 802404CC 08090139 */  j         .L802404E4
/* 87F2C0 802404D0 00621021 */   addu     $v0, $v1, $v0
.L802404D4:
/* 87F2C4 802404D4 3C040002 */  lui       $a0, 2
/* 87F2C8 802404D8 0083102A */  slt       $v0, $a0, $v1
/* 87F2CC 802404DC 10400002 */  beqz      $v0, .L802404E8
/* 87F2D0 802404E0 00641023 */   subu     $v0, $v1, $a0
.L802404E4:
/* 87F2D4 802404E4 AE0200B0 */  sw        $v0, 0xb0($s0)
.L802404E8:
/* 87F2D8 802404E8 8E02007C */  lw        $v0, 0x7c($s0)
/* 87F2DC 802404EC 1440000E */  bnez      $v0, .L80240528
/* 87F2E0 802404F0 00000000 */   nop      
/* 87F2E4 802404F4 8E0300B4 */  lw        $v1, 0xb4($s0)
/* 87F2E8 802404F8 8E020094 */  lw        $v0, 0x94($s0)
/* 87F2EC 802404FC 00621821 */  addu      $v1, $v1, $v0
/* 87F2F0 80240500 04610004 */  bgez      $v1, .L80240514
/* 87F2F4 80240504 AE0300B4 */   sw       $v1, 0xb4($s0)
/* 87F2F8 80240508 3C020002 */  lui       $v0, 2
/* 87F2FC 8024050C 08090149 */  j         .L80240524
/* 87F300 80240510 00621021 */   addu     $v0, $v1, $v0
.L80240514:
/* 87F304 80240514 3C040002 */  lui       $a0, 2
/* 87F308 80240518 0083102A */  slt       $v0, $a0, $v1
/* 87F30C 8024051C 10400002 */  beqz      $v0, .L80240528
/* 87F310 80240520 00641023 */   subu     $v0, $v1, $a0
.L80240524:
/* 87F314 80240524 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240528:
/* 87F318 80240528 8E040084 */  lw        $a0, 0x84($s0)
/* 87F31C 8024052C 0C046F07 */  jal       set_main_pan_u
/* 87F320 80240530 8E0500A8 */   lw       $a1, 0xa8($s0)
/* 87F324 80240534 8E040084 */  lw        $a0, 0x84($s0)
/* 87F328 80240538 0C046F0D */  jal       set_main_pan_v
/* 87F32C 8024053C 8E0500AC */   lw       $a1, 0xac($s0)
/* 87F330 80240540 8E040084 */  lw        $a0, 0x84($s0)
/* 87F334 80240544 0C046F13 */  jal       set_aux_pan_u
/* 87F338 80240548 8E0500B0 */   lw       $a1, 0xb0($s0)
/* 87F33C 8024054C 8E040084 */  lw        $a0, 0x84($s0)
/* 87F340 80240550 0C046F19 */  jal       set_aux_pan_v
/* 87F344 80240554 8E0500B4 */   lw       $a1, 0xb4($s0)
/* 87F348 80240558 8E020070 */  lw        $v0, 0x70($s0)
/* 87F34C 8024055C 8E030078 */  lw        $v1, 0x78($s0)
/* 87F350 80240560 8E040098 */  lw        $a0, 0x98($s0)
/* 87F354 80240564 24420001 */  addiu     $v0, $v0, 1
/* 87F358 80240568 AE020070 */  sw        $v0, 0x70($s0)
/* 87F35C 8024056C 8E020074 */  lw        $v0, 0x74($s0)
/* 87F360 80240570 24630001 */  addiu     $v1, $v1, 1
/* 87F364 80240574 AE030078 */  sw        $v1, 0x78($s0)
/* 87F368 80240578 8E030070 */  lw        $v1, 0x70($s0)
/* 87F36C 8024057C 24420001 */  addiu     $v0, $v0, 1
/* 87F370 80240580 AE020074 */  sw        $v0, 0x74($s0)
/* 87F374 80240584 8E02007C */  lw        $v0, 0x7c($s0)
/* 87F378 80240588 0064182A */  slt       $v1, $v1, $a0
/* 87F37C 8024058C 24420001 */  addiu     $v0, $v0, 1
/* 87F380 80240590 14600002 */  bnez      $v1, .L8024059C
/* 87F384 80240594 AE02007C */   sw       $v0, 0x7c($s0)
/* 87F388 80240598 AE000070 */  sw        $zero, 0x70($s0)
.L8024059C:
/* 87F38C 8024059C 8E020074 */  lw        $v0, 0x74($s0)
/* 87F390 802405A0 8E03009C */  lw        $v1, 0x9c($s0)
/* 87F394 802405A4 0043102A */  slt       $v0, $v0, $v1
/* 87F398 802405A8 50400001 */  beql      $v0, $zero, .L802405B0
/* 87F39C 802405AC AE000074 */   sw       $zero, 0x74($s0)
.L802405B0:
/* 87F3A0 802405B0 8E020078 */  lw        $v0, 0x78($s0)
/* 87F3A4 802405B4 8E0300A0 */  lw        $v1, 0xa0($s0)
/* 87F3A8 802405B8 0043102A */  slt       $v0, $v0, $v1
/* 87F3AC 802405BC 50400001 */  beql      $v0, $zero, .L802405C4
/* 87F3B0 802405C0 AE000078 */   sw       $zero, 0x78($s0)
.L802405C4:
/* 87F3B4 802405C4 8E02007C */  lw        $v0, 0x7c($s0)
/* 87F3B8 802405C8 8E0300A4 */  lw        $v1, 0xa4($s0)
/* 87F3BC 802405CC 0043102A */  slt       $v0, $v0, $v1
/* 87F3C0 802405D0 50400001 */  beql      $v0, $zero, .L802405D8
/* 87F3C4 802405D4 AE00007C */   sw       $zero, 0x7c($s0)
.L802405D8:
/* 87F3C8 802405D8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 87F3CC 802405DC 8FB00010 */  lw        $s0, 0x10($sp)
/* 87F3D0 802405E0 0000102D */  daddu     $v0, $zero, $zero
/* 87F3D4 802405E4 03E00008 */  jr        $ra
/* 87F3D8 802405E8 27BD0018 */   addiu    $sp, $sp, 0x18
/* 87F3DC 802405EC 00000000 */  nop       
