glabel obj_read_from_fd # 261
/* 02CC58 0042CC58 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02CC5C 0042CC5C 279C6108 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE6108
/* 02CC60 0042CC60 0399E021 */  addu        $gp, $gp, $t9
/* 02CC64 0042CC64 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 02CC68 0042CC68 AFB0001C */  sw          $s0, 0x1C($sp)
/* 02CC6C 0042CC6C 00808025 */  move        $s0, $a0
/* 02CC70 0042CC70 AFBF0024 */  sw          $ra, 0x24($sp)
/* 02CC74 0042CC74 AFBC0020 */  sw          $gp, 0x20($sp)
/* 02CC78 0042CC78 AFA50044 */  sw          $a1, 0x44($sp)
/* 02CC7C 0042CC7C AFA60048 */  sw          $a2, 0x48($sp)
/* 02CC80 0042CC80 14800008 */  bnez        $a0, .L0042CCA4
/* 02CC84 0042CC84 AFA7004C */   sw         $a3, 0x4C($sp)
/* 02CC88 0042CC88 8F9980D8 */  lw          $t9, %call16(calloc)($gp)
/* 02CC8C 0042CC8C 24040001 */  addiu       $a0, $zero, 0x1
/* 02CC90 0042CC90 240501DC */  addiu       $a1, $zero, 0x1DC
/* 02CC94 0042CC94 0320F809 */  jalr        $t9
/* 02CC98 0042CC98 00000000 */   nop
/* 02CC9C 0042CC9C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02CCA0 0042CCA0 00408025 */  move        $s0, $v0
.L0042CCA4:
/* 02CCA4 0042CCA4 16000003 */  bnez        $s0, .L0042CCB4
/* 02CCA8 0042CCA8 00000000 */   nop
/* 02CCAC 0042CCAC 10000091 */  b           .L0042CEF4
/* 02CCB0 0042CCB0 00001025 */   move       $v0, $zero
.L0042CCB4:
/* 02CCB4 0042CCB4 8F998150 */  lw          $t9, %call16(getpagesize)($gp)
/* 02CCB8 0042CCB8 0320F809 */  jalr        $t9
/* 02CCBC 0042CCBC 00000000 */   nop
/* 02CCC0 0042CCC0 8E0600C4 */  lw          $a2, 0xC4($s0)
/* 02CCC4 0042CCC4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02CCC8 0042CCC8 00404025 */  move        $t0, $v0
/* 02CCCC 0042CCCC 10C0003A */  beqz        $a2, .L0042CDB8
/* 02CCD0 0042CCD0 8FAD004C */   lw         $t5, 0x4C($sp)
/* 02CCD4 0042CCD4 8FB80048 */  lw          $t8, 0x48($sp)
/* 02CCD8 0042CCD8 244EFFFF */  addiu       $t6, $v0, -0x1
/* 02CCDC 0042CCDC 01C07827 */  not         $t7, $t6
/* 02CCE0 0042CCE0 33190003 */  andi        $t9, $t8, 0x3
/* 02CCE4 0042CCE4 17200056 */  bnez        $t9, .L0042CE40
/* 02CCE8 0042CCE8 00CF2024 */   and        $a0, $a2, $t7
/* 02CCEC 0042CCEC 8F998140 */  lw          $t9, %call16(munmap)($gp)
/* 02CCF0 0042CCF0 8E090034 */  lw          $t1, 0x34($s0)
/* 02CCF4 0042CCF4 00C45023 */  subu        $t2, $a2, $a0
/* 02CCF8 0042CCF8 AFA2003C */  sw          $v0, 0x3C($sp)
/* 02CCFC 0042CCFC 0320F809 */  jalr        $t9
/* 02CD00 0042CD00 012A2821 */   addu       $a1, $t1, $t2
/* 02CD04 0042CD04 2401FFFF */  addiu       $at, $zero, -0x1
/* 02CD08 0042CD08 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02CD0C 0042CD0C 14410003 */  bne         $v0, $at, .L0042CD1C
/* 02CD10 0042CD10 8FA8003C */   lw         $t0, 0x3C($sp)
/* 02CD14 0042CD14 1000004A */  b           .L0042CE40
/* 02CD18 0042CD18 8E0600C4 */   lw         $a2, 0xC4($s0)
.L0042CD1C:
/* 02CD1C 0042CD1C 8FAB004C */  lw          $t3, 0x4C($sp)
/* 02CD20 0042CD20 8FA20048 */  lw          $v0, 0x48($sp)
/* 02CD24 0042CD24 250CFFFF */  addiu       $t4, $t0, -0x1
/* 02CD28 0042CD28 AE0B0034 */  sw          $t3, 0x34($s0)
/* 02CD2C 0042CD2C 8F998138 */  lw          $t9, %call16(mmap)($gp)
/* 02CD30 0042CD30 01806827 */  not         $t5, $t4
/* 02CD34 0042CD34 8FB80044 */  lw          $t8, 0x44($sp)
/* 02CD38 0042CD38 8FAF004C */  lw          $t7, 0x4C($sp)
/* 02CD3C 0042CD3C 004D1824 */  and         $v1, $v0, $t5
/* 02CD40 0042CD40 00437023 */  subu        $t6, $v0, $v1
/* 02CD44 0042CD44 AFA30014 */  sw          $v1, 0x14($sp)
/* 02CD48 0042CD48 AFA30028 */  sw          $v1, 0x28($sp)
/* 02CD4C 0042CD4C 00002025 */  move        $a0, $zero
/* 02CD50 0042CD50 24060002 */  addiu       $a2, $zero, 0x2
/* 02CD54 0042CD54 24070002 */  addiu       $a3, $zero, 0x2
/* 02CD58 0042CD58 AFB80010 */  sw          $t8, 0x10($sp)
/* 02CD5C 0042CD5C 0320F809 */  jalr        $t9
/* 02CD60 0042CD60 01CF2821 */   addu       $a1, $t6, $t7
/* 02CD64 0042CD64 2401FFFF */  addiu       $at, $zero, -0x1
/* 02CD68 0042CD68 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02CD6C 0042CD6C 1441000A */  bne         $v0, $at, .L0042CD98
/* 02CD70 0042CD70 8FA30028 */   lw         $v1, 0x28($sp)
/* 02CD74 0042CD74 8F998050 */  lw          $t9, %got(errno)($gp)
/* 02CD78 0042CD78 24010013 */  addiu       $at, $zero, 0x13
/* 02CD7C 0042CD7C 8F390000 */  lw          $t9, 0x0($t9)
/* 02CD80 0042CD80 17210003 */  bne         $t9, $at, .L0042CD90
/* 02CD84 0042CD84 00000000 */   nop
/* 02CD88 0042CD88 1000005A */  b           .L0042CEF4
/* 02CD8C 0042CD8C 00001025 */   move       $v0, $zero
.L0042CD90:
/* 02CD90 0042CD90 1000002B */  b           .L0042CE40
/* 02CD94 0042CD94 8E0600C4 */   lw         $a2, 0xC4($s0)
.L0042CD98:
/* 02CD98 0042CD98 8FA90048 */  lw          $t1, 0x48($sp)
/* 02CD9C 0042CD9C 8F818030 */  lw          $at, %got(D_1000AB40)($gp)
/* 02CDA0 0042CDA0 240C0001 */  addiu       $t4, $zero, 0x1
/* 02CDA4 0042CDA4 00495021 */  addu        $t2, $v0, $t1
/* 02CDA8 0042CDA8 01435823 */  subu        $t3, $t2, $v1
/* 02CDAC 0042CDAC AE0B00C4 */  sw          $t3, 0xC4($s0)
/* 02CDB0 0042CDB0 1000004A */  b           .L0042CEDC
/* 02CDB4 0042CDB4 AC2CAB40 */   sw         $t4, %lo(D_1000AB40)($at)
.L0042CDB8:
/* 02CDB8 0042CDB8 AE0D0034 */  sw          $t5, 0x34($s0)
/* 02CDBC 0042CDBC 8FAE0048 */  lw          $t6, 0x48($sp)
/* 02CDC0 0042CDC0 2518FFFF */  addiu       $t8, $t0, -0x1
/* 02CDC4 0042CDC4 0300C827 */  not         $t9, $t8
/* 02CDC8 0042CDC8 31CF0003 */  andi        $t7, $t6, 0x3
/* 02CDCC 0042CDCC 15E0001A */  bnez        $t7, .L0042CE38
/* 02CDD0 0042CDD0 00002025 */   move       $a0, $zero
/* 02CDD4 0042CDD4 01D91824 */  and         $v1, $t6, $t9
/* 02CDD8 0042CDD8 8F998138 */  lw          $t9, %call16(mmap)($gp)
/* 02CDDC 0042CDDC 8FAA004C */  lw          $t2, 0x4C($sp)
/* 02CDE0 0042CDE0 8FAB0044 */  lw          $t3, 0x44($sp)
/* 02CDE4 0042CDE4 01C34823 */  subu        $t1, $t6, $v1
/* 02CDE8 0042CDE8 AFA30014 */  sw          $v1, 0x14($sp)
/* 02CDEC 0042CDEC AFA30028 */  sw          $v1, 0x28($sp)
/* 02CDF0 0042CDF0 24060002 */  addiu       $a2, $zero, 0x2
/* 02CDF4 0042CDF4 24070002 */  addiu       $a3, $zero, 0x2
/* 02CDF8 0042CDF8 012A2821 */  addu        $a1, $t1, $t2
/* 02CDFC 0042CDFC 0320F809 */  jalr        $t9
/* 02CE00 0042CE00 AFAB0010 */   sw         $t3, 0x10($sp)
/* 02CE04 0042CE04 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02CE08 0042CE08 8FA30028 */  lw          $v1, 0x28($sp)
/* 02CE0C 0042CE0C 2401FFFF */  addiu       $at, $zero, -0x1
/* 02CE10 0042CE10 10410009 */  beq         $v0, $at, .L0042CE38
/* 02CE14 0042CE14 AE0200C4 */   sw         $v0, 0xC4($s0)
/* 02CE18 0042CE18 8FAD0048 */  lw          $t5, 0x48($sp)
/* 02CE1C 0042CE1C 8F818030 */  lw          $at, %got(D_1000AB40)($gp)
/* 02CE20 0042CE20 24190001 */  addiu       $t9, $zero, 0x1
/* 02CE24 0042CE24 004D7821 */  addu        $t7, $v0, $t5
/* 02CE28 0042CE28 01E3C023 */  subu        $t8, $t7, $v1
/* 02CE2C 0042CE2C AE1800C4 */  sw          $t8, 0xC4($s0)
/* 02CE30 0042CE30 1000002A */  b           .L0042CEDC
/* 02CE34 0042CE34 AC39AB40 */   sw         $t9, %lo(D_1000AB40)($at)
.L0042CE38:
/* 02CE38 0042CE38 AE0000C4 */  sw          $zero, 0xC4($s0)
/* 02CE3C 0042CE3C 00003025 */  move        $a2, $zero
.L0042CE40:
/* 02CE40 0042CE40 8FA5004C */  lw          $a1, 0x4C($sp)
/* 02CE44 0042CE44 10C00008 */  beqz        $a2, .L0042CE68
/* 02CE48 0042CE48 AE050034 */   sw         $a1, 0x34($s0)
/* 02CE4C 0042CE4C 8F998110 */  lw          $t9, %call16(realloc)($gp)
/* 02CE50 0042CE50 00C02025 */  move        $a0, $a2
/* 02CE54 0042CE54 0320F809 */  jalr        $t9
/* 02CE58 0042CE58 00000000 */   nop
/* 02CE5C 0042CE5C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02CE60 0042CE60 10000007 */  b           .L0042CE80
/* 02CE64 0042CE64 AE0200C4 */   sw         $v0, 0xC4($s0)
.L0042CE68:
/* 02CE68 0042CE68 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 02CE6C 0042CE6C 00A02025 */  move        $a0, $a1
/* 02CE70 0042CE70 0320F809 */  jalr        $t9
/* 02CE74 0042CE74 00000000 */   nop
/* 02CE78 0042CE78 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02CE7C 0042CE7C AE0200C4 */  sw          $v0, 0xC4($s0)
.L0042CE80:
/* 02CE80 0042CE80 8E0E00C4 */  lw          $t6, 0xC4($s0)
/* 02CE84 0042CE84 15C00003 */  bnez        $t6, .L0042CE94
/* 02CE88 0042CE88 00000000 */   nop
/* 02CE8C 0042CE8C 10000019 */  b           .L0042CEF4
/* 02CE90 0042CE90 00001025 */   move       $v0, $zero
.L0042CE94:
/* 02CE94 0042CE94 8F9980DC */  lw          $t9, %call16(lseek)($gp)
/* 02CE98 0042CE98 8FA40044 */  lw          $a0, 0x44($sp)
/* 02CE9C 0042CE9C 8FA50048 */  lw          $a1, 0x48($sp)
/* 02CEA0 0042CEA0 0320F809 */  jalr        $t9
/* 02CEA4 0042CEA4 00003025 */   move       $a2, $zero
/* 02CEA8 0042CEA8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02CEAC 0042CEAC 8FA40044 */  lw          $a0, 0x44($sp)
/* 02CEB0 0042CEB0 8E0500C4 */  lw          $a1, 0xC4($s0)
/* 02CEB4 0042CEB4 8F9980C8 */  lw          $t9, %call16(read)($gp)
/* 02CEB8 0042CEB8 8FA6004C */  lw          $a2, 0x4C($sp)
/* 02CEBC 0042CEBC 0320F809 */  jalr        $t9
/* 02CEC0 0042CEC0 00000000 */   nop
/* 02CEC4 0042CEC4 8FA9004C */  lw          $t1, 0x4C($sp)
/* 02CEC8 0042CEC8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02CECC 0042CECC 10490003 */  beq         $v0, $t1, .L0042CEDC
/* 02CED0 0042CED0 00000000 */   nop
/* 02CED4 0042CED4 10000007 */  b           .L0042CEF4
/* 02CED8 0042CED8 00001025 */   move       $v0, $zero
.L0042CEDC:
/* 02CEDC 0042CEDC 8F998278 */  lw          $t9, %call16(obj_init)($gp)
/* 02CEE0 0042CEE0 02002025 */  move        $a0, $s0
/* 02CEE4 0042CEE4 24050001 */  addiu       $a1, $zero, 0x1
/* 02CEE8 0042CEE8 0320F809 */  jalr        $t9
/* 02CEEC 0042CEEC 00000000 */   nop
/* 02CEF0 0042CEF0 8FBC0020 */  lw          $gp, 0x20($sp)
.L0042CEF4:
/* 02CEF4 0042CEF4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02CEF8 0042CEF8 8FB0001C */  lw          $s0, 0x1C($sp)
/* 02CEFC 0042CEFC 27BD0040 */  addiu       $sp, $sp, 0x40
/* 02CF00 0042CF00 03E00008 */  jr          $ra
/* 02CF04 0042CF04 00000000 */   nop
