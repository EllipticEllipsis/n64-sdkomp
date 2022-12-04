glabel obj_find_symbol_value # 282
/* 02ED24 0042ED24 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02ED28 0042ED28 279C403C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE403C
/* 02ED2C 0042ED2C 0399E021 */  addu        $gp, $gp, $t9
/* 02ED30 0042ED30 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02ED34 0042ED34 8F998288 */  lw          $t9, %call16(elfhash)($gp)
/* 02ED38 0042ED38 AFB00014 */  sw          $s0, 0x14($sp)
/* 02ED3C 0042ED3C 00808025 */  move        $s0, $a0
/* 02ED40 0042ED40 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02ED44 0042ED44 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02ED48 0042ED48 AFA5002C */  sw          $a1, 0x2C($sp)
/* 02ED4C 0042ED4C AFA60030 */  sw          $a2, 0x30($sp)
/* 02ED50 0042ED50 0320F809 */  jalr        $t9
/* 02ED54 0042ED54 00A02025 */   move       $a0, $a1
/* 02ED58 0042ED58 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02ED5C 0042ED5C 02002025 */  move        $a0, $s0
/* 02ED60 0042ED60 8FA5002C */  lw          $a1, 0x2C($sp)
/* 02ED64 0042ED64 8F9982A0 */  lw          $t9, %call16(search_symbol_using_hash)($gp)
/* 02ED68 0042ED68 00403025 */  move        $a2, $v0
/* 02ED6C 0042ED6C 0320F809 */  jalr        $t9
/* 02ED70 0042ED70 00000000 */   nop
/* 02ED74 0042ED74 2401FFFF */  addiu       $at, $zero, -0x1
/* 02ED78 0042ED78 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02ED7C 0042ED7C 14410003 */  bne         $v0, $at, .L0042ED8C
/* 02ED80 0042ED80 00402825 */   move       $a1, $v0
/* 02ED84 0042ED84 10000027 */  b           .L0042EE24
/* 02ED88 0042ED88 00001025 */   move       $v0, $zero
.L0042ED8C:
/* 02ED8C 0042ED8C 8F9983F0 */  lw          $t9, %call16(obj_sym_shndx)($gp)
/* 02ED90 0042ED90 02002025 */  move        $a0, $s0
/* 02ED94 0042ED94 AFA50024 */  sw          $a1, 0x24($sp)
/* 02ED98 0042ED98 0320F809 */  jalr        $t9
/* 02ED9C 0042ED9C 00000000 */   nop
/* 02EDA0 0042EDA0 3401FFF1 */  ori         $at, $zero, 0xFFF1
/* 02EDA4 0042EDA4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02EDA8 0042EDA8 14410007 */  bne         $v0, $at, .L0042EDC8
/* 02EDAC 0042EDAC 8FA50024 */   lw         $a1, 0x24($sp)
/* 02EDB0 0042EDB0 8F9983EC */  lw          $t9, %call16(obj_dynsym_value)($gp)
/* 02EDB4 0042EDB4 02002025 */  move        $a0, $s0
/* 02EDB8 0042EDB8 0320F809 */  jalr        $t9
/* 02EDBC 0042EDBC 00000000 */   nop
/* 02EDC0 0042EDC0 10000018 */  b           .L0042EE24
/* 02EDC4 0042EDC4 8FBC0018 */   lw         $gp, 0x18($sp)
.L0042EDC8:
/* 02EDC8 0042EDC8 8F99831C */  lw          $t9, %call16(obj_gotsym)($gp)
/* 02EDCC 0042EDCC 02002025 */  move        $a0, $s0
/* 02EDD0 0042EDD0 AFA50024 */  sw          $a1, 0x24($sp)
/* 02EDD4 0042EDD4 0320F809 */  jalr        $t9
/* 02EDD8 0042EDD8 00000000 */   nop
/* 02EDDC 0042EDDC 8FA50024 */  lw          $a1, 0x24($sp)
/* 02EDE0 0042EDE0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02EDE4 0042EDE4 00A2082B */  sltu        $at, $a1, $v0
/* 02EDE8 0042EDE8 10200009 */  beqz        $at, .L0042EE10
/* 02EDEC 0042EDEC 00000000 */   nop
/* 02EDF0 0042EDF0 8F9983EC */  lw          $t9, %call16(obj_dynsym_value)($gp)
/* 02EDF4 0042EDF4 02002025 */  move        $a0, $s0
/* 02EDF8 0042EDF8 0320F809 */  jalr        $t9
/* 02EDFC 0042EDFC 00000000 */   nop
/* 02EE00 0042EE00 8FAE0030 */  lw          $t6, 0x30($sp)
/* 02EE04 0042EE04 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02EE08 0042EE08 10000006 */  b           .L0042EE24
/* 02EE0C 0042EE0C 004E1023 */   subu       $v0, $v0, $t6
.L0042EE10:
/* 02EE10 0042EE10 8F99840C */  lw          $t9, %call16(obj_dynsym_got)($gp)
/* 02EE14 0042EE14 02002025 */  move        $a0, $s0
/* 02EE18 0042EE18 0320F809 */  jalr        $t9
/* 02EE1C 0042EE1C 00000000 */   nop
/* 02EE20 0042EE20 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042EE24:
/* 02EE24 0042EE24 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02EE28 0042EE28 8FB00014 */  lw          $s0, 0x14($sp)
/* 02EE2C 0042EE2C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02EE30 0042EE30 03E00008 */  jr          $ra
/* 02EE34 0042EE34 00000000 */   nop
