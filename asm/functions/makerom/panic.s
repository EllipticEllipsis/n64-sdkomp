.section .rodata
glabel STR_100089A0
/* 0489A0 100089A0 */ .asciz "Internal: "
                      .balign 4
/* 0489AC 100089AC */ .asciz ""
                      .balign 4


.section .text
glabel panic # 636
/* 03E900 0043E900 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03E904 0043E904 279C4460 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD4460
/* 03E908 0043E908 0399E021 */  addu        $gp, $gp, $t9
/* 03E90C 0043E90C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03E910 0043E910 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 03E914 0043E914 AFA40028 */  sw          $a0, 0x28($sp)
/* 03E918 0043E918 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03E91C 0043E91C 8F858030 */  lw          $a1, %got(STR_100089A0)($gp)
/* 03E920 0043E920 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 03E924 0043E924 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03E928 0043E928 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03E92C 0043E92C AFA60030 */  sw          $a2, 0x30($sp)
/* 03E930 0043E930 AFA70034 */  sw          $a3, 0x34($sp)
/* 03E934 0043E934 24A589A0 */  addiu       $a1, $a1, %lo(STR_100089A0)
/* 03E938 0043E938 0320F809 */  jalr        $t9
/* 03E93C 0043E93C 24840020 */   addiu      $a0, $a0, 0x20
/* 03E940 0043E940 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E944 0043E944 8FAE0034 */  lw          $t6, 0x34($sp)
/* 03E948 0043E948 8FA50028 */  lw          $a1, 0x28($sp)
/* 03E94C 0043E94C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 03E950 0043E950 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 03E954 0043E954 8FA6002C */  lw          $a2, 0x2C($sp)
/* 03E958 0043E958 8FA70030 */  lw          $a3, 0x30($sp)
/* 03E95C 0043E95C AFAE0010 */  sw          $t6, 0x10($sp)
/* 03E960 0043E960 0320F809 */  jalr        $t9
/* 03E964 0043E964 24840020 */   addiu      $a0, $a0, 0x20
/* 03E968 0043E968 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E96C 0043E96C 24040001 */  addiu       $a0, $zero, 0x1
/* 03E970 0043E970 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 03E974 0043E974 0320F809 */  jalr        $t9
/* 03E978 0043E978 00000000 */   nop
/* 03E97C 0043E97C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03E980 0043E980 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E984 0043E984 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03E988 0043E988 03E00008 */  jr          $ra
/* 03E98C 0043E98C 00000000 */   nop
