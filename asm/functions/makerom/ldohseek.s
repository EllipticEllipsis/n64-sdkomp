.section .rodata
glabel STR_10006B7C
/* 046B7C 10006B7C */ .asciz "ldohseek is not supported\n"
                      .balign 4

glabel STR_10006B98
/* 046B98 10006B98 */ .asciz "0"
                      .balign 4

glabel STR_10006B9C
/* 046B9C 10006B9C */ .asciz "ldfcn.c"
                      .balign 4


.section .text
glabel ldohseek # 226
/* 02A6C8 0042A6C8 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02A6CC 0042A6CC 279C8698 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE8698
/* 02A6D0 0042A6D0 0399E021 */  addu        $gp, $gp, $t9
/* 02A6D4 0042A6D4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A6D8 0042A6D8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A6DC 0042A6DC AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A6E0 0042A6E0 8C82002C */  lw          $v0, 0x2C($a0)
/* 02A6E4 0042A6E4 24010003 */  addiu       $at, $zero, 0x3
/* 02A6E8 0042A6E8 8C4E008C */  lw          $t6, 0x8C($v0)
/* 02A6EC 0042A6EC 55C10012 */  bnel        $t6, $at, .L0042A738
/* 02A6F0 0042A6F0 8C4F0090 */   lw         $t7, 0x90($v0)
/* 02A6F4 0042A6F4 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02A6F8 0042A6F8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02A6FC 0042A6FC 8F85802C */  lw          $a1, %got(STR_10006B7C)($gp)
/* 02A700 0042A700 24840020 */  addiu       $a0, $a0, 0x20
/* 02A704 0042A704 0320F809 */  jalr        $t9
/* 02A708 0042A708 24A56B7C */   addiu      $a1, $a1, %lo(STR_10006B7C)
/* 02A70C 0042A70C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A710 0042A710 24060256 */  addiu       $a2, $zero, 0x256
/* 02A714 0042A714 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 02A718 0042A718 8F84802C */  lw          $a0, %got(STR_10006B98)($gp)
/* 02A71C 0042A71C 8F85802C */  lw          $a1, %got(STR_10006B9C)($gp)
/* 02A720 0042A720 24846B98 */  addiu       $a0, $a0, %lo(STR_10006B98)
/* 02A724 0042A724 0320F809 */  jalr        $t9
/* 02A728 0042A728 24A56B9C */   addiu      $a1, $a1, %lo(STR_10006B9C)
/* 02A72C 0042A72C 1000000F */  b           .L0042A76C
/* 02A730 0042A730 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02A734 0042A734 8C4F0090 */  lw          $t7, 0x90($v0)
.L0042A738:
/* 02A738 0042A738 95F80010 */  lhu         $t8, 0x10($t7)
/* 02A73C 0042A73C 5300000B */  beql        $t8, $zero, .L0042A76C
/* 02A740 0042A740 00001025 */   move       $v0, $zero
/* 02A744 0042A744 8F998254 */  lw          $t9, %call16(ldfseek)($gp)
/* 02A748 0042A748 24050014 */  addiu       $a1, $zero, 0x14
/* 02A74C 0042A74C 00003025 */  move        $a2, $zero
/* 02A750 0042A750 0320F809 */  jalr        $t9
/* 02A754 0042A754 00000000 */   nop
/* 02A758 0042A758 14400003 */  bnez        $v0, .L0042A768
/* 02A75C 0042A75C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02A760 0042A760 10000002 */  b           .L0042A76C
/* 02A764 0042A764 24020001 */   addiu      $v0, $zero, 0x1
.L0042A768:
/* 02A768 0042A768 00001025 */  move        $v0, $zero
.L0042A76C:
/* 02A76C 0042A76C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A770 0042A770 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A774 0042A774 03E00008 */  jr          $ra
/* 02A778 0042A778 00000000 */   nop
