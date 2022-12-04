.section .rodata
glabel STR_10007CF0
/* 047CF0 10007CF0 */ .asciz "Warning: "
                      .balign 4
/* 047CFC 10007CFC */ .asciz ""
                      .balign 4


.section .text
glabel warning # 492
/* 030530 00430530 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 030534 00430534 279C2830 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE2830
/* 030538 00430538 0399E021 */  addu        $gp, $gp, $t9
/* 03053C 0043053C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 030540 00430540 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 030544 00430544 AFA40028 */  sw          $a0, 0x28($sp)
/* 030548 00430548 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03054C 0043054C 8F85802C */  lw          $a1, %got(STR_10007CF0)($gp)
/* 030550 00430550 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 030554 00430554 AFBF0024 */  sw          $ra, 0x24($sp)
/* 030558 00430558 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03055C 0043055C AFA60030 */  sw          $a2, 0x30($sp)
/* 030560 00430560 AFA70034 */  sw          $a3, 0x34($sp)
/* 030564 00430564 24A57CF0 */  addiu       $a1, $a1, %lo(STR_10007CF0)
/* 030568 00430568 0320F809 */  jalr        $t9
/* 03056C 0043056C 24840020 */   addiu      $a0, $a0, 0x20
/* 030570 00430570 8FBC0020 */  lw          $gp, 0x20($sp)
/* 030574 00430574 8FAE0034 */  lw          $t6, 0x34($sp)
/* 030578 00430578 8FA50028 */  lw          $a1, 0x28($sp)
/* 03057C 0043057C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 030580 00430580 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 030584 00430584 8FA6002C */  lw          $a2, 0x2C($sp)
/* 030588 00430588 8FA70030 */  lw          $a3, 0x30($sp)
/* 03058C 0043058C AFAE0010 */  sw          $t6, 0x10($sp)
/* 030590 00430590 0320F809 */  jalr        $t9
/* 030594 00430594 24840020 */   addiu      $a0, $a0, 0x20
/* 030598 00430598 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03059C 0043059C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0305A0 004305A0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0305A4 004305A4 03E00008 */  jr          $ra
/* 0305A8 004305A8 00000000 */   nop
/* 0305AC 004305AC 00000000 */  nop
