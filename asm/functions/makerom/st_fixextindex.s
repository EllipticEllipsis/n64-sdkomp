glabel st_fixextindex # 701
/* 042AE0 00442AE0 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 042AE4 00442AE4 279C0280 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD0280
/* 042AE8 00442AE8 0399E021 */  addu        $gp, $gp, $t9
/* 042AEC 00442AEC 8F998634 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 042AF0 00442AF0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 042AF4 00442AF4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 042AF8 00442AF8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 042AFC 00442AFC 0320F809 */  jalr        $t9
/* 042B00 00442B00 AFA50034 */   sw         $a1, 0x34($sp)
/* 042B04 00442B04 8C580000 */  lw          $t8, 0x0($v0)
/* 042B08 00442B08 8FBC0018 */  lw          $gp, 0x18($sp)
/* 042B0C 00442B0C 27AE0024 */  addiu       $t6, $sp, 0x24
/* 042B10 00442B10 ADD80000 */  sw          $t8, 0x0($t6)
/* 042B14 00442B14 8C4F0004 */  lw          $t7, 0x4($v0)
/* 042B18 00442B18 ADCF0004 */  sw          $t7, 0x4($t6)
/* 042B1C 00442B1C 8F99862C */  lw          $t9, %call16(st_pext_iext)($gp)
/* 042B20 00442B20 8FA40028 */  lw          $a0, 0x28($sp)
/* 042B24 00442B24 0320F809 */  jalr        $t9
/* 042B28 00442B28 00000000 */   nop
/* 042B2C 00442B2C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 042B30 00442B30 AFA2002C */  sw          $v0, 0x2C($sp)
/* 042B34 00442B34 8F9985D8 */  lw          $t9, %call16(st_currentifd)($gp)
/* 042B38 00442B38 0320F809 */  jalr        $t9
/* 042B3C 00442B3C 00000000 */   nop
/* 042B40 00442B40 8FA3002C */  lw          $v1, 0x2C($sp)
/* 042B44 00442B44 8FBC0018 */  lw          $gp, 0x18($sp)
/* 042B48 00442B48 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 042B4C 00442B4C A4620002 */  sh          $v0, 0x2($v1)
/* 042B50 00442B50 8FB90034 */  lw          $t9, 0x34($sp)
/* 042B54 00442B54 8C64000C */  lw          $a0, 0xC($v1)
/* 042B58 00442B58 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 042B5C 00442B5C 03214024 */  and         $t0, $t9, $at
/* 042B60 00442B60 01044826 */  xor         $t1, $t0, $a0
/* 042B64 00442B64 00095300 */  sll         $t2, $t1, 12
/* 042B68 00442B68 000A5B02 */  srl         $t3, $t2, 12
/* 042B6C 00442B6C 01646026 */  xor         $t4, $t3, $a0
/* 042B70 00442B70 AC6C000C */  sw          $t4, 0xC($v1)
/* 042B74 00442B74 946D000C */  lhu         $t5, 0xC($v1)
/* 042B78 00442B78 31AEFC1F */  andi        $t6, $t5, 0xFC1F
/* 042B7C 00442B7C 35CF0020 */  ori         $t7, $t6, 0x20
/* 042B80 00442B80 A46F000C */  sh          $t7, 0xC($v1)
/* 042B84 00442B84 8FBF001C */  lw          $ra, 0x1C($sp)
/* 042B88 00442B88 27BD0030 */  addiu       $sp, $sp, 0x30
/* 042B8C 00442B8C 03E00008 */  jr          $ra
/* 042B90 00442B90 00000000 */   nop
