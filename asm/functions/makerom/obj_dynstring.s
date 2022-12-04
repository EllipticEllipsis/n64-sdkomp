glabel obj_dynstring # 403
/* 02F8F0 0042F8F0 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02F8F4 0042F8F4 279C3470 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE3470
/* 02F8F8 0042F8F8 0399E021 */  addu        $gp, $gp, $t9
/* 02F8FC 0042F8FC 8F9983E0 */  lw          $t9, %call16(obj_dynstrtab)($gp)
/* 02F900 0042F900 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02F904 0042F904 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02F908 0042F908 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02F90C 0042F90C 0320F809 */  jalr        $t9
/* 02F910 0042F910 AFA50024 */   sw         $a1, 0x24($sp)
/* 02F914 0042F914 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02F918 0042F918 8FAE0024 */  lw          $t6, 0x24($sp)
/* 02F91C 0042F91C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02F920 0042F920 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02F924 0042F924 03E00008 */  jr          $ra
/* 02F928 0042F928 004E1021 */   addu       $v0, $v0, $t6
