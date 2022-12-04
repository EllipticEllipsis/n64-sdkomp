glabel elf_kind # 190
/* 027CD0 00427CD0 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 027CD4 00427CD4 279CB090 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEB090
/* 027CD8 00427CD8 0399E021 */  addu        $gp, $gp, $t9
/* 027CDC 00427CDC 14800003 */  bnez        $a0, .L00427CEC
/* 027CE0 00427CE0 00000000 */   nop
/* 027CE4 00427CE4 03E00008 */  jr          $ra
/* 027CE8 00427CE8 00001025 */   move       $v0, $zero
.L00427CEC:
/* 027CEC 00427CEC 8C82004C */  lw          $v0, 0x4C($a0)
/* 027CF0 00427CF0 03E00008 */  jr          $ra
/* 027CF4 00427CF4 00000000 */   nop
/* 027CF8 00427CF8 00000000 */  nop
/* 027CFC 00427CFC 00000000 */  nop
