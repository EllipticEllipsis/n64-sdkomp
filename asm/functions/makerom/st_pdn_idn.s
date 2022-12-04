.section .rodata
glabel STR_1000909C
/* 04909C 1000909C */ .asciz "st_pdn_idn: idn (%d) less than 0 or greater than max (%d)\n"
                      .balign 4
/* 0490D8 100090D8 */ .asciz ""
                      .balign 4
/* 0490DC 100090DC */ .asciz ""
                      .balign 4


.section .text
glabel st_pdn_idn # 683
/* 04146C 0044146C 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 041470 00441470 279C18F4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD18F4
/* 041474 00441474 0399E021 */  addu        $gp, $gp, $t9
/* 041478 00441478 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 04147C 0044147C AFBF001C */  sw          $ra, 0x1C($sp)
/* 041480 00441480 AFBC0018 */  sw          $gp, 0x18($sp)
/* 041484 00441484 04800007 */  bltz        $a0, .L004414A4
/* 041488 00441488 00802825 */   move       $a1, $a0
/* 04148C 0044148C 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 041490 00441490 8C630000 */  lw          $v1, 0x0($v1)
/* 041494 00441494 8C6E003C */  lw          $t6, 0x3C($v1)
/* 041498 00441498 01C4082A */  slt         $at, $t6, $a0
/* 04149C 0044149C 5020000E */  beql        $at, $zero, .L004414D8
/* 0414A0 004414A0 8FBF001C */   lw         $ra, 0x1C($sp)
.L004414A4:
/* 0414A4 004414A4 8F8F87C8 */  lw          $t7, %got(st_pchdr)($gp)
/* 0414A8 004414A8 8F998618 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 0414AC 004414AC 8F848030 */  lw          $a0, %got(STR_1000909C)($gp)
/* 0414B0 004414B0 8DEF0000 */  lw          $t7, 0x0($t7)
/* 0414B4 004414B4 2484909C */  addiu       $a0, $a0, %lo(STR_1000909C)
/* 0414B8 004414B8 8DE6003C */  lw          $a2, 0x3C($t7)
/* 0414BC 004414BC 0320F809 */  jalr        $t9
/* 0414C0 004414C0 AFA50020 */   sw         $a1, 0x20($sp)
/* 0414C4 004414C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0414C8 004414C8 8FA50020 */  lw          $a1, 0x20($sp)
/* 0414CC 004414CC 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 0414D0 004414D0 8C630000 */  lw          $v1, 0x0($v1)
/* 0414D4 004414D4 8FBF001C */  lw          $ra, 0x1C($sp)
.L004414D8:
/* 0414D8 004414D8 8C780038 */  lw          $t8, 0x38($v1)
/* 0414DC 004414DC 0005C8C0 */  sll         $t9, $a1, 3
/* 0414E0 004414E0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0414E4 004414E4 03E00008 */  jr          $ra
/* 0414E8 004414E8 03191021 */   addu       $v0, $t8, $t9
/* 0414EC 004414EC 00000000 */  nop
