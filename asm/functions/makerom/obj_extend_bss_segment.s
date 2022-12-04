.section .rodata
glabel STR_100084EC
/* 0484EC 100084EC */ .asciz "!obj_shared(obj)||((obj_data_size(obj)+obj_bss_size(obj)+incr) <= MAXDSZ)"
                      .balign 4

glabel STR_10008538
/* 048538 10008538 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008548
/* 048548 10008548 */ .asciz ".bss"
                      .balign 4

glabel STR_10008550
/* 048550 10008550 */ .asciz ".sbss"
                      .balign 4

glabel STR_10008558
/* 048558 10008558 */ .asciz "0"
                      .balign 4

glabel STR_1000855C
/* 04855C 1000855C */ .asciz "obj_rewrite.c"
                      .balign 4


.section .text
glabel obj_extend_bss_segment # 583
/* 03A24C 0043A24C 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 03A250 0043A250 279C8B14 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD8B14
/* 03A254 0043A254 0399E021 */  addu        $gp, $gp, $t9
/* 03A258 0043A258 8F99828C */  lw          $t9, %call16(obj_shared)($gp)
/* 03A25C 0043A25C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03A260 0043A260 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03A264 0043A264 AFB00014 */  sw          $s0, 0x14($sp)
/* 03A268 0043A268 00808025 */  move        $s0, $a0
/* 03A26C 0043A26C AFBC0018 */  sw          $gp, 0x18($sp)
/* 03A270 0043A270 0320F809 */  jalr        $t9
/* 03A274 0043A274 AFA5003C */   sw         $a1, 0x3C($sp)
/* 03A278 0043A278 1040001C */  beqz        $v0, .L0043A2EC
/* 03A27C 0043A27C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 03A280 0043A280 8F9983A4 */  lw          $t9, %call16(obj_data_size)($gp)
/* 03A284 0043A284 02002025 */  move        $a0, $s0
/* 03A288 0043A288 0320F809 */  jalr        $t9
/* 03A28C 0043A28C 00000000 */   nop
/* 03A290 0043A290 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A294 0043A294 AFA20028 */  sw          $v0, 0x28($sp)
/* 03A298 0043A298 02002025 */  move        $a0, $s0
/* 03A29C 0043A29C 8F9983A8 */  lw          $t9, %call16(obj_bss_size)($gp)
/* 03A2A0 0043A2A0 0320F809 */  jalr        $t9
/* 03A2A4 0043A2A4 00000000 */   nop
/* 03A2A8 0043A2A8 8FAE0028 */  lw          $t6, 0x28($sp)
/* 03A2AC 0043A2AC 8FB8003C */  lw          $t8, 0x3C($sp)
/* 03A2B0 0043A2B0 3C010020 */  lui         $at, (0x200001 >> 16)
/* 03A2B4 0043A2B4 004E7821 */  addu        $t7, $v0, $t6
/* 03A2B8 0043A2B8 34210001 */  ori         $at, $at, (0x200001 & 0xFFFF)
/* 03A2BC 0043A2BC 01F8C821 */  addu        $t9, $t7, $t8
/* 03A2C0 0043A2C0 0321082B */  sltu        $at, $t9, $at
/* 03A2C4 0043A2C4 14200009 */  bnez        $at, .L0043A2EC
/* 03A2C8 0043A2C8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 03A2CC 0043A2CC 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 03A2D0 0043A2D0 8F848030 */  lw          $a0, %got(STR_100084EC)($gp)
/* 03A2D4 0043A2D4 8F858030 */  lw          $a1, %got(STR_10008538)($gp)
/* 03A2D8 0043A2D8 240602BE */  addiu       $a2, $zero, 0x2BE
/* 03A2DC 0043A2DC 248484EC */  addiu       $a0, $a0, %lo(STR_100084EC)
/* 03A2E0 0043A2E0 0320F809 */  jalr        $t9
/* 03A2E4 0043A2E4 24A58538 */   addiu      $a1, $a1, %lo(STR_10008538)
/* 03A2E8 0043A2E8 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043A2EC:
/* 03A2EC 0043A2EC 8F9983A8 */  lw          $t9, %call16(obj_bss_size)($gp)
/* 03A2F0 0043A2F0 02002025 */  move        $a0, $s0
/* 03A2F4 0043A2F4 0320F809 */  jalr        $t9
/* 03A2F8 0043A2F8 00000000 */   nop
/* 03A2FC 0043A2FC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A300 0043A300 8FA8003C */  lw          $t0, 0x3C($sp)
/* 03A304 0043A304 02002025 */  move        $a0, $s0
/* 03A308 0043A308 8F9983AC */  lw          $t9, %call16(obj_set_bss_size)($gp)
/* 03A30C 0043A30C 00482821 */  addu        $a1, $v0, $t0
/* 03A310 0043A310 0320F809 */  jalr        $t9
/* 03A314 0043A314 00000000 */   nop
/* 03A318 0043A318 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A31C 0043A31C 02002025 */  move        $a0, $s0
/* 03A320 0043A320 8F998524 */  lw          $t9, %call16(foreach_section)($gp)
/* 03A324 0043A324 8F858534 */  lw          $a1, %got(find_section_byname)($gp)
/* 03A328 0043A328 8F868030 */  lw          $a2, %got(STR_10008548)($gp)
/* 03A32C 0043A32C AFA50024 */  sw          $a1, 0x24($sp)
/* 03A330 0043A330 0320F809 */  jalr        $t9
/* 03A334 0043A334 24C68548 */   addiu      $a2, $a2, %lo(STR_10008548)
/* 03A338 0043A338 2401FFFF */  addiu       $at, $zero, -0x1
/* 03A33C 0043A33C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A340 0043A340 8FA50024 */  lw          $a1, 0x24($sp)
/* 03A344 0043A344 14410008 */  bne         $v0, $at, .L0043A368
/* 03A348 0043A348 00401825 */   move       $v1, $v0
/* 03A34C 0043A34C 8F998524 */  lw          $t9, %call16(foreach_section)($gp)
/* 03A350 0043A350 8F868030 */  lw          $a2, %got(STR_10008550)($gp)
/* 03A354 0043A354 02002025 */  move        $a0, $s0
/* 03A358 0043A358 0320F809 */  jalr        $t9
/* 03A35C 0043A35C 24C68550 */   addiu      $a2, $a2, %lo(STR_10008550)
/* 03A360 0043A360 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A364 0043A364 00401825 */  move        $v1, $v0
.L0043A368:
/* 03A368 0043A368 2401FFFF */  addiu       $at, $zero, -0x1
/* 03A36C 0043A36C 50410026 */  beql        $v0, $at, .L0043A408
/* 03A370 0043A370 8FBF001C */   lw         $ra, 0x1C($sp)
/* 03A374 0043A374 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 03A378 0043A378 02002025 */  move        $a0, $s0
/* 03A37C 0043A37C AFA30034 */  sw          $v1, 0x34($sp)
/* 03A380 0043A380 0320F809 */  jalr        $t9
/* 03A384 0043A384 00000000 */   nop
/* 03A388 0043A388 24010002 */  addiu       $at, $zero, 0x2
/* 03A38C 0043A38C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A390 0043A390 14410006 */  bne         $v0, $at, .L0043A3AC
/* 03A394 0043A394 8FA30034 */   lw         $v1, 0x34($sp)
/* 03A398 0043A398 8C690010 */  lw          $t1, 0x10($v1)
/* 03A39C 0043A39C 8FAA003C */  lw          $t2, 0x3C($sp)
/* 03A3A0 0043A3A0 012A5821 */  addu        $t3, $t1, $t2
/* 03A3A4 0043A3A4 10000017 */  b           .L0043A404
/* 03A3A8 0043A3A8 AC6B0010 */   sw         $t3, 0x10($v1)
.L0043A3AC:
/* 03A3AC 0043A3AC 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 03A3B0 0043A3B0 02002025 */  move        $a0, $s0
/* 03A3B4 0043A3B4 AFA30034 */  sw          $v1, 0x34($sp)
/* 03A3B8 0043A3B8 0320F809 */  jalr        $t9
/* 03A3BC 0043A3BC 00000000 */   nop
/* 03A3C0 0043A3C0 24010003 */  addiu       $at, $zero, 0x3
/* 03A3C4 0043A3C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A3C8 0043A3C8 14410006 */  bne         $v0, $at, .L0043A3E4
/* 03A3CC 0043A3CC 8FA30034 */   lw         $v1, 0x34($sp)
/* 03A3D0 0043A3D0 8C6C0014 */  lw          $t4, 0x14($v1)
/* 03A3D4 0043A3D4 8FAD003C */  lw          $t5, 0x3C($sp)
/* 03A3D8 0043A3D8 018D7021 */  addu        $t6, $t4, $t5
/* 03A3DC 0043A3DC 10000009 */  b           .L0043A404
/* 03A3E0 0043A3E0 AC6E0014 */   sw         $t6, 0x14($v1)
.L0043A3E4:
/* 03A3E4 0043A3E4 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 03A3E8 0043A3E8 8F848030 */  lw          $a0, %got(STR_10008558)($gp)
/* 03A3EC 0043A3EC 8F858030 */  lw          $a1, %got(STR_1000855C)($gp)
/* 03A3F0 0043A3F0 240602CD */  addiu       $a2, $zero, 0x2CD
/* 03A3F4 0043A3F4 24848558 */  addiu       $a0, $a0, %lo(STR_10008558)
/* 03A3F8 0043A3F8 0320F809 */  jalr        $t9
/* 03A3FC 0043A3FC 24A5855C */   addiu      $a1, $a1, %lo(STR_1000855C)
/* 03A400 0043A400 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043A404:
/* 03A404 0043A404 8FBF001C */  lw          $ra, 0x1C($sp)
.L0043A408:
/* 03A408 0043A408 02001025 */  move        $v0, $s0
/* 03A40C 0043A40C 8FB00014 */  lw          $s0, 0x14($sp)
/* 03A410 0043A410 03E00008 */  jr          $ra
/* 03A414 0043A414 27BD0038 */   addiu      $sp, $sp, 0x38
