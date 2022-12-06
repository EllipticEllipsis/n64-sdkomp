.section .rodata
glabel STR_1000433C
/* 04433C 1000433C */ .asciz "usage: makerom [-D<define>] [-I<dir>] -[U<define>]\n"
                      .balign 4

glabel STR_10004370
/* 044370 10004370 */ .asciz "               [-c] [-n] [-d] [-g] [-e] [-m] [-q] [-v]\n"
                      .balign 4

glabel STR_100043A8
/* 0443A8 100043A8 */ .asciz "               [-o] [-b bootfile] [-h headerfile]\n"
                      .balign 4

glabel STR_100043DC
/* 0443DC 100043DC */ .asciz "               [-p pif2bootfile]\n"
                      .balign 4

glabel STR_10004400
/* 044400 10004400 */ .asciz "               [-s romsize (Mbits)]\n"
                      .balign 4

glabel STR_10004428
/* 044428 10004428 */ .asciz "               [-f filldata (0x00 - 0xff)]\n"
                      .balign 4

glabel STR_10004454
/* 044454 10004454 */ .asciz "               [-C clockrate] \n"
                      .balign 4

glabel STR_10004474
/* 044474 10004474 */ .asciz "               [-r romfile] specfile\n"
                      .balign 4


.section .text
glabel usage # 3
/* 00A700 0040A700 3C1C0FC1 */  lui         $gp, %hi(_gp_disp)
/* 00A704 0040A704 279C8660 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC08660
/* 00A708 0040A708 0399E021 */  addu        $gp, $gp, $t9
/* 00A70C 0040A70C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00A710 0040A710 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00A714 0040A714 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00A718 0040A718 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00A71C 0040A71C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00A720 0040A720 8F85802C */  lw          $a1, %got(STR_1000433C)($gp)
/* 00A724 0040A724 24840020 */  addiu       $a0, $a0, 0x20
/* 00A728 0040A728 0320F809 */  jalr        $t9
/* 00A72C 0040A72C 24A5433C */   addiu      $a1, $a1, %lo(STR_1000433C)
/* 00A730 0040A730 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A734 0040A734 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00A738 0040A738 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00A73C 0040A73C 8F85802C */  lw          $a1, %got(STR_10004370)($gp)
/* 00A740 0040A740 24840020 */  addiu       $a0, $a0, 0x20
/* 00A744 0040A744 0320F809 */  jalr        $t9
/* 00A748 0040A748 24A54370 */   addiu      $a1, $a1, %lo(STR_10004370)
/* 00A74C 0040A74C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A750 0040A750 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00A754 0040A754 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00A758 0040A758 8F85802C */  lw          $a1, %got(STR_100043A8)($gp)
/* 00A75C 0040A75C 24840020 */  addiu       $a0, $a0, 0x20
/* 00A760 0040A760 0320F809 */  jalr        $t9
/* 00A764 0040A764 24A543A8 */   addiu      $a1, $a1, %lo(STR_100043A8)
/* 00A768 0040A768 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A76C 0040A76C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00A770 0040A770 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00A774 0040A774 8F85802C */  lw          $a1, %got(STR_100043DC)($gp)
/* 00A778 0040A778 24840020 */  addiu       $a0, $a0, 0x20
/* 00A77C 0040A77C 0320F809 */  jalr        $t9
/* 00A780 0040A780 24A543DC */   addiu      $a1, $a1, %lo(STR_100043DC)
/* 00A784 0040A784 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A788 0040A788 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00A78C 0040A78C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00A790 0040A790 8F85802C */  lw          $a1, %got(STR_10004400)($gp)
/* 00A794 0040A794 24840020 */  addiu       $a0, $a0, 0x20
/* 00A798 0040A798 0320F809 */  jalr        $t9
/* 00A79C 0040A79C 24A54400 */   addiu      $a1, $a1, %lo(STR_10004400)
/* 00A7A0 0040A7A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A7A4 0040A7A4 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00A7A8 0040A7A8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00A7AC 0040A7AC 8F85802C */  lw          $a1, %got(STR_10004428)($gp)
/* 00A7B0 0040A7B0 24840020 */  addiu       $a0, $a0, 0x20
/* 00A7B4 0040A7B4 0320F809 */  jalr        $t9
/* 00A7B8 0040A7B8 24A54428 */   addiu      $a1, $a1, %lo(STR_10004428)
/* 00A7BC 0040A7BC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A7C0 0040A7C0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00A7C4 0040A7C4 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00A7C8 0040A7C8 8F85802C */  lw          $a1, %got(STR_10004454)($gp)
/* 00A7CC 0040A7CC 24840020 */  addiu       $a0, $a0, 0x20
/* 00A7D0 0040A7D0 0320F809 */  jalr        $t9
/* 00A7D4 0040A7D4 24A54454 */   addiu      $a1, $a1, %lo(STR_10004454)
/* 00A7D8 0040A7D8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A7DC 0040A7DC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00A7E0 0040A7E0 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00A7E4 0040A7E4 8F85802C */  lw          $a1, %got(STR_10004474)($gp)
/* 00A7E8 0040A7E8 24840020 */  addiu       $a0, $a0, 0x20
/* 00A7EC 0040A7EC 0320F809 */  jalr        $t9
/* 00A7F0 0040A7F0 24A54474 */   addiu      $a1, $a1, %lo(STR_10004474)
/* 00A7F4 0040A7F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A7F8 0040A7F8 10000001 */  b           .L0040A800
/* 00A7FC 0040A7FC 00000000 */   nop
.L0040A800:
/* 00A800 0040A800 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00A804 0040A804 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00A808 0040A808 03E00008 */  jr          $ra
/* 00A80C 0040A80C 00000000 */   nop
