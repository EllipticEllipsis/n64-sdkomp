glabel st_changeaux # 710
/* 0433C4 004433C4 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 0433C8 004433C8 279CF99C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBCF99C
/* 0433CC 004433CC 0399E021 */  addu        $gp, $gp, $t9
/* 0433D0 004433D0 8F998610 */  lw          $t9, %call16(st_paux_iaux)($gp)
/* 0433D4 004433D4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0433D8 004433D8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0433DC 004433DC AFBC0018 */  sw          $gp, 0x18($sp)
/* 0433E0 004433E0 0320F809 */  jalr        $t9
/* 0433E4 004433E4 AFA50024 */   sw         $a1, 0x24($sp)
/* 0433E8 004433E8 27AE0024 */  addiu       $t6, $sp, 0x24
/* 0433EC 004433EC 8DD80000 */  lw          $t8, 0x0($t6)
/* 0433F0 004433F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0433F4 004433F4 AC580000 */  sw          $t8, 0x0($v0)
/* 0433F8 004433F8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0433FC 004433FC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 043400 00443400 03E00008 */  jr          $ra
/* 043404 00443404 00000000 */   nop
