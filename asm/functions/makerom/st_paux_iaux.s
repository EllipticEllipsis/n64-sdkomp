.section .rodata
glabel STR_10008EAC
/* 048EAC 10008EAC */ .asciz "st_paux_iaux: iaux (%d) out of range\n"
                      .balign 4
/* 048ED4 10008ED4 */ .asciz ""
                      .balign 4
/* 048ED8 10008ED8 */ .asciz ""
                      .balign 4
/* 048EDC 10008EDC */ .asciz ""
                      .balign 4


.section .text
glabel st_paux_iaux # 667
/* 040944 00440944 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 040948 00440948 279C241C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD241C
/* 04094C 0044094C 0399E021 */  addu        $gp, $gp, $t9
/* 040950 00440950 8F8E87C8 */  lw          $t6, %got(st_pchdr)($gp)
/* 040954 00440954 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 040958 00440958 AFBF001C */  sw          $ra, 0x1C($sp)
/* 04095C 0044095C 8DCE0000 */  lw          $t6, 0x0($t6)
/* 040960 00440960 AFBC0018 */  sw          $gp, 0x18($sp)
/* 040964 00440964 AFA40020 */  sw          $a0, 0x20($sp)
/* 040968 00440968 8DCF0004 */  lw          $t7, 0x4($t6)
/* 04096C 0044096C 15E00006 */  bnez        $t7, .L00440988
/* 040970 00440970 00000000 */   nop
/* 040974 00440974 8F998618 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 040978 00440978 8F848030 */  lw          $a0, %got(D_1000AC40)($gp)
/* 04097C 0044097C 0320F809 */  jalr        $t9
/* 040980 00440980 2484AC40 */   addiu      $a0, $a0, %lo(D_1000AC40)
/* 040984 00440984 8FBC0018 */  lw          $gp, 0x18($sp)
.L00440988:
/* 040988 00440988 8F9887CC */  lw          $t8, %got(pcfdcur)($gp)
/* 04098C 0044098C 8F180000 */  lw          $t8, 0x0($t8)
/* 040990 00440990 57000007 */  bnel        $t8, $zero, .L004409B0
/* 040994 00440994 8FB90020 */   lw         $t9, 0x20($sp)
/* 040998 00440998 8F998618 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 04099C 0044099C 8F848030 */  lw          $a0, %got(D_1000AC7C)($gp)
/* 0409A0 004409A0 0320F809 */  jalr        $t9
/* 0409A4 004409A4 2484AC7C */   addiu      $a0, $a0, %lo(D_1000AC7C)
/* 0409A8 004409A8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0409AC 004409AC 8FB90020 */  lw          $t9, 0x20($sp)
.L004409B0:
/* 0409B0 004409B0 07200008 */  bltz        $t9, .L004409D4
/* 0409B4 004409B4 00000000 */   nop
/* 0409B8 004409B8 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 0409BC 004409BC 8C630000 */  lw          $v1, 0x0($v1)
/* 0409C0 004409C0 8C680000 */  lw          $t0, 0x0($v1)
/* 0409C4 004409C4 8D090030 */  lw          $t1, 0x30($t0)
/* 0409C8 004409C8 0329082A */  slt         $at, $t9, $t1
/* 0409CC 004409CC 5420000A */  bnel        $at, $zero, .L004409F8
/* 0409D0 004409D0 8FAB0020 */   lw         $t3, 0x20($sp)
.L004409D4:
/* 0409D4 004409D4 8F998618 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 0409D8 004409D8 8F848030 */  lw          $a0, %got(STR_10008EAC)($gp)
/* 0409DC 004409DC 8FA50020 */  lw          $a1, 0x20($sp)
/* 0409E0 004409E0 0320F809 */  jalr        $t9
/* 0409E4 004409E4 24848EAC */   addiu      $a0, $a0, %lo(STR_10008EAC)
/* 0409E8 004409E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0409EC 004409EC 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 0409F0 004409F0 8C630000 */  lw          $v1, 0x0($v1)
/* 0409F4 004409F4 8FAB0020 */  lw          $t3, 0x20($sp)
.L004409F8:
/* 0409F8 004409F8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0409FC 004409FC 8C6A000C */  lw          $t2, 0xC($v1)
/* 040A00 00440A00 000B6080 */  sll         $t4, $t3, 2
/* 040A04 00440A04 27BD0020 */  addiu       $sp, $sp, 0x20
/* 040A08 00440A08 03E00008 */  jr          $ra
/* 040A0C 00440A0C 014C1021 */   addu       $v0, $t2, $t4
