.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240164_B4ABD4
/* B4ABD4 80240164 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* B4ABD8 80240168 AFB00010 */  sw        $s0, 0x10($sp)
/* B4ABDC 8024016C 0080802D */  daddu     $s0, $a0, $zero
/* B4ABE0 80240170 10A00005 */  beqz      $a1, .L80240188
/* B4ABE4 80240174 AFBF0014 */   sw       $ra, 0x14($sp)
/* B4ABE8 80240178 AE000070 */  sw        $zero, 0x70($s0)
/* B4ABEC 8024017C AE000074 */  sw        $zero, 0x74($s0)
/* B4ABF0 80240180 AE000078 */  sw        $zero, 0x78($s0)
/* B4ABF4 80240184 AE00007C */  sw        $zero, 0x7c($s0)
.L80240188:
/* B4ABF8 80240188 8E020070 */  lw        $v0, 0x70($s0)
/* B4ABFC 8024018C 1440000E */  bnez      $v0, .L802401C8
/* B4AC00 80240190 00000000 */   nop      
/* B4AC04 80240194 8E0300A8 */  lw        $v1, 0xa8($s0)
/* B4AC08 80240198 8E020088 */  lw        $v0, 0x88($s0)
/* B4AC0C 8024019C 00621821 */  addu      $v1, $v1, $v0
/* B4AC10 802401A0 04610004 */  bgez      $v1, .L802401B4
/* B4AC14 802401A4 AE0300A8 */   sw       $v1, 0xa8($s0)
/* B4AC18 802401A8 3C020002 */  lui       $v0, 2
/* B4AC1C 802401AC 08090071 */  j         .L802401C4
/* B4AC20 802401B0 00621021 */   addu     $v0, $v1, $v0
.L802401B4:
/* B4AC24 802401B4 3C040002 */  lui       $a0, 2
/* B4AC28 802401B8 0083102A */  slt       $v0, $a0, $v1
/* B4AC2C 802401BC 10400002 */  beqz      $v0, .L802401C8
/* B4AC30 802401C0 00641023 */   subu     $v0, $v1, $a0
.L802401C4:
/* B4AC34 802401C4 AE0200A8 */  sw        $v0, 0xa8($s0)
.L802401C8:
/* B4AC38 802401C8 8E020074 */  lw        $v0, 0x74($s0)
/* B4AC3C 802401CC 1440000E */  bnez      $v0, .L80240208
/* B4AC40 802401D0 00000000 */   nop      
/* B4AC44 802401D4 8E0300AC */  lw        $v1, 0xac($s0)
/* B4AC48 802401D8 8E02008C */  lw        $v0, 0x8c($s0)
/* B4AC4C 802401DC 00621821 */  addu      $v1, $v1, $v0
/* B4AC50 802401E0 04610004 */  bgez      $v1, .L802401F4
/* B4AC54 802401E4 AE0300AC */   sw       $v1, 0xac($s0)
/* B4AC58 802401E8 3C020002 */  lui       $v0, 2
/* B4AC5C 802401EC 08090081 */  j         .L80240204
/* B4AC60 802401F0 00621021 */   addu     $v0, $v1, $v0
.L802401F4:
/* B4AC64 802401F4 3C040002 */  lui       $a0, 2
/* B4AC68 802401F8 0083102A */  slt       $v0, $a0, $v1
/* B4AC6C 802401FC 10400002 */  beqz      $v0, .L80240208
/* B4AC70 80240200 00641023 */   subu     $v0, $v1, $a0
.L80240204:
/* B4AC74 80240204 AE0200AC */  sw        $v0, 0xac($s0)
.L80240208:
/* B4AC78 80240208 8E020078 */  lw        $v0, 0x78($s0)
/* B4AC7C 8024020C 1440000E */  bnez      $v0, .L80240248
/* B4AC80 80240210 00000000 */   nop      
/* B4AC84 80240214 8E0300B0 */  lw        $v1, 0xb0($s0)
/* B4AC88 80240218 8E020090 */  lw        $v0, 0x90($s0)
/* B4AC8C 8024021C 00621821 */  addu      $v1, $v1, $v0
/* B4AC90 80240220 04610004 */  bgez      $v1, .L80240234
/* B4AC94 80240224 AE0300B0 */   sw       $v1, 0xb0($s0)
/* B4AC98 80240228 3C020002 */  lui       $v0, 2
/* B4AC9C 8024022C 08090091 */  j         .L80240244
/* B4ACA0 80240230 00621021 */   addu     $v0, $v1, $v0
.L80240234:
/* B4ACA4 80240234 3C040002 */  lui       $a0, 2
/* B4ACA8 80240238 0083102A */  slt       $v0, $a0, $v1
/* B4ACAC 8024023C 10400002 */  beqz      $v0, .L80240248
/* B4ACB0 80240240 00641023 */   subu     $v0, $v1, $a0
.L80240244:
/* B4ACB4 80240244 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80240248:
/* B4ACB8 80240248 8E02007C */  lw        $v0, 0x7c($s0)
/* B4ACBC 8024024C 1440000E */  bnez      $v0, .L80240288
/* B4ACC0 80240250 00000000 */   nop      
/* B4ACC4 80240254 8E0300B4 */  lw        $v1, 0xb4($s0)
/* B4ACC8 80240258 8E020094 */  lw        $v0, 0x94($s0)
/* B4ACCC 8024025C 00621821 */  addu      $v1, $v1, $v0
/* B4ACD0 80240260 04610004 */  bgez      $v1, .L80240274
/* B4ACD4 80240264 AE0300B4 */   sw       $v1, 0xb4($s0)
/* B4ACD8 80240268 3C020002 */  lui       $v0, 2
/* B4ACDC 8024026C 080900A1 */  j         .L80240284
/* B4ACE0 80240270 00621021 */   addu     $v0, $v1, $v0
.L80240274:
/* B4ACE4 80240274 3C040002 */  lui       $a0, 2
/* B4ACE8 80240278 0083102A */  slt       $v0, $a0, $v1
/* B4ACEC 8024027C 10400002 */  beqz      $v0, .L80240288
/* B4ACF0 80240280 00641023 */   subu     $v0, $v1, $a0
.L80240284:
/* B4ACF4 80240284 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240288:
/* B4ACF8 80240288 8E040084 */  lw        $a0, 0x84($s0)
/* B4ACFC 8024028C 0C046F07 */  jal       set_main_pan_u
/* B4AD00 80240290 8E0500A8 */   lw       $a1, 0xa8($s0)
/* B4AD04 80240294 8E040084 */  lw        $a0, 0x84($s0)
/* B4AD08 80240298 0C046F0D */  jal       set_main_pan_v
/* B4AD0C 8024029C 8E0500AC */   lw       $a1, 0xac($s0)
/* B4AD10 802402A0 8E040084 */  lw        $a0, 0x84($s0)
/* B4AD14 802402A4 0C046F13 */  jal       set_aux_pan_u
/* B4AD18 802402A8 8E0500B0 */   lw       $a1, 0xb0($s0)
/* B4AD1C 802402AC 8E040084 */  lw        $a0, 0x84($s0)
/* B4AD20 802402B0 0C046F19 */  jal       set_aux_pan_v
/* B4AD24 802402B4 8E0500B4 */   lw       $a1, 0xb4($s0)
/* B4AD28 802402B8 8E020070 */  lw        $v0, 0x70($s0)
/* B4AD2C 802402BC 8E030078 */  lw        $v1, 0x78($s0)
/* B4AD30 802402C0 8E040098 */  lw        $a0, 0x98($s0)
/* B4AD34 802402C4 24420001 */  addiu     $v0, $v0, 1
/* B4AD38 802402C8 AE020070 */  sw        $v0, 0x70($s0)
/* B4AD3C 802402CC 8E020074 */  lw        $v0, 0x74($s0)
/* B4AD40 802402D0 24630001 */  addiu     $v1, $v1, 1
/* B4AD44 802402D4 AE030078 */  sw        $v1, 0x78($s0)
/* B4AD48 802402D8 8E030070 */  lw        $v1, 0x70($s0)
/* B4AD4C 802402DC 24420001 */  addiu     $v0, $v0, 1
/* B4AD50 802402E0 AE020074 */  sw        $v0, 0x74($s0)
/* B4AD54 802402E4 8E02007C */  lw        $v0, 0x7c($s0)
/* B4AD58 802402E8 0064182A */  slt       $v1, $v1, $a0
/* B4AD5C 802402EC 24420001 */  addiu     $v0, $v0, 1
/* B4AD60 802402F0 14600002 */  bnez      $v1, .L802402FC
/* B4AD64 802402F4 AE02007C */   sw       $v0, 0x7c($s0)
/* B4AD68 802402F8 AE000070 */  sw        $zero, 0x70($s0)
.L802402FC:
/* B4AD6C 802402FC 8E020074 */  lw        $v0, 0x74($s0)
/* B4AD70 80240300 8E03009C */  lw        $v1, 0x9c($s0)
/* B4AD74 80240304 0043102A */  slt       $v0, $v0, $v1
/* B4AD78 80240308 50400001 */  beql      $v0, $zero, .L80240310
/* B4AD7C 8024030C AE000074 */   sw       $zero, 0x74($s0)
.L80240310:
/* B4AD80 80240310 8E020078 */  lw        $v0, 0x78($s0)
/* B4AD84 80240314 8E0300A0 */  lw        $v1, 0xa0($s0)
/* B4AD88 80240318 0043102A */  slt       $v0, $v0, $v1
/* B4AD8C 8024031C 50400001 */  beql      $v0, $zero, .L80240324
/* B4AD90 80240320 AE000078 */   sw       $zero, 0x78($s0)
.L80240324:
/* B4AD94 80240324 8E02007C */  lw        $v0, 0x7c($s0)
/* B4AD98 80240328 8E0300A4 */  lw        $v1, 0xa4($s0)
/* B4AD9C 8024032C 0043102A */  slt       $v0, $v0, $v1
/* B4ADA0 80240330 50400001 */  beql      $v0, $zero, .L80240338
/* B4ADA4 80240334 AE00007C */   sw       $zero, 0x7c($s0)
.L80240338:
/* B4ADA8 80240338 8FBF0014 */  lw        $ra, 0x14($sp)
/* B4ADAC 8024033C 8FB00010 */  lw        $s0, 0x10($sp)
/* B4ADB0 80240340 0000102D */  daddu     $v0, $zero, $zero
/* B4ADB4 80240344 03E00008 */  jr        $ra
/* B4ADB8 80240348 27BD0018 */   addiu    $sp, $sp, 0x18
/* B4ADBC 8024034C 00000000 */  nop       
