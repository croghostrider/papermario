.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240124_A74994
/* A74994 80240124 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* A74998 80240128 AFB00010 */  sw        $s0, 0x10($sp)
/* A7499C 8024012C 0080802D */  daddu     $s0, $a0, $zero
/* A749A0 80240130 10A00005 */  beqz      $a1, .L80240148
/* A749A4 80240134 AFBF0014 */   sw       $ra, 0x14($sp)
/* A749A8 80240138 AE000070 */  sw        $zero, 0x70($s0)
/* A749AC 8024013C AE000074 */  sw        $zero, 0x74($s0)
/* A749B0 80240140 AE000078 */  sw        $zero, 0x78($s0)
/* A749B4 80240144 AE00007C */  sw        $zero, 0x7c($s0)
.L80240148:
/* A749B8 80240148 8E020070 */  lw        $v0, 0x70($s0)
/* A749BC 8024014C 1440000E */  bnez      $v0, .L80240188
/* A749C0 80240150 00000000 */   nop      
/* A749C4 80240154 8E0300A8 */  lw        $v1, 0xa8($s0)
/* A749C8 80240158 8E020088 */  lw        $v0, 0x88($s0)
/* A749CC 8024015C 00621821 */  addu      $v1, $v1, $v0
/* A749D0 80240160 04610004 */  bgez      $v1, .L80240174
/* A749D4 80240164 AE0300A8 */   sw       $v1, 0xa8($s0)
/* A749D8 80240168 3C020002 */  lui       $v0, 2
/* A749DC 8024016C 08090061 */  j         .L80240184
/* A749E0 80240170 00621021 */   addu     $v0, $v1, $v0
.L80240174:
/* A749E4 80240174 3C040002 */  lui       $a0, 2
/* A749E8 80240178 0083102A */  slt       $v0, $a0, $v1
/* A749EC 8024017C 10400002 */  beqz      $v0, .L80240188
/* A749F0 80240180 00641023 */   subu     $v0, $v1, $a0
.L80240184:
/* A749F4 80240184 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240188:
/* A749F8 80240188 8E020074 */  lw        $v0, 0x74($s0)
/* A749FC 8024018C 1440000E */  bnez      $v0, .L802401C8
/* A74A00 80240190 00000000 */   nop      
/* A74A04 80240194 8E0300AC */  lw        $v1, 0xac($s0)
/* A74A08 80240198 8E02008C */  lw        $v0, 0x8c($s0)
/* A74A0C 8024019C 00621821 */  addu      $v1, $v1, $v0
/* A74A10 802401A0 04610004 */  bgez      $v1, .L802401B4
/* A74A14 802401A4 AE0300AC */   sw       $v1, 0xac($s0)
/* A74A18 802401A8 3C020002 */  lui       $v0, 2
/* A74A1C 802401AC 08090071 */  j         .L802401C4
/* A74A20 802401B0 00621021 */   addu     $v0, $v1, $v0
.L802401B4:
/* A74A24 802401B4 3C040002 */  lui       $a0, 2
/* A74A28 802401B8 0083102A */  slt       $v0, $a0, $v1
/* A74A2C 802401BC 10400002 */  beqz      $v0, .L802401C8
/* A74A30 802401C0 00641023 */   subu     $v0, $v1, $a0
.L802401C4:
/* A74A34 802401C4 AE0200AC */  sw        $v0, 0xac($s0)
.L802401C8:
/* A74A38 802401C8 8E020078 */  lw        $v0, 0x78($s0)
/* A74A3C 802401CC 1440000E */  bnez      $v0, .L80240208
/* A74A40 802401D0 00000000 */   nop      
/* A74A44 802401D4 8E0300B0 */  lw        $v1, 0xb0($s0)
/* A74A48 802401D8 8E020090 */  lw        $v0, 0x90($s0)
/* A74A4C 802401DC 00621821 */  addu      $v1, $v1, $v0
/* A74A50 802401E0 04610004 */  bgez      $v1, .L802401F4
/* A74A54 802401E4 AE0300B0 */   sw       $v1, 0xb0($s0)
/* A74A58 802401E8 3C020002 */  lui       $v0, 2
/* A74A5C 802401EC 08090081 */  j         .L80240204
/* A74A60 802401F0 00621021 */   addu     $v0, $v1, $v0
.L802401F4:
/* A74A64 802401F4 3C040002 */  lui       $a0, 2
/* A74A68 802401F8 0083102A */  slt       $v0, $a0, $v1
/* A74A6C 802401FC 10400002 */  beqz      $v0, .L80240208
/* A74A70 80240200 00641023 */   subu     $v0, $v1, $a0
.L80240204:
/* A74A74 80240204 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80240208:
/* A74A78 80240208 8E02007C */  lw        $v0, 0x7c($s0)
/* A74A7C 8024020C 1440000E */  bnez      $v0, .L80240248
/* A74A80 80240210 00000000 */   nop      
/* A74A84 80240214 8E0300B4 */  lw        $v1, 0xb4($s0)
/* A74A88 80240218 8E020094 */  lw        $v0, 0x94($s0)
/* A74A8C 8024021C 00621821 */  addu      $v1, $v1, $v0
/* A74A90 80240220 04610004 */  bgez      $v1, .L80240234
/* A74A94 80240224 AE0300B4 */   sw       $v1, 0xb4($s0)
/* A74A98 80240228 3C020002 */  lui       $v0, 2
/* A74A9C 8024022C 08090091 */  j         .L80240244
/* A74AA0 80240230 00621021 */   addu     $v0, $v1, $v0
.L80240234:
/* A74AA4 80240234 3C040002 */  lui       $a0, 2
/* A74AA8 80240238 0083102A */  slt       $v0, $a0, $v1
/* A74AAC 8024023C 10400002 */  beqz      $v0, .L80240248
/* A74AB0 80240240 00641023 */   subu     $v0, $v1, $a0
.L80240244:
/* A74AB4 80240244 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240248:
/* A74AB8 80240248 8E040084 */  lw        $a0, 0x84($s0)
/* A74ABC 8024024C 0C046F07 */  jal       set_main_pan_u
/* A74AC0 80240250 8E0500A8 */   lw       $a1, 0xa8($s0)
/* A74AC4 80240254 8E040084 */  lw        $a0, 0x84($s0)
/* A74AC8 80240258 0C046F0D */  jal       set_main_pan_v
/* A74ACC 8024025C 8E0500AC */   lw       $a1, 0xac($s0)
/* A74AD0 80240260 8E040084 */  lw        $a0, 0x84($s0)
/* A74AD4 80240264 0C046F13 */  jal       set_aux_pan_u
/* A74AD8 80240268 8E0500B0 */   lw       $a1, 0xb0($s0)
/* A74ADC 8024026C 8E040084 */  lw        $a0, 0x84($s0)
/* A74AE0 80240270 0C046F19 */  jal       set_aux_pan_v
/* A74AE4 80240274 8E0500B4 */   lw       $a1, 0xb4($s0)
/* A74AE8 80240278 8E020070 */  lw        $v0, 0x70($s0)
/* A74AEC 8024027C 8E030078 */  lw        $v1, 0x78($s0)
/* A74AF0 80240280 8E040098 */  lw        $a0, 0x98($s0)
/* A74AF4 80240284 24420001 */  addiu     $v0, $v0, 1
/* A74AF8 80240288 AE020070 */  sw        $v0, 0x70($s0)
/* A74AFC 8024028C 8E020074 */  lw        $v0, 0x74($s0)
/* A74B00 80240290 24630001 */  addiu     $v1, $v1, 1
/* A74B04 80240294 AE030078 */  sw        $v1, 0x78($s0)
/* A74B08 80240298 8E030070 */  lw        $v1, 0x70($s0)
/* A74B0C 8024029C 24420001 */  addiu     $v0, $v0, 1
/* A74B10 802402A0 AE020074 */  sw        $v0, 0x74($s0)
/* A74B14 802402A4 8E02007C */  lw        $v0, 0x7c($s0)
/* A74B18 802402A8 0064182A */  slt       $v1, $v1, $a0
/* A74B1C 802402AC 24420001 */  addiu     $v0, $v0, 1
/* A74B20 802402B0 14600002 */  bnez      $v1, .L802402BC
/* A74B24 802402B4 AE02007C */   sw       $v0, 0x7c($s0)
/* A74B28 802402B8 AE000070 */  sw        $zero, 0x70($s0)
.L802402BC:
/* A74B2C 802402BC 8E020074 */  lw        $v0, 0x74($s0)
/* A74B30 802402C0 8E03009C */  lw        $v1, 0x9c($s0)
/* A74B34 802402C4 0043102A */  slt       $v0, $v0, $v1
/* A74B38 802402C8 50400001 */  beql      $v0, $zero, .L802402D0
/* A74B3C 802402CC AE000074 */   sw       $zero, 0x74($s0)
.L802402D0:
/* A74B40 802402D0 8E020078 */  lw        $v0, 0x78($s0)
/* A74B44 802402D4 8E0300A0 */  lw        $v1, 0xa0($s0)
/* A74B48 802402D8 0043102A */  slt       $v0, $v0, $v1
/* A74B4C 802402DC 50400001 */  beql      $v0, $zero, .L802402E4
/* A74B50 802402E0 AE000078 */   sw       $zero, 0x78($s0)
.L802402E4:
/* A74B54 802402E4 8E02007C */  lw        $v0, 0x7c($s0)
/* A74B58 802402E8 8E0300A4 */  lw        $v1, 0xa4($s0)
/* A74B5C 802402EC 0043102A */  slt       $v0, $v0, $v1
/* A74B60 802402F0 50400001 */  beql      $v0, $zero, .L802402F8
/* A74B64 802402F4 AE00007C */   sw       $zero, 0x7c($s0)
.L802402F8:
/* A74B68 802402F8 8FBF0014 */  lw        $ra, 0x14($sp)
/* A74B6C 802402FC 8FB00010 */  lw        $s0, 0x10($sp)
/* A74B70 80240300 0000102D */  daddu     $v0, $zero, $zero
/* A74B74 80240304 03E00008 */  jr        $ra
/* A74B78 80240308 27BD0018 */   addiu    $sp, $sp, 0x18
/* A74B7C 8024030C 00000000 */  nop       
