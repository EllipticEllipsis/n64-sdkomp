glabel st_changedn # 705
/* 042D20 00442D20 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 042D24 00442D24 279C0040 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD0040
/* 042D28 00442D28 0399E021 */  addu        $gp, $gp, $t9
/* 042D2C 00442D2C 8F998634 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 042D30 00442D30 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 042D34 00442D34 AFBF001C */  sw          $ra, 0x1C($sp)
/* 042D38 00442D38 AFBC0018 */  sw          $gp, 0x18($sp)
/* 042D3C 00442D3C AFA50024 */  sw          $a1, 0x24($sp)
/* 042D40 00442D40 0320F809 */  jalr        $t9
/* 042D44 00442D44 AFA60028 */   sw         $a2, 0x28($sp)
/* 042D48 00442D48 8FAE0024 */  lw          $t6, 0x24($sp)
/* 042D4C 00442D4C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 042D50 00442D50 AC4E0000 */  sw          $t6, 0x0($v0)
/* 042D54 00442D54 8FAF0028 */  lw          $t7, 0x28($sp)
/* 042D58 00442D58 AC4F0004 */  sw          $t7, 0x4($v0)
/* 042D5C 00442D5C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 042D60 00442D60 27BD0020 */  addiu       $sp, $sp, 0x20
/* 042D64 00442D64 03E00008 */  jr          $ra
/* 042D68 00442D68 00000000 */   nop
