.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802448A0
/* 805120 802448A0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 805124 802448A4 AFB00010 */  sw        $s0, 0x10($sp)
/* 805128 802448A8 0080802D */  daddu     $s0, $a0, $zero
/* 80512C 802448AC 10A0000A */  beqz      $a1, .L802448D8
/* 805130 802448B0 AFBF0014 */   sw       $ra, 0x14($sp)
/* 805134 802448B4 8E020084 */  lw        $v0, 0x84($s0)
/* 805138 802448B8 54400007 */  bnel      $v0, $zero, .L802448D8
/* 80513C 802448BC AE000070 */   sw       $zero, 0x70($s0)
/* 805140 802448C0 960400C2 */  lhu       $a0, 0xc2($s0)
/* 805144 802448C4 2405FFFF */  addiu     $a1, $zero, -1
/* 805148 802448C8 24060001 */  addiu     $a2, $zero, 1
/* 80514C 802448CC 0C046E54 */  jal       func_8011B950
/* 805150 802448D0 00C0382D */   daddu    $a3, $a2, $zero
/* 805154 802448D4 AE000070 */  sw        $zero, 0x70($s0)
.L802448D8:
/* 805158 802448D8 8E020070 */  lw        $v0, 0x70($s0)
/* 80515C 802448DC 24420020 */  addiu     $v0, $v0, 0x20
/* 805160 802448E0 AE020070 */  sw        $v0, 0x70($s0)
/* 805164 802448E4 28420100 */  slti      $v0, $v0, 0x100
/* 805168 802448E8 14400002 */  bnez      $v0, .L802448F4
/* 80516C 802448EC 240200FF */   addiu    $v0, $zero, 0xff
/* 805170 802448F0 AE020070 */  sw        $v0, 0x70($s0)
.L802448F4:
/* 805174 802448F4 8E020084 */  lw        $v0, 0x84($s0)
/* 805178 802448F8 14400004 */  bnez      $v0, .L8024490C
/* 80517C 802448FC 240200FF */   addiu    $v0, $zero, 0xff
/* 805180 80244900 8E020070 */  lw        $v0, 0x70($s0)
/* 805184 80244904 08091246 */  j         .L80244918
/* 805188 80244908 0000202D */   daddu    $a0, $zero, $zero
.L8024490C:
/* 80518C 8024490C 8E030070 */  lw        $v1, 0x70($s0)
/* 805190 80244910 00431023 */  subu      $v0, $v0, $v1
/* 805194 80244914 0000202D */  daddu     $a0, $zero, $zero
.L80244918:
/* 805198 80244918 0080282D */  daddu     $a1, $a0, $zero
/* 80519C 8024491C 0080302D */  daddu     $a2, $a0, $zero
/* 8051A0 80244920 0C046F97 */  jal       set_background_color_blend
/* 8051A4 80244924 304700FF */   andi     $a3, $v0, 0xff
/* 8051A8 80244928 3C02800B */  lui       $v0, %hi(gCameras)
/* 8051AC 8024492C 24421D80 */  addiu     $v0, $v0, %lo(gCameras)
/* 8051B0 80244930 A440002C */  sh        $zero, 0x2c($v0)
/* 8051B4 80244934 A440002E */  sh        $zero, 0x2e($v0)
/* 8051B8 80244938 A4400030 */  sh        $zero, 0x30($v0)
/* 8051BC 8024493C 8E020070 */  lw        $v0, 0x70($s0)
/* 8051C0 80244940 284200FF */  slti      $v0, $v0, 0xff
/* 8051C4 80244944 1440000B */  bnez      $v0, .L80244974
/* 8051C8 80244948 0000102D */   daddu    $v0, $zero, $zero
/* 8051CC 8024494C 8E030084 */  lw        $v1, 0x84($s0)
/* 8051D0 80244950 24020003 */  addiu     $v0, $zero, 3
/* 8051D4 80244954 14620007 */  bne       $v1, $v0, .L80244974
/* 8051D8 80244958 24020002 */   addiu    $v0, $zero, 2
/* 8051DC 8024495C 960400C2 */  lhu       $a0, 0xc2($s0)
/* 8051E0 80244960 2405FFFF */  addiu     $a1, $zero, -1
/* 8051E4 80244964 0000302D */  daddu     $a2, $zero, $zero
/* 8051E8 80244968 0C046E54 */  jal       func_8011B950
/* 8051EC 8024496C 24070001 */   addiu    $a3, $zero, 1
/* 8051F0 80244970 24020002 */  addiu     $v0, $zero, 2
.L80244974:
/* 8051F4 80244974 8FBF0014 */  lw        $ra, 0x14($sp)
/* 8051F8 80244978 8FB00010 */  lw        $s0, 0x10($sp)
/* 8051FC 8024497C 03E00008 */  jr        $ra
/* 805200 80244980 27BD0018 */   addiu    $sp, $sp, 0x18
