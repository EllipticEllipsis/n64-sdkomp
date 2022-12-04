glabel func_0043DDCC # 630
/* 03DDCC 0043DDCC 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03DDD0 0043DDD0 279C4F94 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD4F94
/* 03DDD4 0043DDD4 0399E021 */  addu        $gp, $gp, $t9
/* 03DDD8 0043DDD8 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 03DDDC 0043DDDC 8F998024 */  lw          $t9, %got(func_0043DBB0)($gp)
/* 03DDE0 0043DDE0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03DDE4 0043DDE4 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03DDE8 0043DDE8 AFB1001C */  sw          $s1, 0x1C($sp)
/* 03DDEC 0043DDEC AFB00018 */  sw          $s0, 0x18($sp)
/* 03DDF0 0043DDF0 AFA60050 */  sw          $a2, 0x50($sp)
/* 03DDF4 0043DDF4 8CA60028 */  lw          $a2, 0x28($a1)
/* 03DDF8 0043DDF8 2739DBB0 */  addiu       $t9, $t9, %lo(func_0043DBB0)
/* 03DDFC 0043DDFC 00808025 */  move        $s0, $a0
/* 03DE00 0043DE00 00A08825 */  move        $s1, $a1
/* 03DE04 0043DE04 0320F809 */  jalr        $t9
/* 03DE08 0043DE08 AFA60030 */   sw         $a2, 0x30($sp)
/* 03DE0C 0043DE0C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03DE10 0043DE10 8C460000 */  lw          $a2, 0x0($v0)
/* 03DE14 0043DE14 24580004 */  addiu       $t8, $v0, 0x4
/* 03DE18 0043DE18 8F998024 */  lw          $t9, %got(func_0043DD14)($gp)
/* 03DE1C 0043DE1C AFB80044 */  sw          $t8, 0x44($sp)
/* 03DE20 0043DE20 27A4002C */  addiu       $a0, $sp, 0x2C
/* 03DE24 0043DE24 2739DD14 */  addiu       $t9, $t9, %lo(func_0043DD14)
/* 03DE28 0043DE28 02002825 */  move        $a1, $s0
/* 03DE2C 0043DE2C 24070001 */  addiu       $a3, $zero, 0x1
/* 03DE30 0043DE30 0320F809 */  jalr        $t9
/* 03DE34 0043DE34 AFA60008 */   sw         $a2, 0x8($sp)
/* 03DE38 0043DE38 27A4002C */  addiu       $a0, $sp, 0x2C
/* 03DE3C 0043DE3C 8C890000 */  lw          $t1, 0x0($a0)
/* 03DE40 0043DE40 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03DE44 0043DE44 27B90034 */  addiu       $t9, $sp, 0x34
/* 03DE48 0043DE48 AF290000 */  sw          $t1, 0x0($t9)
/* 03DE4C 0043DE4C 8FA30034 */  lw          $v1, 0x34($sp)
/* 03DE50 0043DE50 24010FFF */  addiu       $at, $zero, 0xFFF
/* 03DE54 0043DE54 8FAA0044 */  lw          $t2, 0x44($sp)
/* 03DE58 0043DE58 00031D02 */  srl         $v1, $v1, 20
/* 03DE5C 0043DE5C 1461000D */  bne         $v1, $at, .L0043DE94
/* 03DE60 0043DE60 02002825 */   move       $a1, $s0
/* 03DE64 0043DE64 8F998024 */  lw          $t9, %got(func_0043DD14)($gp)
/* 03DE68 0043DE68 8D460000 */  lw          $a2, 0x0($t2)
/* 03DE6C 0043DE6C 24070004 */  addiu       $a3, $zero, 0x4
/* 03DE70 0043DE70 2739DD14 */  addiu       $t9, $t9, %lo(func_0043DD14)
/* 03DE74 0043DE74 0320F809 */  jalr        $t9
/* 03DE78 0043DE78 AFA60008 */   sw         $a2, 0x8($sp)
/* 03DE7C 0043DE7C 8E2D0028 */  lw          $t5, 0x28($s1)
/* 03DE80 0043DE80 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03DE84 0043DE84 8FA6002C */  lw          $a2, 0x2C($sp)
/* 03DE88 0043DE88 25AE0002 */  addiu       $t6, $t5, 0x2
/* 03DE8C 0043DE8C 10000005 */  b           .L0043DEA4
/* 03DE90 0043DE90 AE2E0028 */   sw         $t6, 0x28($s1)
.L0043DE94:
/* 03DE94 0043DE94 8E2F0028 */  lw          $t7, 0x28($s1)
/* 03DE98 0043DE98 00603025 */  move        $a2, $v1
/* 03DE9C 0043DE9C 25F80001 */  addiu       $t8, $t7, 0x1
/* 03DEA0 0043DEA0 AE380028 */  sw          $t8, 0x28($s1)
.L0043DEA4:
/* 03DEA4 0043DEA4 8E19009C */  lw          $t9, 0x9C($s0)
/* 03DEA8 0043DEA8 00C02025 */  move        $a0, $a2
/* 03DEAC 0043DEAC 24050048 */  addiu       $a1, $zero, 0x48
/* 03DEB0 0043DEB0 8F280050 */  lw          $t0, 0x50($t9)
/* 03DEB4 0043DEB4 15000003 */  bnez        $t0, .L0043DEC4
/* 03DEB8 0043DEB8 00000000 */   nop
/* 03DEBC 0043DEBC 10000019 */  b           .L0043DF24
/* 03DEC0 0043DEC0 8E0300A0 */   lw         $v1, 0xA0($s0)
.L0043DEC4:
/* 03DEC4 0043DEC4 8F9984F4 */  lw          $t9, %call16(type_to_file)($gp)
/* 03DEC8 0043DEC8 02002025 */  move        $a0, $s0
/* 03DECC 0043DECC 8FA50030 */  lw          $a1, 0x30($sp)
/* 03DED0 0043DED0 0320F809 */  jalr        $t9
/* 03DED4 0043DED4 AFA60040 */   sw         $a2, 0x40($sp)
/* 03DED8 0043DED8 8E0B00D0 */  lw          $t3, 0xD0($s0)
/* 03DEDC 0043DEDC 24050048 */  addiu       $a1, $zero, 0x48
/* 03DEE0 0043DEE0 8E0300A0 */  lw          $v1, 0xA0($s0)
/* 03DEE4 0043DEE4 01650019 */  multu       $t3, $a1
/* 03DEE8 0043DEE8 000248C0 */  sll         $t1, $v0, 3
/* 03DEEC 0043DEEC 01224821 */  addu        $t1, $t1, $v0
/* 03DEF0 0043DEF0 000948C0 */  sll         $t1, $t1, 3
/* 03DEF4 0043DEF4 00695021 */  addu        $t2, $v1, $t1
/* 03DEF8 0043DEF8 8FA60040 */  lw          $a2, 0x40($sp)
/* 03DEFC 0043DEFC 8E1800BC */  lw          $t8, 0xBC($s0)
/* 03DF00 0043DF00 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03DF04 0043DF04 00006012 */  mflo        $t4
/* 03DF08 0043DF08 000C6823 */  negu        $t5, $t4
/* 03DF0C 0043DF0C 014D7021 */  addu        $t6, $t2, $t5
/* 03DF10 0043DF10 8DCF0034 */  lw          $t7, 0x34($t6)
/* 03DF14 0043DF14 00CF3021 */  addu        $a2, $a2, $t7
/* 03DF18 0043DF18 0006C880 */  sll         $t9, $a2, 2
/* 03DF1C 0043DF1C 03194021 */  addu        $t0, $t8, $t9
/* 03DF20 0043DF20 8D040000 */  lw          $a0, 0x0($t0)
.L0043DF24:
/* 03DF24 0043DF24 8FA90050 */  lw          $t1, 0x50($sp)
/* 03DF28 0043DF28 1520000E */  bnez        $t1, .L0043DF64
/* 03DF2C 0043DF2C 00000000 */   nop
/* 03DF30 0043DF30 00850019 */  multu       $a0, $a1
/* 03DF34 0043DF34 8E0D00CC */  lw          $t5, 0xCC($s0)
/* 03DF38 0043DF38 8FAF0034 */  lw          $t7, 0x34($sp)
/* 03DF3C 0043DF3C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03DF40 0043DF40 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03DF44 0043DF44 01E1C024 */  and         $t8, $t7, $at
/* 03DF48 0043DF48 00005812 */  mflo        $t3
/* 03DF4C 0043DF4C 006B6021 */  addu        $t4, $v1, $t3
/* 03DF50 0043DF50 8D8A0010 */  lw          $t2, 0x10($t4)
/* 03DF54 0043DF54 014D7021 */  addu        $t6, $t2, $t5
/* 03DF58 0043DF58 01D8C821 */  addu        $t9, $t6, $t8
/* 03DF5C 0043DF5C 1000000D */  b           .L0043DF94
/* 03DF60 0043DF60 AE390030 */   sw         $t9, 0x30($s1)
.L0043DF64:
/* 03DF64 0043DF64 00850019 */  multu       $a0, $a1
/* 03DF68 0043DF68 8E0C00C8 */  lw          $t4, 0xC8($s0)
/* 03DF6C 0043DF6C 8FAD0034 */  lw          $t5, 0x34($sp)
/* 03DF70 0043DF70 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03DF74 0043DF74 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03DF78 0043DF78 01A17824 */  and         $t7, $t5, $at
/* 03DF7C 0043DF7C 00004012 */  mflo        $t0
/* 03DF80 0043DF80 00684821 */  addu        $t1, $v1, $t0
/* 03DF84 0043DF84 8D2B002C */  lw          $t3, 0x2C($t1)
/* 03DF88 0043DF88 016C5021 */  addu        $t2, $t3, $t4
/* 03DF8C 0043DF8C 014F7021 */  addu        $t6, $t2, $t7
/* 03DF90 0043DF90 AE2E0018 */  sw          $t6, 0x18($s1)
.L0043DF94:
/* 03DF94 0043DF94 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03DF98 0043DF98 8FB00018 */  lw          $s0, 0x18($sp)
/* 03DF9C 0043DF9C 8FB1001C */  lw          $s1, 0x1C($sp)
/* 03DFA0 0043DFA0 03E00008 */  jr          $ra
/* 03DFA4 0043DFA4 27BD0048 */   addiu      $sp, $sp, 0x48
