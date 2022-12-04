glabel obj_text_offset # 278
/* 02E908 0042E908 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02E90C 0042E90C 279C4458 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE4458
/* 02E910 0042E910 0399E021 */  addu        $gp, $gp, $t9
/* 02E914 0042E914 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 02E918 0042E918 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02E91C 0042E91C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02E920 0042E920 AFB00014 */  sw          $s0, 0x14($sp)
/* 02E924 0042E924 00808025 */  move        $s0, $a0
/* 02E928 0042E928 0320F809 */  jalr        $t9
/* 02E92C 0042E92C AFBC0018 */   sw         $gp, 0x18($sp)
/* 02E930 0042E930 24010002 */  addiu       $at, $zero, 0x2
/* 02E934 0042E934 1441003C */  bne         $v0, $at, .L0042EA28
/* 02E938 0042E938 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02E93C 0042E93C 8F9982B8 */  lw          $t9, %call16(obj_paouthdr)($gp)
/* 02E940 0042E940 02002025 */  move        $a0, $s0
/* 02E944 0042E944 0320F809 */  jalr        $t9
/* 02E948 0042E948 00000000 */   nop
/* 02E94C 0042E94C 844E0000 */  lh          $t6, 0x0($v0)
/* 02E950 0042E950 2401010B */  addiu       $at, $zero, 0x10B
/* 02E954 0042E954 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02E958 0042E958 11C1000A */  beq         $t6, $at, .L0042E984
/* 02E95C 0042E95C 00000000 */   nop
/* 02E960 0042E960 8F9982B8 */  lw          $t9, %call16(obj_paouthdr)($gp)
/* 02E964 0042E964 02002025 */  move        $a0, $s0
/* 02E968 0042E968 0320F809 */  jalr        $t9
/* 02E96C 0042E96C 00000000 */   nop
/* 02E970 0042E970 844F0000 */  lh          $t7, 0x0($v0)
/* 02E974 0042E974 24010123 */  addiu       $at, $zero, 0x123
/* 02E978 0042E978 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02E97C 0042E97C 15E10003 */  bne         $t7, $at, .L0042E98C
/* 02E980 0042E980 00000000 */   nop
.L0042E984:
/* 02E984 0042E984 10000029 */  b           .L0042EA2C
/* 02E988 0042E988 00001025 */   move       $v0, $zero
.L0042E98C:
/* 02E98C 0042E98C 8F9982B8 */  lw          $t9, %call16(obj_paouthdr)($gp)
/* 02E990 0042E990 02002025 */  move        $a0, $s0
/* 02E994 0042E994 0320F809 */  jalr        $t9
/* 02E998 0042E998 00000000 */   nop
/* 02E99C 0042E99C 84580002 */  lh          $t8, 0x2($v0)
/* 02E9A0 0042E9A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02E9A4 0042E9A4 2B010017 */  slti        $at, $t8, 0x17
/* 02E9A8 0042E9A8 1020000F */  beqz        $at, .L0042E9E8
/* 02E9AC 0042E9AC 00000000 */   nop
/* 02E9B0 0042E9B0 8F9982B4 */  lw          $t9, %call16(obj_pfilehdr)($gp)
/* 02E9B4 0042E9B4 02002025 */  move        $a0, $s0
/* 02E9B8 0042E9B8 0320F809 */  jalr        $t9
/* 02E9BC 0042E9BC 00000000 */   nop
/* 02E9C0 0042E9C0 94440002 */  lhu         $a0, 0x2($v0)
/* 02E9C4 0042E9C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02E9C8 0042E9C8 00800821 */  addu        $at, $a0, $zero
/* 02E9CC 0042E9CC 00042080 */  sll         $a0, $a0, 2
/* 02E9D0 0042E9D0 00812021 */  addu        $a0, $a0, $at
/* 02E9D4 0042E9D4 000420C0 */  sll         $a0, $a0, 3
/* 02E9D8 0042E9D8 24840053 */  addiu       $a0, $a0, 0x53
/* 02E9DC 0042E9DC 2401FFF8 */  addiu       $at, $zero, -0x8
/* 02E9E0 0042E9E0 1000000E */  b           .L0042EA1C
/* 02E9E4 0042E9E4 00812024 */   and        $a0, $a0, $at
.L0042E9E8:
/* 02E9E8 0042E9E8 8F9982B4 */  lw          $t9, %call16(obj_pfilehdr)($gp)
/* 02E9EC 0042E9EC 02002025 */  move        $a0, $s0
/* 02E9F0 0042E9F0 0320F809 */  jalr        $t9
/* 02E9F4 0042E9F4 00000000 */   nop
/* 02E9F8 0042E9F8 94440002 */  lhu         $a0, 0x2($v0)
/* 02E9FC 0042E9FC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02EA00 0042EA00 00800821 */  addu        $at, $a0, $zero
/* 02EA04 0042EA04 00042080 */  sll         $a0, $a0, 2
/* 02EA08 0042EA08 00812021 */  addu        $a0, $a0, $at
/* 02EA0C 0042EA0C 000420C0 */  sll         $a0, $a0, 3
/* 02EA10 0042EA10 2484005B */  addiu       $a0, $a0, 0x5B
/* 02EA14 0042EA14 2401FFF0 */  addiu       $at, $zero, -0x10
/* 02EA18 0042EA18 00812024 */  and         $a0, $a0, $at
.L0042EA1C:
/* 02EA1C 0042EA1C 00801825 */  move        $v1, $a0
/* 02EA20 0042EA20 10000002 */  b           .L0042EA2C
/* 02EA24 0042EA24 00601025 */   move       $v0, $v1
.L0042EA28:
/* 02EA28 0042EA28 00001025 */  move        $v0, $zero
.L0042EA2C:
/* 02EA2C 0042EA2C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02EA30 0042EA30 8FB00014 */  lw          $s0, 0x14($sp)
/* 02EA34 0042EA34 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02EA38 0042EA38 03E00008 */  jr          $ra
/* 02EA3C 0042EA3C 00000000 */   nop
