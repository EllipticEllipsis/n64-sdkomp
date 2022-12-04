glabel obj_conflict_foreign # 405
/* 02F934 0042F934 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02F938 0042F938 279C342C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE342C
/* 02F93C 0042F93C 0399E021 */  addu        $gp, $gp, $t9
/* 02F940 0042F940 8F99836C */  lw          $t9, %call16(obj_conflictcount)($gp)
/* 02F944 0042F944 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02F948 0042F948 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02F94C 0042F94C 0320F809 */  jalr        $t9
/* 02F950 0042F950 AFBC0018 */   sw         $gp, 0x18($sp)
/* 02F954 0042F954 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02F958 0042F958 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02F95C 0042F95C 24420001 */  addiu       $v0, $v0, 0x1
/* 02F960 0042F960 2C420001 */  sltiu       $v0, $v0, 0x1
/* 02F964 0042F964 03E00008 */  jr          $ra
/* 02F968 0042F968 27BD0020 */   addiu      $sp, $sp, 0x20
