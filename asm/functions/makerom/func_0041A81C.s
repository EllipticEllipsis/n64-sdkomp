glabel func_0041A81C # 87
/* 01A81C 0041A81C 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 01A820 0041A820 279C8544 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF8544
/* 01A824 0041A824 0399E021 */  addu        $gp, $gp, $t9
/* 01A828 0041A828 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 01A82C 0041A82C AFA40060 */  sw          $a0, 0x60($sp)
/* 01A830 0041A830 AFA60068 */  sw          $a2, 0x68($sp)
/* 01A834 0041A834 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01A838 0041A838 8FAF0068 */  lw          $t7, 0x68($sp)
/* 01A83C 0041A83C AFA50064 */  sw          $a1, 0x64($sp)
/* 01A840 0041A840 AFAE005C */  sw          $t6, 0x5C($sp)
/* 01A844 0041A844 000FC100 */  sll         $t8, $t7, 4
/* 01A848 0041A848 8FA80064 */  lw          $t0, 0x64($sp)
/* 01A84C 0041A84C 8FAA005C */  lw          $t2, 0x5C($sp)
/* 01A850 0041A850 01D8C821 */  addu        $t9, $t6, $t8
/* 01A854 0041A854 AFB00014 */  sw          $s0, 0x14($sp)
/* 01A858 0041A858 AFB90060 */  sw          $t9, 0x60($sp)
/* 01A85C 0041A85C 272BFFF0 */  addiu       $t3, $t9, -0x10
/* 01A860 0041A860 01184821 */  addu        $t1, $t0, $t8
/* 01A864 0041A864 0159802B */  sltu        $s0, $t2, $t9
/* 01A868 0041A868 AFBF001C */  sw          $ra, 0x1C($sp)
/* 01A86C 0041A86C AFBC0018 */  sw          $gp, 0x18($sp)
/* 01A870 0041A870 AFA90064 */  sw          $t1, 0x64($sp)
/* 01A874 0041A874 12000105 */  beqz        $s0, .L0041AC8C
/* 01A878 0041A878 AFAB0060 */   sw         $t3, 0x60($sp)
.L0041A87C:
/* 01A87C 0041A87C 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01A880 0041A880 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A884 0041A884 24040000 */  addiu       $a0, $zero, 0x0
/* 01A888 0041A888 258DFFF0 */  addiu       $t5, $t4, -0x10
/* 01A88C 0041A88C AFAD0064 */  sw          $t5, 0x64($sp)
/* 01A890 0041A890 91AF0008 */  lbu         $t7, 0x8($t5)
/* 01A894 0041A894 24060000 */  addiu       $a2, $zero, 0x0
/* 01A898 0041A898 24070008 */  addiu       $a3, $zero, 0x8
/* 01A89C 0041A89C 0320F809 */  jalr        $t9
/* 01A8A0 0041A8A0 01E02825 */   move       $a1, $t7
/* 01A8A4 0041A8A4 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01A8A8 0041A8A8 AFA20020 */  sw          $v0, 0x20($sp)
/* 01A8AC 0041A8AC AFA30024 */  sw          $v1, 0x24($sp)
/* 01A8B0 0041A8B0 91C80009 */  lbu         $t0, 0x9($t6)
/* 01A8B4 0041A8B4 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01A8B8 0041A8B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A8BC 0041A8BC 0100C825 */  move        $t9, $t0
/* 01A8C0 0041A8C0 032B2821 */  addu        $a1, $t9, $t3
/* 01A8C4 0041A8C4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A8C8 0041A8C8 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01A8CC 0041A8CC 0008C7C3 */  sra         $t8, $t0, 31
/* 01A8D0 0041A8D0 00AB082B */  sltu        $at, $a1, $t3
/* 01A8D4 0041A8D4 00382021 */  addu        $a0, $at, $t8
/* 01A8D8 0041A8D8 24060000 */  addiu       $a2, $zero, 0x0
/* 01A8DC 0041A8DC 24070008 */  addiu       $a3, $zero, 0x8
/* 01A8E0 0041A8E0 0320F809 */  jalr        $t9
/* 01A8E4 0041A8E4 008A2021 */   addu       $a0, $a0, $t2
/* 01A8E8 0041A8E8 8FA90064 */  lw          $t1, 0x64($sp)
/* 01A8EC 0041A8EC AFA20028 */  sw          $v0, 0x28($sp)
/* 01A8F0 0041A8F0 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01A8F4 0041A8F4 912C000A */  lbu         $t4, 0xA($t1)
/* 01A8F8 0041A8F8 8FA9002C */  lw          $t1, 0x2C($sp)
/* 01A8FC 0041A8FC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A900 0041A900 01807825 */  move        $t7, $t4
/* 01A904 0041A904 01E92821 */  addu        $a1, $t7, $t1
/* 01A908 0041A908 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A90C 0041A90C 8FA80028 */  lw          $t0, 0x28($sp)
/* 01A910 0041A910 000C77C3 */  sra         $t6, $t4, 31
/* 01A914 0041A914 00A9082B */  sltu        $at, $a1, $t1
/* 01A918 0041A918 002E2021 */  addu        $a0, $at, $t6
/* 01A91C 0041A91C 24060000 */  addiu       $a2, $zero, 0x0
/* 01A920 0041A920 24070008 */  addiu       $a3, $zero, 0x8
/* 01A924 0041A924 0320F809 */  jalr        $t9
/* 01A928 0041A928 00882021 */   addu       $a0, $a0, $t0
/* 01A92C 0041A92C 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01A930 0041A930 AFA20030 */  sw          $v0, 0x30($sp)
/* 01A934 0041A934 AFA30034 */  sw          $v1, 0x34($sp)
/* 01A938 0041A938 91B8000B */  lbu         $t8, 0xB($t5)
/* 01A93C 0041A93C 8FAD0034 */  lw          $t5, 0x34($sp)
/* 01A940 0041A940 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A944 0041A944 03005825 */  move        $t3, $t8
/* 01A948 0041A948 016D2821 */  addu        $a1, $t3, $t5
/* 01A94C 0041A94C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A950 0041A950 8FAC0030 */  lw          $t4, 0x30($sp)
/* 01A954 0041A954 001857C3 */  sra         $t2, $t8, 31
/* 01A958 0041A958 00AD082B */  sltu        $at, $a1, $t5
/* 01A95C 0041A95C 002A2021 */  addu        $a0, $at, $t2
/* 01A960 0041A960 24060000 */  addiu       $a2, $zero, 0x0
/* 01A964 0041A964 24070008 */  addiu       $a3, $zero, 0x8
/* 01A968 0041A968 0320F809 */  jalr        $t9
/* 01A96C 0041A96C 008C2021 */   addu       $a0, $a0, $t4
/* 01A970 0041A970 8FB90064 */  lw          $t9, 0x64($sp)
/* 01A974 0041A974 AFA20038 */  sw          $v0, 0x38($sp)
/* 01A978 0041A978 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01A97C 0041A97C 932E000C */  lbu         $t6, 0xC($t9)
/* 01A980 0041A980 8FB9003C */  lw          $t9, 0x3C($sp)
/* 01A984 0041A984 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A988 0041A988 01C04825 */  move        $t1, $t6
/* 01A98C 0041A98C 01392821 */  addu        $a1, $t1, $t9
/* 01A990 0041A990 00B9082B */  sltu        $at, $a1, $t9
/* 01A994 0041A994 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A998 0041A998 8FB80038 */  lw          $t8, 0x38($sp)
/* 01A99C 0041A99C 000E47C3 */  sra         $t0, $t6, 31
/* 01A9A0 0041A9A0 00282021 */  addu        $a0, $at, $t0
/* 01A9A4 0041A9A4 24060000 */  addiu       $a2, $zero, 0x0
/* 01A9A8 0041A9A8 24070008 */  addiu       $a3, $zero, 0x8
/* 01A9AC 0041A9AC 0320F809 */  jalr        $t9
/* 01A9B0 0041A9B0 00982021 */   addu       $a0, $a0, $t8
/* 01A9B4 0041A9B4 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01A9B8 0041A9B8 AFA20040 */  sw          $v0, 0x40($sp)
/* 01A9BC 0041A9BC AFA30044 */  sw          $v1, 0x44($sp)
/* 01A9C0 0041A9C0 91EA000D */  lbu         $t2, 0xD($t7)
/* 01A9C4 0041A9C4 8FAF0044 */  lw          $t7, 0x44($sp)
/* 01A9C8 0041A9C8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A9CC 0041A9CC 01406825 */  move        $t5, $t2
/* 01A9D0 0041A9D0 01AF2821 */  addu        $a1, $t5, $t7
/* 01A9D4 0041A9D4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A9D8 0041A9D8 8FAE0040 */  lw          $t6, 0x40($sp)
/* 01A9DC 0041A9DC 000A67C3 */  sra         $t4, $t2, 31
/* 01A9E0 0041A9E0 00AF082B */  sltu        $at, $a1, $t7
/* 01A9E4 0041A9E4 002C2021 */  addu        $a0, $at, $t4
/* 01A9E8 0041A9E8 24060000 */  addiu       $a2, $zero, 0x0
/* 01A9EC 0041A9EC 24070008 */  addiu       $a3, $zero, 0x8
/* 01A9F0 0041A9F0 0320F809 */  jalr        $t9
/* 01A9F4 0041A9F4 008E2021 */   addu       $a0, $a0, $t6
/* 01A9F8 0041A9F8 8FAB0064 */  lw          $t3, 0x64($sp)
/* 01A9FC 0041A9FC AFA20048 */  sw          $v0, 0x48($sp)
/* 01AA00 0041AA00 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01AA04 0041AA04 9168000E */  lbu         $t0, 0xE($t3)
/* 01AA08 0041AA08 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01AA0C 0041AA0C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01AA10 0041AA10 0100C825 */  move        $t9, $t0
/* 01AA14 0041AA14 032B2821 */  addu        $a1, $t9, $t3
/* 01AA18 0041AA18 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AA1C 0041AA1C 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01AA20 0041AA20 0008C7C3 */  sra         $t8, $t0, 31
/* 01AA24 0041AA24 00AB082B */  sltu        $at, $a1, $t3
/* 01AA28 0041AA28 00382021 */  addu        $a0, $at, $t8
/* 01AA2C 0041AA2C 24060000 */  addiu       $a2, $zero, 0x0
/* 01AA30 0041AA30 24070008 */  addiu       $a3, $zero, 0x8
/* 01AA34 0041AA34 0320F809 */  jalr        $t9
/* 01AA38 0041AA38 008A2021 */   addu       $a0, $a0, $t2
/* 01AA3C 0041AA3C 8FA90064 */  lw          $t1, 0x64($sp)
/* 01AA40 0041AA40 AFA20050 */  sw          $v0, 0x50($sp)
/* 01AA44 0041AA44 AFA30054 */  sw          $v1, 0x54($sp)
/* 01AA48 0041AA48 912C000F */  lbu         $t4, 0xF($t1)
/* 01AA4C 0041AA4C 8FA90054 */  lw          $t1, 0x54($sp)
/* 01AA50 0041AA50 8FA80050 */  lw          $t0, 0x50($sp)
/* 01AA54 0041AA54 01807825 */  move        $t7, $t4
/* 01AA58 0041AA58 8FAD0060 */  lw          $t5, 0x60($sp)
/* 01AA5C 0041AA5C 01E9C821 */  addu        $t9, $t7, $t1
/* 01AA60 0041AA60 000C77C3 */  sra         $t6, $t4, 31
/* 01AA64 0041AA64 0329082B */  sltu        $at, $t9, $t1
/* 01AA68 0041AA68 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01AA6C 0041AA6C 002EC021 */  addu        $t8, $at, $t6
/* 01AA70 0041AA70 0308C021 */  addu        $t8, $t8, $t0
/* 01AA74 0041AA74 ADB80008 */  sw          $t8, 0x8($t5)
/* 01AA78 0041AA78 ADB9000C */  sw          $t9, 0xC($t5)
/* 01AA7C 0041AA7C 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01AA80 0041AA80 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AA84 0041AA84 24040000 */  addiu       $a0, $zero, 0x0
/* 01AA88 0041AA88 914B0000 */  lbu         $t3, 0x0($t2)
/* 01AA8C 0041AA8C 24060000 */  addiu       $a2, $zero, 0x0
/* 01AA90 0041AA90 24070008 */  addiu       $a3, $zero, 0x8
/* 01AA94 0041AA94 0320F809 */  jalr        $t9
/* 01AA98 0041AA98 01602825 */   move       $a1, $t3
/* 01AA9C 0041AA9C 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01AAA0 0041AAA0 AFA20020 */  sw          $v0, 0x20($sp)
/* 01AAA4 0041AAA4 AFA30024 */  sw          $v1, 0x24($sp)
/* 01AAA8 0041AAA8 918E0001 */  lbu         $t6, 0x1($t4)
/* 01AAAC 0041AAAC 8FB90024 */  lw          $t9, 0x24($sp)
/* 01AAB0 0041AAB0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01AAB4 0041AAB4 01C04825 */  move        $t1, $t6
/* 01AAB8 0041AAB8 01392821 */  addu        $a1, $t1, $t9
/* 01AABC 0041AABC 00B9082B */  sltu        $at, $a1, $t9
/* 01AAC0 0041AAC0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AAC4 0041AAC4 8FB80020 */  lw          $t8, 0x20($sp)
/* 01AAC8 0041AAC8 000E47C3 */  sra         $t0, $t6, 31
/* 01AACC 0041AACC 00282021 */  addu        $a0, $at, $t0
/* 01AAD0 0041AAD0 24060000 */  addiu       $a2, $zero, 0x0
/* 01AAD4 0041AAD4 24070008 */  addiu       $a3, $zero, 0x8
/* 01AAD8 0041AAD8 0320F809 */  jalr        $t9
/* 01AADC 0041AADC 00982021 */   addu       $a0, $a0, $t8
/* 01AAE0 0041AAE0 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01AAE4 0041AAE4 AFA20028 */  sw          $v0, 0x28($sp)
/* 01AAE8 0041AAE8 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01AAEC 0041AAEC 91ED0002 */  lbu         $t5, 0x2($t7)
/* 01AAF0 0041AAF0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01AAF4 0041AAF4 8FAC0028 */  lw          $t4, 0x28($sp)
/* 01AAF8 0041AAF8 01A05825 */  move        $t3, $t5
/* 01AAFC 0041AAFC 000D57C3 */  sra         $t2, $t5, 31
/* 01AB00 0041AB00 8FAD002C */  lw          $t5, 0x2C($sp)
/* 01AB04 0041AB04 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AB08 0041AB08 24060000 */  addiu       $a2, $zero, 0x0
/* 01AB0C 0041AB0C 016D2821 */  addu        $a1, $t3, $t5
/* 01AB10 0041AB10 00AD082B */  sltu        $at, $a1, $t5
/* 01AB14 0041AB14 002A2021 */  addu        $a0, $at, $t2
/* 01AB18 0041AB18 24070008 */  addiu       $a3, $zero, 0x8
/* 01AB1C 0041AB1C 0320F809 */  jalr        $t9
/* 01AB20 0041AB20 008C2021 */   addu       $a0, $a0, $t4
/* 01AB24 0041AB24 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01AB28 0041AB28 AFA20030 */  sw          $v0, 0x30($sp)
/* 01AB2C 0041AB2C AFA30034 */  sw          $v1, 0x34($sp)
/* 01AB30 0041AB30 91C80003 */  lbu         $t0, 0x3($t6)
/* 01AB34 0041AB34 8FAB0034 */  lw          $t3, 0x34($sp)
/* 01AB38 0041AB38 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01AB3C 0041AB3C 0100C825 */  move        $t9, $t0
/* 01AB40 0041AB40 032B2821 */  addu        $a1, $t9, $t3
/* 01AB44 0041AB44 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AB48 0041AB48 8FAA0030 */  lw          $t2, 0x30($sp)
/* 01AB4C 0041AB4C 0008C7C3 */  sra         $t8, $t0, 31
/* 01AB50 0041AB50 00AB082B */  sltu        $at, $a1, $t3
/* 01AB54 0041AB54 00382021 */  addu        $a0, $at, $t8
/* 01AB58 0041AB58 24060000 */  addiu       $a2, $zero, 0x0
/* 01AB5C 0041AB5C 24070008 */  addiu       $a3, $zero, 0x8
/* 01AB60 0041AB60 0320F809 */  jalr        $t9
/* 01AB64 0041AB64 008A2021 */   addu       $a0, $a0, $t2
/* 01AB68 0041AB68 8FA90064 */  lw          $t1, 0x64($sp)
/* 01AB6C 0041AB6C AFA20038 */  sw          $v0, 0x38($sp)
/* 01AB70 0041AB70 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01AB74 0041AB74 912F0004 */  lbu         $t7, 0x4($t1)
/* 01AB78 0041AB78 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01AB7C 0041AB7C 8FAE0038 */  lw          $t6, 0x38($sp)
/* 01AB80 0041AB80 01E06825 */  move        $t5, $t7
/* 01AB84 0041AB84 000F67C3 */  sra         $t4, $t7, 31
/* 01AB88 0041AB88 8FAF003C */  lw          $t7, 0x3C($sp)
/* 01AB8C 0041AB8C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AB90 0041AB90 24060000 */  addiu       $a2, $zero, 0x0
/* 01AB94 0041AB94 01AF2821 */  addu        $a1, $t5, $t7
/* 01AB98 0041AB98 00AF082B */  sltu        $at, $a1, $t7
/* 01AB9C 0041AB9C 002C2021 */  addu        $a0, $at, $t4
/* 01ABA0 0041ABA0 24070008 */  addiu       $a3, $zero, 0x8
/* 01ABA4 0041ABA4 0320F809 */  jalr        $t9
/* 01ABA8 0041ABA8 008E2021 */   addu       $a0, $a0, $t6
/* 01ABAC 0041ABAC 8FA80064 */  lw          $t0, 0x64($sp)
/* 01ABB0 0041ABB0 AFA20040 */  sw          $v0, 0x40($sp)
/* 01ABB4 0041ABB4 AFA30044 */  sw          $v1, 0x44($sp)
/* 01ABB8 0041ABB8 91180005 */  lbu         $t8, 0x5($t0)
/* 01ABBC 0041ABBC 8FAD0044 */  lw          $t5, 0x44($sp)
/* 01ABC0 0041ABC0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01ABC4 0041ABC4 03005825 */  move        $t3, $t8
/* 01ABC8 0041ABC8 016D2821 */  addu        $a1, $t3, $t5
/* 01ABCC 0041ABCC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01ABD0 0041ABD0 8FAC0040 */  lw          $t4, 0x40($sp)
/* 01ABD4 0041ABD4 001857C3 */  sra         $t2, $t8, 31
/* 01ABD8 0041ABD8 00AD082B */  sltu        $at, $a1, $t5
/* 01ABDC 0041ABDC 002A2021 */  addu        $a0, $at, $t2
/* 01ABE0 0041ABE0 24060000 */  addiu       $a2, $zero, 0x0
/* 01ABE4 0041ABE4 24070008 */  addiu       $a3, $zero, 0x8
/* 01ABE8 0041ABE8 0320F809 */  jalr        $t9
/* 01ABEC 0041ABEC 008C2021 */   addu       $a0, $a0, $t4
/* 01ABF0 0041ABF0 8FB90064 */  lw          $t9, 0x64($sp)
/* 01ABF4 0041ABF4 AFA20048 */  sw          $v0, 0x48($sp)
/* 01ABF8 0041ABF8 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01ABFC 0041ABFC 93290006 */  lbu         $t1, 0x6($t9)
/* 01AC00 0041AC00 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01AC04 0041AC04 8FA80048 */  lw          $t0, 0x48($sp)
/* 01AC08 0041AC08 01207825 */  move        $t7, $t1
/* 01AC0C 0041AC0C 000977C3 */  sra         $t6, $t1, 31
/* 01AC10 0041AC10 8FA9004C */  lw          $t1, 0x4C($sp)
/* 01AC14 0041AC14 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AC18 0041AC18 24060000 */  addiu       $a2, $zero, 0x0
/* 01AC1C 0041AC1C 01E92821 */  addu        $a1, $t7, $t1
/* 01AC20 0041AC20 00A9082B */  sltu        $at, $a1, $t1
/* 01AC24 0041AC24 002E2021 */  addu        $a0, $at, $t6
/* 01AC28 0041AC28 24070008 */  addiu       $a3, $zero, 0x8
/* 01AC2C 0041AC2C 0320F809 */  jalr        $t9
/* 01AC30 0041AC30 00882021 */   addu       $a0, $a0, $t0
/* 01AC34 0041AC34 8FB80064 */  lw          $t8, 0x64($sp)
/* 01AC38 0041AC38 AFA20050 */  sw          $v0, 0x50($sp)
/* 01AC3C 0041AC3C AFA30054 */  sw          $v1, 0x54($sp)
/* 01AC40 0041AC40 930A0007 */  lbu         $t2, 0x7($t8)
/* 01AC44 0041AC44 8FAF0054 */  lw          $t7, 0x54($sp)
/* 01AC48 0041AC48 8FAE0050 */  lw          $t6, 0x50($sp)
/* 01AC4C 0041AC4C 01406825 */  move        $t5, $t2
/* 01AC50 0041AC50 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01AC54 0041AC54 01AF4821 */  addu        $t1, $t5, $t7
/* 01AC58 0041AC58 000A67C3 */  sra         $t4, $t2, 31
/* 01AC5C 0041AC5C 012F082B */  sltu        $at, $t1, $t7
/* 01AC60 0041AC60 002C4021 */  addu        $t0, $at, $t4
/* 01AC64 0041AC64 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01AC68 0041AC68 010E4021 */  addu        $t0, $t0, $t6
/* 01AC6C 0041AC6C AD680000 */  sw          $t0, 0x0($t3)
/* 01AC70 0041AC70 AD690004 */  sw          $t1, 0x4($t3)
/* 01AC74 0041AC74 8FB90060 */  lw          $t9, 0x60($sp)
/* 01AC78 0041AC78 8FB8005C */  lw          $t8, 0x5C($sp)
/* 01AC7C 0041AC7C 272AFFF0 */  addiu       $t2, $t9, -0x10
/* 01AC80 0041AC80 0319802B */  sltu        $s0, $t8, $t9
/* 01AC84 0041AC84 1600FEFD */  bnez        $s0, .L0041A87C
/* 01AC88 0041AC88 AFAA0060 */   sw         $t2, 0x60($sp)
.L0041AC8C:
/* 01AC8C 0041AC8C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01AC90 0041AC90 8FB00014 */  lw          $s0, 0x14($sp)
/* 01AC94 0041AC94 27BD0060 */  addiu       $sp, $sp, 0x60
/* 01AC98 0041AC98 03E00008 */  jr          $ra
/* 01AC9C 0041AC9C 00000000 */   nop
