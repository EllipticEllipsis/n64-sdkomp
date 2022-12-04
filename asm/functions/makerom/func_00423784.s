glabel func_00423784 # 128
/* 023784 00423784 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 023788 00423788 279CF5DC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEF5DC
/* 02378C 0042378C 0399E021 */  addu        $gp, $gp, $t9
/* 023790 00423790 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 023794 00423794 AFA40020 */  sw          $a0, 0x20($sp)
/* 023798 00423798 AFA50024 */  sw          $a1, 0x24($sp)
/* 02379C 0042379C 8FAF0024 */  lw          $t7, 0x24($sp)
/* 0237A0 004237A0 8FAE0020 */  lw          $t6, 0x20($sp)
/* 0237A4 004237A4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0237A8 004237A8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0237AC 004237AC 11CF0007 */  beq         $t6, $t7, .L004237CC
/* 0237B0 004237B0 AFA60028 */   sw         $a2, 0x28($sp)
/* 0237B4 004237B4 8F99810C */  lw          $t9, %call16(memcpy)($gp)
/* 0237B8 004237B8 01C02025 */  move        $a0, $t6
/* 0237BC 004237BC 01E02825 */  move        $a1, $t7
/* 0237C0 004237C0 0320F809 */  jalr        $t9
/* 0237C4 004237C4 8FA60028 */   lw         $a2, 0x28($sp)
/* 0237C8 004237C8 8FBC0018 */  lw          $gp, 0x18($sp)
.L004237CC:
/* 0237CC 004237CC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0237D0 004237D0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0237D4 004237D4 03E00008 */  jr          $ra
/* 0237D8 004237D8 00000000 */   nop
