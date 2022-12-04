glabel obj_liblist_foreign # 406
/* 02F96C 0042F96C 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02F970 0042F970 279C33F4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE33F4
/* 02F974 0042F974 0399E021 */  addu        $gp, $gp, $t9
/* 02F978 0042F978 8F998364 */  lw          $t9, %call16(obj_liblistcount)($gp)
/* 02F97C 0042F97C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02F980 0042F980 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02F984 0042F984 0320F809 */  jalr        $t9
/* 02F988 0042F988 AFBC0018 */   sw         $gp, 0x18($sp)
/* 02F98C 0042F98C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02F990 0042F990 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02F994 0042F994 24420001 */  addiu       $v0, $v0, 0x1
/* 02F998 0042F998 2C420001 */  sltiu       $v0, $v0, 0x1
/* 02F99C 0042F99C 03E00008 */  jr          $ra
/* 02F9A0 0042F9A0 27BD0020 */   addiu      $sp, $sp, 0x20
