glabel func_0042487C # 146
/* 02487C 0042487C 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 024880 00424880 279CE4E4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEE4E4
/* 024884 00424884 0399E021 */  addu        $gp, $gp, $t9
/* 024888 00424888 00067080 */  sll         $t6, $a2, 2
/* 02488C 0042488C 27BDFFF0 */  addiu       $sp, $sp, -0x10
/* 024890 00424890 01C53821 */  addu        $a3, $t6, $a1
.L00424894:
/* 024894 00424894 8CA80000 */  lw          $t0, 0x0($a1)
/* 024898 00424898 24A50004 */  addiu       $a1, $a1, 0x4
/* 02489C 0042489C 00A7082B */  sltu        $at, $a1, $a3
/* 0248A0 004248A0 00087A02 */  srl         $t7, $t0, 8
/* 0248A4 004248A4 0008C402 */  srl         $t8, $t0, 16
/* 0248A8 004248A8 0008CE02 */  srl         $t9, $t0, 24
/* 0248AC 004248AC A0990000 */  sb          $t9, 0x0($a0)
/* 0248B0 004248B0 A0980001 */  sb          $t8, 0x1($a0)
/* 0248B4 004248B4 A08F0002 */  sb          $t7, 0x2($a0)
/* 0248B8 004248B8 24840004 */  addiu       $a0, $a0, 0x4
/* 0248BC 004248BC 1420FFF5 */  bnez        $at, .L00424894
/* 0248C0 004248C0 A088FFFF */   sb         $t0, -0x1($a0)
/* 0248C4 004248C4 03E00008 */  jr          $ra
/* 0248C8 004248C8 27BD0010 */   addiu      $sp, $sp, 0x10
