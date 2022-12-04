glabel st_fixextsc # 702
/* 042B94 00442B94 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 042B98 00442B98 279C01CC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD01CC
/* 042B9C 00442B9C 0399E021 */  addu        $gp, $gp, $t9
/* 042BA0 00442BA0 8F998634 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 042BA4 00442BA4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 042BA8 00442BA8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 042BAC 00442BAC AFBC0018 */  sw          $gp, 0x18($sp)
/* 042BB0 00442BB0 0320F809 */  jalr        $t9
/* 042BB4 00442BB4 AFA50034 */   sw         $a1, 0x34($sp)
/* 042BB8 00442BB8 8C580000 */  lw          $t8, 0x0($v0)
/* 042BBC 00442BBC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 042BC0 00442BC0 27AE0024 */  addiu       $t6, $sp, 0x24
/* 042BC4 00442BC4 ADD80000 */  sw          $t8, 0x0($t6)
/* 042BC8 00442BC8 8C4F0004 */  lw          $t7, 0x4($v0)
/* 042BCC 00442BCC ADCF0004 */  sw          $t7, 0x4($t6)
/* 042BD0 00442BD0 8F99862C */  lw          $t9, %call16(st_pext_iext)($gp)
/* 042BD4 00442BD4 8FA40028 */  lw          $a0, 0x28($sp)
/* 042BD8 00442BD8 0320F809 */  jalr        $t9
/* 042BDC 00442BDC 00000000 */   nop
/* 042BE0 00442BE0 8FB90034 */  lw          $t9, 0x34($sp)
/* 042BE4 00442BE4 944B000C */  lhu         $t3, 0xC($v0)
/* 042BE8 00442BE8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 042BEC 00442BEC 00194940 */  sll         $t1, $t9, 5
/* 042BF0 00442BF0 312A03E0 */  andi        $t2, $t1, 0x3E0
/* 042BF4 00442BF4 316CFC1F */  andi        $t4, $t3, 0xFC1F
/* 042BF8 00442BF8 014C6825 */  or          $t5, $t2, $t4
/* 042BFC 00442BFC A44D000C */  sh          $t5, 0xC($v0)
/* 042C00 00442C00 8FBF001C */  lw          $ra, 0x1C($sp)
/* 042C04 00442C04 27BD0030 */  addiu       $sp, $sp, 0x30
/* 042C08 00442C08 03E00008 */  jr          $ra
/* 042C0C 00442C0C 00000000 */   nop
