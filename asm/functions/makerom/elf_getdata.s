glabel elf_getdata # 112
/* 021C70 00421C70 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 021C74 00421C74 279C10F0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF10F0
/* 021C78 00421C78 0399E021 */  addu        $gp, $gp, $t9
/* 021C7C 00421C7C 27BDFF88 */  addiu       $sp, $sp, -0x78
/* 021C80 00421C80 AFA40078 */  sw          $a0, 0x78($sp)
/* 021C84 00421C84 8FAE0078 */  lw          $t6, 0x78($sp)
/* 021C88 00421C88 AFA5007C */  sw          $a1, 0x7C($sp)
/* 021C8C 00421C8C AFB00014 */  sw          $s0, 0x14($sp)
/* 021C90 00421C90 AFBF002C */  sw          $ra, 0x2C($sp)
/* 021C94 00421C94 AFBC0028 */  sw          $gp, 0x28($sp)
/* 021C98 00421C98 AFB40024 */  sw          $s4, 0x24($sp)
/* 021C9C 00421C9C AFB30020 */  sw          $s3, 0x20($sp)
/* 021CA0 00421CA0 AFB2001C */  sw          $s2, 0x1C($sp)
/* 021CA4 00421CA4 AFB10018 */  sw          $s1, 0x18($sp)
/* 021CA8 00421CA8 15C00003 */  bnez        $t6, .L00421CB8
/* 021CAC 00421CAC 8FB0007C */   lw         $s0, 0x7C($sp)
/* 021CB0 00421CB0 100000FF */  b           .L004220B0
/* 021CB4 00421CB4 00001025 */   move       $v0, $zero
.L00421CB8:
/* 021CB8 00421CB8 16000004 */  bnez        $s0, .L00421CCC
/* 021CBC 00421CBC 00000000 */   nop
/* 021CC0 00421CC0 8FAF0078 */  lw          $t7, 0x78($sp)
/* 021CC4 00421CC4 10000002 */  b           .L00421CD0
/* 021CC8 00421CC8 8DF00008 */   lw         $s0, 0x8($t7)
.L00421CCC:
/* 021CCC 00421CCC 8E10001C */  lw          $s0, 0x1C($s0)
.L00421CD0:
/* 021CD0 00421CD0 8FB80078 */  lw          $t8, 0x78($sp)
/* 021CD4 00421CD4 8F190018 */  lw          $t9, 0x18($t8)
/* 021CD8 00421CD8 13200004 */  beqz        $t9, .L00421CEC
/* 021CDC 00421CDC 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 021CE0 00421CE0 00001025 */  move        $v0, $zero
/* 021CE4 00421CE4 100000F2 */  b           .L004220B0
/* 021CE8 00421CE8 AC390000 */   sw         $t9, 0x0($at)
.L00421CEC:
/* 021CEC 00421CEC 16000003 */  bnez        $s0, .L00421CFC
/* 021CF0 00421CF0 00000000 */   nop
/* 021CF4 00421CF4 100000EE */  b           .L004220B0
/* 021CF8 00421CF8 00001025 */   move       $v0, $zero
.L00421CFC:
/* 021CFC 00421CFC 8E080018 */  lw          $t0, 0x18($s0)
/* 021D00 00421D00 8FA90078 */  lw          $t1, 0x78($sp)
/* 021D04 00421D04 11090005 */  beq         $t0, $t1, .L00421D1C
/* 021D08 00421D08 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 021D0C 00421D0C 240A0509 */  addiu       $t2, $zero, 0x509
/* 021D10 00421D10 00001025 */  move        $v0, $zero
/* 021D14 00421D14 100000E6 */  b           .L004220B0
/* 021D18 00421D18 AC2A0000 */   sw         $t2, 0x0($at)
.L00421D1C:
/* 021D1C 00421D1C 8E0B003C */  lw          $t3, 0x3C($s0)
/* 021D20 00421D20 316C0002 */  andi        $t4, $t3, 0x2
/* 021D24 00421D24 11800003 */  beqz        $t4, .L00421D34
/* 021D28 00421D28 00000000 */   nop
/* 021D2C 00421D2C 100000E0 */  b           .L004220B0
/* 021D30 00421D30 02001025 */   move       $v0, $s0
.L00421D34:
/* 021D34 00421D34 8F8E86F4 */  lw          $t6, %got(_elf_work)($gp)
/* 021D38 00421D38 8FAD0078 */  lw          $t5, 0x78($sp)
/* 021D3C 00421D3C 8E0F0024 */  lw          $t7, 0x24($s0)
/* 021D40 00421D40 8DCE0000 */  lw          $t6, 0x0($t6)
/* 021D44 00421D44 8DB10004 */  lw          $s1, 0x4($t5)
/* 021D48 00421D48 11E00004 */  beqz        $t7, .L00421D5C
/* 021D4C 00421D4C AE0E0014 */   sw         $t6, 0x14($s0)
/* 021D50 00421D50 8E180028 */  lw          $t8, 0x28($s0)
/* 021D54 00421D54 17000006 */  bnez        $t8, .L00421D70
/* 021D58 00421D58 00000000 */   nop
.L00421D5C:
/* 021D5C 00421D5C 8E19003C */  lw          $t9, 0x3C($s0)
/* 021D60 00421D60 02001025 */  move        $v0, $s0
/* 021D64 00421D64 37280002 */  ori         $t0, $t9, 0x2
/* 021D68 00421D68 100000D1 */  b           .L004220B0
/* 021D6C 00421D6C AE08003C */   sw         $t0, 0x3C($s0)
.L00421D70:
/* 021D70 00421D70 8E290048 */  lw          $t1, 0x48($s1)
/* 021D74 00421D74 24010002 */  addiu       $at, $zero, 0x2
/* 021D78 00421D78 15210003 */  bne         $t1, $at, .L00421D88
/* 021D7C 00421D7C 00000000 */   nop
/* 021D80 00421D80 1000000C */  b           .L00421DB4
/* 021D84 00421D84 24120001 */   addiu      $s2, $zero, 0x1
.L00421D88:
/* 021D88 00421D88 8E2A0048 */  lw          $t2, 0x48($s1)
/* 021D8C 00421D8C 24010001 */  addiu       $at, $zero, 0x1
/* 021D90 00421D90 15410003 */  bne         $t2, $at, .L00421DA0
/* 021D94 00421D94 00000000 */   nop
/* 021D98 00421D98 10000006 */  b           .L00421DB4
/* 021D9C 00421D9C 00009025 */   move       $s2, $zero
.L00421DA0:
/* 021DA0 00421DA0 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 021DA4 00421DA4 240B0505 */  addiu       $t3, $zero, 0x505
/* 021DA8 00421DA8 00001025 */  move        $v0, $zero
/* 021DAC 00421DAC 100000C0 */  b           .L004220B0
/* 021DB0 00421DB0 AC2B0000 */   sw         $t3, 0x0($at)
.L00421DB4:
/* 021DB4 00421DB4 1240001C */  beqz        $s2, .L00421E28
/* 021DB8 00421DB8 00000000 */   nop
/* 021DBC 00421DBC 8FAC0078 */  lw          $t4, 0x78($sp)
/* 021DC0 00421DC0 8D8D0010 */  lw          $t5, 0x10($t4)
/* 021DC4 00421DC4 AFAD0050 */  sw          $t5, 0x50($sp)
/* 021DC8 00421DC8 8DAF003C */  lw          $t7, 0x3C($t5)
/* 021DCC 00421DCC 8DAE0038 */  lw          $t6, 0x38($t5)
/* 021DD0 00421DD0 01E0C025 */  move        $t8, $t7
/* 021DD4 00421DD4 AFB8004C */  sw          $t8, 0x4C($sp)
/* 021DD8 00421DD8 8E190004 */  lw          $t9, 0x4($s0)
/* 021DDC 00421DDC AFB90048 */  sw          $t9, 0x48($sp)
/* 021DE0 00421DE0 8FA80048 */  lw          $t0, 0x48($sp)
/* 021DE4 00421DE4 11000029 */  beqz        $t0, .L00421E8C
/* 021DE8 00421DE8 2F010002 */   sltiu      $at, $t8, 0x2
/* 021DEC 00421DEC 14200027 */  bnez        $at, .L00421E8C
/* 021DF0 00421DF0 00000000 */   nop
/* 021DF4 00421DF4 8F9981CC */  lw          $t9, %call16(_elf64_fsize)($gp)
/* 021DF8 00421DF8 01002025 */  move        $a0, $t0
/* 021DFC 00421DFC 24050001 */  addiu       $a1, $zero, 0x1
/* 021E00 00421E00 0320F809 */  jalr        $t9
/* 021E04 00421E04 8E260044 */   lw         $a2, 0x44($s1)
/* 021E08 00421E08 8FA9004C */  lw          $t1, 0x4C($sp)
/* 021E0C 00421E0C 8FBC0028 */  lw          $gp, 0x28($sp)
/* 021E10 00421E10 1049001E */  beq         $v0, $t1, .L00421E8C
/* 021E14 00421E14 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 021E18 00421E18 240A020C */  addiu       $t2, $zero, 0x20C
/* 021E1C 00421E1C 00001025 */  move        $v0, $zero
/* 021E20 00421E20 100000A3 */  b           .L004220B0
/* 021E24 00421E24 AC2A0000 */   sw         $t2, 0x0($at)
.L00421E28:
/* 021E28 00421E28 8FAB0078 */  lw          $t3, 0x78($sp)
/* 021E2C 00421E2C 8D6C0010 */  lw          $t4, 0x10($t3)
/* 021E30 00421E30 AFAC0044 */  sw          $t4, 0x44($sp)
/* 021E34 00421E34 8D8D0024 */  lw          $t5, 0x24($t4)
/* 021E38 00421E38 AFAD0040 */  sw          $t5, 0x40($sp)
/* 021E3C 00421E3C 8E0E0004 */  lw          $t6, 0x4($s0)
/* 021E40 00421E40 AFAE003C */  sw          $t6, 0x3C($sp)
/* 021E44 00421E44 8FAF003C */  lw          $t7, 0x3C($sp)
/* 021E48 00421E48 11E00010 */  beqz        $t7, .L00421E8C
/* 021E4C 00421E4C 2DA10002 */   sltiu      $at, $t5, 0x2
/* 021E50 00421E50 1420000E */  bnez        $at, .L00421E8C
/* 021E54 00421E54 00000000 */   nop
/* 021E58 00421E58 8F9981F4 */  lw          $t9, %call16(_elf32_fsize)($gp)
/* 021E5C 00421E5C 01E02025 */  move        $a0, $t7
/* 021E60 00421E60 24050001 */  addiu       $a1, $zero, 0x1
/* 021E64 00421E64 0320F809 */  jalr        $t9
/* 021E68 00421E68 8E260044 */   lw         $a2, 0x44($s1)
/* 021E6C 00421E6C 8FB90040 */  lw          $t9, 0x40($sp)
/* 021E70 00421E70 8FBC0028 */  lw          $gp, 0x28($sp)
/* 021E74 00421E74 10590005 */  beq         $v0, $t9, .L00421E8C
/* 021E78 00421E78 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 021E7C 00421E7C 2418020C */  addiu       $t8, $zero, 0x20C
/* 021E80 00421E80 00001025 */  move        $v0, $zero
/* 021E84 00421E84 1000008A */  b           .L004220B0
/* 021E88 00421E88 AC380000 */   sw         $t8, 0x0($at)
.L00421E8C:
/* 021E8C 00421E8C 8E080024 */  lw          $t0, 0x24($s0)
/* 021E90 00421E90 0500000C */  bltz        $t0, .L00421EC4
/* 021E94 00421E94 00000000 */   nop
/* 021E98 00421E98 8E090024 */  lw          $t1, 0x24($s0)
/* 021E9C 00421E9C 8E2A0034 */  lw          $t2, 0x34($s1)
/* 021EA0 00421EA0 012A082B */  sltu        $at, $t1, $t2
/* 021EA4 00421EA4 10200007 */  beqz        $at, .L00421EC4
/* 021EA8 00421EA8 00000000 */   nop
/* 021EAC 00421EAC 8E2B0034 */  lw          $t3, 0x34($s1)
/* 021EB0 00421EB0 8E0C0024 */  lw          $t4, 0x24($s0)
/* 021EB4 00421EB4 8E0D0028 */  lw          $t5, 0x28($s0)
/* 021EB8 00421EB8 016C7023 */  subu        $t6, $t3, $t4
/* 021EBC 00421EBC 01CD082B */  sltu        $at, $t6, $t5
/* 021EC0 00421EC0 10200005 */  beqz        $at, .L00421ED8
.L00421EC4:
/* 021EC4 00421EC4 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 021EC8 00421EC8 240F020A */  addiu       $t7, $zero, 0x20A
/* 021ECC 00421ECC 00001025 */  move        $v0, $zero
/* 021ED0 00421ED0 10000077 */  b           .L004220B0
/* 021ED4 00421ED4 AC2F0000 */   sw         $t7, 0x0($at)
.L00421ED8:
/* 021ED8 00421ED8 8E390028 */  lw          $t9, 0x28($s1)
/* 021EDC 00421EDC 8E180024 */  lw          $t8, 0x24($s0)
/* 021EE0 00421EE0 02202025 */  move        $a0, $s1
/* 021EE4 00421EE4 03384021 */  addu        $t0, $t9, $t8
/* 021EE8 00421EE8 AFA80058 */  sw          $t0, 0x58($sp)
/* 021EEC 00421EEC 8E090028 */  lw          $t1, 0x28($s0)
/* 021EF0 00421EF0 8F998218 */  lw          $t9, %call16(_elf_vm)($gp)
/* 021EF4 00421EF4 AFA90060 */  sw          $t1, 0x60($sp)
/* 021EF8 00421EF8 8E0A0004 */  lw          $t2, 0x4($s0)
/* 021EFC 00421EFC AFAA005C */  sw          $t2, 0x5C($sp)
/* 021F00 00421F00 8E2B0044 */  lw          $t3, 0x44($s1)
/* 021F04 00421F04 AFAB006C */  sw          $t3, 0x6C($sp)
/* 021F08 00421F08 8E060028 */  lw          $a2, 0x28($s0)
/* 021F0C 00421F0C 0320F809 */  jalr        $t9
/* 021F10 00421F10 8E050024 */   lw         $a1, 0x24($s0)
/* 021F14 00421F14 10400003 */  beqz        $v0, .L00421F24
/* 021F18 00421F18 8FBC0028 */   lw         $gp, 0x28($sp)
/* 021F1C 00421F1C 10000064 */  b           .L004220B0
/* 021F20 00421F20 00001025 */   move       $v0, $zero
.L00421F24:
/* 021F24 00421F24 8E33000C */  lw          $s3, 0xC($s1)
/* 021F28 00421F28 24010001 */  addiu       $at, $zero, 0x1
/* 021F2C 00421F2C 12610005 */  beq         $s3, $at, .L00421F44
/* 021F30 00421F30 24010002 */   addiu      $at, $zero, 0x2
/* 021F34 00421F34 12610031 */  beq         $s3, $at, .L00421FFC
/* 021F38 00421F38 00000000 */   nop
/* 021F3C 00421F3C 1000003F */  b           .L0042203C
/* 021F40 00421F40 00000000 */   nop
.L00421F44:
/* 021F44 00421F44 12400003 */  beqz        $s2, .L00421F54
/* 021F48 00421F48 00000000 */   nop
/* 021F4C 00421F4C 10000002 */  b           .L00421F58
/* 021F50 00421F50 2414000F */   addiu      $s4, $zero, 0xF
.L00421F54:
/* 021F54 00421F54 2414000F */  addiu       $s4, $zero, 0xF
.L00421F58:
/* 021F58 00421F58 8E0C0004 */  lw          $t4, 0x4($s0)
/* 021F5C 00421F5C 0194082B */  sltu        $at, $t4, $s4
/* 021F60 00421F60 14200005 */  bnez        $at, .L00421F78
/* 021F64 00421F64 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 021F68 00421F68 240E0002 */  addiu       $t6, $zero, 0x2
/* 021F6C 00421F6C 00001025 */  move        $v0, $zero
/* 021F70 00421F70 1000004F */  b           .L004220B0
/* 021F74 00421F74 AC2E0000 */   sw         $t6, 0x0($at)
.L00421F78:
/* 021F78 00421F78 8E0D0008 */  lw          $t5, 0x8($s0)
/* 021F7C 00421F7C 8FAF0060 */  lw          $t7, 0x60($sp)
/* 021F80 00421F80 01ED082B */  sltu        $at, $t7, $t5
/* 021F84 00421F84 1420001D */  bnez        $at, .L00421FFC
/* 021F88 00421F88 00000000 */   nop
/* 021F8C 00421F8C 12400008 */  beqz        $s2, .L00421FB0
/* 021F90 00421F90 00000000 */   nop
/* 021F94 00421F94 8E190004 */  lw          $t9, 0x4($s0)
/* 021F98 00421F98 8F88802C */  lw          $t0, %got(RO_1000674C)($gp)
/* 021F9C 00421F9C 0019C080 */  sll         $t8, $t9, 2
/* 021FA0 00421FA0 2508674C */  addiu       $t0, $t0, %lo(RO_1000674C)
/* 021FA4 00421FA4 03084821 */  addu        $t1, $t8, $t0
/* 021FA8 00421FA8 10000007 */  b           .L00421FC8
/* 021FAC 00421FAC 8D330000 */   lw         $s3, 0x0($t1)
.L00421FB0:
/* 021FB0 00421FB0 8E0A0004 */  lw          $t2, 0x4($s0)
/* 021FB4 00421FB4 8F8C802C */  lw          $t4, %got(RO_10006710)($gp)
/* 021FB8 00421FB8 000A5880 */  sll         $t3, $t2, 2
/* 021FBC 00421FBC 258C6710 */  addiu       $t4, $t4, %lo(RO_10006710)
/* 021FC0 00421FC0 016C7021 */  addu        $t6, $t3, $t4
/* 021FC4 00421FC4 8DD30000 */  lw          $s3, 0x0($t6)
.L00421FC8:
/* 021FC8 00421FC8 8E0D0024 */  lw          $t5, 0x24($s0)
/* 021FCC 00421FCC 01B3001B */  divu        $zero, $t5, $s3
/* 021FD0 00421FD0 00007810 */  mfhi        $t7
/* 021FD4 00421FD4 16600002 */  bnez        $s3, .L00421FE0
/* 021FD8 00421FD8 00000000 */   nop
/* 021FDC 00421FDC 0007000D */  break       7
.L00421FE0:
/* 021FE0 00421FE0 15E00006 */  bnez        $t7, .L00421FFC
/* 021FE4 00421FE4 00000000 */   nop
/* 021FE8 00421FE8 8E390028 */  lw          $t9, 0x28($s1)
/* 021FEC 00421FEC 8E180024 */  lw          $t8, 0x24($s0)
/* 021FF0 00421FF0 03384021 */  addu        $t0, $t9, $t8
/* 021FF4 00421FF4 10000016 */  b           .L00422050
/* 021FF8 00421FF8 AE080000 */   sw         $t0, 0x0($s0)
.L00421FFC:
/* 021FFC 00421FFC 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 022000 00422000 8E040008 */  lw          $a0, 0x8($s0)
/* 022004 00422004 0320F809 */  jalr        $t9
/* 022008 00422008 00000000 */   nop
/* 02200C 0042200C 8FBC0028 */  lw          $gp, 0x28($sp)
/* 022010 00422010 00409825 */  move        $s3, $v0
/* 022014 00422014 16600006 */  bnez        $s3, .L00422030
/* 022018 00422018 AE130034 */   sw         $s3, 0x34($s0)
/* 02201C 0042201C 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 022020 00422020 2409040A */  addiu       $t1, $zero, 0x40A
/* 022024 00422024 00001025 */  move        $v0, $zero
/* 022028 00422028 10000021 */  b           .L004220B0
/* 02202C 0042202C AC290000 */   sw         $t1, 0x0($at)
.L00422030:
/* 022030 00422030 8E0A0034 */  lw          $t2, 0x34($s0)
/* 022034 00422034 10000006 */  b           .L00422050
/* 022038 00422038 AE0A0000 */   sw         $t2, 0x0($s0)
.L0042203C:
/* 02203C 0042203C 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 022040 00422040 240B0001 */  addiu       $t3, $zero, 0x1
/* 022044 00422044 00001025 */  move        $v0, $zero
/* 022048 00422048 10000019 */  b           .L004220B0
/* 02204C 0042204C AC2B0000 */   sw         $t3, 0x0($at)
.L00422050:
/* 022050 00422050 1240000A */  beqz        $s2, .L0042207C
/* 022054 00422054 00000000 */   nop
/* 022058 00422058 8F9981DC */  lw          $t9, %call16(_elf64_xlatetom)($gp)
/* 02205C 0042205C 02002025 */  move        $a0, $s0
/* 022060 00422060 27A50058 */  addiu       $a1, $sp, 0x58
/* 022064 00422064 0320F809 */  jalr        $t9
/* 022068 00422068 8E260040 */   lw         $a2, 0x40($s1)
/* 02206C 0042206C 1440000C */  bnez        $v0, .L004220A0
/* 022070 00422070 8FBC0028 */   lw         $gp, 0x28($sp)
/* 022074 00422074 1000000E */  b           .L004220B0
/* 022078 00422078 00001025 */   move       $v0, $zero
.L0042207C:
/* 02207C 0042207C 8F998200 */  lw          $t9, %call16(_elf32_xlatetom)($gp)
/* 022080 00422080 02002025 */  move        $a0, $s0
/* 022084 00422084 27A50058 */  addiu       $a1, $sp, 0x58
/* 022088 00422088 0320F809 */  jalr        $t9
/* 02208C 0042208C 8E260040 */   lw         $a2, 0x40($s1)
/* 022090 00422090 14400003 */  bnez        $v0, .L004220A0
/* 022094 00422094 8FBC0028 */   lw         $gp, 0x28($sp)
/* 022098 00422098 10000005 */  b           .L004220B0
/* 02209C 0042209C 00001025 */   move       $v0, $zero
.L004220A0:
/* 0220A0 004220A0 8E0C003C */  lw          $t4, 0x3C($s0)
/* 0220A4 004220A4 02001025 */  move        $v0, $s0
/* 0220A8 004220A8 358E0002 */  ori         $t6, $t4, 0x2
/* 0220AC 004220AC AE0E003C */  sw          $t6, 0x3C($s0)
.L004220B0:
/* 0220B0 004220B0 8FBF002C */  lw          $ra, 0x2C($sp)
/* 0220B4 004220B4 8FB00014 */  lw          $s0, 0x14($sp)
/* 0220B8 004220B8 8FB10018 */  lw          $s1, 0x18($sp)
/* 0220BC 004220BC 8FB2001C */  lw          $s2, 0x1C($sp)
/* 0220C0 004220C0 8FB30020 */  lw          $s3, 0x20($sp)
/* 0220C4 004220C4 8FB40024 */  lw          $s4, 0x24($sp)
/* 0220C8 004220C8 03E00008 */  jr          $ra
/* 0220CC 004220CC 27BD0078 */   addiu      $sp, $sp, 0x78
