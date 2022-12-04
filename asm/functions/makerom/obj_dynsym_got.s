glabel obj_dynsym_got # 422
/* 02FB88 0042FB88 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02FB8C 0042FB8C 279C31D8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE31D8
/* 02FB90 0042FB90 0399E021 */  addu        $gp, $gp, $t9
/* 02FB94 0042FB94 8F99831C */  lw          $t9, %call16(obj_gotsym)($gp)
/* 02FB98 0042FB98 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02FB9C 0042FB9C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02FBA0 0042FBA0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02FBA4 0042FBA4 AFA40020 */  sw          $a0, 0x20($sp)
/* 02FBA8 0042FBA8 0320F809 */  jalr        $t9
/* 02FBAC 0042FBAC AFA50024 */   sw         $a1, 0x24($sp)
/* 02FBB0 0042FBB0 8FA50024 */  lw          $a1, 0x24($sp)
/* 02FBB4 0042FBB4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FBB8 0042FBB8 00A2082B */  sltu        $at, $a1, $v0
/* 02FBBC 0042FBBC 10200007 */  beqz        $at, .L0042FBDC
/* 02FBC0 0042FBC0 00000000 */   nop
/* 02FBC4 0042FBC4 8F9983EC */  lw          $t9, %call16(obj_dynsym_value)($gp)
/* 02FBC8 0042FBC8 8FA40020 */  lw          $a0, 0x20($sp)
/* 02FBCC 0042FBCC 0320F809 */  jalr        $t9
/* 02FBD0 0042FBD0 00000000 */   nop
/* 02FBD4 0042FBD4 1000000F */  b           .L0042FC14
/* 02FBD8 0042FBD8 8FBC0018 */   lw         $gp, 0x18($sp)
.L0042FBDC:
/* 02FBDC 0042FBDC 8F99831C */  lw          $t9, %call16(obj_gotsym)($gp)
/* 02FBE0 0042FBE0 8FA40020 */  lw          $a0, 0x20($sp)
/* 02FBE4 0042FBE4 0320F809 */  jalr        $t9
/* 02FBE8 0042FBE8 00000000 */   nop
/* 02FBEC 0042FBEC 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02FBF0 0042FBF0 8FA50024 */  lw          $a1, 0x24($sp)
/* 02FBF4 0042FBF4 00024080 */  sll         $t0, $v0, 2
/* 02FBF8 0042FBF8 8DCF012C */  lw          $t7, 0x12C($t6)
/* 02FBFC 0042FBFC 0005C080 */  sll         $t8, $a1, 2
/* 02FC00 0042FC00 00084823 */  negu        $t1, $t0
/* 02FC04 0042FC04 01F8C821 */  addu        $t9, $t7, $t8
/* 02FC08 0042FC08 03295021 */  addu        $t2, $t9, $t1
/* 02FC0C 0042FC0C 8D420000 */  lw          $v0, 0x0($t2)
/* 02FC10 0042FC10 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042FC14:
/* 02FC14 0042FC14 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02FC18 0042FC18 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02FC1C 0042FC1C 03E00008 */  jr          $ra
/* 02FC20 0042FC20 00000000 */   nop
