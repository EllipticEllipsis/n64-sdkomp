.section .rodata
glabel STR_1000843C
/* 04843C 1000843C */ .asciz "!obj_shared(obj) || ((obj_text_size(obj) + incr) <= MAXTSZ)"
                      .balign 4

glabel STR_10008478
/* 048478 10008478 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008488
/* 048488 10008488 */ .asciz "ptmp_aohdr->text_start"
                      .balign 4

glabel STR_100084A0
/* 0484A0 100084A0 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100084B0
/* 0484B0 100084B0 */ .asciz "ptmp_phdr[i].p_paddr"
                      .balign 4

glabel STR_100084C8
/* 0484C8 100084C8 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100084D8
/* 0484D8 100084D8 */ .asciz "0"
                      .balign 4

glabel STR_100084DC
/* 0484DC 100084DC */ .asciz "obj_rewrite.c"
                      .balign 4


.section .text
glabel obj_extend_text_segment # 582
/* 039F1C 00439F1C 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 039F20 00439F20 279C8E44 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD8E44
/* 039F24 00439F24 0399E021 */  addu        $gp, $gp, $t9
/* 039F28 00439F28 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 039F2C 00439F2C 8F9982B8 */  lw          $t9, %call16(obj_paouthdr)($gp)
/* 039F30 00439F30 AFBF002C */  sw          $ra, 0x2C($sp)
/* 039F34 00439F34 AFB40024 */  sw          $s4, 0x24($sp)
/* 039F38 00439F38 AFB30020 */  sw          $s3, 0x20($sp)
/* 039F3C 00439F3C 00809825 */  move        $s3, $a0
/* 039F40 00439F40 00A0A025 */  move        $s4, $a1
/* 039F44 00439F44 AFBC0028 */  sw          $gp, 0x28($sp)
/* 039F48 00439F48 AFB2001C */  sw          $s2, 0x1C($sp)
/* 039F4C 00439F4C AFB10018 */  sw          $s1, 0x18($sp)
/* 039F50 00439F50 0320F809 */  jalr        $t9
/* 039F54 00439F54 AFB00014 */   sw         $s0, 0x14($sp)
/* 039F58 00439F58 8FBC0028 */  lw          $gp, 0x28($sp)
/* 039F5C 00439F5C 00408025 */  move        $s0, $v0
/* 039F60 00439F60 02602025 */  move        $a0, $s3
/* 039F64 00439F64 8F99842C */  lw          $t9, %call16(obj_pelfhdr)($gp)
/* 039F68 00439F68 0320F809 */  jalr        $t9
/* 039F6C 00439F6C 00000000 */   nop
/* 039F70 00439F70 8FBC0028 */  lw          $gp, 0x28($sp)
/* 039F74 00439F74 AFA20034 */  sw          $v0, 0x34($sp)
/* 039F78 00439F78 02602025 */  move        $a0, $s3
/* 039F7C 00439F7C 8F99828C */  lw          $t9, %call16(obj_shared)($gp)
/* 039F80 00439F80 0320F809 */  jalr        $t9
/* 039F84 00439F84 00000000 */   nop
/* 039F88 00439F88 10400013 */  beqz        $v0, .L00439FD8
/* 039F8C 00439F8C 8FBC0028 */   lw         $gp, 0x28($sp)
/* 039F90 00439F90 8F998394 */  lw          $t9, %call16(obj_text_size)($gp)
/* 039F94 00439F94 02602025 */  move        $a0, $s3
/* 039F98 00439F98 0320F809 */  jalr        $t9
/* 039F9C 00439F9C 00000000 */   nop
/* 039FA0 00439FA0 3C010040 */  lui         $at, (0x400001 >> 16)
/* 039FA4 00439FA4 34210001 */  ori         $at, $at, (0x400001 & 0xFFFF)
/* 039FA8 00439FA8 00547021 */  addu        $t6, $v0, $s4
/* 039FAC 00439FAC 01C1082B */  sltu        $at, $t6, $at
/* 039FB0 00439FB0 14200009 */  bnez        $at, .L00439FD8
/* 039FB4 00439FB4 8FBC0028 */   lw         $gp, 0x28($sp)
/* 039FB8 00439FB8 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 039FBC 00439FBC 8F848030 */  lw          $a0, %got(STR_1000843C)($gp)
/* 039FC0 00439FC0 8F858030 */  lw          $a1, %got(STR_10008478)($gp)
/* 039FC4 00439FC4 24060298 */  addiu       $a2, $zero, 0x298
/* 039FC8 00439FC8 2484843C */  addiu       $a0, $a0, %lo(STR_1000843C)
/* 039FCC 00439FCC 0320F809 */  jalr        $t9
/* 039FD0 00439FD0 24A58478 */   addiu      $a1, $a1, %lo(STR_10008478)
/* 039FD4 00439FD4 8FBC0028 */  lw          $gp, 0x28($sp)
.L00439FD8:
/* 039FD8 00439FD8 8F998394 */  lw          $t9, %call16(obj_text_size)($gp)
/* 039FDC 00439FDC 02602025 */  move        $a0, $s3
/* 039FE0 00439FE0 0320F809 */  jalr        $t9
/* 039FE4 00439FE4 00000000 */   nop
/* 039FE8 00439FE8 8FBC0028 */  lw          $gp, 0x28($sp)
/* 039FEC 00439FEC 02602025 */  move        $a0, $s3
/* 039FF0 00439FF0 00542821 */  addu        $a1, $v0, $s4
/* 039FF4 00439FF4 8F998398 */  lw          $t9, %call16(obj_set_text_size)($gp)
/* 039FF8 00439FF8 0320F809 */  jalr        $t9
/* 039FFC 00439FFC 00000000 */   nop
/* 03A000 0043A000 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03A004 0043A004 02602025 */  move        $a0, $s3
/* 03A008 0043A008 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 03A00C 0043A00C 0320F809 */  jalr        $t9
/* 03A010 0043A010 00000000 */   nop
/* 03A014 0043A014 24010002 */  addiu       $at, $zero, 0x2
/* 03A018 0043A018 1441002B */  bne         $v0, $at, .L0043A0C8
/* 03A01C 0043A01C 8FBC0028 */   lw         $gp, 0x28($sp)
/* 03A020 0043A020 8F998394 */  lw          $t9, %call16(obj_text_size)($gp)
/* 03A024 0043A024 02602025 */  move        $a0, $s3
/* 03A028 0043A028 0320F809 */  jalr        $t9
/* 03A02C 0043A02C 00000000 */   nop
/* 03A030 0043A030 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03A034 0043A034 8E040014 */  lw          $a0, 0x14($s0)
/* 03A038 0043A038 00402825 */  move        $a1, $v0
/* 03A03C 0043A03C 8F998110 */  lw          $t9, %call16(realloc)($gp)
/* 03A040 0043A040 0320F809 */  jalr        $t9
/* 03A044 0043A044 00000000 */   nop
/* 03A048 0043A048 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03A04C 0043A04C 14400009 */  bnez        $v0, .L0043A074
/* 03A050 0043A050 AE020014 */   sw         $v0, 0x14($s0)
/* 03A054 0043A054 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 03A058 0043A058 8F848030 */  lw          $a0, %got(STR_10008488)($gp)
/* 03A05C 0043A05C 8F858030 */  lw          $a1, %got(STR_100084A0)($gp)
/* 03A060 0043A060 2406029D */  addiu       $a2, $zero, 0x29D
/* 03A064 0043A064 24848488 */  addiu       $a0, $a0, %lo(STR_10008488)
/* 03A068 0043A068 0320F809 */  jalr        $t9
/* 03A06C 0043A06C 24A584A0 */   addiu      $a1, $a1, %lo(STR_100084A0)
/* 03A070 0043A070 8FBC0028 */  lw          $gp, 0x28($sp)
.L0043A074:
/* 03A074 0043A074 8F998394 */  lw          $t9, %call16(obj_text_size)($gp)
/* 03A078 0043A078 02602025 */  move        $a0, $s3
/* 03A07C 0043A07C 0320F809 */  jalr        $t9
/* 03A080 0043A080 00000000 */   nop
/* 03A084 0043A084 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03A088 0043A088 1A800068 */  blez        $s4, .L0043A22C
/* 03A08C 0043A08C AE020004 */   sw         $v0, 0x4($s0)
/* 03A090 0043A090 8F998394 */  lw          $t9, %call16(obj_text_size)($gp)
/* 03A094 0043A094 02602025 */  move        $a0, $s3
/* 03A098 0043A098 0320F809 */  jalr        $t9
/* 03A09C 0043A09C 00000000 */   nop
/* 03A0A0 0043A0A0 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03A0A4 0043A0A4 8E0F0014 */  lw          $t7, 0x14($s0)
/* 03A0A8 0043A0A8 00002825 */  move        $a1, $zero
/* 03A0AC 0043A0AC 8F99813C */  lw          $t9, %call16(memset)($gp)
/* 03A0B0 0043A0B0 004FC021 */  addu        $t8, $v0, $t7
/* 03A0B4 0043A0B4 03142023 */  subu        $a0, $t8, $s4
/* 03A0B8 0043A0B8 0320F809 */  jalr        $t9
/* 03A0BC 0043A0BC 02803025 */   move       $a2, $s4
/* 03A0C0 0043A0C0 1000005A */  b           .L0043A22C
/* 03A0C4 0043A0C4 8FBC0028 */   lw         $gp, 0x28($sp)
.L0043A0C8:
/* 03A0C8 0043A0C8 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 03A0CC 0043A0CC 02602025 */  move        $a0, $s3
/* 03A0D0 0043A0D0 0320F809 */  jalr        $t9
/* 03A0D4 0043A0D4 00000000 */   nop
/* 03A0D8 0043A0D8 24010003 */  addiu       $at, $zero, 0x3
/* 03A0DC 0043A0DC 1441004B */  bne         $v0, $at, .L0043A20C
/* 03A0E0 0043A0E0 8FBC0028 */   lw         $gp, 0x28($sp)
/* 03A0E4 0043A0E4 8FB90034 */  lw          $t9, 0x34($sp)
/* 03A0E8 0043A0E8 00009025 */  move        $s2, $zero
/* 03A0EC 0043A0EC 00008825 */  move        $s1, $zero
/* 03A0F0 0043A0F0 9728002C */  lhu         $t0, 0x2C($t9)
/* 03A0F4 0043A0F4 5100004E */  beql        $t0, $zero, .L0043A230
/* 03A0F8 0043A0F8 8FBF002C */   lw         $ra, 0x2C($sp)
.L0043A0FC:
/* 03A0FC 0043A0FC 8F998430 */  lw          $t9, %call16(obj_pproghdr)($gp)
/* 03A100 0043A100 02602025 */  move        $a0, $s3
/* 03A104 0043A104 0320F809 */  jalr        $t9
/* 03A108 0043A108 00000000 */   nop
/* 03A10C 0043A10C 00511821 */  addu        $v1, $v0, $s1
/* 03A110 0043A110 8C690000 */  lw          $t1, 0x0($v1)
/* 03A114 0043A114 24010001 */  addiu       $at, $zero, 0x1
/* 03A118 0043A118 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03A11C 0043A11C 55210033 */  bnel        $t1, $at, .L0043A1EC
/* 03A120 0043A120 8FAE0034 */   lw         $t6, 0x34($sp)
/* 03A124 0043A124 8C6A0018 */  lw          $t2, 0x18($v1)
/* 03A128 0043A128 24010004 */  addiu       $at, $zero, 0x4
/* 03A12C 0043A12C 314B0006 */  andi        $t3, $t2, 0x6
/* 03A130 0043A130 5561002E */  bnel        $t3, $at, .L0043A1EC
/* 03A134 0043A134 8FAE0034 */   lw         $t6, 0x34($sp)
/* 03A138 0043A138 8F998394 */  lw          $t9, %call16(obj_text_size)($gp)
/* 03A13C 0043A13C 02602025 */  move        $a0, $s3
/* 03A140 0043A140 AFA20030 */  sw          $v0, 0x30($sp)
/* 03A144 0043A144 0320F809 */  jalr        $t9
/* 03A148 0043A148 00000000 */   nop
/* 03A14C 0043A14C 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03A150 0043A150 8FA60030 */  lw          $a2, 0x30($sp)
/* 03A154 0043A154 00402825 */  move        $a1, $v0
/* 03A158 0043A158 8F998110 */  lw          $t9, %call16(realloc)($gp)
/* 03A15C 0043A15C 00D18021 */  addu        $s0, $a2, $s1
/* 03A160 0043A160 8E04000C */  lw          $a0, 0xC($s0)
/* 03A164 0043A164 0320F809 */  jalr        $t9
/* 03A168 0043A168 00000000 */   nop
/* 03A16C 0043A16C 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03A170 0043A170 14400009 */  bnez        $v0, .L0043A198
/* 03A174 0043A174 AE02000C */   sw         $v0, 0xC($s0)
/* 03A178 0043A178 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 03A17C 0043A17C 8F848030 */  lw          $a0, %got(STR_100084B0)($gp)
/* 03A180 0043A180 8F858030 */  lw          $a1, %got(STR_100084C8)($gp)
/* 03A184 0043A184 240602AC */  addiu       $a2, $zero, 0x2AC
/* 03A188 0043A188 248484B0 */  addiu       $a0, $a0, %lo(STR_100084B0)
/* 03A18C 0043A18C 0320F809 */  jalr        $t9
/* 03A190 0043A190 24A584C8 */   addiu      $a1, $a1, %lo(STR_100084C8)
/* 03A194 0043A194 8FBC0028 */  lw          $gp, 0x28($sp)
.L0043A198:
/* 03A198 0043A198 8F998394 */  lw          $t9, %call16(obj_text_size)($gp)
/* 03A19C 0043A19C 02602025 */  move        $a0, $s3
/* 03A1A0 0043A1A0 0320F809 */  jalr        $t9
/* 03A1A4 0043A1A4 00000000 */   nop
/* 03A1A8 0043A1A8 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03A1AC 0043A1AC 1A80000E */  blez        $s4, .L0043A1E8
/* 03A1B0 0043A1B0 AE020010 */   sw         $v0, 0x10($s0)
/* 03A1B4 0043A1B4 8F998394 */  lw          $t9, %call16(obj_text_size)($gp)
/* 03A1B8 0043A1B8 02602025 */  move        $a0, $s3
/* 03A1BC 0043A1BC 0320F809 */  jalr        $t9
/* 03A1C0 0043A1C0 00000000 */   nop
/* 03A1C4 0043A1C4 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03A1C8 0043A1C8 8E0C000C */  lw          $t4, 0xC($s0)
/* 03A1CC 0043A1CC 00002825 */  move        $a1, $zero
/* 03A1D0 0043A1D0 8F99813C */  lw          $t9, %call16(memset)($gp)
/* 03A1D4 0043A1D4 004C6821 */  addu        $t5, $v0, $t4
/* 03A1D8 0043A1D8 01B42023 */  subu        $a0, $t5, $s4
/* 03A1DC 0043A1DC 0320F809 */  jalr        $t9
/* 03A1E0 0043A1E0 02803025 */   move       $a2, $s4
/* 03A1E4 0043A1E4 8FBC0028 */  lw          $gp, 0x28($sp)
.L0043A1E8:
/* 03A1E8 0043A1E8 8FAE0034 */  lw          $t6, 0x34($sp)
.L0043A1EC:
/* 03A1EC 0043A1EC 26520001 */  addiu       $s2, $s2, 0x1
/* 03A1F0 0043A1F0 26310020 */  addiu       $s1, $s1, 0x20
/* 03A1F4 0043A1F4 95CF002C */  lhu         $t7, 0x2C($t6)
/* 03A1F8 0043A1F8 024F082B */  sltu        $at, $s2, $t7
/* 03A1FC 0043A1FC 1420FFBF */  bnez        $at, .L0043A0FC
/* 03A200 0043A200 00000000 */   nop
/* 03A204 0043A204 1000000A */  b           .L0043A230
/* 03A208 0043A208 8FBF002C */   lw         $ra, 0x2C($sp)
.L0043A20C:
/* 03A20C 0043A20C 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 03A210 0043A210 8F848030 */  lw          $a0, %got(STR_100084D8)($gp)
/* 03A214 0043A214 8F858030 */  lw          $a1, %got(STR_100084DC)($gp)
/* 03A218 0043A218 240602B6 */  addiu       $a2, $zero, 0x2B6
/* 03A21C 0043A21C 248484D8 */  addiu       $a0, $a0, %lo(STR_100084D8)
/* 03A220 0043A220 0320F809 */  jalr        $t9
/* 03A224 0043A224 24A584DC */   addiu      $a1, $a1, %lo(STR_100084DC)
/* 03A228 0043A228 8FBC0028 */  lw          $gp, 0x28($sp)
.L0043A22C:
/* 03A22C 0043A22C 8FBF002C */  lw          $ra, 0x2C($sp)
.L0043A230:
/* 03A230 0043A230 8FB00014 */  lw          $s0, 0x14($sp)
/* 03A234 0043A234 8FB10018 */  lw          $s1, 0x18($sp)
/* 03A238 0043A238 8FB2001C */  lw          $s2, 0x1C($sp)
/* 03A23C 0043A23C 8FB30020 */  lw          $s3, 0x20($sp)
/* 03A240 0043A240 8FB40024 */  lw          $s4, 0x24($sp)
/* 03A244 0043A244 03E00008 */  jr          $ra
/* 03A248 0043A248 27BD0040 */   addiu      $sp, $sp, 0x40
