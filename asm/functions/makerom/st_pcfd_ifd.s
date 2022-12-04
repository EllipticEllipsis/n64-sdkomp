.section .rodata
glabel STR_10008E50
/* 048E50 10008E50 */ .asciz "st_pcfd_ifd: ifd (%d) out of range\n"
                      .balign 4


.section .text
glabel st_pcfd_ifd # 665
/* 040774 00440774 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 040778 00440778 279C25EC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD25EC
/* 04077C 0044077C 0399E021 */  addu        $gp, $gp, $t9
/* 040780 00440780 8F8E87C8 */  lw          $t6, %got(st_pchdr)($gp)
/* 040784 00440784 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 040788 00440788 AFBF001C */  sw          $ra, 0x1C($sp)
/* 04078C 0044078C 8DCE0000 */  lw          $t6, 0x0($t6)
/* 040790 00440790 AFBC0018 */  sw          $gp, 0x18($sp)
/* 040794 00440794 00802825 */  move        $a1, $a0
/* 040798 00440798 8DCF0004 */  lw          $t7, 0x4($t6)
/* 04079C 0044079C 15E00008 */  bnez        $t7, .L004407C0
/* 0407A0 004407A0 00000000 */   nop
/* 0407A4 004407A4 8F998618 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 0407A8 004407A8 8F848030 */  lw          $a0, %got(D_1000AC40)($gp)
/* 0407AC 004407AC AFA50020 */  sw          $a1, 0x20($sp)
/* 0407B0 004407B0 0320F809 */  jalr        $t9
/* 0407B4 004407B4 2484AC40 */   addiu      $a0, $a0, %lo(D_1000AC40)
/* 0407B8 004407B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0407BC 004407BC 8FA50020 */  lw          $a1, 0x20($sp)
.L004407C0:
/* 0407C0 004407C0 04A00007 */  bltz        $a1, .L004407E0
/* 0407C4 004407C4 00000000 */   nop
/* 0407C8 004407C8 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 0407CC 004407CC 8C630000 */  lw          $v1, 0x0($v1)
/* 0407D0 004407D0 8C78000C */  lw          $t8, 0xC($v1)
/* 0407D4 004407D4 00B8082A */  slt         $at, $a1, $t8
/* 0407D8 004407D8 5420000B */  bnel        $at, $zero, .L00440808
/* 0407DC 004407DC 8FBF001C */   lw         $ra, 0x1C($sp)
.L004407E0:
/* 0407E0 004407E0 8F998618 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 0407E4 004407E4 8F848030 */  lw          $a0, %got(STR_10008E50)($gp)
/* 0407E8 004407E8 AFA50020 */  sw          $a1, 0x20($sp)
/* 0407EC 004407EC 0320F809 */  jalr        $t9
/* 0407F0 004407F0 24848E50 */   addiu      $a0, $a0, %lo(STR_10008E50)
/* 0407F4 004407F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0407F8 004407F8 8FA50020 */  lw          $a1, 0x20($sp)
/* 0407FC 004407FC 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 040800 00440800 8C630000 */  lw          $v1, 0x0($v1)
/* 040804 00440804 8FBF001C */  lw          $ra, 0x1C($sp)
.L00440808:
/* 040808 00440808 8C790004 */  lw          $t9, 0x4($v1)
/* 04080C 0044080C 00054180 */  sll         $t0, $a1, 6
/* 040810 00440810 27BD0020 */  addiu       $sp, $sp, 0x20
/* 040814 00440814 03E00008 */  jr          $ra
/* 040818 00440818 03281021 */   addu       $v0, $t9, $t0
