.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240124_AE56B4
/* AE56B4 80240124 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* AE56B8 80240128 AFB00010 */  sw        $s0, 0x10($sp)
/* AE56BC 8024012C 0080802D */  daddu     $s0, $a0, $zero
/* AE56C0 80240130 10A00005 */  beqz      $a1, .L80240148
/* AE56C4 80240134 AFBF0014 */   sw       $ra, 0x14($sp)
/* AE56C8 80240138 AE000070 */  sw        $zero, 0x70($s0)
/* AE56CC 8024013C AE000074 */  sw        $zero, 0x74($s0)
/* AE56D0 80240140 AE000078 */  sw        $zero, 0x78($s0)
/* AE56D4 80240144 AE00007C */  sw        $zero, 0x7c($s0)
.L80240148:
/* AE56D8 80240148 8E020070 */  lw        $v0, 0x70($s0)
/* AE56DC 8024014C 1440000E */  bnez      $v0, .L80240188
/* AE56E0 80240150 00000000 */   nop      
/* AE56E4 80240154 8E0300A8 */  lw        $v1, 0xa8($s0)
/* AE56E8 80240158 8E020088 */  lw        $v0, 0x88($s0)
/* AE56EC 8024015C 00621821 */  addu      $v1, $v1, $v0
/* AE56F0 80240160 04610004 */  bgez      $v1, .L80240174
/* AE56F4 80240164 AE0300A8 */   sw       $v1, 0xa8($s0)
/* AE56F8 80240168 3C020002 */  lui       $v0, 2
/* AE56FC 8024016C 08090061 */  j         .L80240184
/* AE5700 80240170 00621021 */   addu     $v0, $v1, $v0
.L80240174:
/* AE5704 80240174 3C040002 */  lui       $a0, 2
/* AE5708 80240178 0083102A */  slt       $v0, $a0, $v1
/* AE570C 8024017C 10400002 */  beqz      $v0, .L80240188
/* AE5710 80240180 00641023 */   subu     $v0, $v1, $a0
.L80240184:
/* AE5714 80240184 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240188:
/* AE5718 80240188 8E020074 */  lw        $v0, 0x74($s0)
/* AE571C 8024018C 1440000E */  bnez      $v0, .L802401C8
/* AE5720 80240190 00000000 */   nop      
/* AE5724 80240194 8E0300AC */  lw        $v1, 0xac($s0)
/* AE5728 80240198 8E02008C */  lw        $v0, 0x8c($s0)
/* AE572C 8024019C 00621821 */  addu      $v1, $v1, $v0
/* AE5730 802401A0 04610004 */  bgez      $v1, .L802401B4
/* AE5734 802401A4 AE0300AC */   sw       $v1, 0xac($s0)
/* AE5738 802401A8 3C020002 */  lui       $v0, 2
/* AE573C 802401AC 08090071 */  j         .L802401C4
/* AE5740 802401B0 00621021 */   addu     $v0, $v1, $v0
.L802401B4:
/* AE5744 802401B4 3C040002 */  lui       $a0, 2
/* AE5748 802401B8 0083102A */  slt       $v0, $a0, $v1
/* AE574C 802401BC 10400002 */  beqz      $v0, .L802401C8
/* AE5750 802401C0 00641023 */   subu     $v0, $v1, $a0
.L802401C4:
/* AE5754 802401C4 AE0200AC */  sw        $v0, 0xac($s0)
.L802401C8:
/* AE5758 802401C8 8E020078 */  lw        $v0, 0x78($s0)
/* AE575C 802401CC 1440000E */  bnez      $v0, .L80240208
/* AE5760 802401D0 00000000 */   nop      
/* AE5764 802401D4 8E0300B0 */  lw        $v1, 0xb0($s0)
/* AE5768 802401D8 8E020090 */  lw        $v0, 0x90($s0)
/* AE576C 802401DC 00621821 */  addu      $v1, $v1, $v0
/* AE5770 802401E0 04610004 */  bgez      $v1, .L802401F4
/* AE5774 802401E4 AE0300B0 */   sw       $v1, 0xb0($s0)
/* AE5778 802401E8 3C020002 */  lui       $v0, 2
/* AE577C 802401EC 08090081 */  j         .L80240204
/* AE5780 802401F0 00621021 */   addu     $v0, $v1, $v0
.L802401F4:
/* AE5784 802401F4 3C040002 */  lui       $a0, 2
/* AE5788 802401F8 0083102A */  slt       $v0, $a0, $v1
/* AE578C 802401FC 10400002 */  beqz      $v0, .L80240208
/* AE5790 80240200 00641023 */   subu     $v0, $v1, $a0
.L80240204:
/* AE5794 80240204 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80240208:
/* AE5798 80240208 8E02007C */  lw        $v0, 0x7c($s0)
/* AE579C 8024020C 1440000E */  bnez      $v0, .L80240248
/* AE57A0 80240210 00000000 */   nop      
/* AE57A4 80240214 8E0300B4 */  lw        $v1, 0xb4($s0)
/* AE57A8 80240218 8E020094 */  lw        $v0, 0x94($s0)
/* AE57AC 8024021C 00621821 */  addu      $v1, $v1, $v0
/* AE57B0 80240220 04610004 */  bgez      $v1, .L80240234
/* AE57B4 80240224 AE0300B4 */   sw       $v1, 0xb4($s0)
/* AE57B8 80240228 3C020002 */  lui       $v0, 2
/* AE57BC 8024022C 08090091 */  j         .L80240244
/* AE57C0 80240230 00621021 */   addu     $v0, $v1, $v0
.L80240234:
/* AE57C4 80240234 3C040002 */  lui       $a0, 2
/* AE57C8 80240238 0083102A */  slt       $v0, $a0, $v1
/* AE57CC 8024023C 10400002 */  beqz      $v0, .L80240248
/* AE57D0 80240240 00641023 */   subu     $v0, $v1, $a0
.L80240244:
/* AE57D4 80240244 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240248:
/* AE57D8 80240248 8E040084 */  lw        $a0, 0x84($s0)
/* AE57DC 8024024C 0C046F07 */  jal       set_main_pan_u
/* AE57E0 80240250 8E0500A8 */   lw       $a1, 0xa8($s0)
/* AE57E4 80240254 8E040084 */  lw        $a0, 0x84($s0)
/* AE57E8 80240258 0C046F0D */  jal       set_main_pan_v
/* AE57EC 8024025C 8E0500AC */   lw       $a1, 0xac($s0)
/* AE57F0 80240260 8E040084 */  lw        $a0, 0x84($s0)
/* AE57F4 80240264 0C046F13 */  jal       set_aux_pan_u
/* AE57F8 80240268 8E0500B0 */   lw       $a1, 0xb0($s0)
/* AE57FC 8024026C 8E040084 */  lw        $a0, 0x84($s0)
/* AE5800 80240270 0C046F19 */  jal       set_aux_pan_v
/* AE5804 80240274 8E0500B4 */   lw       $a1, 0xb4($s0)
/* AE5808 80240278 8E020070 */  lw        $v0, 0x70($s0)
/* AE580C 8024027C 8E030078 */  lw        $v1, 0x78($s0)
/* AE5810 80240280 8E040098 */  lw        $a0, 0x98($s0)
/* AE5814 80240284 24420001 */  addiu     $v0, $v0, 1
/* AE5818 80240288 AE020070 */  sw        $v0, 0x70($s0)
/* AE581C 8024028C 8E020074 */  lw        $v0, 0x74($s0)
/* AE5820 80240290 24630001 */  addiu     $v1, $v1, 1
/* AE5824 80240294 AE030078 */  sw        $v1, 0x78($s0)
/* AE5828 80240298 8E030070 */  lw        $v1, 0x70($s0)
/* AE582C 8024029C 24420001 */  addiu     $v0, $v0, 1
/* AE5830 802402A0 AE020074 */  sw        $v0, 0x74($s0)
/* AE5834 802402A4 8E02007C */  lw        $v0, 0x7c($s0)
/* AE5838 802402A8 0064182A */  slt       $v1, $v1, $a0
/* AE583C 802402AC 24420001 */  addiu     $v0, $v0, 1
/* AE5840 802402B0 14600002 */  bnez      $v1, .L802402BC
/* AE5844 802402B4 AE02007C */   sw       $v0, 0x7c($s0)
/* AE5848 802402B8 AE000070 */  sw        $zero, 0x70($s0)
.L802402BC:
/* AE584C 802402BC 8E020074 */  lw        $v0, 0x74($s0)
/* AE5850 802402C0 8E03009C */  lw        $v1, 0x9c($s0)
/* AE5854 802402C4 0043102A */  slt       $v0, $v0, $v1
/* AE5858 802402C8 50400001 */  beql      $v0, $zero, .L802402D0
/* AE585C 802402CC AE000074 */   sw       $zero, 0x74($s0)
.L802402D0:
/* AE5860 802402D0 8E020078 */  lw        $v0, 0x78($s0)
/* AE5864 802402D4 8E0300A0 */  lw        $v1, 0xa0($s0)
/* AE5868 802402D8 0043102A */  slt       $v0, $v0, $v1
/* AE586C 802402DC 50400001 */  beql      $v0, $zero, .L802402E4
/* AE5870 802402E0 AE000078 */   sw       $zero, 0x78($s0)
.L802402E4:
/* AE5874 802402E4 8E02007C */  lw        $v0, 0x7c($s0)
/* AE5878 802402E8 8E0300A4 */  lw        $v1, 0xa4($s0)
/* AE587C 802402EC 0043102A */  slt       $v0, $v0, $v1
/* AE5880 802402F0 50400001 */  beql      $v0, $zero, .L802402F8
/* AE5884 802402F4 AE00007C */   sw       $zero, 0x7c($s0)
.L802402F8:
/* AE5888 802402F8 8FBF0014 */  lw        $ra, 0x14($sp)
/* AE588C 802402FC 8FB00010 */  lw        $s0, 0x10($sp)
/* AE5890 80240300 0000102D */  daddu     $v0, $zero, $zero
/* AE5894 80240304 03E00008 */  jr        $ra
/* AE5898 80240308 27BD0018 */   addiu    $sp, $sp, 0x18
