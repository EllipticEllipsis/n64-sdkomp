.section .rodata
glabel STR_100086F0
/* 0486F0 100086F0 */ .asciz "Error: "
                      .balign 4
/* 0486F8 100086F8 */ .asciz ""
                      .balign 4
/* 0486FC 100086FC */ .asciz ""
                      .balign 4


.section .text
glabel error # 589
/* 03AE20 0043AE20 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03AE24 0043AE24 279C7F40 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD7F40
/* 03AE28 0043AE28 0399E021 */  addu        $gp, $gp, $t9
/* 03AE2C 0043AE2C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03AE30 0043AE30 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 03AE34 0043AE34 AFA40028 */  sw          $a0, 0x28($sp)
/* 03AE38 0043AE38 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03AE3C 0043AE3C 8F858030 */  lw          $a1, %got(STR_100086F0)($gp)
/* 03AE40 0043AE40 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 03AE44 0043AE44 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03AE48 0043AE48 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03AE4C 0043AE4C AFA60030 */  sw          $a2, 0x30($sp)
/* 03AE50 0043AE50 AFA70034 */  sw          $a3, 0x34($sp)
/* 03AE54 0043AE54 24A586F0 */  addiu       $a1, $a1, %lo(STR_100086F0)
/* 03AE58 0043AE58 0320F809 */  jalr        $t9
/* 03AE5C 0043AE5C 24840020 */   addiu      $a0, $a0, 0x20
/* 03AE60 0043AE60 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03AE64 0043AE64 8FAE0034 */  lw          $t6, 0x34($sp)
/* 03AE68 0043AE68 8FAF0038 */  lw          $t7, 0x38($sp)
/* 03AE6C 0043AE6C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 03AE70 0043AE70 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 03AE74 0043AE74 8FA50028 */  lw          $a1, 0x28($sp)
/* 03AE78 0043AE78 8FA6002C */  lw          $a2, 0x2C($sp)
/* 03AE7C 0043AE7C 8FA70030 */  lw          $a3, 0x30($sp)
/* 03AE80 0043AE80 AFAE0010 */  sw          $t6, 0x10($sp)
/* 03AE84 0043AE84 AFAF0014 */  sw          $t7, 0x14($sp)
/* 03AE88 0043AE88 0320F809 */  jalr        $t9
/* 03AE8C 0043AE8C 24840020 */   addiu      $a0, $a0, 0x20
/* 03AE90 0043AE90 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03AE94 0043AE94 24040001 */  addiu       $a0, $zero, 0x1
/* 03AE98 0043AE98 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 03AE9C 0043AE9C 0320F809 */  jalr        $t9
/* 03AEA0 0043AEA0 00000000 */   nop
/* 03AEA4 0043AEA4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03AEA8 0043AEA8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03AEAC 0043AEAC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03AEB0 0043AEB0 03E00008 */  jr          $ra
/* 03AEB4 0043AEB4 00000000 */   nop
/* 03AEB8 0043AEB8 00000000 */  nop
/* 03AEBC 0043AEBC 00000000 */  nop
