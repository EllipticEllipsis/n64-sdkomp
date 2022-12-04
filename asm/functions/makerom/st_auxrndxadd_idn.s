glabel st_auxrndxadd_idn # 717
/* 0437AC 004437AC 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 0437B0 004437B0 279CF5B4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBCF5B4
/* 0437B4 004437B4 0399E021 */  addu        $gp, $gp, $t9
/* 0437B8 004437B8 8F998634 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 0437BC 004437BC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0437C0 004437C0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0437C4 004437C4 0320F809 */  jalr        $t9
/* 0437C8 004437C8 AFBC0018 */   sw         $gp, 0x18($sp)
/* 0437CC 004437CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0437D0 004437D0 8C440000 */  lw          $a0, 0x0($v0)
/* 0437D4 004437D4 8C450004 */  lw          $a1, 0x4($v0)
/* 0437D8 004437D8 8F99864C */  lw          $t9, %call16(st_auxrndxadd)($gp)
/* 0437DC 004437DC 0320F809 */  jalr        $t9
/* 0437E0 004437E0 00000000 */   nop
/* 0437E4 004437E4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0437E8 004437E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0437EC 004437EC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0437F0 004437F0 03E00008 */  jr          $ra
/* 0437F4 004437F4 00000000 */   nop
