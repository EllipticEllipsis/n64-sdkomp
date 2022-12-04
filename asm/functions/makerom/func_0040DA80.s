.section .rodata
glabel STR_100051B0
/* 0451B0 100051B0 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_100051C4
/* 0451C4 100051C4 */ .asciz "makerom: lstat failed: %s\n"
                      .balign 4

.section .late_rodata
glabel jtbl_10005E7C
/* 045E7C 10005E7C F03FAFD8 */ .gpword .L0040DD38
/* 045E80 10005E80 F03FAF20 */ .gpword .L0040DC80
/* 045E84 10005E84 F03FAF7C */ .gpword .L0040DCDC
/* 045E88 10005E88 F03FB000 */ .gpword .L0040DD60
/* 045E8C 10005E8C F03FB014 */ .gpword .L0040DD74


.section .text
glabel func_0040DA80 # 21
/* 00DA80 0040DA80 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 00DA84 0040DA84 279C52E0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC052E0
/* 00DA88 0040DA88 0399E021 */  addu        $gp, $gp, $t9
/* 00DA8C 0040DA8C 27BDFF40 */  addiu       $sp, $sp, -0xC0
/* 00DA90 0040DA90 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00DA94 0040DA94 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00DA98 0040DA98 AFA400C0 */  sw          $a0, 0xC0($sp)
/* 00DA9C 0040DA9C AFB00014 */  sw          $s0, 0x14($sp)
/* 00DAA0 0040DAA0 8FAF00C0 */  lw          $t7, 0xC0($sp)
/* 00DAA4 0040DAA4 240E0010 */  addiu       $t6, $zero, 0x10
/* 00DAA8 0040DAA8 ADEE0050 */  sw          $t6, 0x50($t7)
/* 00DAAC 0040DAAC 8FB900C0 */  lw          $t9, 0xC0($sp)
/* 00DAB0 0040DAB0 24180002 */  addiu       $t8, $zero, 0x2
/* 00DAB4 0040DAB4 AF380060 */  sw          $t8, 0x60($t9)
/* 00DAB8 0040DAB8 8FA800C0 */  lw          $t0, 0xC0($sp)
/* 00DABC 0040DABC 8D090008 */  lw          $t1, 0x8($t0)
/* 00DAC0 0040DAC0 1120005A */  beqz        $t1, .L0040DC2C
/* 00DAC4 0040DAC4 AFA900AC */   sw         $t1, 0xAC($sp)
.L0040DAC8:
/* 00DAC8 0040DAC8 8FAA00AC */  lw          $t2, 0xAC($sp)
/* 00DACC 0040DACC AD400008 */  sw          $zero, 0x8($t2)
/* 00DAD0 0040DAD0 8FAB00AC */  lw          $t3, 0xAC($sp)
/* 00DAD4 0040DAD4 AD60000C */  sw          $zero, 0xC($t3)
/* 00DAD8 0040DAD8 8FAC00AC */  lw          $t4, 0xAC($sp)
/* 00DADC 0040DADC AD800010 */  sw          $zero, 0x10($t4)
/* 00DAE0 0040DAE0 8FAD00AC */  lw          $t5, 0xAC($sp)
/* 00DAE4 0040DAE4 ADA00014 */  sw          $zero, 0x14($t5)
/* 00DAE8 0040DAE8 8FAE00AC */  lw          $t6, 0xAC($sp)
/* 00DAEC 0040DAEC ADC00018 */  sw          $zero, 0x18($t6)
/* 00DAF0 0040DAF0 8FAF00AC */  lw          $t7, 0xAC($sp)
/* 00DAF4 0040DAF4 ADE0001C */  sw          $zero, 0x1C($t7)
/* 00DAF8 0040DAF8 8FB900AC */  lw          $t9, 0xAC($sp)
/* 00DAFC 0040DAFC 24180010 */  addiu       $t8, $zero, 0x10
/* 00DB00 0040DB00 AF380020 */  sw          $t8, 0x20($t9)
/* 00DB04 0040DB04 8FA800AC */  lw          $t0, 0xAC($sp)
/* 00DB08 0040DB08 AD000024 */  sw          $zero, 0x24($t0)
/* 00DB0C 0040DB0C 8FA900AC */  lw          $t1, 0xAC($sp)
/* 00DB10 0040DB10 AD200028 */  sw          $zero, 0x28($t1)
/* 00DB14 0040DB14 8FAA00AC */  lw          $t2, 0xAC($sp)
/* 00DB18 0040DB18 AD40002C */  sw          $zero, 0x2C($t2)
/* 00DB1C 0040DB1C 8FAC00AC */  lw          $t4, 0xAC($sp)
/* 00DB20 0040DB20 240B0002 */  addiu       $t3, $zero, 0x2
/* 00DB24 0040DB24 AD8B0044 */  sw          $t3, 0x44($t4)
/* 00DB28 0040DB28 8F9980B8 */  lw          $t9, %call16(open)($gp)
/* 00DB2C 0040DB2C 8FAD00AC */  lw          $t5, 0xAC($sp)
/* 00DB30 0040DB30 00002825 */  move        $a1, $zero
/* 00DB34 0040DB34 0320F809 */  jalr        $t9
/* 00DB38 0040DB38 8DA40004 */   lw         $a0, 0x4($t5)
/* 00DB3C 0040DB3C AFA200B0 */  sw          $v0, 0xB0($sp)
/* 00DB40 0040DB40 8FAE00B0 */  lw          $t6, 0xB0($sp)
/* 00DB44 0040DB44 2401FFFF */  addiu       $at, $zero, -0x1
/* 00DB48 0040DB48 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00DB4C 0040DB4C 15C10012 */  bne         $t6, $at, .L0040DB98
/* 00DB50 0040DB50 00000000 */   nop
/* 00DB54 0040DB54 8F988050 */  lw          $t8, %got(errno)($gp)
/* 00DB58 0040DB58 8F888054 */  lw          $t0, %got(sys_errlist)($gp)
/* 00DB5C 0040DB5C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00DB60 0040DB60 8F180000 */  lw          $t8, 0x0($t8)
/* 00DB64 0040DB64 8F85802C */  lw          $a1, %got(STR_100051B0)($gp)
/* 00DB68 0040DB68 8FAF00AC */  lw          $t7, 0xAC($sp)
/* 00DB6C 0040DB6C 0018C880 */  sll         $t9, $t8, 2
/* 00DB70 0040DB70 03284821 */  addu        $t1, $t9, $t0
/* 00DB74 0040DB74 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00DB78 0040DB78 8D270000 */  lw          $a3, 0x0($t1)
/* 00DB7C 0040DB7C 24840020 */  addiu       $a0, $a0, 0x20
/* 00DB80 0040DB80 24A551B0 */  addiu       $a1, $a1, %lo(STR_100051B0)
/* 00DB84 0040DB84 0320F809 */  jalr        $t9
/* 00DB88 0040DB88 8DE60004 */   lw         $a2, 0x4($t7)
/* 00DB8C 0040DB8C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00DB90 0040DB90 10000094 */  b           .L0040DDE4
/* 00DB94 0040DB94 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040DB98:
/* 00DB98 0040DB98 8F9980C0 */  lw          $t9, %call16(fstat)($gp)
/* 00DB9C 0040DB9C 8FA400B0 */  lw          $a0, 0xB0($sp)
/* 00DBA0 0040DBA0 27A50024 */  addiu       $a1, $sp, 0x24
/* 00DBA4 0040DBA4 0320F809 */  jalr        $t9
/* 00DBA8 0040DBA8 00000000 */   nop
/* 00DBAC 0040DBAC 2401FFFF */  addiu       $at, $zero, -0x1
/* 00DBB0 0040DBB0 14410010 */  bne         $v0, $at, .L0040DBF4
/* 00DBB4 0040DBB4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00DBB8 0040DBB8 8F8A8050 */  lw          $t2, %got(errno)($gp)
/* 00DBBC 0040DBBC 8F8C8054 */  lw          $t4, %got(sys_errlist)($gp)
/* 00DBC0 0040DBC0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00DBC4 0040DBC4 8D4A0000 */  lw          $t2, 0x0($t2)
/* 00DBC8 0040DBC8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00DBCC 0040DBCC 8F85802C */  lw          $a1, %got(STR_100051C4)($gp)
/* 00DBD0 0040DBD0 000A5880 */  sll         $t3, $t2, 2
/* 00DBD4 0040DBD4 016C6821 */  addu        $t5, $t3, $t4
/* 00DBD8 0040DBD8 8DA60000 */  lw          $a2, 0x0($t5)
/* 00DBDC 0040DBDC 24840020 */  addiu       $a0, $a0, 0x20
/* 00DBE0 0040DBE0 0320F809 */  jalr        $t9
/* 00DBE4 0040DBE4 24A551C4 */   addiu      $a1, $a1, %lo(STR_100051C4)
/* 00DBE8 0040DBE8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00DBEC 0040DBEC 1000007D */  b           .L0040DDE4
/* 00DBF0 0040DBF0 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040DBF4:
/* 00DBF4 0040DBF4 8FAE00C0 */  lw          $t6, 0xC0($sp)
/* 00DBF8 0040DBF8 8FB80054 */  lw          $t8, 0x54($sp)
/* 00DBFC 0040DBFC 8DCF0030 */  lw          $t7, 0x30($t6)
/* 00DC00 0040DC00 01F8C821 */  addu        $t9, $t7, $t8
/* 00DC04 0040DC04 ADD90030 */  sw          $t9, 0x30($t6)
/* 00DC08 0040DC08 8F9980C4 */  lw          $t9, %call16(close)($gp)
/* 00DC0C 0040DC0C 8FA400B0 */  lw          $a0, 0xB0($sp)
/* 00DC10 0040DC10 0320F809 */  jalr        $t9
/* 00DC14 0040DC14 00000000 */   nop
/* 00DC18 0040DC18 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00DC1C 0040DC1C 8FA800AC */  lw          $t0, 0xAC($sp)
/* 00DC20 0040DC20 8D090000 */  lw          $t1, 0x0($t0)
/* 00DC24 0040DC24 1520FFA8 */  bnez        $t1, .L0040DAC8
/* 00DC28 0040DC28 AFA900AC */   sw         $t1, 0xAC($sp)
.L0040DC2C:
/* 00DC2C 0040DC2C 8FAA00C0 */  lw          $t2, 0xC0($sp)
/* 00DC30 0040DC30 8D500030 */  lw          $s0, 0x30($t2)
/* 00DC34 0040DC34 2610000F */  addiu       $s0, $s0, 0xF
/* 00DC38 0040DC38 00108102 */  srl         $s0, $s0, 4
/* 00DC3C 0040DC3C 00108100 */  sll         $s0, $s0, 4
/* 00DC40 0040DC40 AD500030 */  sw          $s0, 0x30($t2)
/* 00DC44 0040DC44 8FAB00C0 */  lw          $t3, 0xC0($sp)
/* 00DC48 0040DC48 AD700040 */  sw          $s0, 0x40($t3)
/* 00DC4C 0040DC4C 8FAC00C0 */  lw          $t4, 0xC0($sp)
/* 00DC50 0040DC50 8D8D0014 */  lw          $t5, 0x14($t4)
/* 00DC54 0040DC54 25AFFFFF */  addiu       $t7, $t5, -0x1
/* 00DC58 0040DC58 2DE10005 */  sltiu       $at, $t7, 0x5
/* 00DC5C 0040DC5C 1020004A */  beqz        $at, .L0040DD88
/* 00DC60 0040DC60 00000000 */   nop
/* 00DC64 0040DC64 8F81802C */  lw          $at, %got(jtbl_10005E7C)($gp)
/* 00DC68 0040DC68 000F7880 */  sll         $t7, $t7, 2
/* 00DC6C 0040DC6C 002F0821 */  addu        $at, $at, $t7
/* 00DC70 0040DC70 8C2F5E7C */  lw          $t7, %lo(jtbl_10005E7C)($at)
/* 00DC74 0040DC74 01FC7821 */  addu        $t7, $t7, $gp
/* 00DC78 0040DC78 01E00008 */  jr          $t7
/* 00DC7C 0040DC7C 00000000 */   nop
.L0040DC80:
/* 00DC80 0040DC80 8FB800C0 */  lw          $t8, 0xC0($sp)
/* 00DC84 0040DC84 8F190018 */  lw          $t9, 0x18($t8)
/* 00DC88 0040DC88 8F2E0010 */  lw          $t6, 0x10($t9)
/* 00DC8C 0040DC8C 8F280040 */  lw          $t0, 0x40($t9)
/* 00DC90 0040DC90 01C84821 */  addu        $t1, $t6, $t0
/* 00DC94 0040DC94 AFA900BC */  sw          $t1, 0xBC($sp)
/* 00DC98 0040DC98 8FAA00C0 */  lw          $t2, 0xC0($sp)
/* 00DC9C 0040DC9C 8D4B001C */  lw          $t3, 0x1C($t2)
/* 00DCA0 0040DCA0 8D6C0010 */  lw          $t4, 0x10($t3)
/* 00DCA4 0040DCA4 8D6D0040 */  lw          $t5, 0x40($t3)
/* 00DCA8 0040DCA8 018D7821 */  addu        $t7, $t4, $t5
/* 00DCAC 0040DCAC AFAF00B8 */  sw          $t7, 0xB8($sp)
/* 00DCB0 0040DCB0 8FB800BC */  lw          $t8, 0xBC($sp)
/* 00DCB4 0040DCB4 8FB900B8 */  lw          $t9, 0xB8($sp)
/* 00DCB8 0040DCB8 0338082B */  sltu        $at, $t9, $t8
/* 00DCBC 0040DCBC 10200003 */  beqz        $at, .L0040DCCC
/* 00DCC0 0040DCC0 00000000 */   nop
/* 00DCC4 0040DCC4 10000003 */  b           .L0040DCD4
/* 00DCC8 0040DCC8 AFB800B4 */   sw         $t8, 0xB4($sp)
.L0040DCCC:
/* 00DCCC 0040DCCC 8FAE00B8 */  lw          $t6, 0xB8($sp)
/* 00DCD0 0040DCD0 AFAE00B4 */  sw          $t6, 0xB4($sp)
.L0040DCD4:
/* 00DCD4 0040DCD4 1000002E */  b           .L0040DD90
/* 00DCD8 0040DCD8 00000000 */   nop
.L0040DCDC:
/* 00DCDC 0040DCDC 8FA800C0 */  lw          $t0, 0xC0($sp)
/* 00DCE0 0040DCE0 8D090018 */  lw          $t1, 0x18($t0)
/* 00DCE4 0040DCE4 8D2A0010 */  lw          $t2, 0x10($t1)
/* 00DCE8 0040DCE8 8D2B0040 */  lw          $t3, 0x40($t1)
/* 00DCEC 0040DCEC 014B6021 */  addu        $t4, $t2, $t3
/* 00DCF0 0040DCF0 AFAC00BC */  sw          $t4, 0xBC($sp)
/* 00DCF4 0040DCF4 8FAD00C0 */  lw          $t5, 0xC0($sp)
/* 00DCF8 0040DCF8 8DAF001C */  lw          $t7, 0x1C($t5)
/* 00DCFC 0040DCFC 8DF90010 */  lw          $t9, 0x10($t7)
/* 00DD00 0040DD00 8DF80040 */  lw          $t8, 0x40($t7)
/* 00DD04 0040DD04 03387021 */  addu        $t6, $t9, $t8
/* 00DD08 0040DD08 AFAE00B8 */  sw          $t6, 0xB8($sp)
/* 00DD0C 0040DD0C 8FA800BC */  lw          $t0, 0xBC($sp)
/* 00DD10 0040DD10 8FA900B8 */  lw          $t1, 0xB8($sp)
/* 00DD14 0040DD14 0109082B */  sltu        $at, $t0, $t1
/* 00DD18 0040DD18 10200003 */  beqz        $at, .L0040DD28
/* 00DD1C 0040DD1C 00000000 */   nop
/* 00DD20 0040DD20 10000003 */  b           .L0040DD30
/* 00DD24 0040DD24 AFA800B4 */   sw         $t0, 0xB4($sp)
.L0040DD28:
/* 00DD28 0040DD28 8FAA00B8 */  lw          $t2, 0xB8($sp)
/* 00DD2C 0040DD2C AFAA00B4 */  sw          $t2, 0xB4($sp)
.L0040DD30:
/* 00DD30 0040DD30 10000017 */  b           .L0040DD90
/* 00DD34 0040DD34 00000000 */   nop
.L0040DD38:
/* 00DD38 0040DD38 8FAB00C0 */  lw          $t3, 0xC0($sp)
/* 00DD3C 0040DD3C 8D6C0018 */  lw          $t4, 0x18($t3)
/* 00DD40 0040DD40 8D8D0010 */  lw          $t5, 0x10($t4)
/* 00DD44 0040DD44 8D8F0040 */  lw          $t7, 0x40($t4)
/* 00DD48 0040DD48 01AFC821 */  addu        $t9, $t5, $t7
/* 00DD4C 0040DD4C AFB900BC */  sw          $t9, 0xBC($sp)
/* 00DD50 0040DD50 8FB800BC */  lw          $t8, 0xBC($sp)
/* 00DD54 0040DD54 AFB800B4 */  sw          $t8, 0xB4($sp)
/* 00DD58 0040DD58 1000000D */  b           .L0040DD90
/* 00DD5C 0040DD5C 00000000 */   nop
.L0040DD60:
/* 00DD60 0040DD60 8FAE00C0 */  lw          $t6, 0xC0($sp)
/* 00DD64 0040DD64 8DC90010 */  lw          $t1, 0x10($t6)
/* 00DD68 0040DD68 AFA900B4 */  sw          $t1, 0xB4($sp)
/* 00DD6C 0040DD6C 10000008 */  b           .L0040DD90
/* 00DD70 0040DD70 00000000 */   nop
.L0040DD74:
/* 00DD74 0040DD74 8FA800C0 */  lw          $t0, 0xC0($sp)
/* 00DD78 0040DD78 8D0A0010 */  lw          $t2, 0x10($t0)
/* 00DD7C 0040DD7C AFAA00B4 */  sw          $t2, 0xB4($sp)
/* 00DD80 0040DD80 10000003 */  b           .L0040DD90
/* 00DD84 0040DD84 00000000 */   nop
.L0040DD88:
/* 00DD88 0040DD88 10000001 */  b           .L0040DD90
/* 00DD8C 0040DD8C 00000000 */   nop
.L0040DD90:
/* 00DD90 0040DD90 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00DD94 0040DD94 8FAB00C0 */  lw          $t3, 0xC0($sp)
/* 00DD98 0040DD98 8FA500B4 */  lw          $a1, 0xB4($sp)
/* 00DD9C 0040DD9C 0320F809 */  jalr        $t9
/* 00DDA0 0040DDA0 8D640020 */   lw         $a0, 0x20($t3)
/* 00DDA4 0040DDA4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00DDA8 0040DDA8 AFA200B4 */  sw          $v0, 0xB4($sp)
/* 00DDAC 0040DDAC 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00DDB0 0040DDB0 8FAC00C0 */  lw          $t4, 0xC0($sp)
/* 00DDB4 0040DDB4 8FA500B4 */  lw          $a1, 0xB4($sp)
/* 00DDB8 0040DDB8 0320F809 */  jalr        $t9
/* 00DDBC 0040DDBC 8D840050 */   lw         $a0, 0x50($t4)
/* 00DDC0 0040DDC0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00DDC4 0040DDC4 AFA200B4 */  sw          $v0, 0xB4($sp)
/* 00DDC8 0040DDC8 8FAD00B4 */  lw          $t5, 0xB4($sp)
/* 00DDCC 0040DDCC 8FAF00C0 */  lw          $t7, 0xC0($sp)
/* 00DDD0 0040DDD0 ADED0010 */  sw          $t5, 0x10($t7)
/* 00DDD4 0040DDD4 10000003 */  b           .L0040DDE4
/* 00DDD8 0040DDD8 00001025 */   move       $v0, $zero
/* 00DDDC 0040DDDC 10000001 */  b           .L0040DDE4
/* 00DDE0 0040DDE0 00000000 */   nop
.L0040DDE4:
/* 00DDE4 0040DDE4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00DDE8 0040DDE8 8FB00014 */  lw          $s0, 0x14($sp)
/* 00DDEC 0040DDEC 27BD00C0 */  addiu       $sp, $sp, 0xC0
/* 00DDF0 0040DDF0 03E00008 */  jr          $ra
/* 00DDF4 0040DDF4 00000000 */   nop
