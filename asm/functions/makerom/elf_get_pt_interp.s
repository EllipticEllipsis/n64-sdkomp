glabel elf_get_pt_interp # 280
/* 02EA48 0042EA48 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02EA4C 0042EA4C 279C4318 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE4318
/* 02EA50 0042EA50 0399E021 */  addu        $gp, $gp, $t9
/* 02EA54 0042EA54 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02EA58 0042EA58 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02EA5C 0042EA5C AFBC0018 */  sw          $gp, 0x18($sp)
/* 02EA60 0042EA60 AFB00014 */  sw          $s0, 0x14($sp)
/* 02EA64 0042EA64 8C8200C4 */  lw          $v0, 0xC4($a0)
/* 02EA68 0042EA68 2401007F */  addiu       $at, $zero, 0x7F
/* 02EA6C 0042EA6C 00008025 */  move        $s0, $zero
/* 02EA70 0042EA70 904E0000 */  lbu         $t6, 0x0($v0)
/* 02EA74 0042EA74 55C10035 */  bnel        $t6, $at, .L0042EB4C
/* 02EA78 0042EA78 8FBF001C */   lw         $ra, 0x1C($sp)
/* 02EA7C 0042EA7C 904F0001 */  lbu         $t7, 0x1($v0)
/* 02EA80 0042EA80 24010045 */  addiu       $at, $zero, 0x45
/* 02EA84 0042EA84 55E10031 */  bnel        $t7, $at, .L0042EB4C
/* 02EA88 0042EA88 8FBF001C */   lw         $ra, 0x1C($sp)
/* 02EA8C 0042EA8C 90580002 */  lbu         $t8, 0x2($v0)
/* 02EA90 0042EA90 2401004C */  addiu       $at, $zero, 0x4C
/* 02EA94 0042EA94 5701002D */  bnel        $t8, $at, .L0042EB4C
/* 02EA98 0042EA98 8FBF001C */   lw         $ra, 0x1C($sp)
/* 02EA9C 0042EA9C 90590003 */  lbu         $t9, 0x3($v0)
/* 02EAA0 0042EAA0 24010046 */  addiu       $at, $zero, 0x46
/* 02EAA4 0042EAA4 57210029 */  bnel        $t9, $at, .L0042EB4C
/* 02EAA8 0042EAA8 8FBF001C */   lw         $ra, 0x1C($sp)
/* 02EAAC 0042EAAC 8F99842C */  lw          $t9, %call16(obj_pelfhdr)($gp)
/* 02EAB0 0042EAB0 AFA40028 */  sw          $a0, 0x28($sp)
/* 02EAB4 0042EAB4 0320F809 */  jalr        $t9
/* 02EAB8 0042EAB8 00000000 */   nop
/* 02EABC 0042EABC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02EAC0 0042EAC0 AFA20020 */  sw          $v0, 0x20($sp)
/* 02EAC4 0042EAC4 8FA40028 */  lw          $a0, 0x28($sp)
/* 02EAC8 0042EAC8 8F998430 */  lw          $t9, %call16(obj_pproghdr)($gp)
/* 02EACC 0042EACC 0320F809 */  jalr        $t9
/* 02EAD0 0042EAD0 00000000 */   nop
/* 02EAD4 0042EAD4 8FA90020 */  lw          $t1, 0x20($sp)
/* 02EAD8 0042EAD8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02EADC 0042EADC 00404025 */  move        $t0, $v0
/* 02EAE0 0042EAE0 9525002C */  lhu         $a1, 0x2C($t1)
/* 02EAE4 0042EAE4 00001825 */  move        $v1, $zero
/* 02EAE8 0042EAE8 00003025 */  move        $a2, $zero
/* 02EAEC 0042EAEC 10A00016 */  beqz        $a1, .L0042EB48
/* 02EAF0 0042EAF0 00402025 */   move       $a0, $v0
/* 02EAF4 0042EAF4 24070003 */  addiu       $a3, $zero, 0x3
.L0042EAF8:
/* 02EAF8 0042EAF8 8C8A0000 */  lw          $t2, 0x0($a0)
/* 02EAFC 0042EAFC 24630001 */  addiu       $v1, $v1, 0x1
/* 02EB00 0042EB00 0065082B */  sltu        $at, $v1, $a1
/* 02EB04 0042EB04 14EA000E */  bne         $a3, $t2, .L0042EB40
/* 02EB08 0042EB08 24840020 */   addiu      $a0, $a0, 0x20
/* 02EB0C 0042EB0C 8FAC0028 */  lw          $t4, 0x28($sp)
/* 02EB10 0042EB10 8F9980A0 */  lw          $t9, %call16(strcpy)($gp)
/* 02EB14 0042EB14 01065821 */  addu        $t3, $t0, $a2
/* 02EB18 0042EB18 8D620004 */  lw          $v0, 0x4($t3)
/* 02EB1C 0042EB1C 8F848030 */  lw          $a0, %got(B_1000F140)($gp)
/* 02EB20 0042EB20 8D8D00C4 */  lw          $t5, 0xC4($t4)
/* 02EB24 0042EB24 2484F140 */  addiu       $a0, $a0, %lo(B_1000F140)
/* 02EB28 0042EB28 0320F809 */  jalr        $t9
/* 02EB2C 0042EB2C 01A22821 */   addu       $a1, $t5, $v0
/* 02EB30 0042EB30 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02EB34 0042EB34 8F908030 */  lw          $s0, %got(B_1000F140)($gp)
/* 02EB38 0042EB38 10000003 */  b           .L0042EB48
/* 02EB3C 0042EB3C 2610F140 */   addiu      $s0, $s0, %lo(B_1000F140)
.L0042EB40:
/* 02EB40 0042EB40 1420FFED */  bnez        $at, .L0042EAF8
/* 02EB44 0042EB44 24C60020 */   addiu      $a2, $a2, 0x20
.L0042EB48:
/* 02EB48 0042EB48 8FBF001C */  lw          $ra, 0x1C($sp)
.L0042EB4C:
/* 02EB4C 0042EB4C 02001025 */  move        $v0, $s0
/* 02EB50 0042EB50 8FB00014 */  lw          $s0, 0x14($sp)
/* 02EB54 0042EB54 03E00008 */  jr          $ra
/* 02EB58 0042EB58 27BD0028 */   addiu      $sp, $sp, 0x28
