.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240124_A51AA4
/* A51AA4 80240124 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* A51AA8 80240128 AFB00010 */  sw        $s0, 0x10($sp)
/* A51AAC 8024012C 0080802D */  daddu     $s0, $a0, $zero
/* A51AB0 80240130 10A00005 */  beqz      $a1, .L80240148
/* A51AB4 80240134 AFBF0014 */   sw       $ra, 0x14($sp)
/* A51AB8 80240138 AE000070 */  sw        $zero, 0x70($s0)
/* A51ABC 8024013C AE000074 */  sw        $zero, 0x74($s0)
/* A51AC0 80240140 AE000078 */  sw        $zero, 0x78($s0)
/* A51AC4 80240144 AE00007C */  sw        $zero, 0x7c($s0)
.L80240148:
/* A51AC8 80240148 8E020070 */  lw        $v0, 0x70($s0)
/* A51ACC 8024014C 1440000E */  bnez      $v0, .L80240188
/* A51AD0 80240150 00000000 */   nop      
/* A51AD4 80240154 8E0300A8 */  lw        $v1, 0xa8($s0)
/* A51AD8 80240158 8E020088 */  lw        $v0, 0x88($s0)
/* A51ADC 8024015C 00621821 */  addu      $v1, $v1, $v0
/* A51AE0 80240160 04610004 */  bgez      $v1, .L80240174
/* A51AE4 80240164 AE0300A8 */   sw       $v1, 0xa8($s0)
/* A51AE8 80240168 3C020002 */  lui       $v0, 2
/* A51AEC 8024016C 08090061 */  j         .L80240184
/* A51AF0 80240170 00621021 */   addu     $v0, $v1, $v0
.L80240174:
/* A51AF4 80240174 3C040002 */  lui       $a0, 2
/* A51AF8 80240178 0083102A */  slt       $v0, $a0, $v1
/* A51AFC 8024017C 10400002 */  beqz      $v0, .L80240188
/* A51B00 80240180 00641023 */   subu     $v0, $v1, $a0
.L80240184:
/* A51B04 80240184 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240188:
/* A51B08 80240188 8E020074 */  lw        $v0, 0x74($s0)
/* A51B0C 8024018C 1440000E */  bnez      $v0, .L802401C8
/* A51B10 80240190 00000000 */   nop      
/* A51B14 80240194 8E0300AC */  lw        $v1, 0xac($s0)
/* A51B18 80240198 8E02008C */  lw        $v0, 0x8c($s0)
/* A51B1C 8024019C 00621821 */  addu      $v1, $v1, $v0
/* A51B20 802401A0 04610004 */  bgez      $v1, .L802401B4
/* A51B24 802401A4 AE0300AC */   sw       $v1, 0xac($s0)
/* A51B28 802401A8 3C020002 */  lui       $v0, 2
/* A51B2C 802401AC 08090071 */  j         .L802401C4
/* A51B30 802401B0 00621021 */   addu     $v0, $v1, $v0
.L802401B4:
/* A51B34 802401B4 3C040002 */  lui       $a0, 2
/* A51B38 802401B8 0083102A */  slt       $v0, $a0, $v1
/* A51B3C 802401BC 10400002 */  beqz      $v0, .L802401C8
/* A51B40 802401C0 00641023 */   subu     $v0, $v1, $a0
.L802401C4:
/* A51B44 802401C4 AE0200AC */  sw        $v0, 0xac($s0)
.L802401C8:
/* A51B48 802401C8 8E020078 */  lw        $v0, 0x78($s0)
/* A51B4C 802401CC 1440000E */  bnez      $v0, .L80240208
/* A51B50 802401D0 00000000 */   nop      
/* A51B54 802401D4 8E0300B0 */  lw        $v1, 0xb0($s0)
/* A51B58 802401D8 8E020090 */  lw        $v0, 0x90($s0)
/* A51B5C 802401DC 00621821 */  addu      $v1, $v1, $v0
/* A51B60 802401E0 04610004 */  bgez      $v1, .L802401F4
/* A51B64 802401E4 AE0300B0 */   sw       $v1, 0xb0($s0)
/* A51B68 802401E8 3C020002 */  lui       $v0, 2
/* A51B6C 802401EC 08090081 */  j         .L80240204
/* A51B70 802401F0 00621021 */   addu     $v0, $v1, $v0
.L802401F4:
/* A51B74 802401F4 3C040002 */  lui       $a0, 2
/* A51B78 802401F8 0083102A */  slt       $v0, $a0, $v1
/* A51B7C 802401FC 10400002 */  beqz      $v0, .L80240208
/* A51B80 80240200 00641023 */   subu     $v0, $v1, $a0
.L80240204:
/* A51B84 80240204 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80240208:
/* A51B88 80240208 8E02007C */  lw        $v0, 0x7c($s0)
/* A51B8C 8024020C 1440000E */  bnez      $v0, .L80240248
/* A51B90 80240210 00000000 */   nop      
/* A51B94 80240214 8E0300B4 */  lw        $v1, 0xb4($s0)
/* A51B98 80240218 8E020094 */  lw        $v0, 0x94($s0)
/* A51B9C 8024021C 00621821 */  addu      $v1, $v1, $v0
/* A51BA0 80240220 04610004 */  bgez      $v1, .L80240234
/* A51BA4 80240224 AE0300B4 */   sw       $v1, 0xb4($s0)
/* A51BA8 80240228 3C020002 */  lui       $v0, 2
/* A51BAC 8024022C 08090091 */  j         .L80240244
/* A51BB0 80240230 00621021 */   addu     $v0, $v1, $v0
.L80240234:
/* A51BB4 80240234 3C040002 */  lui       $a0, 2
/* A51BB8 80240238 0083102A */  slt       $v0, $a0, $v1
/* A51BBC 8024023C 10400002 */  beqz      $v0, .L80240248
/* A51BC0 80240240 00641023 */   subu     $v0, $v1, $a0
.L80240244:
/* A51BC4 80240244 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240248:
/* A51BC8 80240248 8E040084 */  lw        $a0, 0x84($s0)
/* A51BCC 8024024C 0C046F07 */  jal       set_main_pan_u
/* A51BD0 80240250 8E0500A8 */   lw       $a1, 0xa8($s0)
/* A51BD4 80240254 8E040084 */  lw        $a0, 0x84($s0)
/* A51BD8 80240258 0C046F0D */  jal       set_main_pan_v
/* A51BDC 8024025C 8E0500AC */   lw       $a1, 0xac($s0)
/* A51BE0 80240260 8E040084 */  lw        $a0, 0x84($s0)
/* A51BE4 80240264 0C046F13 */  jal       set_aux_pan_u
/* A51BE8 80240268 8E0500B0 */   lw       $a1, 0xb0($s0)
/* A51BEC 8024026C 8E040084 */  lw        $a0, 0x84($s0)
/* A51BF0 80240270 0C046F19 */  jal       set_aux_pan_v
/* A51BF4 80240274 8E0500B4 */   lw       $a1, 0xb4($s0)
/* A51BF8 80240278 8E020070 */  lw        $v0, 0x70($s0)
/* A51BFC 8024027C 8E030078 */  lw        $v1, 0x78($s0)
/* A51C00 80240280 8E040098 */  lw        $a0, 0x98($s0)
/* A51C04 80240284 24420001 */  addiu     $v0, $v0, 1
/* A51C08 80240288 AE020070 */  sw        $v0, 0x70($s0)
/* A51C0C 8024028C 8E020074 */  lw        $v0, 0x74($s0)
/* A51C10 80240290 24630001 */  addiu     $v1, $v1, 1
/* A51C14 80240294 AE030078 */  sw        $v1, 0x78($s0)
/* A51C18 80240298 8E030070 */  lw        $v1, 0x70($s0)
/* A51C1C 8024029C 24420001 */  addiu     $v0, $v0, 1
/* A51C20 802402A0 AE020074 */  sw        $v0, 0x74($s0)
/* A51C24 802402A4 8E02007C */  lw        $v0, 0x7c($s0)
/* A51C28 802402A8 0064182A */  slt       $v1, $v1, $a0
/* A51C2C 802402AC 24420001 */  addiu     $v0, $v0, 1
/* A51C30 802402B0 14600002 */  bnez      $v1, .L802402BC
/* A51C34 802402B4 AE02007C */   sw       $v0, 0x7c($s0)
/* A51C38 802402B8 AE000070 */  sw        $zero, 0x70($s0)
.L802402BC:
/* A51C3C 802402BC 8E020074 */  lw        $v0, 0x74($s0)
/* A51C40 802402C0 8E03009C */  lw        $v1, 0x9c($s0)
/* A51C44 802402C4 0043102A */  slt       $v0, $v0, $v1
/* A51C48 802402C8 50400001 */  beql      $v0, $zero, .L802402D0
/* A51C4C 802402CC AE000074 */   sw       $zero, 0x74($s0)
.L802402D0:
/* A51C50 802402D0 8E020078 */  lw        $v0, 0x78($s0)
/* A51C54 802402D4 8E0300A0 */  lw        $v1, 0xa0($s0)
/* A51C58 802402D8 0043102A */  slt       $v0, $v0, $v1
/* A51C5C 802402DC 50400001 */  beql      $v0, $zero, .L802402E4
/* A51C60 802402E0 AE000078 */   sw       $zero, 0x78($s0)
.L802402E4:
/* A51C64 802402E4 8E02007C */  lw        $v0, 0x7c($s0)
/* A51C68 802402E8 8E0300A4 */  lw        $v1, 0xa4($s0)
/* A51C6C 802402EC 0043102A */  slt       $v0, $v0, $v1
/* A51C70 802402F0 50400001 */  beql      $v0, $zero, .L802402F8
/* A51C74 802402F4 AE00007C */   sw       $zero, 0x7c($s0)
.L802402F8:
/* A51C78 802402F8 8FBF0014 */  lw        $ra, 0x14($sp)
/* A51C7C 802402FC 8FB00010 */  lw        $s0, 0x10($sp)
/* A51C80 80240300 0000102D */  daddu     $v0, $zero, $zero
/* A51C84 80240304 03E00008 */  jr        $ra
/* A51C88 80240308 27BD0018 */   addiu    $sp, $sp, 0x18
/* A51C8C 8024030C 00000000 */  nop       
