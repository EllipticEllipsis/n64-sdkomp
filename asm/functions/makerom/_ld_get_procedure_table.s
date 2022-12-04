glabel _ld_get_procedure_table # 238
/* 02B014 0042B014 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02B018 0042B018 279C7D4C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE7D4C
/* 02B01C 0042B01C 0399E021 */  addu        $gp, $gp, $t9
/* 02B020 0042B020 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02B024 0042B024 8F998454 */  lw          $t9, %call16(obj_rld_map)($gp)
/* 02B028 0042B028 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02B02C 0042B02C AFBC0018 */  sw          $gp, 0x18($sp)
/* 02B030 0042B030 AFA40020 */  sw          $a0, 0x20($sp)
/* 02B034 0042B034 0320F809 */  jalr        $t9
/* 02B038 0042B038 8CA4002C */   lw         $a0, 0x2C($a1)
/* 02B03C 0042B03C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02B040 0042B040 8C440000 */  lw          $a0, 0x0($v0)
/* 02B044 0042B044 8FA60020 */  lw          $a2, 0x20($sp)
/* 02B048 0042B048 8F99851C */  lw          $t9, %call16(foreach_obj)($gp)
/* 02B04C 0042B04C 8F8582A8 */  lw          $a1, %got(obj_find_procedure_table)($gp)
/* 02B050 0042B050 0320F809 */  jalr        $t9
/* 02B054 0042B054 00000000 */   nop
/* 02B058 0042B058 2401FFFF */  addiu       $at, $zero, -0x1
/* 02B05C 0042B05C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02B060 0042B060 14410003 */  bne         $v0, $at, .L0042B070
/* 02B064 0042B064 00401825 */   move       $v1, $v0
/* 02B068 0042B068 10000002 */  b           .L0042B074
/* 02B06C 0042B06C 00001025 */   move       $v0, $zero
.L0042B070:
/* 02B070 0042B070 00601025 */  move        $v0, $v1
.L0042B074:
/* 02B074 0042B074 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02B078 0042B078 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02B07C 0042B07C 03E00008 */  jr          $ra
/* 02B080 0042B080 00000000 */   nop
