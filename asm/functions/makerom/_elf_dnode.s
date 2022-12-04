glabel _elf_dnode # 179
/* 026A34 00426A34 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 026A38 00426A38 279CC32C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEC32C
/* 026A3C 00426A3C 0399E021 */  addu        $gp, $gp, $t9
/* 026A40 00426A40 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 026A44 00426A44 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 026A48 00426A48 AFBF001C */  sw          $ra, 0x1C($sp)
/* 026A4C 00426A4C AFBC0018 */  sw          $gp, 0x18($sp)
/* 026A50 00426A50 AFB00014 */  sw          $s0, 0x14($sp)
/* 026A54 00426A54 0320F809 */  jalr        $t9
/* 026A58 00426A58 24040040 */   addiu      $a0, $zero, 0x40
/* 026A5C 00426A5C 00408025 */  move        $s0, $v0
/* 026A60 00426A60 16000006 */  bnez        $s0, .L00426A7C
/* 026A64 00426A64 8FBC0018 */   lw         $gp, 0x18($sp)
/* 026A68 00426A68 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 026A6C 00426A6C 240E040B */  addiu       $t6, $zero, 0x40B
/* 026A70 00426A70 00001025 */  move        $v0, $zero
/* 026A74 00426A74 10000012 */  b           .L00426AC0
/* 026A78 00426A78 AC2E0000 */   sw         $t6, 0x0($at)
.L00426A7C:
/* 026A7C 00426A7C 8F8F86F0 */  lw          $t7, %got(_elf_snode_init)($gp)
/* 026A80 00426A80 02004025 */  move        $t0, $s0
/* 026A84 00426A84 25E9003C */  addiu       $t1, $t7, 0x3C
.L00426A88:
/* 026A88 00426A88 8DF90028 */  lw          $t9, 0x28($t7)
/* 026A8C 00426A8C 25EF000C */  addiu       $t7, $t7, 0xC
/* 026A90 00426A90 2508000C */  addiu       $t0, $t0, 0xC
/* 026A94 00426A94 AD19FFF4 */  sw          $t9, -0xC($t0)
/* 026A98 00426A98 8DF80020 */  lw          $t8, 0x20($t7)
/* 026A9C 00426A9C AD18FFF8 */  sw          $t8, -0x8($t0)
/* 026AA0 00426AA0 8DF90024 */  lw          $t9, 0x24($t7)
/* 026AA4 00426AA4 15E9FFF8 */  bne         $t7, $t1, .L00426A88
/* 026AA8 00426AA8 AD19FFFC */   sw         $t9, -0x4($t0)
/* 026AAC 00426AAC 8DF90028 */  lw          $t9, 0x28($t7)
/* 026AB0 00426AB0 240A0001 */  addiu       $t2, $zero, 0x1
/* 026AB4 00426AB4 02001025 */  move        $v0, $s0
/* 026AB8 00426AB8 AD190000 */  sw          $t9, 0x0($t0)
/* 026ABC 00426ABC AE0A003C */  sw          $t2, 0x3C($s0)
.L00426AC0:
/* 026AC0 00426AC0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 026AC4 00426AC4 8FB00014 */  lw          $s0, 0x14($sp)
/* 026AC8 00426AC8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 026ACC 00426ACC 03E00008 */  jr          $ra
/* 026AD0 00426AD0 00000000 */   nop
