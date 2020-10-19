.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_89A350
/* 89A350 80240000 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 89A354 80240004 AFB00010 */  sw        $s0, 0x10($sp)
/* 89A358 80240008 0080802D */  daddu     $s0, $a0, $zero
/* 89A35C 8024000C AFBF0014 */  sw        $ra, 0x14($sp)
/* 89A360 80240010 8E0300A8 */  lw        $v1, 0xa8($s0)
/* 89A364 80240014 8E020088 */  lw        $v0, 0x88($s0)
/* 89A368 80240018 00621821 */  addu      $v1, $v1, $v0
/* 89A36C 8024001C 04610004 */  bgez      $v1, .L80240030
/* 89A370 80240020 AE0300A8 */   sw       $v1, 0xa8($s0)
/* 89A374 80240024 3C020002 */  lui       $v0, 2
/* 89A378 80240028 08090010 */  j         .L80240040
/* 89A37C 8024002C 00621021 */   addu     $v0, $v1, $v0
.L80240030:
/* 89A380 80240030 3C040002 */  lui       $a0, 2
/* 89A384 80240034 0083102A */  slt       $v0, $a0, $v1
/* 89A388 80240038 10400002 */  beqz      $v0, .L80240044
/* 89A38C 8024003C 00641023 */   subu     $v0, $v1, $a0
.L80240040:
/* 89A390 80240040 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240044:
/* 89A394 80240044 8E0300AC */  lw        $v1, 0xac($s0)
/* 89A398 80240048 8E02008C */  lw        $v0, 0x8c($s0)
/* 89A39C 8024004C 00621821 */  addu      $v1, $v1, $v0
/* 89A3A0 80240050 04610004 */  bgez      $v1, .L80240064
/* 89A3A4 80240054 AE0300AC */   sw       $v1, 0xac($s0)
/* 89A3A8 80240058 3C020002 */  lui       $v0, 2
/* 89A3AC 8024005C 0809001D */  j         .L80240074
/* 89A3B0 80240060 00621021 */   addu     $v0, $v1, $v0
.L80240064:
/* 89A3B4 80240064 3C040002 */  lui       $a0, 2
/* 89A3B8 80240068 0083102A */  slt       $v0, $a0, $v1
/* 89A3BC 8024006C 10400002 */  beqz      $v0, .L80240078
/* 89A3C0 80240070 00641023 */   subu     $v0, $v1, $a0
.L80240074:
/* 89A3C4 80240074 AE0200AC */  sw        $v0, 0xac($s0)
.L80240078:
/* 89A3C8 80240078 8E0300B0 */  lw        $v1, 0xb0($s0)
/* 89A3CC 8024007C 8E020090 */  lw        $v0, 0x90($s0)
/* 89A3D0 80240080 00621821 */  addu      $v1, $v1, $v0
/* 89A3D4 80240084 04610004 */  bgez      $v1, .L80240098
/* 89A3D8 80240088 AE0300B0 */   sw       $v1, 0xb0($s0)
/* 89A3DC 8024008C 3C020002 */  lui       $v0, 2
/* 89A3E0 80240090 0809002A */  j         .L802400A8
/* 89A3E4 80240094 00621021 */   addu     $v0, $v1, $v0
.L80240098:
/* 89A3E8 80240098 3C040002 */  lui       $a0, 2
/* 89A3EC 8024009C 0083102A */  slt       $v0, $a0, $v1
/* 89A3F0 802400A0 10400002 */  beqz      $v0, .L802400AC
/* 89A3F4 802400A4 00641023 */   subu     $v0, $v1, $a0
.L802400A8:
/* 89A3F8 802400A8 AE0200B0 */  sw        $v0, 0xb0($s0)
.L802400AC:
/* 89A3FC 802400AC 8E0300B4 */  lw        $v1, 0xb4($s0)
/* 89A400 802400B0 8E020094 */  lw        $v0, 0x94($s0)
/* 89A404 802400B4 00621821 */  addu      $v1, $v1, $v0
/* 89A408 802400B8 04610004 */  bgez      $v1, .L802400CC
/* 89A40C 802400BC AE0300B4 */   sw       $v1, 0xb4($s0)
/* 89A410 802400C0 3C020002 */  lui       $v0, 2
/* 89A414 802400C4 08090037 */  j         .L802400DC
/* 89A418 802400C8 00621021 */   addu     $v0, $v1, $v0
.L802400CC:
/* 89A41C 802400CC 3C040002 */  lui       $a0, 2
/* 89A420 802400D0 0083102A */  slt       $v0, $a0, $v1
/* 89A424 802400D4 10400002 */  beqz      $v0, .L802400E0
/* 89A428 802400D8 00641023 */   subu     $v0, $v1, $a0
.L802400DC:
/* 89A42C 802400DC AE0200B4 */  sw        $v0, 0xb4($s0)
.L802400E0:
/* 89A430 802400E0 8E040084 */  lw        $a0, 0x84($s0)
/* 89A434 802400E4 0C046F07 */  jal       set_main_pan_u
/* 89A438 802400E8 8E0500A8 */   lw       $a1, 0xa8($s0)
/* 89A43C 802400EC 8E040084 */  lw        $a0, 0x84($s0)
/* 89A440 802400F0 0C046F0D */  jal       set_main_pan_v
/* 89A444 802400F4 8E0500AC */   lw       $a1, 0xac($s0)
/* 89A448 802400F8 8E040084 */  lw        $a0, 0x84($s0)
/* 89A44C 802400FC 0C046F13 */  jal       set_aux_pan_u
/* 89A450 80240100 8E0500B0 */   lw       $a1, 0xb0($s0)
/* 89A454 80240104 8E040084 */  lw        $a0, 0x84($s0)
/* 89A458 80240108 0C046F19 */  jal       set_aux_pan_v
/* 89A45C 8024010C 8E0500B4 */   lw       $a1, 0xb4($s0)
/* 89A460 80240110 8FBF0014 */  lw        $ra, 0x14($sp)
/* 89A464 80240114 8FB00010 */  lw        $s0, 0x10($sp)
/* 89A468 80240118 0000102D */  daddu     $v0, $zero, $zero
/* 89A46C 8024011C 03E00008 */  jr        $ra
/* 89A470 80240120 27BD0018 */   addiu    $sp, $sp, 0x18
