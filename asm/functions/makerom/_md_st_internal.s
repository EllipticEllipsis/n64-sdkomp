.section .rodata
glabel STR_10008EE0
/* 048EE0 10008EE0 */ .asciz "%s: Internal: "
                      .balign 4

glabel STR_10008EF0
/* 048EF0 10008EF0 */ .asciz "\n"
                      .balign 4


.section .text
glabel _md_st_internal # 670
/* 040BB0 00440BB0 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 040BB4 00440BB4 279C21B0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD21B0
/* 040BB8 00440BB8 0399E021 */  addu        $gp, $gp, $t9
/* 040BBC 00440BBC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 040BC0 00440BC0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 040BC4 00440BC4 AFA40028 */  sw          $a0, 0x28($sp)
/* 040BC8 00440BC8 AFA5002C */  sw          $a1, 0x2C($sp)
/* 040BCC 00440BCC AFA60030 */  sw          $a2, 0x30($sp)
/* 040BD0 00440BD0 8F868704 */  lw          $a2, %got(st_errname)($gp)
/* 040BD4 00440BD4 8F858030 */  lw          $a1, %got(STR_10008EE0)($gp)
/* 040BD8 00440BD8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 040BDC 00440BDC AFBF0024 */  sw          $ra, 0x24($sp)
/* 040BE0 00440BE0 AFBC0020 */  sw          $gp, 0x20($sp)
/* 040BE4 00440BE4 AFA70034 */  sw          $a3, 0x34($sp)
/* 040BE8 00440BE8 8CC60000 */  lw          $a2, 0x0($a2)
/* 040BEC 00440BEC 24A58EE0 */  addiu       $a1, $a1, %lo(STR_10008EE0)
/* 040BF0 00440BF0 0320F809 */  jalr        $t9
/* 040BF4 00440BF4 24840020 */   addiu      $a0, $a0, 0x20
/* 040BF8 00440BF8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 040BFC 00440BFC 8FAE0034 */  lw          $t6, 0x34($sp)
/* 040C00 00440C00 8FAF0038 */  lw          $t7, 0x38($sp)
/* 040C04 00440C04 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 040C08 00440C08 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 040C0C 00440C0C 8FA50028 */  lw          $a1, 0x28($sp)
/* 040C10 00440C10 8FA6002C */  lw          $a2, 0x2C($sp)
/* 040C14 00440C14 8FA70030 */  lw          $a3, 0x30($sp)
/* 040C18 00440C18 AFAE0010 */  sw          $t6, 0x10($sp)
/* 040C1C 00440C1C AFAF0014 */  sw          $t7, 0x14($sp)
/* 040C20 00440C20 0320F809 */  jalr        $t9
/* 040C24 00440C24 24840020 */   addiu      $a0, $a0, 0x20
/* 040C28 00440C28 8FBC0020 */  lw          $gp, 0x20($sp)
/* 040C2C 00440C2C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 040C30 00440C30 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 040C34 00440C34 8F858030 */  lw          $a1, %got(STR_10008EF0)($gp)
/* 040C38 00440C38 24840020 */  addiu       $a0, $a0, 0x20
/* 040C3C 00440C3C 0320F809 */  jalr        $t9
/* 040C40 00440C40 24A58EF0 */   addiu      $a1, $a1, %lo(STR_10008EF0)
/* 040C44 00440C44 8FBC0020 */  lw          $gp, 0x20($sp)
/* 040C48 00440C48 24040001 */  addiu       $a0, $zero, 0x1
/* 040C4C 00440C4C 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 040C50 00440C50 0320F809 */  jalr        $t9
/* 040C54 00440C54 00000000 */   nop
/* 040C58 00440C58 8FBF0024 */  lw          $ra, 0x24($sp)
/* 040C5C 00440C5C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 040C60 00440C60 27BD0028 */  addiu       $sp, $sp, 0x28
/* 040C64 00440C64 03E00008 */  jr          $ra
/* 040C68 00440C68 00000000 */   nop
