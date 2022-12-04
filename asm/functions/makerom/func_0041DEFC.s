glabel func_0041DEFC # 97
/* 01DEFC 0041DEFC 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 01DF00 0041DF00 279C4E64 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF4E64
/* 01DF04 0041DF04 0399E021 */  addu        $gp, $gp, $t9
/* 01DF08 0041DF08 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 01DF0C 0041DF0C AFA40060 */  sw          $a0, 0x60($sp)
/* 01DF10 0041DF10 AFA60068 */  sw          $a2, 0x68($sp)
/* 01DF14 0041DF14 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01DF18 0041DF18 8FAF0068 */  lw          $t7, 0x68($sp)
/* 01DF1C 0041DF1C AFA50064 */  sw          $a1, 0x64($sp)
/* 01DF20 0041DF20 AFAE005C */  sw          $t6, 0x5C($sp)
/* 01DF24 0041DF24 000FC100 */  sll         $t8, $t7, 4
/* 01DF28 0041DF28 8FA80064 */  lw          $t0, 0x64($sp)
/* 01DF2C 0041DF2C 8FAA005C */  lw          $t2, 0x5C($sp)
/* 01DF30 0041DF30 01D8C821 */  addu        $t9, $t6, $t8
/* 01DF34 0041DF34 AFB00014 */  sw          $s0, 0x14($sp)
/* 01DF38 0041DF38 AFB90060 */  sw          $t9, 0x60($sp)
/* 01DF3C 0041DF3C 272BFFF0 */  addiu       $t3, $t9, -0x10
/* 01DF40 0041DF40 01184821 */  addu        $t1, $t0, $t8
/* 01DF44 0041DF44 0159802B */  sltu        $s0, $t2, $t9
/* 01DF48 0041DF48 AFBF001C */  sw          $ra, 0x1C($sp)
/* 01DF4C 0041DF4C AFBC0018 */  sw          $gp, 0x18($sp)
/* 01DF50 0041DF50 AFA90064 */  sw          $t1, 0x64($sp)
/* 01DF54 0041DF54 120000A5 */  beqz        $s0, .L0041E1EC
/* 01DF58 0041DF58 AFAB0060 */   sw         $t3, 0x60($sp)
.L0041DF5C:
/* 01DF5C 0041DF5C 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01DF60 0041DF60 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01DF64 0041DF64 24040000 */  addiu       $a0, $zero, 0x0
/* 01DF68 0041DF68 258DFFF0 */  addiu       $t5, $t4, -0x10
/* 01DF6C 0041DF6C AFAD0064 */  sw          $t5, 0x64($sp)
/* 01DF70 0041DF70 91AF000F */  lbu         $t7, 0xF($t5)
/* 01DF74 0041DF74 24060000 */  addiu       $a2, $zero, 0x0
/* 01DF78 0041DF78 24070008 */  addiu       $a3, $zero, 0x8
/* 01DF7C 0041DF7C A1CF000F */  sb          $t7, 0xF($t6)
/* 01DF80 0041DF80 8FA80064 */  lw          $t0, 0x64($sp)
/* 01DF84 0041DF84 8FA90060 */  lw          $t1, 0x60($sp)
/* 01DF88 0041DF88 9118000E */  lbu         $t8, 0xE($t0)
/* 01DF8C 0041DF8C A138000E */  sb          $t8, 0xE($t1)
/* 01DF90 0041DF90 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01DF94 0041DF94 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01DF98 0041DF98 9159000D */  lbu         $t9, 0xD($t2)
/* 01DF9C 0041DF9C A179000D */  sb          $t9, 0xD($t3)
/* 01DFA0 0041DFA0 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01DFA4 0041DFA4 8FAF0060 */  lw          $t7, 0x60($sp)
/* 01DFA8 0041DFA8 918D000C */  lbu         $t5, 0xC($t4)
/* 01DFAC 0041DFAC A1ED000C */  sb          $t5, 0xC($t7)
/* 01DFB0 0041DFB0 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01DFB4 0041DFB4 91C80008 */  lbu         $t0, 0x8($t6)
/* 01DFB8 0041DFB8 91C90009 */  lbu         $t1, 0x9($t6)
/* 01DFBC 0041DFBC 91CB000A */  lbu         $t3, 0xA($t6)
/* 01DFC0 0041DFC0 0008C200 */  sll         $t8, $t0, 8
/* 01DFC4 0041DFC4 03095021 */  addu        $t2, $t8, $t1
/* 01DFC8 0041DFC8 91CF000B */  lbu         $t7, 0xB($t6)
/* 01DFCC 0041DFCC 000ACA00 */  sll         $t9, $t2, 8
/* 01DFD0 0041DFD0 8FB80060 */  lw          $t8, 0x60($sp)
/* 01DFD4 0041DFD4 032B6021 */  addu        $t4, $t9, $t3
/* 01DFD8 0041DFD8 000C6A00 */  sll         $t5, $t4, 8
/* 01DFDC 0041DFDC 01ED4021 */  addu        $t0, $t7, $t5
/* 01DFE0 0041DFE0 AF080008 */  sw          $t0, 0x8($t8)
/* 01DFE4 0041DFE4 8FA90064 */  lw          $t1, 0x64($sp)
/* 01DFE8 0041DFE8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01DFEC 0041DFEC 912A0000 */  lbu         $t2, 0x0($t1)
/* 01DFF0 0041DFF0 0320F809 */  jalr        $t9
/* 01DFF4 0041DFF4 01402825 */   move       $a1, $t2
/* 01DFF8 0041DFF8 8FB90064 */  lw          $t9, 0x64($sp)
/* 01DFFC 0041DFFC AFA20020 */  sw          $v0, 0x20($sp)
/* 01E000 0041E000 AFA30024 */  sw          $v1, 0x24($sp)
/* 01E004 0041E004 932B0001 */  lbu         $t3, 0x1($t9)
/* 01E008 0041E008 8FAF0024 */  lw          $t7, 0x24($sp)
/* 01E00C 0041E00C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E010 0041E010 01606825 */  move        $t5, $t3
/* 01E014 0041E014 01AF2821 */  addu        $a1, $t5, $t7
/* 01E018 0041E018 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E01C 0041E01C 8FAE0020 */  lw          $t6, 0x20($sp)
/* 01E020 0041E020 000B67C3 */  sra         $t4, $t3, 31
/* 01E024 0041E024 00AF082B */  sltu        $at, $a1, $t7
/* 01E028 0041E028 002C2021 */  addu        $a0, $at, $t4
/* 01E02C 0041E02C 24060000 */  addiu       $a2, $zero, 0x0
/* 01E030 0041E030 24070008 */  addiu       $a3, $zero, 0x8
/* 01E034 0041E034 0320F809 */  jalr        $t9
/* 01E038 0041E038 008E2021 */   addu       $a0, $a0, $t6
/* 01E03C 0041E03C 8FA80064 */  lw          $t0, 0x64($sp)
/* 01E040 0041E040 AFA20028 */  sw          $v0, 0x28($sp)
/* 01E044 0041E044 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01E048 0041E048 91180002 */  lbu         $t8, 0x2($t0)
/* 01E04C 0041E04C 8FAD002C */  lw          $t5, 0x2C($sp)
/* 01E050 0041E050 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E054 0041E054 03005825 */  move        $t3, $t8
/* 01E058 0041E058 016D2821 */  addu        $a1, $t3, $t5
/* 01E05C 0041E05C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E060 0041E060 8FAC0028 */  lw          $t4, 0x28($sp)
/* 01E064 0041E064 001857C3 */  sra         $t2, $t8, 31
/* 01E068 0041E068 00AD082B */  sltu        $at, $a1, $t5
/* 01E06C 0041E06C 002A2021 */  addu        $a0, $at, $t2
/* 01E070 0041E070 24060000 */  addiu       $a2, $zero, 0x0
/* 01E074 0041E074 24070008 */  addiu       $a3, $zero, 0x8
/* 01E078 0041E078 0320F809 */  jalr        $t9
/* 01E07C 0041E07C 008C2021 */   addu       $a0, $a0, $t4
/* 01E080 0041E080 8FA90064 */  lw          $t1, 0x64($sp)
/* 01E084 0041E084 AFA20030 */  sw          $v0, 0x30($sp)
/* 01E088 0041E088 AFA30034 */  sw          $v1, 0x34($sp)
/* 01E08C 0041E08C 91390003 */  lbu         $t9, 0x3($t1)
/* 01E090 0041E090 8FA90034 */  lw          $t1, 0x34($sp)
/* 01E094 0041E094 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E098 0041E098 03207825 */  move        $t7, $t9
/* 01E09C 0041E09C 001977C3 */  sra         $t6, $t9, 31
/* 01E0A0 0041E0A0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E0A4 0041E0A4 01E92821 */  addu        $a1, $t7, $t1
/* 01E0A8 0041E0A8 8FA80030 */  lw          $t0, 0x30($sp)
/* 01E0AC 0041E0AC 00A9082B */  sltu        $at, $a1, $t1
/* 01E0B0 0041E0B0 002E2021 */  addu        $a0, $at, $t6
/* 01E0B4 0041E0B4 24060000 */  addiu       $a2, $zero, 0x0
/* 01E0B8 0041E0B8 24070008 */  addiu       $a3, $zero, 0x8
/* 01E0BC 0041E0BC 0320F809 */  jalr        $t9
/* 01E0C0 0041E0C0 00882021 */   addu       $a0, $a0, $t0
/* 01E0C4 0041E0C4 8FB80064 */  lw          $t8, 0x64($sp)
/* 01E0C8 0041E0C8 AFA20038 */  sw          $v0, 0x38($sp)
/* 01E0CC 0041E0CC AFA3003C */  sw          $v1, 0x3C($sp)
/* 01E0D0 0041E0D0 930A0004 */  lbu         $t2, 0x4($t8)
/* 01E0D4 0041E0D4 8FAF003C */  lw          $t7, 0x3C($sp)
/* 01E0D8 0041E0D8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E0DC 0041E0DC 01406825 */  move        $t5, $t2
/* 01E0E0 0041E0E0 01AF2821 */  addu        $a1, $t5, $t7
/* 01E0E4 0041E0E4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E0E8 0041E0E8 8FAE0038 */  lw          $t6, 0x38($sp)
/* 01E0EC 0041E0EC 000A67C3 */  sra         $t4, $t2, 31
/* 01E0F0 0041E0F0 00AF082B */  sltu        $at, $a1, $t7
/* 01E0F4 0041E0F4 002C2021 */  addu        $a0, $at, $t4
/* 01E0F8 0041E0F8 24060000 */  addiu       $a2, $zero, 0x0
/* 01E0FC 0041E0FC 24070008 */  addiu       $a3, $zero, 0x8
/* 01E100 0041E100 0320F809 */  jalr        $t9
/* 01E104 0041E104 008E2021 */   addu       $a0, $a0, $t6
/* 01E108 0041E108 8FAB0064 */  lw          $t3, 0x64($sp)
/* 01E10C 0041E10C AFA20040 */  sw          $v0, 0x40($sp)
/* 01E110 0041E110 AFA30044 */  sw          $v1, 0x44($sp)
/* 01E114 0041E114 91790005 */  lbu         $t9, 0x5($t3)
/* 01E118 0041E118 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E11C 0041E11C 8FB80040 */  lw          $t8, 0x40($sp)
/* 01E120 0041E120 03204825 */  move        $t1, $t9
/* 01E124 0041E124 001947C3 */  sra         $t0, $t9, 31
/* 01E128 0041E128 8FB90044 */  lw          $t9, 0x44($sp)
/* 01E12C 0041E12C 24060000 */  addiu       $a2, $zero, 0x0
/* 01E130 0041E130 24070008 */  addiu       $a3, $zero, 0x8
/* 01E134 0041E134 01392821 */  addu        $a1, $t1, $t9
/* 01E138 0041E138 00B9082B */  sltu        $at, $a1, $t9
/* 01E13C 0041E13C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E140 0041E140 00282021 */  addu        $a0, $at, $t0
/* 01E144 0041E144 00982021 */  addu        $a0, $a0, $t8
/* 01E148 0041E148 0320F809 */  jalr        $t9
/* 01E14C 0041E14C 00000000 */   nop
/* 01E150 0041E150 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01E154 0041E154 AFA20048 */  sw          $v0, 0x48($sp)
/* 01E158 0041E158 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01E15C 0041E15C 914C0006 */  lbu         $t4, 0x6($t2)
/* 01E160 0041E160 8FA9004C */  lw          $t1, 0x4C($sp)
/* 01E164 0041E164 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E168 0041E168 01807825 */  move        $t7, $t4
/* 01E16C 0041E16C 01E92821 */  addu        $a1, $t7, $t1
/* 01E170 0041E170 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E174 0041E174 8FA80048 */  lw          $t0, 0x48($sp)
/* 01E178 0041E178 000C77C3 */  sra         $t6, $t4, 31
/* 01E17C 0041E17C 00A9082B */  sltu        $at, $a1, $t1
/* 01E180 0041E180 002E2021 */  addu        $a0, $at, $t6
/* 01E184 0041E184 24060000 */  addiu       $a2, $zero, 0x0
/* 01E188 0041E188 24070008 */  addiu       $a3, $zero, 0x8
/* 01E18C 0041E18C 0320F809 */  jalr        $t9
/* 01E190 0041E190 00882021 */   addu       $a0, $a0, $t0
/* 01E194 0041E194 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01E198 0041E198 AFA20050 */  sw          $v0, 0x50($sp)
/* 01E19C 0041E19C AFA30054 */  sw          $v1, 0x54($sp)
/* 01E1A0 0041E1A0 91AB0007 */  lbu         $t3, 0x7($t5)
/* 01E1A4 0041E1A4 8FAA0050 */  lw          $t2, 0x50($sp)
/* 01E1A8 0041E1A8 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01E1AC 0041E1AC 0160C825 */  move        $t9, $t3
/* 01E1B0 0041E1B0 000BC7C3 */  sra         $t8, $t3, 31
/* 01E1B4 0041E1B4 8FAB0054 */  lw          $t3, 0x54($sp)
/* 01E1B8 0041E1B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E1BC 0041E1BC 032B6821 */  addu        $t5, $t9, $t3
/* 01E1C0 0041E1C0 01AB082B */  sltu        $at, $t5, $t3
/* 01E1C4 0041E1C4 00386021 */  addu        $t4, $at, $t8
/* 01E1C8 0041E1C8 018A6021 */  addu        $t4, $t4, $t2
/* 01E1CC 0041E1CC ADCC0000 */  sw          $t4, 0x0($t6)
/* 01E1D0 0041E1D0 ADCD0004 */  sw          $t5, 0x4($t6)
/* 01E1D4 0041E1D4 8FAF0060 */  lw          $t7, 0x60($sp)
/* 01E1D8 0041E1D8 8FA8005C */  lw          $t0, 0x5C($sp)
/* 01E1DC 0041E1DC 25E9FFF0 */  addiu       $t1, $t7, -0x10
/* 01E1E0 0041E1E0 010F802B */  sltu        $s0, $t0, $t7
/* 01E1E4 0041E1E4 1600FF5D */  bnez        $s0, .L0041DF5C
/* 01E1E8 0041E1E8 AFA90060 */   sw         $t1, 0x60($sp)
.L0041E1EC:
/* 01E1EC 0041E1EC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01E1F0 0041E1F0 8FB00014 */  lw          $s0, 0x14($sp)
/* 01E1F4 0041E1F4 27BD0060 */  addiu       $sp, $sp, 0x60
/* 01E1F8 0041E1F8 03E00008 */  jr          $ra
/* 01E1FC 0041E1FC 00000000 */   nop
