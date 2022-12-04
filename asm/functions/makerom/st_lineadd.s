glabel st_lineadd # 655
/* 03FD94 0043FD94 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03FD98 0043FD98 279C2FCC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD2FCC
/* 03FD9C 0043FD9C 0399E021 */  addu        $gp, $gp, $t9
/* 03FDA0 0043FDA0 8F8E87C8 */  lw          $t6, %got(st_pchdr)($gp)
/* 03FDA4 0043FDA4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03FDA8 0043FDA8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03FDAC 0043FDAC 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03FDB0 0043FDB0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03FDB4 0043FDB4 AFA40020 */  sw          $a0, 0x20($sp)
/* 03FDB8 0043FDB8 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03FDBC 0043FDBC 15E00006 */  bnez        $t7, .L0043FDD8
/* 03FDC0 0043FDC0 00000000 */   nop
/* 03FDC4 0043FDC4 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03FDC8 0043FDC8 8F848030 */  lw          $a0, %got(D_1000AB80)($gp)
/* 03FDCC 0043FDCC 0320F809 */  jalr        $t9
/* 03FDD0 0043FDD0 2484AB80 */   addiu      $a0, $a0, %lo(D_1000AB80)
/* 03FDD4 0043FDD4 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043FDD8:
/* 03FDD8 0043FDD8 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 03FDDC 0043FDDC 8C630000 */  lw          $v1, 0x0($v1)
/* 03FDE0 0043FDE0 54600009 */  bnel        $v1, $zero, .L0043FE08
/* 03FDE4 0043FDE4 8C78003C */   lw         $t8, 0x3C($v1)
/* 03FDE8 0043FDE8 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03FDEC 0043FDEC 8F848030 */  lw          $a0, %got(D_1000ABBC)($gp)
/* 03FDF0 0043FDF0 0320F809 */  jalr        $t9
/* 03FDF4 0043FDF4 2484ABBC */   addiu      $a0, $a0, %lo(D_1000ABBC)
/* 03FDF8 0043FDF8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03FDFC 0043FDFC 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 03FE00 0043FE00 8C630000 */  lw          $v1, 0x0($v1)
/* 03FE04 0043FE04 8C78003C */  lw          $t8, 0x3C($v1)
.L0043FE08:
/* 03FE08 0043FE08 33190004 */  andi        $t9, $t8, 0x4
/* 03FE0C 0043FE0C 53200009 */  beql        $t9, $zero, .L0043FE34
/* 03FE10 0043FE10 8C680000 */   lw         $t0, 0x0($v1)
/* 03FE14 0043FE14 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03FE18 0043FE18 8F848030 */  lw          $a0, %got(D_1000ABF0)($gp)
/* 03FE1C 0043FE1C 0320F809 */  jalr        $t9
/* 03FE20 0043FE20 2484ABF0 */   addiu      $a0, $a0, %lo(D_1000ABF0)
/* 03FE24 0043FE24 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03FE28 0043FE28 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 03FE2C 0043FE2C 8C630000 */  lw          $v1, 0x0($v1)
/* 03FE30 0043FE30 8C680000 */  lw          $t0, 0x0($v1)
.L0043FE34:
/* 03FE34 0043FE34 8C690028 */  lw          $t1, 0x28($v1)
/* 03FE38 0043FE38 24650028 */  addiu       $a1, $v1, 0x28
/* 03FE3C 0043FE3C 8D04001C */  lw          $a0, 0x1C($t0)
/* 03FE40 0043FE40 0089082A */  slt         $at, $a0, $t1
/* 03FE44 0043FE44 5420000F */  bnel        $at, $zero, .L0043FE84
/* 03FE48 0043FE48 8C6D0024 */   lw         $t5, 0x24($v1)
/* 03FE4C 0043FE4C 8F9985FC */  lw          $t9, %call16(st_malloc)($gp)
/* 03FE50 0043FE50 8C640024 */  lw          $a0, 0x24($v1)
/* 03FE54 0043FE54 24060004 */  addiu       $a2, $zero, 0x4
/* 03FE58 0043FE58 0320F809 */  jalr        $t9
/* 03FE5C 0043FE5C 24070200 */   addiu      $a3, $zero, 0x200
/* 03FE60 0043FE60 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03FE64 0043FE64 8F8A87CC */  lw          $t2, %got(pcfdcur)($gp)
/* 03FE68 0043FE68 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 03FE6C 0043FE6C 8D4A0000 */  lw          $t2, 0x0($t2)
/* 03FE70 0043FE70 AD420024 */  sw          $v0, 0x24($t2)
/* 03FE74 0043FE74 8C630000 */  lw          $v1, 0x0($v1)
/* 03FE78 0043FE78 8C6B0000 */  lw          $t3, 0x0($v1)
/* 03FE7C 0043FE7C 8D64001C */  lw          $a0, 0x1C($t3)
/* 03FE80 0043FE80 8C6D0024 */  lw          $t5, 0x24($v1)
.L0043FE84:
/* 03FE84 0043FE84 8FAC0020 */  lw          $t4, 0x20($sp)
/* 03FE88 0043FE88 8F9887CC */  lw          $t8, %got(pcfdcur)($gp)
/* 03FE8C 0043FE8C 00047080 */  sll         $t6, $a0, 2
/* 03FE90 0043FE90 01AE7821 */  addu        $t7, $t5, $t6
/* 03FE94 0043FE94 ADEC0000 */  sw          $t4, 0x0($t7)
/* 03FE98 0043FE98 8F180000 */  lw          $t8, 0x0($t8)
/* 03FE9C 0043FE9C 8F050000 */  lw          $a1, 0x0($t8)
/* 03FEA0 0043FEA0 8CA2001C */  lw          $v0, 0x1C($a1)
/* 03FEA4 0043FEA4 24590001 */  addiu       $t9, $v0, 0x1
/* 03FEA8 0043FEA8 ACB9001C */  sw          $t9, 0x1C($a1)
/* 03FEAC 0043FEAC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03FEB0 0043FEB0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03FEB4 0043FEB4 03E00008 */  jr          $ra
/* 03FEB8 0043FEB8 00000000 */   nop
