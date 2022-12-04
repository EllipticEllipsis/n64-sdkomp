glabel search_files # 620
/* 03D2EC 0043D2EC 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03D2F0 0043D2F0 279C5A74 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD5A74
/* 03D2F4 0043D2F4 0399E021 */  addu        $gp, $gp, $t9
/* 03D2F8 0043D2F8 27BDFEA8 */  addiu       $sp, $sp, -0x158
/* 03D2FC 0043D2FC AFBF003C */  sw          $ra, 0x3C($sp)
/* 03D300 0043D300 AFBC0038 */  sw          $gp, 0x38($sp)
/* 03D304 0043D304 AFB70034 */  sw          $s7, 0x34($sp)
/* 03D308 0043D308 AFB60030 */  sw          $s6, 0x30($sp)
/* 03D30C 0043D30C AFB5002C */  sw          $s5, 0x2C($sp)
/* 03D310 0043D310 AFB40028 */  sw          $s4, 0x28($sp)
/* 03D314 0043D314 AFB30024 */  sw          $s3, 0x24($sp)
/* 03D318 0043D318 AFB20020 */  sw          $s2, 0x20($sp)
/* 03D31C 0043D31C AFB1001C */  sw          $s1, 0x1C($sp)
/* 03D320 0043D320 AFB00018 */  sw          $s0, 0x18($sp)
/* 03D324 0043D324 8C8E009C */  lw          $t6, 0x9C($a0)
/* 03D328 0043D328 8C9200D0 */  lw          $s2, 0xD0($a0)
/* 03D32C 0043D32C 00809825 */  move        $s3, $a0
/* 03D330 0043D330 8DCF0048 */  lw          $t7, 0x48($t6)
/* 03D334 0043D334 00C0A825 */  move        $s5, $a2
/* 03D338 0043D338 00A0B025 */  move        $s6, $a1
/* 03D33C 0043D33C 024FC021 */  addu        $t8, $s2, $t7
/* 03D340 0043D340 0258082B */  sltu        $at, $s2, $t8
/* 03D344 0043D344 1020003D */  beqz        $at, .L0043D43C
/* 03D348 0043D348 00E0B825 */   move       $s7, $a3
/* 03D34C 0043D34C 8FB40168 */  lw          $s4, 0x168($sp)
/* 03D350 0043D350 27B10048 */  addiu       $s1, $sp, 0x48
.L0043D354:
/* 03D354 0043D354 8F998514 */  lw          $t9, %call16(st_file_name)($gp)
/* 03D358 0043D358 02602025 */  move        $a0, $s3
/* 03D35C 0043D35C 02402825 */  move        $a1, $s2
/* 03D360 0043D360 0320F809 */  jalr        $t9
/* 03D364 0043D364 00000000 */   nop
/* 03D368 0043D368 1040002C */  beqz        $v0, .L0043D41C
/* 03D36C 0043D36C 8FBC0038 */   lw         $gp, 0x38($sp)
/* 03D370 0043D370 8F9980A0 */  lw          $t9, %call16(strcpy)($gp)
/* 03D374 0043D374 02202025 */  move        $a0, $s1
/* 03D378 0043D378 00402825 */  move        $a1, $v0
/* 03D37C 0043D37C 0320F809 */  jalr        $t9
/* 03D380 0043D380 00000000 */   nop
/* 03D384 0043D384 8FBC0038 */  lw          $gp, 0x38($sp)
/* 03D388 0043D388 16A0000A */  bnez        $s5, .L0043D3B4
/* 03D38C 0043D38C 02208025 */   move       $s0, $s1
/* 03D390 0043D390 8F998170 */  lw          $t9, %call16(strrchr)($gp)
/* 03D394 0043D394 02202025 */  move        $a0, $s1
/* 03D398 0043D398 2405002E */  addiu       $a1, $zero, 0x2E
/* 03D39C 0043D39C 0320F809 */  jalr        $t9
/* 03D3A0 0043D3A0 00000000 */   nop
/* 03D3A4 0043D3A4 8FBC0038 */  lw          $gp, 0x38($sp)
/* 03D3A8 0043D3A8 10400002 */  beqz        $v0, .L0043D3B4
/* 03D3AC 0043D3AC AFA20148 */   sw         $v0, 0x148($sp)
/* 03D3B0 0043D3B0 A0400000 */  sb          $zero, 0x0($v0)
.L0043D3B4:
/* 03D3B4 0043D3B4 12800009 */  beqz        $s4, .L0043D3DC
/* 03D3B8 0043D3B8 00000000 */   nop
/* 03D3BC 0043D3BC 8F998170 */  lw          $t9, %call16(strrchr)($gp)
/* 03D3C0 0043D3C0 02202025 */  move        $a0, $s1
/* 03D3C4 0043D3C4 2405002F */  addiu       $a1, $zero, 0x2F
/* 03D3C8 0043D3C8 0320F809 */  jalr        $t9
/* 03D3CC 0043D3CC 00000000 */   nop
/* 03D3D0 0043D3D0 10400002 */  beqz        $v0, .L0043D3DC
/* 03D3D4 0043D3D4 8FBC0038 */   lw         $gp, 0x38($sp)
/* 03D3D8 0043D3D8 24500001 */  addiu       $s0, $v0, 0x1
.L0043D3DC:
/* 03D3DC 0043D3DC 8F9985AC */  lw          $t9, %call16(case_streq)($gp)
/* 03D3E0 0043D3E0 02002025 */  move        $a0, $s0
/* 03D3E4 0043D3E4 02C02825 */  move        $a1, $s6
/* 03D3E8 0043D3E8 0320F809 */  jalr        $t9
/* 03D3EC 0043D3EC 02E03025 */   move       $a2, $s7
/* 03D3F0 0043D3F0 1040000A */  beqz        $v0, .L0043D41C
/* 03D3F4 0043D3F4 8FBC0038 */   lw         $gp, 0x38($sp)
/* 03D3F8 0043D3F8 16A00006 */  bnez        $s5, .L0043D414
/* 03D3FC 0043D3FC 00000000 */   nop
/* 03D400 0043D400 8FB90148 */  lw          $t9, 0x148($sp)
/* 03D404 0043D404 2408002E */  addiu       $t0, $zero, 0x2E
/* 03D408 0043D408 13200002 */  beqz        $t9, .L0043D414
/* 03D40C 0043D40C 00000000 */   nop
/* 03D410 0043D410 A3280000 */  sb          $t0, 0x0($t9)
.L0043D414:
/* 03D414 0043D414 1000000A */  b           .L0043D440
/* 03D418 0043D418 02401025 */   move       $v0, $s2
.L0043D41C:
/* 03D41C 0043D41C 8E6A009C */  lw          $t2, 0x9C($s3)
/* 03D420 0043D420 8E6900D0 */  lw          $t1, 0xD0($s3)
/* 03D424 0043D424 26520001 */  addiu       $s2, $s2, 0x1
/* 03D428 0043D428 8D4B0048 */  lw          $t3, 0x48($t2)
/* 03D42C 0043D42C 012B6021 */  addu        $t4, $t1, $t3
/* 03D430 0043D430 024C082B */  sltu        $at, $s2, $t4
/* 03D434 0043D434 1420FFC7 */  bnez        $at, .L0043D354
/* 03D438 0043D438 00000000 */   nop
.L0043D43C:
/* 03D43C 0043D43C 2402FFFF */  addiu       $v0, $zero, -0x1
.L0043D440:
/* 03D440 0043D440 8FBF003C */  lw          $ra, 0x3C($sp)
/* 03D444 0043D444 8FB00018 */  lw          $s0, 0x18($sp)
/* 03D448 0043D448 8FB1001C */  lw          $s1, 0x1C($sp)
/* 03D44C 0043D44C 8FB20020 */  lw          $s2, 0x20($sp)
/* 03D450 0043D450 8FB30024 */  lw          $s3, 0x24($sp)
/* 03D454 0043D454 8FB40028 */  lw          $s4, 0x28($sp)
/* 03D458 0043D458 8FB5002C */  lw          $s5, 0x2C($sp)
/* 03D45C 0043D45C 8FB60030 */  lw          $s6, 0x30($sp)
/* 03D460 0043D460 8FB70034 */  lw          $s7, 0x34($sp)
/* 03D464 0043D464 03E00008 */  jr          $ra
/* 03D468 0043D468 27BD0158 */   addiu      $sp, $sp, 0x158
