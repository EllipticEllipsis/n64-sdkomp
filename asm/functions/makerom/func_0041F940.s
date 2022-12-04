glabel func_0041F940 # 101
/* 01F940 0041F940 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 01F944 0041F944 279C3420 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF3420
/* 01F948 0041F948 0399E021 */  addu        $gp, $gp, $t9
/* 01F94C 0041F94C 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 01F950 0041F950 AFA40060 */  sw          $a0, 0x60($sp)
/* 01F954 0041F954 AFA60068 */  sw          $a2, 0x68($sp)
/* 01F958 0041F958 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01F95C 0041F95C 8FAF0068 */  lw          $t7, 0x68($sp)
/* 01F960 0041F960 AFA50064 */  sw          $a1, 0x64($sp)
/* 01F964 0041F964 AFAE005C */  sw          $t6, 0x5C($sp)
/* 01F968 0041F968 000FC180 */  sll         $t8, $t7, 6
/* 01F96C 0041F96C 8FA80064 */  lw          $t0, 0x64($sp)
/* 01F970 0041F970 8FAA005C */  lw          $t2, 0x5C($sp)
/* 01F974 0041F974 01D8C821 */  addu        $t9, $t6, $t8
/* 01F978 0041F978 AFB00014 */  sw          $s0, 0x14($sp)
/* 01F97C 0041F97C AFB90060 */  sw          $t9, 0x60($sp)
/* 01F980 0041F980 272BFFC0 */  addiu       $t3, $t9, -0x40
/* 01F984 0041F984 01184821 */  addu        $t1, $t0, $t8
/* 01F988 0041F988 0159802B */  sltu        $s0, $t2, $t9
/* 01F98C 0041F98C AFBF001C */  sw          $ra, 0x1C($sp)
/* 01F990 0041F990 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01F994 0041F994 AFA90064 */  sw          $t1, 0x64($sp)
/* 01F998 0041F998 12000334 */  beqz        $s0, .L0042066C
/* 01F99C 0041F99C AFAB0060 */   sw         $t3, 0x60($sp)
.L0041F9A0:
/* 01F9A0 0041F9A0 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01F9A4 0041F9A4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F9A8 0041F9A8 24040000 */  addiu       $a0, $zero, 0x0
/* 01F9AC 0041F9AC 258DFFC0 */  addiu       $t5, $t4, -0x40
/* 01F9B0 0041F9B0 AFAD0064 */  sw          $t5, 0x64($sp)
/* 01F9B4 0041F9B4 91AF0038 */  lbu         $t7, 0x38($t5)
/* 01F9B8 0041F9B8 24060000 */  addiu       $a2, $zero, 0x0
/* 01F9BC 0041F9BC 24070008 */  addiu       $a3, $zero, 0x8
/* 01F9C0 0041F9C0 0320F809 */  jalr        $t9
/* 01F9C4 0041F9C4 01E02825 */   move       $a1, $t7
/* 01F9C8 0041F9C8 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01F9CC 0041F9CC AFA20020 */  sw          $v0, 0x20($sp)
/* 01F9D0 0041F9D0 AFA30024 */  sw          $v1, 0x24($sp)
/* 01F9D4 0041F9D4 91C80039 */  lbu         $t0, 0x39($t6)
/* 01F9D8 0041F9D8 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01F9DC 0041F9DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F9E0 0041F9E0 0100C825 */  move        $t9, $t0
/* 01F9E4 0041F9E4 032B2821 */  addu        $a1, $t9, $t3
/* 01F9E8 0041F9E8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F9EC 0041F9EC 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01F9F0 0041F9F0 0008C7C3 */  sra         $t8, $t0, 31
/* 01F9F4 0041F9F4 00AB082B */  sltu        $at, $a1, $t3
/* 01F9F8 0041F9F8 00382021 */  addu        $a0, $at, $t8
/* 01F9FC 0041F9FC 24060000 */  addiu       $a2, $zero, 0x0
/* 01FA00 0041FA00 24070008 */  addiu       $a3, $zero, 0x8
/* 01FA04 0041FA04 0320F809 */  jalr        $t9
/* 01FA08 0041FA08 008A2021 */   addu       $a0, $a0, $t2
/* 01FA0C 0041FA0C 8FA90064 */  lw          $t1, 0x64($sp)
/* 01FA10 0041FA10 AFA20028 */  sw          $v0, 0x28($sp)
/* 01FA14 0041FA14 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01FA18 0041FA18 912C003A */  lbu         $t4, 0x3A($t1)
/* 01FA1C 0041FA1C 8FA9002C */  lw          $t1, 0x2C($sp)
/* 01FA20 0041FA20 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FA24 0041FA24 01807825 */  move        $t7, $t4
/* 01FA28 0041FA28 01E92821 */  addu        $a1, $t7, $t1
/* 01FA2C 0041FA2C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FA30 0041FA30 8FA80028 */  lw          $t0, 0x28($sp)
/* 01FA34 0041FA34 000C77C3 */  sra         $t6, $t4, 31
/* 01FA38 0041FA38 00A9082B */  sltu        $at, $a1, $t1
/* 01FA3C 0041FA3C 002E2021 */  addu        $a0, $at, $t6
/* 01FA40 0041FA40 24060000 */  addiu       $a2, $zero, 0x0
/* 01FA44 0041FA44 24070008 */  addiu       $a3, $zero, 0x8
/* 01FA48 0041FA48 0320F809 */  jalr        $t9
/* 01FA4C 0041FA4C 00882021 */   addu       $a0, $a0, $t0
/* 01FA50 0041FA50 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01FA54 0041FA54 AFA20030 */  sw          $v0, 0x30($sp)
/* 01FA58 0041FA58 AFA30034 */  sw          $v1, 0x34($sp)
/* 01FA5C 0041FA5C 91B8003B */  lbu         $t8, 0x3B($t5)
/* 01FA60 0041FA60 8FAD0034 */  lw          $t5, 0x34($sp)
/* 01FA64 0041FA64 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FA68 0041FA68 03005825 */  move        $t3, $t8
/* 01FA6C 0041FA6C 016D2821 */  addu        $a1, $t3, $t5
/* 01FA70 0041FA70 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FA74 0041FA74 8FAC0030 */  lw          $t4, 0x30($sp)
/* 01FA78 0041FA78 001857C3 */  sra         $t2, $t8, 31
/* 01FA7C 0041FA7C 00AD082B */  sltu        $at, $a1, $t5
/* 01FA80 0041FA80 002A2021 */  addu        $a0, $at, $t2
/* 01FA84 0041FA84 24060000 */  addiu       $a2, $zero, 0x0
/* 01FA88 0041FA88 24070008 */  addiu       $a3, $zero, 0x8
/* 01FA8C 0041FA8C 0320F809 */  jalr        $t9
/* 01FA90 0041FA90 008C2021 */   addu       $a0, $a0, $t4
/* 01FA94 0041FA94 8FB90064 */  lw          $t9, 0x64($sp)
/* 01FA98 0041FA98 AFA20038 */  sw          $v0, 0x38($sp)
/* 01FA9C 0041FA9C AFA3003C */  sw          $v1, 0x3C($sp)
/* 01FAA0 0041FAA0 932E003C */  lbu         $t6, 0x3C($t9)
/* 01FAA4 0041FAA4 8FB9003C */  lw          $t9, 0x3C($sp)
/* 01FAA8 0041FAA8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FAAC 0041FAAC 01C04825 */  move        $t1, $t6
/* 01FAB0 0041FAB0 01392821 */  addu        $a1, $t1, $t9
/* 01FAB4 0041FAB4 00B9082B */  sltu        $at, $a1, $t9
/* 01FAB8 0041FAB8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FABC 0041FABC 8FB80038 */  lw          $t8, 0x38($sp)
/* 01FAC0 0041FAC0 000E47C3 */  sra         $t0, $t6, 31
/* 01FAC4 0041FAC4 00282021 */  addu        $a0, $at, $t0
/* 01FAC8 0041FAC8 24060000 */  addiu       $a2, $zero, 0x0
/* 01FACC 0041FACC 24070008 */  addiu       $a3, $zero, 0x8
/* 01FAD0 0041FAD0 0320F809 */  jalr        $t9
/* 01FAD4 0041FAD4 00982021 */   addu       $a0, $a0, $t8
/* 01FAD8 0041FAD8 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01FADC 0041FADC AFA20040 */  sw          $v0, 0x40($sp)
/* 01FAE0 0041FAE0 AFA30044 */  sw          $v1, 0x44($sp)
/* 01FAE4 0041FAE4 91EA003D */  lbu         $t2, 0x3D($t7)
/* 01FAE8 0041FAE8 8FAF0044 */  lw          $t7, 0x44($sp)
/* 01FAEC 0041FAEC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FAF0 0041FAF0 01406825 */  move        $t5, $t2
/* 01FAF4 0041FAF4 01AF2821 */  addu        $a1, $t5, $t7
/* 01FAF8 0041FAF8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FAFC 0041FAFC 8FAE0040 */  lw          $t6, 0x40($sp)
/* 01FB00 0041FB00 000A67C3 */  sra         $t4, $t2, 31
/* 01FB04 0041FB04 00AF082B */  sltu        $at, $a1, $t7
/* 01FB08 0041FB08 002C2021 */  addu        $a0, $at, $t4
/* 01FB0C 0041FB0C 24060000 */  addiu       $a2, $zero, 0x0
/* 01FB10 0041FB10 24070008 */  addiu       $a3, $zero, 0x8
/* 01FB14 0041FB14 0320F809 */  jalr        $t9
/* 01FB18 0041FB18 008E2021 */   addu       $a0, $a0, $t6
/* 01FB1C 0041FB1C 8FAB0064 */  lw          $t3, 0x64($sp)
/* 01FB20 0041FB20 AFA20048 */  sw          $v0, 0x48($sp)
/* 01FB24 0041FB24 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01FB28 0041FB28 9168003E */  lbu         $t0, 0x3E($t3)
/* 01FB2C 0041FB2C 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01FB30 0041FB30 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FB34 0041FB34 0100C825 */  move        $t9, $t0
/* 01FB38 0041FB38 032B2821 */  addu        $a1, $t9, $t3
/* 01FB3C 0041FB3C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FB40 0041FB40 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01FB44 0041FB44 0008C7C3 */  sra         $t8, $t0, 31
/* 01FB48 0041FB48 00AB082B */  sltu        $at, $a1, $t3
/* 01FB4C 0041FB4C 00382021 */  addu        $a0, $at, $t8
/* 01FB50 0041FB50 24060000 */  addiu       $a2, $zero, 0x0
/* 01FB54 0041FB54 24070008 */  addiu       $a3, $zero, 0x8
/* 01FB58 0041FB58 0320F809 */  jalr        $t9
/* 01FB5C 0041FB5C 008A2021 */   addu       $a0, $a0, $t2
/* 01FB60 0041FB60 8FA90064 */  lw          $t1, 0x64($sp)
/* 01FB64 0041FB64 AFA20050 */  sw          $v0, 0x50($sp)
/* 01FB68 0041FB68 AFA30054 */  sw          $v1, 0x54($sp)
/* 01FB6C 0041FB6C 912C003F */  lbu         $t4, 0x3F($t1)
/* 01FB70 0041FB70 8FA90054 */  lw          $t1, 0x54($sp)
/* 01FB74 0041FB74 8FA80050 */  lw          $t0, 0x50($sp)
/* 01FB78 0041FB78 01807825 */  move        $t7, $t4
/* 01FB7C 0041FB7C 8FAD0060 */  lw          $t5, 0x60($sp)
/* 01FB80 0041FB80 01E9C821 */  addu        $t9, $t7, $t1
/* 01FB84 0041FB84 000C77C3 */  sra         $t6, $t4, 31
/* 01FB88 0041FB88 0329082B */  sltu        $at, $t9, $t1
/* 01FB8C 0041FB8C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FB90 0041FB90 002EC021 */  addu        $t8, $at, $t6
/* 01FB94 0041FB94 0308C021 */  addu        $t8, $t8, $t0
/* 01FB98 0041FB98 ADB80038 */  sw          $t8, 0x38($t5)
/* 01FB9C 0041FB9C ADB9003C */  sw          $t9, 0x3C($t5)
/* 01FBA0 0041FBA0 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01FBA4 0041FBA4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FBA8 0041FBA8 24040000 */  addiu       $a0, $zero, 0x0
/* 01FBAC 0041FBAC 914B0030 */  lbu         $t3, 0x30($t2)
/* 01FBB0 0041FBB0 24060000 */  addiu       $a2, $zero, 0x0
/* 01FBB4 0041FBB4 24070008 */  addiu       $a3, $zero, 0x8
/* 01FBB8 0041FBB8 0320F809 */  jalr        $t9
/* 01FBBC 0041FBBC 01602825 */   move       $a1, $t3
/* 01FBC0 0041FBC0 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01FBC4 0041FBC4 AFA20020 */  sw          $v0, 0x20($sp)
/* 01FBC8 0041FBC8 AFA30024 */  sw          $v1, 0x24($sp)
/* 01FBCC 0041FBCC 918E0031 */  lbu         $t6, 0x31($t4)
/* 01FBD0 0041FBD0 8FB90024 */  lw          $t9, 0x24($sp)
/* 01FBD4 0041FBD4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FBD8 0041FBD8 01C04825 */  move        $t1, $t6
/* 01FBDC 0041FBDC 01392821 */  addu        $a1, $t1, $t9
/* 01FBE0 0041FBE0 00B9082B */  sltu        $at, $a1, $t9
/* 01FBE4 0041FBE4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FBE8 0041FBE8 8FB80020 */  lw          $t8, 0x20($sp)
/* 01FBEC 0041FBEC 000E47C3 */  sra         $t0, $t6, 31
/* 01FBF0 0041FBF0 00282021 */  addu        $a0, $at, $t0
/* 01FBF4 0041FBF4 24060000 */  addiu       $a2, $zero, 0x0
/* 01FBF8 0041FBF8 24070008 */  addiu       $a3, $zero, 0x8
/* 01FBFC 0041FBFC 0320F809 */  jalr        $t9
/* 01FC00 0041FC00 00982021 */   addu       $a0, $a0, $t8
/* 01FC04 0041FC04 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01FC08 0041FC08 AFA20028 */  sw          $v0, 0x28($sp)
/* 01FC0C 0041FC0C AFA3002C */  sw          $v1, 0x2C($sp)
/* 01FC10 0041FC10 91ED0032 */  lbu         $t5, 0x32($t7)
/* 01FC14 0041FC14 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FC18 0041FC18 8FAC0028 */  lw          $t4, 0x28($sp)
/* 01FC1C 0041FC1C 01A05825 */  move        $t3, $t5
/* 01FC20 0041FC20 000D57C3 */  sra         $t2, $t5, 31
/* 01FC24 0041FC24 8FAD002C */  lw          $t5, 0x2C($sp)
/* 01FC28 0041FC28 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FC2C 0041FC2C 24060000 */  addiu       $a2, $zero, 0x0
/* 01FC30 0041FC30 016D2821 */  addu        $a1, $t3, $t5
/* 01FC34 0041FC34 00AD082B */  sltu        $at, $a1, $t5
/* 01FC38 0041FC38 002A2021 */  addu        $a0, $at, $t2
/* 01FC3C 0041FC3C 24070008 */  addiu       $a3, $zero, 0x8
/* 01FC40 0041FC40 0320F809 */  jalr        $t9
/* 01FC44 0041FC44 008C2021 */   addu       $a0, $a0, $t4
/* 01FC48 0041FC48 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01FC4C 0041FC4C AFA20030 */  sw          $v0, 0x30($sp)
/* 01FC50 0041FC50 AFA30034 */  sw          $v1, 0x34($sp)
/* 01FC54 0041FC54 91C80033 */  lbu         $t0, 0x33($t6)
/* 01FC58 0041FC58 8FAB0034 */  lw          $t3, 0x34($sp)
/* 01FC5C 0041FC5C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FC60 0041FC60 0100C825 */  move        $t9, $t0
/* 01FC64 0041FC64 032B2821 */  addu        $a1, $t9, $t3
/* 01FC68 0041FC68 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FC6C 0041FC6C 8FAA0030 */  lw          $t2, 0x30($sp)
/* 01FC70 0041FC70 0008C7C3 */  sra         $t8, $t0, 31
/* 01FC74 0041FC74 00AB082B */  sltu        $at, $a1, $t3
/* 01FC78 0041FC78 00382021 */  addu        $a0, $at, $t8
/* 01FC7C 0041FC7C 24060000 */  addiu       $a2, $zero, 0x0
/* 01FC80 0041FC80 24070008 */  addiu       $a3, $zero, 0x8
/* 01FC84 0041FC84 0320F809 */  jalr        $t9
/* 01FC88 0041FC88 008A2021 */   addu       $a0, $a0, $t2
/* 01FC8C 0041FC8C 8FA90064 */  lw          $t1, 0x64($sp)
/* 01FC90 0041FC90 AFA20038 */  sw          $v0, 0x38($sp)
/* 01FC94 0041FC94 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01FC98 0041FC98 912F0034 */  lbu         $t7, 0x34($t1)
/* 01FC9C 0041FC9C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FCA0 0041FCA0 8FAE0038 */  lw          $t6, 0x38($sp)
/* 01FCA4 0041FCA4 01E06825 */  move        $t5, $t7
/* 01FCA8 0041FCA8 000F67C3 */  sra         $t4, $t7, 31
/* 01FCAC 0041FCAC 8FAF003C */  lw          $t7, 0x3C($sp)
/* 01FCB0 0041FCB0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FCB4 0041FCB4 24060000 */  addiu       $a2, $zero, 0x0
/* 01FCB8 0041FCB8 01AF2821 */  addu        $a1, $t5, $t7
/* 01FCBC 0041FCBC 00AF082B */  sltu        $at, $a1, $t7
/* 01FCC0 0041FCC0 002C2021 */  addu        $a0, $at, $t4
/* 01FCC4 0041FCC4 24070008 */  addiu       $a3, $zero, 0x8
/* 01FCC8 0041FCC8 0320F809 */  jalr        $t9
/* 01FCCC 0041FCCC 008E2021 */   addu       $a0, $a0, $t6
/* 01FCD0 0041FCD0 8FA80064 */  lw          $t0, 0x64($sp)
/* 01FCD4 0041FCD4 AFA20040 */  sw          $v0, 0x40($sp)
/* 01FCD8 0041FCD8 AFA30044 */  sw          $v1, 0x44($sp)
/* 01FCDC 0041FCDC 91180035 */  lbu         $t8, 0x35($t0)
/* 01FCE0 0041FCE0 8FAD0044 */  lw          $t5, 0x44($sp)
/* 01FCE4 0041FCE4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FCE8 0041FCE8 03005825 */  move        $t3, $t8
/* 01FCEC 0041FCEC 016D2821 */  addu        $a1, $t3, $t5
/* 01FCF0 0041FCF0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FCF4 0041FCF4 8FAC0040 */  lw          $t4, 0x40($sp)
/* 01FCF8 0041FCF8 001857C3 */  sra         $t2, $t8, 31
/* 01FCFC 0041FCFC 00AD082B */  sltu        $at, $a1, $t5
/* 01FD00 0041FD00 002A2021 */  addu        $a0, $at, $t2
/* 01FD04 0041FD04 24060000 */  addiu       $a2, $zero, 0x0
/* 01FD08 0041FD08 24070008 */  addiu       $a3, $zero, 0x8
/* 01FD0C 0041FD0C 0320F809 */  jalr        $t9
/* 01FD10 0041FD10 008C2021 */   addu       $a0, $a0, $t4
/* 01FD14 0041FD14 8FB90064 */  lw          $t9, 0x64($sp)
/* 01FD18 0041FD18 AFA20048 */  sw          $v0, 0x48($sp)
/* 01FD1C 0041FD1C AFA3004C */  sw          $v1, 0x4C($sp)
/* 01FD20 0041FD20 93290036 */  lbu         $t1, 0x36($t9)
/* 01FD24 0041FD24 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FD28 0041FD28 8FA80048 */  lw          $t0, 0x48($sp)
/* 01FD2C 0041FD2C 01207825 */  move        $t7, $t1
/* 01FD30 0041FD30 000977C3 */  sra         $t6, $t1, 31
/* 01FD34 0041FD34 8FA9004C */  lw          $t1, 0x4C($sp)
/* 01FD38 0041FD38 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FD3C 0041FD3C 24060000 */  addiu       $a2, $zero, 0x0
/* 01FD40 0041FD40 01E92821 */  addu        $a1, $t7, $t1
/* 01FD44 0041FD44 00A9082B */  sltu        $at, $a1, $t1
/* 01FD48 0041FD48 002E2021 */  addu        $a0, $at, $t6
/* 01FD4C 0041FD4C 24070008 */  addiu       $a3, $zero, 0x8
/* 01FD50 0041FD50 0320F809 */  jalr        $t9
/* 01FD54 0041FD54 00882021 */   addu       $a0, $a0, $t0
/* 01FD58 0041FD58 8FB80064 */  lw          $t8, 0x64($sp)
/* 01FD5C 0041FD5C AFA20050 */  sw          $v0, 0x50($sp)
/* 01FD60 0041FD60 AFA30054 */  sw          $v1, 0x54($sp)
/* 01FD64 0041FD64 930A0037 */  lbu         $t2, 0x37($t8)
/* 01FD68 0041FD68 8FAF0054 */  lw          $t7, 0x54($sp)
/* 01FD6C 0041FD6C 8FAE0050 */  lw          $t6, 0x50($sp)
/* 01FD70 0041FD70 01406825 */  move        $t5, $t2
/* 01FD74 0041FD74 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01FD78 0041FD78 01AF4821 */  addu        $t1, $t5, $t7
/* 01FD7C 0041FD7C 000A67C3 */  sra         $t4, $t2, 31
/* 01FD80 0041FD80 012F082B */  sltu        $at, $t1, $t7
/* 01FD84 0041FD84 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FD88 0041FD88 002C4021 */  addu        $t0, $at, $t4
/* 01FD8C 0041FD8C 010E4021 */  addu        $t0, $t0, $t6
/* 01FD90 0041FD90 AD680030 */  sw          $t0, 0x30($t3)
/* 01FD94 0041FD94 AD690034 */  sw          $t1, 0x34($t3)
/* 01FD98 0041FD98 8FB90064 */  lw          $t9, 0x64($sp)
/* 01FD9C 0041FD9C 24040000 */  addiu       $a0, $zero, 0x0
/* 01FDA0 0041FDA0 24060000 */  addiu       $a2, $zero, 0x0
/* 01FDA4 0041FDA4 9338002C */  lbu         $t8, 0x2C($t9)
/* 01FDA8 0041FDA8 932C002D */  lbu         $t4, 0x2D($t9)
/* 01FDAC 0041FDAC 932F002E */  lbu         $t7, 0x2E($t9)
/* 01FDB0 0041FDB0 00185200 */  sll         $t2, $t8, 8
/* 01FDB4 0041FDB4 014C6821 */  addu        $t5, $t2, $t4
/* 01FDB8 0041FDB8 932B002F */  lbu         $t3, 0x2F($t9)
/* 01FDBC 0041FDBC 000D7200 */  sll         $t6, $t5, 8
/* 01FDC0 0041FDC0 8FAA0060 */  lw          $t2, 0x60($sp)
/* 01FDC4 0041FDC4 01CF4021 */  addu        $t0, $t6, $t7
/* 01FDC8 0041FDC8 00084A00 */  sll         $t1, $t0, 8
/* 01FDCC 0041FDCC 0169C021 */  addu        $t8, $t3, $t1
/* 01FDD0 0041FDD0 AD58002C */  sw          $t8, 0x2C($t2)
/* 01FDD4 0041FDD4 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01FDD8 0041FDD8 24070008 */  addiu       $a3, $zero, 0x8
/* 01FDDC 0041FDDC 918D0028 */  lbu         $t5, 0x28($t4)
/* 01FDE0 0041FDE0 918F0029 */  lbu         $t7, 0x29($t4)
/* 01FDE4 0041FDE4 918B002A */  lbu         $t3, 0x2A($t4)
/* 01FDE8 0041FDE8 000D7200 */  sll         $t6, $t5, 8
/* 01FDEC 0041FDEC 01CF4021 */  addu        $t0, $t6, $t7
/* 01FDF0 0041FDF0 918A002B */  lbu         $t2, 0x2B($t4)
/* 01FDF4 0041FDF4 0008CA00 */  sll         $t9, $t0, 8
/* 01FDF8 0041FDF8 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01FDFC 0041FDFC 032B4821 */  addu        $t1, $t9, $t3
/* 01FE00 0041FE00 0009C200 */  sll         $t8, $t1, 8
/* 01FE04 0041FE04 01586821 */  addu        $t5, $t2, $t8
/* 01FE08 0041FE08 ADCD0028 */  sw          $t5, 0x28($t6)
/* 01FE0C 0041FE0C 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01FE10 0041FE10 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FE14 0041FE14 91E80020 */  lbu         $t0, 0x20($t7)
/* 01FE18 0041FE18 0320F809 */  jalr        $t9
/* 01FE1C 0041FE1C 01002825 */   move       $a1, $t0
/* 01FE20 0041FE20 8FB90064 */  lw          $t9, 0x64($sp)
/* 01FE24 0041FE24 AFA20020 */  sw          $v0, 0x20($sp)
/* 01FE28 0041FE28 AFA30024 */  sw          $v1, 0x24($sp)
/* 01FE2C 0041FE2C 932B0021 */  lbu         $t3, 0x21($t9)
/* 01FE30 0041FE30 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FE34 0041FE34 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01FE38 0041FE38 01606825 */  move        $t5, $t3
/* 01FE3C 0041FE3C 000B67C3 */  sra         $t4, $t3, 31
/* 01FE40 0041FE40 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01FE44 0041FE44 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FE48 0041FE48 24060000 */  addiu       $a2, $zero, 0x0
/* 01FE4C 0041FE4C 01AB2821 */  addu        $a1, $t5, $t3
/* 01FE50 0041FE50 00AB082B */  sltu        $at, $a1, $t3
/* 01FE54 0041FE54 002C2021 */  addu        $a0, $at, $t4
/* 01FE58 0041FE58 24070008 */  addiu       $a3, $zero, 0x8
/* 01FE5C 0041FE5C 0320F809 */  jalr        $t9
/* 01FE60 0041FE60 008A2021 */   addu       $a0, $a0, $t2
/* 01FE64 0041FE64 8FA90064 */  lw          $t1, 0x64($sp)
/* 01FE68 0041FE68 AFA20028 */  sw          $v0, 0x28($sp)
/* 01FE6C 0041FE6C AFA3002C */  sw          $v1, 0x2C($sp)
/* 01FE70 0041FE70 91380022 */  lbu         $t8, 0x22($t1)
/* 01FE74 0041FE74 8FA9002C */  lw          $t1, 0x2C($sp)
/* 01FE78 0041FE78 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FE7C 0041FE7C 03007825 */  move        $t7, $t8
/* 01FE80 0041FE80 01E92821 */  addu        $a1, $t7, $t1
/* 01FE84 0041FE84 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FE88 0041FE88 8FA80028 */  lw          $t0, 0x28($sp)
/* 01FE8C 0041FE8C 001877C3 */  sra         $t6, $t8, 31
/* 01FE90 0041FE90 00A9082B */  sltu        $at, $a1, $t1
/* 01FE94 0041FE94 002E2021 */  addu        $a0, $at, $t6
/* 01FE98 0041FE98 24060000 */  addiu       $a2, $zero, 0x0
/* 01FE9C 0041FE9C 24070008 */  addiu       $a3, $zero, 0x8
/* 01FEA0 0041FEA0 0320F809 */  jalr        $t9
/* 01FEA4 0041FEA4 00882021 */   addu       $a0, $a0, $t0
/* 01FEA8 0041FEA8 8FB90064 */  lw          $t9, 0x64($sp)
/* 01FEAC 0041FEAC AFA20030 */  sw          $v0, 0x30($sp)
/* 01FEB0 0041FEB0 AFA30034 */  sw          $v1, 0x34($sp)
/* 01FEB4 0041FEB4 932C0023 */  lbu         $t4, 0x23($t9)
/* 01FEB8 0041FEB8 8FB90034 */  lw          $t9, 0x34($sp)
/* 01FEBC 0041FEBC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FEC0 0041FEC0 01805825 */  move        $t3, $t4
/* 01FEC4 0041FEC4 01792821 */  addu        $a1, $t3, $t9
/* 01FEC8 0041FEC8 00B9082B */  sltu        $at, $a1, $t9
/* 01FECC 0041FECC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FED0 0041FED0 8FB80030 */  lw          $t8, 0x30($sp)
/* 01FED4 0041FED4 000C57C3 */  sra         $t2, $t4, 31
/* 01FED8 0041FED8 002A2021 */  addu        $a0, $at, $t2
/* 01FEDC 0041FEDC 24060000 */  addiu       $a2, $zero, 0x0
/* 01FEE0 0041FEE0 24070008 */  addiu       $a3, $zero, 0x8
/* 01FEE4 0041FEE4 0320F809 */  jalr        $t9
/* 01FEE8 0041FEE8 00982021 */   addu       $a0, $a0, $t8
/* 01FEEC 0041FEEC 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01FEF0 0041FEF0 AFA20038 */  sw          $v0, 0x38($sp)
/* 01FEF4 0041FEF4 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01FEF8 0041FEF8 91AE0024 */  lbu         $t6, 0x24($t5)
/* 01FEFC 0041FEFC 8FAD003C */  lw          $t5, 0x3C($sp)
/* 01FF00 0041FF00 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FF04 0041FF04 01C04825 */  move        $t1, $t6
/* 01FF08 0041FF08 012D2821 */  addu        $a1, $t1, $t5
/* 01FF0C 0041FF0C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FF10 0041FF10 8FAC0038 */  lw          $t4, 0x38($sp)
/* 01FF14 0041FF14 000E47C3 */  sra         $t0, $t6, 31
/* 01FF18 0041FF18 00AD082B */  sltu        $at, $a1, $t5
/* 01FF1C 0041FF1C 00282021 */  addu        $a0, $at, $t0
/* 01FF20 0041FF20 24060000 */  addiu       $a2, $zero, 0x0
/* 01FF24 0041FF24 24070008 */  addiu       $a3, $zero, 0x8
/* 01FF28 0041FF28 0320F809 */  jalr        $t9
/* 01FF2C 0041FF2C 008C2021 */   addu       $a0, $a0, $t4
/* 01FF30 0041FF30 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01FF34 0041FF34 AFA20040 */  sw          $v0, 0x40($sp)
/* 01FF38 0041FF38 AFA30044 */  sw          $v1, 0x44($sp)
/* 01FF3C 0041FF3C 91EA0025 */  lbu         $t2, 0x25($t7)
/* 01FF40 0041FF40 8FAF0044 */  lw          $t7, 0x44($sp)
/* 01FF44 0041FF44 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FF48 0041FF48 0140C825 */  move        $t9, $t2
/* 01FF4C 0041FF4C 032F2821 */  addu        $a1, $t9, $t7
/* 01FF50 0041FF50 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FF54 0041FF54 8FAE0040 */  lw          $t6, 0x40($sp)
/* 01FF58 0041FF58 000AC7C3 */  sra         $t8, $t2, 31
/* 01FF5C 0041FF5C 00AF082B */  sltu        $at, $a1, $t7
/* 01FF60 0041FF60 00382021 */  addu        $a0, $at, $t8
/* 01FF64 0041FF64 24060000 */  addiu       $a2, $zero, 0x0
/* 01FF68 0041FF68 24070008 */  addiu       $a3, $zero, 0x8
/* 01FF6C 0041FF6C 0320F809 */  jalr        $t9
/* 01FF70 0041FF70 008E2021 */   addu       $a0, $a0, $t6
/* 01FF74 0041FF74 8FAB0064 */  lw          $t3, 0x64($sp)
/* 01FF78 0041FF78 AFA20048 */  sw          $v0, 0x48($sp)
/* 01FF7C 0041FF7C AFA3004C */  sw          $v1, 0x4C($sp)
/* 01FF80 0041FF80 91680026 */  lbu         $t0, 0x26($t3)
/* 01FF84 0041FF84 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01FF88 0041FF88 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FF8C 0041FF8C 01006825 */  move        $t5, $t0
/* 01FF90 0041FF90 01AB2821 */  addu        $a1, $t5, $t3
/* 01FF94 0041FF94 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01FF98 0041FF98 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01FF9C 0041FF9C 000867C3 */  sra         $t4, $t0, 31
/* 01FFA0 0041FFA0 00AB082B */  sltu        $at, $a1, $t3
/* 01FFA4 0041FFA4 002C2021 */  addu        $a0, $at, $t4
/* 01FFA8 0041FFA8 24060000 */  addiu       $a2, $zero, 0x0
/* 01FFAC 0041FFAC 24070008 */  addiu       $a3, $zero, 0x8
/* 01FFB0 0041FFB0 0320F809 */  jalr        $t9
/* 01FFB4 0041FFB4 008A2021 */   addu       $a0, $a0, $t2
/* 01FFB8 0041FFB8 8FA90064 */  lw          $t1, 0x64($sp)
/* 01FFBC 0041FFBC AFA20050 */  sw          $v0, 0x50($sp)
/* 01FFC0 0041FFC0 AFA30054 */  sw          $v1, 0x54($sp)
/* 01FFC4 0041FFC4 91380027 */  lbu         $t8, 0x27($t1)
/* 01FFC8 0041FFC8 8FA90054 */  lw          $t1, 0x54($sp)
/* 01FFCC 0041FFCC 8FA80050 */  lw          $t0, 0x50($sp)
/* 01FFD0 0041FFD0 03007825 */  move        $t7, $t8
/* 01FFD4 0041FFD4 8FB90060 */  lw          $t9, 0x60($sp)
/* 01FFD8 0041FFD8 01E96821 */  addu        $t5, $t7, $t1
/* 01FFDC 0041FFDC 001877C3 */  sra         $t6, $t8, 31
/* 01FFE0 0041FFE0 01A9082B */  sltu        $at, $t5, $t1
/* 01FFE4 0041FFE4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01FFE8 0041FFE8 002E6021 */  addu        $t4, $at, $t6
/* 01FFEC 0041FFEC 01886021 */  addu        $t4, $t4, $t0
/* 01FFF0 0041FFF0 AF2C0020 */  sw          $t4, 0x20($t9)
/* 01FFF4 0041FFF4 AF2D0024 */  sw          $t5, 0x24($t9)
/* 01FFF8 0041FFF8 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01FFFC 0041FFFC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020000 00420000 24040000 */  addiu       $a0, $zero, 0x0
/* 020004 00420004 914B0018 */  lbu         $t3, 0x18($t2)
/* 020008 00420008 24060000 */  addiu       $a2, $zero, 0x0
/* 02000C 0042000C 24070008 */  addiu       $a3, $zero, 0x8
/* 020010 00420010 0320F809 */  jalr        $t9
/* 020014 00420014 01602825 */   move       $a1, $t3
/* 020018 00420018 8FB80064 */  lw          $t8, 0x64($sp)
/* 02001C 0042001C AFA20020 */  sw          $v0, 0x20($sp)
/* 020020 00420020 AFA30024 */  sw          $v1, 0x24($sp)
/* 020024 00420024 930E0019 */  lbu         $t6, 0x19($t8)
/* 020028 00420028 8FAD0024 */  lw          $t5, 0x24($sp)
/* 02002C 0042002C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 020030 00420030 01C04825 */  move        $t1, $t6
/* 020034 00420034 012D2821 */  addu        $a1, $t1, $t5
/* 020038 00420038 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 02003C 0042003C 8FAC0020 */  lw          $t4, 0x20($sp)
/* 020040 00420040 000E47C3 */  sra         $t0, $t6, 31
/* 020044 00420044 00AD082B */  sltu        $at, $a1, $t5
/* 020048 00420048 00282021 */  addu        $a0, $at, $t0
/* 02004C 0042004C 24060000 */  addiu       $a2, $zero, 0x0
/* 020050 00420050 24070008 */  addiu       $a3, $zero, 0x8
/* 020054 00420054 0320F809 */  jalr        $t9
/* 020058 00420058 008C2021 */   addu       $a0, $a0, $t4
/* 02005C 0042005C 8FAF0064 */  lw          $t7, 0x64($sp)
/* 020060 00420060 AFA20028 */  sw          $v0, 0x28($sp)
/* 020064 00420064 AFA3002C */  sw          $v1, 0x2C($sp)
/* 020068 00420068 91F9001A */  lbu         $t9, 0x1A($t7)
/* 02006C 0042006C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 020070 00420070 8FB80028 */  lw          $t8, 0x28($sp)
/* 020074 00420074 03205825 */  move        $t3, $t9
/* 020078 00420078 001957C3 */  sra         $t2, $t9, 31
/* 02007C 0042007C 8FB9002C */  lw          $t9, 0x2C($sp)
/* 020080 00420080 24060000 */  addiu       $a2, $zero, 0x0
/* 020084 00420084 24070008 */  addiu       $a3, $zero, 0x8
/* 020088 00420088 01792821 */  addu        $a1, $t3, $t9
/* 02008C 0042008C 00B9082B */  sltu        $at, $a1, $t9
/* 020090 00420090 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020094 00420094 002A2021 */  addu        $a0, $at, $t2
/* 020098 00420098 00982021 */  addu        $a0, $a0, $t8
/* 02009C 0042009C 0320F809 */  jalr        $t9
/* 0200A0 004200A0 00000000 */   nop
/* 0200A4 004200A4 8FAE0064 */  lw          $t6, 0x64($sp)
/* 0200A8 004200A8 AFA20030 */  sw          $v0, 0x30($sp)
/* 0200AC 004200AC AFA30034 */  sw          $v1, 0x34($sp)
/* 0200B0 004200B0 91C8001B */  lbu         $t0, 0x1B($t6)
/* 0200B4 004200B4 8FAB0034 */  lw          $t3, 0x34($sp)
/* 0200B8 004200B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0200BC 004200BC 01006825 */  move        $t5, $t0
/* 0200C0 004200C0 01AB2821 */  addu        $a1, $t5, $t3
/* 0200C4 004200C4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 0200C8 004200C8 8FAA0030 */  lw          $t2, 0x30($sp)
/* 0200CC 004200CC 000867C3 */  sra         $t4, $t0, 31
/* 0200D0 004200D0 00AB082B */  sltu        $at, $a1, $t3
/* 0200D4 004200D4 002C2021 */  addu        $a0, $at, $t4
/* 0200D8 004200D8 24060000 */  addiu       $a2, $zero, 0x0
/* 0200DC 004200DC 24070008 */  addiu       $a3, $zero, 0x8
/* 0200E0 004200E0 0320F809 */  jalr        $t9
/* 0200E4 004200E4 008A2021 */   addu       $a0, $a0, $t2
/* 0200E8 004200E8 8FA90064 */  lw          $t1, 0x64($sp)
/* 0200EC 004200EC AFA20038 */  sw          $v0, 0x38($sp)
/* 0200F0 004200F0 AFA3003C */  sw          $v1, 0x3C($sp)
/* 0200F4 004200F4 912F001C */  lbu         $t7, 0x1C($t1)
/* 0200F8 004200F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0200FC 004200FC 8FAE0038 */  lw          $t6, 0x38($sp)
/* 020100 00420100 01E0C825 */  move        $t9, $t7
/* 020104 00420104 000FC7C3 */  sra         $t8, $t7, 31
/* 020108 00420108 8FAF003C */  lw          $t7, 0x3C($sp)
/* 02010C 0042010C 24060000 */  addiu       $a2, $zero, 0x0
/* 020110 00420110 24070008 */  addiu       $a3, $zero, 0x8
/* 020114 00420114 032F2821 */  addu        $a1, $t9, $t7
/* 020118 00420118 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 02011C 0042011C 00AF082B */  sltu        $at, $a1, $t7
/* 020120 00420120 00382021 */  addu        $a0, $at, $t8
/* 020124 00420124 0320F809 */  jalr        $t9
/* 020128 00420128 008E2021 */   addu       $a0, $a0, $t6
/* 02012C 0042012C 8FA80064 */  lw          $t0, 0x64($sp)
/* 020130 00420130 AFA20040 */  sw          $v0, 0x40($sp)
/* 020134 00420134 AFA30044 */  sw          $v1, 0x44($sp)
/* 020138 00420138 910C001D */  lbu         $t4, 0x1D($t0)
/* 02013C 0042013C 8FB90044 */  lw          $t9, 0x44($sp)
/* 020140 00420140 8FBC0018 */  lw          $gp, 0x18($sp)
/* 020144 00420144 01805825 */  move        $t3, $t4
/* 020148 00420148 01792821 */  addu        $a1, $t3, $t9
/* 02014C 0042014C 00B9082B */  sltu        $at, $a1, $t9
/* 020150 00420150 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020154 00420154 8FB80040 */  lw          $t8, 0x40($sp)
/* 020158 00420158 000C57C3 */  sra         $t2, $t4, 31
/* 02015C 0042015C 002A2021 */  addu        $a0, $at, $t2
/* 020160 00420160 24060000 */  addiu       $a2, $zero, 0x0
/* 020164 00420164 24070008 */  addiu       $a3, $zero, 0x8
/* 020168 00420168 0320F809 */  jalr        $t9
/* 02016C 0042016C 00982021 */   addu       $a0, $a0, $t8
/* 020170 00420170 8FAD0064 */  lw          $t5, 0x64($sp)
/* 020174 00420174 AFA20048 */  sw          $v0, 0x48($sp)
/* 020178 00420178 AFA3004C */  sw          $v1, 0x4C($sp)
/* 02017C 0042017C 91A9001E */  lbu         $t1, 0x1E($t5)
/* 020180 00420180 8FBC0018 */  lw          $gp, 0x18($sp)
/* 020184 00420184 8FA80048 */  lw          $t0, 0x48($sp)
/* 020188 00420188 01207825 */  move        $t7, $t1
/* 02018C 0042018C 000977C3 */  sra         $t6, $t1, 31
/* 020190 00420190 8FA9004C */  lw          $t1, 0x4C($sp)
/* 020194 00420194 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020198 00420198 24060000 */  addiu       $a2, $zero, 0x0
/* 02019C 0042019C 01E92821 */  addu        $a1, $t7, $t1
/* 0201A0 004201A0 00A9082B */  sltu        $at, $a1, $t1
/* 0201A4 004201A4 002E2021 */  addu        $a0, $at, $t6
/* 0201A8 004201A8 24070008 */  addiu       $a3, $zero, 0x8
/* 0201AC 004201AC 0320F809 */  jalr        $t9
/* 0201B0 004201B0 00882021 */   addu       $a0, $a0, $t0
/* 0201B4 004201B4 8FAC0064 */  lw          $t4, 0x64($sp)
/* 0201B8 004201B8 AFA20050 */  sw          $v0, 0x50($sp)
/* 0201BC 004201BC AFA30054 */  sw          $v1, 0x54($sp)
/* 0201C0 004201C0 918A001F */  lbu         $t2, 0x1F($t4)
/* 0201C4 004201C4 8FAF0054 */  lw          $t7, 0x54($sp)
/* 0201C8 004201C8 8FAE0050 */  lw          $t6, 0x50($sp)
/* 0201CC 004201CC 0140C825 */  move        $t9, $t2
/* 0201D0 004201D0 8FAB0060 */  lw          $t3, 0x60($sp)
/* 0201D4 004201D4 032F4821 */  addu        $t1, $t9, $t7
/* 0201D8 004201D8 000AC7C3 */  sra         $t8, $t2, 31
/* 0201DC 004201DC 012F082B */  sltu        $at, $t1, $t7
/* 0201E0 004201E0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0201E4 004201E4 00384021 */  addu        $t0, $at, $t8
/* 0201E8 004201E8 010E4021 */  addu        $t0, $t0, $t6
/* 0201EC 004201EC AD680018 */  sw          $t0, 0x18($t3)
/* 0201F0 004201F0 AD69001C */  sw          $t1, 0x1C($t3)
/* 0201F4 004201F4 8FAD0064 */  lw          $t5, 0x64($sp)
/* 0201F8 004201F8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 0201FC 004201FC 24040000 */  addiu       $a0, $zero, 0x0
/* 020200 00420200 91AC0010 */  lbu         $t4, 0x10($t5)
/* 020204 00420204 24060000 */  addiu       $a2, $zero, 0x0
/* 020208 00420208 24070008 */  addiu       $a3, $zero, 0x8
/* 02020C 0042020C 0320F809 */  jalr        $t9
/* 020210 00420210 01802825 */   move       $a1, $t4
/* 020214 00420214 8FAA0064 */  lw          $t2, 0x64($sp)
/* 020218 00420218 AFA20020 */  sw          $v0, 0x20($sp)
/* 02021C 0042021C AFA30024 */  sw          $v1, 0x24($sp)
/* 020220 00420220 91580011 */  lbu         $t8, 0x11($t2)
/* 020224 00420224 8FA90024 */  lw          $t1, 0x24($sp)
/* 020228 00420228 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02022C 0042022C 03007825 */  move        $t7, $t8
/* 020230 00420230 01E92821 */  addu        $a1, $t7, $t1
/* 020234 00420234 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020238 00420238 8FA80020 */  lw          $t0, 0x20($sp)
/* 02023C 0042023C 001877C3 */  sra         $t6, $t8, 31
/* 020240 00420240 00A9082B */  sltu        $at, $a1, $t1
/* 020244 00420244 002E2021 */  addu        $a0, $at, $t6
/* 020248 00420248 24060000 */  addiu       $a2, $zero, 0x0
/* 02024C 0042024C 24070008 */  addiu       $a3, $zero, 0x8
/* 020250 00420250 0320F809 */  jalr        $t9
/* 020254 00420254 00882021 */   addu       $a0, $a0, $t0
/* 020258 00420258 8FB90064 */  lw          $t9, 0x64($sp)
/* 02025C 0042025C AFA20028 */  sw          $v0, 0x28($sp)
/* 020260 00420260 AFA3002C */  sw          $v1, 0x2C($sp)
/* 020264 00420264 932B0012 */  lbu         $t3, 0x12($t9)
/* 020268 00420268 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02026C 0042026C 8FAA0028 */  lw          $t2, 0x28($sp)
/* 020270 00420270 01606825 */  move        $t5, $t3
/* 020274 00420274 000B67C3 */  sra         $t4, $t3, 31
/* 020278 00420278 8FAB002C */  lw          $t3, 0x2C($sp)
/* 02027C 0042027C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020280 00420280 24060000 */  addiu       $a2, $zero, 0x0
/* 020284 00420284 01AB2821 */  addu        $a1, $t5, $t3
/* 020288 00420288 00AB082B */  sltu        $at, $a1, $t3
/* 02028C 0042028C 002C2021 */  addu        $a0, $at, $t4
/* 020290 00420290 24070008 */  addiu       $a3, $zero, 0x8
/* 020294 00420294 0320F809 */  jalr        $t9
/* 020298 00420298 008A2021 */   addu       $a0, $a0, $t2
/* 02029C 0042029C 8FB80064 */  lw          $t8, 0x64($sp)
/* 0202A0 004202A0 AFA20030 */  sw          $v0, 0x30($sp)
/* 0202A4 004202A4 AFA30034 */  sw          $v1, 0x34($sp)
/* 0202A8 004202A8 930E0013 */  lbu         $t6, 0x13($t8)
/* 0202AC 004202AC 8FAD0034 */  lw          $t5, 0x34($sp)
/* 0202B0 004202B0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0202B4 004202B4 01C04825 */  move        $t1, $t6
/* 0202B8 004202B8 012D2821 */  addu        $a1, $t1, $t5
/* 0202BC 004202BC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 0202C0 004202C0 8FAC0030 */  lw          $t4, 0x30($sp)
/* 0202C4 004202C4 000E47C3 */  sra         $t0, $t6, 31
/* 0202C8 004202C8 00AD082B */  sltu        $at, $a1, $t5
/* 0202CC 004202CC 00282021 */  addu        $a0, $at, $t0
/* 0202D0 004202D0 24060000 */  addiu       $a2, $zero, 0x0
/* 0202D4 004202D4 24070008 */  addiu       $a3, $zero, 0x8
/* 0202D8 004202D8 0320F809 */  jalr        $t9
/* 0202DC 004202DC 008C2021 */   addu       $a0, $a0, $t4
/* 0202E0 004202E0 8FAF0064 */  lw          $t7, 0x64($sp)
/* 0202E4 004202E4 AFA20038 */  sw          $v0, 0x38($sp)
/* 0202E8 004202E8 AFA3003C */  sw          $v1, 0x3C($sp)
/* 0202EC 004202EC 91F90014 */  lbu         $t9, 0x14($t7)
/* 0202F0 004202F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0202F4 004202F4 8FB80038 */  lw          $t8, 0x38($sp)
/* 0202F8 004202F8 03205825 */  move        $t3, $t9
/* 0202FC 004202FC 001957C3 */  sra         $t2, $t9, 31
/* 020300 00420300 8FB9003C */  lw          $t9, 0x3C($sp)
/* 020304 00420304 24060000 */  addiu       $a2, $zero, 0x0
/* 020308 00420308 24070008 */  addiu       $a3, $zero, 0x8
/* 02030C 0042030C 01792821 */  addu        $a1, $t3, $t9
/* 020310 00420310 00B9082B */  sltu        $at, $a1, $t9
/* 020314 00420314 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020318 00420318 002A2021 */  addu        $a0, $at, $t2
/* 02031C 0042031C 00982021 */  addu        $a0, $a0, $t8
/* 020320 00420320 0320F809 */  jalr        $t9
/* 020324 00420324 00000000 */   nop
/* 020328 00420328 8FAE0064 */  lw          $t6, 0x64($sp)
/* 02032C 0042032C AFA20040 */  sw          $v0, 0x40($sp)
/* 020330 00420330 AFA30044 */  sw          $v1, 0x44($sp)
/* 020334 00420334 91C80015 */  lbu         $t0, 0x15($t6)
/* 020338 00420338 8FAB0044 */  lw          $t3, 0x44($sp)
/* 02033C 0042033C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 020340 00420340 01006825 */  move        $t5, $t0
/* 020344 00420344 01AB2821 */  addu        $a1, $t5, $t3
/* 020348 00420348 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 02034C 0042034C 8FAA0040 */  lw          $t2, 0x40($sp)
/* 020350 00420350 000867C3 */  sra         $t4, $t0, 31
/* 020354 00420354 00AB082B */  sltu        $at, $a1, $t3
/* 020358 00420358 002C2021 */  addu        $a0, $at, $t4
/* 02035C 0042035C 24060000 */  addiu       $a2, $zero, 0x0
/* 020360 00420360 24070008 */  addiu       $a3, $zero, 0x8
/* 020364 00420364 0320F809 */  jalr        $t9
/* 020368 00420368 008A2021 */   addu       $a0, $a0, $t2
/* 02036C 0042036C 8FA90064 */  lw          $t1, 0x64($sp)
/* 020370 00420370 AFA20048 */  sw          $v0, 0x48($sp)
/* 020374 00420374 AFA3004C */  sw          $v1, 0x4C($sp)
/* 020378 00420378 912F0016 */  lbu         $t7, 0x16($t1)
/* 02037C 0042037C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 020380 00420380 8FAE0048 */  lw          $t6, 0x48($sp)
/* 020384 00420384 01E0C825 */  move        $t9, $t7
/* 020388 00420388 000FC7C3 */  sra         $t8, $t7, 31
/* 02038C 0042038C 8FAF004C */  lw          $t7, 0x4C($sp)
/* 020390 00420390 24060000 */  addiu       $a2, $zero, 0x0
/* 020394 00420394 24070008 */  addiu       $a3, $zero, 0x8
/* 020398 00420398 032F2821 */  addu        $a1, $t9, $t7
/* 02039C 0042039C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 0203A0 004203A0 00AF082B */  sltu        $at, $a1, $t7
/* 0203A4 004203A4 00382021 */  addu        $a0, $at, $t8
/* 0203A8 004203A8 0320F809 */  jalr        $t9
/* 0203AC 004203AC 008E2021 */   addu       $a0, $a0, $t6
/* 0203B0 004203B0 8FA80064 */  lw          $t0, 0x64($sp)
/* 0203B4 004203B4 AFA20050 */  sw          $v0, 0x50($sp)
/* 0203B8 004203B8 AFA30054 */  sw          $v1, 0x54($sp)
/* 0203BC 004203BC 910C0017 */  lbu         $t4, 0x17($t0)
/* 0203C0 004203C0 8FB90054 */  lw          $t9, 0x54($sp)
/* 0203C4 004203C4 8FB80050 */  lw          $t8, 0x50($sp)
/* 0203C8 004203C8 01805825 */  move        $t3, $t4
/* 0203CC 004203CC 8FAD0060 */  lw          $t5, 0x60($sp)
/* 0203D0 004203D0 01797821 */  addu        $t7, $t3, $t9
/* 0203D4 004203D4 000C57C3 */  sra         $t2, $t4, 31
/* 0203D8 004203D8 01F9082B */  sltu        $at, $t7, $t9
/* 0203DC 004203DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0203E0 004203E0 002A7021 */  addu        $t6, $at, $t2
/* 0203E4 004203E4 01D87021 */  addu        $t6, $t6, $t8
/* 0203E8 004203E8 ADAE0010 */  sw          $t6, 0x10($t5)
/* 0203EC 004203EC ADAF0014 */  sw          $t7, 0x14($t5)
/* 0203F0 004203F0 8FA90064 */  lw          $t1, 0x64($sp)
/* 0203F4 004203F4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 0203F8 004203F8 24040000 */  addiu       $a0, $zero, 0x0
/* 0203FC 004203FC 91280008 */  lbu         $t0, 0x8($t1)
/* 020400 00420400 24060000 */  addiu       $a2, $zero, 0x0
/* 020404 00420404 24070008 */  addiu       $a3, $zero, 0x8
/* 020408 00420408 0320F809 */  jalr        $t9
/* 02040C 0042040C 01002825 */   move       $a1, $t0
/* 020410 00420410 8FAC0064 */  lw          $t4, 0x64($sp)
/* 020414 00420414 AFA20020 */  sw          $v0, 0x20($sp)
/* 020418 00420418 AFA30024 */  sw          $v1, 0x24($sp)
/* 02041C 0042041C 918A0009 */  lbu         $t2, 0x9($t4)
/* 020420 00420420 8FAF0024 */  lw          $t7, 0x24($sp)
/* 020424 00420424 8FBC0018 */  lw          $gp, 0x18($sp)
/* 020428 00420428 0140C825 */  move        $t9, $t2
/* 02042C 0042042C 032F2821 */  addu        $a1, $t9, $t7
/* 020430 00420430 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020434 00420434 8FAE0020 */  lw          $t6, 0x20($sp)
/* 020438 00420438 000AC7C3 */  sra         $t8, $t2, 31
/* 02043C 0042043C 00AF082B */  sltu        $at, $a1, $t7
/* 020440 00420440 00382021 */  addu        $a0, $at, $t8
/* 020444 00420444 24060000 */  addiu       $a2, $zero, 0x0
/* 020448 00420448 24070008 */  addiu       $a3, $zero, 0x8
/* 02044C 0042044C 0320F809 */  jalr        $t9
/* 020450 00420450 008E2021 */   addu       $a0, $a0, $t6
/* 020454 00420454 8FAB0064 */  lw          $t3, 0x64($sp)
/* 020458 00420458 AFA20028 */  sw          $v0, 0x28($sp)
/* 02045C 0042045C AFA3002C */  sw          $v1, 0x2C($sp)
/* 020460 00420460 916D000A */  lbu         $t5, 0xA($t3)
/* 020464 00420464 8FBC0018 */  lw          $gp, 0x18($sp)
/* 020468 00420468 8FAC0028 */  lw          $t4, 0x28($sp)
/* 02046C 0042046C 01A04825 */  move        $t1, $t5
/* 020470 00420470 000D47C3 */  sra         $t0, $t5, 31
/* 020474 00420474 8FAD002C */  lw          $t5, 0x2C($sp)
/* 020478 00420478 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 02047C 0042047C 24060000 */  addiu       $a2, $zero, 0x0
/* 020480 00420480 012D2821 */  addu        $a1, $t1, $t5
/* 020484 00420484 00AD082B */  sltu        $at, $a1, $t5
/* 020488 00420488 00282021 */  addu        $a0, $at, $t0
/* 02048C 0042048C 24070008 */  addiu       $a3, $zero, 0x8
/* 020490 00420490 0320F809 */  jalr        $t9
/* 020494 00420494 008C2021 */   addu       $a0, $a0, $t4
/* 020498 00420498 8FAA0064 */  lw          $t2, 0x64($sp)
/* 02049C 0042049C AFA20030 */  sw          $v0, 0x30($sp)
/* 0204A0 004204A0 AFA30034 */  sw          $v1, 0x34($sp)
/* 0204A4 004204A4 9158000B */  lbu         $t8, 0xB($t2)
/* 0204A8 004204A8 8FA90034 */  lw          $t1, 0x34($sp)
/* 0204AC 004204AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0204B0 004204B0 03007825 */  move        $t7, $t8
/* 0204B4 004204B4 01E92821 */  addu        $a1, $t7, $t1
/* 0204B8 004204B8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 0204BC 004204BC 8FA80030 */  lw          $t0, 0x30($sp)
/* 0204C0 004204C0 001877C3 */  sra         $t6, $t8, 31
/* 0204C4 004204C4 00A9082B */  sltu        $at, $a1, $t1
/* 0204C8 004204C8 002E2021 */  addu        $a0, $at, $t6
/* 0204CC 004204CC 24060000 */  addiu       $a2, $zero, 0x0
/* 0204D0 004204D0 24070008 */  addiu       $a3, $zero, 0x8
/* 0204D4 004204D4 0320F809 */  jalr        $t9
/* 0204D8 004204D8 00882021 */   addu       $a0, $a0, $t0
/* 0204DC 004204DC 8FB90064 */  lw          $t9, 0x64($sp)
/* 0204E0 004204E0 AFA20038 */  sw          $v0, 0x38($sp)
/* 0204E4 004204E4 AFA3003C */  sw          $v1, 0x3C($sp)
/* 0204E8 004204E8 932B000C */  lbu         $t3, 0xC($t9)
/* 0204EC 004204EC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0204F0 004204F0 8FAA0038 */  lw          $t2, 0x38($sp)
/* 0204F4 004204F4 01606825 */  move        $t5, $t3
/* 0204F8 004204F8 000B67C3 */  sra         $t4, $t3, 31
/* 0204FC 004204FC 8FAB003C */  lw          $t3, 0x3C($sp)
/* 020500 00420500 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020504 00420504 24060000 */  addiu       $a2, $zero, 0x0
/* 020508 00420508 01AB2821 */  addu        $a1, $t5, $t3
/* 02050C 0042050C 00AB082B */  sltu        $at, $a1, $t3
/* 020510 00420510 002C2021 */  addu        $a0, $at, $t4
/* 020514 00420514 24070008 */  addiu       $a3, $zero, 0x8
/* 020518 00420518 0320F809 */  jalr        $t9
/* 02051C 0042051C 008A2021 */   addu       $a0, $a0, $t2
/* 020520 00420520 8FB80064 */  lw          $t8, 0x64($sp)
/* 020524 00420524 AFA20040 */  sw          $v0, 0x40($sp)
/* 020528 00420528 AFA30044 */  sw          $v1, 0x44($sp)
/* 02052C 0042052C 930E000D */  lbu         $t6, 0xD($t8)
/* 020530 00420530 8FAD0044 */  lw          $t5, 0x44($sp)
/* 020534 00420534 8FBC0018 */  lw          $gp, 0x18($sp)
/* 020538 00420538 01C04825 */  move        $t1, $t6
/* 02053C 0042053C 012D2821 */  addu        $a1, $t1, $t5
/* 020540 00420540 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020544 00420544 8FAC0040 */  lw          $t4, 0x40($sp)
/* 020548 00420548 000E47C3 */  sra         $t0, $t6, 31
/* 02054C 0042054C 00AD082B */  sltu        $at, $a1, $t5
/* 020550 00420550 00282021 */  addu        $a0, $at, $t0
/* 020554 00420554 24060000 */  addiu       $a2, $zero, 0x0
/* 020558 00420558 24070008 */  addiu       $a3, $zero, 0x8
/* 02055C 0042055C 0320F809 */  jalr        $t9
/* 020560 00420560 008C2021 */   addu       $a0, $a0, $t4
/* 020564 00420564 8FAF0064 */  lw          $t7, 0x64($sp)
/* 020568 00420568 AFA20048 */  sw          $v0, 0x48($sp)
/* 02056C 0042056C AFA3004C */  sw          $v1, 0x4C($sp)
/* 020570 00420570 91F9000E */  lbu         $t9, 0xE($t7)
/* 020574 00420574 8FBC0018 */  lw          $gp, 0x18($sp)
/* 020578 00420578 8FB80048 */  lw          $t8, 0x48($sp)
/* 02057C 0042057C 03205825 */  move        $t3, $t9
/* 020580 00420580 001957C3 */  sra         $t2, $t9, 31
/* 020584 00420584 8FB9004C */  lw          $t9, 0x4C($sp)
/* 020588 00420588 24060000 */  addiu       $a2, $zero, 0x0
/* 02058C 0042058C 24070008 */  addiu       $a3, $zero, 0x8
/* 020590 00420590 01792821 */  addu        $a1, $t3, $t9
/* 020594 00420594 00B9082B */  sltu        $at, $a1, $t9
/* 020598 00420598 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 02059C 0042059C 002A2021 */  addu        $a0, $at, $t2
/* 0205A0 004205A0 00982021 */  addu        $a0, $a0, $t8
/* 0205A4 004205A4 0320F809 */  jalr        $t9
/* 0205A8 004205A8 00000000 */   nop
/* 0205AC 004205AC 8FAE0064 */  lw          $t6, 0x64($sp)
/* 0205B0 004205B0 AFA20050 */  sw          $v0, 0x50($sp)
/* 0205B4 004205B4 AFA30054 */  sw          $v1, 0x54($sp)
/* 0205B8 004205B8 91C8000F */  lbu         $t0, 0xF($t6)
/* 0205BC 004205BC 8FAB0054 */  lw          $t3, 0x54($sp)
/* 0205C0 004205C0 8FAA0050 */  lw          $t2, 0x50($sp)
/* 0205C4 004205C4 01006825 */  move        $t5, $t0
/* 0205C8 004205C8 8FA90060 */  lw          $t1, 0x60($sp)
/* 0205CC 004205CC 01ABC821 */  addu        $t9, $t5, $t3
/* 0205D0 004205D0 000867C3 */  sra         $t4, $t0, 31
/* 0205D4 004205D4 032B082B */  sltu        $at, $t9, $t3
/* 0205D8 004205D8 002CC021 */  addu        $t8, $at, $t4
/* 0205DC 004205DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0205E0 004205E0 030AC021 */  addu        $t8, $t8, $t2
/* 0205E4 004205E4 AD380008 */  sw          $t8, 0x8($t1)
/* 0205E8 004205E8 AD39000C */  sw          $t9, 0xC($t1)
/* 0205EC 004205EC 8FAF0064 */  lw          $t7, 0x64($sp)
/* 0205F0 004205F0 91EE0004 */  lbu         $t6, 0x4($t7)
/* 0205F4 004205F4 91EC0005 */  lbu         $t4, 0x5($t7)
/* 0205F8 004205F8 91EB0006 */  lbu         $t3, 0x6($t7)
/* 0205FC 004205FC 000E4200 */  sll         $t0, $t6, 8
/* 020600 00420600 010C6821 */  addu        $t5, $t0, $t4
/* 020604 00420604 91E90007 */  lbu         $t1, 0x7($t7)
/* 020608 00420608 000D5200 */  sll         $t2, $t5, 8
/* 02060C 0042060C 8FA80060 */  lw          $t0, 0x60($sp)
/* 020610 00420610 014BC021 */  addu        $t8, $t2, $t3
/* 020614 00420614 0018CA00 */  sll         $t9, $t8, 8
/* 020618 00420618 01397021 */  addu        $t6, $t1, $t9
/* 02061C 0042061C AD0E0004 */  sw          $t6, 0x4($t0)
/* 020620 00420620 8FAC0064 */  lw          $t4, 0x64($sp)
/* 020624 00420624 918D0000 */  lbu         $t5, 0x0($t4)
/* 020628 00420628 918B0001 */  lbu         $t3, 0x1($t4)
/* 02062C 0042062C 91890002 */  lbu         $t1, 0x2($t4)
/* 020630 00420630 000D5200 */  sll         $t2, $t5, 8
/* 020634 00420634 014BC021 */  addu        $t8, $t2, $t3
/* 020638 00420638 91880003 */  lbu         $t0, 0x3($t4)
/* 02063C 0042063C 00187A00 */  sll         $t7, $t8, 8
/* 020640 00420640 8FAA0060 */  lw          $t2, 0x60($sp)
/* 020644 00420644 01E9C821 */  addu        $t9, $t7, $t1
/* 020648 00420648 00197200 */  sll         $t6, $t9, 8
/* 02064C 0042064C 010E6821 */  addu        $t5, $t0, $t6
/* 020650 00420650 AD4D0000 */  sw          $t5, 0x0($t2)
/* 020654 00420654 8FAB0060 */  lw          $t3, 0x60($sp)
/* 020658 00420658 8FB8005C */  lw          $t8, 0x5C($sp)
/* 02065C 0042065C 256FFFC0 */  addiu       $t7, $t3, -0x40
/* 020660 00420660 030B802B */  sltu        $s0, $t8, $t3
/* 020664 00420664 1600FCCE */  bnez        $s0, .L0041F9A0
/* 020668 00420668 AFAF0060 */   sw         $t7, 0x60($sp)
.L0042066C:
/* 02066C 0042066C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 020670 00420670 8FB00014 */  lw          $s0, 0x14($sp)
/* 020674 00420674 27BD0060 */  addiu       $sp, $sp, 0x60
/* 020678 00420678 03E00008 */  jr          $ra
/* 02067C 0042067C 00000000 */   nop
