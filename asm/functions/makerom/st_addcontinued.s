glabel st_addcontinued # 718
/* 0437F8 004437F8 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 0437FC 004437FC 279CF568 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBCF568
/* 043800 00443800 0399E021 */  addu        $gp, $gp, $t9
/* 043804 00443804 8F998610 */  lw          $t9, %call16(st_paux_iaux)($gp)
/* 043808 00443808 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 04380C 0044380C AFBF001C */  sw          $ra, 0x1C($sp)
/* 043810 00443810 0320F809 */  jalr        $t9
/* 043814 00443814 AFBC0018 */   sw         $gp, 0x18($sp)
/* 043818 00443818 904F0000 */  lbu         $t7, 0x0($v0)
/* 04381C 0044381C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 043820 00443820 35F80040 */  ori         $t8, $t7, 0x40
/* 043824 00443824 A0580000 */  sb          $t8, 0x0($v0)
/* 043828 00443828 8FBF001C */  lw          $ra, 0x1C($sp)
/* 04382C 0044382C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 043830 00443830 03E00008 */  jr          $ra
/* 043834 00443834 00000000 */   nop
/* 043838 00443838 00000000 */  nop
/* 04383C 0044383C 00000000 */  nop
