.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240848
/* CD7B28 80240848 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* CD7B2C 8024084C AFB3001C */  sw        $s3, 0x1c($sp)
/* CD7B30 80240850 0080982D */  daddu     $s3, $a0, $zero
/* CD7B34 80240854 AFBF0020 */  sw        $ra, 0x20($sp)
/* CD7B38 80240858 AFB20018 */  sw        $s2, 0x18($sp)
/* CD7B3C 8024085C AFB10014 */  sw        $s1, 0x14($sp)
/* CD7B40 80240860 AFB00010 */  sw        $s0, 0x10($sp)
/* CD7B44 80240864 8E720148 */  lw        $s2, 0x148($s3)
/* CD7B48 80240868 86440008 */  lh        $a0, 8($s2)
/* CD7B4C 8024086C 0C00EABB */  jal       get_npc_unsafe
/* CD7B50 80240870 00A0882D */   daddu    $s1, $a1, $zero
/* CD7B54 80240874 8E240008 */  lw        $a0, 8($s1)
/* CD7B58 80240878 0040802D */  daddu     $s0, $v0, $zero
/* CD7B5C 8024087C 00041FC2 */  srl       $v1, $a0, 0x1f
/* CD7B60 80240880 00832021 */  addu      $a0, $a0, $v1
/* CD7B64 80240884 00042043 */  sra       $a0, $a0, 1
/* CD7B68 80240888 0C00A67F */  jal       rand_int
/* CD7B6C 8024088C 24840001 */   addiu    $a0, $a0, 1
/* CD7B70 80240890 8E230008 */  lw        $v1, 8($s1)
/* CD7B74 80240894 240400B4 */  addiu     $a0, $zero, 0xb4
/* CD7B78 80240898 00032FC2 */  srl       $a1, $v1, 0x1f
/* CD7B7C 8024089C 00651821 */  addu      $v1, $v1, $a1
/* CD7B80 802408A0 00031843 */  sra       $v1, $v1, 1
/* CD7B84 802408A4 00621821 */  addu      $v1, $v1, $v0
/* CD7B88 802408A8 0C00A67F */  jal       rand_int
/* CD7B8C 802408AC A603008E */   sh       $v1, 0x8e($s0)
/* CD7B90 802408B0 C60C000C */  lwc1      $f12, 0xc($s0)
/* CD7B94 802408B4 44820000 */  mtc1      $v0, $f0
/* CD7B98 802408B8 00000000 */  nop       
/* CD7B9C 802408BC 46800020 */  cvt.s.w   $f0, $f0
/* CD7BA0 802408C0 46006300 */  add.s     $f12, $f12, $f0
/* CD7BA4 802408C4 3C0142B4 */  lui       $at, 0x42b4
/* CD7BA8 802408C8 44810000 */  mtc1      $at, $f0
/* CD7BAC 802408CC 0C00A6C9 */  jal       clamp_angle
/* CD7BB0 802408D0 46006301 */   sub.s    $f12, $f12, $f0
/* CD7BB4 802408D4 E600000C */  swc1      $f0, 0xc($s0)
/* CD7BB8 802408D8 8E4200CC */  lw        $v0, 0xcc($s2)
/* CD7BBC 802408DC 8C420000 */  lw        $v0, ($v0)
/* CD7BC0 802408E0 AE020028 */  sw        $v0, 0x28($s0)
/* CD7BC4 802408E4 24020003 */  addiu     $v0, $zero, 3
/* CD7BC8 802408E8 AE620070 */  sw        $v0, 0x70($s3)
/* CD7BCC 802408EC 8FBF0020 */  lw        $ra, 0x20($sp)
/* CD7BD0 802408F0 8FB3001C */  lw        $s3, 0x1c($sp)
/* CD7BD4 802408F4 8FB20018 */  lw        $s2, 0x18($sp)
/* CD7BD8 802408F8 8FB10014 */  lw        $s1, 0x14($sp)
/* CD7BDC 802408FC 8FB00010 */  lw        $s0, 0x10($sp)
/* CD7BE0 80240900 03E00008 */  jr        $ra
/* CD7BE4 80240904 27BD0028 */   addiu    $sp, $sp, 0x28
