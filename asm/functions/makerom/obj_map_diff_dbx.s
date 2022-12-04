glabel obj_map_diff_dbx # 301
/* 02F3DC 0042F3DC 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02F3E0 0042F3E0 279C3984 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE3984
/* 02F3E4 0042F3E4 0399E021 */  addu        $gp, $gp, $t9
/* 02F3E8 0042F3E8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02F3EC 0042F3EC AFBF001C */  sw          $ra, 0x1C($sp)
/* 02F3F0 0042F3F0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02F3F4 0042F3F4 8C8E0180 */  lw          $t6, 0x180($a0)
/* 02F3F8 0042F3F8 24010002 */  addiu       $at, $zero, 0x2
/* 02F3FC 0042F3FC 11C10003 */  beq         $t6, $at, .L0042F40C
/* 02F400 0042F400 00000000 */   nop
/* 02F404 0042F404 1000000E */  b           .L0042F440
/* 02F408 0042F408 00001825 */   move       $v1, $zero
.L0042F40C:
/* 02F40C 0042F40C 8F9982C8 */  lw          $t9, %call16(obj_base_address)($gp)
/* 02F410 0042F410 AFA40028 */  sw          $a0, 0x28($sp)
/* 02F414 0042F414 0320F809 */  jalr        $t9
/* 02F418 0042F418 00000000 */   nop
/* 02F41C 0042F41C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02F420 0042F420 8FA40028 */  lw          $a0, 0x28($sp)
/* 02F424 0042F424 AFA20020 */  sw          $v0, 0x20($sp)
/* 02F428 0042F428 8F9982D0 */  lw          $t9, %call16(obj_map_address)($gp)
/* 02F42C 0042F42C 0320F809 */  jalr        $t9
/* 02F430 0042F430 00000000 */   nop
/* 02F434 0042F434 8FAF0020 */  lw          $t7, 0x20($sp)
/* 02F438 0042F438 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02F43C 0042F43C 01E21823 */  subu        $v1, $t7, $v0
.L0042F440:
/* 02F440 0042F440 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02F444 0042F444 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02F448 0042F448 00601025 */  move        $v0, $v1
/* 02F44C 0042F44C 03E00008 */  jr          $ra
/* 02F450 0042F450 00000000 */   nop
