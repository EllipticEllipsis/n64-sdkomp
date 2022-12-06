.section .rodata
glabel STR_100048AC
/* 0448AC 100048AC */ .asciz "Translating ROM spec file into"
                      .balign 4

glabel STR_100048CC
/* 0448CC 100048CC */ .asciz " linker spec file in %s\n"
                      .balign 4


.section .text
glabel doWave # 12
/* 00B93C 0040B93C 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 00B940 0040B940 279C7424 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC07424
/* 00B944 0040B944 0399E021 */  addu        $gp, $gp, $t9
/* 00B948 0040B948 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00B94C 0040B94C AFBF001C */  sw          $ra, 0x1C($sp)
/* 00B950 0040B950 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00B954 0040B954 AFA40020 */  sw          $a0, 0x20($sp)
/* 00B958 0040B958 8F8E8660 */  lw          $t6, %got(debug)($gp)
/* 00B95C 0040B95C 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00B960 0040B960 11C0000D */  beqz        $t6, .L0040B998
/* 00B964 0040B964 00000000 */   nop
/* 00B968 0040B968 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00B96C 0040B96C 8F84802C */  lw          $a0, %got(STR_100048AC)($gp)
/* 00B970 0040B970 0320F809 */  jalr        $t9
/* 00B974 0040B974 248448AC */   addiu      $a0, $a0, %lo(STR_100048AC)
/* 00B978 0040B978 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B97C 0040B97C 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00B980 0040B980 8F84802C */  lw          $a0, %got(STR_100048CC)($gp)
/* 00B984 0040B984 8FA50020 */  lw          $a1, 0x20($sp)
/* 00B988 0040B988 248448CC */  addiu       $a0, $a0, %lo(STR_100048CC)
/* 00B98C 0040B98C 0320F809 */  jalr        $t9
/* 00B990 0040B990 24A50014 */   addiu      $a1, $a1, 0x14
/* 00B994 0040B994 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040B998:
/* 00B998 0040B998 8F998190 */  lw          $t9, %call16(createElspec)($gp)
/* 00B99C 0040B99C 8FA40020 */  lw          $a0, 0x20($sp)
/* 00B9A0 0040B9A0 0320F809 */  jalr        $t9
/* 00B9A4 0040B9A4 00000000 */   nop
/* 00B9A8 0040B9A8 2401FFFF */  addiu       $at, $zero, -0x1
/* 00B9AC 0040B9AC 1441000B */  bne         $v0, $at, .L0040B9DC
/* 00B9B0 0040B9B0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00B9B4 0040B9B4 8F998018 */  lw          $t9, %got(unlinkTempFiles)($gp)
/* 00B9B8 0040B9B8 2739BC54 */  addiu       $t9, $t9, %lo(unlinkTempFiles)
/* 00B9BC 0040B9BC 0320F809 */  jalr        $t9
/* 00B9C0 0040B9C0 00000000 */   nop
/* 00B9C4 0040B9C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B9C8 0040B9C8 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 00B9CC 0040B9CC 24040001 */  addiu       $a0, $zero, 0x1
/* 00B9D0 0040B9D0 0320F809 */  jalr        $t9
/* 00B9D4 0040B9D4 00000000 */   nop
/* 00B9D8 0040B9D8 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040B9DC:
/* 00B9DC 0040B9DC 8F998194 */  lw          $t9, %call16(runLinker)($gp)
/* 00B9E0 0040B9E0 8F858030 */  lw          $a1, %got(B_1000B640)($gp)
/* 00B9E4 0040B9E4 8F868030 */  lw          $a2, %got(B_1000B940)($gp)
/* 00B9E8 0040B9E8 8FA40020 */  lw          $a0, 0x20($sp)
/* 00B9EC 0040B9EC 24A5B640 */  addiu       $a1, $a1, %lo(B_1000B640)
/* 00B9F0 0040B9F0 0320F809 */  jalr        $t9
/* 00B9F4 0040B9F4 24C6B940 */   addiu      $a2, $a2, %lo(B_1000B940)
/* 00B9F8 0040B9F8 2401FFFF */  addiu       $at, $zero, -0x1
/* 00B9FC 0040B9FC 1441000F */  bne         $v0, $at, .L0040BA3C
/* 00BA00 0040BA00 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00BA04 0040BA04 8F8F8684 */  lw          $t7, %got(keep_going)($gp)
/* 00BA08 0040BA08 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00BA0C 0040BA0C 15E0000B */  bnez        $t7, .L0040BA3C
/* 00BA10 0040BA10 00000000 */   nop
/* 00BA14 0040BA14 8F998018 */  lw          $t9, %got(unlinkTempFiles)($gp)
/* 00BA18 0040BA18 2739BC54 */  addiu       $t9, $t9, %lo(unlinkTempFiles)
/* 00BA1C 0040BA1C 0320F809 */  jalr        $t9
/* 00BA20 0040BA20 00000000 */   nop
/* 00BA24 0040BA24 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BA28 0040BA28 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 00BA2C 0040BA2C 24040001 */  addiu       $a0, $zero, 0x1
/* 00BA30 0040BA30 0320F809 */  jalr        $t9
/* 00BA34 0040BA34 00000000 */   nop
/* 00BA38 0040BA38 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040BA3C:
/* 00BA3C 0040BA3C 10000001 */  b           .L0040BA44
/* 00BA40 0040BA40 00000000 */   nop
.L0040BA44:
/* 00BA44 0040BA44 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00BA48 0040BA48 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00BA4C 0040BA4C 03E00008 */  jr          $ra
/* 00BA50 0040BA50 00000000 */   nop
