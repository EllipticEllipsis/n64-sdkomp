glabel aux_isym # 627
/* 03DBF8 0043DBF8 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03DBFC 0043DBFC 279C5168 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD5168
/* 03DC00 0043DC00 0399E021 */  addu        $gp, $gp, $t9
/* 03DC04 0043DC04 8F9984F4 */  lw          $t9, %call16(type_to_file)($gp)
/* 03DC08 0043DC08 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03DC0C 0043DC0C AFBF001C */  sw          $ra, 0x1C($sp)
/* 03DC10 0043DC10 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03DC14 0043DC14 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03DC18 0043DC18 0320F809 */  jalr        $t9
/* 03DC1C 0043DC1C AFA40028 */   sw         $a0, 0x28($sp)
/* 03DC20 0043DC20 8FA40028 */  lw          $a0, 0x28($sp)
/* 03DC24 0043DC24 8FAF002C */  lw          $t7, 0x2C($sp)
/* 03DC28 0043DC28 3C06000F */  lui         $a2, (0xFFFFF >> 16)
/* 03DC2C 0043DC2C 8C8800C8 */  lw          $t0, 0xC8($a0)
/* 03DC30 0043DC30 8C8E00C0 */  lw          $t6, 0xC0($a0)
/* 03DC34 0043DC34 000FC080 */  sll         $t8, $t7, 2
/* 03DC38 0043DC38 00084880 */  sll         $t1, $t0, 2
/* 03DC3C 0043DC3C 00095023 */  negu        $t2, $t1
/* 03DC40 0043DC40 01D8C821 */  addu        $t9, $t6, $t8
/* 03DC44 0043DC44 032A5821 */  addu        $t3, $t9, $t2
/* 03DC48 0043DC48 8D630000 */  lw          $v1, 0x0($t3)
/* 03DC4C 0043DC4C 34C6FFFF */  ori         $a2, $a2, (0xFFFFF & 0xFFFF)
/* 03DC50 0043DC50 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DC54 0043DC54 14660003 */  bne         $v1, $a2, .L0043DC64
/* 03DC58 0043DC58 00402825 */   move       $a1, $v0
/* 03DC5C 0043DC5C 10000009 */  b           .L0043DC84
/* 03DC60 0043DC60 00C01025 */   move       $v0, $a2
.L0043DC64:
/* 03DC64 0043DC64 8F9984FC */  lw          $t9, %call16(file_symbol)($gp)
/* 03DC68 0043DC68 AFA30020 */  sw          $v1, 0x20($sp)
/* 03DC6C 0043DC6C 0320F809 */  jalr        $t9
/* 03DC70 0043DC70 00000000 */   nop
/* 03DC74 0043DC74 8FA30020 */  lw          $v1, 0x20($sp)
/* 03DC78 0043DC78 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DC7C 0043DC7C 00621821 */  addu        $v1, $v1, $v0
/* 03DC80 0043DC80 00601025 */  move        $v0, $v1
.L0043DC84:
/* 03DC84 0043DC84 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03DC88 0043DC88 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03DC8C 0043DC8C 03E00008 */  jr          $ra
/* 03DC90 0043DC90 00000000 */   nop
