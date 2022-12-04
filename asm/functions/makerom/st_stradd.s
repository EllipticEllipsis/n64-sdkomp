.section .rodata
glabel STR_10008D04
/* 048D04 10008D04 */ .asciz "st_stradd: argument is nil\n"
                      .balign 4


.section .text
glabel st_stradd # 656
/* 03FEBC 0043FEBC 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03FEC0 0043FEC0 279C2EA4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD2EA4
/* 03FEC4 0043FEC4 0399E021 */  addu        $gp, $gp, $t9
/* 03FEC8 0043FEC8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03FECC 0043FECC AFBF0024 */  sw          $ra, 0x24($sp)
/* 03FED0 0043FED0 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03FED4 0043FED4 AFB2001C */  sw          $s2, 0x1C($sp)
/* 03FED8 0043FED8 AFB10018 */  sw          $s1, 0x18($sp)
/* 03FEDC 0043FEDC AFB00014 */  sw          $s0, 0x14($sp)
/* 03FEE0 0043FEE0 14800006 */  bnez        $a0, .L0043FEFC
/* 03FEE4 0043FEE4 AFA40028 */   sw         $a0, 0x28($sp)
/* 03FEE8 0043FEE8 8F99853C */  lw          $t9, %call16(st_error)($gp)
/* 03FEEC 0043FEEC 8F848030 */  lw          $a0, %got(STR_10008D04)($gp)
/* 03FEF0 0043FEF0 0320F809 */  jalr        $t9
/* 03FEF4 0043FEF4 24848D04 */   addiu      $a0, $a0, %lo(STR_10008D04)
/* 03FEF8 0043FEF8 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043FEFC:
/* 03FEFC 0043FEFC 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 03FF00 0043FF00 8FA40028 */  lw          $a0, 0x28($sp)
/* 03FF04 0043FF04 0320F809 */  jalr        $t9
/* 03FF08 0043FF08 00000000 */   nop
/* 03FF0C 0043FF0C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03FF10 0043FF10 24520001 */  addiu       $s2, $v0, 0x1
/* 03FF14 0043FF14 8F8F87C8 */  lw          $t7, %got(st_pchdr)($gp)
/* 03FF18 0043FF18 8DEF0000 */  lw          $t7, 0x0($t7)
/* 03FF1C 0043FF1C 8DF80004 */  lw          $t8, 0x4($t7)
/* 03FF20 0043FF20 17000006 */  bnez        $t8, .L0043FF3C
/* 03FF24 0043FF24 00000000 */   nop
/* 03FF28 0043FF28 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03FF2C 0043FF2C 8F848030 */  lw          $a0, %got(D_1000AB80)($gp)
/* 03FF30 0043FF30 0320F809 */  jalr        $t9
/* 03FF34 0043FF34 2484AB80 */   addiu      $a0, $a0, %lo(D_1000AB80)
/* 03FF38 0043FF38 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043FF3C:
/* 03FF3C 0043FF3C 8F9187CC */  lw          $s1, %got(pcfdcur)($gp)
/* 03FF40 0043FF40 8E300000 */  lw          $s0, 0x0($s1)
/* 03FF44 0043FF44 56000008 */  bnel        $s0, $zero, .L0043FF68
/* 03FF48 0043FF48 8E19003C */   lw         $t9, 0x3C($s0)
/* 03FF4C 0043FF4C 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03FF50 0043FF50 8F848030 */  lw          $a0, %got(D_1000ABBC)($gp)
/* 03FF54 0043FF54 0320F809 */  jalr        $t9
/* 03FF58 0043FF58 2484ABBC */   addiu      $a0, $a0, %lo(D_1000ABBC)
/* 03FF5C 0043FF5C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03FF60 0043FF60 8E300000 */  lw          $s0, 0x0($s1)
/* 03FF64 0043FF64 8E19003C */  lw          $t9, 0x3C($s0)
.L0043FF68:
/* 03FF68 0043FF68 33280080 */  andi        $t0, $t9, 0x80
/* 03FF6C 0043FF6C 51000008 */  beql        $t0, $zero, .L0043FF90
/* 03FF70 0043FF70 8E090000 */   lw         $t1, 0x0($s0)
/* 03FF74 0043FF74 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03FF78 0043FF78 8F848030 */  lw          $a0, %got(D_1000ABF0)($gp)
/* 03FF7C 0043FF7C 0320F809 */  jalr        $t9
/* 03FF80 0043FF80 2484ABF0 */   addiu      $a0, $a0, %lo(D_1000ABF0)
/* 03FF84 0043FF84 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03FF88 0043FF88 8E300000 */  lw          $s0, 0x0($s1)
/* 03FF8C 0043FF8C 8E090000 */  lw          $t1, 0x0($s0)
.L0043FF90:
/* 03FF90 0043FF90 8E0A0018 */  lw          $t2, 0x18($s0)
/* 03FF94 0043FF94 8D23000C */  lw          $v1, 0xC($t1)
/* 03FF98 0043FF98 00725821 */  addu        $t3, $v1, $s2
/* 03FF9C 0043FF9C 014B082A */  slt         $at, $t2, $t3
/* 03FFA0 0043FFA0 10200012 */  beqz        $at, .L0043FFEC
/* 03FFA4 0043FFA4 00000000 */   nop
.L0043FFA8:
/* 03FFA8 0043FFA8 8F9985FC */  lw          $t9, %call16(st_malloc)($gp)
/* 03FFAC 0043FFAC 8E040014 */  lw          $a0, 0x14($s0)
/* 03FFB0 0043FFB0 26050018 */  addiu       $a1, $s0, 0x18
/* 03FFB4 0043FFB4 24060001 */  addiu       $a2, $zero, 0x1
/* 03FFB8 0043FFB8 0320F809 */  jalr        $t9
/* 03FFBC 0043FFBC 24070200 */   addiu      $a3, $zero, 0x200
/* 03FFC0 0043FFC0 8E2C0000 */  lw          $t4, 0x0($s1)
/* 03FFC4 0043FFC4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03FFC8 0043FFC8 AD820014 */  sw          $v0, 0x14($t4)
/* 03FFCC 0043FFCC 8E300000 */  lw          $s0, 0x0($s1)
/* 03FFD0 0043FFD0 8E0D0000 */  lw          $t5, 0x0($s0)
/* 03FFD4 0043FFD4 8E0E0018 */  lw          $t6, 0x18($s0)
/* 03FFD8 0043FFD8 8DA3000C */  lw          $v1, 0xC($t5)
/* 03FFDC 0043FFDC 00727821 */  addu        $t7, $v1, $s2
/* 03FFE0 0043FFE0 01CF082A */  slt         $at, $t6, $t7
/* 03FFE4 0043FFE4 1420FFF0 */  bnez        $at, .L0043FFA8
/* 03FFE8 0043FFE8 00000000 */   nop
.L0043FFEC:
/* 03FFEC 0043FFEC 8F9980A0 */  lw          $t9, %call16(strcpy)($gp)
/* 03FFF0 0043FFF0 8E180014 */  lw          $t8, 0x14($s0)
/* 03FFF4 0043FFF4 8FA50028 */  lw          $a1, 0x28($sp)
/* 03FFF8 0043FFF8 0320F809 */  jalr        $t9
/* 03FFFC 0043FFFC 03032021 */   addu       $a0, $t8, $v1
/* 040000 00440000 8E390000 */  lw          $t9, 0x0($s1)
/* 040004 00440004 8FBC0020 */  lw          $gp, 0x20($sp)
/* 040008 00440008 8F240000 */  lw          $a0, 0x0($t9)
/* 04000C 0044000C 8C82000C */  lw          $v0, 0xC($a0)
/* 040010 00440010 00524021 */  addu        $t0, $v0, $s2
/* 040014 00440014 AC88000C */  sw          $t0, 0xC($a0)
/* 040018 00440018 8FBF0024 */  lw          $ra, 0x24($sp)
/* 04001C 0044001C 8FB2001C */  lw          $s2, 0x1C($sp)
/* 040020 00440020 8FB10018 */  lw          $s1, 0x18($sp)
/* 040024 00440024 8FB00014 */  lw          $s0, 0x14($sp)
/* 040028 00440028 03E00008 */  jr          $ra
/* 04002C 0044002C 27BD0028 */   addiu      $sp, $sp, 0x28
