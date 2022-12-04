glabel symbol_iaux # 593
/* 03B23C 0043B23C 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03B240 0043B240 279C7B24 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD7B24
/* 03B244 0043B244 0399E021 */  addu        $gp, $gp, $t9
/* 03B248 0043B248 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03B24C 0043B24C AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B250 0043B250 04A1000F */  bgez        $a1, .L0043B290
/* 03B254 0043B254 AFBC0018 */   sw         $gp, 0x18($sp)
/* 03B258 0043B258 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B25C 0043B25C 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B260 0043B260 10A1000B */  beq         $a1, $at, .L0043B290
/* 03B264 0043B264 00057023 */   negu       $t6, $a1
/* 03B268 0043B268 8F9887D4 */  lw          $t8, %got(usersymbol)($gp)
/* 03B26C 0043B26C 000E7880 */  sll         $t7, $t6, 2
/* 03B270 0043B270 01EE7823 */  subu        $t7, $t7, $t6
/* 03B274 0043B274 000F7880 */  sll         $t7, $t7, 2
/* 03B278 0043B278 01F8C821 */  addu        $t9, $t7, $t8
/* 03B27C 0043B27C 8F230008 */  lw          $v1, 0x8($t9)
/* 03B280 0043B280 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B284 0043B284 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B288 0043B288 10000039 */  b           .L0043B370
/* 03B28C 0043B28C 00611024 */   and        $v0, $v1, $at
.L0043B290:
/* 03B290 0043B290 8C8600D8 */  lw          $a2, 0xD8($a0)
/* 03B294 0043B294 00054900 */  sll         $t1, $a1, 4
/* 03B298 0043B298 00A6082B */  sltu        $at, $a1, $a2
/* 03B29C 0043B29C 1420000D */  bnez        $at, .L0043B2D4
/* 03B2A0 0043B2A0 00065900 */   sll        $t3, $a2, 4
/* 03B2A4 0043B2A4 8C8800AC */  lw          $t0, 0xAC($a0)
/* 03B2A8 0043B2A8 000B6023 */  negu        $t4, $t3
/* 03B2AC 0043B2AC 8C8E00D0 */  lw          $t6, 0xD0($a0)
/* 03B2B0 0043B2B0 01095021 */  addu        $t2, $t0, $t1
/* 03B2B4 0043B2B4 014C1021 */  addu        $v0, $t2, $t4
/* 03B2B8 0043B2B8 8C43000C */  lw          $v1, 0xC($v0)
/* 03B2BC 0043B2BC 944D0002 */  lhu         $t5, 0x2($v0)
/* 03B2C0 0043B2C0 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B2C4 0043B2C4 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B2C8 0043B2C8 00611824 */  and         $v1, $v1, $at
/* 03B2CC 0043B2CC 10000019 */  b           .L0043B334
/* 03B2D0 0043B2D0 01AE3821 */   addu       $a3, $t5, $t6
.L0043B2D4:
/* 03B2D4 0043B2D4 8F9984F0 */  lw          $t9, %call16(symbol_to_file)($gp)
/* 03B2D8 0043B2D8 AFA40028 */  sw          $a0, 0x28($sp)
/* 03B2DC 0043B2DC AFA5002C */  sw          $a1, 0x2C($sp)
/* 03B2E0 0043B2E0 0320F809 */  jalr        $t9
/* 03B2E4 0043B2E4 00000000 */   nop
/* 03B2E8 0043B2E8 8FA40028 */  lw          $a0, 0x28($sp)
/* 03B2EC 0043B2EC 8FA5002C */  lw          $a1, 0x2C($sp)
/* 03B2F0 0043B2F0 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B2F4 0043B2F4 8C8800CC */  lw          $t0, 0xCC($a0)
/* 03B2F8 0043B2F8 8C8F00A8 */  lw          $t7, 0xA8($a0)
/* 03B2FC 0043B2FC 0005C080 */  sll         $t8, $a1, 2
/* 03B300 0043B300 00084880 */  sll         $t1, $t0, 2
/* 03B304 0043B304 0305C023 */  subu        $t8, $t8, $a1
/* 03B308 0043B308 01284823 */  subu        $t1, $t1, $t0
/* 03B30C 0043B30C 00094880 */  sll         $t1, $t1, 2
/* 03B310 0043B310 0018C080 */  sll         $t8, $t8, 2
/* 03B314 0043B314 00095823 */  negu        $t3, $t1
/* 03B318 0043B318 01F8C821 */  addu        $t9, $t7, $t8
/* 03B31C 0043B31C 032B5021 */  addu        $t2, $t9, $t3
/* 03B320 0043B320 8D430008 */  lw          $v1, 0x8($t2)
/* 03B324 0043B324 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B328 0043B328 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B32C 0043B32C 00403825 */  move        $a3, $v0
/* 03B330 0043B330 00611824 */  and         $v1, $v1, $at
.L0043B334:
/* 03B334 0043B334 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B338 0043B338 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B33C 0043B33C 14610003 */  bne         $v1, $at, .L0043B34C
/* 03B340 0043B340 3C02000F */   lui        $v0, (0xFFFFF >> 16)
/* 03B344 0043B344 1000000A */  b           .L0043B370
/* 03B348 0043B348 3442FFFF */   ori        $v0, $v0, (0xFFFFF & 0xFFFF)
.L0043B34C:
/* 03B34C 0043B34C 8F998508 */  lw          $t9, %call16(file_type_base)($gp)
/* 03B350 0043B350 00E02825 */  move        $a1, $a3
/* 03B354 0043B354 AFA30024 */  sw          $v1, 0x24($sp)
/* 03B358 0043B358 0320F809 */  jalr        $t9
/* 03B35C 0043B35C 00000000 */   nop
/* 03B360 0043B360 8FA30024 */  lw          $v1, 0x24($sp)
/* 03B364 0043B364 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B368 0043B368 00621821 */  addu        $v1, $v1, $v0
/* 03B36C 0043B36C 00601025 */  move        $v0, $v1
.L0043B370:
/* 03B370 0043B370 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03B374 0043B374 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03B378 0043B378 03E00008 */  jr          $ra
/* 03B37C 0043B37C 00000000 */   nop
