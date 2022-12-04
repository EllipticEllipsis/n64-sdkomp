glabel _elf32_xlatetom # 125
/* 023690 00423690 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 023694 00423694 279CF6D0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEF6D0
/* 023698 00423698 0399E021 */  addu        $gp, $gp, $t9
/* 02369C 0042369C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0236A0 004236A0 8F99801C */  lw          $t9, %got(func_004232E8)($gp)
/* 0236A4 004236A4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0236A8 004236A8 AFA40020 */  sw          $a0, 0x20($sp)
/* 0236AC 004236AC AFA50024 */  sw          $a1, 0x24($sp)
/* 0236B0 004236B0 AFA60028 */  sw          $a2, 0x28($sp)
/* 0236B4 004236B4 273932E8 */  addiu       $t9, $t9, %lo(func_004232E8)
/* 0236B8 004236B8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0236BC 004236BC 8FA60028 */  lw          $a2, 0x28($sp)
/* 0236C0 004236C0 8FA50024 */  lw          $a1, 0x24($sp)
/* 0236C4 004236C4 8FA40020 */  lw          $a0, 0x20($sp)
/* 0236C8 004236C8 0320F809 */  jalr        $t9
/* 0236CC 004236CC 00003825 */   move       $a3, $zero
/* 0236D0 004236D0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0236D4 004236D4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0236D8 004236D8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0236DC 004236DC 03E00008 */  jr          $ra
/* 0236E0 004236E0 00000000 */   nop
