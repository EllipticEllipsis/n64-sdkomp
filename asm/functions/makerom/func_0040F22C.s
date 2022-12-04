.section .rodata
glabel STR_1000588C
/* 04588C 1000588C */ .asciz ".cord"
                      .balign 4

glabel STR_10005894
/* 045894 10005894 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_100058A8
/* 0458A8 100058A8 */ .asciz "makerom: %s: not a valid ELF object file\n"
                      .balign 4


.section .text
glabel func_0040F22C # 26
/* 00F22C 0040F22C 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 00F230 0040F230 279C3B34 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC03B34
/* 00F234 0040F234 0399E021 */  addu        $gp, $gp, $t9
/* 00F238 0040F238 27BDFED8 */  addiu       $sp, $sp, -0x128
/* 00F23C 0040F23C AFBF001C */  sw          $ra, 0x1C($sp)
/* 00F240 0040F240 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00F244 0040F244 AFB00014 */  sw          $s0, 0x14($sp)
/* 00F248 0040F248 8F8E865C */  lw          $t6, %got(waveList)($gp)
/* 00F24C 0040F24C 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00F250 0040F250 11C0005F */  beqz        $t6, .L0040F3D0
/* 00F254 0040F254 AFAE0124 */   sw         $t6, 0x124($sp)
.L0040F258:
/* 00F258 0040F258 8F8F8720 */  lw          $t7, %got(gcord)($gp)
/* 00F25C 0040F25C 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00F260 0040F260 11E0000F */  beqz        $t7, .L0040F2A0
/* 00F264 0040F264 00000000 */   nop
/* 00F268 0040F268 8F9980A0 */  lw          $t9, %call16(strcpy)($gp)
/* 00F26C 0040F26C 8FB80124 */  lw          $t8, 0x124($sp)
/* 00F270 0040F270 27A40024 */  addiu       $a0, $sp, 0x24
/* 00F274 0040F274 0320F809 */  jalr        $t9
/* 00F278 0040F278 8F050004 */   lw         $a1, 0x4($t8)
/* 00F27C 0040F27C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F280 0040F280 00408025 */  move        $s0, $v0
/* 00F284 0040F284 02002025 */  move        $a0, $s0
/* 00F288 0040F288 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 00F28C 0040F28C 8F85802C */  lw          $a1, %got(STR_1000588C)($gp)
/* 00F290 0040F290 0320F809 */  jalr        $t9
/* 00F294 0040F294 24A5588C */   addiu      $a1, $a1, %lo(STR_1000588C)
/* 00F298 0040F298 10000008 */  b           .L0040F2BC
/* 00F29C 0040F29C 8FBC0018 */   lw         $gp, 0x18($sp)
.L0040F2A0:
/* 00F2A0 0040F2A0 8FB90124 */  lw          $t9, 0x124($sp)
/* 00F2A4 0040F2A4 27A40024 */  addiu       $a0, $sp, 0x24
/* 00F2A8 0040F2A8 8F250004 */  lw          $a1, 0x4($t9)
/* 00F2AC 0040F2AC 8F9980A0 */  lw          $t9, %call16(strcpy)($gp)
/* 00F2B0 0040F2B0 0320F809 */  jalr        $t9
/* 00F2B4 0040F2B4 00000000 */   nop
/* 00F2B8 0040F2B8 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040F2BC:
/* 00F2BC 0040F2BC 8F9980B8 */  lw          $t9, %call16(open)($gp)
/* 00F2C0 0040F2C0 8FA80124 */  lw          $t0, 0x124($sp)
/* 00F2C4 0040F2C4 00002825 */  move        $a1, $zero
/* 00F2C8 0040F2C8 0320F809 */  jalr        $t9
/* 00F2CC 0040F2CC 8D040004 */   lw         $a0, 0x4($t0)
/* 00F2D0 0040F2D0 8FA90124 */  lw          $t1, 0x124($sp)
/* 00F2D4 0040F2D4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F2D8 0040F2D8 00408025 */  move        $s0, $v0
/* 00F2DC 0040F2DC 2401FFFF */  addiu       $at, $zero, -0x1
/* 00F2E0 0040F2E0 16010012 */  bne         $s0, $at, .L0040F32C
/* 00F2E4 0040F2E4 AD300114 */   sw         $s0, 0x114($t1)
/* 00F2E8 0040F2E8 8F8B8050 */  lw          $t3, %got(errno)($gp)
/* 00F2EC 0040F2EC 8F8D8054 */  lw          $t5, %got(sys_errlist)($gp)
/* 00F2F0 0040F2F0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00F2F4 0040F2F4 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00F2F8 0040F2F8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00F2FC 0040F2FC 8F85802C */  lw          $a1, %got(STR_10005894)($gp)
/* 00F300 0040F300 8FAA0124 */  lw          $t2, 0x124($sp)
/* 00F304 0040F304 000B6080 */  sll         $t4, $t3, 2
/* 00F308 0040F308 018D7021 */  addu        $t6, $t4, $t5
/* 00F30C 0040F30C 8DC70000 */  lw          $a3, 0x0($t6)
/* 00F310 0040F310 24840020 */  addiu       $a0, $a0, 0x20
/* 00F314 0040F314 24A55894 */  addiu       $a1, $a1, %lo(STR_10005894)
/* 00F318 0040F318 0320F809 */  jalr        $t9
/* 00F31C 0040F31C 8D460004 */   lw         $a2, 0x4($t2)
/* 00F320 0040F320 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F324 0040F324 1000002E */  b           .L0040F3E0
/* 00F328 0040F328 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F32C:
/* 00F32C 0040F32C 8F9981EC */  lw          $t9, %call16(elf_begin)($gp)
/* 00F330 0040F330 8FAF0124 */  lw          $t7, 0x124($sp)
/* 00F334 0040F334 24050001 */  addiu       $a1, $zero, 0x1
/* 00F338 0040F338 00003025 */  move        $a2, $zero
/* 00F33C 0040F33C 0320F809 */  jalr        $t9
/* 00F340 0040F340 8DE40114 */   lw         $a0, 0x114($t7)
/* 00F344 0040F344 8FB80124 */  lw          $t8, 0x124($sp)
/* 00F348 0040F348 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F34C 0040F34C AF02000C */  sw          $v0, 0xC($t8)
/* 00F350 0040F350 8FB90124 */  lw          $t9, 0x124($sp)
/* 00F354 0040F354 8F24000C */  lw          $a0, 0xC($t9)
/* 00F358 0040F358 8F998214 */  lw          $t9, %call16(elf_kind)($gp)
/* 00F35C 0040F35C 0320F809 */  jalr        $t9
/* 00F360 0040F360 00000000 */   nop
/* 00F364 0040F364 24010003 */  addiu       $at, $zero, 0x3
/* 00F368 0040F368 1441000A */  bne         $v0, $at, .L0040F394
/* 00F36C 0040F36C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00F370 0040F370 8F998204 */  lw          $t9, %call16(elf32_getehdr)($gp)
/* 00F374 0040F374 8FA80124 */  lw          $t0, 0x124($sp)
/* 00F378 0040F378 0320F809 */  jalr        $t9
/* 00F37C 0040F37C 8D04000C */   lw         $a0, 0xC($t0)
/* 00F380 0040F380 8FA90124 */  lw          $t1, 0x124($sp)
/* 00F384 0040F384 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F388 0040F388 00408025 */  move        $s0, $v0
/* 00F38C 0040F38C 1600000C */  bnez        $s0, .L0040F3C0
/* 00F390 0040F390 AD300010 */   sw         $s0, 0x10($t1)
.L0040F394:
/* 00F394 0040F394 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00F398 0040F398 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00F39C 0040F39C 8F85802C */  lw          $a1, %got(STR_100058A8)($gp)
/* 00F3A0 0040F3A0 8FAA0124 */  lw          $t2, 0x124($sp)
/* 00F3A4 0040F3A4 24840020 */  addiu       $a0, $a0, 0x20
/* 00F3A8 0040F3A8 24A558A8 */  addiu       $a1, $a1, %lo(STR_100058A8)
/* 00F3AC 0040F3AC 0320F809 */  jalr        $t9
/* 00F3B0 0040F3B0 8D460004 */   lw         $a2, 0x4($t2)
/* 00F3B4 0040F3B4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F3B8 0040F3B8 10000009 */  b           .L0040F3E0
/* 00F3BC 0040F3BC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F3C0:
/* 00F3C0 0040F3C0 8FAB0124 */  lw          $t3, 0x124($sp)
/* 00F3C4 0040F3C4 8D6C0000 */  lw          $t4, 0x0($t3)
/* 00F3C8 0040F3C8 1580FFA3 */  bnez        $t4, .L0040F258
/* 00F3CC 0040F3CC AFAC0124 */   sw         $t4, 0x124($sp)
.L0040F3D0:
/* 00F3D0 0040F3D0 10000003 */  b           .L0040F3E0
/* 00F3D4 0040F3D4 00001025 */   move       $v0, $zero
/* 00F3D8 0040F3D8 10000001 */  b           .L0040F3E0
/* 00F3DC 0040F3DC 00000000 */   nop
.L0040F3E0:
/* 00F3E0 0040F3E0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00F3E4 0040F3E4 8FB00014 */  lw          $s0, 0x14($sp)
/* 00F3E8 0040F3E8 27BD0128 */  addiu       $sp, $sp, 0x128
/* 00F3EC 0040F3EC 03E00008 */  jr          $ra
/* 00F3F0 0040F3F0 00000000 */   nop
