.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240C64_A07B64
/* A07B64 80240C64 27BDFF80 */  addiu     $sp, $sp, -0x80
/* A07B68 80240C68 AFB3004C */  sw        $s3, 0x4c($sp)
/* A07B6C 80240C6C 0080982D */  daddu     $s3, $a0, $zero
/* A07B70 80240C70 AFBF0058 */  sw        $ra, 0x58($sp)
/* A07B74 80240C74 AFB50054 */  sw        $s5, 0x54($sp)
/* A07B78 80240C78 AFB40050 */  sw        $s4, 0x50($sp)
/* A07B7C 80240C7C AFB20048 */  sw        $s2, 0x48($sp)
/* A07B80 80240C80 AFB10044 */  sw        $s1, 0x44($sp)
/* A07B84 80240C84 AFB00040 */  sw        $s0, 0x40($sp)
/* A07B88 80240C88 F7BA0078 */  sdc1      $f26, 0x78($sp)
/* A07B8C 80240C8C F7B80070 */  sdc1      $f24, 0x70($sp)
/* A07B90 80240C90 F7B60068 */  sdc1      $f22, 0x68($sp)
/* A07B94 80240C94 F7B40060 */  sdc1      $f20, 0x60($sp)
/* A07B98 80240C98 8E710148 */  lw        $s1, 0x148($s3)
/* A07B9C 80240C9C 00A0902D */  daddu     $s2, $a1, $zero
/* A07BA0 80240CA0 86240008 */  lh        $a0, 8($s1)
/* A07BA4 80240CA4 0C00EABB */  jal       get_npc_unsafe
/* A07BA8 80240CA8 00C0A82D */   daddu    $s5, $a2, $zero
/* A07BAC 80240CAC 0040802D */  daddu     $s0, $v0, $zero
/* A07BB0 80240CB0 0000A02D */  daddu     $s4, $zero, $zero
/* A07BB4 80240CB4 C624007C */  lwc1      $f4, 0x7c($s1)
/* A07BB8 80240CB8 46802120 */  cvt.s.w   $f4, $f4
/* A07BBC 80240CBC C6220088 */  lwc1      $f2, 0x88($s1)
/* A07BC0 80240CC0 468010A0 */  cvt.s.w   $f2, $f2
/* A07BC4 80240CC4 460010A1 */  cvt.d.s   $f2, $f2
/* A07BC8 80240CC8 46002121 */  cvt.d.s   $f4, $f4
/* A07BCC 80240CCC C600003C */  lwc1      $f0, 0x3c($s0)
/* A07BD0 80240CD0 3C014059 */  lui       $at, 0x4059
/* A07BD4 80240CD4 44813800 */  mtc1      $at, $f7
/* A07BD8 80240CD8 44803000 */  mtc1      $zero, $f6
/* A07BDC 80240CDC 46000021 */  cvt.d.s   $f0, $f0
/* A07BE0 80240CE0 46260002 */  mul.d     $f0, $f0, $f6
/* A07BE4 80240CE4 00000000 */  nop       
/* A07BE8 80240CE8 24020001 */  addiu     $v0, $zero, 1
/* A07BEC 80240CEC 8E24006C */  lw        $a0, 0x6c($s1)
/* A07BF0 80240CF0 46261083 */  div.d     $f2, $f2, $f6
/* A07BF4 80240CF4 462010A0 */  cvt.s.d   $f2, $f2
/* A07BF8 80240CF8 46262103 */  div.d     $f4, $f4, $f6
/* A07BFC 80240CFC 46202520 */  cvt.s.d   $f20, $f4
/* A07C00 80240D00 30830011 */  andi      $v1, $a0, 0x11
/* A07C04 80240D04 4620020D */  trunc.w.d $f8, $f0
/* A07C08 80240D08 E628007C */  swc1      $f8, 0x7c($s1)
/* A07C0C 80240D0C C6200078 */  lwc1      $f0, 0x78($s1)
/* A07C10 80240D10 46800020 */  cvt.s.w   $f0, $f0
/* A07C14 80240D14 46000021 */  cvt.d.s   $f0, $f0
/* A07C18 80240D18 46260003 */  div.d     $f0, $f0, $f6
/* A07C1C 80240D1C 462006A0 */  cvt.s.d   $f26, $f0
/* A07C20 80240D20 C6200070 */  lwc1      $f0, 0x70($s1)
/* A07C24 80240D24 46800020 */  cvt.s.w   $f0, $f0
/* A07C28 80240D28 46000021 */  cvt.d.s   $f0, $f0
/* A07C2C 80240D2C 46260003 */  div.d     $f0, $f0, $f6
/* A07C30 80240D30 462005A0 */  cvt.s.d   $f22, $f0
/* A07C34 80240D34 14620025 */  bne       $v1, $v0, .L80240DCC
/* A07C38 80240D38 4602D600 */   add.s    $f24, $f26, $f2
/* A07C3C 80240D3C 8E020000 */  lw        $v0, ($s0)
/* A07C40 80240D40 30420008 */  andi      $v0, $v0, 8
/* A07C44 80240D44 10400009 */  beqz      $v0, .L80240D6C
/* A07C48 80240D48 27A50028 */   addiu    $a1, $sp, 0x28
/* A07C4C 80240D4C C600003C */  lwc1      $f0, 0x3c($s0)
/* A07C50 80240D50 4600C001 */  sub.s     $f0, $f24, $f0
/* A07C54 80240D54 4600B03C */  c.lt.s    $f22, $f0
/* A07C58 80240D58 00000000 */  nop       
/* A07C5C 80240D5C 4500001B */  bc1f      .L80240DCC
/* A07C60 80240D60 34820010 */   ori      $v0, $a0, 0x10
/* A07C64 80240D64 08090373 */  j         .L80240DCC
/* A07C68 80240D68 AE22006C */   sw       $v0, 0x6c($s1)
.L80240D6C:
/* A07C6C 80240D6C 27A6002C */  addiu     $a2, $sp, 0x2c
/* A07C70 80240D70 C6000038 */  lwc1      $f0, 0x38($s0)
/* A07C74 80240D74 C602003C */  lwc1      $f2, 0x3c($s0)
/* A07C78 80240D78 C6040040 */  lwc1      $f4, 0x40($s0)
/* A07C7C 80240D7C 3C01447A */  lui       $at, 0x447a
/* A07C80 80240D80 44813000 */  mtc1      $at, $f6
/* A07C84 80240D84 27A20034 */  addiu     $v0, $sp, 0x34
/* A07C88 80240D88 E7A00028 */  swc1      $f0, 0x28($sp)
/* A07C8C 80240D8C E7A2002C */  swc1      $f2, 0x2c($sp)
/* A07C90 80240D90 E7A40030 */  swc1      $f4, 0x30($sp)
/* A07C94 80240D94 E7A60034 */  swc1      $f6, 0x34($sp)
/* A07C98 80240D98 AFA20010 */  sw        $v0, 0x10($sp)
/* A07C9C 80240D9C 8E040080 */  lw        $a0, 0x80($s0)
/* A07CA0 80240DA0 0C0372DF */  jal       func_800DCB7C
/* A07CA4 80240DA4 27A70030 */   addiu    $a3, $sp, 0x30
/* A07CA8 80240DA8 C7A00034 */  lwc1      $f0, 0x34($sp)
/* A07CAC 80240DAC 4600D001 */  sub.s     $f0, $f26, $f0
/* A07CB0 80240DB0 4600B03C */  c.lt.s    $f22, $f0
/* A07CB4 80240DB4 00000000 */  nop       
/* A07CB8 80240DB8 45000004 */  bc1f      .L80240DCC
/* A07CBC 80240DBC 00000000 */   nop      
/* A07CC0 80240DC0 8E22006C */  lw        $v0, 0x6c($s1)
/* A07CC4 80240DC4 34420010 */  ori       $v0, $v0, 0x10
/* A07CC8 80240DC8 AE22006C */  sw        $v0, 0x6c($s1)
.L80240DCC:
/* A07CCC 80240DCC 8E22006C */  lw        $v0, 0x6c($s1)
/* A07CD0 80240DD0 24030011 */  addiu     $v1, $zero, 0x11
/* A07CD4 80240DD4 30420011 */  andi      $v0, $v0, 0x11
/* A07CD8 80240DD8 14430039 */  bne       $v0, $v1, .L80240EC0
/* A07CDC 80240DDC 00000000 */   nop      
/* A07CE0 80240DE0 8E020000 */  lw        $v0, ($s0)
/* A07CE4 80240DE4 30420008 */  andi      $v0, $v0, 8
/* A07CE8 80240DE8 1040000A */  beqz      $v0, .L80240E14
/* A07CEC 80240DEC 4600C106 */   mov.s    $f4, $f24
/* A07CF0 80240DF0 4614C081 */  sub.s     $f2, $f24, $f20
/* A07CF4 80240DF4 3C018024 */  lui       $at, 0x8024
/* A07CF8 80240DF8 D4204D58 */  ldc1      $f0, 0x4d58($at)
/* A07CFC 80240DFC 460010A1 */  cvt.d.s   $f2, $f2
/* A07D00 80240E00 46201082 */  mul.d     $f2, $f2, $f0
/* A07D04 80240E04 00000000 */  nop       
/* A07D08 80240E08 4600A021 */  cvt.d.s   $f0, $f20
/* A07D0C 80240E0C 0809039E */  j         .L80240E78
/* A07D10 80240E10 46220000 */   add.d    $f0, $f0, $f2
.L80240E14:
/* A07D14 80240E14 27A50028 */  addiu     $a1, $sp, 0x28
/* A07D18 80240E18 27A6002C */  addiu     $a2, $sp, 0x2c
/* A07D1C 80240E1C C6000038 */  lwc1      $f0, 0x38($s0)
/* A07D20 80240E20 C6020040 */  lwc1      $f2, 0x40($s0)
/* A07D24 80240E24 3C01447A */  lui       $at, 0x447a
/* A07D28 80240E28 44812000 */  mtc1      $at, $f4
/* A07D2C 80240E2C 27A20034 */  addiu     $v0, $sp, 0x34
/* A07D30 80240E30 E7B4002C */  swc1      $f20, 0x2c($sp)
/* A07D34 80240E34 E7A00028 */  swc1      $f0, 0x28($sp)
/* A07D38 80240E38 E7A20030 */  swc1      $f2, 0x30($sp)
/* A07D3C 80240E3C E7A40034 */  swc1      $f4, 0x34($sp)
/* A07D40 80240E40 AFA20010 */  sw        $v0, 0x10($sp)
/* A07D44 80240E44 8E040080 */  lw        $a0, 0x80($s0)
/* A07D48 80240E48 0C0372DF */  jal       func_800DCB7C
/* A07D4C 80240E4C 27A70030 */   addiu    $a3, $sp, 0x30
/* A07D50 80240E50 C7A4002C */  lwc1      $f4, 0x2c($sp)
/* A07D54 80240E54 461A2100 */  add.s     $f4, $f4, $f26
/* A07D58 80240E58 46142081 */  sub.s     $f2, $f4, $f20
/* A07D5C 80240E5C 3C018024 */  lui       $at, 0x8024
/* A07D60 80240E60 D4204D60 */  ldc1      $f0, 0x4d60($at)
/* A07D64 80240E64 460010A1 */  cvt.d.s   $f2, $f2
/* A07D68 80240E68 46201082 */  mul.d     $f2, $f2, $f0
/* A07D6C 80240E6C 00000000 */  nop       
/* A07D70 80240E70 4600A021 */  cvt.d.s   $f0, $f20
/* A07D74 80240E74 46220000 */  add.d     $f0, $f0, $f2
.L80240E78:
/* A07D78 80240E78 46200020 */  cvt.s.d   $f0, $f0
/* A07D7C 80240E7C E600003C */  swc1      $f0, 0x3c($s0)
/* A07D80 80240E80 C600003C */  lwc1      $f0, 0x3c($s0)
/* A07D84 80240E84 46002001 */  sub.s     $f0, $f4, $f0
/* A07D88 80240E88 3C013FF0 */  lui       $at, 0x3ff0
/* A07D8C 80240E8C 44811800 */  mtc1      $at, $f3
/* A07D90 80240E90 44801000 */  mtc1      $zero, $f2
/* A07D94 80240E94 46000005 */  abs.s     $f0, $f0
/* A07D98 80240E98 46000021 */  cvt.d.s   $f0, $f0
/* A07D9C 80240E9C 4622003C */  c.lt.d    $f0, $f2
/* A07DA0 80240EA0 00000000 */  nop       
/* A07DA4 80240EA4 45000036 */  bc1f      .L80240F80
/* A07DA8 80240EA8 2403FFEF */   addiu    $v1, $zero, -0x11
/* A07DAC 80240EAC E604003C */  swc1      $f4, 0x3c($s0)
/* A07DB0 80240EB0 8E22006C */  lw        $v0, 0x6c($s1)
/* A07DB4 80240EB4 00431024 */  and       $v0, $v0, $v1
/* A07DB8 80240EB8 080903E0 */  j         .L80240F80
/* A07DBC 80240EBC AE22006C */   sw       $v0, 0x6c($s1)
.L80240EC0:
/* A07DC0 80240EC0 8E220070 */  lw        $v0, 0x70($s1)
/* A07DC4 80240EC4 1840002E */  blez      $v0, .L80240F80
/* A07DC8 80240EC8 00000000 */   nop      
/* A07DCC 80240ECC C62C0074 */  lwc1      $f12, 0x74($s1)
/* A07DD0 80240ED0 0C00A8BB */  jal       sin_deg
/* A07DD4 80240ED4 46806320 */   cvt.s.w  $f12, $f12
/* A07DD8 80240ED8 8E020000 */  lw        $v0, ($s0)
/* A07DDC 80240EDC 30420008 */  andi      $v0, $v0, 8
/* A07DE0 80240EE0 10400003 */  beqz      $v0, .L80240EF0
/* A07DE4 80240EE4 46000506 */   mov.s    $f20, $f0
/* A07DE8 80240EE8 080903CC */  j         .L80240F30
/* A07DEC 80240EEC 0000102D */   daddu    $v0, $zero, $zero
.L80240EF0:
/* A07DF0 80240EF0 27A50028 */  addiu     $a1, $sp, 0x28
/* A07DF4 80240EF4 27A6002C */  addiu     $a2, $sp, 0x2c
/* A07DF8 80240EF8 C6000038 */  lwc1      $f0, 0x38($s0)
/* A07DFC 80240EFC C602003C */  lwc1      $f2, 0x3c($s0)
/* A07E00 80240F00 C6040040 */  lwc1      $f4, 0x40($s0)
/* A07E04 80240F04 3C01447A */  lui       $at, 0x447a
/* A07E08 80240F08 44813000 */  mtc1      $at, $f6
/* A07E0C 80240F0C 27A20034 */  addiu     $v0, $sp, 0x34
/* A07E10 80240F10 E7A00028 */  swc1      $f0, 0x28($sp)
/* A07E14 80240F14 E7A2002C */  swc1      $f2, 0x2c($sp)
/* A07E18 80240F18 E7A40030 */  swc1      $f4, 0x30($sp)
/* A07E1C 80240F1C E7A60034 */  swc1      $f6, 0x34($sp)
/* A07E20 80240F20 AFA20010 */  sw        $v0, 0x10($sp)
/* A07E24 80240F24 8E040080 */  lw        $a0, 0x80($s0)
/* A07E28 80240F28 0C0372DF */  jal       func_800DCB7C
/* A07E2C 80240F2C 27A70030 */   addiu    $a3, $sp, 0x30
.L80240F30:
/* A07E30 80240F30 10400007 */  beqz      $v0, .L80240F50
/* A07E34 80240F34 00000000 */   nop      
/* A07E38 80240F38 4616A082 */  mul.s     $f2, $f20, $f22
/* A07E3C 80240F3C 00000000 */  nop       
/* A07E40 80240F40 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* A07E44 80240F44 461A0000 */  add.s     $f0, $f0, $f26
/* A07E48 80240F48 080903D7 */  j         .L80240F5C
/* A07E4C 80240F4C 46020000 */   add.s    $f0, $f0, $f2
.L80240F50:
/* A07E50 80240F50 4616A002 */  mul.s     $f0, $f20, $f22
/* A07E54 80240F54 00000000 */  nop       
/* A07E58 80240F58 4600C000 */  add.s     $f0, $f24, $f0
.L80240F5C:
/* A07E5C 80240F5C E600003C */  swc1      $f0, 0x3c($s0)
/* A07E60 80240F60 8E220074 */  lw        $v0, 0x74($s1)
/* A07E64 80240F64 2442000A */  addiu     $v0, $v0, 0xa
/* A07E68 80240F68 44826000 */  mtc1      $v0, $f12
/* A07E6C 80240F6C 00000000 */  nop       
/* A07E70 80240F70 0C00A6C9 */  jal       clamp_angle
/* A07E74 80240F74 46806320 */   cvt.s.w  $f12, $f12
/* A07E78 80240F78 4600020D */  trunc.w.s $f8, $f0
/* A07E7C 80240F7C E6280074 */  swc1      $f8, 0x74($s1)
.L80240F80:
/* A07E80 80240F80 8E220090 */  lw        $v0, 0x90($s1)
/* A07E84 80240F84 1C40004A */  bgtz      $v0, .L802410B0
/* A07E88 80240F88 2442FFFF */   addiu    $v0, $v0, -1
/* A07E8C 80240F8C 8E430014 */  lw        $v1, 0x14($s2)
/* A07E90 80240F90 04600048 */  bltz      $v1, .L802410B4
/* A07E94 80240F94 00000000 */   nop      
/* A07E98 80240F98 8E620074 */  lw        $v0, 0x74($s3)
/* A07E9C 80240F9C 1C400042 */  bgtz      $v0, .L802410A8
/* A07EA0 80240FA0 2442FFFF */   addiu    $v0, $v0, -1
/* A07EA4 80240FA4 AE630074 */  sw        $v1, 0x74($s3)
/* A07EA8 80240FA8 860200A8 */  lh        $v0, 0xa8($s0)
/* A07EAC 80240FAC C602003C */  lwc1      $f2, 0x3c($s0)
/* A07EB0 80240FB0 44820000 */  mtc1      $v0, $f0
/* A07EB4 80240FB4 00000000 */  nop       
/* A07EB8 80240FB8 46800020 */  cvt.s.w   $f0, $f0
/* A07EBC 80240FBC 46001080 */  add.s     $f2, $f2, $f0
/* A07EC0 80240FC0 3C014024 */  lui       $at, 0x4024
/* A07EC4 80240FC4 44810800 */  mtc1      $at, $f1
/* A07EC8 80240FC8 44800000 */  mtc1      $zero, $f0
/* A07ECC 80240FCC 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* A07ED0 80240FD0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* A07ED4 80240FD4 460010A1 */  cvt.d.s   $f2, $f2
/* A07ED8 80240FD8 46201080 */  add.d     $f2, $f2, $f0
/* A07EDC 80240FDC C440002C */  lwc1      $f0, 0x2c($v0)
/* A07EE0 80240FE0 46000021 */  cvt.d.s   $f0, $f0
/* A07EE4 80240FE4 4622003C */  c.lt.d    $f0, $f2
/* A07EE8 80240FE8 00000000 */  nop       
/* A07EEC 80240FEC 4500002C */  bc1f      .L802410A0
/* A07EF0 80240FF0 02A0202D */   daddu    $a0, $s5, $zero
/* A07EF4 80240FF4 AFA00010 */  sw        $zero, 0x10($sp)
/* A07EF8 80240FF8 8E46000C */  lw        $a2, 0xc($s2)
/* A07EFC 80240FFC 8E470010 */  lw        $a3, 0x10($s2)
/* A07F00 80241000 0C01242D */  jal       func_800490B4
/* A07F04 80241004 0220282D */   daddu    $a1, $s1, $zero
/* A07F08 80241008 10400025 */  beqz      $v0, .L802410A0
/* A07F0C 8024100C 0000202D */   daddu    $a0, $zero, $zero
/* A07F10 80241010 0200282D */  daddu     $a1, $s0, $zero
/* A07F14 80241014 0000302D */  daddu     $a2, $zero, $zero
/* A07F18 80241018 2412000C */  addiu     $s2, $zero, 0xc
/* A07F1C 8024101C 860300A8 */  lh        $v1, 0xa8($s0)
/* A07F20 80241020 3C013F80 */  lui       $at, 0x3f80
/* A07F24 80241024 44810000 */  mtc1      $at, $f0
/* A07F28 80241028 3C014000 */  lui       $at, 0x4000
/* A07F2C 8024102C 44811000 */  mtc1      $at, $f2
/* A07F30 80241030 3C01C1A0 */  lui       $at, 0xc1a0
/* A07F34 80241034 44812000 */  mtc1      $at, $f4
/* A07F38 80241038 44834000 */  mtc1      $v1, $f8
/* A07F3C 8024103C 00000000 */  nop       
/* A07F40 80241040 46804220 */  cvt.s.w   $f8, $f8
/* A07F44 80241044 44074000 */  mfc1      $a3, $f8
/* A07F48 80241048 27A20038 */  addiu     $v0, $sp, 0x38
/* A07F4C 8024104C AFB2001C */  sw        $s2, 0x1c($sp)
/* A07F50 80241050 AFA20020 */  sw        $v0, 0x20($sp)
/* A07F54 80241054 E7A00010 */  swc1      $f0, 0x10($sp)
/* A07F58 80241058 E7A20014 */  swc1      $f2, 0x14($sp)
/* A07F5C 8024105C 0C01BFA4 */  jal       fx_emote
/* A07F60 80241060 E7A40018 */   swc1     $f4, 0x18($sp)
/* A07F64 80241064 0200202D */  daddu     $a0, $s0, $zero
/* A07F68 80241068 240502F4 */  addiu     $a1, $zero, 0x2f4
/* A07F6C 8024106C C480003C */  lwc1      $f0, 0x3c($a0)
/* A07F70 80241070 3C060020 */  lui       $a2, 0x20
/* A07F74 80241074 0C012530 */  jal       func_800494C0
/* A07F78 80241078 E4800064 */   swc1     $f0, 0x64($a0)
/* A07F7C 8024107C 8E220018 */  lw        $v0, 0x18($s1)
/* A07F80 80241080 9442002A */  lhu       $v0, 0x2a($v0)
/* A07F84 80241084 30420001 */  andi      $v0, $v0, 1
/* A07F88 80241088 10400003 */  beqz      $v0, .L80241098
/* A07F8C 8024108C 2402000A */   addiu    $v0, $zero, 0xa
/* A07F90 80241090 08090496 */  j         .L80241258
/* A07F94 80241094 AE620070 */   sw       $v0, 0x70($s3)
.L80241098:
/* A07F98 80241098 08090496 */  j         .L80241258
/* A07F9C 8024109C AE720070 */   sw       $s2, 0x70($s3)
.L802410A0:
/* A07FA0 802410A0 8E620074 */  lw        $v0, 0x74($s3)
/* A07FA4 802410A4 2442FFFF */  addiu     $v0, $v0, -1
.L802410A8:
/* A07FA8 802410A8 0809042D */  j         .L802410B4
/* A07FAC 802410AC AE620074 */   sw       $v0, 0x74($s3)
.L802410B0:
/* A07FB0 802410B0 AE220090 */  sw        $v0, 0x90($s1)
.L802410B4:
/* A07FB4 802410B4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A07FB8 802410B8 C6000040 */  lwc1      $f0, 0x40($s0)
/* A07FBC 802410BC C4620000 */  lwc1      $f2, ($v1)
/* A07FC0 802410C0 468010A0 */  cvt.s.w   $f2, $f2
/* A07FC4 802410C4 C4640008 */  lwc1      $f4, 8($v1)
/* A07FC8 802410C8 46802120 */  cvt.s.w   $f4, $f4
/* A07FCC 802410CC E7A00010 */  swc1      $f0, 0x10($sp)
/* A07FD0 802410D0 8E2200D0 */  lw        $v0, 0xd0($s1)
/* A07FD4 802410D4 44051000 */  mfc1      $a1, $f2
/* A07FD8 802410D8 C440000C */  lwc1      $f0, 0xc($v0)
/* A07FDC 802410DC 46800020 */  cvt.s.w   $f0, $f0
/* A07FE0 802410E0 E7A00014 */  swc1      $f0, 0x14($sp)
/* A07FE4 802410E4 8E2200D0 */  lw        $v0, 0xd0($s1)
/* A07FE8 802410E8 44062000 */  mfc1      $a2, $f4
/* A07FEC 802410EC C4400010 */  lwc1      $f0, 0x10($v0)
/* A07FF0 802410F0 46800020 */  cvt.s.w   $f0, $f0
/* A07FF4 802410F4 E7A00018 */  swc1      $f0, 0x18($sp)
/* A07FF8 802410F8 8C640018 */  lw        $a0, 0x18($v1)
/* A07FFC 802410FC 0C0123F5 */  jal       is_point_within_region
/* A08000 80241100 8E070038 */   lw       $a3, 0x38($s0)
/* A08004 80241104 1040001A */  beqz      $v0, .L80241170
/* A08008 80241108 00000000 */   nop      
/* A0800C 8024110C 8E060038 */  lw        $a2, 0x38($s0)
/* A08010 80241110 8E2200D0 */  lw        $v0, 0xd0($s1)
/* A08014 80241114 8E070040 */  lw        $a3, 0x40($s0)
/* A08018 80241118 C44C0000 */  lwc1      $f12, ($v0)
/* A0801C 8024111C 46806320 */  cvt.s.w   $f12, $f12
/* A08020 80241120 C44E0008 */  lwc1      $f14, 8($v0)
/* A08024 80241124 0C00A7B5 */  jal       dist2D
/* A08028 80241128 468073A0 */   cvt.s.w  $f14, $f14
/* A0802C 8024112C C6020018 */  lwc1      $f2, 0x18($s0)
/* A08030 80241130 4600103C */  c.lt.s    $f2, $f0
/* A08034 80241134 00000000 */  nop       
/* A08038 80241138 4500000D */  bc1f      .L80241170
/* A0803C 8024113C E7A00034 */   swc1     $f0, 0x34($sp)
/* A08040 80241140 C60C0038 */  lwc1      $f12, 0x38($s0)
/* A08044 80241144 8E2200D0 */  lw        $v0, 0xd0($s1)
/* A08048 80241148 C60E0040 */  lwc1      $f14, 0x40($s0)
/* A0804C 8024114C C4480000 */  lwc1      $f8, ($v0)
/* A08050 80241150 46804220 */  cvt.s.w   $f8, $f8
/* A08054 80241154 44064000 */  mfc1      $a2, $f8
/* A08058 80241158 C4480008 */  lwc1      $f8, 8($v0)
/* A0805C 8024115C 46804220 */  cvt.s.w   $f8, $f8
/* A08060 80241160 44074000 */  mfc1      $a3, $f8
/* A08064 80241164 0C00A720 */  jal       atan2
/* A08068 80241168 24140001 */   addiu    $s4, $zero, 1
/* A0806C 8024116C E600000C */  swc1      $f0, 0xc($s0)
.L80241170:
/* A08070 80241170 8E2200D0 */  lw        $v0, 0xd0($s1)
/* A08074 80241174 8C43000C */  lw        $v1, 0xc($v0)
/* A08078 80241178 8C420010 */  lw        $v0, 0x10($v0)
/* A0807C 8024117C 00621825 */  or        $v1, $v1, $v0
/* A08080 80241180 00741825 */  or        $v1, $v1, $s4
/* A08084 80241184 10600008 */  beqz      $v1, .L802411A8
/* A08088 80241188 00000000 */   nop      
/* A0808C 8024118C 8602008C */  lh        $v0, 0x8c($s0)
/* A08090 80241190 14400031 */  bnez      $v0, .L80241258
/* A08094 80241194 00000000 */   nop      
/* A08098 80241198 8E050018 */  lw        $a1, 0x18($s0)
/* A0809C 8024119C 8E06000C */  lw        $a2, 0xc($s0)
/* A080A0 802411A0 0C00EA95 */  jal       npc_move_heading
/* A080A4 802411A4 0200202D */   daddu    $a0, $s0, $zero
.L802411A8:
/* A080A8 802411A8 C600003C */  lwc1      $f0, 0x3c($s0)
/* A080AC 802411AC 3C014059 */  lui       $at, 0x4059
/* A080B0 802411B0 44811800 */  mtc1      $at, $f3
/* A080B4 802411B4 44801000 */  mtc1      $zero, $f2
/* A080B8 802411B8 46000021 */  cvt.d.s   $f0, $f0
/* A080BC 802411BC 46220002 */  mul.d     $f0, $f0, $f2
/* A080C0 802411C0 00000000 */  nop       
/* A080C4 802411C4 4620020D */  trunc.w.d $f8, $f0
/* A080C8 802411C8 E628007C */  swc1      $f8, 0x7c($s1)
/* A080CC 802411CC 8E420004 */  lw        $v0, 4($s2)
/* A080D0 802411D0 18400021 */  blez      $v0, .L80241258
/* A080D4 802411D4 00000000 */   nop      
/* A080D8 802411D8 8602008E */  lh        $v0, 0x8e($s0)
/* A080DC 802411DC 9603008E */  lhu       $v1, 0x8e($s0)
/* A080E0 802411E0 18400005 */  blez      $v0, .L802411F8
/* A080E4 802411E4 2462FFFF */   addiu    $v0, $v1, -1
/* A080E8 802411E8 A602008E */  sh        $v0, 0x8e($s0)
/* A080EC 802411EC 00021400 */  sll       $v0, $v0, 0x10
/* A080F0 802411F0 1C400019 */  bgtz      $v0, .L80241258
/* A080F4 802411F4 00000000 */   nop      
.L802411F8:
/* A080F8 802411F8 240403E8 */  addiu     $a0, $zero, 0x3e8
/* A080FC 802411FC 24020002 */  addiu     $v0, $zero, 2
/* A08100 80241200 0C00A67F */  jal       rand_int
/* A08104 80241204 AE620070 */   sw       $v0, 0x70($s3)
/* A08108 80241208 3C035555 */  lui       $v1, 0x5555
/* A0810C 8024120C 34635556 */  ori       $v1, $v1, 0x5556
/* A08110 80241210 00430018 */  mult      $v0, $v1
/* A08114 80241214 000227C3 */  sra       $a0, $v0, 0x1f
/* A08118 80241218 00004010 */  mfhi      $t0
/* A0811C 8024121C 01042023 */  subu      $a0, $t0, $a0
/* A08120 80241220 00041840 */  sll       $v1, $a0, 1
/* A08124 80241224 00641821 */  addu      $v1, $v1, $a0
/* A08128 80241228 00431023 */  subu      $v0, $v0, $v1
/* A0812C 8024122C 24430002 */  addiu     $v1, $v0, 2
/* A08130 80241230 AE630074 */  sw        $v1, 0x74($s3)
/* A08134 80241234 8E42002C */  lw        $v0, 0x2c($s2)
/* A08138 80241238 58400007 */  blezl     $v0, .L80241258
/* A0813C 8024123C AE600070 */   sw       $zero, 0x70($s3)
/* A08140 80241240 8E420008 */  lw        $v0, 8($s2)
/* A08144 80241244 18400003 */  blez      $v0, .L80241254
/* A08148 80241248 28620003 */   slti     $v0, $v1, 3
/* A0814C 8024124C 10400002 */  beqz      $v0, .L80241258
/* A08150 80241250 00000000 */   nop      
.L80241254:
/* A08154 80241254 AE600070 */  sw        $zero, 0x70($s3)
.L80241258:
/* A08158 80241258 8FBF0058 */  lw        $ra, 0x58($sp)
/* A0815C 8024125C 8FB50054 */  lw        $s5, 0x54($sp)
/* A08160 80241260 8FB40050 */  lw        $s4, 0x50($sp)
/* A08164 80241264 8FB3004C */  lw        $s3, 0x4c($sp)
/* A08168 80241268 8FB20048 */  lw        $s2, 0x48($sp)
/* A0816C 8024126C 8FB10044 */  lw        $s1, 0x44($sp)
/* A08170 80241270 8FB00040 */  lw        $s0, 0x40($sp)
/* A08174 80241274 D7BA0078 */  ldc1      $f26, 0x78($sp)
/* A08178 80241278 D7B80070 */  ldc1      $f24, 0x70($sp)
/* A0817C 8024127C D7B60068 */  ldc1      $f22, 0x68($sp)
/* A08180 80241280 D7B40060 */  ldc1      $f20, 0x60($sp)
/* A08184 80241284 03E00008 */  jr        $ra
/* A08188 80241288 27BD0080 */   addiu    $sp, $sp, 0x80
