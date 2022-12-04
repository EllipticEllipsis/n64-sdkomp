.section .rodata
glabel STR_10006AF0
/* 046AF0 10006AF0 */ .asciz "ldinitheaders"
                      .balign 4


.section .text
glabel ldinitheaders # 212
/* 029FB4 00429FB4 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 029FB8 00429FB8 279C8DAC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE8DAC
/* 029FBC 00429FBC 0399E021 */  addu        $gp, $gp, $t9
/* 029FC0 00429FC0 8F998248 */  lw          $t9, %call16(nyi)($gp)
/* 029FC4 00429FC4 8F84802C */  lw          $a0, %got(STR_10006AF0)($gp)
/* 029FC8 00429FC8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 029FCC 00429FCC AFBF001C */  sw          $ra, 0x1C($sp)
/* 029FD0 00429FD0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 029FD4 00429FD4 0320F809 */  jalr        $t9
/* 029FD8 00429FD8 24846AF0 */   addiu      $a0, $a0, %lo(STR_10006AF0)
/* 029FDC 00429FDC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 029FE0 00429FE0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029FE4 00429FE4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 029FE8 00429FE8 03E00008 */  jr          $ra
/* 029FEC 00429FEC 00000000 */   nop
