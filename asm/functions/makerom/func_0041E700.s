glabel func_0041E700 # 99
/* 01E700 0041E700 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 01E704 0041E704 279C4660 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF4660
/* 01E708 0041E708 0399E021 */  addu        $gp, $gp, $t9
/* 01E70C 0041E70C 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 01E710 0041E710 AFA60078 */  sw          $a2, 0x78($sp)
/* 01E714 0041E714 8FAF0078 */  lw          $t7, 0x78($sp)
/* 01E718 0041E718 AFA40070 */  sw          $a0, 0x70($sp)
/* 01E71C 0041E71C 8FAE0070 */  lw          $t6, 0x70($sp)
/* 01E720 0041E720 000FC080 */  sll         $t8, $t7, 2
/* 01E724 0041E724 030FC023 */  subu        $t8, $t8, $t7
/* 01E728 0041E728 AFA50074 */  sw          $a1, 0x74($sp)
/* 01E72C 0041E72C 0018C0C0 */  sll         $t8, $t8, 3
/* 01E730 0041E730 AFAE006C */  sw          $t6, 0x6C($sp)
/* 01E734 0041E734 8FA80074 */  lw          $t0, 0x74($sp)
/* 01E738 0041E738 8FAA006C */  lw          $t2, 0x6C($sp)
/* 01E73C 0041E73C 01D8C821 */  addu        $t9, $t6, $t8
/* 01E740 0041E740 AFB00014 */  sw          $s0, 0x14($sp)
/* 01E744 0041E744 AFB90070 */  sw          $t9, 0x70($sp)
/* 01E748 0041E748 272BFFE8 */  addiu       $t3, $t9, -0x18
/* 01E74C 0041E74C 01184821 */  addu        $t1, $t0, $t8
/* 01E750 0041E750 0159802B */  sltu        $s0, $t2, $t9
/* 01E754 0041E754 AFBF001C */  sw          $ra, 0x1C($sp)
/* 01E758 0041E758 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01E75C 0041E75C AFA90074 */  sw          $t1, 0x74($sp)
/* 01E760 0041E760 12000122 */  beqz        $s0, .L0041EBEC
/* 01E764 0041E764 AFAB0070 */   sw         $t3, 0x70($sp)
.L0041E768:
/* 01E768 0041E768 8FAC0074 */  lw          $t4, 0x74($sp)
/* 01E76C 0041E76C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E770 0041E770 24040000 */  addiu       $a0, $zero, 0x0
/* 01E774 0041E774 258DFFE8 */  addiu       $t5, $t4, -0x18
/* 01E778 0041E778 AFAD0074 */  sw          $t5, 0x74($sp)
/* 01E77C 0041E77C 91AF0010 */  lbu         $t7, 0x10($t5)
/* 01E780 0041E780 24060000 */  addiu       $a2, $zero, 0x0
/* 01E784 0041E784 24070008 */  addiu       $a3, $zero, 0x8
/* 01E788 0041E788 0320F809 */  jalr        $t9
/* 01E78C 0041E78C 01E02825 */   move       $a1, $t7
/* 01E790 0041E790 8FAE0074 */  lw          $t6, 0x74($sp)
/* 01E794 0041E794 AFA20020 */  sw          $v0, 0x20($sp)
/* 01E798 0041E798 AFA30024 */  sw          $v1, 0x24($sp)
/* 01E79C 0041E79C 91C80011 */  lbu         $t0, 0x11($t6)
/* 01E7A0 0041E7A0 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01E7A4 0041E7A4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E7A8 0041E7A8 0100C825 */  move        $t9, $t0
/* 01E7AC 0041E7AC 032B2821 */  addu        $a1, $t9, $t3
/* 01E7B0 0041E7B0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E7B4 0041E7B4 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01E7B8 0041E7B8 0008C7C3 */  sra         $t8, $t0, 31
/* 01E7BC 0041E7BC 00AB082B */  sltu        $at, $a1, $t3
/* 01E7C0 0041E7C0 00382021 */  addu        $a0, $at, $t8
/* 01E7C4 0041E7C4 24060000 */  addiu       $a2, $zero, 0x0
/* 01E7C8 0041E7C8 24070008 */  addiu       $a3, $zero, 0x8
/* 01E7CC 0041E7CC 0320F809 */  jalr        $t9
/* 01E7D0 0041E7D0 008A2021 */   addu       $a0, $a0, $t2
/* 01E7D4 0041E7D4 8FA90074 */  lw          $t1, 0x74($sp)
/* 01E7D8 0041E7D8 AFA20028 */  sw          $v0, 0x28($sp)
/* 01E7DC 0041E7DC AFA3002C */  sw          $v1, 0x2C($sp)
/* 01E7E0 0041E7E0 912C0012 */  lbu         $t4, 0x12($t1)
/* 01E7E4 0041E7E4 8FA9002C */  lw          $t1, 0x2C($sp)
/* 01E7E8 0041E7E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E7EC 0041E7EC 01807825 */  move        $t7, $t4
/* 01E7F0 0041E7F0 01E92821 */  addu        $a1, $t7, $t1
/* 01E7F4 0041E7F4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E7F8 0041E7F8 8FA80028 */  lw          $t0, 0x28($sp)
/* 01E7FC 0041E7FC 000C77C3 */  sra         $t6, $t4, 31
/* 01E800 0041E800 00A9082B */  sltu        $at, $a1, $t1
/* 01E804 0041E804 002E2021 */  addu        $a0, $at, $t6
/* 01E808 0041E808 24060000 */  addiu       $a2, $zero, 0x0
/* 01E80C 0041E80C 24070008 */  addiu       $a3, $zero, 0x8
/* 01E810 0041E810 0320F809 */  jalr        $t9
/* 01E814 0041E814 00882021 */   addu       $a0, $a0, $t0
/* 01E818 0041E818 8FAD0074 */  lw          $t5, 0x74($sp)
/* 01E81C 0041E81C AFA20030 */  sw          $v0, 0x30($sp)
/* 01E820 0041E820 AFA30034 */  sw          $v1, 0x34($sp)
/* 01E824 0041E824 91B80013 */  lbu         $t8, 0x13($t5)
/* 01E828 0041E828 8FAD0034 */  lw          $t5, 0x34($sp)
/* 01E82C 0041E82C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E830 0041E830 03005825 */  move        $t3, $t8
/* 01E834 0041E834 016D2821 */  addu        $a1, $t3, $t5
/* 01E838 0041E838 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E83C 0041E83C 8FAC0030 */  lw          $t4, 0x30($sp)
/* 01E840 0041E840 001857C3 */  sra         $t2, $t8, 31
/* 01E844 0041E844 00AD082B */  sltu        $at, $a1, $t5
/* 01E848 0041E848 002A2021 */  addu        $a0, $at, $t2
/* 01E84C 0041E84C 24060000 */  addiu       $a2, $zero, 0x0
/* 01E850 0041E850 24070008 */  addiu       $a3, $zero, 0x8
/* 01E854 0041E854 0320F809 */  jalr        $t9
/* 01E858 0041E858 008C2021 */   addu       $a0, $a0, $t4
/* 01E85C 0041E85C 8FB90074 */  lw          $t9, 0x74($sp)
/* 01E860 0041E860 AFA20038 */  sw          $v0, 0x38($sp)
/* 01E864 0041E864 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01E868 0041E868 932E0014 */  lbu         $t6, 0x14($t9)
/* 01E86C 0041E86C 8FB9003C */  lw          $t9, 0x3C($sp)
/* 01E870 0041E870 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E874 0041E874 01C04825 */  move        $t1, $t6
/* 01E878 0041E878 01392821 */  addu        $a1, $t1, $t9
/* 01E87C 0041E87C 00B9082B */  sltu        $at, $a1, $t9
/* 01E880 0041E880 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E884 0041E884 8FB80038 */  lw          $t8, 0x38($sp)
/* 01E888 0041E888 000E47C3 */  sra         $t0, $t6, 31
/* 01E88C 0041E88C 00282021 */  addu        $a0, $at, $t0
/* 01E890 0041E890 24060000 */  addiu       $a2, $zero, 0x0
/* 01E894 0041E894 24070008 */  addiu       $a3, $zero, 0x8
/* 01E898 0041E898 0320F809 */  jalr        $t9
/* 01E89C 0041E89C 00982021 */   addu       $a0, $a0, $t8
/* 01E8A0 0041E8A0 8FAF0074 */  lw          $t7, 0x74($sp)
/* 01E8A4 0041E8A4 AFA20040 */  sw          $v0, 0x40($sp)
/* 01E8A8 0041E8A8 AFA30044 */  sw          $v1, 0x44($sp)
/* 01E8AC 0041E8AC 91EA0015 */  lbu         $t2, 0x15($t7)
/* 01E8B0 0041E8B0 8FAF0044 */  lw          $t7, 0x44($sp)
/* 01E8B4 0041E8B4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E8B8 0041E8B8 01406825 */  move        $t5, $t2
/* 01E8BC 0041E8BC 01AF2821 */  addu        $a1, $t5, $t7
/* 01E8C0 0041E8C0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E8C4 0041E8C4 8FAE0040 */  lw          $t6, 0x40($sp)
/* 01E8C8 0041E8C8 000A67C3 */  sra         $t4, $t2, 31
/* 01E8CC 0041E8CC 00AF082B */  sltu        $at, $a1, $t7
/* 01E8D0 0041E8D0 002C2021 */  addu        $a0, $at, $t4
/* 01E8D4 0041E8D4 24060000 */  addiu       $a2, $zero, 0x0
/* 01E8D8 0041E8D8 24070008 */  addiu       $a3, $zero, 0x8
/* 01E8DC 0041E8DC 0320F809 */  jalr        $t9
/* 01E8E0 0041E8E0 008E2021 */   addu       $a0, $a0, $t6
/* 01E8E4 0041E8E4 8FAB0074 */  lw          $t3, 0x74($sp)
/* 01E8E8 0041E8E8 AFA20048 */  sw          $v0, 0x48($sp)
/* 01E8EC 0041E8EC AFA3004C */  sw          $v1, 0x4C($sp)
/* 01E8F0 0041E8F0 91680016 */  lbu         $t0, 0x16($t3)
/* 01E8F4 0041E8F4 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01E8F8 0041E8F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E8FC 0041E8FC 0100C825 */  move        $t9, $t0
/* 01E900 0041E900 032B2821 */  addu        $a1, $t9, $t3
/* 01E904 0041E904 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E908 0041E908 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01E90C 0041E90C 0008C7C3 */  sra         $t8, $t0, 31
/* 01E910 0041E910 00AB082B */  sltu        $at, $a1, $t3
/* 01E914 0041E914 00382021 */  addu        $a0, $at, $t8
/* 01E918 0041E918 24060000 */  addiu       $a2, $zero, 0x0
/* 01E91C 0041E91C 24070008 */  addiu       $a3, $zero, 0x8
/* 01E920 0041E920 0320F809 */  jalr        $t9
/* 01E924 0041E924 008A2021 */   addu       $a0, $a0, $t2
/* 01E928 0041E928 8FA90074 */  lw          $t1, 0x74($sp)
/* 01E92C 0041E92C AFA20050 */  sw          $v0, 0x50($sp)
/* 01E930 0041E930 AFA30054 */  sw          $v1, 0x54($sp)
/* 01E934 0041E934 912C0017 */  lbu         $t4, 0x17($t1)
/* 01E938 0041E938 8FA90054 */  lw          $t1, 0x54($sp)
/* 01E93C 0041E93C 8FA80050 */  lw          $t0, 0x50($sp)
/* 01E940 0041E940 01807825 */  move        $t7, $t4
/* 01E944 0041E944 8FAD0070 */  lw          $t5, 0x70($sp)
/* 01E948 0041E948 01E9C821 */  addu        $t9, $t7, $t1
/* 01E94C 0041E94C 000C77C3 */  sra         $t6, $t4, 31
/* 01E950 0041E950 0329082B */  sltu        $at, $t9, $t1
/* 01E954 0041E954 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E958 0041E958 002EC021 */  addu        $t8, $at, $t6
/* 01E95C 0041E95C 0308C021 */  addu        $t8, $t8, $t0
/* 01E960 0041E960 ADB80010 */  sw          $t8, 0x10($t5)
/* 01E964 0041E964 ADB90014 */  sw          $t9, 0x14($t5)
/* 01E968 0041E968 8FAA0074 */  lw          $t2, 0x74($sp)
/* 01E96C 0041E96C 8FAC0070 */  lw          $t4, 0x70($sp)
/* 01E970 0041E970 24040000 */  addiu       $a0, $zero, 0x0
/* 01E974 0041E974 914B000F */  lbu         $t3, 0xF($t2)
/* 01E978 0041E978 24060000 */  addiu       $a2, $zero, 0x0
/* 01E97C 0041E97C 24070008 */  addiu       $a3, $zero, 0x8
/* 01E980 0041E980 A18B000F */  sb          $t3, 0xF($t4)
/* 01E984 0041E984 8FAE0074 */  lw          $t6, 0x74($sp)
/* 01E988 0041E988 8FA80070 */  lw          $t0, 0x70($sp)
/* 01E98C 0041E98C 91CF000E */  lbu         $t7, 0xE($t6)
/* 01E990 0041E990 A10F000E */  sb          $t7, 0xE($t0)
/* 01E994 0041E994 8FA90074 */  lw          $t1, 0x74($sp)
/* 01E998 0041E998 8FB90070 */  lw          $t9, 0x70($sp)
/* 01E99C 0041E99C 9138000D */  lbu         $t8, 0xD($t1)
/* 01E9A0 0041E9A0 A338000D */  sb          $t8, 0xD($t9)
/* 01E9A4 0041E9A4 8FAD0074 */  lw          $t5, 0x74($sp)
/* 01E9A8 0041E9A8 8FAB0070 */  lw          $t3, 0x70($sp)
/* 01E9AC 0041E9AC 91AA000C */  lbu         $t2, 0xC($t5)
/* 01E9B0 0041E9B0 A16A000C */  sb          $t2, 0xC($t3)
/* 01E9B4 0041E9B4 8FAC0074 */  lw          $t4, 0x74($sp)
/* 01E9B8 0041E9B8 918E0008 */  lbu         $t6, 0x8($t4)
/* 01E9BC 0041E9BC 91880009 */  lbu         $t0, 0x9($t4)
/* 01E9C0 0041E9C0 9199000A */  lbu         $t9, 0xA($t4)
/* 01E9C4 0041E9C4 000E7A00 */  sll         $t7, $t6, 8
/* 01E9C8 0041E9C8 01E84821 */  addu        $t1, $t7, $t0
/* 01E9CC 0041E9CC 918B000B */  lbu         $t3, 0xB($t4)
/* 01E9D0 0041E9D0 0009C200 */  sll         $t8, $t1, 8
/* 01E9D4 0041E9D4 8FAF0070 */  lw          $t7, 0x70($sp)
/* 01E9D8 0041E9D8 03196821 */  addu        $t5, $t8, $t9
/* 01E9DC 0041E9DC 000D5200 */  sll         $t2, $t5, 8
/* 01E9E0 0041E9E0 016A7021 */  addu        $t6, $t3, $t2
/* 01E9E4 0041E9E4 ADEE0008 */  sw          $t6, 0x8($t7)
/* 01E9E8 0041E9E8 8FA80074 */  lw          $t0, 0x74($sp)
/* 01E9EC 0041E9EC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E9F0 0041E9F0 91090000 */  lbu         $t1, 0x0($t0)
/* 01E9F4 0041E9F4 0320F809 */  jalr        $t9
/* 01E9F8 0041E9F8 01202825 */   move       $a1, $t1
/* 01E9FC 0041E9FC 8FB80074 */  lw          $t8, 0x74($sp)
/* 01EA00 0041EA00 AFA20020 */  sw          $v0, 0x20($sp)
/* 01EA04 0041EA04 AFA30024 */  sw          $v1, 0x24($sp)
/* 01EA08 0041EA08 93190001 */  lbu         $t9, 0x1($t8)
/* 01EA0C 0041EA0C 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01EA10 0041EA10 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EA14 0041EA14 03206825 */  move        $t5, $t9
/* 01EA18 0041EA18 001967C3 */  sra         $t4, $t9, 31
/* 01EA1C 0041EA1C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EA20 0041EA20 01AB2821 */  addu        $a1, $t5, $t3
/* 01EA24 0041EA24 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01EA28 0041EA28 00AB082B */  sltu        $at, $a1, $t3
/* 01EA2C 0041EA2C 002C2021 */  addu        $a0, $at, $t4
/* 01EA30 0041EA30 24060000 */  addiu       $a2, $zero, 0x0
/* 01EA34 0041EA34 24070008 */  addiu       $a3, $zero, 0x8
/* 01EA38 0041EA38 0320F809 */  jalr        $t9
/* 01EA3C 0041EA3C 008A2021 */   addu       $a0, $a0, $t2
/* 01EA40 0041EA40 8FAE0074 */  lw          $t6, 0x74($sp)
/* 01EA44 0041EA44 AFA20028 */  sw          $v0, 0x28($sp)
/* 01EA48 0041EA48 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01EA4C 0041EA4C 91CF0002 */  lbu         $t7, 0x2($t6)
/* 01EA50 0041EA50 8FB9002C */  lw          $t9, 0x2C($sp)
/* 01EA54 0041EA54 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EA58 0041EA58 01E04825 */  move        $t1, $t7
/* 01EA5C 0041EA5C 01392821 */  addu        $a1, $t1, $t9
/* 01EA60 0041EA60 00B9082B */  sltu        $at, $a1, $t9
/* 01EA64 0041EA64 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EA68 0041EA68 8FB80028 */  lw          $t8, 0x28($sp)
/* 01EA6C 0041EA6C 000F47C3 */  sra         $t0, $t7, 31
/* 01EA70 0041EA70 00282021 */  addu        $a0, $at, $t0
/* 01EA74 0041EA74 24060000 */  addiu       $a2, $zero, 0x0
/* 01EA78 0041EA78 24070008 */  addiu       $a3, $zero, 0x8
/* 01EA7C 0041EA7C 0320F809 */  jalr        $t9
/* 01EA80 0041EA80 00982021 */   addu       $a0, $a0, $t8
/* 01EA84 0041EA84 8FAC0074 */  lw          $t4, 0x74($sp)
/* 01EA88 0041EA88 AFA20030 */  sw          $v0, 0x30($sp)
/* 01EA8C 0041EA8C AFA30034 */  sw          $v1, 0x34($sp)
/* 01EA90 0041EA90 918D0003 */  lbu         $t5, 0x3($t4)
/* 01EA94 0041EA94 8FAF0034 */  lw          $t7, 0x34($sp)
/* 01EA98 0041EA98 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EA9C 0041EA9C 01A05825 */  move        $t3, $t5
/* 01EAA0 0041EAA0 016F2821 */  addu        $a1, $t3, $t7
/* 01EAA4 0041EAA4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EAA8 0041EAA8 8FAE0030 */  lw          $t6, 0x30($sp)
/* 01EAAC 0041EAAC 000D57C3 */  sra         $t2, $t5, 31
/* 01EAB0 0041EAB0 00AF082B */  sltu        $at, $a1, $t7
/* 01EAB4 0041EAB4 002A2021 */  addu        $a0, $at, $t2
/* 01EAB8 0041EAB8 24060000 */  addiu       $a2, $zero, 0x0
/* 01EABC 0041EABC 24070008 */  addiu       $a3, $zero, 0x8
/* 01EAC0 0041EAC0 0320F809 */  jalr        $t9
/* 01EAC4 0041EAC4 008E2021 */   addu       $a0, $a0, $t6
/* 01EAC8 0041EAC8 8FA80074 */  lw          $t0, 0x74($sp)
/* 01EACC 0041EACC AFA20038 */  sw          $v0, 0x38($sp)
/* 01EAD0 0041EAD0 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01EAD4 0041EAD4 91090004 */  lbu         $t1, 0x4($t0)
/* 01EAD8 0041EAD8 8FAD003C */  lw          $t5, 0x3C($sp)
/* 01EADC 0041EADC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EAE0 0041EAE0 0120C825 */  move        $t9, $t1
/* 01EAE4 0041EAE4 032D2821 */  addu        $a1, $t9, $t5
/* 01EAE8 0041EAE8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EAEC 0041EAEC 8FAC0038 */  lw          $t4, 0x38($sp)
/* 01EAF0 0041EAF0 0009C7C3 */  sra         $t8, $t1, 31
/* 01EAF4 0041EAF4 00AD082B */  sltu        $at, $a1, $t5
/* 01EAF8 0041EAF8 00382021 */  addu        $a0, $at, $t8
/* 01EAFC 0041EAFC 24060000 */  addiu       $a2, $zero, 0x0
/* 01EB00 0041EB00 24070008 */  addiu       $a3, $zero, 0x8
/* 01EB04 0041EB04 0320F809 */  jalr        $t9
/* 01EB08 0041EB08 008C2021 */   addu       $a0, $a0, $t4
/* 01EB0C 0041EB0C 8FAA0074 */  lw          $t2, 0x74($sp)
/* 01EB10 0041EB10 AFA20040 */  sw          $v0, 0x40($sp)
/* 01EB14 0041EB14 AFA30044 */  sw          $v1, 0x44($sp)
/* 01EB18 0041EB18 914B0005 */  lbu         $t3, 0x5($t2)
/* 01EB1C 0041EB1C 8FA90044 */  lw          $t1, 0x44($sp)
/* 01EB20 0041EB20 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EB24 0041EB24 01607825 */  move        $t7, $t3
/* 01EB28 0041EB28 01E92821 */  addu        $a1, $t7, $t1
/* 01EB2C 0041EB2C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EB30 0041EB30 8FA80040 */  lw          $t0, 0x40($sp)
/* 01EB34 0041EB34 000B77C3 */  sra         $t6, $t3, 31
/* 01EB38 0041EB38 00A9082B */  sltu        $at, $a1, $t1
/* 01EB3C 0041EB3C 002E2021 */  addu        $a0, $at, $t6
/* 01EB40 0041EB40 24060000 */  addiu       $a2, $zero, 0x0
/* 01EB44 0041EB44 24070008 */  addiu       $a3, $zero, 0x8
/* 01EB48 0041EB48 0320F809 */  jalr        $t9
/* 01EB4C 0041EB4C 00882021 */   addu       $a0, $a0, $t0
/* 01EB50 0041EB50 8FB80074 */  lw          $t8, 0x74($sp)
/* 01EB54 0041EB54 AFA20048 */  sw          $v0, 0x48($sp)
/* 01EB58 0041EB58 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01EB5C 0041EB5C 93190006 */  lbu         $t9, 0x6($t8)
/* 01EB60 0041EB60 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01EB64 0041EB64 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EB68 0041EB68 03206825 */  move        $t5, $t9
/* 01EB6C 0041EB6C 001967C3 */  sra         $t4, $t9, 31
/* 01EB70 0041EB70 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01EB74 0041EB74 01AB2821 */  addu        $a1, $t5, $t3
/* 01EB78 0041EB78 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01EB7C 0041EB7C 00AB082B */  sltu        $at, $a1, $t3
/* 01EB80 0041EB80 002C2021 */  addu        $a0, $at, $t4
/* 01EB84 0041EB84 24060000 */  addiu       $a2, $zero, 0x0
/* 01EB88 0041EB88 24070008 */  addiu       $a3, $zero, 0x8
/* 01EB8C 0041EB8C 0320F809 */  jalr        $t9
/* 01EB90 0041EB90 008A2021 */   addu       $a0, $a0, $t2
/* 01EB94 0041EB94 8FAE0074 */  lw          $t6, 0x74($sp)
/* 01EB98 0041EB98 AFA20050 */  sw          $v0, 0x50($sp)
/* 01EB9C 0041EB9C AFA30054 */  sw          $v1, 0x54($sp)
/* 01EBA0 0041EBA0 91CF0007 */  lbu         $t7, 0x7($t6)
/* 01EBA4 0041EBA4 8FB90054 */  lw          $t9, 0x54($sp)
/* 01EBA8 0041EBA8 8FB80050 */  lw          $t8, 0x50($sp)
/* 01EBAC 0041EBAC 01E04825 */  move        $t1, $t7
/* 01EBB0 0041EBB0 8FAA0070 */  lw          $t2, 0x70($sp)
/* 01EBB4 0041EBB4 01396821 */  addu        $t5, $t1, $t9
/* 01EBB8 0041EBB8 000F47C3 */  sra         $t0, $t7, 31
/* 01EBBC 0041EBBC 01B9082B */  sltu        $at, $t5, $t9
/* 01EBC0 0041EBC0 00286021 */  addu        $t4, $at, $t0
/* 01EBC4 0041EBC4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EBC8 0041EBC8 01986021 */  addu        $t4, $t4, $t8
/* 01EBCC 0041EBCC AD4C0000 */  sw          $t4, 0x0($t2)
/* 01EBD0 0041EBD0 AD4D0004 */  sw          $t5, 0x4($t2)
/* 01EBD4 0041EBD4 8FAB0070 */  lw          $t3, 0x70($sp)
/* 01EBD8 0041EBD8 8FAE006C */  lw          $t6, 0x6C($sp)
/* 01EBDC 0041EBDC 256FFFE8 */  addiu       $t7, $t3, -0x18
/* 01EBE0 0041EBE0 01CB802B */  sltu        $s0, $t6, $t3
/* 01EBE4 0041EBE4 1600FEE0 */  bnez        $s0, .L0041E768
/* 01EBE8 0041EBE8 AFAF0070 */   sw         $t7, 0x70($sp)
.L0041EBEC:
/* 01EBEC 0041EBEC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01EBF0 0041EBF0 8FB00014 */  lw          $s0, 0x14($sp)
/* 01EBF4 0041EBF4 27BD0070 */  addiu       $sp, $sp, 0x70
/* 01EBF8 0041EBF8 03E00008 */  jr          $ra
/* 01EBFC 0041EBFC 00000000 */   nop
