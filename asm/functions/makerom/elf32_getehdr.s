glabel elf32_getehdr # 175
/* 026290 00426290 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 026294 00426294 279CCAD0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBECAD0
/* 026298 00426298 0399E021 */  addu        $gp, $gp, $t9
/* 02629C 0042629C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0262A0 004262A0 AFA40020 */  sw          $a0, 0x20($sp)
/* 0262A4 004262A4 8FAE0020 */  lw          $t6, 0x20($sp)
/* 0262A8 004262A8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0262AC 004262AC AFBC0018 */  sw          $gp, 0x18($sp)
/* 0262B0 004262B0 15C00003 */  bnez        $t6, .L004262C0
/* 0262B4 004262B4 00000000 */   nop
/* 0262B8 004262B8 1000001B */  b           .L00426328
/* 0262BC 004262BC 00001025 */   move       $v0, $zero
.L004262C0:
/* 0262C0 004262C0 8FAF0020 */  lw          $t7, 0x20($sp)
/* 0262C4 004262C4 24010001 */  addiu       $at, $zero, 0x1
/* 0262C8 004262C8 8DF80048 */  lw          $t8, 0x48($t7)
/* 0262CC 004262CC 1301000B */  beq         $t8, $at, .L004262FC
/* 0262D0 004262D0 00000000 */   nop
/* 0262D4 004262D4 17000004 */  bnez        $t8, .L004262E8
/* 0262D8 004262D8 00000000 */   nop
/* 0262DC 004262DC 24190001 */  addiu       $t9, $zero, 0x1
/* 0262E0 004262E0 10000006 */  b           .L004262FC
/* 0262E4 004262E4 ADF90048 */   sw         $t9, 0x48($t7)
.L004262E8:
/* 0262E8 004262E8 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 0262EC 004262EC 24080505 */  addiu       $t0, $zero, 0x505
/* 0262F0 004262F0 00001025 */  move        $v0, $zero
/* 0262F4 004262F4 1000000C */  b           .L00426328
/* 0262F8 004262F8 AC280000 */   sw         $t0, 0x0($at)
.L004262FC:
/* 0262FC 004262FC 8FA90020 */  lw          $t1, 0x20($sp)
/* 026300 00426300 8D2A0050 */  lw          $t2, 0x50($t1)
/* 026304 00426304 15400006 */  bnez        $t2, .L00426320
/* 026308 00426308 00000000 */   nop
/* 02630C 0042630C 8F998208 */  lw          $t9, %call16(_elf_cook)($gp)
/* 026310 00426310 01202025 */  move        $a0, $t1
/* 026314 00426314 0320F809 */  jalr        $t9
/* 026318 00426318 00000000 */   nop
/* 02631C 0042631C 8FBC0018 */  lw          $gp, 0x18($sp)
.L00426320:
/* 026320 00426320 8FAB0020 */  lw          $t3, 0x20($sp)
/* 026324 00426324 8D620050 */  lw          $v0, 0x50($t3)
.L00426328:
/* 026328 00426328 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02632C 0042632C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 026330 00426330 03E00008 */  jr          $ra
/* 026334 00426334 00000000 */   nop