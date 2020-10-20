.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802401B4
/* 946084 802401B4 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 946088 802401B8 AFB10014 */  sw        $s1, 0x14($sp)
/* 94608C 802401BC 0080882D */  daddu     $s1, $a0, $zero
/* 946090 802401C0 AFBF0024 */  sw        $ra, 0x24($sp)
/* 946094 802401C4 AFB40020 */  sw        $s4, 0x20($sp)
/* 946098 802401C8 AFB3001C */  sw        $s3, 0x1c($sp)
/* 94609C 802401CC AFB20018 */  sw        $s2, 0x18($sp)
/* 9460A0 802401D0 AFB00010 */  sw        $s0, 0x10($sp)
/* 9460A4 802401D4 F7BC0048 */  sdc1      $f28, 0x48($sp)
/* 9460A8 802401D8 F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 9460AC 802401DC F7B80038 */  sdc1      $f24, 0x38($sp)
/* 9460B0 802401E0 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 9460B4 802401E4 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 9460B8 802401E8 8E30000C */  lw        $s0, 0xc($s1)
/* 9460BC 802401EC 8E130000 */  lw        $s3, ($s0)
/* 9460C0 802401F0 26100004 */  addiu     $s0, $s0, 4
/* 9460C4 802401F4 0C0B1EAF */  jal       get_variable
/* 9460C8 802401F8 0260282D */   daddu    $a1, $s3, $zero
/* 9460CC 802401FC 4482E000 */  mtc1      $v0, $f28
/* 9460D0 80240200 00000000 */  nop       
/* 9460D4 80240204 4680E720 */  cvt.s.w   $f28, $f28
/* 9460D8 80240208 8E140000 */  lw        $s4, ($s0)
/* 9460DC 8024020C 26100004 */  addiu     $s0, $s0, 4
/* 9460E0 80240210 0220202D */  daddu     $a0, $s1, $zero
/* 9460E4 80240214 0C0B1EAF */  jal       get_variable
/* 9460E8 80240218 0280282D */   daddu    $a1, $s4, $zero
/* 9460EC 8024021C 4482D000 */  mtc1      $v0, $f26
/* 9460F0 80240220 00000000 */  nop       
/* 9460F4 80240224 4680D6A0 */  cvt.s.w   $f26, $f26
/* 9460F8 80240228 8E100000 */  lw        $s0, ($s0)
/* 9460FC 8024022C 0220202D */  daddu     $a0, $s1, $zero
/* 946100 80240230 0C0B1EAF */  jal       get_variable
/* 946104 80240234 0200282D */   daddu    $a1, $s0, $zero
/* 946108 80240238 4482C000 */  mtc1      $v0, $f24
/* 94610C 8024023C 00000000 */  nop       
/* 946110 80240240 4680C620 */  cvt.s.w   $f24, $f24
/* 946114 80240244 3C128011 */  lui       $s2, %hi(gPlayerStatus)
/* 946118 80240248 2652EFC8 */  addiu     $s2, $s2, %lo(gPlayerStatus)
/* 94611C 8024024C 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* 946120 80240250 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* 946124 80240254 C64200A8 */  lwc1      $f2, 0xa8($s2)
/* 946128 80240258 44800000 */  mtc1      $zero, $f0
/* 94612C 8024025C 00031080 */  sll       $v0, $v1, 2
/* 946130 80240260 00431021 */  addu      $v0, $v0, $v1
/* 946134 80240264 00021080 */  sll       $v0, $v0, 2
/* 946138 80240268 00431023 */  subu      $v0, $v0, $v1
/* 94613C 8024026C 000218C0 */  sll       $v1, $v0, 3
/* 946140 80240270 00431021 */  addu      $v0, $v0, $v1
/* 946144 80240274 000210C0 */  sll       $v0, $v0, 3
/* 946148 80240278 46001032 */  c.eq.s    $f2, $f0
/* 94614C 8024027C 3C01800B */  lui       $at, 0x800b
/* 946150 80240280 00220821 */  addu      $at, $at, $v0
/* 946154 80240284 C4361DEC */  lwc1      $f22, 0x1dec($at)
/* 946158 80240288 45000005 */  bc1f      .L802402A0
/* 94615C 8024028C 00000000 */   nop      
/* 946160 80240290 3C0142C8 */  lui       $at, 0x42c8
/* 946164 80240294 44810000 */  mtc1      $at, $f0
/* 946168 80240298 080900AC */  j         .L802402B0
/* 94616C 8024029C 4600B581 */   sub.s    $f22, $f22, $f0
.L802402A0:
/* 946170 802402A0 3C0142C8 */  lui       $at, 0x42c8
/* 946174 802402A4 44810000 */  mtc1      $at, $f0
/* 946178 802402A8 00000000 */  nop       
/* 94617C 802402AC 4600B580 */  add.s     $f22, $f22, $f0
.L802402B0:
/* 946180 802402B0 0C00A6C9 */  jal       clamp_angle
/* 946184 802402B4 4600B306 */   mov.s    $f12, $f22
/* 946188 802402B8 46000586 */  mov.s     $f22, $f0
/* 94618C 802402BC 3C014170 */  lui       $at, 0x4170
/* 946190 802402C0 4481A000 */  mtc1      $at, $f20
/* 946194 802402C4 0C00A8BB */  jal       sin_deg
/* 946198 802402C8 4600B306 */   mov.s    $f12, $f22
/* 94619C 802402CC 46140002 */  mul.s     $f0, $f0, $f20
/* 9461A0 802402D0 00000000 */  nop       
/* 9461A4 802402D4 864200B0 */  lh        $v0, 0xb0($s2)
/* 9461A8 802402D8 3C013F00 */  lui       $at, 0x3f00
/* 9461AC 802402DC 44812000 */  mtc1      $at, $f4
/* 9461B0 802402E0 44821000 */  mtc1      $v0, $f2
/* 9461B4 802402E4 00000000 */  nop       
/* 9461B8 802402E8 468010A0 */  cvt.s.w   $f2, $f2
/* 9461BC 802402EC 46041082 */  mul.s     $f2, $f2, $f4
/* 9461C0 802402F0 00000000 */  nop       
/* 9461C4 802402F4 4600E700 */  add.s     $f28, $f28, $f0
/* 9461C8 802402F8 4602D680 */  add.s     $f26, $f26, $f2
/* 9461CC 802402FC 0C00A8D4 */  jal       cos_deg
/* 9461D0 80240300 4600B306 */   mov.s    $f12, $f22
/* 9461D4 80240304 46140002 */  mul.s     $f0, $f0, $f20
/* 9461D8 80240308 00000000 */  nop       
/* 9461DC 8024030C 0220202D */  daddu     $a0, $s1, $zero
/* 9461E0 80240310 0260282D */  daddu     $a1, $s3, $zero
/* 9461E4 80240314 4600E18D */  trunc.w.s $f6, $f28
/* 9461E8 80240318 44063000 */  mfc1      $a2, $f6
/* 9461EC 8024031C 0C0B2026 */  jal       set_variable
/* 9461F0 80240320 4600C601 */   sub.s    $f24, $f24, $f0
/* 9461F4 80240324 0220202D */  daddu     $a0, $s1, $zero
/* 9461F8 80240328 4600D18D */  trunc.w.s $f6, $f26
/* 9461FC 8024032C 44063000 */  mfc1      $a2, $f6
/* 946200 80240330 0C0B2026 */  jal       set_variable
/* 946204 80240334 0280282D */   daddu    $a1, $s4, $zero
/* 946208 80240338 0220202D */  daddu     $a0, $s1, $zero
/* 94620C 8024033C 4600C18D */  trunc.w.s $f6, $f24
/* 946210 80240340 44063000 */  mfc1      $a2, $f6
/* 946214 80240344 0C0B2026 */  jal       set_variable
/* 946218 80240348 0200282D */   daddu    $a1, $s0, $zero
/* 94621C 8024034C 8FBF0024 */  lw        $ra, 0x24($sp)
/* 946220 80240350 8FB40020 */  lw        $s4, 0x20($sp)
/* 946224 80240354 8FB3001C */  lw        $s3, 0x1c($sp)
/* 946228 80240358 8FB20018 */  lw        $s2, 0x18($sp)
/* 94622C 8024035C 8FB10014 */  lw        $s1, 0x14($sp)
/* 946230 80240360 8FB00010 */  lw        $s0, 0x10($sp)
/* 946234 80240364 D7BC0048 */  ldc1      $f28, 0x48($sp)
/* 946238 80240368 D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 94623C 8024036C D7B80038 */  ldc1      $f24, 0x38($sp)
/* 946240 80240370 D7B60030 */  ldc1      $f22, 0x30($sp)
/* 946244 80240374 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 946248 80240378 24020002 */  addiu     $v0, $zero, 2
/* 94624C 8024037C 03E00008 */  jr        $ra
/* 946250 80240380 27BD0050 */   addiu    $sp, $sp, 0x50
