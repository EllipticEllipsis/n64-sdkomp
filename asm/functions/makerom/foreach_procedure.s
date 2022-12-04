glabel foreach_procedure # 530
/* 033E10 00433E10 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 033E14 00433E14 279CEF50 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDEF50
/* 033E18 00433E18 0399E021 */  addu        $gp, $gp, $t9
/* 033E1C 00433E1C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 033E20 00433E20 AFB5002C */  sw          $s5, 0x2C($sp)
/* 033E24 00433E24 AFB40028 */  sw          $s4, 0x28($sp)
/* 033E28 00433E28 AFB20020 */  sw          $s2, 0x20($sp)
/* 033E2C 00433E2C 00809025 */  move        $s2, $a0
/* 033E30 00433E30 00E0A025 */  move        $s4, $a3
/* 033E34 00433E34 00C0A825 */  move        $s5, $a2
/* 033E38 00433E38 AFBF0034 */  sw          $ra, 0x34($sp)
/* 033E3C 00433E3C AFBC0030 */  sw          $gp, 0x30($sp)
/* 033E40 00433E40 AFB30024 */  sw          $s3, 0x24($sp)
/* 033E44 00433E44 AFB1001C */  sw          $s1, 0x1C($sp)
/* 033E48 00433E48 10800006 */  beqz        $a0, .L00433E64
/* 033E4C 00433E4C AFB00018 */   sw         $s0, 0x18($sp)
/* 033E50 00433E50 8C8E009C */  lw          $t6, 0x9C($a0)
/* 033E54 00433E54 0005C0C0 */  sll         $t8, $a1, 3
/* 033E58 00433E58 0305C021 */  addu        $t8, $t8, $a1
/* 033E5C 00433E5C 15C00003 */  bnez        $t6, .L00433E6C
/* 033E60 00433E60 0018C0C0 */   sll        $t8, $t8, 3
.L00433E64:
/* 033E64 00433E64 1000001F */  b           .L00433EE4
/* 033E68 00433E68 2402FFFF */   addiu      $v0, $zero, -0x1
.L00433E6C:
/* 033E6C 00433E6C 8E4800D0 */  lw          $t0, 0xD0($s2)
/* 033E70 00433E70 8E4F00A0 */  lw          $t7, 0xA0($s2)
/* 033E74 00433E74 8E4C00D4 */  lw          $t4, 0xD4($s2)
/* 033E78 00433E78 000848C0 */  sll         $t1, $t0, 3
/* 033E7C 00433E7C 01284821 */  addu        $t1, $t1, $t0
/* 033E80 00433E80 000948C0 */  sll         $t1, $t1, 3
/* 033E84 00433E84 00095023 */  negu        $t2, $t1
/* 033E88 00433E88 01F8C821 */  addu        $t9, $t7, $t8
/* 033E8C 00433E8C 032A1821 */  addu        $v1, $t9, $t2
/* 033E90 00433E90 946B0028 */  lhu         $t3, 0x28($v1)
/* 033E94 00433E94 9464002A */  lhu         $a0, 0x2A($v1)
/* 033E98 00433E98 2413FFFF */  addiu       $s3, $zero, -0x1
/* 033E9C 00433E9C 016C8021 */  addu        $s0, $t3, $t4
/* 033EA0 00433EA0 02048821 */  addu        $s1, $s0, $a0
/* 033EA4 00433EA4 0211082B */  sltu        $at, $s0, $s1
/* 033EA8 00433EA8 1020000D */  beqz        $at, .L00433EE0
/* 033EAC 00433EAC 02402025 */   move       $a0, $s2
.L00433EB0:
/* 033EB0 00433EB0 02002825 */  move        $a1, $s0
/* 033EB4 00433EB4 02803025 */  move        $a2, $s4
/* 033EB8 00433EB8 02A0F809 */  jalr        $s5
/* 033EBC 00433EBC 02A0C825 */   move       $t9, $s5
/* 033EC0 00433EC0 10530003 */  beq         $v0, $s3, .L00433ED0
/* 033EC4 00433EC4 8FBC0030 */   lw         $gp, 0x30($sp)
/* 033EC8 00433EC8 10000007 */  b           .L00433EE8
/* 033ECC 00433ECC 8FBF0034 */   lw         $ra, 0x34($sp)
.L00433ED0:
/* 033ED0 00433ED0 26100001 */  addiu       $s0, $s0, 0x1
/* 033ED4 00433ED4 0211082B */  sltu        $at, $s0, $s1
/* 033ED8 00433ED8 5420FFF5 */  bnel        $at, $zero, .L00433EB0
/* 033EDC 00433EDC 02402025 */   move       $a0, $s2
.L00433EE0:
/* 033EE0 00433EE0 2402FFFF */  addiu       $v0, $zero, -0x1
.L00433EE4:
/* 033EE4 00433EE4 8FBF0034 */  lw          $ra, 0x34($sp)
.L00433EE8:
/* 033EE8 00433EE8 8FB00018 */  lw          $s0, 0x18($sp)
/* 033EEC 00433EEC 8FB1001C */  lw          $s1, 0x1C($sp)
/* 033EF0 00433EF0 8FB20020 */  lw          $s2, 0x20($sp)
/* 033EF4 00433EF4 8FB30024 */  lw          $s3, 0x24($sp)
/* 033EF8 00433EF8 8FB40028 */  lw          $s4, 0x28($sp)
/* 033EFC 00433EFC 8FB5002C */  lw          $s5, 0x2C($sp)
/* 033F00 00433F00 03E00008 */  jr          $ra
/* 033F04 00433F04 27BD0038 */   addiu      $sp, $sp, 0x38
