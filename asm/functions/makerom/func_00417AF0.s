glabel func_00417AF0 # 71
/* 017AF0 00417AF0 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 017AF4 00417AF4 279CB270 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBFB270
/* 017AF8 00417AF8 0399E021 */  addu        $gp, $gp, $t9
/* 017AFC 00417AFC 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 017B00 00417B00 AFA60058 */  sw          $a2, 0x58($sp)
/* 017B04 00417B04 8FAE0058 */  lw          $t6, 0x58($sp)
/* 017B08 00417B08 AFA50054 */  sw          $a1, 0x54($sp)
/* 017B0C 00417B0C 8FB80054 */  lw          $t8, 0x54($sp)
/* 017B10 00417B10 000E7880 */  sll         $t7, $t6, 2
/* 017B14 00417B14 01EE7823 */  subu        $t7, $t7, $t6
/* 017B18 00417B18 000F78C0 */  sll         $t7, $t7, 3
/* 017B1C 00417B1C 01F8C821 */  addu        $t9, $t7, $t8
/* 017B20 00417B20 AFBF001C */  sw          $ra, 0x1C($sp)
/* 017B24 00417B24 AFBC0018 */  sw          $gp, 0x18($sp)
/* 017B28 00417B28 AFA40050 */  sw          $a0, 0x50($sp)
/* 017B2C 00417B2C AFB00014 */  sw          $s0, 0x14($sp)
/* 017B30 00417B30 AFB9004C */  sw          $t9, 0x4C($sp)
.L00417B34:
/* 017B34 00417B34 8FA80054 */  lw          $t0, 0x54($sp)
/* 017B38 00417B38 8FAC0050 */  lw          $t4, 0x50($sp)
/* 017B3C 00417B3C 24060000 */  addiu       $a2, $zero, 0x0
/* 017B40 00417B40 8D0B0004 */  lw          $t3, 0x4($t0)
/* 017B44 00417B44 8D0A0000 */  lw          $t2, 0x0($t0)
/* 017B48 00417B48 24070008 */  addiu       $a3, $zero, 0x8
/* 017B4C 00417B4C AFAB0044 */  sw          $t3, 0x44($sp)
/* 017B50 00417B50 01604825 */  move        $t1, $t3
/* 017B54 00417B54 AFAA0040 */  sw          $t2, 0x40($sp)
/* 017B58 00417B58 A1890007 */  sb          $t1, 0x7($t4)
/* 017B5C 00417B5C 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017B60 00417B60 8FA50044 */  lw          $a1, 0x44($sp)
/* 017B64 00417B64 8FA40040 */  lw          $a0, 0x40($sp)
/* 017B68 00417B68 0320F809 */  jalr        $t9
/* 017B6C 00417B6C 00000000 */   nop
/* 017B70 00417B70 8FAE0050 */  lw          $t6, 0x50($sp)
/* 017B74 00417B74 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017B78 00417B78 00606825 */  move        $t5, $v1
/* 017B7C 00417B7C A1CD0006 */  sb          $t5, 0x6($t6)
/* 017B80 00417B80 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017B84 00417B84 8FA50044 */  lw          $a1, 0x44($sp)
/* 017B88 00417B88 8FA40040 */  lw          $a0, 0x40($sp)
/* 017B8C 00417B8C 24060000 */  addiu       $a2, $zero, 0x0
/* 017B90 00417B90 0320F809 */  jalr        $t9
/* 017B94 00417B94 24070010 */   addiu      $a3, $zero, 0x10
/* 017B98 00417B98 8FB80050 */  lw          $t8, 0x50($sp)
/* 017B9C 00417B9C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017BA0 00417BA0 00607825 */  move        $t7, $v1
/* 017BA4 00417BA4 A30F0005 */  sb          $t7, 0x5($t8)
/* 017BA8 00417BA8 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017BAC 00417BAC 8FA50044 */  lw          $a1, 0x44($sp)
/* 017BB0 00417BB0 8FA40040 */  lw          $a0, 0x40($sp)
/* 017BB4 00417BB4 24060000 */  addiu       $a2, $zero, 0x0
/* 017BB8 00417BB8 0320F809 */  jalr        $t9
/* 017BBC 00417BBC 24070018 */   addiu      $a3, $zero, 0x18
/* 017BC0 00417BC0 8FA80050 */  lw          $t0, 0x50($sp)
/* 017BC4 00417BC4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017BC8 00417BC8 0060C825 */  move        $t9, $v1
/* 017BCC 00417BCC A1190004 */  sb          $t9, 0x4($t0)
/* 017BD0 00417BD0 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017BD4 00417BD4 8FA50044 */  lw          $a1, 0x44($sp)
/* 017BD8 00417BD8 8FA40040 */  lw          $a0, 0x40($sp)
/* 017BDC 00417BDC 24060000 */  addiu       $a2, $zero, 0x0
/* 017BE0 00417BE0 0320F809 */  jalr        $t9
/* 017BE4 00417BE4 24070020 */   addiu      $a3, $zero, 0x20
/* 017BE8 00417BE8 8FAB0050 */  lw          $t3, 0x50($sp)
/* 017BEC 00417BEC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017BF0 00417BF0 00605025 */  move        $t2, $v1
/* 017BF4 00417BF4 A16A0003 */  sb          $t2, 0x3($t3)
/* 017BF8 00417BF8 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017BFC 00417BFC 8FA50044 */  lw          $a1, 0x44($sp)
/* 017C00 00417C00 8FA40040 */  lw          $a0, 0x40($sp)
/* 017C04 00417C04 24060000 */  addiu       $a2, $zero, 0x0
/* 017C08 00417C08 0320F809 */  jalr        $t9
/* 017C0C 00417C0C 24070028 */   addiu      $a3, $zero, 0x28
/* 017C10 00417C10 8FAC0050 */  lw          $t4, 0x50($sp)
/* 017C14 00417C14 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017C18 00417C18 00604825 */  move        $t1, $v1
/* 017C1C 00417C1C A1890002 */  sb          $t1, 0x2($t4)
/* 017C20 00417C20 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017C24 00417C24 8FA50044 */  lw          $a1, 0x44($sp)
/* 017C28 00417C28 8FA40040 */  lw          $a0, 0x40($sp)
/* 017C2C 00417C2C 24060000 */  addiu       $a2, $zero, 0x0
/* 017C30 00417C30 0320F809 */  jalr        $t9
/* 017C34 00417C34 24070030 */   addiu      $a3, $zero, 0x30
/* 017C38 00417C38 8FAE0050 */  lw          $t6, 0x50($sp)
/* 017C3C 00417C3C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017C40 00417C40 00606825 */  move        $t5, $v1
/* 017C44 00417C44 A1CD0001 */  sb          $t5, 0x1($t6)
/* 017C48 00417C48 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017C4C 00417C4C 8FA50044 */  lw          $a1, 0x44($sp)
/* 017C50 00417C50 8FA40040 */  lw          $a0, 0x40($sp)
/* 017C54 00417C54 24060000 */  addiu       $a2, $zero, 0x0
/* 017C58 00417C58 0320F809 */  jalr        $t9
/* 017C5C 00417C5C 24070038 */   addiu      $a3, $zero, 0x38
/* 017C60 00417C60 8FB80050 */  lw          $t8, 0x50($sp)
/* 017C64 00417C64 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017C68 00417C68 00607825 */  move        $t7, $v1
/* 017C6C 00417C6C A30F0000 */  sb          $t7, 0x0($t8)
/* 017C70 00417C70 8FB90054 */  lw          $t9, 0x54($sp)
/* 017C74 00417C74 8FA80050 */  lw          $t0, 0x50($sp)
/* 017C78 00417C78 24060000 */  addiu       $a2, $zero, 0x0
/* 017C7C 00417C7C 8F300008 */  lw          $s0, 0x8($t9)
/* 017C80 00417C80 24070008 */  addiu       $a3, $zero, 0x8
/* 017C84 00417C84 A110000B */  sb          $s0, 0xB($t0)
/* 017C88 00417C88 8FAB0050 */  lw          $t3, 0x50($sp)
/* 017C8C 00417C8C 00105202 */  srl         $t2, $s0, 8
/* 017C90 00417C90 00104C02 */  srl         $t1, $s0, 16
/* 017C94 00417C94 A16A000A */  sb          $t2, 0xA($t3)
/* 017C98 00417C98 8FAC0050 */  lw          $t4, 0x50($sp)
/* 017C9C 00417C9C 00106E02 */  srl         $t5, $s0, 24
/* 017CA0 00417CA0 A1890009 */  sb          $t1, 0x9($t4)
/* 017CA4 00417CA4 8FAE0050 */  lw          $t6, 0x50($sp)
/* 017CA8 00417CA8 A1CD0008 */  sb          $t5, 0x8($t6)
/* 017CAC 00417CAC 8FAF0054 */  lw          $t7, 0x54($sp)
/* 017CB0 00417CB0 8FB90050 */  lw          $t9, 0x50($sp)
/* 017CB4 00417CB4 91F8000C */  lbu         $t8, 0xC($t7)
/* 017CB8 00417CB8 A338000C */  sb          $t8, 0xC($t9)
/* 017CBC 00417CBC 8FA80054 */  lw          $t0, 0x54($sp)
/* 017CC0 00417CC0 8FAB0050 */  lw          $t3, 0x50($sp)
/* 017CC4 00417CC4 910A000D */  lbu         $t2, 0xD($t0)
/* 017CC8 00417CC8 A16A000D */  sb          $t2, 0xD($t3)
/* 017CCC 00417CCC 8FA90054 */  lw          $t1, 0x54($sp)
/* 017CD0 00417CD0 8FAD0050 */  lw          $t5, 0x50($sp)
/* 017CD4 00417CD4 912C000E */  lbu         $t4, 0xE($t1)
/* 017CD8 00417CD8 A1AC000E */  sb          $t4, 0xE($t5)
/* 017CDC 00417CDC 8FAE0054 */  lw          $t6, 0x54($sp)
/* 017CE0 00417CE0 8FB80050 */  lw          $t8, 0x50($sp)
/* 017CE4 00417CE4 91CF000F */  lbu         $t7, 0xF($t6)
/* 017CE8 00417CE8 A30F000F */  sb          $t7, 0xF($t8)
/* 017CEC 00417CEC 8FB90054 */  lw          $t9, 0x54($sp)
/* 017CF0 00417CF0 8FAB0050 */  lw          $t3, 0x50($sp)
/* 017CF4 00417CF4 8F290014 */  lw          $t1, 0x14($t9)
/* 017CF8 00417CF8 8F280010 */  lw          $t0, 0x10($t9)
/* 017CFC 00417CFC AFA90034 */  sw          $t1, 0x34($sp)
/* 017D00 00417D00 01205025 */  move        $t2, $t1
/* 017D04 00417D04 AFA80030 */  sw          $t0, 0x30($sp)
/* 017D08 00417D08 A16A0017 */  sb          $t2, 0x17($t3)
/* 017D0C 00417D0C 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017D10 00417D10 8FA50034 */  lw          $a1, 0x34($sp)
/* 017D14 00417D14 8FA40030 */  lw          $a0, 0x30($sp)
/* 017D18 00417D18 0320F809 */  jalr        $t9
/* 017D1C 00417D1C 00000000 */   nop
/* 017D20 00417D20 8FAD0050 */  lw          $t5, 0x50($sp)
/* 017D24 00417D24 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017D28 00417D28 00606025 */  move        $t4, $v1
/* 017D2C 00417D2C A1AC0016 */  sb          $t4, 0x16($t5)
/* 017D30 00417D30 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017D34 00417D34 8FA50034 */  lw          $a1, 0x34($sp)
/* 017D38 00417D38 8FA40030 */  lw          $a0, 0x30($sp)
/* 017D3C 00417D3C 24060000 */  addiu       $a2, $zero, 0x0
/* 017D40 00417D40 0320F809 */  jalr        $t9
/* 017D44 00417D44 24070010 */   addiu      $a3, $zero, 0x10
/* 017D48 00417D48 8FAF0050 */  lw          $t7, 0x50($sp)
/* 017D4C 00417D4C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017D50 00417D50 00607025 */  move        $t6, $v1
/* 017D54 00417D54 A1EE0015 */  sb          $t6, 0x15($t7)
/* 017D58 00417D58 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017D5C 00417D5C 8FA50034 */  lw          $a1, 0x34($sp)
/* 017D60 00417D60 8FA40030 */  lw          $a0, 0x30($sp)
/* 017D64 00417D64 24060000 */  addiu       $a2, $zero, 0x0
/* 017D68 00417D68 0320F809 */  jalr        $t9
/* 017D6C 00417D6C 24070018 */   addiu      $a3, $zero, 0x18
/* 017D70 00417D70 8FB90050 */  lw          $t9, 0x50($sp)
/* 017D74 00417D74 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017D78 00417D78 0060C025 */  move        $t8, $v1
/* 017D7C 00417D7C A3380014 */  sb          $t8, 0x14($t9)
/* 017D80 00417D80 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017D84 00417D84 8FA50034 */  lw          $a1, 0x34($sp)
/* 017D88 00417D88 8FA40030 */  lw          $a0, 0x30($sp)
/* 017D8C 00417D8C 24060000 */  addiu       $a2, $zero, 0x0
/* 017D90 00417D90 0320F809 */  jalr        $t9
/* 017D94 00417D94 24070020 */   addiu      $a3, $zero, 0x20
/* 017D98 00417D98 8FA90050 */  lw          $t1, 0x50($sp)
/* 017D9C 00417D9C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017DA0 00417DA0 00604025 */  move        $t0, $v1
/* 017DA4 00417DA4 A1280013 */  sb          $t0, 0x13($t1)
/* 017DA8 00417DA8 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017DAC 00417DAC 8FA50034 */  lw          $a1, 0x34($sp)
/* 017DB0 00417DB0 8FA40030 */  lw          $a0, 0x30($sp)
/* 017DB4 00417DB4 24060000 */  addiu       $a2, $zero, 0x0
/* 017DB8 00417DB8 0320F809 */  jalr        $t9
/* 017DBC 00417DBC 24070028 */   addiu      $a3, $zero, 0x28
/* 017DC0 00417DC0 8FAB0050 */  lw          $t3, 0x50($sp)
/* 017DC4 00417DC4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017DC8 00417DC8 00605025 */  move        $t2, $v1
/* 017DCC 00417DCC A16A0012 */  sb          $t2, 0x12($t3)
/* 017DD0 00417DD0 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017DD4 00417DD4 8FA50034 */  lw          $a1, 0x34($sp)
/* 017DD8 00417DD8 8FA40030 */  lw          $a0, 0x30($sp)
/* 017DDC 00417DDC 24060000 */  addiu       $a2, $zero, 0x0
/* 017DE0 00417DE0 0320F809 */  jalr        $t9
/* 017DE4 00417DE4 24070030 */   addiu      $a3, $zero, 0x30
/* 017DE8 00417DE8 8FAD0050 */  lw          $t5, 0x50($sp)
/* 017DEC 00417DEC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017DF0 00417DF0 00606025 */  move        $t4, $v1
/* 017DF4 00417DF4 A1AC0011 */  sb          $t4, 0x11($t5)
/* 017DF8 00417DF8 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017DFC 00417DFC 8FA50034 */  lw          $a1, 0x34($sp)
/* 017E00 00417E00 8FA40030 */  lw          $a0, 0x30($sp)
/* 017E04 00417E04 24060000 */  addiu       $a2, $zero, 0x0
/* 017E08 00417E08 0320F809 */  jalr        $t9
/* 017E0C 00417E0C 24070038 */   addiu      $a3, $zero, 0x38
/* 017E10 00417E10 8FAF0050 */  lw          $t7, 0x50($sp)
/* 017E14 00417E14 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017E18 00417E18 00607025 */  move        $t6, $v1
/* 017E1C 00417E1C A1EE0010 */  sb          $t6, 0x10($t7)
/* 017E20 00417E20 8FA80054 */  lw          $t0, 0x54($sp)
/* 017E24 00417E24 8FAA004C */  lw          $t2, 0x4C($sp)
/* 017E28 00417E28 8FB80050 */  lw          $t8, 0x50($sp)
/* 017E2C 00417E2C 25090018 */  addiu       $t1, $t0, 0x18
/* 017E30 00417E30 012A082B */  sltu        $at, $t1, $t2
/* 017E34 00417E34 27190018 */  addiu       $t9, $t8, 0x18
/* 017E38 00417E38 AFB90050 */  sw          $t9, 0x50($sp)
/* 017E3C 00417E3C 1420FF3D */  bnez        $at, .L00417B34
/* 017E40 00417E40 AFA90054 */   sw         $t1, 0x54($sp)
/* 017E44 00417E44 8FBF001C */  lw          $ra, 0x1C($sp)
/* 017E48 00417E48 8FB00014 */  lw          $s0, 0x14($sp)
/* 017E4C 00417E4C 27BD0050 */  addiu       $sp, $sp, 0x50
/* 017E50 00417E50 03E00008 */  jr          $ra
/* 017E54 00417E54 00000000 */   nop
