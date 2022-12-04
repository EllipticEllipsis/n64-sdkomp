glabel func_0041DBF8 # 96
/* 01DBF8 0041DBF8 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 01DBFC 0041DBFC 279C5168 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF5168
/* 01DC00 0041DC00 0399E021 */  addu        $gp, $gp, $t9
/* 01DC04 0041DC04 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 01DC08 0041DC08 AFA40060 */  sw          $a0, 0x60($sp)
/* 01DC0C 0041DC0C AFA60068 */  sw          $a2, 0x68($sp)
/* 01DC10 0041DC10 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01DC14 0041DC14 8FAF0068 */  lw          $t7, 0x68($sp)
/* 01DC18 0041DC18 AFA50064 */  sw          $a1, 0x64($sp)
/* 01DC1C 0041DC1C AFAE005C */  sw          $t6, 0x5C($sp)
/* 01DC20 0041DC20 000FC100 */  sll         $t8, $t7, 4
/* 01DC24 0041DC24 8FA80064 */  lw          $t0, 0x64($sp)
/* 01DC28 0041DC28 8FAA005C */  lw          $t2, 0x5C($sp)
/* 01DC2C 0041DC2C 01D8C821 */  addu        $t9, $t6, $t8
/* 01DC30 0041DC30 AFB00014 */  sw          $s0, 0x14($sp)
/* 01DC34 0041DC34 AFB90060 */  sw          $t9, 0x60($sp)
/* 01DC38 0041DC38 272BFFF0 */  addiu       $t3, $t9, -0x10
/* 01DC3C 0041DC3C 01184821 */  addu        $t1, $t0, $t8
/* 01DC40 0041DC40 0159802B */  sltu        $s0, $t2, $t9
/* 01DC44 0041DC44 AFBF001C */  sw          $ra, 0x1C($sp)
/* 01DC48 0041DC48 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01DC4C 0041DC4C AFA90064 */  sw          $t1, 0x64($sp)
/* 01DC50 0041DC50 120000A5 */  beqz        $s0, .L0041DEE8
/* 01DC54 0041DC54 AFAB0060 */   sw         $t3, 0x60($sp)
.L0041DC58:
/* 01DC58 0041DC58 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01DC5C 0041DC5C 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01DC60 0041DC60 24040000 */  addiu       $a0, $zero, 0x0
/* 01DC64 0041DC64 258DFFF0 */  addiu       $t5, $t4, -0x10
/* 01DC68 0041DC68 AFAD0064 */  sw          $t5, 0x64($sp)
/* 01DC6C 0041DC6C 91AF000F */  lbu         $t7, 0xF($t5)
/* 01DC70 0041DC70 24060000 */  addiu       $a2, $zero, 0x0
/* 01DC74 0041DC74 24070008 */  addiu       $a3, $zero, 0x8
/* 01DC78 0041DC78 A1CF000F */  sb          $t7, 0xF($t6)
/* 01DC7C 0041DC7C 8FA80064 */  lw          $t0, 0x64($sp)
/* 01DC80 0041DC80 8FA90060 */  lw          $t1, 0x60($sp)
/* 01DC84 0041DC84 9118000E */  lbu         $t8, 0xE($t0)
/* 01DC88 0041DC88 A138000E */  sb          $t8, 0xE($t1)
/* 01DC8C 0041DC8C 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01DC90 0041DC90 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01DC94 0041DC94 9159000D */  lbu         $t9, 0xD($t2)
/* 01DC98 0041DC98 A179000D */  sb          $t9, 0xD($t3)
/* 01DC9C 0041DC9C 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01DCA0 0041DCA0 8FAF0060 */  lw          $t7, 0x60($sp)
/* 01DCA4 0041DCA4 918D000C */  lbu         $t5, 0xC($t4)
/* 01DCA8 0041DCA8 A1ED000C */  sb          $t5, 0xC($t7)
/* 01DCAC 0041DCAC 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01DCB0 0041DCB0 91C8000B */  lbu         $t0, 0xB($t6)
/* 01DCB4 0041DCB4 91C9000A */  lbu         $t1, 0xA($t6)
/* 01DCB8 0041DCB8 91CB0009 */  lbu         $t3, 0x9($t6)
/* 01DCBC 0041DCBC 0008C200 */  sll         $t8, $t0, 8
/* 01DCC0 0041DCC0 03095021 */  addu        $t2, $t8, $t1
/* 01DCC4 0041DCC4 91CF0008 */  lbu         $t7, 0x8($t6)
/* 01DCC8 0041DCC8 000ACA00 */  sll         $t9, $t2, 8
/* 01DCCC 0041DCCC 8FB80060 */  lw          $t8, 0x60($sp)
/* 01DCD0 0041DCD0 032B6021 */  addu        $t4, $t9, $t3
/* 01DCD4 0041DCD4 000C6A00 */  sll         $t5, $t4, 8
/* 01DCD8 0041DCD8 01ED4021 */  addu        $t0, $t7, $t5
/* 01DCDC 0041DCDC AF080008 */  sw          $t0, 0x8($t8)
/* 01DCE0 0041DCE0 8FA90064 */  lw          $t1, 0x64($sp)
/* 01DCE4 0041DCE4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01DCE8 0041DCE8 912A0007 */  lbu         $t2, 0x7($t1)
/* 01DCEC 0041DCEC 0320F809 */  jalr        $t9
/* 01DCF0 0041DCF0 01402825 */   move       $a1, $t2
/* 01DCF4 0041DCF4 8FB90064 */  lw          $t9, 0x64($sp)
/* 01DCF8 0041DCF8 AFA20020 */  sw          $v0, 0x20($sp)
/* 01DCFC 0041DCFC AFA30024 */  sw          $v1, 0x24($sp)
/* 01DD00 0041DD00 932B0006 */  lbu         $t3, 0x6($t9)
/* 01DD04 0041DD04 8FAF0024 */  lw          $t7, 0x24($sp)
/* 01DD08 0041DD08 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DD0C 0041DD0C 01606825 */  move        $t5, $t3
/* 01DD10 0041DD10 01AF2821 */  addu        $a1, $t5, $t7
/* 01DD14 0041DD14 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01DD18 0041DD18 8FAE0020 */  lw          $t6, 0x20($sp)
/* 01DD1C 0041DD1C 000B67C3 */  sra         $t4, $t3, 31
/* 01DD20 0041DD20 00AF082B */  sltu        $at, $a1, $t7
/* 01DD24 0041DD24 002C2021 */  addu        $a0, $at, $t4
/* 01DD28 0041DD28 24060000 */  addiu       $a2, $zero, 0x0
/* 01DD2C 0041DD2C 24070008 */  addiu       $a3, $zero, 0x8
/* 01DD30 0041DD30 0320F809 */  jalr        $t9
/* 01DD34 0041DD34 008E2021 */   addu       $a0, $a0, $t6
/* 01DD38 0041DD38 8FA80064 */  lw          $t0, 0x64($sp)
/* 01DD3C 0041DD3C AFA20028 */  sw          $v0, 0x28($sp)
/* 01DD40 0041DD40 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01DD44 0041DD44 91180005 */  lbu         $t8, 0x5($t0)
/* 01DD48 0041DD48 8FAD002C */  lw          $t5, 0x2C($sp)
/* 01DD4C 0041DD4C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DD50 0041DD50 03005825 */  move        $t3, $t8
/* 01DD54 0041DD54 016D2821 */  addu        $a1, $t3, $t5
/* 01DD58 0041DD58 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01DD5C 0041DD5C 8FAC0028 */  lw          $t4, 0x28($sp)
/* 01DD60 0041DD60 001857C3 */  sra         $t2, $t8, 31
/* 01DD64 0041DD64 00AD082B */  sltu        $at, $a1, $t5
/* 01DD68 0041DD68 002A2021 */  addu        $a0, $at, $t2
/* 01DD6C 0041DD6C 24060000 */  addiu       $a2, $zero, 0x0
/* 01DD70 0041DD70 24070008 */  addiu       $a3, $zero, 0x8
/* 01DD74 0041DD74 0320F809 */  jalr        $t9
/* 01DD78 0041DD78 008C2021 */   addu       $a0, $a0, $t4
/* 01DD7C 0041DD7C 8FA90064 */  lw          $t1, 0x64($sp)
/* 01DD80 0041DD80 AFA20030 */  sw          $v0, 0x30($sp)
/* 01DD84 0041DD84 AFA30034 */  sw          $v1, 0x34($sp)
/* 01DD88 0041DD88 91390004 */  lbu         $t9, 0x4($t1)
/* 01DD8C 0041DD8C 8FA90034 */  lw          $t1, 0x34($sp)
/* 01DD90 0041DD90 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DD94 0041DD94 03207825 */  move        $t7, $t9
/* 01DD98 0041DD98 001977C3 */  sra         $t6, $t9, 31
/* 01DD9C 0041DD9C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01DDA0 0041DDA0 01E92821 */  addu        $a1, $t7, $t1
/* 01DDA4 0041DDA4 8FA80030 */  lw          $t0, 0x30($sp)
/* 01DDA8 0041DDA8 00A9082B */  sltu        $at, $a1, $t1
/* 01DDAC 0041DDAC 002E2021 */  addu        $a0, $at, $t6
/* 01DDB0 0041DDB0 24060000 */  addiu       $a2, $zero, 0x0
/* 01DDB4 0041DDB4 24070008 */  addiu       $a3, $zero, 0x8
/* 01DDB8 0041DDB8 0320F809 */  jalr        $t9
/* 01DDBC 0041DDBC 00882021 */   addu       $a0, $a0, $t0
/* 01DDC0 0041DDC0 8FB80064 */  lw          $t8, 0x64($sp)
/* 01DDC4 0041DDC4 AFA20038 */  sw          $v0, 0x38($sp)
/* 01DDC8 0041DDC8 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01DDCC 0041DDCC 930A0003 */  lbu         $t2, 0x3($t8)
/* 01DDD0 0041DDD0 8FAF003C */  lw          $t7, 0x3C($sp)
/* 01DDD4 0041DDD4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DDD8 0041DDD8 01406825 */  move        $t5, $t2
/* 01DDDC 0041DDDC 01AF2821 */  addu        $a1, $t5, $t7
/* 01DDE0 0041DDE0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01DDE4 0041DDE4 8FAE0038 */  lw          $t6, 0x38($sp)
/* 01DDE8 0041DDE8 000A67C3 */  sra         $t4, $t2, 31
/* 01DDEC 0041DDEC 00AF082B */  sltu        $at, $a1, $t7
/* 01DDF0 0041DDF0 002C2021 */  addu        $a0, $at, $t4
/* 01DDF4 0041DDF4 24060000 */  addiu       $a2, $zero, 0x0
/* 01DDF8 0041DDF8 24070008 */  addiu       $a3, $zero, 0x8
/* 01DDFC 0041DDFC 0320F809 */  jalr        $t9
/* 01DE00 0041DE00 008E2021 */   addu       $a0, $a0, $t6
/* 01DE04 0041DE04 8FAB0064 */  lw          $t3, 0x64($sp)
/* 01DE08 0041DE08 AFA20040 */  sw          $v0, 0x40($sp)
/* 01DE0C 0041DE0C AFA30044 */  sw          $v1, 0x44($sp)
/* 01DE10 0041DE10 91790002 */  lbu         $t9, 0x2($t3)
/* 01DE14 0041DE14 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DE18 0041DE18 8FB80040 */  lw          $t8, 0x40($sp)
/* 01DE1C 0041DE1C 03204825 */  move        $t1, $t9
/* 01DE20 0041DE20 001947C3 */  sra         $t0, $t9, 31
/* 01DE24 0041DE24 8FB90044 */  lw          $t9, 0x44($sp)
/* 01DE28 0041DE28 24060000 */  addiu       $a2, $zero, 0x0
/* 01DE2C 0041DE2C 24070008 */  addiu       $a3, $zero, 0x8
/* 01DE30 0041DE30 01392821 */  addu        $a1, $t1, $t9
/* 01DE34 0041DE34 00B9082B */  sltu        $at, $a1, $t9
/* 01DE38 0041DE38 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01DE3C 0041DE3C 00282021 */  addu        $a0, $at, $t0
/* 01DE40 0041DE40 00982021 */  addu        $a0, $a0, $t8
/* 01DE44 0041DE44 0320F809 */  jalr        $t9
/* 01DE48 0041DE48 00000000 */   nop
/* 01DE4C 0041DE4C 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01DE50 0041DE50 AFA20048 */  sw          $v0, 0x48($sp)
/* 01DE54 0041DE54 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01DE58 0041DE58 914C0001 */  lbu         $t4, 0x1($t2)
/* 01DE5C 0041DE5C 8FA9004C */  lw          $t1, 0x4C($sp)
/* 01DE60 0041DE60 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DE64 0041DE64 01807825 */  move        $t7, $t4
/* 01DE68 0041DE68 01E92821 */  addu        $a1, $t7, $t1
/* 01DE6C 0041DE6C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01DE70 0041DE70 8FA80048 */  lw          $t0, 0x48($sp)
/* 01DE74 0041DE74 000C77C3 */  sra         $t6, $t4, 31
/* 01DE78 0041DE78 00A9082B */  sltu        $at, $a1, $t1
/* 01DE7C 0041DE7C 002E2021 */  addu        $a0, $at, $t6
/* 01DE80 0041DE80 24060000 */  addiu       $a2, $zero, 0x0
/* 01DE84 0041DE84 24070008 */  addiu       $a3, $zero, 0x8
/* 01DE88 0041DE88 0320F809 */  jalr        $t9
/* 01DE8C 0041DE8C 00882021 */   addu       $a0, $a0, $t0
/* 01DE90 0041DE90 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01DE94 0041DE94 AFA20050 */  sw          $v0, 0x50($sp)
/* 01DE98 0041DE98 AFA30054 */  sw          $v1, 0x54($sp)
/* 01DE9C 0041DE9C 91AB0000 */  lbu         $t3, 0x0($t5)
/* 01DEA0 0041DEA0 8FAA0050 */  lw          $t2, 0x50($sp)
/* 01DEA4 0041DEA4 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01DEA8 0041DEA8 0160C825 */  move        $t9, $t3
/* 01DEAC 0041DEAC 000BC7C3 */  sra         $t8, $t3, 31
/* 01DEB0 0041DEB0 8FAB0054 */  lw          $t3, 0x54($sp)
/* 01DEB4 0041DEB4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DEB8 0041DEB8 032B6821 */  addu        $t5, $t9, $t3
/* 01DEBC 0041DEBC 01AB082B */  sltu        $at, $t5, $t3
/* 01DEC0 0041DEC0 00386021 */  addu        $t4, $at, $t8
/* 01DEC4 0041DEC4 018A6021 */  addu        $t4, $t4, $t2
/* 01DEC8 0041DEC8 ADCC0000 */  sw          $t4, 0x0($t6)
/* 01DECC 0041DECC ADCD0004 */  sw          $t5, 0x4($t6)
/* 01DED0 0041DED0 8FAF0060 */  lw          $t7, 0x60($sp)
/* 01DED4 0041DED4 8FA8005C */  lw          $t0, 0x5C($sp)
/* 01DED8 0041DED8 25E9FFF0 */  addiu       $t1, $t7, -0x10
/* 01DEDC 0041DEDC 010F802B */  sltu        $s0, $t0, $t7
/* 01DEE0 0041DEE0 1600FF5D */  bnez        $s0, .L0041DC58
/* 01DEE4 0041DEE4 AFA90060 */   sw         $t1, 0x60($sp)
.L0041DEE8:
/* 01DEE8 0041DEE8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01DEEC 0041DEEC 8FB00014 */  lw          $s0, 0x14($sp)
/* 01DEF0 0041DEF0 27BD0060 */  addiu       $sp, $sp, 0x60
/* 01DEF4 0041DEF4 03E00008 */  jr          $ra
/* 01DEF8 0041DEF8 00000000 */   nop
