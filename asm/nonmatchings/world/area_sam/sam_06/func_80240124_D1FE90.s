.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240124_D1FFB4
/* D1FFB4 80240124 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* D1FFB8 80240128 AFB00010 */  sw        $s0, 0x10($sp)
/* D1FFBC 8024012C 0080802D */  daddu     $s0, $a0, $zero
/* D1FFC0 80240130 10A00005 */  beqz      $a1, .L80240148
/* D1FFC4 80240134 AFBF0014 */   sw       $ra, 0x14($sp)
/* D1FFC8 80240138 AE000070 */  sw        $zero, 0x70($s0)
/* D1FFCC 8024013C AE000074 */  sw        $zero, 0x74($s0)
/* D1FFD0 80240140 AE000078 */  sw        $zero, 0x78($s0)
/* D1FFD4 80240144 AE00007C */  sw        $zero, 0x7c($s0)
.L80240148:
/* D1FFD8 80240148 8E020070 */  lw        $v0, 0x70($s0)
/* D1FFDC 8024014C 1440000E */  bnez      $v0, .L80240188
/* D1FFE0 80240150 00000000 */   nop      
/* D1FFE4 80240154 8E0300A8 */  lw        $v1, 0xa8($s0)
/* D1FFE8 80240158 8E020088 */  lw        $v0, 0x88($s0)
/* D1FFEC 8024015C 00621821 */  addu      $v1, $v1, $v0
/* D1FFF0 80240160 04610004 */  bgez      $v1, .L80240174
/* D1FFF4 80240164 AE0300A8 */   sw       $v1, 0xa8($s0)
/* D1FFF8 80240168 3C020002 */  lui       $v0, 2
/* D1FFFC 8024016C 08090061 */  j         .L80240184
/* D20000 80240170 00621021 */   addu     $v0, $v1, $v0
.L80240174:
/* D20004 80240174 3C040002 */  lui       $a0, 2
/* D20008 80240178 0083102A */  slt       $v0, $a0, $v1
/* D2000C 8024017C 10400002 */  beqz      $v0, .L80240188
/* D20010 80240180 00641023 */   subu     $v0, $v1, $a0
.L80240184:
/* D20014 80240184 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240188:
/* D20018 80240188 8E020074 */  lw        $v0, 0x74($s0)
/* D2001C 8024018C 1440000E */  bnez      $v0, .L802401C8
/* D20020 80240190 00000000 */   nop      
/* D20024 80240194 8E0300AC */  lw        $v1, 0xac($s0)
/* D20028 80240198 8E02008C */  lw        $v0, 0x8c($s0)
/* D2002C 8024019C 00621821 */  addu      $v1, $v1, $v0
/* D20030 802401A0 04610004 */  bgez      $v1, .L802401B4
/* D20034 802401A4 AE0300AC */   sw       $v1, 0xac($s0)
/* D20038 802401A8 3C020002 */  lui       $v0, 2
/* D2003C 802401AC 08090071 */  j         .L802401C4
/* D20040 802401B0 00621021 */   addu     $v0, $v1, $v0
.L802401B4:
/* D20044 802401B4 3C040002 */  lui       $a0, 2
/* D20048 802401B8 0083102A */  slt       $v0, $a0, $v1
/* D2004C 802401BC 10400002 */  beqz      $v0, .L802401C8
/* D20050 802401C0 00641023 */   subu     $v0, $v1, $a0
.L802401C4:
/* D20054 802401C4 AE0200AC */  sw        $v0, 0xac($s0)
.L802401C8:
/* D20058 802401C8 8E020078 */  lw        $v0, 0x78($s0)
/* D2005C 802401CC 1440000E */  bnez      $v0, .L80240208
/* D20060 802401D0 00000000 */   nop      
/* D20064 802401D4 8E0300B0 */  lw        $v1, 0xb0($s0)
/* D20068 802401D8 8E020090 */  lw        $v0, 0x90($s0)
/* D2006C 802401DC 00621821 */  addu      $v1, $v1, $v0
/* D20070 802401E0 04610004 */  bgez      $v1, .L802401F4
/* D20074 802401E4 AE0300B0 */   sw       $v1, 0xb0($s0)
/* D20078 802401E8 3C020002 */  lui       $v0, 2
/* D2007C 802401EC 08090081 */  j         .L80240204
/* D20080 802401F0 00621021 */   addu     $v0, $v1, $v0
.L802401F4:
/* D20084 802401F4 3C040002 */  lui       $a0, 2
/* D20088 802401F8 0083102A */  slt       $v0, $a0, $v1
/* D2008C 802401FC 10400002 */  beqz      $v0, .L80240208
/* D20090 80240200 00641023 */   subu     $v0, $v1, $a0
.L80240204:
/* D20094 80240204 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80240208:
/* D20098 80240208 8E02007C */  lw        $v0, 0x7c($s0)
/* D2009C 8024020C 1440000E */  bnez      $v0, .L80240248
/* D200A0 80240210 00000000 */   nop      
/* D200A4 80240214 8E0300B4 */  lw        $v1, 0xb4($s0)
/* D200A8 80240218 8E020094 */  lw        $v0, 0x94($s0)
/* D200AC 8024021C 00621821 */  addu      $v1, $v1, $v0
/* D200B0 80240220 04610004 */  bgez      $v1, .L80240234
/* D200B4 80240224 AE0300B4 */   sw       $v1, 0xb4($s0)
/* D200B8 80240228 3C020002 */  lui       $v0, 2
/* D200BC 8024022C 08090091 */  j         .L80240244
/* D200C0 80240230 00621021 */   addu     $v0, $v1, $v0
.L80240234:
/* D200C4 80240234 3C040002 */  lui       $a0, 2
/* D200C8 80240238 0083102A */  slt       $v0, $a0, $v1
/* D200CC 8024023C 10400002 */  beqz      $v0, .L80240248
/* D200D0 80240240 00641023 */   subu     $v0, $v1, $a0
.L80240244:
/* D200D4 80240244 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240248:
/* D200D8 80240248 8E040084 */  lw        $a0, 0x84($s0)
/* D200DC 8024024C 0C046F07 */  jal       set_main_pan_u
/* D200E0 80240250 8E0500A8 */   lw       $a1, 0xa8($s0)
/* D200E4 80240254 8E040084 */  lw        $a0, 0x84($s0)
/* D200E8 80240258 0C046F0D */  jal       set_main_pan_v
/* D200EC 8024025C 8E0500AC */   lw       $a1, 0xac($s0)
/* D200F0 80240260 8E040084 */  lw        $a0, 0x84($s0)
/* D200F4 80240264 0C046F13 */  jal       set_aux_pan_u
/* D200F8 80240268 8E0500B0 */   lw       $a1, 0xb0($s0)
/* D200FC 8024026C 8E040084 */  lw        $a0, 0x84($s0)
/* D20100 80240270 0C046F19 */  jal       set_aux_pan_v
/* D20104 80240274 8E0500B4 */   lw       $a1, 0xb4($s0)
/* D20108 80240278 8E020070 */  lw        $v0, 0x70($s0)
/* D2010C 8024027C 8E030078 */  lw        $v1, 0x78($s0)
/* D20110 80240280 8E040098 */  lw        $a0, 0x98($s0)
/* D20114 80240284 24420001 */  addiu     $v0, $v0, 1
/* D20118 80240288 AE020070 */  sw        $v0, 0x70($s0)
/* D2011C 8024028C 8E020074 */  lw        $v0, 0x74($s0)
/* D20120 80240290 24630001 */  addiu     $v1, $v1, 1
/* D20124 80240294 AE030078 */  sw        $v1, 0x78($s0)
/* D20128 80240298 8E030070 */  lw        $v1, 0x70($s0)
/* D2012C 8024029C 24420001 */  addiu     $v0, $v0, 1
/* D20130 802402A0 AE020074 */  sw        $v0, 0x74($s0)
/* D20134 802402A4 8E02007C */  lw        $v0, 0x7c($s0)
/* D20138 802402A8 0064182A */  slt       $v1, $v1, $a0
/* D2013C 802402AC 24420001 */  addiu     $v0, $v0, 1
/* D20140 802402B0 14600002 */  bnez      $v1, .L802402BC
/* D20144 802402B4 AE02007C */   sw       $v0, 0x7c($s0)
/* D20148 802402B8 AE000070 */  sw        $zero, 0x70($s0)
.L802402BC:
/* D2014C 802402BC 8E020074 */  lw        $v0, 0x74($s0)
/* D20150 802402C0 8E03009C */  lw        $v1, 0x9c($s0)
/* D20154 802402C4 0043102A */  slt       $v0, $v0, $v1
/* D20158 802402C8 50400001 */  beql      $v0, $zero, .L802402D0
/* D2015C 802402CC AE000074 */   sw       $zero, 0x74($s0)
.L802402D0:
/* D20160 802402D0 8E020078 */  lw        $v0, 0x78($s0)
/* D20164 802402D4 8E0300A0 */  lw        $v1, 0xa0($s0)
/* D20168 802402D8 0043102A */  slt       $v0, $v0, $v1
/* D2016C 802402DC 50400001 */  beql      $v0, $zero, .L802402E4
/* D20170 802402E0 AE000078 */   sw       $zero, 0x78($s0)
.L802402E4:
/* D20174 802402E4 8E02007C */  lw        $v0, 0x7c($s0)
/* D20178 802402E8 8E0300A4 */  lw        $v1, 0xa4($s0)
/* D2017C 802402EC 0043102A */  slt       $v0, $v0, $v1
/* D20180 802402F0 50400001 */  beql      $v0, $zero, .L802402F8
/* D20184 802402F4 AE00007C */   sw       $zero, 0x7c($s0)
.L802402F8:
/* D20188 802402F8 8FBF0014 */  lw        $ra, 0x14($sp)
/* D2018C 802402FC 8FB00010 */  lw        $s0, 0x10($sp)
/* D20190 80240300 0000102D */  daddu     $v0, $zero, $zero
/* D20194 80240304 03E00008 */  jr        $ra
/* D20198 80240308 27BD0018 */   addiu    $sp, $sp, 0x18
