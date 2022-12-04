glabel st_fileend # 689
/* 041AF0 00441AF0 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 041AF4 00441AF4 279C1270 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD1270
/* 041AF8 00441AF8 0399E021 */  addu        $gp, $gp, $t9
/* 041AFC 00441AFC 8F998634 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 041B00 00441B00 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 041B04 00441B04 AFBF0024 */  sw          $ra, 0x24($sp)
/* 041B08 00441B08 0320F809 */  jalr        $t9
/* 041B0C 00441B0C AFBC0020 */   sw         $gp, 0x20($sp)
/* 041B10 00441B10 8C580000 */  lw          $t8, 0x0($v0)
/* 041B14 00441B14 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041B18 00441B18 27AE0048 */  addiu       $t6, $sp, 0x48
/* 041B1C 00441B1C ADD80000 */  sw          $t8, 0x0($t6)
/* 041B20 00441B20 8C4F0004 */  lw          $t7, 0x4($v0)
/* 041B24 00441B24 ADCF0004 */  sw          $t7, 0x4($t6)
/* 041B28 00441B28 8F998608 */  lw          $t9, %call16(st_pcfd_ifd)($gp)
/* 041B2C 00441B2C 8FA40048 */  lw          $a0, 0x48($sp)
/* 041B30 00441B30 0320F809 */  jalr        $t9
/* 041B34 00441B34 00000000 */   nop
/* 041B38 00441B38 8C430004 */  lw          $v1, 0x4($v0)
/* 041B3C 00441B3C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041B40 00441B40 2401FFFF */  addiu       $at, $zero, -0x1
/* 041B44 00441B44 10600015 */  beqz        $v1, .L00441B9C
/* 041B48 00441B48 00000000 */   nop
/* 041B4C 00441B4C 10610013 */  beq         $v1, $at, .L00441B9C
/* 041B50 00441B50 00000000 */   nop
/* 041B54 00441B54 8C590000 */  lw          $t9, 0x0($v0)
/* 041B58 00441B58 8F240014 */  lw          $a0, 0x14($t9)
/* 041B5C 00441B5C 1880000F */  blez        $a0, .L00441B9C
/* 041B60 00441B60 00044880 */   sll        $t1, $a0, 2
/* 041B64 00441B64 01244823 */  subu        $t1, $t1, $a0
/* 041B68 00441B68 00094880 */  sll         $t1, $t1, 2
/* 041B6C 00441B6C 00695021 */  addu        $t2, $v1, $t1
/* 041B70 00441B70 8D45FFFC */  lw          $a1, -0x4($t2)
/* 041B74 00441B74 24010008 */  addiu       $at, $zero, 0x8
/* 041B78 00441B78 00055E82 */  srl         $t3, $a1, 26
/* 041B7C 00441B7C 15610007 */  bne         $t3, $at, .L00441B9C
/* 041B80 00441B80 3C01000F */   lui        $at, (0xFFFFF >> 16)
/* 041B84 00441B84 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 041B88 00441B88 00A16024 */  and         $t4, $a1, $at
/* 041B8C 00441B8C 15800003 */  bnez        $t4, .L00441B9C
/* 041B90 00441B90 00000000 */   nop
/* 041B94 00441B94 1000003A */  b           .L00441C80
/* 041B98 00441B98 2402FFFF */   addiu      $v0, $zero, -0x1
.L00441B9C:
/* 041B9C 00441B9C 8F9985D8 */  lw          $t9, %call16(st_currentifd)($gp)
/* 041BA0 00441BA0 0320F809 */  jalr        $t9
/* 041BA4 00441BA4 00000000 */   nop
/* 041BA8 00441BA8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041BAC 00441BAC AFA2003C */  sw          $v0, 0x3C($sp)
/* 041BB0 00441BB0 8FA40048 */  lw          $a0, 0x48($sp)
/* 041BB4 00441BB4 8F9985E0 */  lw          $t9, %call16(st_setfd)($gp)
/* 041BB8 00441BB8 0320F809 */  jalr        $t9
/* 041BBC 00441BBC 00000000 */   nop
/* 041BC0 00441BC0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041BC4 00441BC4 8FA40048 */  lw          $a0, 0x48($sp)
/* 041BC8 00441BC8 8FA5004C */  lw          $a1, 0x4C($sp)
/* 041BCC 00441BCC 8F99860C */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 041BD0 00441BD0 0320F809 */  jalr        $t9
/* 041BD4 00441BD4 00000000 */   nop
/* 041BD8 00441BD8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041BDC 00441BDC 8C440000 */  lw          $a0, 0x0($v0)
/* 041BE0 00441BE0 AFA20044 */  sw          $v0, 0x44($sp)
/* 041BE4 00441BE4 8F998600 */  lw          $t9, %call16(st_symadd)($gp)
/* 041BE8 00441BE8 AFA00010 */  sw          $zero, 0x10($sp)
/* 041BEC 00441BEC 00002825 */  move        $a1, $zero
/* 041BF0 00441BF0 24060008 */  addiu       $a2, $zero, 0x8
/* 041BF4 00441BF4 0320F809 */  jalr        $t9
/* 041BF8 00441BF8 24070001 */   addiu      $a3, $zero, 0x1
/* 041BFC 00441BFC 8FA80044 */  lw          $t0, 0x44($sp)
/* 041C00 00441C00 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 041C04 00441C04 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 041C08 00441C08 8D030008 */  lw          $v1, 0x8($t0)
/* 041C0C 00441C0C 00412824 */  and         $a1, $v0, $at
/* 041C10 00441C10 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041C14 00441C14 00A36826 */  xor         $t5, $a1, $v1
/* 041C18 00441C18 000D7300 */  sll         $t6, $t5, 12
/* 041C1C 00441C1C 000E7B02 */  srl         $t7, $t6, 12
/* 041C20 00441C20 01E3C026 */  xor         $t8, $t7, $v1
/* 041C24 00441C24 AD180008 */  sw          $t8, 0x8($t0)
/* 041C28 00441C28 AFA5004C */  sw          $a1, 0x4C($sp)
/* 041C2C 00441C2C 8D030008 */  lw          $v1, 0x8($t0)
/* 041C30 00441C30 0061C824 */  and         $t9, $v1, $at
/* 041C34 00441C34 27290001 */  addiu       $t1, $t9, 0x1
/* 041C38 00441C38 01235026 */  xor         $t2, $t1, $v1
/* 041C3C 00441C3C 000A5B00 */  sll         $t3, $t2, 12
/* 041C40 00441C40 000B6302 */  srl         $t4, $t3, 12
/* 041C44 00441C44 01836826 */  xor         $t5, $t4, $v1
/* 041C48 00441C48 AD0D0008 */  sw          $t5, 0x8($t0)
/* 041C4C 00441C4C 8F9985E0 */  lw          $t9, %call16(st_setfd)($gp)
/* 041C50 00441C50 8FA4003C */  lw          $a0, 0x3C($sp)
/* 041C54 00441C54 0320F809 */  jalr        $t9
/* 041C58 00441C58 00000000 */   nop
/* 041C5C 00441C5C 27AE0048 */  addiu       $t6, $sp, 0x48
/* 041C60 00441C60 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041C64 00441C64 8DC40000 */  lw          $a0, 0x0($t6)
/* 041C68 00441C68 8F9985D0 */  lw          $t9, %call16(st_idn_dn)($gp)
/* 041C6C 00441C6C AFA40000 */  sw          $a0, 0x0($sp)
/* 041C70 00441C70 8DC50004 */  lw          $a1, 0x4($t6)
/* 041C74 00441C74 0320F809 */  jalr        $t9
/* 041C78 00441C78 AFA50004 */   sw         $a1, 0x4($sp)
/* 041C7C 00441C7C 8FBC0020 */  lw          $gp, 0x20($sp)
.L00441C80:
/* 041C80 00441C80 8FBF0024 */  lw          $ra, 0x24($sp)
/* 041C84 00441C84 27BD0050 */  addiu       $sp, $sp, 0x50
/* 041C88 00441C88 03E00008 */  jr          $ra
/* 041C8C 00441C8C 00000000 */   nop
