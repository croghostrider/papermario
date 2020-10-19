.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240BFC
/* A16E1C 80240BFC 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* A16E20 80240C00 24040003 */  addiu     $a0, $zero, 3
/* A16E24 80240C04 27A50010 */  addiu     $a1, $sp, 0x10
/* A16E28 80240C08 27A60014 */  addiu     $a2, $sp, 0x14
/* A16E2C 80240C0C AFBF0034 */  sw        $ra, 0x34($sp)
/* A16E30 80240C10 AFB40030 */  sw        $s4, 0x30($sp)
/* A16E34 80240C14 AFB3002C */  sw        $s3, 0x2c($sp)
/* A16E38 80240C18 AFB20028 */  sw        $s2, 0x28($sp)
/* A16E3C 80240C1C AFB10024 */  sw        $s1, 0x24($sp)
/* A16E40 80240C20 AFB00020 */  sw        $s0, 0x20($sp)
/* A16E44 80240C24 F7B40038 */  sdc1      $f20, 0x38($sp)
/* A16E48 80240C28 0C0470AC */  jal       func_8011C2B0
/* A16E4C 80240C2C 27A70018 */   addiu    $a3, $sp, 0x18
/* A16E50 80240C30 8FA20018 */  lw        $v0, 0x18($sp)
/* A16E54 80240C34 18400096 */  blez      $v0, .L80240E90
/* A16E58 80240C38 0000802D */   daddu    $s0, $zero, $zero
/* A16E5C 80240C3C 3C125555 */  lui       $s2, 0x5555
/* A16E60 80240C40 36525556 */  ori       $s2, $s2, 0x5556
/* A16E64 80240C44 34148000 */  ori       $s4, $zero, 0x8000
/* A16E68 80240C48 3C0141E0 */  lui       $at, 0x41e0
/* A16E6C 80240C4C 4481A800 */  mtc1      $at, $f21
/* A16E70 80240C50 4480A000 */  mtc1      $zero, $f20
/* A16E74 80240C54 3C138000 */  lui       $s3, 0x8000
/* A16E78 80240C58 02120018 */  mult      $s0, $s2
.L80240C5C:
/* A16E7C 80240C5C 00101FC3 */  sra       $v1, $s0, 0x1f
/* A16E80 80240C60 00004810 */  mfhi      $t1
/* A16E84 80240C64 01231823 */  subu      $v1, $t1, $v1
/* A16E88 80240C68 00031040 */  sll       $v0, $v1, 1
/* A16E8C 80240C6C 00431021 */  addu      $v0, $v0, $v1
/* A16E90 80240C70 02021023 */  subu      $v0, $s0, $v0
/* A16E94 80240C74 3C038024 */  lui       $v1, 0x8024
/* A16E98 80240C78 946333B4 */  lhu       $v1, 0x33b4($v1)
/* A16E9C 80240C7C 24420001 */  addiu     $v0, $v0, 1
/* A16EA0 80240C80 00620018 */  mult      $v1, $v0
/* A16EA4 80240C84 8FA20014 */  lw        $v0, 0x14($sp)
/* A16EA8 80240C88 00001812 */  mflo      $v1
/* A16EAC 80240C8C 00702021 */  addu      $a0, $v1, $s0
/* A16EB0 80240C90 3084FFFF */  andi      $a0, $a0, 0xffff
/* A16EB4 80240C94 00101900 */  sll       $v1, $s0, 4
/* A16EB8 80240C98 00431021 */  addu      $v0, $v0, $v1
/* A16EBC 80240C9C 0C01917C */  jal       sins
/* A16EC0 80240CA0 2451000C */   addiu    $s1, $v0, 0xc
/* A16EC4 80240CA4 00021400 */  sll       $v0, $v0, 0x10
/* A16EC8 80240CA8 00021403 */  sra       $v0, $v0, 0x10
/* A16ECC 80240CAC 00541021 */  addu      $v0, $v0, $s4
/* A16ED0 80240CB0 00021FC2 */  srl       $v1, $v0, 0x1f
/* A16ED4 80240CB4 00431021 */  addu      $v0, $v0, $v1
/* A16ED8 80240CB8 00021043 */  sra       $v0, $v0, 1
/* A16EDC 80240CBC 00021C00 */  sll       $v1, $v0, 0x10
/* A16EE0 80240CC0 00031C03 */  sra       $v1, $v1, 0x10
/* A16EE4 80240CC4 00032080 */  sll       $a0, $v1, 2
/* A16EE8 80240CC8 00832021 */  addu      $a0, $a0, $v1
/* A16EEC 80240CCC 00041940 */  sll       $v1, $a0, 5
/* A16EF0 80240CD0 00641823 */  subu      $v1, $v1, $a0
/* A16EF4 80240CD4 04610002 */  bgez      $v1, .L80240CE0
/* A16EF8 80240CD8 0040202D */   daddu    $a0, $v0, $zero
/* A16EFC 80240CDC 24637FFF */  addiu     $v1, $v1, 0x7fff
.L80240CE0:
/* A16F00 80240CE0 000313C3 */  sra       $v0, $v1, 0xf
/* A16F04 80240CE4 3C014059 */  lui       $at, 0x4059
/* A16F08 80240CE8 44811800 */  mtc1      $at, $f3
/* A16F0C 80240CEC 44801000 */  mtc1      $zero, $f2
/* A16F10 80240CF0 44820000 */  mtc1      $v0, $f0
/* A16F14 80240CF4 00000000 */  nop       
/* A16F18 80240CF8 46800021 */  cvt.d.w   $f0, $f0
/* A16F1C 80240CFC 46220000 */  add.d     $f0, $f0, $f2
/* A16F20 80240D00 4620A03E */  c.le.d    $f20, $f0
/* A16F24 80240D04 00000000 */  nop       
/* A16F28 80240D08 45030005 */  bc1tl     .L80240D20
/* A16F2C 80240D0C 46340001 */   sub.d    $f0, $f0, $f20
/* A16F30 80240D10 4620010D */  trunc.w.d $f4, $f0
/* A16F34 80240D14 44022000 */  mfc1      $v0, $f4
/* A16F38 80240D18 0809034D */  j         .L80240D34
/* A16F3C 80240D1C A2220000 */   sb       $v0, ($s1)
.L80240D20:
/* A16F40 80240D20 4620010D */  trunc.w.d $f4, $f0
/* A16F44 80240D24 44022000 */  mfc1      $v0, $f4
/* A16F48 80240D28 00000000 */  nop       
/* A16F4C 80240D2C 00531025 */  or        $v0, $v0, $s3
/* A16F50 80240D30 A2220000 */  sb        $v0, ($s1)
.L80240D34:
/* A16F54 80240D34 00041400 */  sll       $v0, $a0, 0x10
/* A16F58 80240D38 00021403 */  sra       $v0, $v0, 0x10
/* A16F5C 80240D3C 00021880 */  sll       $v1, $v0, 2
/* A16F60 80240D40 00621821 */  addu      $v1, $v1, $v0
/* A16F64 80240D44 00031140 */  sll       $v0, $v1, 5
/* A16F68 80240D48 00431023 */  subu      $v0, $v0, $v1
/* A16F6C 80240D4C 04410002 */  bgez      $v0, .L80240D58
/* A16F70 80240D50 26230001 */   addiu    $v1, $s1, 1
/* A16F74 80240D54 24427FFF */  addiu     $v0, $v0, 0x7fff
.L80240D58:
/* A16F78 80240D58 000213C3 */  sra       $v0, $v0, 0xf
/* A16F7C 80240D5C 3C018024 */  lui       $at, 0x8024
/* A16F80 80240D60 D4224E10 */  ldc1      $f2, 0x4e10($at)
/* A16F84 80240D64 44820000 */  mtc1      $v0, $f0
/* A16F88 80240D68 00000000 */  nop       
/* A16F8C 80240D6C 46800021 */  cvt.d.w   $f0, $f0
/* A16F90 80240D70 46220000 */  add.d     $f0, $f0, $f2
/* A16F94 80240D74 4620A03E */  c.le.d    $f20, $f0
/* A16F98 80240D78 00000000 */  nop       
/* A16F9C 80240D7C 45030005 */  bc1tl     .L80240D94
/* A16FA0 80240D80 46340001 */   sub.d    $f0, $f0, $f20
/* A16FA4 80240D84 4620010D */  trunc.w.d $f4, $f0
/* A16FA8 80240D88 44022000 */  mfc1      $v0, $f4
/* A16FAC 80240D8C 0809036A */  j         .L80240DA8
/* A16FB0 80240D90 A0620000 */   sb       $v0, ($v1)
.L80240D94:
/* A16FB4 80240D94 4620010D */  trunc.w.d $f4, $f0
/* A16FB8 80240D98 44022000 */  mfc1      $v0, $f4
/* A16FBC 80240D9C 00000000 */  nop       
/* A16FC0 80240DA0 00531025 */  or        $v0, $v0, $s3
/* A16FC4 80240DA4 A0620000 */  sb        $v0, ($v1)
.L80240DA8:
/* A16FC8 80240DA8 00101FC2 */  srl       $v1, $s0, 0x1f
/* A16FCC 80240DAC 02031821 */  addu      $v1, $s0, $v1
/* A16FD0 80240DB0 00032843 */  sra       $a1, $v1, 1
/* A16FD4 80240DB4 00B20018 */  mult      $a1, $s2
/* A16FD8 80240DB8 3C048024 */  lui       $a0, 0x8024
/* A16FDC 80240DBC 948433B4 */  lhu       $a0, 0x33b4($a0)
/* A16FE0 80240DC0 00031FC3 */  sra       $v1, $v1, 0x1f
/* A16FE4 80240DC4 000433C2 */  srl       $a2, $a0, 0xf
/* A16FE8 80240DC8 00004810 */  mfhi      $t1
/* A16FEC 80240DCC 01231823 */  subu      $v1, $t1, $v1
/* A16FF0 80240DD0 00031040 */  sll       $v0, $v1, 1
/* A16FF4 80240DD4 00431021 */  addu      $v0, $v0, $v1
/* A16FF8 80240DD8 00A22823 */  subu      $a1, $a1, $v0
/* A16FFC 80240DDC 24A50001 */  addiu     $a1, $a1, 1
/* A17000 80240DE0 00052BC0 */  sll       $a1, $a1, 0xf
/* A17004 80240DE4 00C50018 */  mult      $a2, $a1
/* A17008 80240DE8 00042382 */  srl       $a0, $a0, 0xe
/* A1700C 80240DEC 000423C0 */  sll       $a0, $a0, 0xf
/* A17010 80240DF0 00001812 */  mflo      $v1
/* A17014 80240DF4 00642021 */  addu      $a0, $v1, $a0
/* A17018 80240DF8 00902021 */  addu      $a0, $a0, $s0
/* A1701C 80240DFC 0C01917C */  jal       sins
/* A17020 80240E00 3084FFFF */   andi     $a0, $a0, 0xffff
/* A17024 80240E04 00021400 */  sll       $v0, $v0, 0x10
/* A17028 80240E08 00021403 */  sra       $v0, $v0, 0x10
/* A1702C 80240E0C 92230000 */  lbu       $v1, ($s1)
/* A17030 80240E10 00541021 */  addu      $v0, $v0, $s4
/* A17034 80240E14 00620018 */  mult      $v1, $v0
/* A17038 80240E18 00001812 */  mflo      $v1
/* A1703C 80240E1C 04610003 */  bgez      $v1, .L80240E2C
/* A17040 80240E20 26240002 */   addiu    $a0, $s1, 2
/* A17044 80240E24 3402FFFF */  ori       $v0, $zero, 0xffff
/* A17048 80240E28 00621821 */  addu      $v1, $v1, $v0
.L80240E2C:
/* A1704C 80240E2C 00031403 */  sra       $v0, $v1, 0x10
/* A17050 80240E30 3C018024 */  lui       $at, 0x8024
/* A17054 80240E34 D4224E18 */  ldc1      $f2, 0x4e18($at)
/* A17058 80240E38 44820000 */  mtc1      $v0, $f0
/* A1705C 80240E3C 00000000 */  nop       
/* A17060 80240E40 46800021 */  cvt.d.w   $f0, $f0
/* A17064 80240E44 46220000 */  add.d     $f0, $f0, $f2
/* A17068 80240E48 4620A03E */  c.le.d    $f20, $f0
/* A1706C 80240E4C 00000000 */  nop       
/* A17070 80240E50 45030005 */  bc1tl     .L80240E68
/* A17074 80240E54 46340001 */   sub.d    $f0, $f0, $f20
/* A17078 80240E58 4620010D */  trunc.w.d $f4, $f0
/* A1707C 80240E5C 44022000 */  mfc1      $v0, $f4
/* A17080 80240E60 0809039F */  j         .L80240E7C
/* A17084 80240E64 A0820000 */   sb       $v0, ($a0)
.L80240E68:
/* A17088 80240E68 4620010D */  trunc.w.d $f4, $f0
/* A1708C 80240E6C 44022000 */  mfc1      $v0, $f4
/* A17090 80240E70 00000000 */  nop       
/* A17094 80240E74 00531025 */  or        $v0, $v0, $s3
/* A17098 80240E78 A0820000 */  sb        $v0, ($a0)
.L80240E7C:
/* A1709C 80240E7C 8FA20018 */  lw        $v0, 0x18($sp)
/* A170A0 80240E80 26100001 */  addiu     $s0, $s0, 1
/* A170A4 80240E84 0202102A */  slt       $v0, $s0, $v0
/* A170A8 80240E88 1440FF74 */  bnez      $v0, .L80240C5C
/* A170AC 80240E8C 02120018 */   mult     $s0, $s2
.L80240E90:
/* A170B0 80240E90 3C03800A */  lui       $v1, 0x800a
/* A170B4 80240E94 2463A66C */  addiu     $v1, $v1, -0x5994
/* A170B8 80240E98 8C620000 */  lw        $v0, ($v1)
/* A170BC 80240E9C 24040003 */  addiu     $a0, $zero, 3
/* A170C0 80240EA0 0040802D */  daddu     $s0, $v0, $zero
/* A170C4 80240EA4 24420008 */  addiu     $v0, $v0, 8
/* A170C8 80240EA8 AC620000 */  sw        $v0, ($v1)
/* A170CC 80240EAC 3C02DE00 */  lui       $v0, 0xde00
/* A170D0 80240EB0 0C0470BB */  jal       func_8011C2EC
/* A170D4 80240EB4 AE020000 */   sw       $v0, ($s0)
/* A170D8 80240EB8 3C048024 */  lui       $a0, 0x8024
/* A170DC 80240EBC 248433B4 */  addiu     $a0, $a0, 0x33b4
/* A170E0 80240EC0 94830000 */  lhu       $v1, ($a0)
/* A170E4 80240EC4 AE020004 */  sw        $v0, 4($s0)
/* A170E8 80240EC8 24630253 */  addiu     $v1, $v1, 0x253
/* A170EC 80240ECC A4830000 */  sh        $v1, ($a0)
/* A170F0 80240ED0 8FBF0034 */  lw        $ra, 0x34($sp)
/* A170F4 80240ED4 8FB40030 */  lw        $s4, 0x30($sp)
/* A170F8 80240ED8 8FB3002C */  lw        $s3, 0x2c($sp)
/* A170FC 80240EDC 8FB20028 */  lw        $s2, 0x28($sp)
/* A17100 80240EE0 8FB10024 */  lw        $s1, 0x24($sp)
/* A17104 80240EE4 8FB00020 */  lw        $s0, 0x20($sp)
/* A17108 80240EE8 D7B40038 */  ldc1      $f20, 0x38($sp)
/* A1710C 80240EEC 03E00008 */  jr        $ra
/* A17110 80240EF0 27BD0040 */   addiu    $sp, $sp, 0x40
