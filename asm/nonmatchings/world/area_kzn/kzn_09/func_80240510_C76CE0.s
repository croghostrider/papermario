.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240510_C771F0
/* C771F0 80240510 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* C771F4 80240514 AFBF0010 */  sw        $ra, 0x10($sp)
/* C771F8 80240518 8C82000C */  lw        $v0, 0xc($a0)
/* C771FC 8024051C 0C0B1EAF */  jal       get_variable
/* C77200 80240520 8C450000 */   lw       $a1, ($v0)
/* C77204 80240524 0040202D */  daddu     $a0, $v0, $zero
/* C77208 80240528 8C830000 */  lw        $v1, ($a0)
/* C7720C 8024052C 34630010 */  ori       $v1, $v1, 0x10
/* C77210 80240530 AC830000 */  sw        $v1, ($a0)
/* C77214 80240534 8FBF0010 */  lw        $ra, 0x10($sp)
/* C77218 80240538 24020002 */  addiu     $v0, $zero, 2
/* C7721C 8024053C 03E00008 */  jr        $ra
/* C77220 80240540 27BD0018 */   addiu    $sp, $sp, 0x18
