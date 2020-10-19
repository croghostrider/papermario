.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240A64
/* 8A64E4 80240A64 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 8A64E8 80240A68 AFB3005C */  sw        $s3, 0x5c($sp)
/* 8A64EC 80240A6C 0080982D */  daddu     $s3, $a0, $zero
/* 8A64F0 80240A70 AFBF0068 */  sw        $ra, 0x68($sp)
/* 8A64F4 80240A74 AFB50064 */  sw        $s5, 0x64($sp)
/* 8A64F8 80240A78 AFB40060 */  sw        $s4, 0x60($sp)
/* 8A64FC 80240A7C AFB20058 */  sw        $s2, 0x58($sp)
/* 8A6500 80240A80 AFB10054 */  sw        $s1, 0x54($sp)
/* 8A6504 80240A84 AFB00050 */  sw        $s0, 0x50($sp)
/* 8A6508 80240A88 8E710148 */  lw        $s1, 0x148($s3)
/* 8A650C 80240A8C 86240008 */  lh        $a0, 8($s1)
/* 8A6510 80240A90 0C00EABB */  jal       get_npc_unsafe
/* 8A6514 80240A94 00A0802D */   daddu    $s0, $a1, $zero
/* 8A6518 80240A98 8E63000C */  lw        $v1, 0xc($s3)
/* 8A651C 80240A9C 0260202D */  daddu     $a0, $s3, $zero
/* 8A6520 80240AA0 8C650000 */  lw        $a1, ($v1)
/* 8A6524 80240AA4 0C0B1EAF */  jal       get_variable
/* 8A6528 80240AA8 0040902D */   daddu    $s2, $v0, $zero
/* 8A652C 80240AAC AFA00028 */  sw        $zero, 0x28($sp)
/* 8A6530 80240AB0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8A6534 80240AB4 8C630030 */  lw        $v1, 0x30($v1)
/* 8A6538 80240AB8 AFA3002C */  sw        $v1, 0x2c($sp)
/* 8A653C 80240ABC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8A6540 80240AC0 8C63001C */  lw        $v1, 0x1c($v1)
/* 8A6544 80240AC4 AFA30030 */  sw        $v1, 0x30($sp)
/* 8A6548 80240AC8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8A654C 80240ACC 8C630024 */  lw        $v1, 0x24($v1)
/* 8A6550 80240AD0 AFA30034 */  sw        $v1, 0x34($sp)
/* 8A6554 80240AD4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8A6558 80240AD8 8C630028 */  lw        $v1, 0x28($v1)
/* 8A655C 80240ADC 27B50028 */  addiu     $s5, $sp, 0x28
/* 8A6560 80240AE0 AFA30038 */  sw        $v1, 0x38($sp)
/* 8A6564 80240AE4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8A6568 80240AE8 3C0142C8 */  lui       $at, 0x42c8
/* 8A656C 80240AEC 44810000 */  mtc1      $at, $f0
/* 8A6570 80240AF0 8C63002C */  lw        $v1, 0x2c($v1)
/* 8A6574 80240AF4 0040A02D */  daddu     $s4, $v0, $zero
/* 8A6578 80240AF8 E7A00040 */  swc1      $f0, 0x40($sp)
/* 8A657C 80240AFC A7A00044 */  sh        $zero, 0x44($sp)
/* 8A6580 80240B00 12000009 */  beqz      $s0, .L80240B28
/* 8A6584 80240B04 AFA3003C */   sw       $v1, 0x3c($sp)
/* 8A6588 80240B08 864300A8 */  lh        $v1, 0xa8($s2)
/* 8A658C 80240B0C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 8A6590 80240B10 AE20008C */  sw        $zero, 0x8c($s1)
/* 8A6594 80240B14 A22000B5 */  sb        $zero, 0xb5($s1)
/* 8A6598 80240B18 34420008 */  ori       $v0, $v0, 8
/* 8A659C 80240B1C AE230084 */  sw        $v1, 0x84($s1)
/* 8A65A0 80240B20 080902CE */  j         .L80240B38
/* 8A65A4 80240B24 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240B28:
/* 8A65A8 80240B28 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 8A65AC 80240B2C 30420004 */  andi      $v0, $v0, 4
/* 8A65B0 80240B30 10400047 */  beqz      $v0, .L80240C50
/* 8A65B4 80240B34 00000000 */   nop      
.L80240B38:
/* 8A65B8 80240B38 AE600070 */  sw        $zero, 0x70($s3)
/* 8A65BC 80240B3C A640008E */  sh        $zero, 0x8e($s2)
/* 8A65C0 80240B40 8E2300CC */  lw        $v1, 0xcc($s1)
/* 8A65C4 80240B44 2404F7FF */  addiu     $a0, $zero, -0x801
/* 8A65C8 80240B48 A2200007 */  sb        $zero, 7($s1)
/* 8A65CC 80240B4C 8E420000 */  lw        $v0, ($s2)
/* 8A65D0 80240B50 8C630000 */  lw        $v1, ($v1)
/* 8A65D4 80240B54 00441024 */  and       $v0, $v0, $a0
/* 8A65D8 80240B58 AE420000 */  sw        $v0, ($s2)
/* 8A65DC 80240B5C AE430028 */  sw        $v1, 0x28($s2)
/* 8A65E0 80240B60 96220086 */  lhu       $v0, 0x86($s1)
/* 8A65E4 80240B64 A64200A8 */  sh        $v0, 0xa8($s2)
/* 8A65E8 80240B68 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 8A65EC 80240B6C AE200090 */  sw        $zero, 0x90($s1)
/* 8A65F0 80240B70 8C420034 */  lw        $v0, 0x34($v0)
/* 8A65F4 80240B74 14400006 */  bnez      $v0, .L80240B90
/* 8A65F8 80240B78 2403FDFF */   addiu    $v1, $zero, -0x201
/* 8A65FC 80240B7C 8E420000 */  lw        $v0, ($s2)
/* 8A6600 80240B80 2403FFF7 */  addiu     $v1, $zero, -9
/* 8A6604 80240B84 34420200 */  ori       $v0, $v0, 0x200
/* 8A6608 80240B88 080902E7 */  j         .L80240B9C
/* 8A660C 80240B8C 00431024 */   and      $v0, $v0, $v1
.L80240B90:
/* 8A6610 80240B90 8E420000 */  lw        $v0, ($s2)
/* 8A6614 80240B94 00431024 */  and       $v0, $v0, $v1
/* 8A6618 80240B98 34420008 */  ori       $v0, $v0, 8
.L80240B9C:
/* 8A661C 80240B9C AE420000 */  sw        $v0, ($s2)
/* 8A6620 80240BA0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 8A6624 80240BA4 30420004 */  andi      $v0, $v0, 4
/* 8A6628 80240BA8 1040001E */  beqz      $v0, .L80240C24
/* 8A662C 80240BAC 24040002 */   addiu    $a0, $zero, 2
/* 8A6630 80240BB0 0240282D */  daddu     $a1, $s2, $zero
/* 8A6634 80240BB4 0000302D */  daddu     $a2, $zero, $zero
/* 8A6638 80240BB8 24020063 */  addiu     $v0, $zero, 0x63
/* 8A663C 80240BBC AE620070 */  sw        $v0, 0x70($s3)
/* 8A6640 80240BC0 AE600074 */  sw        $zero, 0x74($s3)
/* 8A6644 80240BC4 864300A8 */  lh        $v1, 0xa8($s2)
/* 8A6648 80240BC8 3C013F80 */  lui       $at, 0x3f80
/* 8A664C 80240BCC 44810000 */  mtc1      $at, $f0
/* 8A6650 80240BD0 3C014000 */  lui       $at, 0x4000
/* 8A6654 80240BD4 44811000 */  mtc1      $at, $f2
/* 8A6658 80240BD8 3C01C1A0 */  lui       $at, 0xc1a0
/* 8A665C 80240BDC 44812000 */  mtc1      $at, $f4
/* 8A6660 80240BE0 24020028 */  addiu     $v0, $zero, 0x28
/* 8A6664 80240BE4 AFA2001C */  sw        $v0, 0x1c($sp)
/* 8A6668 80240BE8 44833000 */  mtc1      $v1, $f6
/* 8A666C 80240BEC 00000000 */  nop       
/* 8A6670 80240BF0 468031A0 */  cvt.s.w   $f6, $f6
/* 8A6674 80240BF4 44073000 */  mfc1      $a3, $f6
/* 8A6678 80240BF8 27A20048 */  addiu     $v0, $sp, 0x48
/* 8A667C 80240BFC AFA20020 */  sw        $v0, 0x20($sp)
/* 8A6680 80240C00 E7A00010 */  swc1      $f0, 0x10($sp)
/* 8A6684 80240C04 E7A20014 */  swc1      $f2, 0x14($sp)
/* 8A6688 80240C08 0C01BFA4 */  jal       fx_emote
/* 8A668C 80240C0C E7A40018 */   swc1     $f4, 0x18($sp)
/* 8A6690 80240C10 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 8A6694 80240C14 2403FFFB */  addiu     $v1, $zero, -5
/* 8A6698 80240C18 00431024 */  and       $v0, $v0, $v1
/* 8A669C 80240C1C 08090314 */  j         .L80240C50
/* 8A66A0 80240C20 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240C24:
/* 8A66A4 80240C24 8E220000 */  lw        $v0, ($s1)
/* 8A66A8 80240C28 3C034000 */  lui       $v1, 0x4000
/* 8A66AC 80240C2C 00431024 */  and       $v0, $v0, $v1
/* 8A66B0 80240C30 10400007 */  beqz      $v0, .L80240C50
/* 8A66B4 80240C34 3C03BFFF */   lui      $v1, 0xbfff
/* 8A66B8 80240C38 2402000C */  addiu     $v0, $zero, 0xc
/* 8A66BC 80240C3C AE620070 */  sw        $v0, 0x70($s3)
/* 8A66C0 80240C40 8E220000 */  lw        $v0, ($s1)
/* 8A66C4 80240C44 3463FFFF */  ori       $v1, $v1, 0xffff
/* 8A66C8 80240C48 00431024 */  and       $v0, $v0, $v1
/* 8A66CC 80240C4C AE220000 */  sw        $v0, ($s1)
.L80240C50:
/* 8A66D0 80240C50 8E220090 */  lw        $v0, 0x90($s1)
/* 8A66D4 80240C54 1840000C */  blez      $v0, .L80240C88
/* 8A66D8 80240C58 2442FFFF */   addiu    $v0, $v0, -1
/* 8A66DC 80240C5C 14400087 */  bnez      $v0, .L80240E7C
/* 8A66E0 80240C60 AE220090 */   sw       $v0, 0x90($s1)
/* 8A66E4 80240C64 3C03FFAA */  lui       $v1, 0xffaa
/* 8A66E8 80240C68 8E420028 */  lw        $v0, 0x28($s2)
/* 8A66EC 80240C6C 3463FFD2 */  ori       $v1, $v1, 0xffd2
/* 8A66F0 80240C70 00431021 */  addu      $v0, $v0, $v1
/* 8A66F4 80240C74 2C420002 */  sltiu     $v0, $v0, 2
/* 8A66F8 80240C78 10400003 */  beqz      $v0, .L80240C88
/* 8A66FC 80240C7C 3C020055 */   lui      $v0, 0x55
/* 8A6700 80240C80 3442000C */  ori       $v0, $v0, 0xc
/* 8A6704 80240C84 AE420028 */  sw        $v0, 0x28($s2)
.L80240C88:
/* 8A6708 80240C88 8E630070 */  lw        $v1, 0x70($s3)
/* 8A670C 80240C8C 2402000C */  addiu     $v0, $zero, 0xc
/* 8A6710 80240C90 10620048 */  beq       $v1, $v0, .L80240DB4
/* 8A6714 80240C94 2862000D */   slti     $v0, $v1, 0xd
/* 8A6718 80240C98 1040000F */  beqz      $v0, .L80240CD8
/* 8A671C 80240C9C 24100001 */   addiu    $s0, $zero, 1
/* 8A6720 80240CA0 1070001E */  beq       $v1, $s0, .L80240D1C
/* 8A6724 80240CA4 28620002 */   slti     $v0, $v1, 2
/* 8A6728 80240CA8 10400005 */  beqz      $v0, .L80240CC0
/* 8A672C 80240CAC 24020002 */   addiu    $v0, $zero, 2
/* 8A6730 80240CB0 10600015 */  beqz      $v1, .L80240D08
/* 8A6734 80240CB4 0260202D */   daddu    $a0, $s3, $zero
/* 8A6738 80240CB8 08090384 */  j         .L80240E10
/* 8A673C 80240CBC 00000000 */   nop      
.L80240CC0:
/* 8A6740 80240CC0 1062001C */  beq       $v1, $v0, .L80240D34
/* 8A6744 80240CC4 24020003 */   addiu    $v0, $zero, 3
/* 8A6748 80240CC8 10620035 */  beq       $v1, $v0, .L80240DA0
/* 8A674C 80240CCC 0260202D */   daddu    $a0, $s3, $zero
/* 8A6750 80240CD0 08090384 */  j         .L80240E10
/* 8A6754 80240CD4 00000000 */   nop      
.L80240CD8:
/* 8A6758 80240CD8 2402000E */  addiu     $v0, $zero, 0xe
/* 8A675C 80240CDC 1062003F */  beq       $v1, $v0, .L80240DDC
/* 8A6760 80240CE0 0062102A */   slt      $v0, $v1, $v0
/* 8A6764 80240CE4 14400038 */  bnez      $v0, .L80240DC8
/* 8A6768 80240CE8 0260202D */   daddu    $a0, $s3, $zero
/* 8A676C 80240CEC 2402000F */  addiu     $v0, $zero, 0xf
/* 8A6770 80240CF0 10620040 */  beq       $v1, $v0, .L80240DF4
/* 8A6774 80240CF4 24020063 */   addiu    $v0, $zero, 0x63
/* 8A6778 80240CF8 10620043 */  beq       $v1, $v0, .L80240E08
/* 8A677C 80240CFC 00000000 */   nop      
/* 8A6780 80240D00 08090384 */  j         .L80240E10
/* 8A6784 80240D04 00000000 */   nop      
.L80240D08:
/* 8A6788 80240D08 0280282D */  daddu     $a1, $s4, $zero
/* 8A678C 80240D0C 0C012568 */  jal       func_800495A0
/* 8A6790 80240D10 02A0302D */   daddu    $a2, $s5, $zero
/* 8A6794 80240D14 96220086 */  lhu       $v0, 0x86($s1)
/* 8A6798 80240D18 A64200A8 */  sh        $v0, 0xa8($s2)
.L80240D1C:
/* 8A679C 80240D1C 0260202D */  daddu     $a0, $s3, $zero
/* 8A67A0 80240D20 0280282D */  daddu     $a1, $s4, $zero
/* 8A67A4 80240D24 0C0125AE */  jal       func_800496B8
/* 8A67A8 80240D28 02A0302D */   daddu    $a2, $s5, $zero
/* 8A67AC 80240D2C 08090384 */  j         .L80240E10
/* 8A67B0 80240D30 00000000 */   nop      
.L80240D34:
/* 8A67B4 80240D34 0260202D */  daddu     $a0, $s3, $zero
/* 8A67B8 80240D38 0280282D */  daddu     $a1, $s4, $zero
/* 8A67BC 80240D3C 0C0126D1 */  jal       func_80049B44
/* 8A67C0 80240D40 02A0302D */   daddu    $a2, $s5, $zero
/* 8A67C4 80240D44 8E230088 */  lw        $v1, 0x88($s1)
/* 8A67C8 80240D48 24020006 */  addiu     $v0, $zero, 6
/* 8A67CC 80240D4C 14620014 */  bne       $v1, $v0, .L80240DA0
/* 8A67D0 80240D50 0260202D */   daddu    $a0, $s3, $zero
/* 8A67D4 80240D54 0C00A67F */  jal       rand_int
/* 8A67D8 80240D58 24040064 */   addiu    $a0, $zero, 0x64
/* 8A67DC 80240D5C 28420021 */  slti      $v0, $v0, 0x21
/* 8A67E0 80240D60 5040000F */  beql      $v0, $zero, .L80240DA0
/* 8A67E4 80240D64 0260202D */   daddu    $a0, $s3, $zero
/* 8A67E8 80240D68 8E22008C */  lw        $v0, 0x8c($s1)
/* 8A67EC 80240D6C 10400005 */  beqz      $v0, .L80240D84
/* 8A67F0 80240D70 3C020055 */   lui      $v0, 0x55
/* 8A67F4 80240D74 3442002F */  ori       $v0, $v0, 0x2f
/* 8A67F8 80240D78 AE20008C */  sw        $zero, 0x8c($s1)
/* 8A67FC 80240D7C 08090364 */  j         .L80240D90
/* 8A6800 80240D80 A22000B5 */   sb       $zero, 0xb5($s1)
.L80240D84:
/* 8A6804 80240D84 3442002E */  ori       $v0, $v0, 0x2e
/* 8A6808 80240D88 AE30008C */  sw        $s0, 0x8c($s1)
/* 8A680C 80240D8C A23000B5 */  sb        $s0, 0xb5($s1)
.L80240D90:
/* 8A6810 80240D90 AE420028 */  sw        $v0, 0x28($s2)
/* 8A6814 80240D94 24020007 */  addiu     $v0, $zero, 7
/* 8A6818 80240D98 0809039F */  j         .L80240E7C
/* 8A681C 80240D9C AE220090 */   sw       $v0, 0x90($s1)
.L80240DA0:
/* 8A6820 80240DA0 0280282D */  daddu     $a1, $s4, $zero
/* 8A6824 80240DA4 0C012701 */  jal       func_80049C04
/* 8A6828 80240DA8 02A0302D */   daddu    $a2, $s5, $zero
/* 8A682C 80240DAC 08090384 */  j         .L80240E10
/* 8A6830 80240DB0 00000000 */   nop      
.L80240DB4:
/* 8A6834 80240DB4 0260202D */  daddu     $a0, $s3, $zero
/* 8A6838 80240DB8 0280282D */  daddu     $a1, $s4, $zero
/* 8A683C 80240DBC 0C0901B4 */  jal       func_802406D0
/* 8A6840 80240DC0 02A0302D */   daddu    $a2, $s5, $zero
/* 8A6844 80240DC4 0260202D */  daddu     $a0, $s3, $zero
.L80240DC8:
/* 8A6848 80240DC8 0280282D */  daddu     $a1, $s4, $zero
/* 8A684C 80240DCC 0C0901D3 */  jal       func_8024074C
/* 8A6850 80240DD0 02A0302D */   daddu    $a2, $s5, $zero
/* 8A6854 80240DD4 08090384 */  j         .L80240E10
/* 8A6858 80240DD8 00000000 */   nop      
.L80240DDC:
/* 8A685C 80240DDC 0260202D */  daddu     $a0, $s3, $zero
/* 8A6860 80240DE0 0280282D */  daddu     $a1, $s4, $zero
/* 8A6864 80240DE4 0C090220 */  jal       func_80240880
/* 8A6868 80240DE8 02A0302D */   daddu    $a2, $s5, $zero
/* 8A686C 80240DEC 08090384 */  j         .L80240E10
/* 8A6870 80240DF0 00000000 */   nop      
.L80240DF4:
/* 8A6874 80240DF4 0280282D */  daddu     $a1, $s4, $zero
/* 8A6878 80240DF8 0C090279 */  jal       func_802409E4
/* 8A687C 80240DFC 02A0302D */   daddu    $a2, $s5, $zero
/* 8A6880 80240E00 08090384 */  j         .L80240E10
/* 8A6884 80240E04 00000000 */   nop      
.L80240E08:
/* 8A6888 80240E08 0C0129CF */  jal       func_8004A73C
/* 8A688C 80240E0C 0260202D */   daddu    $a0, $s3, $zero
.L80240E10:
/* 8A6890 80240E10 8E230088 */  lw        $v1, 0x88($s1)
/* 8A6894 80240E14 24020006 */  addiu     $v0, $zero, 6
/* 8A6898 80240E18 14620019 */  bne       $v1, $v0, .L80240E80
/* 8A689C 80240E1C 0000102D */   daddu    $v0, $zero, $zero
/* 8A68A0 80240E20 8E22008C */  lw        $v0, 0x8c($s1)
/* 8A68A4 80240E24 10400003 */  beqz      $v0, .L80240E34
/* 8A68A8 80240E28 24020001 */   addiu    $v0, $zero, 1
/* 8A68AC 80240E2C 0809038E */  j         .L80240E38
/* 8A68B0 80240E30 A22200B5 */   sb       $v0, 0xb5($s1)
.L80240E34:
/* 8A68B4 80240E34 A22000B5 */  sb        $zero, 0xb5($s1)
.L80240E38:
/* 8A68B8 80240E38 8E22008C */  lw        $v0, 0x8c($s1)
/* 8A68BC 80240E3C 1040000F */  beqz      $v0, .L80240E7C
/* 8A68C0 80240E40 3C03FFAA */   lui      $v1, 0xffaa
/* 8A68C4 80240E44 8E420028 */  lw        $v0, 0x28($s2)
/* 8A68C8 80240E48 3463FFFC */  ori       $v1, $v1, 0xfffc
/* 8A68CC 80240E4C 00431821 */  addu      $v1, $v0, $v1
/* 8A68D0 80240E50 2C620015 */  sltiu     $v0, $v1, 0x15
/* 8A68D4 80240E54 10400009 */  beqz      $v0, .L80240E7C
/* 8A68D8 80240E58 00031080 */   sll      $v0, $v1, 2
/* 8A68DC 80240E5C 3C018024 */  lui       $at, 0x8024
/* 8A68E0 80240E60 00220821 */  addu      $at, $at, $v0
/* 8A68E4 80240E64 8C2224A8 */  lw        $v0, 0x24a8($at)
/* 8A68E8 80240E68 00400008 */  jr        $v0
/* 8A68EC 80240E6C 00000000 */   nop      
/* 8A68F0 80240E70 8E420028 */  lw        $v0, 0x28($s2)
/* 8A68F4 80240E74 24420001 */  addiu     $v0, $v0, 1
/* 8A68F8 80240E78 AE420028 */  sw        $v0, 0x28($s2)
.L80240E7C:
/* 8A68FC 80240E7C 0000102D */  daddu     $v0, $zero, $zero
.L80240E80:
/* 8A6900 80240E80 8FBF0068 */  lw        $ra, 0x68($sp)
/* 8A6904 80240E84 8FB50064 */  lw        $s5, 0x64($sp)
/* 8A6908 80240E88 8FB40060 */  lw        $s4, 0x60($sp)
/* 8A690C 80240E8C 8FB3005C */  lw        $s3, 0x5c($sp)
/* 8A6910 80240E90 8FB20058 */  lw        $s2, 0x58($sp)
/* 8A6914 80240E94 8FB10054 */  lw        $s1, 0x54($sp)
/* 8A6918 80240E98 8FB00050 */  lw        $s0, 0x50($sp)
/* 8A691C 80240E9C 03E00008 */  jr        $ra
/* 8A6920 80240EA0 27BD0070 */   addiu    $sp, $sp, 0x70
/* 8A6924 80240EA4 00000000 */  nop       
/* 8A6928 80240EA8 00000000 */  nop       
/* 8A692C 80240EAC 00000000 */  nop       
