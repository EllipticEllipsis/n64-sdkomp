.section .rodata
glabel STR_10008600
/* 048600 10008600 */ .asciz "obj->o_pssext"
                      .balign 4

glabel STR_10008610
/* 048610 10008610 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008620
/* 048620 10008620 */ .asciz "ptmp_pextr"
                      .balign 4

glabel STR_1000862C
/* 04862C 1000862C */ .asciz "obj_rewrite.c"
                      .balign 4


.section .text
glabel obj_add_global_abs_symbol # 587
/* 03AA64 0043AA64 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 03AA68 0043AA68 279C82FC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD82FC
/* 03AA6C 0043AA6C 0399E021 */  addu        $gp, $gp, $t9
/* 03AA70 0043AA70 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 03AA74 0043AA74 8F9982C0 */  lw          $t9, %call16(obj_phdrr)($gp)
/* 03AA78 0043AA78 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03AA7C 0043AA7C AFB2001C */  sw          $s2, 0x1C($sp)
/* 03AA80 0043AA80 00809025 */  move        $s2, $a0
/* 03AA84 0043AA84 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03AA88 0043AA88 AFB10018 */  sw          $s1, 0x18($sp)
/* 03AA8C 0043AA8C AFB00014 */  sw          $s0, 0x14($sp)
/* 03AA90 0043AA90 AFA50044 */  sw          $a1, 0x44($sp)
/* 03AA94 0043AA94 0320F809 */  jalr        $t9
/* 03AA98 0043AA98 AFA60048 */   sw         $a2, 0x48($sp)
/* 03AA9C 0043AA9C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03AAA0 0043AAA0 00408025 */  move        $s0, $v0
/* 03AAA4 0043AAA4 02402025 */  move        $a0, $s2
/* 03AAA8 0043AAA8 8F9982C4 */  lw          $t9, %call16(obj_pextr)($gp)
/* 03AAAC 0043AAAC 0320F809 */  jalr        $t9
/* 03AAB0 0043AAB0 00000000 */   nop
/* 03AAB4 0043AAB4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03AAB8 0043AAB8 00408825 */  move        $s1, $v0
/* 03AABC 0043AABC 8FA40044 */  lw          $a0, 0x44($sp)
/* 03AAC0 0043AAC0 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 03AAC4 0043AAC4 0320F809 */  jalr        $t9
/* 03AAC8 0043AAC8 00000000 */   nop
/* 03AACC 0043AACC 8E030040 */  lw          $v1, 0x40($s0)
/* 03AAD0 0043AAD0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03AAD4 0043AAD4 00627021 */  addu        $t6, $v1, $v0
/* 03AAD8 0043AAD8 25C50001 */  addiu       $a1, $t6, 0x1
/* 03AADC 0043AADC AFA30030 */  sw          $v1, 0x30($sp)
/* 03AAE0 0043AAE0 AE050040 */  sw          $a1, 0x40($s0)
/* 03AAE4 0043AAE4 8F998110 */  lw          $t9, %call16(realloc)($gp)
/* 03AAE8 0043AAE8 8E4400B0 */  lw          $a0, 0xB0($s2)
/* 03AAEC 0043AAEC 0320F809 */  jalr        $t9
/* 03AAF0 0043AAF0 00000000 */   nop
/* 03AAF4 0043AAF4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03AAF8 0043AAF8 14400009 */  bnez        $v0, .L0043AB20
/* 03AAFC 0043AAFC AE4200B0 */   sw         $v0, 0xB0($s2)
/* 03AB00 0043AB00 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 03AB04 0043AB04 8F848030 */  lw          $a0, %got(STR_10008600)($gp)
/* 03AB08 0043AB08 8F858030 */  lw          $a1, %got(STR_10008610)($gp)
/* 03AB0C 0043AB0C 24060345 */  addiu       $a2, $zero, 0x345
/* 03AB10 0043AB10 24848600 */  addiu       $a0, $a0, %lo(STR_10008600)
/* 03AB14 0043AB14 0320F809 */  jalr        $t9
/* 03AB18 0043AB18 24A58610 */   addiu      $a1, $a1, %lo(STR_10008610)
/* 03AB1C 0043AB1C 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043AB20:
/* 03AB20 0043AB20 8E5800B0 */  lw          $t8, 0xB0($s2)
/* 03AB24 0043AB24 8FB90030 */  lw          $t9, 0x30($sp)
/* 03AB28 0043AB28 8FA50044 */  lw          $a1, 0x44($sp)
/* 03AB2C 0043AB2C 03192021 */  addu        $a0, $t8, $t9
/* 03AB30 0043AB30 8F9980A0 */  lw          $t9, %call16(strcpy)($gp)
/* 03AB34 0043AB34 0320F809 */  jalr        $t9
/* 03AB38 0043AB38 00000000 */   nop
/* 03AB3C 0043AB3C 8E030058 */  lw          $v1, 0x58($s0)
/* 03AB40 0043AB40 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03AB44 0043AB44 02202025 */  move        $a0, $s1
/* 03AB48 0043AB48 AFA3002C */  sw          $v1, 0x2C($sp)
/* 03AB4C 0043AB4C 24680001 */  addiu       $t0, $v1, 0x1
/* 03AB50 0043AB50 AE080058 */  sw          $t0, 0x58($s0)
/* 03AB54 0043AB54 8F998110 */  lw          $t9, %call16(realloc)($gp)
/* 03AB58 0043AB58 00082900 */  sll         $a1, $t0, 4
/* 03AB5C 0043AB5C 0320F809 */  jalr        $t9
/* 03AB60 0043AB60 00000000 */   nop
/* 03AB64 0043AB64 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03AB68 0043AB68 14400009 */  bnez        $v0, .L0043AB90
/* 03AB6C 0043AB6C 00408825 */   move       $s1, $v0
/* 03AB70 0043AB70 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 03AB74 0043AB74 8F848030 */  lw          $a0, %got(STR_10008620)($gp)
/* 03AB78 0043AB78 8F858030 */  lw          $a1, %got(STR_1000862C)($gp)
/* 03AB7C 0043AB7C 2406034B */  addiu       $a2, $zero, 0x34B
/* 03AB80 0043AB80 24848620 */  addiu       $a0, $a0, %lo(STR_10008620)
/* 03AB84 0043AB84 0320F809 */  jalr        $t9
/* 03AB88 0043AB88 24A5862C */   addiu      $a1, $a1, %lo(STR_1000862C)
/* 03AB8C 0043AB8C 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043AB90:
/* 03AB90 0043AB90 AE5100AC */  sw          $s1, 0xAC($s2)
/* 03AB94 0043AB94 8FA9002C */  lw          $t1, 0x2C($sp)
/* 03AB98 0043AB98 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03AB9C 0043AB9C 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03ABA0 0043ABA0 00095100 */  sll         $t2, $t1, 4
/* 03ABA4 0043ABA4 022A1021 */  addu        $v0, $s1, $t2
/* 03ABA8 0043ABA8 904B0000 */  lbu         $t3, 0x0($v0)
/* 03ABAC 0043ABAC A4400002 */  sh          $zero, 0x2($v0)
/* 03ABB0 0043ABB0 9049000C */  lbu         $t1, 0xC($v0)
/* 03ABB4 0043ABB4 316DFF7F */  andi        $t5, $t3, 0xFF7F
/* 03ABB8 0043ABB8 A04D0000 */  sb          $t5, 0x0($v0)
/* 03ABBC 0043ABBC 31AE00BF */  andi        $t6, $t5, 0xBF
/* 03ABC0 0043ABC0 A04E0000 */  sb          $t6, 0x0($v0)
/* 03ABC4 0043ABC4 944F0000 */  lhu         $t7, 0x0($v0)
/* 03ABC8 0043ABC8 312AFF03 */  andi        $t2, $t1, 0xFF03
/* 03ABCC 0043ABCC 354B0004 */  ori         $t3, $t2, 0x4
/* 03ABD0 0043ABD0 31F8F800 */  andi        $t8, $t7, 0xF800
/* 03ABD4 0043ABD4 A4580000 */  sh          $t8, 0x0($v0)
/* 03ABD8 0043ABD8 8FB90030 */  lw          $t9, 0x30($sp)
/* 03ABDC 0043ABDC AC590004 */  sw          $t9, 0x4($v0)
/* 03ABE0 0043ABE0 8FA80048 */  lw          $t0, 0x48($sp)
/* 03ABE4 0043ABE4 A04B000C */  sb          $t3, 0xC($v0)
/* 03ABE8 0043ABE8 944C000C */  lhu         $t4, 0xC($v0)
/* 03ABEC 0043ABEC AC480008 */  sw          $t0, 0x8($v0)
/* 03ABF0 0043ABF0 318DFC1F */  andi        $t5, $t4, 0xFC1F
/* 03ABF4 0043ABF4 35AE00A0 */  ori         $t6, $t5, 0xA0
/* 03ABF8 0043ABF8 A44E000C */  sh          $t6, 0xC($v0)
/* 03ABFC 0043ABFC 904F000D */  lbu         $t7, 0xD($v0)
/* 03AC00 0043AC00 31F8FFEF */  andi        $t8, $t7, 0xFFEF
/* 03AC04 0043AC04 A058000D */  sb          $t8, 0xD($v0)
/* 03AC08 0043AC08 8C43000C */  lw          $v1, 0xC($v0)
/* 03AC0C 0043AC0C 0061C826 */  xor         $t9, $v1, $at
/* 03AC10 0043AC10 00194300 */  sll         $t0, $t9, 12
/* 03AC14 0043AC14 00084B02 */  srl         $t1, $t0, 12
/* 03AC18 0043AC18 01235026 */  xor         $t2, $t1, $v1
/* 03AC1C 0043AC1C AC4A000C */  sw          $t2, 0xC($v0)
/* 03AC20 0043AC20 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03AC24 0043AC24 8FB2001C */  lw          $s2, 0x1C($sp)
/* 03AC28 0043AC28 8FB10018 */  lw          $s1, 0x18($sp)
/* 03AC2C 0043AC2C 8FB00014 */  lw          $s0, 0x14($sp)
/* 03AC30 0043AC30 03E00008 */  jr          $ra
/* 03AC34 0043AC34 27BD0040 */   addiu      $sp, $sp, 0x40
