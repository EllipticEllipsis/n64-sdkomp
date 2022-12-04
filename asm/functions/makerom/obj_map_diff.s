glabel obj_map_diff # 300
/* 02F388 0042F388 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02F38C 0042F38C 279C39D8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE39D8
/* 02F390 0042F390 0399E021 */  addu        $gp, $gp, $t9
/* 02F394 0042F394 8F9982C8 */  lw          $t9, %call16(obj_base_address)($gp)
/* 02F398 0042F398 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02F39C 0042F39C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02F3A0 0042F3A0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02F3A4 0042F3A4 0320F809 */  jalr        $t9
/* 02F3A8 0042F3A8 AFA40028 */   sw         $a0, 0x28($sp)
/* 02F3AC 0042F3AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02F3B0 0042F3B0 AFA20024 */  sw          $v0, 0x24($sp)
/* 02F3B4 0042F3B4 8FA40028 */  lw          $a0, 0x28($sp)
/* 02F3B8 0042F3B8 8F9982D0 */  lw          $t9, %call16(obj_map_address)($gp)
/* 02F3BC 0042F3BC 0320F809 */  jalr        $t9
/* 02F3C0 0042F3C0 00000000 */   nop
/* 02F3C4 0042F3C4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02F3C8 0042F3C8 8FAE0024 */  lw          $t6, 0x24($sp)
/* 02F3CC 0042F3CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02F3D0 0042F3D0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02F3D4 0042F3D4 03E00008 */  jr          $ra
/* 02F3D8 0042F3D8 01C21023 */   subu       $v0, $t6, $v0
