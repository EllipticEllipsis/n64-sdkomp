.section .rodata
glabel STR_10008E74
/* 048E74 10008E74 */ .asciz "st_psym_ifd_isym: ifd (%d) or isym (%d) out of range\n"
                      .balign 4


.section .text
glabel st_psym_ifd_isym # 666
/* 04081C 0044081C 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 040820 00440820 279C2544 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD2544
/* 040824 00440824 0399E021 */  addu        $gp, $gp, $t9
/* 040828 00440828 8F8E87C8 */  lw          $t6, %got(st_pchdr)($gp)
/* 04082C 0044082C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 040830 00440830 AFBF001C */  sw          $ra, 0x1C($sp)
/* 040834 00440834 8DCE0000 */  lw          $t6, 0x0($t6)
/* 040838 00440838 AFBC0018 */  sw          $gp, 0x18($sp)
/* 04083C 0044083C 00803825 */  move        $a3, $a0
/* 040840 00440840 8DCF0004 */  lw          $t7, 0x4($t6)
/* 040844 00440844 00A03025 */  move        $a2, $a1
/* 040848 00440848 55E0000B */  bnel        $t7, $zero, .L00440878
/* 04084C 0044084C 3C017FFF */   lui        $at, (0x7FFFFFFF >> 16)
/* 040850 00440850 8F998618 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 040854 00440854 8F848030 */  lw          $a0, %got(D_1000AC40)($gp)
/* 040858 00440858 AFA5002C */  sw          $a1, 0x2C($sp)
/* 04085C 0044085C AFA70028 */  sw          $a3, 0x28($sp)
/* 040860 00440860 0320F809 */  jalr        $t9
/* 040864 00440864 2484AC40 */   addiu      $a0, $a0, %lo(D_1000AC40)
/* 040868 00440868 8FBC0018 */  lw          $gp, 0x18($sp)
/* 04086C 0044086C 8FA6002C */  lw          $a2, 0x2C($sp)
/* 040870 00440870 8FA70028 */  lw          $a3, 0x28($sp)
/* 040874 00440874 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
.L00440878:
/* 040878 00440878 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 04087C 0044087C 14E10008 */  bne         $a3, $at, .L004408A0
/* 040880 00440880 00000000 */   nop
/* 040884 00440884 8F99862C */  lw          $t9, %call16(st_pext_iext)($gp)
/* 040888 00440888 00C02025 */  move        $a0, $a2
/* 04088C 0044088C 0320F809 */  jalr        $t9
/* 040890 00440890 00000000 */   nop
/* 040894 00440894 8FBC0018 */  lw          $gp, 0x18($sp)
/* 040898 00440898 10000026 */  b           .L00440934
/* 04089C 0044089C 24420004 */   addiu      $v0, $v0, 0x4
.L004408A0:
/* 0408A0 004408A0 04E00011 */  bltz        $a3, .L004408E8
/* 0408A4 004408A4 00E02825 */   move       $a1, $a3
/* 0408A8 004408A8 04C0000F */  bltz        $a2, .L004408E8
/* 0408AC 004408AC 00000000 */   nop
/* 0408B0 004408B0 8F8287C8 */  lw          $v0, %got(st_pchdr)($gp)
/* 0408B4 004408B4 8C420000 */  lw          $v0, 0x0($v0)
/* 0408B8 004408B8 8C58000C */  lw          $t8, 0xC($v0)
/* 0408BC 004408BC 00F8082A */  slt         $at, $a3, $t8
/* 0408C0 004408C0 10200009 */  beqz        $at, .L004408E8
/* 0408C4 004408C4 00000000 */   nop
/* 0408C8 004408C8 8C590004 */  lw          $t9, 0x4($v0)
/* 0408CC 004408CC 00074180 */  sll         $t0, $a3, 6
/* 0408D0 004408D0 03281821 */  addu        $v1, $t9, $t0
/* 0408D4 004408D4 8C690000 */  lw          $t1, 0x0($v1)
/* 0408D8 004408D8 8D2A0014 */  lw          $t2, 0x14($t1)
/* 0408DC 004408DC 00CA082A */  slt         $at, $a2, $t2
/* 0408E0 004408E0 54200010 */  bnel        $at, $zero, .L00440924
/* 0408E4 004408E4 8C6F0004 */   lw         $t7, 0x4($v1)
.L004408E8:
/* 0408E8 004408E8 8F998618 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 0408EC 004408EC 8F848030 */  lw          $a0, %got(STR_10008E74)($gp)
/* 0408F0 004408F0 00075980 */  sll         $t3, $a3, 6
/* 0408F4 004408F4 AFAB0024 */  sw          $t3, 0x24($sp)
/* 0408F8 004408F8 AFA6002C */  sw          $a2, 0x2C($sp)
/* 0408FC 004408FC 0320F809 */  jalr        $t9
/* 040900 00440900 24848E74 */   addiu      $a0, $a0, %lo(STR_10008E74)
/* 040904 00440904 8FBC0018 */  lw          $gp, 0x18($sp)
/* 040908 00440908 8FAE0024 */  lw          $t6, 0x24($sp)
/* 04090C 0044090C 8FA6002C */  lw          $a2, 0x2C($sp)
/* 040910 00440910 8F8C87C8 */  lw          $t4, %got(st_pchdr)($gp)
/* 040914 00440914 8D8C0000 */  lw          $t4, 0x0($t4)
/* 040918 00440918 8D8D0004 */  lw          $t5, 0x4($t4)
/* 04091C 0044091C 01AE1821 */  addu        $v1, $t5, $t6
/* 040920 00440920 8C6F0004 */  lw          $t7, 0x4($v1)
.L00440924:
/* 040924 00440924 0006C080 */  sll         $t8, $a2, 2
/* 040928 00440928 0306C023 */  subu        $t8, $t8, $a2
/* 04092C 0044092C 0018C080 */  sll         $t8, $t8, 2
/* 040930 00440930 01F81021 */  addu        $v0, $t7, $t8
.L00440934:
/* 040934 00440934 8FBF001C */  lw          $ra, 0x1C($sp)
/* 040938 00440938 27BD0028 */  addiu       $sp, $sp, 0x28
/* 04093C 0044093C 03E00008 */  jr          $ra
/* 040940 00440940 00000000 */   nop