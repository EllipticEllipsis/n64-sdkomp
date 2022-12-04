.section .rodata
glabel STR_100090F0
/* 0490F0 100090F0 */ .asciz "%s: Internal: "
                      .balign 4

glabel STR_10009100
/* 049100 10009100 */ .asciz "\n"
                      .balign 4
/* 049104 10009104 */ .asciz ""
                      .balign 4
/* 049108 10009108 */ .asciz ""
                      .balign 4
/* 04910C 1000910C */ .asciz ""
                      .balign 4


.section .text
glabel st_internal # 685
/* 041580 00441580 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 041584 00441584 279C17E0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD17E0
/* 041588 00441588 0399E021 */  addu        $gp, $gp, $t9
/* 04158C 0044158C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 041590 00441590 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 041594 00441594 AFA40028 */  sw          $a0, 0x28($sp)
/* 041598 00441598 AFA5002C */  sw          $a1, 0x2C($sp)
/* 04159C 0044159C AFA60030 */  sw          $a2, 0x30($sp)
/* 0415A0 004415A0 8F868704 */  lw          $a2, %got(st_errname)($gp)
/* 0415A4 004415A4 8F858030 */  lw          $a1, %got(STR_100090F0)($gp)
/* 0415A8 004415A8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 0415AC 004415AC AFBF0024 */  sw          $ra, 0x24($sp)
/* 0415B0 004415B0 AFBC0020 */  sw          $gp, 0x20($sp)
/* 0415B4 004415B4 AFA70034 */  sw          $a3, 0x34($sp)
/* 0415B8 004415B8 8CC60000 */  lw          $a2, 0x0($a2)
/* 0415BC 004415BC 24A590F0 */  addiu       $a1, $a1, %lo(STR_100090F0)
/* 0415C0 004415C0 0320F809 */  jalr        $t9
/* 0415C4 004415C4 24840020 */   addiu      $a0, $a0, 0x20
/* 0415C8 004415C8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0415CC 004415CC 8FAE0034 */  lw          $t6, 0x34($sp)
/* 0415D0 004415D0 8FAF0038 */  lw          $t7, 0x38($sp)
/* 0415D4 004415D4 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 0415D8 004415D8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 0415DC 004415DC 8FA50028 */  lw          $a1, 0x28($sp)
/* 0415E0 004415E0 8FA6002C */  lw          $a2, 0x2C($sp)
/* 0415E4 004415E4 8FA70030 */  lw          $a3, 0x30($sp)
/* 0415E8 004415E8 AFAE0010 */  sw          $t6, 0x10($sp)
/* 0415EC 004415EC AFAF0014 */  sw          $t7, 0x14($sp)
/* 0415F0 004415F0 0320F809 */  jalr        $t9
/* 0415F4 004415F4 24840020 */   addiu      $a0, $a0, 0x20
/* 0415F8 004415F8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0415FC 004415FC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 041600 00441600 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 041604 00441604 8F858030 */  lw          $a1, %got(STR_10009100)($gp)
/* 041608 00441608 24840020 */  addiu       $a0, $a0, 0x20
/* 04160C 0044160C 0320F809 */  jalr        $t9
/* 041610 00441610 24A59100 */   addiu      $a1, $a1, %lo(STR_10009100)
/* 041614 00441614 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041618 00441618 24040001 */  addiu       $a0, $zero, 0x1
/* 04161C 0044161C 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 041620 00441620 0320F809 */  jalr        $t9
/* 041624 00441624 00000000 */   nop
/* 041628 00441628 8FBF0024 */  lw          $ra, 0x24($sp)
/* 04162C 0044162C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041630 00441630 27BD0028 */  addiu       $sp, $sp, 0x28
/* 041634 00441634 03E00008 */  jr          $ra
/* 041638 00441638 00000000 */   nop
/* 04163C 0044163C 00000000 */  nop
