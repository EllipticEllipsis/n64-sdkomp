glabel func_0041479C # 52
/* 01479C 0041479C 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 0147A0 004147A0 279CE5C4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBFE5C4
/* 0147A4 004147A4 0399E021 */  addu        $gp, $gp, $t9
/* 0147A8 004147A8 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 0147AC 004147AC AFA40040 */  sw          $a0, 0x40($sp)
/* 0147B0 004147B0 8FAE0040 */  lw          $t6, 0x40($sp)
/* 0147B4 004147B4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0147B8 004147B8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0147BC 004147BC AFA50044 */  sw          $a1, 0x44($sp)
/* 0147C0 004147C0 AFA60048 */  sw          $a2, 0x48($sp)
/* 0147C4 004147C4 11C00004 */  beqz        $t6, .L004147D8
/* 0147C8 004147C8 AFA7004C */   sw         $a3, 0x4C($sp)
/* 0147CC 004147CC 8FAF0044 */  lw          $t7, 0x44($sp)
/* 0147D0 004147D0 15E00003 */  bnez        $t7, .L004147E0
/* 0147D4 004147D4 00000000 */   nop
.L004147D8:
/* 0147D8 004147D8 100000C1 */  b           .L00414AE0
/* 0147DC 004147DC 00001025 */   move       $v0, $zero
.L004147E0:
/* 0147E0 004147E0 8FB80048 */  lw          $t8, 0x48($sp)
/* 0147E4 004147E4 2719FFFF */  addiu       $t9, $t8, -0x1
/* 0147E8 004147E8 2F210002 */  sltiu       $at, $t9, 0x2
/* 0147EC 004147EC 14200006 */  bnez        $at, .L00414808
/* 0147F0 004147F0 AFB90048 */   sw         $t9, 0x48($sp)
/* 0147F4 004147F4 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 0147F8 004147F8 2408050B */  addiu       $t0, $zero, 0x50B
/* 0147FC 004147FC 00001025 */  move        $v0, $zero
/* 014800 00414800 100000B7 */  b           .L00414AE0
/* 014804 00414804 AC280000 */   sw         $t0, 0x0($at)
.L00414808:
/* 014808 00414808 8FA90040 */  lw          $t1, 0x40($sp)
/* 01480C 0041480C 8D2A0014 */  lw          $t2, 0x14($t1)
/* 014810 00414810 254BFFFF */  addiu       $t3, $t2, -0x1
/* 014814 00414814 15600006 */  bnez        $t3, .L00414830
/* 014818 00414818 AFAB002C */   sw         $t3, 0x2C($sp)
/* 01481C 0041481C 8FAC0044 */  lw          $t4, 0x44($sp)
/* 014820 00414820 8D8D0014 */  lw          $t5, 0x14($t4)
/* 014824 00414824 25AEFFFF */  addiu       $t6, $t5, -0x1
/* 014828 00414828 11C00006 */  beqz        $t6, .L00414844
/* 01482C 0041482C AFAE0028 */   sw         $t6, 0x28($sp)
.L00414830:
/* 014830 00414830 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 014834 00414834 240F0517 */  addiu       $t7, $zero, 0x517
/* 014838 00414838 00001025 */  move        $v0, $zero
/* 01483C 0041483C 100000A8 */  b           .L00414AE0
/* 014840 00414840 AC2F0000 */   sw         $t7, 0x0($at)
.L00414844:
/* 014844 00414844 8FB80044 */  lw          $t8, 0x44($sp)
/* 014848 00414848 8F190004 */  lw          $t9, 0x4($t8)
/* 01484C 0041484C 2F21000F */  sltiu       $at, $t9, 0xF
/* 014850 00414850 14200006 */  bnez        $at, .L0041486C
/* 014854 00414854 AFB90030 */   sw         $t9, 0x30($sp)
/* 014858 00414858 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 01485C 0041485C 24080514 */  addiu       $t0, $zero, 0x514
/* 014860 00414860 00001025 */  move        $v0, $zero
/* 014864 00414864 1000009E */  b           .L00414AE0
/* 014868 00414868 AC280000 */   sw         $t0, 0x0($at)
.L0041486C:
/* 01486C 0041486C 8FA9004C */  lw          $t1, 0x4C($sp)
/* 014870 00414870 11200028 */  beqz        $t1, .L00414914
/* 014874 00414874 00000000 */   nop
/* 014878 00414878 8FAA002C */  lw          $t2, 0x2C($sp)
/* 01487C 0041487C 8FAC0030 */  lw          $t4, 0x30($sp)
/* 014880 00414880 8FA80028 */  lw          $t0, 0x28($sp)
/* 014884 00414884 8F8F802C */  lw          $t7, %got(RO_10006660)($gp)
/* 014888 00414888 000A5900 */  sll         $t3, $t2, 4
/* 01488C 0041488C 016A5823 */  subu        $t3, $t3, $t2
/* 014890 00414890 000B58C0 */  sll         $t3, $t3, 3
/* 014894 00414894 000C68C0 */  sll         $t5, $t4, 3
/* 014898 00414898 00084900 */  sll         $t1, $t0, 4
/* 01489C 0041489C 016D7021 */  addu        $t6, $t3, $t5
/* 0148A0 004148A0 01284823 */  subu        $t1, $t1, $t0
/* 0148A4 004148A4 25EF6660 */  addiu       $t7, $t7, %lo(RO_10006660)
/* 0148A8 004148A8 01CFC021 */  addu        $t8, $t6, $t7
/* 0148AC 004148AC 000948C0 */  sll         $t1, $t1, 3
/* 0148B0 004148B0 8F190000 */  lw          $t9, 0x0($t8)
/* 0148B4 004148B4 012D6021 */  addu        $t4, $t1, $t5
/* 0148B8 004148B8 018F5821 */  addu        $t3, $t4, $t7
/* 0148BC 004148BC 8FAC0048 */  lw          $t4, 0x48($sp)
/* 0148C0 004148C0 000AC100 */  sll         $t8, $t2, 4
/* 0148C4 004148C4 AFB90038 */  sw          $t9, 0x38($sp)
/* 0148C8 004148C8 030AC023 */  subu        $t8, $t8, $t2
/* 0148CC 004148CC 0008C900 */  sll         $t9, $t0, 4
/* 0148D0 004148D0 8D6E0004 */  lw          $t6, 0x4($t3)
/* 0148D4 004148D4 0328C823 */  subu        $t9, $t9, $t0
/* 0148D8 004148D8 000C7900 */  sll         $t7, $t4, 4
/* 0148DC 004148DC 8F8A8030 */  lw          $t2, %got(D_1000A7E0)($gp)
/* 0148E0 004148E0 0019C900 */  sll         $t9, $t9, 4
/* 0148E4 004148E4 0018C100 */  sll         $t8, $t8, 4
/* 0148E8 004148E8 01EC7823 */  subu        $t7, $t7, $t4
/* 0148EC 004148EC 000F78C0 */  sll         $t7, $t7, 3
/* 0148F0 004148F0 03194821 */  addu        $t1, $t8, $t9
/* 0148F4 004148F4 012F5821 */  addu        $t3, $t1, $t7
/* 0148F8 004148F8 AFAE0034 */  sw          $t6, 0x34($sp)
/* 0148FC 004148FC 016D7021 */  addu        $t6, $t3, $t5
/* 014900 00414900 254AA7E0 */  addiu       $t2, $t2, %lo(D_1000A7E0)
/* 014904 00414904 01CA4021 */  addu        $t0, $t6, $t2
/* 014908 00414908 8D180000 */  lw          $t8, 0x0($t0)
/* 01490C 0041490C 10000027 */  b           .L004149AC
/* 014910 00414910 AFB80024 */   sw         $t8, 0x24($sp)
.L00414914:
/* 014914 00414914 8FB9002C */  lw          $t9, 0x2C($sp)
/* 014918 00414918 8FA90030 */  lw          $t1, 0x30($sp)
/* 01491C 0041491C 8FA80028 */  lw          $t0, 0x28($sp)
/* 014920 00414920 8F8D802C */  lw          $t5, %got(RO_10006660)($gp)
/* 014924 00414924 00196100 */  sll         $t4, $t9, 4
/* 014928 00414928 01996023 */  subu        $t4, $t4, $t9
/* 01492C 0041492C 000C60C0 */  sll         $t4, $t4, 3
/* 014930 00414930 000978C0 */  sll         $t7, $t1, 3
/* 014934 00414934 0008C100 */  sll         $t8, $t0, 4
/* 014938 00414938 018F5821 */  addu        $t3, $t4, $t7
/* 01493C 0041493C 0308C023 */  subu        $t8, $t8, $t0
/* 014940 00414940 25AD6660 */  addiu       $t5, $t5, %lo(RO_10006660)
/* 014944 00414944 016D7021 */  addu        $t6, $t3, $t5
/* 014948 00414948 0018C0C0 */  sll         $t8, $t8, 3
/* 01494C 0041494C 8DCA0004 */  lw          $t2, 0x4($t6)
/* 014950 00414950 030F4821 */  addu        $t1, $t8, $t7
/* 014954 00414954 012D6021 */  addu        $t4, $t1, $t5
/* 014958 00414958 8FA90048 */  lw          $t1, 0x48($sp)
/* 01495C 0041495C 00197100 */  sll         $t6, $t9, 4
/* 014960 00414960 AFAA0038 */  sw          $t2, 0x38($sp)
/* 014964 00414964 01D97023 */  subu        $t6, $t6, $t9
/* 014968 00414968 00085100 */  sll         $t2, $t0, 4
/* 01496C 0041496C 8D8B0000 */  lw          $t3, 0x0($t4)
/* 014970 00414970 01485023 */  subu        $t2, $t2, $t0
/* 014974 00414974 00096900 */  sll         $t5, $t1, 4
/* 014978 00414978 8F998030 */  lw          $t9, %got(D_1000A7E0)($gp)
/* 01497C 0041497C 000A5100 */  sll         $t2, $t2, 4
/* 014980 00414980 000E7100 */  sll         $t6, $t6, 4
/* 014984 00414984 01A96823 */  subu        $t5, $t5, $t1
/* 014988 00414988 000D68C0 */  sll         $t5, $t5, 3
/* 01498C 0041498C 01CAC021 */  addu        $t8, $t6, $t2
/* 014990 00414990 030D6021 */  addu        $t4, $t8, $t5
/* 014994 00414994 AFAB0034 */  sw          $t3, 0x34($sp)
/* 014998 00414998 018F5821 */  addu        $t3, $t4, $t7
/* 01499C 0041499C 2739A7E0 */  addiu       $t9, $t9, %lo(D_1000A7E0)
/* 0149A0 004149A0 01794021 */  addu        $t0, $t3, $t9
/* 0149A4 004149A4 8D0E0004 */  lw          $t6, 0x4($t0)
/* 0149A8 004149A8 AFAE0024 */  sw          $t6, 0x24($sp)
.L004149AC:
/* 0149AC 004149AC 8FAA0044 */  lw          $t2, 0x44($sp)
/* 0149B0 004149B0 8FB80034 */  lw          $t8, 0x34($sp)
/* 0149B4 004149B4 8FAB0038 */  lw          $t3, 0x38($sp)
/* 0149B8 004149B8 8D490008 */  lw          $t1, 0x8($t2)
/* 0149BC 004149BC 8FAC0040 */  lw          $t4, 0x40($sp)
/* 0149C0 004149C0 0138001B */  divu        $zero, $t1, $t8
/* 0149C4 004149C4 00006812 */  mflo        $t5
/* 0149C8 004149C8 AFAD003C */  sw          $t5, 0x3C($sp)
/* 0149CC 004149CC 8D8F0008 */  lw          $t7, 0x8($t4)
/* 0149D0 004149D0 016D0019 */  multu       $t3, $t5
/* 0149D4 004149D4 17000002 */  bnez        $t8, .L004149E0
/* 0149D8 004149D8 00000000 */   nop
/* 0149DC 004149DC 0007000D */  break       7
.L004149E0:
/* 0149E0 004149E0 0000C812 */  mflo        $t9
/* 0149E4 004149E4 01F9082B */  sltu        $at, $t7, $t9
/* 0149E8 004149E8 10200005 */  beqz        $at, .L00414A00
/* 0149EC 004149EC 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 0149F0 004149F0 2408050A */  addiu       $t0, $zero, 0x50A
/* 0149F4 004149F4 00001025 */  move        $v0, $zero
/* 0149F8 004149F8 10000039 */  b           .L00414AE0
/* 0149FC 004149FC AC280000 */   sw         $t0, 0x0($at)
.L00414A00:
/* 014A00 00414A00 8F8986E8 */  lw          $t1, %got(_elf_encode)($gp)
/* 014A04 00414A04 8FAE0048 */  lw          $t6, 0x48($sp)
/* 014A08 00414A08 8D290000 */  lw          $t1, 0x0($t1)
/* 014A0C 00414A0C 25CA0001 */  addiu       $t2, $t6, 0x1
/* 014A10 00414A10 1549001C */  bne         $t2, $t1, .L00414A84
/* 014A14 00414A14 00000000 */   nop
/* 014A18 00414A18 8FB80038 */  lw          $t8, 0x38($sp)
/* 014A1C 00414A1C 8FAC0034 */  lw          $t4, 0x34($sp)
/* 014A20 00414A20 170C0018 */  bne         $t8, $t4, .L00414A84
/* 014A24 00414A24 00000000 */   nop
/* 014A28 00414A28 8FAB0044 */  lw          $t3, 0x44($sp)
/* 014A2C 00414A2C 8FAF0040 */  lw          $t7, 0x40($sp)
/* 014A30 00414A30 8D6D0000 */  lw          $t5, 0x0($t3)
/* 014A34 00414A34 8DF90000 */  lw          $t9, 0x0($t7)
/* 014A38 00414A38 11B90008 */  beq         $t5, $t9, .L00414A5C
/* 014A3C 00414A3C 00000000 */   nop
/* 014A40 00414A40 03202025 */  move        $a0, $t9
/* 014A44 00414A44 8F99810C */  lw          $t9, %call16(memcpy)($gp)
/* 014A48 00414A48 01A02825 */  move        $a1, $t5
/* 014A4C 00414A4C 8D660008 */  lw          $a2, 0x8($t3)
/* 014A50 00414A50 0320F809 */  jalr        $t9
/* 014A54 00414A54 00000000 */   nop
/* 014A58 00414A58 8FBC0018 */  lw          $gp, 0x18($sp)
.L00414A5C:
/* 014A5C 00414A5C 8FA80044 */  lw          $t0, 0x44($sp)
/* 014A60 00414A60 8FAA0040 */  lw          $t2, 0x40($sp)
/* 014A64 00414A64 8D0E0004 */  lw          $t6, 0x4($t0)
/* 014A68 00414A68 AD4E0004 */  sw          $t6, 0x4($t2)
/* 014A6C 00414A6C 8FA90044 */  lw          $t1, 0x44($sp)
/* 014A70 00414A70 8FAC0040 */  lw          $t4, 0x40($sp)
/* 014A74 00414A74 8D380008 */  lw          $t8, 0x8($t1)
/* 014A78 00414A78 AD980008 */  sw          $t8, 0x8($t4)
/* 014A7C 00414A7C 10000018 */  b           .L00414AE0
/* 014A80 00414A80 8FA20040 */   lw         $v0, 0x40($sp)
.L00414A84:
/* 014A84 00414A84 8FAF003C */  lw          $t7, 0x3C($sp)
/* 014A88 00414A88 11E0000A */  beqz        $t7, .L00414AB4
/* 014A8C 00414A8C 00000000 */   nop
/* 014A90 00414A90 8FB90040 */  lw          $t9, 0x40($sp)
/* 014A94 00414A94 8FAD0044 */  lw          $t5, 0x44($sp)
/* 014A98 00414A98 01E03025 */  move        $a2, $t7
/* 014A9C 00414A9C 8F240000 */  lw          $a0, 0x0($t9)
/* 014AA0 00414AA0 8FB90024 */  lw          $t9, 0x24($sp)
/* 014AA4 00414AA4 8DA50000 */  lw          $a1, 0x0($t5)
/* 014AA8 00414AA8 0320F809 */  jalr        $t9
/* 014AAC 00414AAC 00000000 */   nop
/* 014AB0 00414AB0 8FBC0018 */  lw          $gp, 0x18($sp)
.L00414AB4:
/* 014AB4 00414AB4 8FAB0038 */  lw          $t3, 0x38($sp)
/* 014AB8 00414AB8 8FA8003C */  lw          $t0, 0x3C($sp)
/* 014ABC 00414ABC 8FAA0040 */  lw          $t2, 0x40($sp)
/* 014AC0 00414AC0 01680019 */  multu       $t3, $t0
/* 014AC4 00414AC4 00007012 */  mflo        $t6
/* 014AC8 00414AC8 AD4E0008 */  sw          $t6, 0x8($t2)
/* 014ACC 00414ACC 8FA90044 */  lw          $t1, 0x44($sp)
/* 014AD0 00414AD0 8FAC0040 */  lw          $t4, 0x40($sp)
/* 014AD4 00414AD4 8D380004 */  lw          $t8, 0x4($t1)
/* 014AD8 00414AD8 AD980004 */  sw          $t8, 0x4($t4)
/* 014ADC 00414ADC 8FA20040 */  lw          $v0, 0x40($sp)
.L00414AE0:
/* 014AE0 00414AE0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 014AE4 00414AE4 27BD0040 */  addiu       $sp, $sp, 0x40
/* 014AE8 00414AE8 03E00008 */  jr          $ra
/* 014AEC 00414AEC 00000000 */   nop