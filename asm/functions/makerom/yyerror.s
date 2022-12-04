.section .rodata
glabel STR_10006020
/* 046020 10006020 */ .asciz "makerom: %s at line %d [%s]\n"
                      .balign 4


.section .text
glabel yyerror # 43
/* 0128B0 004128B0 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 0128B4 004128B4 279C04B0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC004B0
/* 0128B8 004128B8 0399E021 */  addu        $gp, $gp, $t9
/* 0128BC 004128BC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0128C0 004128C0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0128C4 004128C4 AFBC0020 */  sw          $gp, 0x20($sp)
/* 0128C8 004128C8 AFA40028 */  sw          $a0, 0x28($sp)
/* 0128CC 004128CC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 0128D0 004128D0 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 0128D4 004128D4 8F85802C */  lw          $a1, %got(STR_10006020)($gp)
/* 0128D8 004128D8 8F878694 */  lw          $a3, %got(lineNumber)($gp)
/* 0128DC 004128DC 8F8E876C */  lw          $t6, %got(yytext)($gp)
/* 0128E0 004128E0 8FA60028 */  lw          $a2, 0x28($sp)
/* 0128E4 004128E4 24840020 */  addiu       $a0, $a0, 0x20
/* 0128E8 004128E8 24A56020 */  addiu       $a1, $a1, %lo(STR_10006020)
/* 0128EC 004128EC 8CE70000 */  lw          $a3, 0x0($a3)
/* 0128F0 004128F0 0320F809 */  jalr        $t9
/* 0128F4 004128F4 AFAE0010 */   sw         $t6, 0x10($sp)
/* 0128F8 004128F8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0128FC 004128FC 10000001 */  b           .L00412904
/* 012900 00412900 00000000 */   nop
.L00412904:
/* 012904 00412904 8FBF0024 */  lw          $ra, 0x24($sp)
/* 012908 00412908 27BD0028 */  addiu       $sp, $sp, 0x28
/* 01290C 0041290C 03E00008 */  jr          $ra
/* 012910 00412910 00000000 */   nop
