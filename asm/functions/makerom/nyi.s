.section .rodata
glabel STR_10006AAC
/* 046AAC 10006AAC */ .asciz "%s in not yet implemented...aborting\n"
                      .balign 4

glabel STR_10006AD4
/* 046AD4 10006AD4 */ .asciz "0"
                      .balign 4

glabel STR_10006AD8
/* 046AD8 10006AD8 */ .asciz "ldfcn.c"
                      .balign 4


.section .text
glabel nyi # 210
/* 029F04 00429F04 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 029F08 00429F08 279C8E5C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE8E5C
/* 029F0C 00429F0C 0399E021 */  addu        $gp, $gp, $t9
/* 029F10 00429F10 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 029F14 00429F14 00803025 */  move        $a2, $a0
/* 029F18 00429F18 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 029F1C 00429F1C 8F85802C */  lw          $a1, %got(STR_10006AAC)($gp)
/* 029F20 00429F20 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 029F24 00429F24 AFBF001C */  sw          $ra, 0x1C($sp)
/* 029F28 00429F28 AFBC0018 */  sw          $gp, 0x18($sp)
/* 029F2C 00429F2C 24840020 */  addiu       $a0, $a0, 0x20
/* 029F30 00429F30 0320F809 */  jalr        $t9
/* 029F34 00429F34 24A56AAC */   addiu      $a1, $a1, %lo(STR_10006AAC)
/* 029F38 00429F38 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029F3C 00429F3C 2406014E */  addiu       $a2, $zero, 0x14E
/* 029F40 00429F40 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 029F44 00429F44 8F84802C */  lw          $a0, %got(STR_10006AD4)($gp)
/* 029F48 00429F48 8F85802C */  lw          $a1, %got(STR_10006AD8)($gp)
/* 029F4C 00429F4C 24846AD4 */  addiu       $a0, $a0, %lo(STR_10006AD4)
/* 029F50 00429F50 0320F809 */  jalr        $t9
/* 029F54 00429F54 24A56AD8 */   addiu      $a1, $a1, %lo(STR_10006AD8)
/* 029F58 00429F58 8FBF001C */  lw          $ra, 0x1C($sp)
/* 029F5C 00429F5C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029F60 00429F60 27BD0020 */  addiu       $sp, $sp, 0x20
/* 029F64 00429F64 03E00008 */  jr          $ra
/* 029F68 00429F68 00000000 */   nop
