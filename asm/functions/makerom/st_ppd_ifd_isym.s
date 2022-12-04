glabel st_ppd_ifd_isym # 669
/* 040AE0 00440AE0 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 040AE4 00440AE4 279C2280 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD2280
/* 040AE8 00440AE8 0399E021 */  addu        $gp, $gp, $t9
/* 040AEC 00440AEC 8F8E87C8 */  lw          $t6, %got(st_pchdr)($gp)
/* 040AF0 00440AF0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 040AF4 00440AF4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 040AF8 00440AF8 8DCE0000 */  lw          $t6, 0x0($t6)
/* 040AFC 00440AFC AFBC0018 */  sw          $gp, 0x18($sp)
/* 040B00 00440B00 AFA40020 */  sw          $a0, 0x20($sp)
/* 040B04 00440B04 8DCF0004 */  lw          $t7, 0x4($t6)
/* 040B08 00440B08 00A03825 */  move        $a3, $a1
/* 040B0C 00440B0C 15E00008 */  bnez        $t7, .L00440B30
/* 040B10 00440B10 00000000 */   nop
/* 040B14 00440B14 8F998618 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 040B18 00440B18 8F848030 */  lw          $a0, %got(D_1000AC40)($gp)
/* 040B1C 00440B1C AFA50024 */  sw          $a1, 0x24($sp)
/* 040B20 00440B20 0320F809 */  jalr        $t9
/* 040B24 00440B24 2484AC40 */   addiu      $a0, $a0, %lo(D_1000AC40)
/* 040B28 00440B28 8FBC0018 */  lw          $gp, 0x18($sp)
/* 040B2C 00440B2C 8FA70024 */  lw          $a3, 0x24($sp)
.L00440B30:
/* 040B30 00440B30 8F998608 */  lw          $t9, %call16(st_pcfd_ifd)($gp)
/* 040B34 00440B34 8FA40020 */  lw          $a0, 0x20($sp)
/* 040B38 00440B38 AFA70024 */  sw          $a3, 0x24($sp)
/* 040B3C 00440B3C 0320F809 */  jalr        $t9
/* 040B40 00440B40 00000000 */   nop
/* 040B44 00440B44 8C580000 */  lw          $t8, 0x0($v0)
/* 040B48 00440B48 8FBC0018 */  lw          $gp, 0x18($sp)
/* 040B4C 00440B4C 8FA70024 */  lw          $a3, 0x24($sp)
/* 040B50 00440B50 9719002A */  lhu         $t9, 0x2A($t8)
/* 040B54 00440B54 00403025 */  move        $a2, $v0
/* 040B58 00440B58 00001825 */  move        $v1, $zero
/* 040B5C 00440B5C 13200011 */  beqz        $t9, .L00440BA4
/* 040B60 00440B60 8FBF001C */   lw         $ra, 0x1C($sp)
/* 040B64 00440B64 00002825 */  move        $a1, $zero
/* 040B68 00440B68 8C440034 */  lw          $a0, 0x34($v0)
/* 040B6C 00440B6C 8C880004 */  lw          $t0, 0x4($a0)
.L00440B70:
/* 040B70 00440B70 54E80005 */  bnel        $a3, $t0, .L00440B88
/* 040B74 00440B74 8CCA0000 */   lw         $t2, 0x0($a2)
/* 040B78 00440B78 8CC90034 */  lw          $t1, 0x34($a2)
/* 040B7C 00440B7C 1000000A */  b           .L00440BA8
/* 040B80 00440B80 01251021 */   addu       $v0, $t1, $a1
/* 040B84 00440B84 8CCA0000 */  lw          $t2, 0x0($a2)
.L00440B88:
/* 040B88 00440B88 24630001 */  addiu       $v1, $v1, 0x1
/* 040B8C 00440B8C 24A50034 */  addiu       $a1, $a1, 0x34
/* 040B90 00440B90 954B002A */  lhu         $t3, 0x2A($t2)
/* 040B94 00440B94 24840034 */  addiu       $a0, $a0, 0x34
/* 040B98 00440B98 006B082B */  sltu        $at, $v1, $t3
/* 040B9C 00440B9C 5420FFF4 */  bnel        $at, $zero, .L00440B70
/* 040BA0 00440BA0 8C880004 */   lw         $t0, 0x4($a0)
.L00440BA4:
/* 040BA4 00440BA4 00001025 */  move        $v0, $zero
.L00440BA8:
/* 040BA8 00440BA8 03E00008 */  jr          $ra
/* 040BAC 00440BAC 27BD0020 */   addiu      $sp, $sp, 0x20
