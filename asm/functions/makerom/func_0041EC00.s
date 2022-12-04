glabel func_0041EC00 # 100
/* 01EC00 0041EC00 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 01EC04 0041EC04 279C4160 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF4160
/* 01EC08 0041EC08 0399E021 */  addu        $gp, $gp, $t9
/* 01EC0C 0041EC0C 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 01EC10 0041EC10 AFA40060 */  sw          $a0, 0x60($sp)
/* 01EC14 0041EC14 AFA60068 */  sw          $a2, 0x68($sp)
/* 01EC18 0041EC18 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01EC1C 0041EC1C 8FAF0068 */  lw          $t7, 0x68($sp)
/* 01EC20 0041EC20 AFA50064 */  sw          $a1, 0x64($sp)
/* 01EC24 0041EC24 AFAE005C */  sw          $t6, 0x5C($sp)
/* 01EC28 0041EC28 000FC180 */  sll         $t8, $t7, 6
/* 01EC2C 0041EC2C 8FA80064 */  lw          $t0, 0x64($sp)
/* 01EC30 0041EC30 8FAA005C */  lw          $t2, 0x5C($sp)
/* 01EC34 0041EC34 01D8C821 */  addu        $t9, $t6, $t8
/* 01EC38 0041EC38 AFB00014 */  sw          $s0, 0x14($sp)
/* 01EC3C 0041EC3C AFB90060 */  sw          $t9, 0x60($sp)
/* 01EC40 0041EC40 272BFFC0 */  addiu       $t3, $t9, -0x40
/* 01EC44 0041EC44 01184821 */  addu        $t1, $t0, $t8
/* 01EC48 0041EC48 0159802B */  sltu        $s0, $t2, $t9
/* 01EC4C 0041EC4C AFBF001C */  sw          $ra, 0x1C($sp)
/* 01EC50 0041EC50 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01EC54 0041EC54 AFA90064 */  sw          $t1, 0x64($sp)
/* 01EC58 0041EC58 12000334 */  beqz        $s0, .L0041F92C
/* 01EC5C 0041EC5C AFAB0060 */   sw         $t3, 0x60($sp)
.L0041EC60:
/* 01EC60 0041EC60 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01EC64 0041EC64 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EC68 0041EC68 24040000 */  addiu       $a0, $zero, 0x0
/* 01EC6C 0041EC6C 258DFFC0 */  addiu       $t5, $t4, -0x40
/* 01EC70 0041EC70 AFAD0064 */  sw          $t5, 0x64($sp)
/* 01EC74 0041EC74 91AF003F */  lbu         $t7, 0x3F($t5)
/* 01EC78 0041EC78 24060000 */  addiu       $a2, $zero, 0x0
/* 01EC7C 0041EC7C 24070008 */  addiu       $a3, $zero, 0x8
/* 01EC80 0041EC80 0320F809 */  jalr        $t9
/* 01EC84 0041EC84 01E02825 */   move       $a1, $t7
/* 01EC88 0041EC88 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01EC8C 0041EC8C AFA20020 */  sw          $v0, 0x20($sp)
/* 01EC90 0041EC90 AFA30024 */  sw          $v1, 0x24($sp)
/* 01EC94 0041EC94 91C8003E */  lbu         $t0, 0x3E($t6)
/* 01EC98 0041EC98 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01EC9C 0041EC9C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01ECA0 0041ECA0 0100C825 */  move        $t9, $t0
/* 01ECA4 0041ECA4 032B2821 */  addu        $a1, $t9, $t3
/* 01ECA8 0041ECA8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01ECAC 0041ECAC 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01ECB0 0041ECB0 0008C7C3 */  sra         $t8, $t0, 31
/* 01ECB4 0041ECB4 00AB082B */  sltu        $at, $a1, $t3
/* 01ECB8 0041ECB8 00382021 */  addu        $a0, $at, $t8
/* 01ECBC 0041ECBC 24060000 */  addiu       $a2, $zero, 0x0
/* 01ECC0 0041ECC0 24070008 */  addiu       $a3, $zero, 0x8
/* 01ECC4 0041ECC4 0320F809 */  jalr        $t9
/* 01ECC8 0041ECC8 008A2021 */   addu       $a0, $a0, $t2
/* 01ECCC 0041ECCC 8FA90064 */  lw          $t1, 0x64($sp)
/* 01ECD0 0041ECD0 AFA20028 */  sw          $v0, 0x28($sp)
/* 01ECD4 0041ECD4 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01ECD8 0041ECD8 912C003D */  lbu         $t4, 0x3D($t1)
/* 01ECDC 0041ECDC 8FA9002C */  lw          $t1, 0x2C($sp)
/* 01ECE0 0041ECE0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01ECE4 0041ECE4 01807825 */  move        $t7, $t4
/* 01ECE8 0041ECE8 01E92821 */  addu        $a1, $t7, $t1
/* 01ECEC 0041ECEC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01ECF0 0041ECF0 8FA80028 */  lw          $t0, 0x28($sp)
/* 01ECF4 0041ECF4 000C77C3 */  sra         $t6, $t4, 31
/* 01ECF8 0041ECF8 00A9082B */  sltu        $at, $a1, $t1
/* 01ECFC 0041ECFC 002E2021 */  addu        $a0, $at, $t6
/* 01ED00 0041ED00 24060000 */  addiu       $a2, $zero, 0x0
/* 01ED04 0041ED04 24070008 */  addiu       $a3, $zero, 0x8
/* 01ED08 0041ED08 0320F809 */  jalr        $t9
/* 01ED0C 0041ED0C 00882021 */   addu       $a0, $a0, $t0
/* 01ED10 0041ED10 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01ED14 0041ED14 AFA20030 */  sw          $v0, 0x30($sp)
/* 01ED18 0041ED18 AFA30034 */  sw          $v1, 0x34($sp)
/* 01ED1C 0041ED1C 91B8003C */  lbu         $t8, 0x3C($t5)
/* 01ED20 0041ED20 8FAD0034 */  lw          $t5, 0x34($sp)
/* 01ED24 0041ED24 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01ED28 0041ED28 03005825 */  move        $t3, $t8
/* 01ED2C 0041ED2C 016D2821 */  addu        $a1, $t3, $t5
/* 01ED30 0041ED30 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01ED34 0041ED34 8FAC0030 */  lw          $t4, 0x30($sp)
/* 01ED38 0041ED38 001857C3 */  sra         $t2, $t8, 31
/* 01ED3C 0041ED3C 00AD082B */  sltu        $at, $a1, $t5
/* 01ED40 0041ED40 002A2021 */  addu        $a0, $at, $t2
/* 01ED44 0041ED44 24060000 */  addiu       $a2, $zero, 0x0
/* 01ED48 0041ED48 24070008 */  addiu       $a3, $zero, 0x8
/* 01ED4C 0041ED4C 0320F809 */  jalr        $t9
/* 01ED50 0041ED50 008C2021 */   addu       $a0, $a0, $t4
/* 01ED54 0041ED54 8FB90064 */  lw          $t9, 0x64($sp)
/* 01ED58 0041ED58 AFA20038 */  sw          $v0, 0x38($sp)
/* 01ED5C 0041ED5C AFA3003C */  sw          $v1, 0x3C($sp)
/* 01ED60 0041ED60 932E003B */  lbu         $t6, 0x3B($t9)
/* 01ED64 0041ED64 8FB9003C */  lw          $t9, 0x3C($sp)
/* 01ED68 0041ED68 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01ED6C 0041ED6C 01C04825 */  move        $t1, $t6
/* 01ED70 0041ED70 01392821 */  addu        $a1, $t1, $t9
/* 01ED74 0041ED74 00B9082B */  sltu        $at, $a1, $t9
/* 01ED78 0041ED78 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01ED7C 0041ED7C 8FB80038 */  lw          $t8, 0x38($sp)
/* 01ED80 0041ED80 000E47C3 */  sra         $t0, $t6, 31
/* 01ED84 0041ED84 00282021 */  addu        $a0, $at, $t0
/* 01ED88 0041ED88 24060000 */  addiu       $a2, $zero, 0x0
/* 01ED8C 0041ED8C 24070008 */  addiu       $a3, $zero, 0x8
/* 01ED90 0041ED90 0320F809 */  jalr        $t9
/* 01ED94 0041ED94 00982021 */   addu       $a0, $a0, $t8
/* 01ED98 0041ED98 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01ED9C 0041ED9C AFA20040 */  sw          $v0, 0x40($sp)
/* 01EDA0 0041EDA0 AFA30044 */  sw          $v1, 0x44($sp)
/* 01EDA4 0041EDA4 91EA003A */  lbu         $t2, 0x3A($t7)
/* 01EDA8 0041EDA8 8FAF0044 */  lw          $t7, 0x44($sp)
/* 01EDAC 0041EDAC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EDB0 0041EDB0 01406825 */  move        $t5, $t2
/* 01EDB4 0041EDB4 01AF2821 */  addu        $a1, $t5, $t7
/* 01EDB8 0041EDB8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EDBC 0041EDBC 8FAE0040 */  lw          $t6, 0x40($sp)
/* 01EDC0 0041EDC0 000A67C3 */  sra         $t4, $t2, 31
/* 01EDC4 0041EDC4 00AF082B */  sltu        $at, $a1, $t7
/* 01EDC8 0041EDC8 002C2021 */  addu        $a0, $at, $t4
/* 01EDCC 0041EDCC 24060000 */  addiu       $a2, $zero, 0x0
/* 01EDD0 0041EDD0 24070008 */  addiu       $a3, $zero, 0x8
/* 01EDD4 0041EDD4 0320F809 */  jalr        $t9
/* 01EDD8 0041EDD8 008E2021 */   addu       $a0, $a0, $t6
/* 01EDDC 0041EDDC 8FAB0064 */  lw          $t3, 0x64($sp)
/* 01EDE0 0041EDE0 AFA20048 */  sw          $v0, 0x48($sp)
/* 01EDE4 0041EDE4 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01EDE8 0041EDE8 91680039 */  lbu         $t0, 0x39($t3)
/* 01EDEC 0041EDEC 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01EDF0 0041EDF0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EDF4 0041EDF4 0100C825 */  move        $t9, $t0
/* 01EDF8 0041EDF8 032B2821 */  addu        $a1, $t9, $t3
/* 01EDFC 0041EDFC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EE00 0041EE00 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01EE04 0041EE04 0008C7C3 */  sra         $t8, $t0, 31
/* 01EE08 0041EE08 00AB082B */  sltu        $at, $a1, $t3
/* 01EE0C 0041EE0C 00382021 */  addu        $a0, $at, $t8
/* 01EE10 0041EE10 24060000 */  addiu       $a2, $zero, 0x0
/* 01EE14 0041EE14 24070008 */  addiu       $a3, $zero, 0x8
/* 01EE18 0041EE18 0320F809 */  jalr        $t9
/* 01EE1C 0041EE1C 008A2021 */   addu       $a0, $a0, $t2
/* 01EE20 0041EE20 8FA90064 */  lw          $t1, 0x64($sp)
/* 01EE24 0041EE24 AFA20050 */  sw          $v0, 0x50($sp)
/* 01EE28 0041EE28 AFA30054 */  sw          $v1, 0x54($sp)
/* 01EE2C 0041EE2C 912C0038 */  lbu         $t4, 0x38($t1)
/* 01EE30 0041EE30 8FA90054 */  lw          $t1, 0x54($sp)
/* 01EE34 0041EE34 8FA80050 */  lw          $t0, 0x50($sp)
/* 01EE38 0041EE38 01807825 */  move        $t7, $t4
/* 01EE3C 0041EE3C 8FAD0060 */  lw          $t5, 0x60($sp)
/* 01EE40 0041EE40 01E9C821 */  addu        $t9, $t7, $t1
/* 01EE44 0041EE44 000C77C3 */  sra         $t6, $t4, 31
/* 01EE48 0041EE48 0329082B */  sltu        $at, $t9, $t1
/* 01EE4C 0041EE4C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EE50 0041EE50 002EC021 */  addu        $t8, $at, $t6
/* 01EE54 0041EE54 0308C021 */  addu        $t8, $t8, $t0
/* 01EE58 0041EE58 ADB80038 */  sw          $t8, 0x38($t5)
/* 01EE5C 0041EE5C ADB9003C */  sw          $t9, 0x3C($t5)
/* 01EE60 0041EE60 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01EE64 0041EE64 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EE68 0041EE68 24040000 */  addiu       $a0, $zero, 0x0
/* 01EE6C 0041EE6C 914B0037 */  lbu         $t3, 0x37($t2)
/* 01EE70 0041EE70 24060000 */  addiu       $a2, $zero, 0x0
/* 01EE74 0041EE74 24070008 */  addiu       $a3, $zero, 0x8
/* 01EE78 0041EE78 0320F809 */  jalr        $t9
/* 01EE7C 0041EE7C 01602825 */   move       $a1, $t3
/* 01EE80 0041EE80 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01EE84 0041EE84 AFA20020 */  sw          $v0, 0x20($sp)
/* 01EE88 0041EE88 AFA30024 */  sw          $v1, 0x24($sp)
/* 01EE8C 0041EE8C 918E0036 */  lbu         $t6, 0x36($t4)
/* 01EE90 0041EE90 8FB90024 */  lw          $t9, 0x24($sp)
/* 01EE94 0041EE94 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EE98 0041EE98 01C04825 */  move        $t1, $t6
/* 01EE9C 0041EE9C 01392821 */  addu        $a1, $t1, $t9
/* 01EEA0 0041EEA0 00B9082B */  sltu        $at, $a1, $t9
/* 01EEA4 0041EEA4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EEA8 0041EEA8 8FB80020 */  lw          $t8, 0x20($sp)
/* 01EEAC 0041EEAC 000E47C3 */  sra         $t0, $t6, 31
/* 01EEB0 0041EEB0 00282021 */  addu        $a0, $at, $t0
/* 01EEB4 0041EEB4 24060000 */  addiu       $a2, $zero, 0x0
/* 01EEB8 0041EEB8 24070008 */  addiu       $a3, $zero, 0x8
/* 01EEBC 0041EEBC 0320F809 */  jalr        $t9
/* 01EEC0 0041EEC0 00982021 */   addu       $a0, $a0, $t8
/* 01EEC4 0041EEC4 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01EEC8 0041EEC8 AFA20028 */  sw          $v0, 0x28($sp)
/* 01EECC 0041EECC AFA3002C */  sw          $v1, 0x2C($sp)
/* 01EED0 0041EED0 91ED0035 */  lbu         $t5, 0x35($t7)
/* 01EED4 0041EED4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EED8 0041EED8 8FAC0028 */  lw          $t4, 0x28($sp)
/* 01EEDC 0041EEDC 01A05825 */  move        $t3, $t5
/* 01EEE0 0041EEE0 000D57C3 */  sra         $t2, $t5, 31
/* 01EEE4 0041EEE4 8FAD002C */  lw          $t5, 0x2C($sp)
/* 01EEE8 0041EEE8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EEEC 0041EEEC 24060000 */  addiu       $a2, $zero, 0x0
/* 01EEF0 0041EEF0 016D2821 */  addu        $a1, $t3, $t5
/* 01EEF4 0041EEF4 00AD082B */  sltu        $at, $a1, $t5
/* 01EEF8 0041EEF8 002A2021 */  addu        $a0, $at, $t2
/* 01EEFC 0041EEFC 24070008 */  addiu       $a3, $zero, 0x8
/* 01EF00 0041EF00 0320F809 */  jalr        $t9
/* 01EF04 0041EF04 008C2021 */   addu       $a0, $a0, $t4
/* 01EF08 0041EF08 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01EF0C 0041EF0C AFA20030 */  sw          $v0, 0x30($sp)
/* 01EF10 0041EF10 AFA30034 */  sw          $v1, 0x34($sp)
/* 01EF14 0041EF14 91C80034 */  lbu         $t0, 0x34($t6)
/* 01EF18 0041EF18 8FAB0034 */  lw          $t3, 0x34($sp)
/* 01EF1C 0041EF1C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EF20 0041EF20 0100C825 */  move        $t9, $t0
/* 01EF24 0041EF24 032B2821 */  addu        $a1, $t9, $t3
/* 01EF28 0041EF28 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EF2C 0041EF2C 8FAA0030 */  lw          $t2, 0x30($sp)
/* 01EF30 0041EF30 0008C7C3 */  sra         $t8, $t0, 31
/* 01EF34 0041EF34 00AB082B */  sltu        $at, $a1, $t3
/* 01EF38 0041EF38 00382021 */  addu        $a0, $at, $t8
/* 01EF3C 0041EF3C 24060000 */  addiu       $a2, $zero, 0x0
/* 01EF40 0041EF40 24070008 */  addiu       $a3, $zero, 0x8
/* 01EF44 0041EF44 0320F809 */  jalr        $t9
/* 01EF48 0041EF48 008A2021 */   addu       $a0, $a0, $t2
/* 01EF4C 0041EF4C 8FA90064 */  lw          $t1, 0x64($sp)
/* 01EF50 0041EF50 AFA20038 */  sw          $v0, 0x38($sp)
/* 01EF54 0041EF54 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01EF58 0041EF58 912F0033 */  lbu         $t7, 0x33($t1)
/* 01EF5C 0041EF5C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EF60 0041EF60 8FAE0038 */  lw          $t6, 0x38($sp)
/* 01EF64 0041EF64 01E06825 */  move        $t5, $t7
/* 01EF68 0041EF68 000F67C3 */  sra         $t4, $t7, 31
/* 01EF6C 0041EF6C 8FAF003C */  lw          $t7, 0x3C($sp)
/* 01EF70 0041EF70 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EF74 0041EF74 24060000 */  addiu       $a2, $zero, 0x0
/* 01EF78 0041EF78 01AF2821 */  addu        $a1, $t5, $t7
/* 01EF7C 0041EF7C 00AF082B */  sltu        $at, $a1, $t7
/* 01EF80 0041EF80 002C2021 */  addu        $a0, $at, $t4
/* 01EF84 0041EF84 24070008 */  addiu       $a3, $zero, 0x8
/* 01EF88 0041EF88 0320F809 */  jalr        $t9
/* 01EF8C 0041EF8C 008E2021 */   addu       $a0, $a0, $t6
/* 01EF90 0041EF90 8FA80064 */  lw          $t0, 0x64($sp)
/* 01EF94 0041EF94 AFA20040 */  sw          $v0, 0x40($sp)
/* 01EF98 0041EF98 AFA30044 */  sw          $v1, 0x44($sp)
/* 01EF9C 0041EF9C 91180032 */  lbu         $t8, 0x32($t0)
/* 01EFA0 0041EFA0 8FAD0044 */  lw          $t5, 0x44($sp)
/* 01EFA4 0041EFA4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EFA8 0041EFA8 03005825 */  move        $t3, $t8
/* 01EFAC 0041EFAC 016D2821 */  addu        $a1, $t3, $t5
/* 01EFB0 0041EFB0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EFB4 0041EFB4 8FAC0040 */  lw          $t4, 0x40($sp)
/* 01EFB8 0041EFB8 001857C3 */  sra         $t2, $t8, 31
/* 01EFBC 0041EFBC 00AD082B */  sltu        $at, $a1, $t5
/* 01EFC0 0041EFC0 002A2021 */  addu        $a0, $at, $t2
/* 01EFC4 0041EFC4 24060000 */  addiu       $a2, $zero, 0x0
/* 01EFC8 0041EFC8 24070008 */  addiu       $a3, $zero, 0x8
/* 01EFCC 0041EFCC 0320F809 */  jalr        $t9
/* 01EFD0 0041EFD0 008C2021 */   addu       $a0, $a0, $t4
/* 01EFD4 0041EFD4 8FB90064 */  lw          $t9, 0x64($sp)
/* 01EFD8 0041EFD8 AFA20048 */  sw          $v0, 0x48($sp)
/* 01EFDC 0041EFDC AFA3004C */  sw          $v1, 0x4C($sp)
/* 01EFE0 0041EFE0 93290031 */  lbu         $t1, 0x31($t9)
/* 01EFE4 0041EFE4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EFE8 0041EFE8 8FA80048 */  lw          $t0, 0x48($sp)
/* 01EFEC 0041EFEC 01207825 */  move        $t7, $t1
/* 01EFF0 0041EFF0 000977C3 */  sra         $t6, $t1, 31
/* 01EFF4 0041EFF4 8FA9004C */  lw          $t1, 0x4C($sp)
/* 01EFF8 0041EFF8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EFFC 0041EFFC 24060000 */  addiu       $a2, $zero, 0x0
/* 01F000 0041F000 01E92821 */  addu        $a1, $t7, $t1
/* 01F004 0041F004 00A9082B */  sltu        $at, $a1, $t1
/* 01F008 0041F008 002E2021 */  addu        $a0, $at, $t6
/* 01F00C 0041F00C 24070008 */  addiu       $a3, $zero, 0x8
/* 01F010 0041F010 0320F809 */  jalr        $t9
/* 01F014 0041F014 00882021 */   addu       $a0, $a0, $t0
/* 01F018 0041F018 8FB80064 */  lw          $t8, 0x64($sp)
/* 01F01C 0041F01C AFA20050 */  sw          $v0, 0x50($sp)
/* 01F020 0041F020 AFA30054 */  sw          $v1, 0x54($sp)
/* 01F024 0041F024 930A0030 */  lbu         $t2, 0x30($t8)
/* 01F028 0041F028 8FAF0054 */  lw          $t7, 0x54($sp)
/* 01F02C 0041F02C 8FAE0050 */  lw          $t6, 0x50($sp)
/* 01F030 0041F030 01406825 */  move        $t5, $t2
/* 01F034 0041F034 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01F038 0041F038 01AF4821 */  addu        $t1, $t5, $t7
/* 01F03C 0041F03C 000A67C3 */  sra         $t4, $t2, 31
/* 01F040 0041F040 012F082B */  sltu        $at, $t1, $t7
/* 01F044 0041F044 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F048 0041F048 002C4021 */  addu        $t0, $at, $t4
/* 01F04C 0041F04C 010E4021 */  addu        $t0, $t0, $t6
/* 01F050 0041F050 AD680030 */  sw          $t0, 0x30($t3)
/* 01F054 0041F054 AD690034 */  sw          $t1, 0x34($t3)
/* 01F058 0041F058 8FB90064 */  lw          $t9, 0x64($sp)
/* 01F05C 0041F05C 24040000 */  addiu       $a0, $zero, 0x0
/* 01F060 0041F060 24060000 */  addiu       $a2, $zero, 0x0
/* 01F064 0041F064 9338002F */  lbu         $t8, 0x2F($t9)
/* 01F068 0041F068 932C002E */  lbu         $t4, 0x2E($t9)
/* 01F06C 0041F06C 932F002D */  lbu         $t7, 0x2D($t9)
/* 01F070 0041F070 00185200 */  sll         $t2, $t8, 8
/* 01F074 0041F074 014C6821 */  addu        $t5, $t2, $t4
/* 01F078 0041F078 932B002C */  lbu         $t3, 0x2C($t9)
/* 01F07C 0041F07C 000D7200 */  sll         $t6, $t5, 8
/* 01F080 0041F080 8FAA0060 */  lw          $t2, 0x60($sp)
/* 01F084 0041F084 01CF4021 */  addu        $t0, $t6, $t7
/* 01F088 0041F088 00084A00 */  sll         $t1, $t0, 8
/* 01F08C 0041F08C 0169C021 */  addu        $t8, $t3, $t1
/* 01F090 0041F090 AD58002C */  sw          $t8, 0x2C($t2)
/* 01F094 0041F094 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01F098 0041F098 24070008 */  addiu       $a3, $zero, 0x8
/* 01F09C 0041F09C 918D002B */  lbu         $t5, 0x2B($t4)
/* 01F0A0 0041F0A0 918F002A */  lbu         $t7, 0x2A($t4)
/* 01F0A4 0041F0A4 918B0029 */  lbu         $t3, 0x29($t4)
/* 01F0A8 0041F0A8 000D7200 */  sll         $t6, $t5, 8
/* 01F0AC 0041F0AC 01CF4021 */  addu        $t0, $t6, $t7
/* 01F0B0 0041F0B0 918A0028 */  lbu         $t2, 0x28($t4)
/* 01F0B4 0041F0B4 0008CA00 */  sll         $t9, $t0, 8
/* 01F0B8 0041F0B8 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01F0BC 0041F0BC 032B4821 */  addu        $t1, $t9, $t3
/* 01F0C0 0041F0C0 0009C200 */  sll         $t8, $t1, 8
/* 01F0C4 0041F0C4 01586821 */  addu        $t5, $t2, $t8
/* 01F0C8 0041F0C8 ADCD0028 */  sw          $t5, 0x28($t6)
/* 01F0CC 0041F0CC 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01F0D0 0041F0D0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F0D4 0041F0D4 91E80027 */  lbu         $t0, 0x27($t7)
/* 01F0D8 0041F0D8 0320F809 */  jalr        $t9
/* 01F0DC 0041F0DC 01002825 */   move       $a1, $t0
/* 01F0E0 0041F0E0 8FB90064 */  lw          $t9, 0x64($sp)
/* 01F0E4 0041F0E4 AFA20020 */  sw          $v0, 0x20($sp)
/* 01F0E8 0041F0E8 AFA30024 */  sw          $v1, 0x24($sp)
/* 01F0EC 0041F0EC 932B0026 */  lbu         $t3, 0x26($t9)
/* 01F0F0 0041F0F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F0F4 0041F0F4 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01F0F8 0041F0F8 01606825 */  move        $t5, $t3
/* 01F0FC 0041F0FC 000B67C3 */  sra         $t4, $t3, 31
/* 01F100 0041F100 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01F104 0041F104 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F108 0041F108 24060000 */  addiu       $a2, $zero, 0x0
/* 01F10C 0041F10C 01AB2821 */  addu        $a1, $t5, $t3
/* 01F110 0041F110 00AB082B */  sltu        $at, $a1, $t3
/* 01F114 0041F114 002C2021 */  addu        $a0, $at, $t4
/* 01F118 0041F118 24070008 */  addiu       $a3, $zero, 0x8
/* 01F11C 0041F11C 0320F809 */  jalr        $t9
/* 01F120 0041F120 008A2021 */   addu       $a0, $a0, $t2
/* 01F124 0041F124 8FA90064 */  lw          $t1, 0x64($sp)
/* 01F128 0041F128 AFA20028 */  sw          $v0, 0x28($sp)
/* 01F12C 0041F12C AFA3002C */  sw          $v1, 0x2C($sp)
/* 01F130 0041F130 91380025 */  lbu         $t8, 0x25($t1)
/* 01F134 0041F134 8FA9002C */  lw          $t1, 0x2C($sp)
/* 01F138 0041F138 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F13C 0041F13C 03007825 */  move        $t7, $t8
/* 01F140 0041F140 01E92821 */  addu        $a1, $t7, $t1
/* 01F144 0041F144 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F148 0041F148 8FA80028 */  lw          $t0, 0x28($sp)
/* 01F14C 0041F14C 001877C3 */  sra         $t6, $t8, 31
/* 01F150 0041F150 00A9082B */  sltu        $at, $a1, $t1
/* 01F154 0041F154 002E2021 */  addu        $a0, $at, $t6
/* 01F158 0041F158 24060000 */  addiu       $a2, $zero, 0x0
/* 01F15C 0041F15C 24070008 */  addiu       $a3, $zero, 0x8
/* 01F160 0041F160 0320F809 */  jalr        $t9
/* 01F164 0041F164 00882021 */   addu       $a0, $a0, $t0
/* 01F168 0041F168 8FB90064 */  lw          $t9, 0x64($sp)
/* 01F16C 0041F16C AFA20030 */  sw          $v0, 0x30($sp)
/* 01F170 0041F170 AFA30034 */  sw          $v1, 0x34($sp)
/* 01F174 0041F174 932C0024 */  lbu         $t4, 0x24($t9)
/* 01F178 0041F178 8FB90034 */  lw          $t9, 0x34($sp)
/* 01F17C 0041F17C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F180 0041F180 01805825 */  move        $t3, $t4
/* 01F184 0041F184 01792821 */  addu        $a1, $t3, $t9
/* 01F188 0041F188 00B9082B */  sltu        $at, $a1, $t9
/* 01F18C 0041F18C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F190 0041F190 8FB80030 */  lw          $t8, 0x30($sp)
/* 01F194 0041F194 000C57C3 */  sra         $t2, $t4, 31
/* 01F198 0041F198 002A2021 */  addu        $a0, $at, $t2
/* 01F19C 0041F19C 24060000 */  addiu       $a2, $zero, 0x0
/* 01F1A0 0041F1A0 24070008 */  addiu       $a3, $zero, 0x8
/* 01F1A4 0041F1A4 0320F809 */  jalr        $t9
/* 01F1A8 0041F1A8 00982021 */   addu       $a0, $a0, $t8
/* 01F1AC 0041F1AC 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01F1B0 0041F1B0 AFA20038 */  sw          $v0, 0x38($sp)
/* 01F1B4 0041F1B4 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01F1B8 0041F1B8 91AE0023 */  lbu         $t6, 0x23($t5)
/* 01F1BC 0041F1BC 8FAD003C */  lw          $t5, 0x3C($sp)
/* 01F1C0 0041F1C0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F1C4 0041F1C4 01C04825 */  move        $t1, $t6
/* 01F1C8 0041F1C8 012D2821 */  addu        $a1, $t1, $t5
/* 01F1CC 0041F1CC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F1D0 0041F1D0 8FAC0038 */  lw          $t4, 0x38($sp)
/* 01F1D4 0041F1D4 000E47C3 */  sra         $t0, $t6, 31
/* 01F1D8 0041F1D8 00AD082B */  sltu        $at, $a1, $t5
/* 01F1DC 0041F1DC 00282021 */  addu        $a0, $at, $t0
/* 01F1E0 0041F1E0 24060000 */  addiu       $a2, $zero, 0x0
/* 01F1E4 0041F1E4 24070008 */  addiu       $a3, $zero, 0x8
/* 01F1E8 0041F1E8 0320F809 */  jalr        $t9
/* 01F1EC 0041F1EC 008C2021 */   addu       $a0, $a0, $t4
/* 01F1F0 0041F1F0 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01F1F4 0041F1F4 AFA20040 */  sw          $v0, 0x40($sp)
/* 01F1F8 0041F1F8 AFA30044 */  sw          $v1, 0x44($sp)
/* 01F1FC 0041F1FC 91EA0022 */  lbu         $t2, 0x22($t7)
/* 01F200 0041F200 8FAF0044 */  lw          $t7, 0x44($sp)
/* 01F204 0041F204 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F208 0041F208 0140C825 */  move        $t9, $t2
/* 01F20C 0041F20C 032F2821 */  addu        $a1, $t9, $t7
/* 01F210 0041F210 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F214 0041F214 8FAE0040 */  lw          $t6, 0x40($sp)
/* 01F218 0041F218 000AC7C3 */  sra         $t8, $t2, 31
/* 01F21C 0041F21C 00AF082B */  sltu        $at, $a1, $t7
/* 01F220 0041F220 00382021 */  addu        $a0, $at, $t8
/* 01F224 0041F224 24060000 */  addiu       $a2, $zero, 0x0
/* 01F228 0041F228 24070008 */  addiu       $a3, $zero, 0x8
/* 01F22C 0041F22C 0320F809 */  jalr        $t9
/* 01F230 0041F230 008E2021 */   addu       $a0, $a0, $t6
/* 01F234 0041F234 8FAB0064 */  lw          $t3, 0x64($sp)
/* 01F238 0041F238 AFA20048 */  sw          $v0, 0x48($sp)
/* 01F23C 0041F23C AFA3004C */  sw          $v1, 0x4C($sp)
/* 01F240 0041F240 91680021 */  lbu         $t0, 0x21($t3)
/* 01F244 0041F244 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01F248 0041F248 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F24C 0041F24C 01006825 */  move        $t5, $t0
/* 01F250 0041F250 01AB2821 */  addu        $a1, $t5, $t3
/* 01F254 0041F254 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F258 0041F258 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01F25C 0041F25C 000867C3 */  sra         $t4, $t0, 31
/* 01F260 0041F260 00AB082B */  sltu        $at, $a1, $t3
/* 01F264 0041F264 002C2021 */  addu        $a0, $at, $t4
/* 01F268 0041F268 24060000 */  addiu       $a2, $zero, 0x0
/* 01F26C 0041F26C 24070008 */  addiu       $a3, $zero, 0x8
/* 01F270 0041F270 0320F809 */  jalr        $t9
/* 01F274 0041F274 008A2021 */   addu       $a0, $a0, $t2
/* 01F278 0041F278 8FA90064 */  lw          $t1, 0x64($sp)
/* 01F27C 0041F27C AFA20050 */  sw          $v0, 0x50($sp)
/* 01F280 0041F280 AFA30054 */  sw          $v1, 0x54($sp)
/* 01F284 0041F284 91380020 */  lbu         $t8, 0x20($t1)
/* 01F288 0041F288 8FA90054 */  lw          $t1, 0x54($sp)
/* 01F28C 0041F28C 8FA80050 */  lw          $t0, 0x50($sp)
/* 01F290 0041F290 03007825 */  move        $t7, $t8
/* 01F294 0041F294 8FB90060 */  lw          $t9, 0x60($sp)
/* 01F298 0041F298 01E96821 */  addu        $t5, $t7, $t1
/* 01F29C 0041F29C 001877C3 */  sra         $t6, $t8, 31
/* 01F2A0 0041F2A0 01A9082B */  sltu        $at, $t5, $t1
/* 01F2A4 0041F2A4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F2A8 0041F2A8 002E6021 */  addu        $t4, $at, $t6
/* 01F2AC 0041F2AC 01886021 */  addu        $t4, $t4, $t0
/* 01F2B0 0041F2B0 AF2C0020 */  sw          $t4, 0x20($t9)
/* 01F2B4 0041F2B4 AF2D0024 */  sw          $t5, 0x24($t9)
/* 01F2B8 0041F2B8 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01F2BC 0041F2BC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F2C0 0041F2C0 24040000 */  addiu       $a0, $zero, 0x0
/* 01F2C4 0041F2C4 914B001F */  lbu         $t3, 0x1F($t2)
/* 01F2C8 0041F2C8 24060000 */  addiu       $a2, $zero, 0x0
/* 01F2CC 0041F2CC 24070008 */  addiu       $a3, $zero, 0x8
/* 01F2D0 0041F2D0 0320F809 */  jalr        $t9
/* 01F2D4 0041F2D4 01602825 */   move       $a1, $t3
/* 01F2D8 0041F2D8 8FB80064 */  lw          $t8, 0x64($sp)
/* 01F2DC 0041F2DC AFA20020 */  sw          $v0, 0x20($sp)
/* 01F2E0 0041F2E0 AFA30024 */  sw          $v1, 0x24($sp)
/* 01F2E4 0041F2E4 930E001E */  lbu         $t6, 0x1E($t8)
/* 01F2E8 0041F2E8 8FAD0024 */  lw          $t5, 0x24($sp)
/* 01F2EC 0041F2EC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F2F0 0041F2F0 01C04825 */  move        $t1, $t6
/* 01F2F4 0041F2F4 012D2821 */  addu        $a1, $t1, $t5
/* 01F2F8 0041F2F8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F2FC 0041F2FC 8FAC0020 */  lw          $t4, 0x20($sp)
/* 01F300 0041F300 000E47C3 */  sra         $t0, $t6, 31
/* 01F304 0041F304 00AD082B */  sltu        $at, $a1, $t5
/* 01F308 0041F308 00282021 */  addu        $a0, $at, $t0
/* 01F30C 0041F30C 24060000 */  addiu       $a2, $zero, 0x0
/* 01F310 0041F310 24070008 */  addiu       $a3, $zero, 0x8
/* 01F314 0041F314 0320F809 */  jalr        $t9
/* 01F318 0041F318 008C2021 */   addu       $a0, $a0, $t4
/* 01F31C 0041F31C 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01F320 0041F320 AFA20028 */  sw          $v0, 0x28($sp)
/* 01F324 0041F324 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01F328 0041F328 91F9001D */  lbu         $t9, 0x1D($t7)
/* 01F32C 0041F32C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F330 0041F330 8FB80028 */  lw          $t8, 0x28($sp)
/* 01F334 0041F334 03205825 */  move        $t3, $t9
/* 01F338 0041F338 001957C3 */  sra         $t2, $t9, 31
/* 01F33C 0041F33C 8FB9002C */  lw          $t9, 0x2C($sp)
/* 01F340 0041F340 24060000 */  addiu       $a2, $zero, 0x0
/* 01F344 0041F344 24070008 */  addiu       $a3, $zero, 0x8
/* 01F348 0041F348 01792821 */  addu        $a1, $t3, $t9
/* 01F34C 0041F34C 00B9082B */  sltu        $at, $a1, $t9
/* 01F350 0041F350 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F354 0041F354 002A2021 */  addu        $a0, $at, $t2
/* 01F358 0041F358 00982021 */  addu        $a0, $a0, $t8
/* 01F35C 0041F35C 0320F809 */  jalr        $t9
/* 01F360 0041F360 00000000 */   nop
/* 01F364 0041F364 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01F368 0041F368 AFA20030 */  sw          $v0, 0x30($sp)
/* 01F36C 0041F36C AFA30034 */  sw          $v1, 0x34($sp)
/* 01F370 0041F370 91C8001C */  lbu         $t0, 0x1C($t6)
/* 01F374 0041F374 8FAB0034 */  lw          $t3, 0x34($sp)
/* 01F378 0041F378 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F37C 0041F37C 01006825 */  move        $t5, $t0
/* 01F380 0041F380 01AB2821 */  addu        $a1, $t5, $t3
/* 01F384 0041F384 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F388 0041F388 8FAA0030 */  lw          $t2, 0x30($sp)
/* 01F38C 0041F38C 000867C3 */  sra         $t4, $t0, 31
/* 01F390 0041F390 00AB082B */  sltu        $at, $a1, $t3
/* 01F394 0041F394 002C2021 */  addu        $a0, $at, $t4
/* 01F398 0041F398 24060000 */  addiu       $a2, $zero, 0x0
/* 01F39C 0041F39C 24070008 */  addiu       $a3, $zero, 0x8
/* 01F3A0 0041F3A0 0320F809 */  jalr        $t9
/* 01F3A4 0041F3A4 008A2021 */   addu       $a0, $a0, $t2
/* 01F3A8 0041F3A8 8FA90064 */  lw          $t1, 0x64($sp)
/* 01F3AC 0041F3AC AFA20038 */  sw          $v0, 0x38($sp)
/* 01F3B0 0041F3B0 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01F3B4 0041F3B4 912F001B */  lbu         $t7, 0x1B($t1)
/* 01F3B8 0041F3B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F3BC 0041F3BC 8FAE0038 */  lw          $t6, 0x38($sp)
/* 01F3C0 0041F3C0 01E0C825 */  move        $t9, $t7
/* 01F3C4 0041F3C4 000FC7C3 */  sra         $t8, $t7, 31
/* 01F3C8 0041F3C8 8FAF003C */  lw          $t7, 0x3C($sp)
/* 01F3CC 0041F3CC 24060000 */  addiu       $a2, $zero, 0x0
/* 01F3D0 0041F3D0 24070008 */  addiu       $a3, $zero, 0x8
/* 01F3D4 0041F3D4 032F2821 */  addu        $a1, $t9, $t7
/* 01F3D8 0041F3D8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F3DC 0041F3DC 00AF082B */  sltu        $at, $a1, $t7
/* 01F3E0 0041F3E0 00382021 */  addu        $a0, $at, $t8
/* 01F3E4 0041F3E4 0320F809 */  jalr        $t9
/* 01F3E8 0041F3E8 008E2021 */   addu       $a0, $a0, $t6
/* 01F3EC 0041F3EC 8FA80064 */  lw          $t0, 0x64($sp)
/* 01F3F0 0041F3F0 AFA20040 */  sw          $v0, 0x40($sp)
/* 01F3F4 0041F3F4 AFA30044 */  sw          $v1, 0x44($sp)
/* 01F3F8 0041F3F8 910C001A */  lbu         $t4, 0x1A($t0)
/* 01F3FC 0041F3FC 8FB90044 */  lw          $t9, 0x44($sp)
/* 01F400 0041F400 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F404 0041F404 01805825 */  move        $t3, $t4
/* 01F408 0041F408 01792821 */  addu        $a1, $t3, $t9
/* 01F40C 0041F40C 00B9082B */  sltu        $at, $a1, $t9
/* 01F410 0041F410 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F414 0041F414 8FB80040 */  lw          $t8, 0x40($sp)
/* 01F418 0041F418 000C57C3 */  sra         $t2, $t4, 31
/* 01F41C 0041F41C 002A2021 */  addu        $a0, $at, $t2
/* 01F420 0041F420 24060000 */  addiu       $a2, $zero, 0x0
/* 01F424 0041F424 24070008 */  addiu       $a3, $zero, 0x8
/* 01F428 0041F428 0320F809 */  jalr        $t9
/* 01F42C 0041F42C 00982021 */   addu       $a0, $a0, $t8
/* 01F430 0041F430 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01F434 0041F434 AFA20048 */  sw          $v0, 0x48($sp)
/* 01F438 0041F438 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01F43C 0041F43C 91A90019 */  lbu         $t1, 0x19($t5)
/* 01F440 0041F440 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F444 0041F444 8FA80048 */  lw          $t0, 0x48($sp)
/* 01F448 0041F448 01207825 */  move        $t7, $t1
/* 01F44C 0041F44C 000977C3 */  sra         $t6, $t1, 31
/* 01F450 0041F450 8FA9004C */  lw          $t1, 0x4C($sp)
/* 01F454 0041F454 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F458 0041F458 24060000 */  addiu       $a2, $zero, 0x0
/* 01F45C 0041F45C 01E92821 */  addu        $a1, $t7, $t1
/* 01F460 0041F460 00A9082B */  sltu        $at, $a1, $t1
/* 01F464 0041F464 002E2021 */  addu        $a0, $at, $t6
/* 01F468 0041F468 24070008 */  addiu       $a3, $zero, 0x8
/* 01F46C 0041F46C 0320F809 */  jalr        $t9
/* 01F470 0041F470 00882021 */   addu       $a0, $a0, $t0
/* 01F474 0041F474 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01F478 0041F478 AFA20050 */  sw          $v0, 0x50($sp)
/* 01F47C 0041F47C AFA30054 */  sw          $v1, 0x54($sp)
/* 01F480 0041F480 918A0018 */  lbu         $t2, 0x18($t4)
/* 01F484 0041F484 8FAF0054 */  lw          $t7, 0x54($sp)
/* 01F488 0041F488 8FAE0050 */  lw          $t6, 0x50($sp)
/* 01F48C 0041F48C 0140C825 */  move        $t9, $t2
/* 01F490 0041F490 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01F494 0041F494 032F4821 */  addu        $t1, $t9, $t7
/* 01F498 0041F498 000AC7C3 */  sra         $t8, $t2, 31
/* 01F49C 0041F49C 012F082B */  sltu        $at, $t1, $t7
/* 01F4A0 0041F4A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F4A4 0041F4A4 00384021 */  addu        $t0, $at, $t8
/* 01F4A8 0041F4A8 010E4021 */  addu        $t0, $t0, $t6
/* 01F4AC 0041F4AC AD680018 */  sw          $t0, 0x18($t3)
/* 01F4B0 0041F4B0 AD69001C */  sw          $t1, 0x1C($t3)
/* 01F4B4 0041F4B4 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01F4B8 0041F4B8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F4BC 0041F4BC 24040000 */  addiu       $a0, $zero, 0x0
/* 01F4C0 0041F4C0 91AC0017 */  lbu         $t4, 0x17($t5)
/* 01F4C4 0041F4C4 24060000 */  addiu       $a2, $zero, 0x0
/* 01F4C8 0041F4C8 24070008 */  addiu       $a3, $zero, 0x8
/* 01F4CC 0041F4CC 0320F809 */  jalr        $t9
/* 01F4D0 0041F4D0 01802825 */   move       $a1, $t4
/* 01F4D4 0041F4D4 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01F4D8 0041F4D8 AFA20020 */  sw          $v0, 0x20($sp)
/* 01F4DC 0041F4DC AFA30024 */  sw          $v1, 0x24($sp)
/* 01F4E0 0041F4E0 91580016 */  lbu         $t8, 0x16($t2)
/* 01F4E4 0041F4E4 8FA90024 */  lw          $t1, 0x24($sp)
/* 01F4E8 0041F4E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F4EC 0041F4EC 03007825 */  move        $t7, $t8
/* 01F4F0 0041F4F0 01E92821 */  addu        $a1, $t7, $t1
/* 01F4F4 0041F4F4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F4F8 0041F4F8 8FA80020 */  lw          $t0, 0x20($sp)
/* 01F4FC 0041F4FC 001877C3 */  sra         $t6, $t8, 31
/* 01F500 0041F500 00A9082B */  sltu        $at, $a1, $t1
/* 01F504 0041F504 002E2021 */  addu        $a0, $at, $t6
/* 01F508 0041F508 24060000 */  addiu       $a2, $zero, 0x0
/* 01F50C 0041F50C 24070008 */  addiu       $a3, $zero, 0x8
/* 01F510 0041F510 0320F809 */  jalr        $t9
/* 01F514 0041F514 00882021 */   addu       $a0, $a0, $t0
/* 01F518 0041F518 8FB90064 */  lw          $t9, 0x64($sp)
/* 01F51C 0041F51C AFA20028 */  sw          $v0, 0x28($sp)
/* 01F520 0041F520 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01F524 0041F524 932B0015 */  lbu         $t3, 0x15($t9)
/* 01F528 0041F528 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F52C 0041F52C 8FAA0028 */  lw          $t2, 0x28($sp)
/* 01F530 0041F530 01606825 */  move        $t5, $t3
/* 01F534 0041F534 000B67C3 */  sra         $t4, $t3, 31
/* 01F538 0041F538 8FAB002C */  lw          $t3, 0x2C($sp)
/* 01F53C 0041F53C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F540 0041F540 24060000 */  addiu       $a2, $zero, 0x0
/* 01F544 0041F544 01AB2821 */  addu        $a1, $t5, $t3
/* 01F548 0041F548 00AB082B */  sltu        $at, $a1, $t3
/* 01F54C 0041F54C 002C2021 */  addu        $a0, $at, $t4
/* 01F550 0041F550 24070008 */  addiu       $a3, $zero, 0x8
/* 01F554 0041F554 0320F809 */  jalr        $t9
/* 01F558 0041F558 008A2021 */   addu       $a0, $a0, $t2
/* 01F55C 0041F55C 8FB80064 */  lw          $t8, 0x64($sp)
/* 01F560 0041F560 AFA20030 */  sw          $v0, 0x30($sp)
/* 01F564 0041F564 AFA30034 */  sw          $v1, 0x34($sp)
/* 01F568 0041F568 930E0014 */  lbu         $t6, 0x14($t8)
/* 01F56C 0041F56C 8FAD0034 */  lw          $t5, 0x34($sp)
/* 01F570 0041F570 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F574 0041F574 01C04825 */  move        $t1, $t6
/* 01F578 0041F578 012D2821 */  addu        $a1, $t1, $t5
/* 01F57C 0041F57C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F580 0041F580 8FAC0030 */  lw          $t4, 0x30($sp)
/* 01F584 0041F584 000E47C3 */  sra         $t0, $t6, 31
/* 01F588 0041F588 00AD082B */  sltu        $at, $a1, $t5
/* 01F58C 0041F58C 00282021 */  addu        $a0, $at, $t0
/* 01F590 0041F590 24060000 */  addiu       $a2, $zero, 0x0
/* 01F594 0041F594 24070008 */  addiu       $a3, $zero, 0x8
/* 01F598 0041F598 0320F809 */  jalr        $t9
/* 01F59C 0041F59C 008C2021 */   addu       $a0, $a0, $t4
/* 01F5A0 0041F5A0 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01F5A4 0041F5A4 AFA20038 */  sw          $v0, 0x38($sp)
/* 01F5A8 0041F5A8 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01F5AC 0041F5AC 91F90013 */  lbu         $t9, 0x13($t7)
/* 01F5B0 0041F5B0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F5B4 0041F5B4 8FB80038 */  lw          $t8, 0x38($sp)
/* 01F5B8 0041F5B8 03205825 */  move        $t3, $t9
/* 01F5BC 0041F5BC 001957C3 */  sra         $t2, $t9, 31
/* 01F5C0 0041F5C0 8FB9003C */  lw          $t9, 0x3C($sp)
/* 01F5C4 0041F5C4 24060000 */  addiu       $a2, $zero, 0x0
/* 01F5C8 0041F5C8 24070008 */  addiu       $a3, $zero, 0x8
/* 01F5CC 0041F5CC 01792821 */  addu        $a1, $t3, $t9
/* 01F5D0 0041F5D0 00B9082B */  sltu        $at, $a1, $t9
/* 01F5D4 0041F5D4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F5D8 0041F5D8 002A2021 */  addu        $a0, $at, $t2
/* 01F5DC 0041F5DC 00982021 */  addu        $a0, $a0, $t8
/* 01F5E0 0041F5E0 0320F809 */  jalr        $t9
/* 01F5E4 0041F5E4 00000000 */   nop
/* 01F5E8 0041F5E8 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01F5EC 0041F5EC AFA20040 */  sw          $v0, 0x40($sp)
/* 01F5F0 0041F5F0 AFA30044 */  sw          $v1, 0x44($sp)
/* 01F5F4 0041F5F4 91C80012 */  lbu         $t0, 0x12($t6)
/* 01F5F8 0041F5F8 8FAB0044 */  lw          $t3, 0x44($sp)
/* 01F5FC 0041F5FC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F600 0041F600 01006825 */  move        $t5, $t0
/* 01F604 0041F604 01AB2821 */  addu        $a1, $t5, $t3
/* 01F608 0041F608 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F60C 0041F60C 8FAA0040 */  lw          $t2, 0x40($sp)
/* 01F610 0041F610 000867C3 */  sra         $t4, $t0, 31
/* 01F614 0041F614 00AB082B */  sltu        $at, $a1, $t3
/* 01F618 0041F618 002C2021 */  addu        $a0, $at, $t4
/* 01F61C 0041F61C 24060000 */  addiu       $a2, $zero, 0x0
/* 01F620 0041F620 24070008 */  addiu       $a3, $zero, 0x8
/* 01F624 0041F624 0320F809 */  jalr        $t9
/* 01F628 0041F628 008A2021 */   addu       $a0, $a0, $t2
/* 01F62C 0041F62C 8FA90064 */  lw          $t1, 0x64($sp)
/* 01F630 0041F630 AFA20048 */  sw          $v0, 0x48($sp)
/* 01F634 0041F634 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01F638 0041F638 912F0011 */  lbu         $t7, 0x11($t1)
/* 01F63C 0041F63C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F640 0041F640 8FAE0048 */  lw          $t6, 0x48($sp)
/* 01F644 0041F644 01E0C825 */  move        $t9, $t7
/* 01F648 0041F648 000FC7C3 */  sra         $t8, $t7, 31
/* 01F64C 0041F64C 8FAF004C */  lw          $t7, 0x4C($sp)
/* 01F650 0041F650 24060000 */  addiu       $a2, $zero, 0x0
/* 01F654 0041F654 24070008 */  addiu       $a3, $zero, 0x8
/* 01F658 0041F658 032F2821 */  addu        $a1, $t9, $t7
/* 01F65C 0041F65C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F660 0041F660 00AF082B */  sltu        $at, $a1, $t7
/* 01F664 0041F664 00382021 */  addu        $a0, $at, $t8
/* 01F668 0041F668 0320F809 */  jalr        $t9
/* 01F66C 0041F66C 008E2021 */   addu       $a0, $a0, $t6
/* 01F670 0041F670 8FA80064 */  lw          $t0, 0x64($sp)
/* 01F674 0041F674 AFA20050 */  sw          $v0, 0x50($sp)
/* 01F678 0041F678 AFA30054 */  sw          $v1, 0x54($sp)
/* 01F67C 0041F67C 910C0010 */  lbu         $t4, 0x10($t0)
/* 01F680 0041F680 8FB90054 */  lw          $t9, 0x54($sp)
/* 01F684 0041F684 8FB80050 */  lw          $t8, 0x50($sp)
/* 01F688 0041F688 01805825 */  move        $t3, $t4
/* 01F68C 0041F68C 8FAD0060 */  lw          $t5, 0x60($sp)
/* 01F690 0041F690 01797821 */  addu        $t7, $t3, $t9
/* 01F694 0041F694 000C57C3 */  sra         $t2, $t4, 31
/* 01F698 0041F698 01F9082B */  sltu        $at, $t7, $t9
/* 01F69C 0041F69C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F6A0 0041F6A0 002A7021 */  addu        $t6, $at, $t2
/* 01F6A4 0041F6A4 01D87021 */  addu        $t6, $t6, $t8
/* 01F6A8 0041F6A8 ADAE0010 */  sw          $t6, 0x10($t5)
/* 01F6AC 0041F6AC ADAF0014 */  sw          $t7, 0x14($t5)
/* 01F6B0 0041F6B0 8FA90064 */  lw          $t1, 0x64($sp)
/* 01F6B4 0041F6B4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F6B8 0041F6B8 24040000 */  addiu       $a0, $zero, 0x0
/* 01F6BC 0041F6BC 9128000F */  lbu         $t0, 0xF($t1)
/* 01F6C0 0041F6C0 24060000 */  addiu       $a2, $zero, 0x0
/* 01F6C4 0041F6C4 24070008 */  addiu       $a3, $zero, 0x8
/* 01F6C8 0041F6C8 0320F809 */  jalr        $t9
/* 01F6CC 0041F6CC 01002825 */   move       $a1, $t0
/* 01F6D0 0041F6D0 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01F6D4 0041F6D4 AFA20020 */  sw          $v0, 0x20($sp)
/* 01F6D8 0041F6D8 AFA30024 */  sw          $v1, 0x24($sp)
/* 01F6DC 0041F6DC 918A000E */  lbu         $t2, 0xE($t4)
/* 01F6E0 0041F6E0 8FAF0024 */  lw          $t7, 0x24($sp)
/* 01F6E4 0041F6E4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F6E8 0041F6E8 0140C825 */  move        $t9, $t2
/* 01F6EC 0041F6EC 032F2821 */  addu        $a1, $t9, $t7
/* 01F6F0 0041F6F0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F6F4 0041F6F4 8FAE0020 */  lw          $t6, 0x20($sp)
/* 01F6F8 0041F6F8 000AC7C3 */  sra         $t8, $t2, 31
/* 01F6FC 0041F6FC 00AF082B */  sltu        $at, $a1, $t7
/* 01F700 0041F700 00382021 */  addu        $a0, $at, $t8
/* 01F704 0041F704 24060000 */  addiu       $a2, $zero, 0x0
/* 01F708 0041F708 24070008 */  addiu       $a3, $zero, 0x8
/* 01F70C 0041F70C 0320F809 */  jalr        $t9
/* 01F710 0041F710 008E2021 */   addu       $a0, $a0, $t6
/* 01F714 0041F714 8FAB0064 */  lw          $t3, 0x64($sp)
/* 01F718 0041F718 AFA20028 */  sw          $v0, 0x28($sp)
/* 01F71C 0041F71C AFA3002C */  sw          $v1, 0x2C($sp)
/* 01F720 0041F720 916D000D */  lbu         $t5, 0xD($t3)
/* 01F724 0041F724 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F728 0041F728 8FAC0028 */  lw          $t4, 0x28($sp)
/* 01F72C 0041F72C 01A04825 */  move        $t1, $t5
/* 01F730 0041F730 000D47C3 */  sra         $t0, $t5, 31
/* 01F734 0041F734 8FAD002C */  lw          $t5, 0x2C($sp)
/* 01F738 0041F738 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F73C 0041F73C 24060000 */  addiu       $a2, $zero, 0x0
/* 01F740 0041F740 012D2821 */  addu        $a1, $t1, $t5
/* 01F744 0041F744 00AD082B */  sltu        $at, $a1, $t5
/* 01F748 0041F748 00282021 */  addu        $a0, $at, $t0
/* 01F74C 0041F74C 24070008 */  addiu       $a3, $zero, 0x8
/* 01F750 0041F750 0320F809 */  jalr        $t9
/* 01F754 0041F754 008C2021 */   addu       $a0, $a0, $t4
/* 01F758 0041F758 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01F75C 0041F75C AFA20030 */  sw          $v0, 0x30($sp)
/* 01F760 0041F760 AFA30034 */  sw          $v1, 0x34($sp)
/* 01F764 0041F764 9158000C */  lbu         $t8, 0xC($t2)
/* 01F768 0041F768 8FA90034 */  lw          $t1, 0x34($sp)
/* 01F76C 0041F76C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F770 0041F770 03007825 */  move        $t7, $t8
/* 01F774 0041F774 01E92821 */  addu        $a1, $t7, $t1
/* 01F778 0041F778 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F77C 0041F77C 8FA80030 */  lw          $t0, 0x30($sp)
/* 01F780 0041F780 001877C3 */  sra         $t6, $t8, 31
/* 01F784 0041F784 00A9082B */  sltu        $at, $a1, $t1
/* 01F788 0041F788 002E2021 */  addu        $a0, $at, $t6
/* 01F78C 0041F78C 24060000 */  addiu       $a2, $zero, 0x0
/* 01F790 0041F790 24070008 */  addiu       $a3, $zero, 0x8
/* 01F794 0041F794 0320F809 */  jalr        $t9
/* 01F798 0041F798 00882021 */   addu       $a0, $a0, $t0
/* 01F79C 0041F79C 8FB90064 */  lw          $t9, 0x64($sp)
/* 01F7A0 0041F7A0 AFA20038 */  sw          $v0, 0x38($sp)
/* 01F7A4 0041F7A4 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01F7A8 0041F7A8 932B000B */  lbu         $t3, 0xB($t9)
/* 01F7AC 0041F7AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F7B0 0041F7B0 8FAA0038 */  lw          $t2, 0x38($sp)
/* 01F7B4 0041F7B4 01606825 */  move        $t5, $t3
/* 01F7B8 0041F7B8 000B67C3 */  sra         $t4, $t3, 31
/* 01F7BC 0041F7BC 8FAB003C */  lw          $t3, 0x3C($sp)
/* 01F7C0 0041F7C0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F7C4 0041F7C4 24060000 */  addiu       $a2, $zero, 0x0
/* 01F7C8 0041F7C8 01AB2821 */  addu        $a1, $t5, $t3
/* 01F7CC 0041F7CC 00AB082B */  sltu        $at, $a1, $t3
/* 01F7D0 0041F7D0 002C2021 */  addu        $a0, $at, $t4
/* 01F7D4 0041F7D4 24070008 */  addiu       $a3, $zero, 0x8
/* 01F7D8 0041F7D8 0320F809 */  jalr        $t9
/* 01F7DC 0041F7DC 008A2021 */   addu       $a0, $a0, $t2
/* 01F7E0 0041F7E0 8FB80064 */  lw          $t8, 0x64($sp)
/* 01F7E4 0041F7E4 AFA20040 */  sw          $v0, 0x40($sp)
/* 01F7E8 0041F7E8 AFA30044 */  sw          $v1, 0x44($sp)
/* 01F7EC 0041F7EC 930E000A */  lbu         $t6, 0xA($t8)
/* 01F7F0 0041F7F0 8FAD0044 */  lw          $t5, 0x44($sp)
/* 01F7F4 0041F7F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F7F8 0041F7F8 01C04825 */  move        $t1, $t6
/* 01F7FC 0041F7FC 012D2821 */  addu        $a1, $t1, $t5
/* 01F800 0041F800 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F804 0041F804 8FAC0040 */  lw          $t4, 0x40($sp)
/* 01F808 0041F808 000E47C3 */  sra         $t0, $t6, 31
/* 01F80C 0041F80C 00AD082B */  sltu        $at, $a1, $t5
/* 01F810 0041F810 00282021 */  addu        $a0, $at, $t0
/* 01F814 0041F814 24060000 */  addiu       $a2, $zero, 0x0
/* 01F818 0041F818 24070008 */  addiu       $a3, $zero, 0x8
/* 01F81C 0041F81C 0320F809 */  jalr        $t9
/* 01F820 0041F820 008C2021 */   addu       $a0, $a0, $t4
/* 01F824 0041F824 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01F828 0041F828 AFA20048 */  sw          $v0, 0x48($sp)
/* 01F82C 0041F82C AFA3004C */  sw          $v1, 0x4C($sp)
/* 01F830 0041F830 91F90009 */  lbu         $t9, 0x9($t7)
/* 01F834 0041F834 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F838 0041F838 8FB80048 */  lw          $t8, 0x48($sp)
/* 01F83C 0041F83C 03205825 */  move        $t3, $t9
/* 01F840 0041F840 001957C3 */  sra         $t2, $t9, 31
/* 01F844 0041F844 8FB9004C */  lw          $t9, 0x4C($sp)
/* 01F848 0041F848 24060000 */  addiu       $a2, $zero, 0x0
/* 01F84C 0041F84C 24070008 */  addiu       $a3, $zero, 0x8
/* 01F850 0041F850 01792821 */  addu        $a1, $t3, $t9
/* 01F854 0041F854 00B9082B */  sltu        $at, $a1, $t9
/* 01F858 0041F858 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01F85C 0041F85C 002A2021 */  addu        $a0, $at, $t2
/* 01F860 0041F860 00982021 */  addu        $a0, $a0, $t8
/* 01F864 0041F864 0320F809 */  jalr        $t9
/* 01F868 0041F868 00000000 */   nop
/* 01F86C 0041F86C 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01F870 0041F870 AFA20050 */  sw          $v0, 0x50($sp)
/* 01F874 0041F874 AFA30054 */  sw          $v1, 0x54($sp)
/* 01F878 0041F878 91C80008 */  lbu         $t0, 0x8($t6)
/* 01F87C 0041F87C 8FAB0054 */  lw          $t3, 0x54($sp)
/* 01F880 0041F880 8FAA0050 */  lw          $t2, 0x50($sp)
/* 01F884 0041F884 01006825 */  move        $t5, $t0
/* 01F888 0041F888 8FA90060 */  lw          $t1, 0x60($sp)
/* 01F88C 0041F88C 01ABC821 */  addu        $t9, $t5, $t3
/* 01F890 0041F890 000867C3 */  sra         $t4, $t0, 31
/* 01F894 0041F894 032B082B */  sltu        $at, $t9, $t3
/* 01F898 0041F898 002CC021 */  addu        $t8, $at, $t4
/* 01F89C 0041F89C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F8A0 0041F8A0 030AC021 */  addu        $t8, $t8, $t2
/* 01F8A4 0041F8A4 AD380008 */  sw          $t8, 0x8($t1)
/* 01F8A8 0041F8A8 AD39000C */  sw          $t9, 0xC($t1)
/* 01F8AC 0041F8AC 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01F8B0 0041F8B0 91EE0007 */  lbu         $t6, 0x7($t7)
/* 01F8B4 0041F8B4 91EC0006 */  lbu         $t4, 0x6($t7)
/* 01F8B8 0041F8B8 91EB0005 */  lbu         $t3, 0x5($t7)
/* 01F8BC 0041F8BC 000E4200 */  sll         $t0, $t6, 8
/* 01F8C0 0041F8C0 010C6821 */  addu        $t5, $t0, $t4
/* 01F8C4 0041F8C4 91E90004 */  lbu         $t1, 0x4($t7)
/* 01F8C8 0041F8C8 000D5200 */  sll         $t2, $t5, 8
/* 01F8CC 0041F8CC 8FA80060 */  lw          $t0, 0x60($sp)
/* 01F8D0 0041F8D0 014BC021 */  addu        $t8, $t2, $t3
/* 01F8D4 0041F8D4 0018CA00 */  sll         $t9, $t8, 8
/* 01F8D8 0041F8D8 01397021 */  addu        $t6, $t1, $t9
/* 01F8DC 0041F8DC AD0E0004 */  sw          $t6, 0x4($t0)
/* 01F8E0 0041F8E0 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01F8E4 0041F8E4 918D0003 */  lbu         $t5, 0x3($t4)
/* 01F8E8 0041F8E8 918B0002 */  lbu         $t3, 0x2($t4)
/* 01F8EC 0041F8EC 91890001 */  lbu         $t1, 0x1($t4)
/* 01F8F0 0041F8F0 000D5200 */  sll         $t2, $t5, 8
/* 01F8F4 0041F8F4 014BC021 */  addu        $t8, $t2, $t3
/* 01F8F8 0041F8F8 91880000 */  lbu         $t0, 0x0($t4)
/* 01F8FC 0041F8FC 00187A00 */  sll         $t7, $t8, 8
/* 01F900 0041F900 8FAA0060 */  lw          $t2, 0x60($sp)
/* 01F904 0041F904 01E9C821 */  addu        $t9, $t7, $t1
/* 01F908 0041F908 00197200 */  sll         $t6, $t9, 8
/* 01F90C 0041F90C 010E6821 */  addu        $t5, $t0, $t6
/* 01F910 0041F910 AD4D0000 */  sw          $t5, 0x0($t2)
/* 01F914 0041F914 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01F918 0041F918 8FB8005C */  lw          $t8, 0x5C($sp)
/* 01F91C 0041F91C 256FFFC0 */  addiu       $t7, $t3, -0x40
/* 01F920 0041F920 030B802B */  sltu        $s0, $t8, $t3
/* 01F924 0041F924 1600FCCE */  bnez        $s0, .L0041EC60
/* 01F928 0041F928 AFAF0060 */   sw         $t7, 0x60($sp)
.L0041F92C:
/* 01F92C 0041F92C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01F930 0041F930 8FB00014 */  lw          $s0, 0x14($sp)
/* 01F934 0041F934 27BD0060 */  addiu       $sp, $sp, 0x60
/* 01F938 0041F938 03E00008 */  jr          $ra
/* 01F93C 0041F93C 00000000 */   nop
