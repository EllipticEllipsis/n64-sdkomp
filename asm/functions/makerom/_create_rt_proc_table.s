.section .rodata
glabel STR_10007B18
/* 047B18 10007B18 */ .asciz "_procedure_table"
                      .balign 4

glabel STR_10007B2C
/* 047B2C 10007B2C */ .asciz "_procedure_table"
                      .balign 4

glabel STR_10007B40
/* 047B40 10007B40 */ .asciz "Cannot open %s\n"
                      .balign 4

glabel STR_10007B50
/* 047B50 10007B50 */ .asciz "Cannot mmap the runtime proc table of %s\n"
                      .balign 4

glabel STR_10007B7C
/* 047B7C 10007B7C */ .asciz "_procedure_string_table"
                      .balign 4

glabel STR_10007B94
/* 047B94 10007B94 */ .asciz "_procedure_string_table"
                      .balign 4

glabel STR_10007BAC
/* 047BAC 10007BAC */ .asciz "_procedure_table_size"
                      .balign 4


.section .text
glabel _create_rt_proc_table # 284
/* 02EF60 0042EF60 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02EF64 0042EF64 279C3E00 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE3E00
/* 02EF68 0042EF68 0399E021 */  addu        $gp, $gp, $t9
/* 02EF6C 0042EF6C 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 02EF70 0042EF70 AFB10024 */  sw          $s1, 0x24($sp)
/* 02EF74 0042EF74 8F998288 */  lw          $t9, %call16(elfhash)($gp)
/* 02EF78 0042EF78 00808825 */  move        $s1, $a0
/* 02EF7C 0042EF7C 8F84802C */  lw          $a0, %got(STR_10007B2C)($gp)
/* 02EF80 0042EF80 AFBF0044 */  sw          $ra, 0x44($sp)
/* 02EF84 0042EF84 AFB7003C */  sw          $s7, 0x3C($sp)
/* 02EF88 0042EF88 00A0B825 */  move        $s7, $a1
/* 02EF8C 0042EF8C AFBC0040 */  sw          $gp, 0x40($sp)
/* 02EF90 0042EF90 AFB60038 */  sw          $s6, 0x38($sp)
/* 02EF94 0042EF94 AFB50034 */  sw          $s5, 0x34($sp)
/* 02EF98 0042EF98 AFB40030 */  sw          $s4, 0x30($sp)
/* 02EF9C 0042EF9C AFB3002C */  sw          $s3, 0x2C($sp)
/* 02EFA0 0042EFA0 AFB20028 */  sw          $s2, 0x28($sp)
/* 02EFA4 0042EFA4 AFB00020 */  sw          $s0, 0x20($sp)
/* 02EFA8 0042EFA8 AFA60068 */  sw          $a2, 0x68($sp)
/* 02EFAC 0042EFAC 0320F809 */  jalr        $t9
/* 02EFB0 0042EFB0 24847B2C */   addiu      $a0, $a0, %lo(STR_10007B2C)
/* 02EFB4 0042EFB4 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02EFB8 0042EFB8 02202025 */  move        $a0, $s1
/* 02EFBC 0042EFBC 00403025 */  move        $a2, $v0
/* 02EFC0 0042EFC0 8F9982A0 */  lw          $t9, %call16(search_symbol_using_hash)($gp)
/* 02EFC4 0042EFC4 8F85802C */  lw          $a1, %got(STR_10007B18)($gp)
/* 02EFC8 0042EFC8 0320F809 */  jalr        $t9
/* 02EFCC 0042EFCC 24A57B18 */   addiu      $a1, $a1, %lo(STR_10007B18)
/* 02EFD0 0042EFD0 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02EFD4 0042EFD4 1C400003 */  bgtz        $v0, .L0042EFE4
/* 02EFD8 0042EFD8 0040A025 */   move       $s4, $v0
/* 02EFDC 0042EFDC 100000BB */  b           .L0042F2CC
/* 02EFE0 0042EFE0 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042EFE4:
/* 02EFE4 0042EFE4 8F9983EC */  lw          $t9, %call16(obj_dynsym_value)($gp)
/* 02EFE8 0042EFE8 02202025 */  move        $a0, $s1
/* 02EFEC 0042EFEC 02802825 */  move        $a1, $s4
/* 02EFF0 0042EFF0 0320F809 */  jalr        $t9
/* 02EFF4 0042EFF4 00000000 */   nop
/* 02EFF8 0042EFF8 1040001E */  beqz        $v0, .L0042F074
/* 02EFFC 0042EFFC 8FBC0040 */   lw         $gp, 0x40($sp)
/* 02F000 0042F000 8F9983EC */  lw          $t9, %call16(obj_dynsym_value)($gp)
/* 02F004 0042F004 02202025 */  move        $a0, $s1
/* 02F008 0042F008 02802825 */  move        $a1, $s4
/* 02F00C 0042F00C 0320F809 */  jalr        $t9
/* 02F010 0042F010 00000000 */   nop
/* 02F014 0042F014 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F018 0042F018 00408025 */  move        $s0, $v0
/* 02F01C 0042F01C 02202025 */  move        $a0, $s1
/* 02F020 0042F020 8F9982D4 */  lw          $t9, %call16(obj_map_diff)($gp)
/* 02F024 0042F024 0320F809 */  jalr        $t9
/* 02F028 0042F028 00000000 */   nop
/* 02F02C 0042F02C 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F030 0042F030 02202025 */  move        $a0, $s1
/* 02F034 0042F034 02802825 */  move        $a1, $s4
/* 02F038 0042F038 8F998410 */  lw          $t9, %call16(obj_set_dynsym_got)($gp)
/* 02F03C 0042F03C 02023023 */  subu        $a2, $s0, $v0
/* 02F040 0042F040 0320F809 */  jalr        $t9
/* 02F044 0042F044 00000000 */   nop
/* 02F048 0042F048 12E00008 */  beqz        $s7, .L0042F06C
/* 02F04C 0042F04C 8FBC0040 */   lw         $gp, 0x40($sp)
/* 02F050 0042F050 8F99840C */  lw          $t9, %call16(obj_dynsym_got)($gp)
/* 02F054 0042F054 02202025 */  move        $a0, $s1
/* 02F058 0042F058 02802825 */  move        $a1, $s4
/* 02F05C 0042F05C 0320F809 */  jalr        $t9
/* 02F060 0042F060 00000000 */   nop
/* 02F064 0042F064 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F068 0042F068 AEE20000 */  sw          $v0, 0x0($s7)
.L0042F06C:
/* 02F06C 0042F06C 10000097 */  b           .L0042F2CC
/* 02F070 0042F070 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042F074:
/* 02F074 0042F074 8F99842C */  lw          $t9, %call16(obj_pelfhdr)($gp)
/* 02F078 0042F078 02202025 */  move        $a0, $s1
/* 02F07C 0042F07C 0320F809 */  jalr        $t9
/* 02F080 0042F080 00000000 */   nop
/* 02F084 0042F084 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F088 0042F088 AFA20048 */  sw          $v0, 0x48($sp)
/* 02F08C 0042F08C 02202025 */  move        $a0, $s1
/* 02F090 0042F090 8F998430 */  lw          $t9, %call16(obj_pproghdr)($gp)
/* 02F094 0042F094 0320F809 */  jalr        $t9
/* 02F098 0042F098 00000000 */   nop
/* 02F09C 0042F09C 8FAE0048 */  lw          $t6, 0x48($sp)
/* 02F0A0 0042F0A0 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F0A4 0042F0A4 0000A825 */  move        $s5, $zero
/* 02F0A8 0042F0A8 95C3002C */  lhu         $v1, 0x2C($t6)
/* 02F0AC 0042F0AC 50600087 */  beql        $v1, $zero, .L0042F2CC
/* 02F0B0 0042F0B0 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02F0B4 0042F0B4 8F968044 */  lw          $s6, %got(__iob)($gp)
/* 02F0B8 0042F0B8 00409025 */  move        $s2, $v0
/* 02F0BC 0042F0BC 26D60020 */  addiu       $s6, $s6, 0x20
.L0042F0C0:
/* 02F0C0 0042F0C0 8E4F0000 */  lw          $t7, 0x0($s2)
/* 02F0C4 0042F0C4 3C017000 */  lui         $at, (0x70000001 >> 16)
/* 02F0C8 0042F0C8 34210001 */  ori         $at, $at, (0x70000001 & 0xFFFF)
/* 02F0CC 0042F0CC 55E1007B */  bnel        $t7, $at, .L0042F2BC
/* 02F0D0 0042F0D0 26B50001 */   addiu      $s5, $s5, 0x1
/* 02F0D4 0042F0D4 8F9983B8 */  lw          $t9, %call16(obj_path)($gp)
/* 02F0D8 0042F0D8 02202025 */  move        $a0, $s1
/* 02F0DC 0042F0DC 0320F809 */  jalr        $t9
/* 02F0E0 0042F0E0 00000000 */   nop
/* 02F0E4 0042F0E4 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F0E8 0042F0E8 00402025 */  move        $a0, $v0
/* 02F0EC 0042F0EC 00002825 */  move        $a1, $zero
/* 02F0F0 0042F0F0 8F9980B8 */  lw          $t9, %call16(open)($gp)
/* 02F0F4 0042F0F4 0320F809 */  jalr        $t9
/* 02F0F8 0042F0F8 00000000 */   nop
/* 02F0FC 0042F0FC 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F100 0042F100 04410012 */  bgez        $v0, .L0042F14C
/* 02F104 0042F104 00408025 */   move       $s0, $v0
/* 02F108 0042F108 8F9983B8 */  lw          $t9, %call16(obj_path)($gp)
/* 02F10C 0042F10C 02202025 */  move        $a0, $s1
/* 02F110 0042F110 0320F809 */  jalr        $t9
/* 02F114 0042F114 00000000 */   nop
/* 02F118 0042F118 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F11C 0042F11C 02C02025 */  move        $a0, $s6
/* 02F120 0042F120 00403025 */  move        $a2, $v0
/* 02F124 0042F124 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02F128 0042F128 8F85802C */  lw          $a1, %got(STR_10007B40)($gp)
/* 02F12C 0042F12C 0320F809 */  jalr        $t9
/* 02F130 0042F130 24A57B40 */   addiu      $a1, $a1, %lo(STR_10007B40)
/* 02F134 0042F134 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F138 0042F138 24040001 */  addiu       $a0, $zero, 0x1
/* 02F13C 0042F13C 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 02F140 0042F140 0320F809 */  jalr        $t9
/* 02F144 0042F144 00000000 */   nop
/* 02F148 0042F148 8FBC0040 */  lw          $gp, 0x40($sp)
.L0042F14C:
/* 02F14C 0042F14C 8F9980DC */  lw          $t9, %call16(lseek)($gp)
/* 02F150 0042F150 02002025 */  move        $a0, $s0
/* 02F154 0042F154 00002825 */  move        $a1, $zero
/* 02F158 0042F158 0320F809 */  jalr        $t9
/* 02F15C 0042F15C 00003025 */   move       $a2, $zero
/* 02F160 0042F160 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F164 0042F164 8E450010 */  lw          $a1, 0x10($s2)
/* 02F168 0042F168 AFB00010 */  sw          $s0, 0x10($sp)
/* 02F16C 0042F16C 8F998138 */  lw          $t9, %call16(mmap)($gp)
/* 02F170 0042F170 8E580004 */  lw          $t8, 0x4($s2)
/* 02F174 0042F174 00002025 */  move        $a0, $zero
/* 02F178 0042F178 24060001 */  addiu       $a2, $zero, 0x1
/* 02F17C 0042F17C 24070001 */  addiu       $a3, $zero, 0x1
/* 02F180 0042F180 0320F809 */  jalr        $t9
/* 02F184 0042F184 AFB80014 */   sw         $t8, 0x14($sp)
/* 02F188 0042F188 2401FFFF */  addiu       $at, $zero, -0x1
/* 02F18C 0042F18C 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F190 0042F190 14410012 */  bne         $v0, $at, .L0042F1DC
/* 02F194 0042F194 00409825 */   move       $s3, $v0
/* 02F198 0042F198 8F9983B8 */  lw          $t9, %call16(obj_path)($gp)
/* 02F19C 0042F19C 02202025 */  move        $a0, $s1
/* 02F1A0 0042F1A0 0320F809 */  jalr        $t9
/* 02F1A4 0042F1A4 00000000 */   nop
/* 02F1A8 0042F1A8 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F1AC 0042F1AC 02C02025 */  move        $a0, $s6
/* 02F1B0 0042F1B0 00403025 */  move        $a2, $v0
/* 02F1B4 0042F1B4 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02F1B8 0042F1B8 8F85802C */  lw          $a1, %got(STR_10007B50)($gp)
/* 02F1BC 0042F1BC 0320F809 */  jalr        $t9
/* 02F1C0 0042F1C0 24A57B50 */   addiu      $a1, $a1, %lo(STR_10007B50)
/* 02F1C4 0042F1C4 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F1C8 0042F1C8 24040001 */  addiu       $a0, $zero, 0x1
/* 02F1CC 0042F1CC 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 02F1D0 0042F1D0 0320F809 */  jalr        $t9
/* 02F1D4 0042F1D4 00000000 */   nop
/* 02F1D8 0042F1D8 8FBC0040 */  lw          $gp, 0x40($sp)
.L0042F1DC:
/* 02F1DC 0042F1DC 8F9980C4 */  lw          $t9, %call16(close)($gp)
/* 02F1E0 0042F1E0 02002025 */  move        $a0, $s0
/* 02F1E4 0042F1E4 0320F809 */  jalr        $t9
/* 02F1E8 0042F1E8 00000000 */   nop
/* 02F1EC 0042F1EC 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F1F0 0042F1F0 02202025 */  move        $a0, $s1
/* 02F1F4 0042F1F4 02802825 */  move        $a1, $s4
/* 02F1F8 0042F1F8 8F998410 */  lw          $t9, %call16(obj_set_dynsym_got)($gp)
/* 02F1FC 0042F1FC 02603025 */  move        $a2, $s3
/* 02F200 0042F200 0320F809 */  jalr        $t9
/* 02F204 0042F204 00000000 */   nop
/* 02F208 0042F208 12E00008 */  beqz        $s7, .L0042F22C
/* 02F20C 0042F20C 8FBC0040 */   lw         $gp, 0x40($sp)
/* 02F210 0042F210 8F99840C */  lw          $t9, %call16(obj_dynsym_got)($gp)
/* 02F214 0042F214 02202025 */  move        $a0, $s1
/* 02F218 0042F218 02802825 */  move        $a1, $s4
/* 02F21C 0042F21C 0320F809 */  jalr        $t9
/* 02F220 0042F220 00000000 */   nop
/* 02F224 0042F224 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F228 0042F228 AEE20000 */  sw          $v0, 0x0($s7)
.L0042F22C:
/* 02F22C 0042F22C 8F998288 */  lw          $t9, %call16(elfhash)($gp)
/* 02F230 0042F230 8F84802C */  lw          $a0, %got(STR_10007B94)($gp)
/* 02F234 0042F234 0320F809 */  jalr        $t9
/* 02F238 0042F238 24847B94 */   addiu      $a0, $a0, %lo(STR_10007B94)
/* 02F23C 0042F23C 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F240 0042F240 02202025 */  move        $a0, $s1
/* 02F244 0042F244 00403025 */  move        $a2, $v0
/* 02F248 0042F248 8F9982A0 */  lw          $t9, %call16(search_symbol_using_hash)($gp)
/* 02F24C 0042F24C 8F85802C */  lw          $a1, %got(STR_10007B7C)($gp)
/* 02F250 0042F250 0320F809 */  jalr        $t9
/* 02F254 0042F254 24A57B7C */   addiu      $a1, $a1, %lo(STR_10007B7C)
/* 02F258 0042F258 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F25C 0042F25C 1C400003 */  bgtz        $v0, .L0042F26C
/* 02F260 0042F260 0040A025 */   move       $s4, $v0
/* 02F264 0042F264 10000019 */  b           .L0042F2CC
/* 02F268 0042F268 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042F26C:
/* 02F26C 0042F26C 8F9982A4 */  lw          $t9, %call16(obj_find_symbol_value)($gp)
/* 02F270 0042F270 8F85802C */  lw          $a1, %got(STR_10007BAC)($gp)
/* 02F274 0042F274 02202025 */  move        $a0, $s1
/* 02F278 0042F278 00003025 */  move        $a2, $zero
/* 02F27C 0042F27C 0320F809 */  jalr        $t9
/* 02F280 0042F280 24A57BAC */   addiu      $a1, $a1, %lo(STR_10007BAC)
/* 02F284 0042F284 0002C880 */  sll         $t9, $v0, 2
/* 02F288 0042F288 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F28C 0042F28C 0322C821 */  addu        $t9, $t9, $v0
/* 02F290 0042F290 0019C8C0 */  sll         $t9, $t9, 3
/* 02F294 0042F294 03333021 */  addu        $a2, $t9, $s3
/* 02F298 0042F298 8F998410 */  lw          $t9, %call16(obj_set_dynsym_got)($gp)
/* 02F29C 0042F29C 02202025 */  move        $a0, $s1
/* 02F2A0 0042F2A0 02802825 */  move        $a1, $s4
/* 02F2A4 0042F2A4 0320F809 */  jalr        $t9
/* 02F2A8 0042F2A8 00000000 */   nop
/* 02F2AC 0042F2AC 8FA80048 */  lw          $t0, 0x48($sp)
/* 02F2B0 0042F2B0 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02F2B4 0042F2B4 9503002C */  lhu         $v1, 0x2C($t0)
/* 02F2B8 0042F2B8 26B50001 */  addiu       $s5, $s5, 0x1
.L0042F2BC:
/* 02F2BC 0042F2BC 02A3082B */  sltu        $at, $s5, $v1
/* 02F2C0 0042F2C0 1420FF7F */  bnez        $at, .L0042F0C0
/* 02F2C4 0042F2C4 26520020 */   addiu      $s2, $s2, 0x20
/* 02F2C8 0042F2C8 2402FFFF */  addiu       $v0, $zero, -0x1
.L0042F2CC:
/* 02F2CC 0042F2CC 8FBF0044 */  lw          $ra, 0x44($sp)
/* 02F2D0 0042F2D0 8FB00020 */  lw          $s0, 0x20($sp)
/* 02F2D4 0042F2D4 8FB10024 */  lw          $s1, 0x24($sp)
/* 02F2D8 0042F2D8 8FB20028 */  lw          $s2, 0x28($sp)
/* 02F2DC 0042F2DC 8FB3002C */  lw          $s3, 0x2C($sp)
/* 02F2E0 0042F2E0 8FB40030 */  lw          $s4, 0x30($sp)
/* 02F2E4 0042F2E4 8FB50034 */  lw          $s5, 0x34($sp)
/* 02F2E8 0042F2E8 8FB60038 */  lw          $s6, 0x38($sp)
/* 02F2EC 0042F2EC 8FB7003C */  lw          $s7, 0x3C($sp)
/* 02F2F0 0042F2F0 03E00008 */  jr          $ra
/* 02F2F4 0042F2F4 27BD0060 */   addiu      $sp, $sp, 0x60
/* 02F2F8 0042F2F8 00000000 */  nop
/* 02F2FC 0042F2FC 00000000 */  nop
/* 02F300 0042F300 00000000 */  nop
/* 02F304 0042F304 00000000 */  nop
/* 02F308 0042F308 00000000 */  nop
/* 02F30C 0042F30C 00000000 */  nop
