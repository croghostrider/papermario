.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80058CFC
/* 340FC 80058CFC 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 34100 80058D00 AFB3001C */  sw        $s3, 0x1c($sp)
/* 34104 80058D04 0080982D */  daddu     $s3, $a0, $zero
/* 34108 80058D08 30A500FF */  andi      $a1, $a1, 0xff
/* 3410C 80058D0C 24A5FFFF */  addiu     $a1, $a1, -1
/* 34110 80058D10 2CA2000A */  sltiu     $v0, $a1, 0xa
/* 34114 80058D14 AFBF0020 */  sw        $ra, 0x20($sp)
/* 34118 80058D18 AFB20018 */  sw        $s2, 0x18($sp)
/* 3411C 80058D1C AFB10014 */  sw        $s1, 0x14($sp)
/* 34120 80058D20 AFB00010 */  sw        $s0, 0x10($sp)
/* 34124 80058D24 8E660000 */  lw        $a2, ($s3)
/* 34128 80058D28 10400021 */  beqz      $v0, .L80058DB0
/* 3412C 80058D2C 00051080 */   sll      $v0, $a1, 2
/* 34130 80058D30 3C01800A */  lui       $at, %hi(D_80098920)
/* 34134 80058D34 00220821 */  addu      $at, $at, $v0
/* 34138 80058D38 8C228920 */  lw        $v0, %lo(D_80098920)($at)
/* 3413C 80058D3C 00400008 */  jr        $v0
/* 34140 80058D40 00000000 */   nop
/* 34144 80058D44 3C048008 */  lui       $a0, %hi(D_8007EFB0)
/* 34148 80058D48 0801636E */  j         .L80058DB8
/* 3414C 80058D4C 2484EFB0 */   addiu    $a0, $a0, %lo(D_8007EFB0)
/* 34150 80058D50 3C048008 */  lui       $a0, %hi(D_8007F128)
/* 34154 80058D54 0801636E */  j         .L80058DB8
/* 34158 80058D58 2484F128 */   addiu    $a0, $a0, %lo(D_8007F128)
/* 3415C 80058D5C 3C048008 */  lui       $a0, %hi(D_8007F150)
/* 34160 80058D60 0801636E */  j         .L80058DB8
/* 34164 80058D64 2484F150 */   addiu    $a0, $a0, %lo(D_8007F150)
/* 34168 80058D68 3C048008 */  lui       $a0, %hi(D_8007F178)
/* 3416C 80058D6C 0801636E */  j         .L80058DB8
/* 34170 80058D70 2484F178 */   addiu    $a0, $a0, %lo(D_8007F178)
/* 34174 80058D74 3C048008 */  lui       $a0, %hi(D_8007F1C8)
/* 34178 80058D78 0801636E */  j         .L80058DB8
/* 3417C 80058D7C 8C84F1C8 */   lw       $a0, %lo(D_8007F1C8)($a0)
/* 34180 80058D80 3C048008 */  lui       $a0, %hi(D_8007F1CC)
/* 34184 80058D84 0801636E */  j         .L80058DB8
/* 34188 80058D88 8C84F1CC */   lw       $a0, %lo(D_8007F1CC)($a0)
/* 3418C 80058D8C 3C048008 */  lui       $a0, %hi(D_8007F1D0)
/* 34190 80058D90 0801636E */  j         .L80058DB8
/* 34194 80058D94 8C84F1D0 */   lw       $a0, %lo(D_8007F1D0)($a0)
/* 34198 80058D98 3C048008 */  lui       $a0, %hi(D_8007F1D4)
/* 3419C 80058D9C 0801636E */  j         .L80058DB8
/* 341A0 80058DA0 8C84F1D4 */   lw       $a0, %lo(D_8007F1D4)($a0)
/* 341A4 80058DA4 3C048008 */  lui       $a0, %hi(D_8007F018)
/* 341A8 80058DA8 0801636E */  j         .L80058DB8
/* 341AC 80058DAC 2484F018 */   addiu    $a0, $a0, %lo(D_8007F018)
.L80058DB0:
/* 341B0 80058DB0 3C048008 */  lui       $a0, %hi(D_8007F1A0)
/* 341B4 80058DB4 2484F1A0 */  addiu     $a0, $a0, %lo(D_8007F1A0)
.L80058DB8:
/* 341B8 80058DB8 90820003 */  lbu       $v0, 3($a0)
/* 341BC 80058DBC A2620010 */  sb        $v0, 0x10($s3)
/* 341C0 80058DC0 8C830004 */  lw        $v1, 4($a0)
/* 341C4 80058DC4 8E620000 */  lw        $v0, ($s3)
/* 341C8 80058DC8 24110507 */  addiu     $s1, $zero, 0x507
/* 341CC 80058DCC AE620004 */  sw        $v0, 4($s3)
/* 341D0 80058DD0 00031040 */  sll       $v0, $v1, 1
/* 341D4 80058DD4 00431021 */  addu      $v0, $v0, $v1
/* 341D8 80058DD8 000210C0 */  sll       $v0, $v0, 3
/* 341DC 80058DDC 00431023 */  subu      $v0, $v0, $v1
/* 341E0 80058DE0 000210C0 */  sll       $v0, $v0, 3
/* 341E4 80058DE4 AE620008 */  sw        $v0, 8($s3)
.L80058DE8:
/* 341E8 80058DE8 ACC00000 */  sw        $zero, ($a2)
/* 341EC 80058DEC 2631FFFF */  addiu     $s1, $s1, -1
/* 341F0 80058DF0 0621FFFD */  bgez      $s1, .L80058DE8
/* 341F4 80058DF4 24C60004 */   addiu    $a2, $a2, 4
/* 341F8 80058DF8 92620010 */  lbu       $v0, 0x10($s3)
/* 341FC 80058DFC 10400069 */  beqz      $v0, .L80058FA4
/* 34200 80058E00 0000882D */   daddu    $s1, $zero, $zero
/* 34204 80058E04 0220902D */  daddu     $s2, $s1, $zero
/* 34208 80058E08 24020002 */  addiu     $v0, $zero, 2
/* 3420C 80058E0C 00421004 */  sllv      $v0, $v0, $v0
/* 34210 80058E10 00448021 */  addu      $s0, $v0, $a0
.L80058E14:
/* 34214 80058E14 8E62000C */  lw        $v0, 0xc($s3)
/* 34218 80058E18 8E030000 */  lw        $v1, ($s0)
/* 3421C 80058E1C 26100004 */  addiu     $s0, $s0, 4
/* 34220 80058E20 00522021 */  addu      $a0, $v0, $s2
/* 34224 80058E24 00031040 */  sll       $v0, $v1, 1
/* 34228 80058E28 00431021 */  addu      $v0, $v0, $v1
/* 3422C 80058E2C 000210C0 */  sll       $v0, $v0, 3
/* 34230 80058E30 00431023 */  subu      $v0, $v0, $v1
/* 34234 80058E34 000210C0 */  sll       $v0, $v0, 3
/* 34238 80058E38 AC820000 */  sw        $v0, ($a0)
/* 3423C 80058E3C 8E030000 */  lw        $v1, ($s0)
/* 34240 80058E40 26100004 */  addiu     $s0, $s0, 4
/* 34244 80058E44 00031040 */  sll       $v0, $v1, 1
/* 34248 80058E48 00431021 */  addu      $v0, $v0, $v1
/* 3424C 80058E4C 000210C0 */  sll       $v0, $v0, 3
/* 34250 80058E50 00431023 */  subu      $v0, $v0, $v1
/* 34254 80058E54 000210C0 */  sll       $v0, $v0, 3
/* 34258 80058E58 AC820004 */  sw        $v0, 4($a0)
/* 3425C 80058E5C 96020002 */  lhu       $v0, 2($s0)
/* 34260 80058E60 26100004 */  addiu     $s0, $s0, 4
/* 34264 80058E64 A482000A */  sh        $v0, 0xa($a0)
/* 34268 80058E68 96020002 */  lhu       $v0, 2($s0)
/* 3426C 80058E6C 26100004 */  addiu     $s0, $s0, 4
/* 34270 80058E70 A4820008 */  sh        $v0, 8($a0)
/* 34274 80058E74 96020002 */  lhu       $v0, 2($s0)
/* 34278 80058E78 26100004 */  addiu     $s0, $s0, 4
/* 3427C 80058E7C A482000C */  sh        $v0, 0xc($a0)
/* 34280 80058E80 8E020000 */  lw        $v0, ($s0)
/* 34284 80058E84 50400033 */  beql      $v0, $zero, .L80058F54
/* 34288 80058E88 AC800028 */   sw       $zero, 0x28($a0)
/* 3428C 80058E8C 26100004 */  addiu     $s0, $s0, 4
/* 34290 80058E90 44820000 */  mtc1      $v0, $f0
/* 34294 80058E94 00000000 */  nop
/* 34298 80058E98 46800020 */  cvt.s.w   $f0, $f0
/* 3429C 80058E9C 3C01447A */  lui       $at, 0x447a
/* 342A0 80058EA0 44811000 */  mtc1      $at, $f2
/* 342A4 80058EA4 8C830004 */  lw        $v1, 4($a0)
/* 342A8 80058EA8 8C820000 */  lw        $v0, ($a0)
/* 342AC 80058EAC 46020003 */  div.s     $f0, $f0, $f2
/* 342B0 80058EB0 46000021 */  cvt.d.s   $f0, $f0
/* 342B4 80058EB4 00621823 */  subu      $v1, $v1, $v0
/* 342B8 80058EB8 46200000 */  add.d     $f0, $f0, $f0
/* 342BC 80058EBC 3C028008 */  lui       $v0, %hi(D_80078E20)
/* 342C0 80058EC0 8C428E20 */  lw        $v0, %lo(D_80078E20)($v0)
/* 342C4 80058EC4 44832000 */  mtc1      $v1, $f4
/* 342C8 80058EC8 00000000 */  nop
/* 342CC 80058ECC 46802121 */  cvt.d.w   $f4, $f4
/* 342D0 80058ED0 C4420008 */  lwc1      $f2, 8($v0)
/* 342D4 80058ED4 468010A1 */  cvt.d.w   $f2, $f2
/* 342D8 80058ED8 46220003 */  div.d     $f0, $f0, $f2
/* 342DC 80058EDC 46200020 */  cvt.s.d   $f0, $f0
/* 342E0 80058EE0 E4800010 */  swc1      $f0, 0x10($a0)
/* 342E4 80058EE4 C6000000 */  lwc1      $f0, ($s0)
/* 342E8 80058EE8 46800020 */  cvt.s.w   $f0, $f0
/* 342EC 80058EEC 26100004 */  addiu     $s0, $s0, 4
/* 342F0 80058EF0 3C01800A */  lui       $at, %hi(D_80098948)
/* 342F4 80058EF4 D4228948 */  ldc1      $f2, %lo(D_80098948)($at)
/* 342F8 80058EF8 46000021 */  cvt.d.s   $f0, $f0
/* 342FC 80058EFC 04610006 */  bgez      $v1, .L80058F18
/* 34300 80058F00 46220083 */   div.d    $f2, $f0, $f2
/* 34304 80058F04 3C0141F0 */  lui       $at, 0x41f0
/* 34308 80058F08 44810800 */  mtc1      $at, $f1
/* 3430C 80058F0C 44800000 */  mtc1      $zero, $f0
/* 34310 80058F10 00000000 */  nop
/* 34314 80058F14 46202100 */  add.d     $f4, $f4, $f0
.L80058F18:
/* 34318 80058F18 46241002 */  mul.d     $f0, $f2, $f4
/* 3431C 80058F1C 00000000 */  nop
/* 34320 80058F20 3C013F80 */  lui       $at, 0x3f80
/* 34324 80058F24 44811000 */  mtc1      $at, $f2
/* 34328 80058F28 8C82002C */  lw        $v0, 0x2c($a0)
/* 3432C 80058F2C AC800018 */  sw        $zero, 0x18($a0)
/* 34330 80058F30 E4820014 */  swc1      $f2, 0x14($a0)
/* 34334 80058F34 AC820028 */  sw        $v0, 0x28($a0)
/* 34338 80058F38 46200020 */  cvt.s.d   $f0, $f0
/* 3433C 80058F3C E480001C */  swc1      $f0, 0x1c($a0)
/* 34340 80058F40 AC400008 */  sw        $zero, 8($v0)
/* 34344 80058F44 8C830028 */  lw        $v1, 0x28($a0)
/* 34348 80058F48 24020001 */  addiu     $v0, $zero, 1
/* 3434C 80058F4C 080163D6 */  j         .L80058F58
/* 34350 80058F50 AC62000C */   sw       $v0, 0xc($v1)
.L80058F54:
/* 34354 80058F54 26100008 */  addiu     $s0, $s0, 8
.L80058F58:
/* 34358 80058F58 8E020000 */  lw        $v0, ($s0)
/* 3435C 80058F5C 5040000A */  beql      $v0, $zero, .L80058F88
/* 34360 80058F60 AC800020 */   sw       $zero, 0x20($a0)
/* 34364 80058F64 8C830024 */  lw        $v1, 0x24($a0)
/* 34368 80058F68 AC830020 */  sw        $v1, 0x20($a0)
/* 3436C 80058F6C 96020002 */  lhu       $v0, 2($s0)
/* 34370 80058F70 A4620000 */  sh        $v0, ($v1)
/* 34374 80058F74 8C840020 */  lw        $a0, 0x20($a0)
/* 34378 80058F78 0C0162A0 */  jal       func_80058A80
/* 3437C 80058F7C 26100004 */   addiu    $s0, $s0, 4
/* 34380 80058F80 080163E4 */  j         .L80058F90
/* 34384 80058F84 26520030 */   addiu    $s2, $s2, 0x30
.L80058F88:
/* 34388 80058F88 26100004 */  addiu     $s0, $s0, 4
/* 3438C 80058F8C 26520030 */  addiu     $s2, $s2, 0x30
.L80058F90:
/* 34390 80058F90 92620010 */  lbu       $v0, 0x10($s3)
/* 34394 80058F94 26310001 */  addiu     $s1, $s1, 1
/* 34398 80058F98 0222102A */  slt       $v0, $s1, $v0
/* 3439C 80058F9C 1440FF9D */  bnez      $v0, .L80058E14
/* 343A0 80058FA0 00000000 */   nop
.L80058FA4:
/* 343A4 80058FA4 8FBF0020 */  lw        $ra, 0x20($sp)
/* 343A8 80058FA8 8FB3001C */  lw        $s3, 0x1c($sp)
/* 343AC 80058FAC 8FB20018 */  lw        $s2, 0x18($sp)
/* 343B0 80058FB0 8FB10014 */  lw        $s1, 0x14($sp)
/* 343B4 80058FB4 8FB00010 */  lw        $s0, 0x10($sp)
/* 343B8 80058FB8 03E00008 */  jr        $ra
/* 343BC 80058FBC 27BD0028 */   addiu    $sp, $sp, 0x28