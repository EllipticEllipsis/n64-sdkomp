glabel obj_get_magic # 277
/* 02E86C 0042E86C 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02E870 0042E870 279C44F4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE44F4
/* 02E874 0042E874 0399E021 */  addu        $gp, $gp, $t9
/* 02E878 0042E878 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 02E87C 0042E87C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02E880 0042E880 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02E884 0042E884 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02E888 0042E888 0320F809 */  jalr        $t9
/* 02E88C 0042E88C AFA40020 */   sw         $a0, 0x20($sp)
/* 02E890 0042E890 24010002 */  addiu       $at, $zero, 0x2
/* 02E894 0042E894 1441000E */  bne         $v0, $at, .L0042E8D0
/* 02E898 0042E898 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02E89C 0042E89C 8F9982B8 */  lw          $t9, %call16(obj_paouthdr)($gp)
/* 02E8A0 0042E8A0 8FA40020 */  lw          $a0, 0x20($sp)
/* 02E8A4 0042E8A4 0320F809 */  jalr        $t9
/* 02E8A8 0042E8A8 00000000 */   nop
/* 02E8AC 0042E8AC 10400011 */  beqz        $v0, .L0042E8F4
/* 02E8B0 0042E8B0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02E8B4 0042E8B4 8F9982B8 */  lw          $t9, %call16(obj_paouthdr)($gp)
/* 02E8B8 0042E8B8 8FA40020 */  lw          $a0, 0x20($sp)
/* 02E8BC 0042E8BC 0320F809 */  jalr        $t9
/* 02E8C0 0042E8C0 00000000 */   nop
/* 02E8C4 0042E8C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02E8C8 0042E8C8 1000000B */  b           .L0042E8F8
/* 02E8CC 0042E8CC 84420000 */   lh         $v0, 0x0($v0)
.L0042E8D0:
/* 02E8D0 0042E8D0 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 02E8D4 0042E8D4 8FA40020 */  lw          $a0, 0x20($sp)
/* 02E8D8 0042E8D8 0320F809 */  jalr        $t9
/* 02E8DC 0042E8DC 00000000 */   nop
/* 02E8E0 0042E8E0 24010003 */  addiu       $at, $zero, 0x3
/* 02E8E4 0042E8E4 14410003 */  bne         $v0, $at, .L0042E8F4
/* 02E8E8 0042E8E8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02E8EC 0042E8EC 10000002 */  b           .L0042E8F8
/* 02E8F0 0042E8F0 2402010B */   addiu      $v0, $zero, 0x10B
.L0042E8F4:
/* 02E8F4 0042E8F4 00001025 */  move        $v0, $zero
.L0042E8F8:
/* 02E8F8 0042E8F8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02E8FC 0042E8FC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02E900 0042E900 03E00008 */  jr          $ra
/* 02E904 0042E904 00000000 */   nop
