.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240374
/* CC3B84 80240374 27BDFF80 */  addiu     $sp, $sp, -0x80
/* CC3B88 80240378 AFB3004C */  sw        $s3, 0x4c($sp)
/* CC3B8C 8024037C 0080982D */  daddu     $s3, $a0, $zero
/* CC3B90 80240380 AFBF0058 */  sw        $ra, 0x58($sp)
/* CC3B94 80240384 AFB50054 */  sw        $s5, 0x54($sp)
/* CC3B98 80240388 AFB40050 */  sw        $s4, 0x50($sp)
/* CC3B9C 8024038C AFB20048 */  sw        $s2, 0x48($sp)
/* CC3BA0 80240390 AFB10044 */  sw        $s1, 0x44($sp)
/* CC3BA4 80240394 AFB00040 */  sw        $s0, 0x40($sp)
/* CC3BA8 80240398 F7BA0078 */  sdc1      $f26, 0x78($sp)
/* CC3BAC 8024039C F7B80070 */  sdc1      $f24, 0x70($sp)
/* CC3BB0 802403A0 F7B60068 */  sdc1      $f22, 0x68($sp)
/* CC3BB4 802403A4 F7B40060 */  sdc1      $f20, 0x60($sp)
/* CC3BB8 802403A8 8E710148 */  lw        $s1, 0x148($s3)
/* CC3BBC 802403AC 00A0902D */  daddu     $s2, $a1, $zero
/* CC3BC0 802403B0 86240008 */  lh        $a0, 8($s1)
/* CC3BC4 802403B4 0C00EABB */  jal       get_npc_unsafe
/* CC3BC8 802403B8 00C0A82D */   daddu    $s5, $a2, $zero
/* CC3BCC 802403BC 0040802D */  daddu     $s0, $v0, $zero
/* CC3BD0 802403C0 0000A02D */  daddu     $s4, $zero, $zero
/* CC3BD4 802403C4 C624007C */  lwc1      $f4, 0x7c($s1)
/* CC3BD8 802403C8 46802120 */  cvt.s.w   $f4, $f4
/* CC3BDC 802403CC C6220088 */  lwc1      $f2, 0x88($s1)
/* CC3BE0 802403D0 468010A0 */  cvt.s.w   $f2, $f2
/* CC3BE4 802403D4 460010A1 */  cvt.d.s   $f2, $f2
/* CC3BE8 802403D8 46002121 */  cvt.d.s   $f4, $f4
/* CC3BEC 802403DC C600003C */  lwc1      $f0, 0x3c($s0)
/* CC3BF0 802403E0 3C014059 */  lui       $at, 0x4059
/* CC3BF4 802403E4 44813800 */  mtc1      $at, $f7
/* CC3BF8 802403E8 44803000 */  mtc1      $zero, $f6
/* CC3BFC 802403EC 46000021 */  cvt.d.s   $f0, $f0
/* CC3C00 802403F0 46260002 */  mul.d     $f0, $f0, $f6
/* CC3C04 802403F4 00000000 */  nop       
/* CC3C08 802403F8 24020001 */  addiu     $v0, $zero, 1
/* CC3C0C 802403FC 8E24006C */  lw        $a0, 0x6c($s1)
/* CC3C10 80240400 46261083 */  div.d     $f2, $f2, $f6
/* CC3C14 80240404 462010A0 */  cvt.s.d   $f2, $f2
/* CC3C18 80240408 46262103 */  div.d     $f4, $f4, $f6
/* CC3C1C 8024040C 46202520 */  cvt.s.d   $f20, $f4
/* CC3C20 80240410 30830011 */  andi      $v1, $a0, 0x11
/* CC3C24 80240414 4620020D */  trunc.w.d $f8, $f0
/* CC3C28 80240418 E628007C */  swc1      $f8, 0x7c($s1)
/* CC3C2C 8024041C C6200078 */  lwc1      $f0, 0x78($s1)
/* CC3C30 80240420 46800020 */  cvt.s.w   $f0, $f0
/* CC3C34 80240424 46000021 */  cvt.d.s   $f0, $f0
/* CC3C38 80240428 46260003 */  div.d     $f0, $f0, $f6
/* CC3C3C 8024042C 462006A0 */  cvt.s.d   $f26, $f0
/* CC3C40 80240430 C6200070 */  lwc1      $f0, 0x70($s1)
/* CC3C44 80240434 46800020 */  cvt.s.w   $f0, $f0
/* CC3C48 80240438 46000021 */  cvt.d.s   $f0, $f0
/* CC3C4C 8024043C 46260003 */  div.d     $f0, $f0, $f6
/* CC3C50 80240440 462005A0 */  cvt.s.d   $f22, $f0
/* CC3C54 80240444 14620025 */  bne       $v1, $v0, .L802404DC
/* CC3C58 80240448 4602D600 */   add.s    $f24, $f26, $f2
/* CC3C5C 8024044C 8E020000 */  lw        $v0, ($s0)
/* CC3C60 80240450 30420008 */  andi      $v0, $v0, 8
/* CC3C64 80240454 10400009 */  beqz      $v0, .L8024047C
/* CC3C68 80240458 27A50028 */   addiu    $a1, $sp, 0x28
/* CC3C6C 8024045C C600003C */  lwc1      $f0, 0x3c($s0)
/* CC3C70 80240460 4600C001 */  sub.s     $f0, $f24, $f0
/* CC3C74 80240464 4600B03C */  c.lt.s    $f22, $f0
/* CC3C78 80240468 00000000 */  nop       
/* CC3C7C 8024046C 4500001B */  bc1f      .L802404DC
/* CC3C80 80240470 34820010 */   ori      $v0, $a0, 0x10
/* CC3C84 80240474 08090137 */  j         .L802404DC
/* CC3C88 80240478 AE22006C */   sw       $v0, 0x6c($s1)
.L8024047C:
/* CC3C8C 8024047C 27A6002C */  addiu     $a2, $sp, 0x2c
/* CC3C90 80240480 C6000038 */  lwc1      $f0, 0x38($s0)
/* CC3C94 80240484 C602003C */  lwc1      $f2, 0x3c($s0)
/* CC3C98 80240488 C6040040 */  lwc1      $f4, 0x40($s0)
/* CC3C9C 8024048C 3C01447A */  lui       $at, 0x447a
/* CC3CA0 80240490 44813000 */  mtc1      $at, $f6
/* CC3CA4 80240494 27A20034 */  addiu     $v0, $sp, 0x34
/* CC3CA8 80240498 E7A00028 */  swc1      $f0, 0x28($sp)
/* CC3CAC 8024049C E7A2002C */  swc1      $f2, 0x2c($sp)
/* CC3CB0 802404A0 E7A40030 */  swc1      $f4, 0x30($sp)
/* CC3CB4 802404A4 E7A60034 */  swc1      $f6, 0x34($sp)
/* CC3CB8 802404A8 AFA20010 */  sw        $v0, 0x10($sp)
/* CC3CBC 802404AC 8E040080 */  lw        $a0, 0x80($s0)
/* CC3CC0 802404B0 0C0372DF */  jal       func_800DCB7C
/* CC3CC4 802404B4 27A70030 */   addiu    $a3, $sp, 0x30
/* CC3CC8 802404B8 C7A00034 */  lwc1      $f0, 0x34($sp)
/* CC3CCC 802404BC 4600D001 */  sub.s     $f0, $f26, $f0
/* CC3CD0 802404C0 4600B03C */  c.lt.s    $f22, $f0
/* CC3CD4 802404C4 00000000 */  nop       
/* CC3CD8 802404C8 45000004 */  bc1f      .L802404DC
/* CC3CDC 802404CC 00000000 */   nop      
/* CC3CE0 802404D0 8E22006C */  lw        $v0, 0x6c($s1)
/* CC3CE4 802404D4 34420010 */  ori       $v0, $v0, 0x10
/* CC3CE8 802404D8 AE22006C */  sw        $v0, 0x6c($s1)
.L802404DC:
/* CC3CEC 802404DC 8E22006C */  lw        $v0, 0x6c($s1)
/* CC3CF0 802404E0 24030011 */  addiu     $v1, $zero, 0x11
/* CC3CF4 802404E4 30420011 */  andi      $v0, $v0, 0x11
/* CC3CF8 802404E8 14430039 */  bne       $v0, $v1, .L802405D0
/* CC3CFC 802404EC 00000000 */   nop      
/* CC3D00 802404F0 8E020000 */  lw        $v0, ($s0)
/* CC3D04 802404F4 30420008 */  andi      $v0, $v0, 8
/* CC3D08 802404F8 1040000A */  beqz      $v0, .L80240524
/* CC3D0C 802404FC 4600C106 */   mov.s    $f4, $f24
/* CC3D10 80240500 4614C081 */  sub.s     $f2, $f24, $f20
/* CC3D14 80240504 3C018024 */  lui       $at, 0x8024
/* CC3D18 80240508 D4207A38 */  ldc1      $f0, 0x7a38($at)
/* CC3D1C 8024050C 460010A1 */  cvt.d.s   $f2, $f2
/* CC3D20 80240510 46201082 */  mul.d     $f2, $f2, $f0
/* CC3D24 80240514 00000000 */  nop       
/* CC3D28 80240518 4600A021 */  cvt.d.s   $f0, $f20
/* CC3D2C 8024051C 08090162 */  j         .L80240588
/* CC3D30 80240520 46220000 */   add.d    $f0, $f0, $f2
.L80240524:
/* CC3D34 80240524 27A50028 */  addiu     $a1, $sp, 0x28
/* CC3D38 80240528 27A6002C */  addiu     $a2, $sp, 0x2c
/* CC3D3C 8024052C C6000038 */  lwc1      $f0, 0x38($s0)
/* CC3D40 80240530 C6020040 */  lwc1      $f2, 0x40($s0)
/* CC3D44 80240534 3C01447A */  lui       $at, 0x447a
/* CC3D48 80240538 44812000 */  mtc1      $at, $f4
/* CC3D4C 8024053C 27A20034 */  addiu     $v0, $sp, 0x34
/* CC3D50 80240540 E7B4002C */  swc1      $f20, 0x2c($sp)
/* CC3D54 80240544 E7A00028 */  swc1      $f0, 0x28($sp)
/* CC3D58 80240548 E7A20030 */  swc1      $f2, 0x30($sp)
/* CC3D5C 8024054C E7A40034 */  swc1      $f4, 0x34($sp)
/* CC3D60 80240550 AFA20010 */  sw        $v0, 0x10($sp)
/* CC3D64 80240554 8E040080 */  lw        $a0, 0x80($s0)
/* CC3D68 80240558 0C0372DF */  jal       func_800DCB7C
/* CC3D6C 8024055C 27A70030 */   addiu    $a3, $sp, 0x30
/* CC3D70 80240560 C7A4002C */  lwc1      $f4, 0x2c($sp)
/* CC3D74 80240564 461A2100 */  add.s     $f4, $f4, $f26
/* CC3D78 80240568 46142081 */  sub.s     $f2, $f4, $f20
/* CC3D7C 8024056C 3C018024 */  lui       $at, 0x8024
/* CC3D80 80240570 D4207A40 */  ldc1      $f0, 0x7a40($at)
/* CC3D84 80240574 460010A1 */  cvt.d.s   $f2, $f2
/* CC3D88 80240578 46201082 */  mul.d     $f2, $f2, $f0
/* CC3D8C 8024057C 00000000 */  nop       
/* CC3D90 80240580 4600A021 */  cvt.d.s   $f0, $f20
/* CC3D94 80240584 46220000 */  add.d     $f0, $f0, $f2
.L80240588:
/* CC3D98 80240588 46200020 */  cvt.s.d   $f0, $f0
/* CC3D9C 8024058C E600003C */  swc1      $f0, 0x3c($s0)
/* CC3DA0 80240590 C600003C */  lwc1      $f0, 0x3c($s0)
/* CC3DA4 80240594 46002001 */  sub.s     $f0, $f4, $f0
/* CC3DA8 80240598 3C013FF0 */  lui       $at, 0x3ff0
/* CC3DAC 8024059C 44811800 */  mtc1      $at, $f3
/* CC3DB0 802405A0 44801000 */  mtc1      $zero, $f2
/* CC3DB4 802405A4 46000005 */  abs.s     $f0, $f0
/* CC3DB8 802405A8 46000021 */  cvt.d.s   $f0, $f0
/* CC3DBC 802405AC 4622003C */  c.lt.d    $f0, $f2
/* CC3DC0 802405B0 00000000 */  nop       
/* CC3DC4 802405B4 45000036 */  bc1f      .L80240690
/* CC3DC8 802405B8 2403FFEF */   addiu    $v1, $zero, -0x11
/* CC3DCC 802405BC E604003C */  swc1      $f4, 0x3c($s0)
/* CC3DD0 802405C0 8E22006C */  lw        $v0, 0x6c($s1)
/* CC3DD4 802405C4 00431024 */  and       $v0, $v0, $v1
/* CC3DD8 802405C8 080901A4 */  j         .L80240690
/* CC3DDC 802405CC AE22006C */   sw       $v0, 0x6c($s1)
.L802405D0:
/* CC3DE0 802405D0 8E220070 */  lw        $v0, 0x70($s1)
/* CC3DE4 802405D4 1840002E */  blez      $v0, .L80240690
/* CC3DE8 802405D8 00000000 */   nop      
/* CC3DEC 802405DC C62C0074 */  lwc1      $f12, 0x74($s1)
/* CC3DF0 802405E0 0C00A8BB */  jal       sin_deg
/* CC3DF4 802405E4 46806320 */   cvt.s.w  $f12, $f12
/* CC3DF8 802405E8 8E020000 */  lw        $v0, ($s0)
/* CC3DFC 802405EC 30420008 */  andi      $v0, $v0, 8
/* CC3E00 802405F0 10400003 */  beqz      $v0, .L80240600
/* CC3E04 802405F4 46000506 */   mov.s    $f20, $f0
/* CC3E08 802405F8 08090190 */  j         .L80240640
/* CC3E0C 802405FC 0000102D */   daddu    $v0, $zero, $zero
.L80240600:
/* CC3E10 80240600 27A50028 */  addiu     $a1, $sp, 0x28
/* CC3E14 80240604 27A6002C */  addiu     $a2, $sp, 0x2c
/* CC3E18 80240608 C6000038 */  lwc1      $f0, 0x38($s0)
/* CC3E1C 8024060C C602003C */  lwc1      $f2, 0x3c($s0)
/* CC3E20 80240610 C6040040 */  lwc1      $f4, 0x40($s0)
/* CC3E24 80240614 3C01447A */  lui       $at, 0x447a
/* CC3E28 80240618 44813000 */  mtc1      $at, $f6
/* CC3E2C 8024061C 27A20034 */  addiu     $v0, $sp, 0x34
/* CC3E30 80240620 E7A00028 */  swc1      $f0, 0x28($sp)
/* CC3E34 80240624 E7A2002C */  swc1      $f2, 0x2c($sp)
/* CC3E38 80240628 E7A40030 */  swc1      $f4, 0x30($sp)
/* CC3E3C 8024062C E7A60034 */  swc1      $f6, 0x34($sp)
/* CC3E40 80240630 AFA20010 */  sw        $v0, 0x10($sp)
/* CC3E44 80240634 8E040080 */  lw        $a0, 0x80($s0)
/* CC3E48 80240638 0C0372DF */  jal       func_800DCB7C
/* CC3E4C 8024063C 27A70030 */   addiu    $a3, $sp, 0x30
.L80240640:
/* CC3E50 80240640 10400007 */  beqz      $v0, .L80240660
/* CC3E54 80240644 00000000 */   nop      
/* CC3E58 80240648 4616A082 */  mul.s     $f2, $f20, $f22
/* CC3E5C 8024064C 00000000 */  nop       
/* CC3E60 80240650 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* CC3E64 80240654 461A0000 */  add.s     $f0, $f0, $f26
/* CC3E68 80240658 0809019B */  j         .L8024066C
/* CC3E6C 8024065C 46020000 */   add.s    $f0, $f0, $f2
.L80240660:
/* CC3E70 80240660 4616A002 */  mul.s     $f0, $f20, $f22
/* CC3E74 80240664 00000000 */  nop       
/* CC3E78 80240668 4600C000 */  add.s     $f0, $f24, $f0
.L8024066C:
/* CC3E7C 8024066C E600003C */  swc1      $f0, 0x3c($s0)
/* CC3E80 80240670 8E220074 */  lw        $v0, 0x74($s1)
/* CC3E84 80240674 2442000A */  addiu     $v0, $v0, 0xa
/* CC3E88 80240678 44826000 */  mtc1      $v0, $f12
/* CC3E8C 8024067C 00000000 */  nop       
/* CC3E90 80240680 0C00A6C9 */  jal       clamp_angle
/* CC3E94 80240684 46806320 */   cvt.s.w  $f12, $f12
/* CC3E98 80240688 4600020D */  trunc.w.s $f8, $f0
/* CC3E9C 8024068C E6280074 */  swc1      $f8, 0x74($s1)
.L80240690:
/* CC3EA0 80240690 8E220090 */  lw        $v0, 0x90($s1)
/* CC3EA4 80240694 1C40004A */  bgtz      $v0, .L802407C0
/* CC3EA8 80240698 2442FFFF */   addiu    $v0, $v0, -1
/* CC3EAC 8024069C 8E430014 */  lw        $v1, 0x14($s2)
/* CC3EB0 802406A0 04600048 */  bltz      $v1, .L802407C4
/* CC3EB4 802406A4 00000000 */   nop      
/* CC3EB8 802406A8 8E620074 */  lw        $v0, 0x74($s3)
/* CC3EBC 802406AC 1C400042 */  bgtz      $v0, .L802407B8
/* CC3EC0 802406B0 2442FFFF */   addiu    $v0, $v0, -1
/* CC3EC4 802406B4 AE630074 */  sw        $v1, 0x74($s3)
/* CC3EC8 802406B8 860200A8 */  lh        $v0, 0xa8($s0)
/* CC3ECC 802406BC C602003C */  lwc1      $f2, 0x3c($s0)
/* CC3ED0 802406C0 44820000 */  mtc1      $v0, $f0
/* CC3ED4 802406C4 00000000 */  nop       
/* CC3ED8 802406C8 46800020 */  cvt.s.w   $f0, $f0
/* CC3EDC 802406CC 46001080 */  add.s     $f2, $f2, $f0
/* CC3EE0 802406D0 3C014024 */  lui       $at, 0x4024
/* CC3EE4 802406D4 44810800 */  mtc1      $at, $f1
/* CC3EE8 802406D8 44800000 */  mtc1      $zero, $f0
/* CC3EEC 802406DC 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* CC3EF0 802406E0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* CC3EF4 802406E4 460010A1 */  cvt.d.s   $f2, $f2
/* CC3EF8 802406E8 46201080 */  add.d     $f2, $f2, $f0
/* CC3EFC 802406EC C440002C */  lwc1      $f0, 0x2c($v0)
/* CC3F00 802406F0 46000021 */  cvt.d.s   $f0, $f0
/* CC3F04 802406F4 4622003C */  c.lt.d    $f0, $f2
/* CC3F08 802406F8 00000000 */  nop       
/* CC3F0C 802406FC 4500002C */  bc1f      .L802407B0
/* CC3F10 80240700 02A0202D */   daddu    $a0, $s5, $zero
/* CC3F14 80240704 AFA00010 */  sw        $zero, 0x10($sp)
/* CC3F18 80240708 8E46000C */  lw        $a2, 0xc($s2)
/* CC3F1C 8024070C 8E470010 */  lw        $a3, 0x10($s2)
/* CC3F20 80240710 0C01242D */  jal       func_800490B4
/* CC3F24 80240714 0220282D */   daddu    $a1, $s1, $zero
/* CC3F28 80240718 10400025 */  beqz      $v0, .L802407B0
/* CC3F2C 8024071C 0000202D */   daddu    $a0, $zero, $zero
/* CC3F30 80240720 0200282D */  daddu     $a1, $s0, $zero
/* CC3F34 80240724 0000302D */  daddu     $a2, $zero, $zero
/* CC3F38 80240728 2412000C */  addiu     $s2, $zero, 0xc
/* CC3F3C 8024072C 860300A8 */  lh        $v1, 0xa8($s0)
/* CC3F40 80240730 3C013F80 */  lui       $at, 0x3f80
/* CC3F44 80240734 44810000 */  mtc1      $at, $f0
/* CC3F48 80240738 3C014000 */  lui       $at, 0x4000
/* CC3F4C 8024073C 44811000 */  mtc1      $at, $f2
/* CC3F50 80240740 3C01C1A0 */  lui       $at, 0xc1a0
/* CC3F54 80240744 44812000 */  mtc1      $at, $f4
/* CC3F58 80240748 44834000 */  mtc1      $v1, $f8
/* CC3F5C 8024074C 00000000 */  nop       
/* CC3F60 80240750 46804220 */  cvt.s.w   $f8, $f8
/* CC3F64 80240754 44074000 */  mfc1      $a3, $f8
/* CC3F68 80240758 27A20038 */  addiu     $v0, $sp, 0x38
/* CC3F6C 8024075C AFB2001C */  sw        $s2, 0x1c($sp)
/* CC3F70 80240760 AFA20020 */  sw        $v0, 0x20($sp)
/* CC3F74 80240764 E7A00010 */  swc1      $f0, 0x10($sp)
/* CC3F78 80240768 E7A20014 */  swc1      $f2, 0x14($sp)
/* CC3F7C 8024076C 0C01BFA4 */  jal       fx_emote
/* CC3F80 80240770 E7A40018 */   swc1     $f4, 0x18($sp)
/* CC3F84 80240774 0200202D */  daddu     $a0, $s0, $zero
/* CC3F88 80240778 240502F4 */  addiu     $a1, $zero, 0x2f4
/* CC3F8C 8024077C C480003C */  lwc1      $f0, 0x3c($a0)
/* CC3F90 80240780 3C060020 */  lui       $a2, 0x20
/* CC3F94 80240784 0C012530 */  jal       func_800494C0
/* CC3F98 80240788 E4800064 */   swc1     $f0, 0x64($a0)
/* CC3F9C 8024078C 8E220018 */  lw        $v0, 0x18($s1)
/* CC3FA0 80240790 9442002A */  lhu       $v0, 0x2a($v0)
/* CC3FA4 80240794 30420001 */  andi      $v0, $v0, 1
/* CC3FA8 80240798 10400003 */  beqz      $v0, .L802407A8
/* CC3FAC 8024079C 2402000A */   addiu    $v0, $zero, 0xa
/* CC3FB0 802407A0 0809025A */  j         .L80240968
/* CC3FB4 802407A4 AE620070 */   sw       $v0, 0x70($s3)
.L802407A8:
/* CC3FB8 802407A8 0809025A */  j         .L80240968
/* CC3FBC 802407AC AE720070 */   sw       $s2, 0x70($s3)
.L802407B0:
/* CC3FC0 802407B0 8E620074 */  lw        $v0, 0x74($s3)
/* CC3FC4 802407B4 2442FFFF */  addiu     $v0, $v0, -1
.L802407B8:
/* CC3FC8 802407B8 080901F1 */  j         .L802407C4
/* CC3FCC 802407BC AE620074 */   sw       $v0, 0x74($s3)
.L802407C0:
/* CC3FD0 802407C0 AE220090 */  sw        $v0, 0x90($s1)
.L802407C4:
/* CC3FD4 802407C4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* CC3FD8 802407C8 C6000040 */  lwc1      $f0, 0x40($s0)
/* CC3FDC 802407CC C4620000 */  lwc1      $f2, ($v1)
/* CC3FE0 802407D0 468010A0 */  cvt.s.w   $f2, $f2
/* CC3FE4 802407D4 C4640008 */  lwc1      $f4, 8($v1)
/* CC3FE8 802407D8 46802120 */  cvt.s.w   $f4, $f4
/* CC3FEC 802407DC E7A00010 */  swc1      $f0, 0x10($sp)
/* CC3FF0 802407E0 8E2200D0 */  lw        $v0, 0xd0($s1)
/* CC3FF4 802407E4 44051000 */  mfc1      $a1, $f2
/* CC3FF8 802407E8 C440000C */  lwc1      $f0, 0xc($v0)
/* CC3FFC 802407EC 46800020 */  cvt.s.w   $f0, $f0
/* CC4000 802407F0 E7A00014 */  swc1      $f0, 0x14($sp)
/* CC4004 802407F4 8E2200D0 */  lw        $v0, 0xd0($s1)
/* CC4008 802407F8 44062000 */  mfc1      $a2, $f4
/* CC400C 802407FC C4400010 */  lwc1      $f0, 0x10($v0)
/* CC4010 80240800 46800020 */  cvt.s.w   $f0, $f0
/* CC4014 80240804 E7A00018 */  swc1      $f0, 0x18($sp)
/* CC4018 80240808 8C640018 */  lw        $a0, 0x18($v1)
/* CC401C 8024080C 0C0123F5 */  jal       is_point_within_region
/* CC4020 80240810 8E070038 */   lw       $a3, 0x38($s0)
/* CC4024 80240814 1040001A */  beqz      $v0, .L80240880
/* CC4028 80240818 00000000 */   nop      
/* CC402C 8024081C 8E060038 */  lw        $a2, 0x38($s0)
/* CC4030 80240820 8E2200D0 */  lw        $v0, 0xd0($s1)
/* CC4034 80240824 8E070040 */  lw        $a3, 0x40($s0)
/* CC4038 80240828 C44C0000 */  lwc1      $f12, ($v0)
/* CC403C 8024082C 46806320 */  cvt.s.w   $f12, $f12
/* CC4040 80240830 C44E0008 */  lwc1      $f14, 8($v0)
/* CC4044 80240834 0C00A7B5 */  jal       dist2D
/* CC4048 80240838 468073A0 */   cvt.s.w  $f14, $f14
/* CC404C 8024083C C6020018 */  lwc1      $f2, 0x18($s0)
/* CC4050 80240840 4600103C */  c.lt.s    $f2, $f0
/* CC4054 80240844 00000000 */  nop       
/* CC4058 80240848 4500000D */  bc1f      .L80240880
/* CC405C 8024084C E7A00034 */   swc1     $f0, 0x34($sp)
/* CC4060 80240850 C60C0038 */  lwc1      $f12, 0x38($s0)
/* CC4064 80240854 8E2200D0 */  lw        $v0, 0xd0($s1)
/* CC4068 80240858 C60E0040 */  lwc1      $f14, 0x40($s0)
/* CC406C 8024085C C4480000 */  lwc1      $f8, ($v0)
/* CC4070 80240860 46804220 */  cvt.s.w   $f8, $f8
/* CC4074 80240864 44064000 */  mfc1      $a2, $f8
/* CC4078 80240868 C4480008 */  lwc1      $f8, 8($v0)
/* CC407C 8024086C 46804220 */  cvt.s.w   $f8, $f8
/* CC4080 80240870 44074000 */  mfc1      $a3, $f8
/* CC4084 80240874 0C00A720 */  jal       atan2
/* CC4088 80240878 24140001 */   addiu    $s4, $zero, 1
/* CC408C 8024087C E600000C */  swc1      $f0, 0xc($s0)
.L80240880:
/* CC4090 80240880 8E2200D0 */  lw        $v0, 0xd0($s1)
/* CC4094 80240884 8C43000C */  lw        $v1, 0xc($v0)
/* CC4098 80240888 8C420010 */  lw        $v0, 0x10($v0)
/* CC409C 8024088C 00621825 */  or        $v1, $v1, $v0
/* CC40A0 80240890 00741825 */  or        $v1, $v1, $s4
/* CC40A4 80240894 10600008 */  beqz      $v1, .L802408B8
/* CC40A8 80240898 00000000 */   nop      
/* CC40AC 8024089C 8602008C */  lh        $v0, 0x8c($s0)
/* CC40B0 802408A0 14400031 */  bnez      $v0, .L80240968
/* CC40B4 802408A4 00000000 */   nop      
/* CC40B8 802408A8 8E050018 */  lw        $a1, 0x18($s0)
/* CC40BC 802408AC 8E06000C */  lw        $a2, 0xc($s0)
/* CC40C0 802408B0 0C00EA95 */  jal       npc_move_heading
/* CC40C4 802408B4 0200202D */   daddu    $a0, $s0, $zero
.L802408B8:
/* CC40C8 802408B8 C600003C */  lwc1      $f0, 0x3c($s0)
/* CC40CC 802408BC 3C014059 */  lui       $at, 0x4059
/* CC40D0 802408C0 44811800 */  mtc1      $at, $f3
/* CC40D4 802408C4 44801000 */  mtc1      $zero, $f2
/* CC40D8 802408C8 46000021 */  cvt.d.s   $f0, $f0
/* CC40DC 802408CC 46220002 */  mul.d     $f0, $f0, $f2
/* CC40E0 802408D0 00000000 */  nop       
/* CC40E4 802408D4 4620020D */  trunc.w.d $f8, $f0
/* CC40E8 802408D8 E628007C */  swc1      $f8, 0x7c($s1)
/* CC40EC 802408DC 8E420004 */  lw        $v0, 4($s2)
/* CC40F0 802408E0 18400021 */  blez      $v0, .L80240968
/* CC40F4 802408E4 00000000 */   nop      
/* CC40F8 802408E8 8602008E */  lh        $v0, 0x8e($s0)
/* CC40FC 802408EC 9603008E */  lhu       $v1, 0x8e($s0)
/* CC4100 802408F0 18400005 */  blez      $v0, .L80240908
/* CC4104 802408F4 2462FFFF */   addiu    $v0, $v1, -1
/* CC4108 802408F8 A602008E */  sh        $v0, 0x8e($s0)
/* CC410C 802408FC 00021400 */  sll       $v0, $v0, 0x10
/* CC4110 80240900 1C400019 */  bgtz      $v0, .L80240968
/* CC4114 80240904 00000000 */   nop      
.L80240908:
/* CC4118 80240908 240403E8 */  addiu     $a0, $zero, 0x3e8
/* CC411C 8024090C 24020002 */  addiu     $v0, $zero, 2
/* CC4120 80240910 0C00A67F */  jal       rand_int
/* CC4124 80240914 AE620070 */   sw       $v0, 0x70($s3)
/* CC4128 80240918 3C035555 */  lui       $v1, 0x5555
/* CC412C 8024091C 34635556 */  ori       $v1, $v1, 0x5556
/* CC4130 80240920 00430018 */  mult      $v0, $v1
/* CC4134 80240924 000227C3 */  sra       $a0, $v0, 0x1f
/* CC4138 80240928 00004010 */  mfhi      $t0
/* CC413C 8024092C 01042023 */  subu      $a0, $t0, $a0
/* CC4140 80240930 00041840 */  sll       $v1, $a0, 1
/* CC4144 80240934 00641821 */  addu      $v1, $v1, $a0
/* CC4148 80240938 00431023 */  subu      $v0, $v0, $v1
/* CC414C 8024093C 24430002 */  addiu     $v1, $v0, 2
/* CC4150 80240940 AE630074 */  sw        $v1, 0x74($s3)
/* CC4154 80240944 8E42002C */  lw        $v0, 0x2c($s2)
/* CC4158 80240948 58400007 */  blezl     $v0, .L80240968
/* CC415C 8024094C AE600070 */   sw       $zero, 0x70($s3)
/* CC4160 80240950 8E420008 */  lw        $v0, 8($s2)
/* CC4164 80240954 18400003 */  blez      $v0, .L80240964
/* CC4168 80240958 28620003 */   slti     $v0, $v1, 3
/* CC416C 8024095C 10400002 */  beqz      $v0, .L80240968
/* CC4170 80240960 00000000 */   nop      
.L80240964:
/* CC4174 80240964 AE600070 */  sw        $zero, 0x70($s3)
.L80240968:
/* CC4178 80240968 8FBF0058 */  lw        $ra, 0x58($sp)
/* CC417C 8024096C 8FB50054 */  lw        $s5, 0x54($sp)
/* CC4180 80240970 8FB40050 */  lw        $s4, 0x50($sp)
/* CC4184 80240974 8FB3004C */  lw        $s3, 0x4c($sp)
/* CC4188 80240978 8FB20048 */  lw        $s2, 0x48($sp)
/* CC418C 8024097C 8FB10044 */  lw        $s1, 0x44($sp)
/* CC4190 80240980 8FB00040 */  lw        $s0, 0x40($sp)
/* CC4194 80240984 D7BA0078 */  ldc1      $f26, 0x78($sp)
/* CC4198 80240988 D7B80070 */  ldc1      $f24, 0x70($sp)
/* CC419C 8024098C D7B60068 */  ldc1      $f22, 0x68($sp)
/* CC41A0 80240990 D7B40060 */  ldc1      $f20, 0x60($sp)
/* CC41A4 80240994 03E00008 */  jr        $ra
/* CC41A8 80240998 27BD0080 */   addiu    $sp, $sp, 0x80
