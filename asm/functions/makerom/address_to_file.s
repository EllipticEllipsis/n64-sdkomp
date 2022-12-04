glabel address_to_file # 547
/* 034778 00434778 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 03477C 0043477C 279CE5E8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDE5E8
/* 034780 00434780 0399E021 */  addu        $gp, $gp, $t9
/* 034784 00434784 8F9984EC */  lw          $t9, %call16(address_to_procedure)($gp)
/* 034788 00434788 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03478C 0043478C AFBF001C */  sw          $ra, 0x1C($sp)
/* 034790 00434790 AFBC0018 */  sw          $gp, 0x18($sp)
/* 034794 00434794 0320F809 */  jalr        $t9
/* 034798 00434798 AFA40020 */   sw         $a0, 0x20($sp)
/* 03479C 0043479C 2401FFFF */  addiu       $at, $zero, -0x1
/* 0347A0 004347A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0347A4 004347A4 14410003 */  bne         $v0, $at, .L004347B4
/* 0347A8 004347A8 00402825 */   move       $a1, $v0
/* 0347AC 004347AC 10000006 */  b           .L004347C8
/* 0347B0 004347B0 2402FFFF */   addiu      $v0, $zero, -0x1
.L004347B4:
/* 0347B4 004347B4 8F9984F8 */  lw          $t9, %call16(procedure_to_file)($gp)
/* 0347B8 004347B8 8FA40020 */  lw          $a0, 0x20($sp)
/* 0347BC 004347BC 0320F809 */  jalr        $t9
/* 0347C0 004347C0 00000000 */   nop
/* 0347C4 004347C4 8FBC0018 */  lw          $gp, 0x18($sp)
.L004347C8:
/* 0347C8 004347C8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0347CC 004347CC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0347D0 004347D0 03E00008 */  jr          $ra
/* 0347D4 004347D4 00000000 */   nop
/* 0347D8 004347D8 00000000 */  nop
/* 0347DC 004347DC 00000000 */  nop
