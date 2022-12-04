glabel file_symbol_isym # 596
/* 03B5D4 0043B5D4 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03B5D8 0043B5D8 279C778C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD778C
/* 03B5DC 0043B5DC 0399E021 */  addu        $gp, $gp, $t9
/* 03B5E0 0043B5E0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03B5E4 0043B5E4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B5E8 0043B5E8 04C1000F */  bgez        $a2, .L0043B628
/* 03B5EC 0043B5EC AFBC0018 */   sw         $gp, 0x18($sp)
/* 03B5F0 0043B5F0 3C07000F */  lui         $a3, (0xFFFFF >> 16)
/* 03B5F4 0043B5F4 34E7FFFF */  ori         $a3, $a3, (0xFFFFF & 0xFFFF)
/* 03B5F8 0043B5F8 10C7000B */  beq         $a2, $a3, .L0043B628
/* 03B5FC 0043B5FC 00067023 */   negu       $t6, $a2
/* 03B600 0043B600 8F9887D4 */  lw          $t8, %got(usersymbol)($gp)
/* 03B604 0043B604 000E7880 */  sll         $t7, $t6, 2
/* 03B608 0043B608 01EE7823 */  subu        $t7, $t7, $t6
/* 03B60C 0043B60C 000F7880 */  sll         $t7, $t7, 2
/* 03B610 0043B610 01F8C821 */  addu        $t9, $t7, $t8
/* 03B614 0043B614 8F230008 */  lw          $v1, 0x8($t9)
/* 03B618 0043B618 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B61C 0043B61C 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B620 0043B620 1000002C */  b           .L0043B6D4
/* 03B624 0043B624 00611024 */   and        $v0, $v1, $at
.L0043B628:
/* 03B628 0043B628 8C8200D8 */  lw          $v0, 0xD8($a0)
/* 03B62C 0043B62C 3C07000F */  lui         $a3, (0xFFFFF >> 16)
/* 03B630 0043B630 34E7FFFF */  ori         $a3, $a3, (0xFFFFF & 0xFFFF)
/* 03B634 0043B634 00C2082B */  sltu        $at, $a2, $v0
/* 03B638 0043B638 1420000C */  bnez        $at, .L0043B66C
/* 03B63C 0043B63C 00067880 */   sll        $t7, $a2, 2
/* 03B640 0043B640 8C8800AC */  lw          $t0, 0xAC($a0)
/* 03B644 0043B644 00064900 */  sll         $t1, $a2, 4
/* 03B648 0043B648 00025900 */  sll         $t3, $v0, 4
/* 03B64C 0043B64C 000B6023 */  negu        $t4, $t3
/* 03B650 0043B650 01095021 */  addu        $t2, $t0, $t1
/* 03B654 0043B654 014C6821 */  addu        $t5, $t2, $t4
/* 03B658 0043B658 8DA3000C */  lw          $v1, 0xC($t5)
/* 03B65C 0043B65C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B660 0043B660 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B664 0043B664 1000000F */  b           .L0043B6A4
/* 03B668 0043B668 00611824 */   and        $v1, $v1, $at
.L0043B66C:
/* 03B66C 0043B66C 8C9900CC */  lw          $t9, 0xCC($a0)
/* 03B670 0043B670 8C8E00A8 */  lw          $t6, 0xA8($a0)
/* 03B674 0043B674 01E67823 */  subu        $t7, $t7, $a2
/* 03B678 0043B678 00194080 */  sll         $t0, $t9, 2
/* 03B67C 0043B67C 01194023 */  subu        $t0, $t0, $t9
/* 03B680 0043B680 00084080 */  sll         $t0, $t0, 2
/* 03B684 0043B684 000F7880 */  sll         $t7, $t7, 2
/* 03B688 0043B688 00084823 */  negu        $t1, $t0
/* 03B68C 0043B68C 01CFC021 */  addu        $t8, $t6, $t7
/* 03B690 0043B690 03095821 */  addu        $t3, $t8, $t1
/* 03B694 0043B694 8D630008 */  lw          $v1, 0x8($t3)
/* 03B698 0043B698 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B69C 0043B69C 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B6A0 0043B6A0 00611824 */  and         $v1, $v1, $at
.L0043B6A4:
/* 03B6A4 0043B6A4 14670003 */  bne         $v1, $a3, .L0043B6B4
/* 03B6A8 0043B6A8 00000000 */   nop
/* 03B6AC 0043B6AC 10000009 */  b           .L0043B6D4
/* 03B6B0 0043B6B0 00E01025 */   move       $v0, $a3
.L0043B6B4:
/* 03B6B4 0043B6B4 8F9984FC */  lw          $t9, %call16(file_symbol)($gp)
/* 03B6B8 0043B6B8 AFA30024 */  sw          $v1, 0x24($sp)
/* 03B6BC 0043B6BC 0320F809 */  jalr        $t9
/* 03B6C0 0043B6C0 00000000 */   nop
/* 03B6C4 0043B6C4 8FA30024 */  lw          $v1, 0x24($sp)
/* 03B6C8 0043B6C8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B6CC 0043B6CC 00621821 */  addu        $v1, $v1, $v0
/* 03B6D0 0043B6D0 00601025 */  move        $v0, $v1
.L0043B6D4:
/* 03B6D4 0043B6D4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03B6D8 0043B6D8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03B6DC 0043B6DC 03E00008 */  jr          $ra
/* 03B6E0 0043B6E0 00000000 */   nop
