glabel ehdr64 # 182
/* 026D48 00426D48 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 026D4C 00426D4C 279CC018 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEC018
/* 026D50 00426D50 0399E021 */  addu        $gp, $gp, $t9
/* 026D54 00426D54 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 026D58 00426D58 8F9981CC */  lw          $t9, %call16(_elf64_fsize)($gp)
/* 026D5C 00426D5C AFA40058 */  sw          $a0, 0x58($sp)
/* 026D60 00426D60 8FAE0058 */  lw          $t6, 0x58($sp)
/* 026D64 00426D64 AFBF001C */  sw          $ra, 0x1C($sp)
/* 026D68 00426D68 AFBC0018 */  sw          $gp, 0x18($sp)
/* 026D6C 00426D6C AFA5005C */  sw          $a1, 0x5C($sp)
/* 026D70 00426D70 AFB00014 */  sw          $s0, 0x14($sp)
/* 026D74 00426D74 24050001 */  addiu       $a1, $zero, 0x1
/* 026D78 00426D78 24040003 */  addiu       $a0, $zero, 0x3
/* 026D7C 00426D7C 0320F809 */  jalr        $t9
/* 026D80 00426D80 8DC60044 */   lw         $a2, 0x44($t6)
/* 026D84 00426D84 8FAF0058 */  lw          $t7, 0x58($sp)
/* 026D88 00426D88 00408025 */  move        $s0, $v0
/* 026D8C 00426D8C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 026D90 00426D90 8DF80034 */  lw          $t8, 0x34($t7)
/* 026D94 00426D94 0310082B */  sltu        $at, $t8, $s0
/* 026D98 00426D98 10200005 */  beqz        $at, .L00426DB0
/* 026D9C 00426D9C 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 026DA0 00426DA0 2419020B */  addiu       $t9, $zero, 0x20B
/* 026DA4 00426DA4 2402FFFF */  addiu       $v0, $zero, -0x1
/* 026DA8 00426DA8 10000057 */  b           .L00426F08
/* 026DAC 00426DAC AC390000 */   sw         $t9, 0x0($at)
.L00426DB0:
/* 026DB0 00426DB0 8FA8005C */  lw          $t0, 0x5C($sp)
/* 026DB4 00426DB4 1100000A */  beqz        $t0, .L00426DE0
/* 026DB8 00426DB8 2E010040 */   sltiu      $at, $s0, 0x40
/* 026DBC 00426DBC 14200008 */  bnez        $at, .L00426DE0
/* 026DC0 00426DC0 00000000 */   nop
/* 026DC4 00426DC4 8FA90058 */  lw          $t1, 0x58($sp)
/* 026DC8 00426DC8 240B0001 */  addiu       $t3, $zero, 0x1
/* 026DCC 00426DCC 8D2A0028 */  lw          $t2, 0x28($t1)
/* 026DD0 00426DD0 AD2A0050 */  sw          $t2, 0x50($t1)
/* 026DD4 00426DD4 8FAC0058 */  lw          $t4, 0x58($sp)
/* 026DD8 00426DD8 10000014 */  b           .L00426E2C
/* 026DDC 00426DDC AD8B000C */   sw         $t3, 0xC($t4)
.L00426DE0:
/* 026DE0 00426DE0 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 026DE4 00426DE4 24040040 */  addiu       $a0, $zero, 0x40
/* 026DE8 00426DE8 0320F809 */  jalr        $t9
/* 026DEC 00426DEC 00000000 */   nop
/* 026DF0 00426DF0 8FAD0058 */  lw          $t5, 0x58($sp)
/* 026DF4 00426DF4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 026DF8 00426DF8 ADA20050 */  sw          $v0, 0x50($t5)
/* 026DFC 00426DFC 8FAE0058 */  lw          $t6, 0x58($sp)
/* 026E00 00426E00 8DCF0050 */  lw          $t7, 0x50($t6)
/* 026E04 00426E04 15E00005 */  bnez        $t7, .L00426E1C
/* 026E08 00426E08 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 026E0C 00426E0C 2418040C */  addiu       $t8, $zero, 0x40C
/* 026E10 00426E10 2402FFFF */  addiu       $v0, $zero, -0x1
/* 026E14 00426E14 1000003C */  b           .L00426F08
/* 026E18 00426E18 AC380000 */   sw         $t8, 0x0($at)
.L00426E1C:
/* 026E1C 00426E1C 8FB90058 */  lw          $t9, 0x58($sp)
/* 026E20 00426E20 8F280088 */  lw          $t0, 0x88($t9)
/* 026E24 00426E24 350A0002 */  ori         $t2, $t0, 0x2
/* 026E28 00426E28 AF2A0088 */  sw          $t2, 0x88($t9)
.L00426E2C:
/* 026E2C 00426E2C 8FA90058 */  lw          $t1, 0x58($sp)
/* 026E30 00426E30 240C0003 */  addiu       $t4, $zero, 0x3
/* 026E34 00426E34 8F998218 */  lw          $t9, %call16(_elf_vm)($gp)
/* 026E38 00426E38 8D2B0028 */  lw          $t3, 0x28($t1)
/* 026E3C 00426E3C AFAC0028 */  sw          $t4, 0x28($sp)
/* 026E40 00426E40 AFB0002C */  sw          $s0, 0x2C($sp)
/* 026E44 00426E44 AFAB0024 */  sw          $t3, 0x24($sp)
/* 026E48 00426E48 8D2D0044 */  lw          $t5, 0x44($t1)
/* 026E4C 00426E4C 240F0040 */  addiu       $t7, $zero, 0x40
/* 026E50 00426E50 24180001 */  addiu       $t8, $zero, 0x1
/* 026E54 00426E54 AFAD0038 */  sw          $t5, 0x38($sp)
/* 026E58 00426E58 8D2E0050 */  lw          $t6, 0x50($t1)
/* 026E5C 00426E5C AFAF0044 */  sw          $t7, 0x44($sp)
/* 026E60 00426E60 AFB80050 */  sw          $t8, 0x50($sp)
/* 026E64 00426E64 00002825 */  move        $a1, $zero
/* 026E68 00426E68 02003025 */  move        $a2, $s0
/* 026E6C 00426E6C 01202025 */  move        $a0, $t1
/* 026E70 00426E70 0320F809 */  jalr        $t9
/* 026E74 00426E74 AFAE003C */   sw         $t6, 0x3C($sp)
/* 026E78 00426E78 14400009 */  bnez        $v0, .L00426EA0
/* 026E7C 00426E7C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 026E80 00426E80 8F9981DC */  lw          $t9, %call16(_elf64_xlatetom)($gp)
/* 026E84 00426E84 8FA80058 */  lw          $t0, 0x58($sp)
/* 026E88 00426E88 27A4003C */  addiu       $a0, $sp, 0x3C
/* 026E8C 00426E8C 27A50024 */  addiu       $a1, $sp, 0x24
/* 026E90 00426E90 0320F809 */  jalr        $t9
/* 026E94 00426E94 8D060040 */   lw         $a2, 0x40($t0)
/* 026E98 00426E98 14400011 */  bnez        $v0, .L00426EE0
/* 026E9C 00426E9C 8FBC0018 */   lw         $gp, 0x18($sp)
.L00426EA0:
/* 026EA0 00426EA0 8FAA0058 */  lw          $t2, 0x58($sp)
/* 026EA4 00426EA4 8D590088 */  lw          $t9, 0x88($t2)
/* 026EA8 00426EA8 332B0002 */  andi        $t3, $t9, 0x2
/* 026EAC 00426EAC 11600008 */  beqz        $t3, .L00426ED0
/* 026EB0 00426EB0 2401FFFD */   addiu      $at, $zero, -0x3
/* 026EB4 00426EB4 03216024 */  and         $t4, $t9, $at
/* 026EB8 00426EB8 AD4C0088 */  sw          $t4, 0x88($t2)
/* 026EBC 00426EBC 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 026EC0 00426EC0 8FAD0058 */  lw          $t5, 0x58($sp)
/* 026EC4 00426EC4 0320F809 */  jalr        $t9
/* 026EC8 00426EC8 8DA40050 */   lw         $a0, 0x50($t5)
/* 026ECC 00426ECC 8FBC0018 */  lw          $gp, 0x18($sp)
.L00426ED0:
/* 026ED0 00426ED0 8FAE0058 */  lw          $t6, 0x58($sp)
/* 026ED4 00426ED4 2402FFFF */  addiu       $v0, $zero, -0x1
/* 026ED8 00426ED8 1000000B */  b           .L00426F08
/* 026EDC 00426EDC ADC00050 */   sw         $zero, 0x50($t6)
.L00426EE0:
/* 026EE0 00426EE0 8FAF0058 */  lw          $t7, 0x58($sp)
/* 026EE4 00426EE4 8DF80050 */  lw          $t8, 0x50($t7)
/* 026EE8 00426EE8 8DE80044 */  lw          $t0, 0x44($t7)
/* 026EEC 00426EEC 8F090014 */  lw          $t1, 0x14($t8)
/* 026EF0 00426EF0 11280004 */  beq         $t1, $t0, .L00426F04
/* 026EF4 00426EF4 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 026EF8 00426EF8 240B0212 */  addiu       $t3, $zero, 0x212
/* 026EFC 00426EFC 1000FFE8 */  b           .L00426EA0
/* 026F00 00426F00 AC2B0000 */   sw         $t3, 0x0($at)
.L00426F04:
/* 026F04 00426F04 00001025 */  move        $v0, $zero
.L00426F08:
/* 026F08 00426F08 8FBF001C */  lw          $ra, 0x1C($sp)
/* 026F0C 00426F0C 8FB00014 */  lw          $s0, 0x14($sp)
/* 026F10 00426F10 27BD0058 */  addiu       $sp, $sp, 0x58
/* 026F14 00426F14 03E00008 */  jr          $ra
/* 026F18 00426F18 00000000 */   nop
