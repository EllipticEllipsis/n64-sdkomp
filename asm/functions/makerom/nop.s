.section .rodata
glabel STR_10006AE0
/* 046AE0 10006AE0 */ .asciz "%s nop-ed out\n"
                      .balign 4


.section .text
glabel nop # 211
/* 029F6C 00429F6C 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 029F70 00429F70 279C8DF4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE8DF4
/* 029F74 00429F74 0399E021 */  addu        $gp, $gp, $t9
/* 029F78 00429F78 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 029F7C 00429F7C 00803025 */  move        $a2, $a0
/* 029F80 00429F80 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 029F84 00429F84 8F85802C */  lw          $a1, %got(STR_10006AE0)($gp)
/* 029F88 00429F88 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 029F8C 00429F8C AFBF001C */  sw          $ra, 0x1C($sp)
/* 029F90 00429F90 AFBC0018 */  sw          $gp, 0x18($sp)
/* 029F94 00429F94 24840020 */  addiu       $a0, $a0, 0x20
/* 029F98 00429F98 0320F809 */  jalr        $t9
/* 029F9C 00429F9C 24A56AE0 */   addiu      $a1, $a1, %lo(STR_10006AE0)
/* 029FA0 00429FA0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 029FA4 00429FA4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029FA8 00429FA8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 029FAC 00429FAC 03E00008 */  jr          $ra
/* 029FB0 00429FB0 00000000 */   nop
