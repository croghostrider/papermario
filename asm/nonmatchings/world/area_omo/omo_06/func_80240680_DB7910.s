.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240680_DB7F90
/* DB7F90 80240680 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* DB7F94 80240684 AFB00010 */  sw        $s0, 0x10($sp)
/* DB7F98 80240688 0080802D */  daddu     $s0, $a0, $zero
/* DB7F9C 8024068C 10A00005 */  beqz      $a1, .L802406A4
/* DB7FA0 80240690 AFBF0014 */   sw       $ra, 0x14($sp)
/* DB7FA4 80240694 AE000070 */  sw        $zero, 0x70($s0)
/* DB7FA8 80240698 AE000074 */  sw        $zero, 0x74($s0)
/* DB7FAC 8024069C AE000078 */  sw        $zero, 0x78($s0)
/* DB7FB0 802406A0 AE00007C */  sw        $zero, 0x7c($s0)
.L802406A4:
/* DB7FB4 802406A4 8E020070 */  lw        $v0, 0x70($s0)
/* DB7FB8 802406A8 1440000E */  bnez      $v0, .L802406E4
/* DB7FBC 802406AC 00000000 */   nop      
/* DB7FC0 802406B0 8E0300A8 */  lw        $v1, 0xa8($s0)
/* DB7FC4 802406B4 8E020088 */  lw        $v0, 0x88($s0)
/* DB7FC8 802406B8 00621821 */  addu      $v1, $v1, $v0
/* DB7FCC 802406BC 04610004 */  bgez      $v1, .L802406D0
/* DB7FD0 802406C0 AE0300A8 */   sw       $v1, 0xa8($s0)
/* DB7FD4 802406C4 3C020002 */  lui       $v0, 2
/* DB7FD8 802406C8 080901B8 */  j         .L802406E0
/* DB7FDC 802406CC 00621021 */   addu     $v0, $v1, $v0
.L802406D0:
/* DB7FE0 802406D0 3C040002 */  lui       $a0, 2
/* DB7FE4 802406D4 0083102A */  slt       $v0, $a0, $v1
/* DB7FE8 802406D8 10400002 */  beqz      $v0, .L802406E4
/* DB7FEC 802406DC 00641023 */   subu     $v0, $v1, $a0
.L802406E0:
/* DB7FF0 802406E0 AE0200A8 */  sw        $v0, 0xa8($s0)
.L802406E4:
/* DB7FF4 802406E4 8E020074 */  lw        $v0, 0x74($s0)
/* DB7FF8 802406E8 1440000E */  bnez      $v0, .L80240724
/* DB7FFC 802406EC 00000000 */   nop      
/* DB8000 802406F0 8E0300AC */  lw        $v1, 0xac($s0)
/* DB8004 802406F4 8E02008C */  lw        $v0, 0x8c($s0)
/* DB8008 802406F8 00621821 */  addu      $v1, $v1, $v0
/* DB800C 802406FC 04610004 */  bgez      $v1, .L80240710
/* DB8010 80240700 AE0300AC */   sw       $v1, 0xac($s0)
/* DB8014 80240704 3C020002 */  lui       $v0, 2
/* DB8018 80240708 080901C8 */  j         .L80240720
/* DB801C 8024070C 00621021 */   addu     $v0, $v1, $v0
.L80240710:
/* DB8020 80240710 3C040002 */  lui       $a0, 2
/* DB8024 80240714 0083102A */  slt       $v0, $a0, $v1
/* DB8028 80240718 10400002 */  beqz      $v0, .L80240724
/* DB802C 8024071C 00641023 */   subu     $v0, $v1, $a0
.L80240720:
/* DB8030 80240720 AE0200AC */  sw        $v0, 0xac($s0)
.L80240724:
/* DB8034 80240724 8E020078 */  lw        $v0, 0x78($s0)
/* DB8038 80240728 1440000E */  bnez      $v0, .L80240764
/* DB803C 8024072C 00000000 */   nop      
/* DB8040 80240730 8E0300B0 */  lw        $v1, 0xb0($s0)
/* DB8044 80240734 8E020090 */  lw        $v0, 0x90($s0)
/* DB8048 80240738 00621821 */  addu      $v1, $v1, $v0
/* DB804C 8024073C 04610004 */  bgez      $v1, .L80240750
/* DB8050 80240740 AE0300B0 */   sw       $v1, 0xb0($s0)
/* DB8054 80240744 3C020002 */  lui       $v0, 2
/* DB8058 80240748 080901D8 */  j         .L80240760
/* DB805C 8024074C 00621021 */   addu     $v0, $v1, $v0
.L80240750:
/* DB8060 80240750 3C040002 */  lui       $a0, 2
/* DB8064 80240754 0083102A */  slt       $v0, $a0, $v1
/* DB8068 80240758 10400002 */  beqz      $v0, .L80240764
/* DB806C 8024075C 00641023 */   subu     $v0, $v1, $a0
.L80240760:
/* DB8070 80240760 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80240764:
/* DB8074 80240764 8E02007C */  lw        $v0, 0x7c($s0)
/* DB8078 80240768 1440000E */  bnez      $v0, .L802407A4
/* DB807C 8024076C 00000000 */   nop      
/* DB8080 80240770 8E0300B4 */  lw        $v1, 0xb4($s0)
/* DB8084 80240774 8E020094 */  lw        $v0, 0x94($s0)
/* DB8088 80240778 00621821 */  addu      $v1, $v1, $v0
/* DB808C 8024077C 04610004 */  bgez      $v1, .L80240790
/* DB8090 80240780 AE0300B4 */   sw       $v1, 0xb4($s0)
/* DB8094 80240784 3C020002 */  lui       $v0, 2
/* DB8098 80240788 080901E8 */  j         .L802407A0
/* DB809C 8024078C 00621021 */   addu     $v0, $v1, $v0
.L80240790:
/* DB80A0 80240790 3C040002 */  lui       $a0, 2
/* DB80A4 80240794 0083102A */  slt       $v0, $a0, $v1
/* DB80A8 80240798 10400002 */  beqz      $v0, .L802407A4
/* DB80AC 8024079C 00641023 */   subu     $v0, $v1, $a0
.L802407A0:
/* DB80B0 802407A0 AE0200B4 */  sw        $v0, 0xb4($s0)
.L802407A4:
/* DB80B4 802407A4 8E040084 */  lw        $a0, 0x84($s0)
/* DB80B8 802407A8 0C046F07 */  jal       set_main_pan_u
/* DB80BC 802407AC 8E0500A8 */   lw       $a1, 0xa8($s0)
/* DB80C0 802407B0 8E040084 */  lw        $a0, 0x84($s0)
/* DB80C4 802407B4 0C046F0D */  jal       set_main_pan_v
/* DB80C8 802407B8 8E0500AC */   lw       $a1, 0xac($s0)
/* DB80CC 802407BC 8E040084 */  lw        $a0, 0x84($s0)
/* DB80D0 802407C0 0C046F13 */  jal       set_aux_pan_u
/* DB80D4 802407C4 8E0500B0 */   lw       $a1, 0xb0($s0)
/* DB80D8 802407C8 8E040084 */  lw        $a0, 0x84($s0)
/* DB80DC 802407CC 0C046F19 */  jal       set_aux_pan_v
/* DB80E0 802407D0 8E0500B4 */   lw       $a1, 0xb4($s0)
/* DB80E4 802407D4 8E020070 */  lw        $v0, 0x70($s0)
/* DB80E8 802407D8 8E030078 */  lw        $v1, 0x78($s0)
/* DB80EC 802407DC 8E040098 */  lw        $a0, 0x98($s0)
/* DB80F0 802407E0 24420001 */  addiu     $v0, $v0, 1
/* DB80F4 802407E4 AE020070 */  sw        $v0, 0x70($s0)
/* DB80F8 802407E8 8E020074 */  lw        $v0, 0x74($s0)
/* DB80FC 802407EC 24630001 */  addiu     $v1, $v1, 1
/* DB8100 802407F0 AE030078 */  sw        $v1, 0x78($s0)
/* DB8104 802407F4 8E030070 */  lw        $v1, 0x70($s0)
/* DB8108 802407F8 24420001 */  addiu     $v0, $v0, 1
/* DB810C 802407FC AE020074 */  sw        $v0, 0x74($s0)
/* DB8110 80240800 8E02007C */  lw        $v0, 0x7c($s0)
/* DB8114 80240804 0064182A */  slt       $v1, $v1, $a0
/* DB8118 80240808 24420001 */  addiu     $v0, $v0, 1
/* DB811C 8024080C 14600002 */  bnez      $v1, .L80240818
/* DB8120 80240810 AE02007C */   sw       $v0, 0x7c($s0)
/* DB8124 80240814 AE000070 */  sw        $zero, 0x70($s0)
.L80240818:
/* DB8128 80240818 8E020074 */  lw        $v0, 0x74($s0)
/* DB812C 8024081C 8E03009C */  lw        $v1, 0x9c($s0)
/* DB8130 80240820 0043102A */  slt       $v0, $v0, $v1
/* DB8134 80240824 50400001 */  beql      $v0, $zero, .L8024082C
/* DB8138 80240828 AE000074 */   sw       $zero, 0x74($s0)
.L8024082C:
/* DB813C 8024082C 8E020078 */  lw        $v0, 0x78($s0)
/* DB8140 80240830 8E0300A0 */  lw        $v1, 0xa0($s0)
/* DB8144 80240834 0043102A */  slt       $v0, $v0, $v1
/* DB8148 80240838 50400001 */  beql      $v0, $zero, .L80240840
/* DB814C 8024083C AE000078 */   sw       $zero, 0x78($s0)
.L80240840:
/* DB8150 80240840 8E02007C */  lw        $v0, 0x7c($s0)
/* DB8154 80240844 8E0300A4 */  lw        $v1, 0xa4($s0)
/* DB8158 80240848 0043102A */  slt       $v0, $v0, $v1
/* DB815C 8024084C 50400001 */  beql      $v0, $zero, .L80240854
/* DB8160 80240850 AE00007C */   sw       $zero, 0x7c($s0)
.L80240854:
/* DB8164 80240854 8FBF0014 */  lw        $ra, 0x14($sp)
/* DB8168 80240858 8FB00010 */  lw        $s0, 0x10($sp)
/* DB816C 8024085C 0000102D */  daddu     $v0, $zero, $zero
/* DB8170 80240860 03E00008 */  jr        $ra
/* DB8174 80240864 27BD0018 */   addiu    $sp, $sp, 0x18
/* DB8178 80240868 00000000 */  nop       
/* DB817C 8024086C 00000000 */  nop       
