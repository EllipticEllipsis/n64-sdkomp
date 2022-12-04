.section .rodata
glabel STR_10006CB0
/* 046CB0 10006CB0 */ .asciz "MAIN__"
                      .balign 4


.section .text
glabel change_fortran_names # 243
/* 02B178 0042B178 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02B17C 0042B17C 279C7BE8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE7BE8
/* 02B180 0042B180 0399E021 */  addu        $gp, $gp, $t9
/* 02B184 0042B184 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 02B188 0042B188 AFBF0034 */  sw          $ra, 0x34($sp)
/* 02B18C 0042B18C AFBC0030 */  sw          $gp, 0x30($sp)
/* 02B190 0042B190 AFB6002C */  sw          $s6, 0x2C($sp)
/* 02B194 0042B194 AFB50028 */  sw          $s5, 0x28($sp)
/* 02B198 0042B198 AFB40024 */  sw          $s4, 0x24($sp)
/* 02B19C 0042B19C AFB30020 */  sw          $s3, 0x20($sp)
/* 02B1A0 0042B1A0 AFB2001C */  sw          $s2, 0x1C($sp)
/* 02B1A4 0042B1A4 AFB10018 */  sw          $s1, 0x18($sp)
/* 02B1A8 0042B1A8 AFB00014 */  sw          $s0, 0x14($sp)
/* 02B1AC 0042B1AC 8C82009C */  lw          $v0, 0x9C($a0)
/* 02B1B0 0042B1B0 00809025 */  move        $s2, $a0
/* 02B1B4 0042B1B4 0000A025 */  move        $s4, $zero
/* 02B1B8 0042B1B8 50400080 */  beql        $v0, $zero, .L0042B3BC
/* 02B1BC 0042B1BC 8FBF0034 */   lw         $ra, 0x34($sp)
/* 02B1C0 0042B1C0 8C9100D0 */  lw          $s1, 0xD0($a0)
/* 02B1C4 0042B1C4 8C4E0048 */  lw          $t6, 0x48($v0)
/* 02B1C8 0042B1C8 24160002 */  addiu       $s6, $zero, 0x2
/* 02B1CC 0042B1CC 24150048 */  addiu       $s5, $zero, 0x48
/* 02B1D0 0042B1D0 022E7821 */  addu        $t7, $s1, $t6
/* 02B1D4 0042B1D4 022F082B */  sltu        $at, $s1, $t7
/* 02B1D8 0042B1D8 1020003D */  beqz        $at, .L0042B2D0
/* 02B1DC 0042B1DC 2413005F */   addiu      $s3, $zero, 0x5F
.L0042B1E0:
/* 02B1E0 0042B1E0 8F998500 */  lw          $t9, %call16(file_lang)($gp)
/* 02B1E4 0042B1E4 02402025 */  move        $a0, $s2
/* 02B1E8 0042B1E8 02202825 */  move        $a1, $s1
/* 02B1EC 0042B1EC 0320F809 */  jalr        $t9
/* 02B1F0 0042B1F0 00000000 */   nop
/* 02B1F4 0042B1F4 1456002E */  bne         $v0, $s6, .L0042B2B0
/* 02B1F8 0042B1F8 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02B1FC 0042B1FC 8F99850C */  lw          $t9, %call16(file_string_base)($gp)
/* 02B200 0042B200 02402025 */  move        $a0, $s2
/* 02B204 0042B204 02202825 */  move        $a1, $s1
/* 02B208 0042B208 0320F809 */  jalr        $t9
/* 02B20C 0042B20C 00000000 */   nop
/* 02B210 0042B210 8E4900D0 */  lw          $t1, 0xD0($s2)
/* 02B214 0042B214 8E5800A0 */  lw          $t8, 0xA0($s2)
/* 02B218 0042B218 0011C8C0 */  sll         $t9, $s1, 3
/* 02B21C 0042B21C 01350019 */  multu       $t1, $s5
/* 02B220 0042B220 0331C821 */  addu        $t9, $t9, $s1
/* 02B224 0042B224 0019C8C0 */  sll         $t9, $t9, 3
/* 02B228 0042B228 03194021 */  addu        $t0, $t8, $t9
/* 02B22C 0042B22C 00401825 */  move        $v1, $v0
/* 02B230 0042B230 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02B234 0042B234 00421023 */  subu        $v0, $v0, $v0
/* 02B238 0042B238 26940001 */  addiu       $s4, $s4, 0x1
/* 02B23C 0042B23C 00005012 */  mflo        $t2
/* 02B240 0042B240 000A5823 */  negu        $t3, $t2
/* 02B244 0042B244 010B6021 */  addu        $t4, $t0, $t3
/* 02B248 0042B248 8D84000C */  lw          $a0, 0xC($t4)
/* 02B24C 0042B24C 18800018 */  blez        $a0, .L0042B2B0
/* 02B250 0042B250 00000000 */   nop
.L0042B254:
/* 02B254 0042B254 806D0000 */  lb          $t5, 0x0($v1)
/* 02B258 0042B258 24420001 */  addiu       $v0, $v0, 0x1
/* 02B25C 0042B25C 566D0012 */  bnel        $s3, $t5, .L0042B2A8
/* 02B260 0042B260 0044082A */   slt        $at, $v0, $a0
/* 02B264 0042B264 806E0001 */  lb          $t6, 0x1($v1)
/* 02B268 0042B268 0011C0C0 */  sll         $t8, $s1, 3
/* 02B26C 0042B26C 0311C021 */  addu        $t8, $t8, $s1
/* 02B270 0042B270 55C0000D */  bnel        $t6, $zero, .L0042B2A8
/* 02B274 0042B274 0044082A */   slt        $at, $v0, $a0
/* 02B278 0042B278 A0600000 */  sb          $zero, 0x0($v1)
/* 02B27C 0042B27C 8E4900D0 */  lw          $t1, 0xD0($s2)
/* 02B280 0042B280 8E4F00A0 */  lw          $t7, 0xA0($s2)
/* 02B284 0042B284 0018C0C0 */  sll         $t8, $t8, 3
/* 02B288 0042B288 000950C0 */  sll         $t2, $t1, 3
/* 02B28C 0042B28C 01495021 */  addu        $t2, $t2, $t1
/* 02B290 0042B290 000A50C0 */  sll         $t2, $t2, 3
/* 02B294 0042B294 000A4023 */  negu        $t0, $t2
/* 02B298 0042B298 01F8C821 */  addu        $t9, $t7, $t8
/* 02B29C 0042B29C 03285821 */  addu        $t3, $t9, $t0
/* 02B2A0 0042B2A0 8D64000C */  lw          $a0, 0xC($t3)
/* 02B2A4 0042B2A4 0044082A */  slt         $at, $v0, $a0
.L0042B2A8:
/* 02B2A8 0042B2A8 1420FFEA */  bnez        $at, .L0042B254
/* 02B2AC 0042B2AC 24630001 */   addiu      $v1, $v1, 0x1
.L0042B2B0:
/* 02B2B0 0042B2B0 8E42009C */  lw          $v0, 0x9C($s2)
/* 02B2B4 0042B2B4 8E4C00D0 */  lw          $t4, 0xD0($s2)
/* 02B2B8 0042B2B8 26310001 */  addiu       $s1, $s1, 0x1
/* 02B2BC 0042B2BC 8C4D0048 */  lw          $t5, 0x48($v0)
/* 02B2C0 0042B2C0 018D7021 */  addu        $t6, $t4, $t5
/* 02B2C4 0042B2C4 022E082B */  sltu        $at, $s1, $t6
/* 02B2C8 0042B2C8 1420FFC5 */  bnez        $at, .L0042B1E0
/* 02B2CC 0042B2CC 00000000 */   nop
.L0042B2D0:
/* 02B2D0 0042B2D0 2413005F */  addiu       $s3, $zero, 0x5F
/* 02B2D4 0042B2D4 12800038 */  beqz        $s4, .L0042B3B8
/* 02B2D8 0042B2D8 24160002 */   addiu      $s6, $zero, 0x2
/* 02B2DC 0042B2DC 8E5100D8 */  lw          $s1, 0xD8($s2)
/* 02B2E0 0042B2E0 8C4F0058 */  lw          $t7, 0x58($v0)
/* 02B2E4 0042B2E4 022FC021 */  addu        $t8, $s1, $t7
/* 02B2E8 0042B2E8 0238082B */  sltu        $at, $s1, $t8
/* 02B2EC 0042B2EC 50200033 */  beql        $at, $zero, .L0042B3BC
/* 02B2F0 0042B2F0 8FBF0034 */   lw         $ra, 0x34($sp)
/* 02B2F4 0042B2F4 8F94802C */  lw          $s4, %got(STR_10006CB0)($gp)
/* 02B2F8 0042B2F8 26946CB0 */  addiu       $s4, $s4, %lo(STR_10006CB0)
.L0042B2FC:
/* 02B2FC 0042B2FC 8F9984F0 */  lw          $t9, %call16(symbol_to_file)($gp)
/* 02B300 0042B300 02402025 */  move        $a0, $s2
/* 02B304 0042B304 02202825 */  move        $a1, $s1
/* 02B308 0042B308 0320F809 */  jalr        $t9
/* 02B30C 0042B30C 00000000 */   nop
/* 02B310 0042B310 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02B314 0042B314 02402025 */  move        $a0, $s2
/* 02B318 0042B318 00402825 */  move        $a1, $v0
/* 02B31C 0042B31C 8F998500 */  lw          $t9, %call16(file_lang)($gp)
/* 02B320 0042B320 0320F809 */  jalr        $t9
/* 02B324 0042B324 00000000 */   nop
/* 02B328 0042B328 1456001B */  bne         $v0, $s6, .L0042B398
/* 02B32C 0042B32C 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02B330 0042B330 8F998590 */  lw          $t9, %call16(symbol_name)($gp)
/* 02B334 0042B334 02402025 */  move        $a0, $s2
/* 02B338 0042B338 02202825 */  move        $a1, $s1
/* 02B33C 0042B33C 0320F809 */  jalr        $t9
/* 02B340 0042B340 00000000 */   nop
/* 02B344 0042B344 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02B348 0042B348 00408025 */  move        $s0, $v0
/* 02B34C 0042B34C 00402025 */  move        $a0, $v0
/* 02B350 0042B350 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 02B354 0042B354 02802825 */  move        $a1, $s4
/* 02B358 0042B358 0320F809 */  jalr        $t9
/* 02B35C 0042B35C 00000000 */   nop
/* 02B360 0042B360 1040000D */  beqz        $v0, .L0042B398
/* 02B364 0042B364 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02B368 0042B368 82090000 */  lb          $t1, 0x0($s0)
/* 02B36C 0042B36C 51200006 */  beql        $t1, $zero, .L0042B388
/* 02B370 0042B370 8219FFFF */   lb         $t9, -0x1($s0)
/* 02B374 0042B374 820A0001 */  lb          $t2, 0x1($s0)
.L0042B378:
/* 02B378 0042B378 26100001 */  addiu       $s0, $s0, 0x1
/* 02B37C 0042B37C 5540FFFE */  bnel        $t2, $zero, .L0042B378
/* 02B380 0042B380 820A0001 */   lb         $t2, 0x1($s0)
/* 02B384 0042B384 8219FFFF */  lb          $t9, -0x1($s0)
.L0042B388:
/* 02B388 0042B388 2610FFFF */  addiu       $s0, $s0, -0x1
/* 02B38C 0042B38C 56790003 */  bnel        $s3, $t9, .L0042B39C
/* 02B390 0042B390 8E4B009C */   lw         $t3, 0x9C($s2)
/* 02B394 0042B394 A2000000 */  sb          $zero, 0x0($s0)
.L0042B398:
/* 02B398 0042B398 8E4B009C */  lw          $t3, 0x9C($s2)
.L0042B39C:
/* 02B39C 0042B39C 8E4800D8 */  lw          $t0, 0xD8($s2)
/* 02B3A0 0042B3A0 26310001 */  addiu       $s1, $s1, 0x1
/* 02B3A4 0042B3A4 8D6C0058 */  lw          $t4, 0x58($t3)
/* 02B3A8 0042B3A8 010C6821 */  addu        $t5, $t0, $t4
/* 02B3AC 0042B3AC 022D082B */  sltu        $at, $s1, $t5
/* 02B3B0 0042B3B0 1420FFD2 */  bnez        $at, .L0042B2FC
/* 02B3B4 0042B3B4 00000000 */   nop
.L0042B3B8:
/* 02B3B8 0042B3B8 8FBF0034 */  lw          $ra, 0x34($sp)
.L0042B3BC:
/* 02B3BC 0042B3BC 8FB00014 */  lw          $s0, 0x14($sp)
/* 02B3C0 0042B3C0 8FB10018 */  lw          $s1, 0x18($sp)
/* 02B3C4 0042B3C4 8FB2001C */  lw          $s2, 0x1C($sp)
/* 02B3C8 0042B3C8 8FB30020 */  lw          $s3, 0x20($sp)
/* 02B3CC 0042B3CC 8FB40024 */  lw          $s4, 0x24($sp)
/* 02B3D0 0042B3D0 8FB50028 */  lw          $s5, 0x28($sp)
/* 02B3D4 0042B3D4 8FB6002C */  lw          $s6, 0x2C($sp)
/* 02B3D8 0042B3D8 03E00008 */  jr          $ra
/* 02B3DC 0042B3DC 27BD0038 */   addiu      $sp, $sp, 0x38
