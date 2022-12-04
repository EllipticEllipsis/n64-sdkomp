.section .rodata
glabel STR_10009174
/* 049174 10009174 */ .asciz "st_file_idn: istack underflow (%s)\n"
                      .balign 4
/* 049198 10009198 */ .asciz ""
                      .balign 4
/* 04919C 1000919C */ .asciz ""
                      .balign 4


.section .text
glabel st_file_idn # 706
/* 042D6C 00442D6C 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 042D70 00442D70 279CFFF4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBCFFF4
/* 042D74 00442D74 0399E021 */  addu        $gp, $gp, $t9
/* 042D78 00442D78 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 042D7C 00442D7C 8F9985C8 */  lw          $t9, %call16(st_currentpchdr)($gp)
/* 042D80 00442D80 AFBF002C */  sw          $ra, 0x2C($sp)
/* 042D84 00442D84 AFB30024 */  sw          $s3, 0x24($sp)
/* 042D88 00442D88 00809825 */  move        $s3, $a0
/* 042D8C 00442D8C AFBC0028 */  sw          $gp, 0x28($sp)
/* 042D90 00442D90 AFB20020 */  sw          $s2, 0x20($sp)
/* 042D94 00442D94 AFB1001C */  sw          $s1, 0x1C($sp)
/* 042D98 00442D98 0320F809 */  jalr        $t9
/* 042D9C 00442D9C AFB00018 */   sw         $s0, 0x18($sp)
/* 042DA0 00442DA0 14400003 */  bnez        $v0, .L00442DB0
/* 042DA4 00442DA4 8FBC0028 */   lw         $gp, 0x28($sp)
/* 042DA8 00442DA8 10000048 */  b           .L00442ECC
/* 042DAC 00442DAC 00001025 */   move       $v0, $zero
.L00442DB0:
/* 042DB0 00442DB0 8F9985DC */  lw          $t9, %call16(st_ifdmax)($gp)
/* 042DB4 00442DB4 00008025 */  move        $s0, $zero
/* 042DB8 00442DB8 0320F809 */  jalr        $t9
/* 042DBC 00442DBC 00000000 */   nop
/* 042DC0 00442DC0 18400041 */  blez        $v0, .L00442EC8
/* 042DC4 00442DC4 8FBC0028 */   lw         $gp, 0x28($sp)
/* 042DC8 00442DC8 8F918030 */  lw          $s1, %got(B_10010830)($gp)
/* 042DCC 00442DCC 26310830 */  addiu       $s1, $s1, %lo(B_10010830)
.L00442DD0:
/* 042DD0 00442DD0 8F998614 */  lw          $t9, %call16(st_str_ifd_iss)($gp)
/* 042DD4 00442DD4 02002025 */  move        $a0, $s0
/* 042DD8 00442DD8 24050001 */  addiu       $a1, $zero, 0x1
/* 042DDC 00442DDC 0320F809 */  jalr        $t9
/* 042DE0 00442DE0 00000000 */   nop
/* 042DE4 00442DE4 8FBC0028 */  lw          $gp, 0x28($sp)
/* 042DE8 00442DE8 02602025 */  move        $a0, $s3
/* 042DEC 00442DEC 00402825 */  move        $a1, $v0
/* 042DF0 00442DF0 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 042DF4 00442DF4 0320F809 */  jalr        $t9
/* 042DF8 00442DF8 00000000 */   nop
/* 042DFC 00442DFC 1440002B */  bnez        $v0, .L00442EAC
/* 042E00 00442E00 8FBC0028 */   lw         $gp, 0x28($sp)
/* 042E04 00442E04 8E240000 */  lw          $a0, 0x0($s1)
/* 042E08 00442E08 2483FFFF */  addiu       $v1, $a0, -0x1
/* 042E0C 00442E0C 0460000B */  bltz        $v1, .L00442E3C
/* 042E10 00442E10 00000000 */   nop
/* 042E14 00442E14 8F8E8030 */  lw          $t6, %got(B_1001082C)($gp)
/* 042E18 00442E18 000378C0 */  sll         $t7, $v1, 3
/* 042E1C 00442E1C 8DCE082C */  lw          $t6, %lo(B_1001082C)($t6)
/* 042E20 00442E20 01CF1021 */  addu        $v0, $t6, $t7
.L00442E24:
/* 042E24 00442E24 8C580000 */  lw          $t8, 0x0($v0)
/* 042E28 00442E28 12180004 */  beq         $s0, $t8, .L00442E3C
/* 042E2C 00442E2C 00000000 */   nop
/* 042E30 00442E30 2463FFFF */  addiu       $v1, $v1, -0x1
/* 042E34 00442E34 0461FFFB */  bgez        $v1, .L00442E24
/* 042E38 00442E38 2442FFF8 */   addiu      $v0, $v0, -0x8
.L00442E3C:
/* 042E3C 00442E3C 0460001B */  bltz        $v1, .L00442EAC
/* 042E40 00442E40 00000000 */   nop
/* 042E44 00442E44 8F998030 */  lw          $t9, %got(B_1001082C)($gp)
/* 042E48 00442E48 000488C0 */  sll         $s1, $a0, 3
/* 042E4C 00442E4C 8F39082C */  lw          $t9, %lo(B_1001082C)($t9)
/* 042E50 00442E50 03311821 */  addu        $v1, $t9, $s1
/* 042E54 00442E54 8C68FFF8 */  lw          $t0, -0x8($v1)
/* 042E58 00442E58 12080012 */  beq         $s0, $t0, .L00442EA4
/* 042E5C 00442E5C 00000000 */   nop
/* 042E60 00442E60 8F928030 */  lw          $s2, %got(STR_10009174)($gp)
/* 042E64 00442E64 26529174 */  addiu       $s2, $s2, %lo(STR_10009174)
/* 042E68 00442E68 2631FFF8 */  addiu       $s1, $s1, -0x8
.L00442E6C:
/* 042E6C 00442E6C 0621000A */  bgez        $s1, .L00442E98
/* 042E70 00442E70 2463FFF8 */   addiu      $v1, $v1, -0x8
/* 042E74 00442E74 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 042E78 00442E78 02402025 */  move        $a0, $s2
/* 042E7C 00442E7C 02602825 */  move        $a1, $s3
/* 042E80 00442E80 0320F809 */  jalr        $t9
/* 042E84 00442E84 00000000 */   nop
/* 042E88 00442E88 8FBC0028 */  lw          $gp, 0x28($sp)
/* 042E8C 00442E8C 8F898030 */  lw          $t1, %got(B_1001082C)($gp)
/* 042E90 00442E90 8D29082C */  lw          $t1, %lo(B_1001082C)($t1)
/* 042E94 00442E94 01311821 */  addu        $v1, $t1, $s1
.L00442E98:
/* 042E98 00442E98 8C6AFFF8 */  lw          $t2, -0x8($v1)
/* 042E9C 00442E9C 560AFFF3 */  bnel        $s0, $t2, .L00442E6C
/* 042EA0 00442EA0 2631FFF8 */   addiu      $s1, $s1, -0x8
.L00442EA4:
/* 042EA4 00442EA4 10000009 */  b           .L00442ECC
/* 042EA8 00442EA8 8C62FFFC */   lw         $v0, -0x4($v1)
.L00442EAC:
/* 042EAC 00442EAC 8F9985DC */  lw          $t9, %call16(st_ifdmax)($gp)
/* 042EB0 00442EB0 26100001 */  addiu       $s0, $s0, 0x1
/* 042EB4 00442EB4 0320F809 */  jalr        $t9
/* 042EB8 00442EB8 00000000 */   nop
/* 042EBC 00442EBC 0202082A */  slt         $at, $s0, $v0
/* 042EC0 00442EC0 1420FFC3 */  bnez        $at, .L00442DD0
/* 042EC4 00442EC4 8FBC0028 */   lw         $gp, 0x28($sp)
.L00442EC8:
/* 042EC8 00442EC8 00001025 */  move        $v0, $zero
.L00442ECC:
/* 042ECC 00442ECC 8FBF002C */  lw          $ra, 0x2C($sp)
/* 042ED0 00442ED0 8FB00018 */  lw          $s0, 0x18($sp)
/* 042ED4 00442ED4 8FB1001C */  lw          $s1, 0x1C($sp)
/* 042ED8 00442ED8 8FB20020 */  lw          $s2, 0x20($sp)
/* 042EDC 00442EDC 8FB30024 */  lw          $s3, 0x24($sp)
/* 042EE0 00442EE0 03E00008 */  jr          $ra
/* 042EE4 00442EE4 27BD0030 */   addiu      $sp, $sp, 0x30
/* 042EE8 00442EE8 00000000 */  nop
/* 042EEC 00442EEC 00000000 */  nop
