glabel _elf_unmap # 193
/* 0284B0 004284B0 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 0284B4 004284B4 279CA8B0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEA8B0
/* 0284B8 004284B8 0399E021 */  addu        $gp, $gp, $t9
/* 0284BC 004284BC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0284C0 004284C0 AFA40020 */  sw          $a0, 0x20($sp)
/* 0284C4 004284C4 8FAE0020 */  lw          $t6, 0x20($sp)
/* 0284C8 004284C8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0284CC 004284CC AFBC0018 */  sw          $gp, 0x18($sp)
/* 0284D0 004284D0 11C0000A */  beqz        $t6, .L004284FC
/* 0284D4 004284D4 AFA50024 */   sw         $a1, 0x24($sp)
/* 0284D8 004284D8 8FAF0024 */  lw          $t7, 0x24($sp)
/* 0284DC 004284DC 11E00007 */  beqz        $t7, .L004284FC
/* 0284E0 004284E0 00000000 */   nop
/* 0284E4 004284E4 8F998140 */  lw          $t9, %call16(munmap)($gp)
/* 0284E8 004284E8 8FA40020 */  lw          $a0, 0x20($sp)
/* 0284EC 004284EC 8FA50024 */  lw          $a1, 0x24($sp)
/* 0284F0 004284F0 0320F809 */  jalr        $t9
/* 0284F4 004284F4 00000000 */   nop
/* 0284F8 004284F8 8FBC0018 */  lw          $gp, 0x18($sp)
.L004284FC:
/* 0284FC 004284FC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 028500 00428500 27BD0020 */  addiu       $sp, $sp, 0x20
/* 028504 00428504 03E00008 */  jr          $ra
/* 028508 00428508 00000000 */   nop
/* 02850C 0042850C 00000000 */  nop
