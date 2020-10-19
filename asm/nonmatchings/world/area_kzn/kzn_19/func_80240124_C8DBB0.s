.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240124_C8DCD4
/* C8DCD4 80240124 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* C8DCD8 80240128 AFB00010 */  sw        $s0, 0x10($sp)
/* C8DCDC 8024012C 0080802D */  daddu     $s0, $a0, $zero
/* C8DCE0 80240130 10A00005 */  beqz      $a1, .L80240148
/* C8DCE4 80240134 AFBF0014 */   sw       $ra, 0x14($sp)
/* C8DCE8 80240138 AE000070 */  sw        $zero, 0x70($s0)
/* C8DCEC 8024013C AE000074 */  sw        $zero, 0x74($s0)
/* C8DCF0 80240140 AE000078 */  sw        $zero, 0x78($s0)
/* C8DCF4 80240144 AE00007C */  sw        $zero, 0x7c($s0)
.L80240148:
/* C8DCF8 80240148 8E020070 */  lw        $v0, 0x70($s0)
/* C8DCFC 8024014C 1440000E */  bnez      $v0, .L80240188
/* C8DD00 80240150 00000000 */   nop      
/* C8DD04 80240154 8E0300A8 */  lw        $v1, 0xa8($s0)
/* C8DD08 80240158 8E020088 */  lw        $v0, 0x88($s0)
/* C8DD0C 8024015C 00621821 */  addu      $v1, $v1, $v0
/* C8DD10 80240160 04610004 */  bgez      $v1, .L80240174
/* C8DD14 80240164 AE0300A8 */   sw       $v1, 0xa8($s0)
/* C8DD18 80240168 3C020002 */  lui       $v0, 2
/* C8DD1C 8024016C 08090061 */  j         .L80240184
/* C8DD20 80240170 00621021 */   addu     $v0, $v1, $v0
.L80240174:
/* C8DD24 80240174 3C040002 */  lui       $a0, 2
/* C8DD28 80240178 0083102A */  slt       $v0, $a0, $v1
/* C8DD2C 8024017C 10400002 */  beqz      $v0, .L80240188
/* C8DD30 80240180 00641023 */   subu     $v0, $v1, $a0
.L80240184:
/* C8DD34 80240184 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240188:
/* C8DD38 80240188 8E020074 */  lw        $v0, 0x74($s0)
/* C8DD3C 8024018C 1440000E */  bnez      $v0, .L802401C8
/* C8DD40 80240190 00000000 */   nop      
/* C8DD44 80240194 8E0300AC */  lw        $v1, 0xac($s0)
/* C8DD48 80240198 8E02008C */  lw        $v0, 0x8c($s0)
/* C8DD4C 8024019C 00621821 */  addu      $v1, $v1, $v0
/* C8DD50 802401A0 04610004 */  bgez      $v1, .L802401B4
/* C8DD54 802401A4 AE0300AC */   sw       $v1, 0xac($s0)
/* C8DD58 802401A8 3C020002 */  lui       $v0, 2
/* C8DD5C 802401AC 08090071 */  j         .L802401C4
/* C8DD60 802401B0 00621021 */   addu     $v0, $v1, $v0
.L802401B4:
/* C8DD64 802401B4 3C040002 */  lui       $a0, 2
/* C8DD68 802401B8 0083102A */  slt       $v0, $a0, $v1
/* C8DD6C 802401BC 10400002 */  beqz      $v0, .L802401C8
/* C8DD70 802401C0 00641023 */   subu     $v0, $v1, $a0
.L802401C4:
/* C8DD74 802401C4 AE0200AC */  sw        $v0, 0xac($s0)
.L802401C8:
/* C8DD78 802401C8 8E020078 */  lw        $v0, 0x78($s0)
/* C8DD7C 802401CC 1440000E */  bnez      $v0, .L80240208
/* C8DD80 802401D0 00000000 */   nop      
/* C8DD84 802401D4 8E0300B0 */  lw        $v1, 0xb0($s0)
/* C8DD88 802401D8 8E020090 */  lw        $v0, 0x90($s0)
/* C8DD8C 802401DC 00621821 */  addu      $v1, $v1, $v0
/* C8DD90 802401E0 04610004 */  bgez      $v1, .L802401F4
/* C8DD94 802401E4 AE0300B0 */   sw       $v1, 0xb0($s0)
/* C8DD98 802401E8 3C020002 */  lui       $v0, 2
/* C8DD9C 802401EC 08090081 */  j         .L80240204
/* C8DDA0 802401F0 00621021 */   addu     $v0, $v1, $v0
.L802401F4:
/* C8DDA4 802401F4 3C040002 */  lui       $a0, 2
/* C8DDA8 802401F8 0083102A */  slt       $v0, $a0, $v1
/* C8DDAC 802401FC 10400002 */  beqz      $v0, .L80240208
/* C8DDB0 80240200 00641023 */   subu     $v0, $v1, $a0
.L80240204:
/* C8DDB4 80240204 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80240208:
/* C8DDB8 80240208 8E02007C */  lw        $v0, 0x7c($s0)
/* C8DDBC 8024020C 1440000E */  bnez      $v0, .L80240248
/* C8DDC0 80240210 00000000 */   nop      
/* C8DDC4 80240214 8E0300B4 */  lw        $v1, 0xb4($s0)
/* C8DDC8 80240218 8E020094 */  lw        $v0, 0x94($s0)
/* C8DDCC 8024021C 00621821 */  addu      $v1, $v1, $v0
/* C8DDD0 80240220 04610004 */  bgez      $v1, .L80240234
/* C8DDD4 80240224 AE0300B4 */   sw       $v1, 0xb4($s0)
/* C8DDD8 80240228 3C020002 */  lui       $v0, 2
/* C8DDDC 8024022C 08090091 */  j         .L80240244
/* C8DDE0 80240230 00621021 */   addu     $v0, $v1, $v0
.L80240234:
/* C8DDE4 80240234 3C040002 */  lui       $a0, 2
/* C8DDE8 80240238 0083102A */  slt       $v0, $a0, $v1
/* C8DDEC 8024023C 10400002 */  beqz      $v0, .L80240248
/* C8DDF0 80240240 00641023 */   subu     $v0, $v1, $a0
.L80240244:
/* C8DDF4 80240244 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240248:
/* C8DDF8 80240248 8E040084 */  lw        $a0, 0x84($s0)
/* C8DDFC 8024024C 0C046F07 */  jal       set_main_pan_u
/* C8DE00 80240250 8E0500A8 */   lw       $a1, 0xa8($s0)
/* C8DE04 80240254 8E040084 */  lw        $a0, 0x84($s0)
/* C8DE08 80240258 0C046F0D */  jal       set_main_pan_v
/* C8DE0C 8024025C 8E0500AC */   lw       $a1, 0xac($s0)
/* C8DE10 80240260 8E040084 */  lw        $a0, 0x84($s0)
/* C8DE14 80240264 0C046F13 */  jal       set_aux_pan_u
/* C8DE18 80240268 8E0500B0 */   lw       $a1, 0xb0($s0)
/* C8DE1C 8024026C 8E040084 */  lw        $a0, 0x84($s0)
/* C8DE20 80240270 0C046F19 */  jal       set_aux_pan_v
/* C8DE24 80240274 8E0500B4 */   lw       $a1, 0xb4($s0)
/* C8DE28 80240278 8E020070 */  lw        $v0, 0x70($s0)
/* C8DE2C 8024027C 8E030078 */  lw        $v1, 0x78($s0)
/* C8DE30 80240280 8E040098 */  lw        $a0, 0x98($s0)
/* C8DE34 80240284 24420001 */  addiu     $v0, $v0, 1
/* C8DE38 80240288 AE020070 */  sw        $v0, 0x70($s0)
/* C8DE3C 8024028C 8E020074 */  lw        $v0, 0x74($s0)
/* C8DE40 80240290 24630001 */  addiu     $v1, $v1, 1
/* C8DE44 80240294 AE030078 */  sw        $v1, 0x78($s0)
/* C8DE48 80240298 8E030070 */  lw        $v1, 0x70($s0)
/* C8DE4C 8024029C 24420001 */  addiu     $v0, $v0, 1
/* C8DE50 802402A0 AE020074 */  sw        $v0, 0x74($s0)
/* C8DE54 802402A4 8E02007C */  lw        $v0, 0x7c($s0)
/* C8DE58 802402A8 0064182A */  slt       $v1, $v1, $a0
/* C8DE5C 802402AC 24420001 */  addiu     $v0, $v0, 1
/* C8DE60 802402B0 14600002 */  bnez      $v1, .L802402BC
/* C8DE64 802402B4 AE02007C */   sw       $v0, 0x7c($s0)
/* C8DE68 802402B8 AE000070 */  sw        $zero, 0x70($s0)
.L802402BC:
/* C8DE6C 802402BC 8E020074 */  lw        $v0, 0x74($s0)
/* C8DE70 802402C0 8E03009C */  lw        $v1, 0x9c($s0)
/* C8DE74 802402C4 0043102A */  slt       $v0, $v0, $v1
/* C8DE78 802402C8 50400001 */  beql      $v0, $zero, .L802402D0
/* C8DE7C 802402CC AE000074 */   sw       $zero, 0x74($s0)
.L802402D0:
/* C8DE80 802402D0 8E020078 */  lw        $v0, 0x78($s0)
/* C8DE84 802402D4 8E0300A0 */  lw        $v1, 0xa0($s0)
/* C8DE88 802402D8 0043102A */  slt       $v0, $v0, $v1
/* C8DE8C 802402DC 50400001 */  beql      $v0, $zero, .L802402E4
/* C8DE90 802402E0 AE000078 */   sw       $zero, 0x78($s0)
.L802402E4:
/* C8DE94 802402E4 8E02007C */  lw        $v0, 0x7c($s0)
/* C8DE98 802402E8 8E0300A4 */  lw        $v1, 0xa4($s0)
/* C8DE9C 802402EC 0043102A */  slt       $v0, $v0, $v1
/* C8DEA0 802402F0 50400001 */  beql      $v0, $zero, .L802402F8
/* C8DEA4 802402F4 AE00007C */   sw       $zero, 0x7c($s0)
.L802402F8:
/* C8DEA8 802402F8 8FBF0014 */  lw        $ra, 0x14($sp)
/* C8DEAC 802402FC 8FB00010 */  lw        $s0, 0x10($sp)
/* C8DEB0 80240300 0000102D */  daddu     $v0, $zero, $zero
/* C8DEB4 80240304 03E00008 */  jr        $ra
/* C8DEB8 80240308 27BD0018 */   addiu    $sp, $sp, 0x18
