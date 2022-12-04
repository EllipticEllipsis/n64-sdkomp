glabel get_aux # 631
/* 03DFA8 0043DFA8 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03DFAC 0043DFAC 279C4DB8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD4DB8
/* 03DFB0 0043DFB0 0399E021 */  addu        $gp, $gp, $t9
/* 03DFB4 0043DFB4 04A30006 */  bgezl       $a1, .L0043DFD0
/* 03DFB8 0043DFB8 8C9900C8 */   lw         $t9, 0xC8($a0)
/* 03DFBC 0043DFBC 8F8F87D0 */  lw          $t7, %got(usertype)($gp)
/* 03DFC0 0043DFC0 00057080 */  sll         $t6, $a1, 2
/* 03DFC4 0043DFC4 10000006 */  b           .L0043DFE0
/* 03DFC8 0043DFC8 01CF1821 */   addu       $v1, $t6, $t7
/* 03DFCC 0043DFCC 8C9900C8 */  lw          $t9, 0xC8($a0)
.L0043DFD0:
/* 03DFD0 0043DFD0 8C9800C0 */  lw          $t8, 0xC0($a0)
/* 03DFD4 0043DFD4 00B94023 */  subu        $t0, $a1, $t9
/* 03DFD8 0043DFD8 00084880 */  sll         $t1, $t0, 2
/* 03DFDC 0043DFDC 03091821 */  addu        $v1, $t8, $t1
.L0043DFE0:
/* 03DFE0 0043DFE0 03E00008 */  jr          $ra
/* 03DFE4 0043DFE4 8C620000 */   lw         $v0, 0x0($v1)
