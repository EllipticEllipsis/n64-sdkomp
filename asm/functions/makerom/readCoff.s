.section .rodata
glabel STR_10005E90
/* 045E90 10005E90 */ .asciz ".text"
                      .balign 4


.section .text
glabel readCoff # 33
/* 0108B0 004108B0 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 0108B4 004108B4 279C24B0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC024B0
/* 0108B8 004108B8 0399E021 */  addu        $gp, $gp, $t9
/* 0108BC 004108BC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0108C0 004108C0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0108C4 004108C4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0108C8 004108C8 AFA40030 */  sw          $a0, 0x30($sp)
/* 0108CC 004108CC AFA50034 */  sw          $a1, 0x34($sp)
/* 0108D0 004108D0 8FAE0030 */  lw          $t6, 0x30($sp)
/* 0108D4 004108D4 8F818754 */  lw          $at, %got(OFileName)($gp)
/* 0108D8 004108D8 AC2E0000 */  sw          $t6, 0x0($at)
/* 0108DC 004108DC 8F8F802C */  lw          $t7, %got(STR_10005E90)($gp)
/* 0108E0 004108E0 8F818758 */  lw          $at, %got(SName)($gp)
/* 0108E4 004108E4 25EF5E90 */  addiu       $t7, $t7, %lo(STR_10005E90)
/* 0108E8 004108E8 AC2F0000 */  sw          $t7, 0x0($at)
/* 0108EC 004108EC 8F998018 */  lw          $t9, %got(func_0041093C)($gp)
/* 0108F0 004108F0 8FA40034 */  lw          $a0, 0x34($sp)
/* 0108F4 004108F4 2739093C */  addiu       $t9, $t9, %lo(func_0041093C)
/* 0108F8 004108F8 0320F809 */  jalr        $t9
/* 0108FC 004108FC 00000000 */   nop
/* 010900 00410900 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010904 00410904 AFA2002C */  sw          $v0, 0x2C($sp)
/* 010908 00410908 8FB8002C */  lw          $t8, 0x2C($sp)
/* 01090C 0041090C 07010003 */  bgez        $t8, .L0041091C
/* 010910 00410910 00000000 */   nop
/* 010914 00410914 10000005 */  b           .L0041092C
/* 010918 00410918 2402FFFF */   addiu      $v0, $zero, -0x1
.L0041091C:
/* 01091C 0041091C 10000003 */  b           .L0041092C
/* 010920 00410920 8FA2002C */   lw         $v0, 0x2C($sp)
/* 010924 00410924 10000001 */  b           .L0041092C
/* 010928 00410928 00000000 */   nop
.L0041092C:
/* 01092C 0041092C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 010930 00410930 27BD0030 */  addiu       $sp, $sp, 0x30
/* 010934 00410934 03E00008 */  jr          $ra
/* 010938 00410938 00000000 */   nop
