glabel check_obj_sections # 563
/* 0355A0 004355A0 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 0355A4 004355A4 279CD7C0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDD7C0
/* 0355A8 004355A8 0399E021 */  addu        $gp, $gp, $t9
/* 0355AC 004355AC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0355B0 004355B0 AFA60028 */  sw          $a2, 0x28($sp)
/* 0355B4 004355B4 8F998524 */  lw          $t9, %call16(foreach_section)($gp)
/* 0355B8 004355B8 00A03025 */  move        $a2, $a1
/* 0355BC 004355BC AFA50024 */  sw          $a1, 0x24($sp)
/* 0355C0 004355C0 8F858020 */  lw          $a1, %got(match_addr)($gp)
/* 0355C4 004355C4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0355C8 004355C8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0355CC 004355CC AFA40020 */  sw          $a0, 0x20($sp)
/* 0355D0 004355D0 0320F809 */  jalr        $t9
/* 0355D4 004355D4 24A54E88 */   addiu      $a1, $a1, %lo(match_addr)
/* 0355D8 004355D8 2401FFFF */  addiu       $at, $zero, -0x1
/* 0355DC 004355DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0355E0 004355E0 10410007 */  beq         $v0, $at, .L00435600
/* 0355E4 004355E4 00402825 */   move       $a1, $v0
/* 0355E8 004355E8 8F99852C */  lw          $t9, %call16(section_type)($gp)
/* 0355EC 004355EC 8FA40020 */  lw          $a0, 0x20($sp)
/* 0355F0 004355F0 0320F809 */  jalr        $t9
/* 0355F4 004355F4 00000000 */   nop
/* 0355F8 004355F8 10000002 */  b           .L00435604
/* 0355FC 004355FC 8FBC0018 */   lw         $gp, 0x18($sp)
.L00435600:
/* 035600 00435600 2402FFFF */  addiu       $v0, $zero, -0x1
.L00435604:
/* 035604 00435604 8FBF001C */  lw          $ra, 0x1C($sp)
/* 035608 00435608 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03560C 0043560C 03E00008 */  jr          $ra
/* 035610 00435610 00000000 */   nop
