glabel _ld_init_rt_proc_table # 239
/* 02B084 0042B084 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02B088 0042B088 279C7CDC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE7CDC
/* 02B08C 0042B08C 0399E021 */  addu        $gp, $gp, $t9
/* 02B090 0042B090 8F998454 */  lw          $t9, %call16(obj_rld_map)($gp)
/* 02B094 0042B094 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02B098 0042B098 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02B09C 0042B09C AFBC0018 */  sw          $gp, 0x18($sp)
/* 02B0A0 0042B0A0 0320F809 */  jalr        $t9
/* 02B0A4 0042B0A4 8C84002C */   lw         $a0, 0x2C($a0)
/* 02B0A8 0042B0A8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02B0AC 0042B0AC 8C440000 */  lw          $a0, 0x0($v0)
/* 02B0B0 0042B0B0 00003025 */  move        $a2, $zero
/* 02B0B4 0042B0B4 8F99851C */  lw          $t9, %call16(foreach_obj)($gp)
/* 02B0B8 0042B0B8 8F8582AC */  lw          $a1, %got(_create_rt_proc_table)($gp)
/* 02B0BC 0042B0BC 0320F809 */  jalr        $t9
/* 02B0C0 0042B0C0 00000000 */   nop
/* 02B0C4 0042B0C4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02B0C8 0042B0C8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02B0CC 0042B0CC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02B0D0 0042B0D0 03E00008 */  jr          $ra
/* 02B0D4 0042B0D4 00000000 */   nop
/* 02B0D8 0042B0D8 00000000 */  nop
/* 02B0DC 0042B0DC 00000000 */  nop
