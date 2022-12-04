.section .rodata
glabel STR_10007AEC
/* 047AEC 10007AEC */ .asciz "_procedure_table"
                      .balign 4

glabel STR_10007B00
/* 047B00 10007B00 */ .asciz "_procedure_table_size"
                      .balign 4


.section .text
glabel obj_find_procedure_table # 283
/* 02EE38 0042EE38 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02EE3C 0042EE3C 279C3F28 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE3F28
/* 02EE40 0042EE40 0399E021 */  addu        $gp, $gp, $t9
/* 02EE44 0042EE44 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02EE48 0042EE48 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 02EE4C 0042EE4C AFB00018 */  sw          $s0, 0x18($sp)
/* 02EE50 0042EE50 00808025 */  move        $s0, $a0
/* 02EE54 0042EE54 AFBF0024 */  sw          $ra, 0x24($sp)
/* 02EE58 0042EE58 AFBC0020 */  sw          $gp, 0x20($sp)
/* 02EE5C 0042EE5C AFB1001C */  sw          $s1, 0x1C($sp)
/* 02EE60 0042EE60 AFA5002C */  sw          $a1, 0x2C($sp)
/* 02EE64 0042EE64 AFA60030 */  sw          $a2, 0x30($sp)
/* 02EE68 0042EE68 0320F809 */  jalr        $t9
/* 02EE6C 0042EE6C 24040008 */   addiu      $a0, $zero, 0x8
/* 02EE70 0042EE70 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02EE74 0042EE74 00408825 */  move        $s1, $v0
/* 02EE78 0042EE78 00402025 */  move        $a0, $v0
/* 02EE7C 0042EE7C 8F99813C */  lw          $t9, %call16(memset)($gp)
/* 02EE80 0042EE80 00002825 */  move        $a1, $zero
/* 02EE84 0042EE84 24060008 */  addiu       $a2, $zero, 0x8
/* 02EE88 0042EE88 0320F809 */  jalr        $t9
/* 02EE8C 0042EE8C 00000000 */   nop
/* 02EE90 0042EE90 8FA4002C */  lw          $a0, 0x2C($sp)
/* 02EE94 0042EE94 8E0300FC */  lw          $v1, 0xFC($s0)
/* 02EE98 0042EE98 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02EE9C 0042EE9C 0083082B */  sltu        $at, $a0, $v1
/* 02EEA0 0042EEA0 14200006 */  bnez        $at, .L0042EEBC
/* 02EEA4 0042EEA4 00000000 */   nop
/* 02EEA8 0042EEA8 8E0E0100 */  lw          $t6, 0x100($s0)
/* 02EEAC 0042EEAC 006E7821 */  addu        $t7, $v1, $t6
/* 02EEB0 0042EEB0 01E4082B */  sltu        $at, $t7, $a0
/* 02EEB4 0042EEB4 10200003 */  beqz        $at, .L0042EEC4
/* 02EEB8 0042EEB8 00000000 */   nop
.L0042EEBC:
/* 02EEBC 0042EEBC 10000023 */  b           .L0042EF4C
/* 02EEC0 0042EEC0 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042EEC4:
/* 02EEC4 0042EEC4 8F9982D4 */  lw          $t9, %call16(obj_map_diff)($gp)
/* 02EEC8 0042EEC8 02002025 */  move        $a0, $s0
/* 02EECC 0042EECC 0320F809 */  jalr        $t9
/* 02EED0 0042EED0 00000000 */   nop
/* 02EED4 0042EED4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02EED8 0042EED8 02002025 */  move        $a0, $s0
/* 02EEDC 0042EEDC 00403025 */  move        $a2, $v0
/* 02EEE0 0042EEE0 8F9982A4 */  lw          $t9, %call16(obj_find_symbol_value)($gp)
/* 02EEE4 0042EEE4 8F85802C */  lw          $a1, %got(STR_10007AEC)($gp)
/* 02EEE8 0042EEE8 0320F809 */  jalr        $t9
/* 02EEEC 0042EEEC 24A57AEC */   addiu      $a1, $a1, %lo(STR_10007AEC)
/* 02EEF0 0042EEF0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02EEF4 0042EEF4 1440000C */  bnez        $v0, .L0042EF28
/* 02EEF8 0042EEF8 AE220000 */   sw         $v0, 0x0($s1)
/* 02EEFC 0042EEFC 8F9982AC */  lw          $t9, %call16(_create_rt_proc_table)($gp)
/* 02EF00 0042EF00 02002025 */  move        $a0, $s0
/* 02EF04 0042EF04 02202825 */  move        $a1, $s1
/* 02EF08 0042EF08 0320F809 */  jalr        $t9
/* 02EF0C 0042EF0C 00003025 */   move       $a2, $zero
/* 02EF10 0042EF10 8E380000 */  lw          $t8, 0x0($s1)
/* 02EF14 0042EF14 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02EF18 0042EF18 17000003 */  bnez        $t8, .L0042EF28
/* 02EF1C 0042EF1C 00000000 */   nop
/* 02EF20 0042EF20 1000000A */  b           .L0042EF4C
/* 02EF24 0042EF24 00001025 */   move       $v0, $zero
.L0042EF28:
/* 02EF28 0042EF28 8F9982A4 */  lw          $t9, %call16(obj_find_symbol_value)($gp)
/* 02EF2C 0042EF2C 8F85802C */  lw          $a1, %got(STR_10007B00)($gp)
/* 02EF30 0042EF30 02002025 */  move        $a0, $s0
/* 02EF34 0042EF34 00003025 */  move        $a2, $zero
/* 02EF38 0042EF38 0320F809 */  jalr        $t9
/* 02EF3C 0042EF3C 24A57B00 */   addiu      $a1, $a1, %lo(STR_10007B00)
/* 02EF40 0042EF40 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02EF44 0042EF44 AE220004 */  sw          $v0, 0x4($s1)
/* 02EF48 0042EF48 02201025 */  move        $v0, $s1
.L0042EF4C:
/* 02EF4C 0042EF4C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02EF50 0042EF50 8FB00018 */  lw          $s0, 0x18($sp)
/* 02EF54 0042EF54 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02EF58 0042EF58 03E00008 */  jr          $ra
/* 02EF5C 0042EF5C 27BD0028 */   addiu      $sp, $sp, 0x28
