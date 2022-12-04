.section .rodata
glabel STR_10007DF0
/* 047DF0 10007DF0 */ .asciz "%s: Error: "
                      .balign 4

glabel STR_10007DFC
/* 047DFC 10007DFC */ .asciz "\n"
                      .balign 4


.section .text
glabel st_error # 565
/* 035670 00435670 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 035674 00435674 279CD6F0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDD6F0
/* 035678 00435678 0399E021 */  addu        $gp, $gp, $t9
/* 03567C 0043567C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 035680 00435680 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 035684 00435684 AFA40028 */  sw          $a0, 0x28($sp)
/* 035688 00435688 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03568C 0043568C AFA60030 */  sw          $a2, 0x30($sp)
/* 035690 00435690 8F868704 */  lw          $a2, %got(st_errname)($gp)
/* 035694 00435694 8F85802C */  lw          $a1, %got(STR_10007DF0)($gp)
/* 035698 00435698 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 03569C 0043569C AFBF0024 */  sw          $ra, 0x24($sp)
/* 0356A0 004356A0 AFBC0020 */  sw          $gp, 0x20($sp)
/* 0356A4 004356A4 AFA70034 */  sw          $a3, 0x34($sp)
/* 0356A8 004356A8 8CC60000 */  lw          $a2, 0x0($a2)
/* 0356AC 004356AC 24A57DF0 */  addiu       $a1, $a1, %lo(STR_10007DF0)
/* 0356B0 004356B0 0320F809 */  jalr        $t9
/* 0356B4 004356B4 24840020 */   addiu      $a0, $a0, 0x20
/* 0356B8 004356B8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0356BC 004356BC 8FAE0034 */  lw          $t6, 0x34($sp)
/* 0356C0 004356C0 8FAF0038 */  lw          $t7, 0x38($sp)
/* 0356C4 004356C4 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 0356C8 004356C8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 0356CC 004356CC 8FA50028 */  lw          $a1, 0x28($sp)
/* 0356D0 004356D0 8FA6002C */  lw          $a2, 0x2C($sp)
/* 0356D4 004356D4 8FA70030 */  lw          $a3, 0x30($sp)
/* 0356D8 004356D8 AFAE0010 */  sw          $t6, 0x10($sp)
/* 0356DC 004356DC AFAF0014 */  sw          $t7, 0x14($sp)
/* 0356E0 004356E0 0320F809 */  jalr        $t9
/* 0356E4 004356E4 24840020 */   addiu      $a0, $a0, 0x20
/* 0356E8 004356E8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0356EC 004356EC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 0356F0 004356F0 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 0356F4 004356F4 8F85802C */  lw          $a1, %got(STR_10007DFC)($gp)
/* 0356F8 004356F8 24840020 */  addiu       $a0, $a0, 0x20
/* 0356FC 004356FC 0320F809 */  jalr        $t9
/* 035700 00435700 24A57DFC */   addiu      $a1, $a1, %lo(STR_10007DFC)
/* 035704 00435704 8FBC0020 */  lw          $gp, 0x20($sp)
/* 035708 00435708 24040001 */  addiu       $a0, $zero, 0x1
/* 03570C 0043570C 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 035710 00435710 0320F809 */  jalr        $t9
/* 035714 00435714 00000000 */   nop
/* 035718 00435718 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03571C 0043571C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 035720 00435720 27BD0028 */  addiu       $sp, $sp, 0x28
/* 035724 00435724 03E00008 */  jr          $ra
/* 035728 00435728 00000000 */   nop
/* 03572C 0043572C 00000000 */  nop
