glabel ldaclose # 233
/* 02ABAC 0042ABAC 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02ABB0 0042ABB0 279C81B4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE81B4
/* 02ABB4 0042ABB4 0399E021 */  addu        $gp, $gp, $t9
/* 02ABB8 0042ABB8 8F99824C */  lw          $t9, %call16(vldldptr)($gp)
/* 02ABBC 0042ABBC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02ABC0 0042ABC0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02ABC4 0042ABC4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02ABC8 0042ABC8 0320F809 */  jalr        $t9
/* 02ABCC 0042ABCC AFA40020 */   sw         $a0, 0x20($sp)
/* 02ABD0 0042ABD0 14400003 */  bnez        $v0, .L0042ABE0
/* 02ABD4 0042ABD4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02ABD8 0042ABD8 1000000C */  b           .L0042AC0C
/* 02ABDC 0042ABDC 00001025 */   move       $v0, $zero
.L0042ABE0:
/* 02ABE0 0042ABE0 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02ABE4 0042ABE4 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02ABE8 0042ABE8 0320F809 */  jalr        $t9
/* 02ABEC 0042ABEC 8DC40004 */   lw         $a0, 0x4($t6)
/* 02ABF0 0042ABF0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02ABF4 0042ABF4 8FA40020 */  lw          $a0, 0x20($sp)
/* 02ABF8 0042ABF8 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02ABFC 0042ABFC 0320F809 */  jalr        $t9
/* 02AC00 0042AC00 00000000 */   nop
/* 02AC04 0042AC04 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AC08 0042AC08 24020001 */  addiu       $v0, $zero, 0x1
.L0042AC0C:
/* 02AC0C 0042AC0C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02AC10 0042AC10 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02AC14 0042AC14 03E00008 */  jr          $ra
/* 02AC18 0042AC18 00000000 */   nop
