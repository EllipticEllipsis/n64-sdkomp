glabel get_range # 632
/* 03DFE8 0043DFE8 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03DFEC 0043DFEC 279C4D78 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD4D78
/* 03DFF0 0043DFF0 0399E021 */  addu        $gp, $gp, $t9
/* 03DFF4 0043DFF4 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 03DFF8 0043DFF8 8F998024 */  lw          $t9, %got(set_paux)($gp)
/* 03DFFC 0043DFFC AFA5004C */  sw          $a1, 0x4C($sp)
/* 03E000 0043E000 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03E004 0043E004 AFB00018 */  sw          $s0, 0x18($sp)
/* 03E008 0043E008 AFA60050 */  sw          $a2, 0x50($sp)
/* 03E00C 0043E00C 00C02825 */  move        $a1, $a2
/* 03E010 0043E010 2739DBB0 */  addiu       $t9, $t9, %lo(set_paux)
/* 03E014 0043E014 00808025 */  move        $s0, $a0
/* 03E018 0043E018 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03E01C 0043E01C AFB1001C */  sw          $s1, 0x1C($sp)
/* 03E020 0043E020 0320F809 */  jalr        $t9
/* 03E024 0043E024 8FA6004C */   lw         $a2, 0x4C($sp)
/* 03E028 0043E028 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E02C 0043E02C 8C460000 */  lw          $a2, 0x0($v0)
/* 03E030 0043E030 27A40030 */  addiu       $a0, $sp, 0x30
/* 03E034 0043E034 8F998024 */  lw          $t9, %got(AUX)($gp)
/* 03E038 0043E038 02002825 */  move        $a1, $s0
/* 03E03C 0043E03C 24070001 */  addiu       $a3, $zero, 0x1
/* 03E040 0043E040 2739DD14 */  addiu       $t9, $t9, %lo(AUX)
/* 03E044 0043E044 24510004 */  addiu       $s1, $v0, 0x4
/* 03E048 0043E048 0320F809 */  jalr        $t9
/* 03E04C 0043E04C AFA60008 */   sw         $a2, 0x8($sp)
/* 03E050 0043E050 8FB80030 */  lw          $t8, 0x30($sp)
/* 03E054 0043E054 24010FFF */  addiu       $at, $zero, 0xFFF
/* 03E058 0043E058 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E05C 0043E05C 00182502 */  srl         $a0, $t8, 20
/* 03E060 0043E060 1481000D */  bne         $a0, $at, .L0043E098
/* 03E064 0043E064 AFB80034 */   sw         $t8, 0x34($sp)
/* 03E068 0043E068 8F998024 */  lw          $t9, %got(AUX)($gp)
/* 03E06C 0043E06C 8E260000 */  lw          $a2, 0x0($s1)
/* 03E070 0043E070 27A40030 */  addiu       $a0, $sp, 0x30
/* 03E074 0043E074 2739DD14 */  addiu       $t9, $t9, %lo(AUX)
/* 03E078 0043E078 02002825 */  move        $a1, $s0
/* 03E07C 0043E07C 24070004 */  addiu       $a3, $zero, 0x4
/* 03E080 0043E080 26310004 */  addiu       $s1, $s1, 0x4
/* 03E084 0043E084 0320F809 */  jalr        $t9
/* 03E088 0043E088 AFA60008 */   sw         $a2, 0x8($sp)
/* 03E08C 0043E08C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E090 0043E090 10000002 */  b           .L0043E09C
/* 03E094 0043E094 8FA30030 */   lw         $v1, 0x30($sp)
.L0043E098:
/* 03E098 0043E098 00801825 */  move        $v1, $a0
.L0043E09C:
/* 03E09C 0043E09C 8E0B009C */  lw          $t3, 0x9C($s0)
/* 03E0A0 0043E0A0 00604825 */  move        $t1, $v1
/* 03E0A4 0043E0A4 8D6C0050 */  lw          $t4, 0x50($t3)
/* 03E0A8 0043E0A8 15800003 */  bnez        $t4, .L0043E0B8
/* 03E0AC 0043E0AC 00000000 */   nop
/* 03E0B0 0043E0B0 10000019 */  b           .L0043E118
/* 03E0B4 0043E0B4 8E0800A0 */   lw         $t0, 0xA0($s0)
.L0043E0B8:
/* 03E0B8 0043E0B8 8F9984F4 */  lw          $t9, %call16(type_to_file)($gp)
/* 03E0BC 0043E0BC 02002025 */  move        $a0, $s0
/* 03E0C0 0043E0C0 8FA5004C */  lw          $a1, 0x4C($sp)
/* 03E0C4 0043E0C4 0320F809 */  jalr        $t9
/* 03E0C8 0043E0C8 AFA30040 */   sw         $v1, 0x40($sp)
/* 03E0CC 0043E0CC 8E0F00D0 */  lw          $t7, 0xD0($s0)
/* 03E0D0 0043E0D0 8E0800A0 */  lw          $t0, 0xA0($s0)
/* 03E0D4 0043E0D4 000268C0 */  sll         $t5, $v0, 3
/* 03E0D8 0043E0D8 000FC0C0 */  sll         $t8, $t7, 3
/* 03E0DC 0043E0DC 01A26821 */  addu        $t5, $t5, $v0
/* 03E0E0 0043E0E0 030FC021 */  addu        $t8, $t8, $t7
/* 03E0E4 0043E0E4 0018C0C0 */  sll         $t8, $t8, 3
/* 03E0E8 0043E0E8 000D68C0 */  sll         $t5, $t5, 3
/* 03E0EC 0043E0EC 0018C823 */  negu        $t9, $t8
/* 03E0F0 0043E0F0 010D7021 */  addu        $t6, $t0, $t5
/* 03E0F4 0043E0F4 01D95021 */  addu        $t2, $t6, $t9
/* 03E0F8 0043E0F8 8FA30040 */  lw          $v1, 0x40($sp)
/* 03E0FC 0043E0FC 8D4B0034 */  lw          $t3, 0x34($t2)
/* 03E100 0043E100 8E0C00BC */  lw          $t4, 0xBC($s0)
/* 03E104 0043E104 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E108 0043E108 006B1821 */  addu        $v1, $v1, $t3
/* 03E10C 0043E10C 00036880 */  sll         $t5, $v1, 2
/* 03E110 0043E110 018D7821 */  addu        $t7, $t4, $t5
/* 03E114 0043E114 8DE90000 */  lw          $t1, 0x0($t7)
.L0043E118:
/* 03E118 0043E118 0009C0C0 */  sll         $t8, $t1, 3
/* 03E11C 0043E11C 0309C021 */  addu        $t8, $t8, $t1
/* 03E120 0043E120 0018C0C0 */  sll         $t8, $t8, 3
/* 03E124 0043E124 01187021 */  addu        $t6, $t0, $t8
/* 03E128 0043E128 8DD9002C */  lw          $t9, 0x2C($t6)
/* 03E12C 0043E12C 8E0A00C8 */  lw          $t2, 0xC8($s0)
/* 03E130 0043E130 8FAC0034 */  lw          $t4, 0x34($sp)
/* 03E134 0043E134 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03E138 0043E138 8FB80050 */  lw          $t8, 0x50($sp)
/* 03E13C 0043E13C 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03E140 0043E140 032A5821 */  addu        $t3, $t9, $t2
/* 03E144 0043E144 01816824 */  and         $t5, $t4, $at
/* 03E148 0043E148 8F998024 */  lw          $t9, %got(AUX)($gp)
/* 03E14C 0043E14C 016D7821 */  addu        $t7, $t3, $t5
/* 03E150 0043E150 AF0F0018 */  sw          $t7, 0x18($t8)
/* 03E154 0043E154 8E260000 */  lw          $a2, 0x0($s1)
/* 03E158 0043E158 2739DD14 */  addiu       $t9, $t9, %lo(AUX)
/* 03E15C 0043E15C 27A40030 */  addiu       $a0, $sp, 0x30
/* 03E160 0043E160 02002825 */  move        $a1, $s0
/* 03E164 0043E164 24070004 */  addiu       $a3, $zero, 0x4
/* 03E168 0043E168 26310004 */  addiu       $s1, $s1, 0x4
/* 03E16C 0043E16C 0320F809 */  jalr        $t9
/* 03E170 0043E170 AFA60008 */   sw         $a2, 0x8($sp)
/* 03E174 0043E174 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E178 0043E178 8FAA0030 */  lw          $t2, 0x30($sp)
/* 03E17C 0043E17C 8FAC0050 */  lw          $t4, 0x50($sp)
/* 03E180 0043E180 8F998024 */  lw          $t9, %got(AUX)($gp)
/* 03E184 0043E184 27A40030 */  addiu       $a0, $sp, 0x30
/* 03E188 0043E188 AD8A001C */  sw          $t2, 0x1C($t4)
/* 03E18C 0043E18C 8E260000 */  lw          $a2, 0x0($s1)
/* 03E190 0043E190 2739DD14 */  addiu       $t9, $t9, %lo(AUX)
/* 03E194 0043E194 02002825 */  move        $a1, $s0
/* 03E198 0043E198 24070004 */  addiu       $a3, $zero, 0x4
/* 03E19C 0043E19C 0320F809 */  jalr        $t9
/* 03E1A0 0043E1A0 AFA60008 */   sw         $a2, 0x8($sp)
/* 03E1A4 0043E1A4 8FAF0030 */  lw          $t7, 0x30($sp)
/* 03E1A8 0043E1A8 8FB80050 */  lw          $t8, 0x50($sp)
/* 03E1AC 0043E1AC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E1B0 0043E1B0 AF0F0020 */  sw          $t7, 0x20($t8)
/* 03E1B4 0043E1B4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03E1B8 0043E1B8 8FB1001C */  lw          $s1, 0x1C($sp)
/* 03E1BC 0043E1BC 8FB00018 */  lw          $s0, 0x18($sp)
/* 03E1C0 0043E1C0 03E00008 */  jr          $ra
/* 03E1C4 0043E1C4 27BD0048 */   addiu      $sp, $sp, 0x48
