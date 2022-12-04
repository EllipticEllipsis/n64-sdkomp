glabel obj_liblist_name # 434
/* 02FD7C 0042FD7C 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02FD80 0042FD80 279C2FE4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE2FE4
/* 02FD84 0042FD84 0399E021 */  addu        $gp, $gp, $t9
/* 02FD88 0042FD88 8F998300 */  lw          $t9, %call16(obj_liblist)($gp)
/* 02FD8C 0042FD8C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02FD90 0042FD90 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02FD94 0042FD94 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02FD98 0042FD98 AFA40020 */  sw          $a0, 0x20($sp)
/* 02FD9C 0042FD9C 0320F809 */  jalr        $t9
/* 02FDA0 0042FDA0 AFA50024 */   sw         $a1, 0x24($sp)
/* 02FDA4 0042FDA4 8FAE0024 */  lw          $t6, 0x24($sp)
/* 02FDA8 0042FDA8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FDAC 0042FDAC 8FA40020 */  lw          $a0, 0x20($sp)
/* 02FDB0 0042FDB0 000E7880 */  sll         $t7, $t6, 2
/* 02FDB4 0042FDB4 8F9983E4 */  lw          $t9, %call16(obj_dynstring)($gp)
/* 02FDB8 0042FDB8 01EE7821 */  addu        $t7, $t7, $t6
/* 02FDBC 0042FDBC 000F7880 */  sll         $t7, $t7, 2
/* 02FDC0 0042FDC0 004FC021 */  addu        $t8, $v0, $t7
/* 02FDC4 0042FDC4 0320F809 */  jalr        $t9
/* 02FDC8 0042FDC8 8F050000 */   lw         $a1, 0x0($t8)
/* 02FDCC 0042FDCC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02FDD0 0042FDD0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FDD4 0042FDD4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02FDD8 0042FDD8 03E00008 */  jr          $ra
/* 02FDDC 0042FDDC 00000000 */   nop
