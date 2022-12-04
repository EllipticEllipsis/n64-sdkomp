glabel st_auxisymadd # 714
/* 043684 00443684 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 043688 00443688 279CF6DC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBCF6DC
/* 04368C 0044368C 0399E021 */  addu        $gp, $gp, $t9
/* 043690 00443690 8F9985E8 */  lw          $t9, %call16(st_auxadd)($gp)
/* 043694 00443694 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 043698 00443698 AFBF001C */  sw          $ra, 0x1C($sp)
/* 04369C 0044369C AFBC0018 */  sw          $gp, 0x18($sp)
/* 0436A0 004436A0 AFA40024 */  sw          $a0, 0x24($sp)
/* 0436A4 004436A4 0320F809 */  jalr        $t9
/* 0436A8 004436A8 AFA40000 */   sw         $a0, 0x0($sp)
/* 0436AC 004436AC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0436B0 004436B0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0436B4 004436B4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0436B8 004436B8 03E00008 */  jr          $ra
/* 0436BC 004436BC 00000000 */   nop
