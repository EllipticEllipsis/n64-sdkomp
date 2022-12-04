glabel func_0043DBB0 # 626
/* 03DBB0 0043DBB0 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03DBB4 0043DBB4 279C51B0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD51B0
/* 03DBB8 0043DBB8 0399E021 */  addu        $gp, $gp, $t9
/* 03DBBC 0043DBBC 8CAE0008 */  lw          $t6, 0x8($a1)
/* 03DBC0 0043DBC0 ACA60028 */  sw          $a2, 0x28($a1)
/* 03DBC4 0043DBC4 05C30006 */  bgezl       $t6, .L0043DBE0
/* 03DBC8 0043DBC8 8C8800C8 */   lw         $t0, 0xC8($a0)
/* 03DBCC 0043DBCC 8F9887D0 */  lw          $t8, %got(usertype)($gp)
/* 03DBD0 0043DBD0 00067880 */  sll         $t7, $a2, 2
/* 03DBD4 0043DBD4 03E00008 */  jr          $ra
/* 03DBD8 0043DBD8 01F81021 */   addu       $v0, $t7, $t8
/* 03DBDC 0043DBDC 8C8800C8 */  lw          $t0, 0xC8($a0)
.L0043DBE0:
/* 03DBE0 0043DBE0 8C9900C0 */  lw          $t9, 0xC0($a0)
/* 03DBE4 0043DBE4 00C84823 */  subu        $t1, $a2, $t0
/* 03DBE8 0043DBE8 00095080 */  sll         $t2, $t1, 2
/* 03DBEC 0043DBEC 032A1021 */  addu        $v0, $t9, $t2
/* 03DBF0 0043DBF0 03E00008 */  jr          $ra
/* 03DBF4 0043DBF4 00000000 */   nop
