glabel split # 272
/* 02DF34 0042DF34 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02DF38 0042DF38 279C4E2C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE4E2C
/* 02DF3C 0042DF3C 0399E021 */  addu        $gp, $gp, $t9
/* 02DF40 0042DF40 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02DF44 0042DF44 8F998290 */  lw          $t9, %call16(obj_newstr)($gp)
/* 02DF48 0042DF48 AFBF0024 */  sw          $ra, 0x24($sp)
/* 02DF4C 0042DF4C AFB2001C */  sw          $s2, 0x1C($sp)
/* 02DF50 0042DF50 AFB10018 */  sw          $s1, 0x18($sp)
/* 02DF54 0042DF54 AFB00014 */  sw          $s0, 0x14($sp)
/* 02DF58 0042DF58 00A08025 */  move        $s0, $a1
/* 02DF5C 0042DF5C 00C09025 */  move        $s2, $a2
/* 02DF60 0042DF60 AFBC0020 */  sw          $gp, 0x20($sp)
/* 02DF64 0042DF64 AFA70034 */  sw          $a3, 0x34($sp)
/* 02DF68 0042DF68 0320F809 */  jalr        $t9
/* 02DF6C 0042DF6C 00008825 */   move       $s1, $zero
/* 02DF70 0042DF70 8FAE0034 */  lw          $t6, 0x34($sp)
/* 02DF74 0042DF74 24010001 */  addiu       $at, $zero, 0x1
/* 02DF78 0042DF78 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02DF7C 0042DF7C 15C10004 */  bne         $t6, $at, .L0042DF90
/* 02DF80 0042DF80 00402025 */   move       $a0, $v0
/* 02DF84 0042DF84 AE000000 */  sw          $zero, 0x0($s0)
/* 02DF88 0042DF88 26100004 */  addiu       $s0, $s0, 0x4
/* 02DF8C 0042DF8C 24110001 */  addiu       $s1, $zero, 0x1
.L0042DF90:
/* 02DF90 0042DF90 8F998160 */  lw          $t9, %call16(strtok)($gp)
/* 02DF94 0042DF94 02402825 */  move        $a1, $s2
/* 02DF98 0042DF98 0320F809 */  jalr        $t9
/* 02DF9C 0042DF9C 00000000 */   nop
/* 02DFA0 0042DFA0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02DFA4 0042DFA4 AE020000 */  sw          $v0, 0x0($s0)
/* 02DFA8 0042DFA8 10400013 */  beqz        $v0, .L0042DFF8
/* 02DFAC 0042DFAC 26100004 */   addiu      $s0, $s0, 0x4
/* 02DFB0 0042DFB0 8F998160 */  lw          $t9, %call16(strtok)($gp)
/* 02DFB4 0042DFB4 26310001 */  addiu       $s1, $s1, 0x1
/* 02DFB8 0042DFB8 00002025 */  move        $a0, $zero
/* 02DFBC 0042DFBC 0320F809 */  jalr        $t9
/* 02DFC0 0042DFC0 02402825 */   move       $a1, $s2
/* 02DFC4 0042DFC4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02DFC8 0042DFC8 AE020000 */  sw          $v0, 0x0($s0)
/* 02DFCC 0042DFCC 1040000A */  beqz        $v0, .L0042DFF8
/* 02DFD0 0042DFD0 26100004 */   addiu      $s0, $s0, 0x4
.L0042DFD4:
/* 02DFD4 0042DFD4 8F998160 */  lw          $t9, %call16(strtok)($gp)
/* 02DFD8 0042DFD8 00002025 */  move        $a0, $zero
/* 02DFDC 0042DFDC 02402825 */  move        $a1, $s2
/* 02DFE0 0042DFE0 0320F809 */  jalr        $t9
/* 02DFE4 0042DFE4 26310001 */   addiu      $s1, $s1, 0x1
/* 02DFE8 0042DFE8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02DFEC 0042DFEC AE020000 */  sw          $v0, 0x0($s0)
/* 02DFF0 0042DFF0 1440FFF8 */  bnez        $v0, .L0042DFD4
/* 02DFF4 0042DFF4 26100004 */   addiu      $s0, $s0, 0x4
.L0042DFF8:
/* 02DFF8 0042DFF8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02DFFC 0042DFFC 02201025 */  move        $v0, $s1
/* 02E000 0042E000 8FB10018 */  lw          $s1, 0x18($sp)
/* 02E004 0042E004 8FB00014 */  lw          $s0, 0x14($sp)
/* 02E008 0042E008 8FB2001C */  lw          $s2, 0x1C($sp)
/* 02E00C 0042E00C 03E00008 */  jr          $ra
/* 02E010 0042E010 27BD0028 */   addiu      $sp, $sp, 0x28
