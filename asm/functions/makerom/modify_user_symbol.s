.section .rodata
glabel STR_10008804
/* 048804 10008804 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10008828
/* 048828 10008828 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_1000884C
/* 04884C 1000884C */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10008870
/* 048870 10008870 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10008894
/* 048894 10008894 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_100088B8
/* 0488B8 100088B8 */ .asciz "dbx running out of type table space"
                      .balign 4


.section .text
glabel modify_user_symbol # 611
/* 03C384 0043C384 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03C388 0043C388 279C69DC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD69DC
/* 03C38C 0043C38C 0399E021 */  addu        $gp, $gp, $t9
/* 03C390 0043C390 00047023 */  negu        $t6, $a0
/* 03C394 0043C394 8F9887D4 */  lw          $t8, %got(usersymbol)($gp)
/* 03C398 0043C398 000E7880 */  sll         $t7, $t6, 2
/* 03C39C 0043C39C 01EE7823 */  subu        $t7, $t7, $t6
/* 03C3A0 0043C3A0 000F7880 */  sll         $t7, $t7, 2
/* 03C3A4 0043C3A4 01F81821 */  addu        $v1, $t7, $t8
/* 03C3A8 0043C3A8 906A0008 */  lbu         $t2, 0x8($v1)
/* 03C3AC 0043C3AC 00A0C825 */  move        $t9, $a1
/* 03C3B0 0043C3B0 00194880 */  sll         $t1, $t9, 2
/* 03C3B4 0043C3B4 314BFF03 */  andi        $t3, $t2, 0xFF03
/* 03C3B8 0043C3B8 012B6025 */  or          $t4, $t1, $t3
/* 03C3BC 0043C3BC A06C0008 */  sb          $t4, 0x8($v1)
/* 03C3C0 0043C3C0 94780008 */  lhu         $t8, 0x8($v1)
/* 03C3C4 0043C3C4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 03C3C8 0043C3C8 00067140 */  sll         $t6, $a2, 5
/* 03C3CC 0043C3CC 8FAA0040 */  lw          $t2, 0x40($sp)
/* 03C3D0 0043C3D0 31CF03E0 */  andi        $t7, $t6, 0x3E0
/* 03C3D4 0043C3D4 3319FC1F */  andi        $t9, $t8, 0xFC1F
/* 03C3D8 0043C3D8 01F94025 */  or          $t0, $t7, $t9
/* 03C3DC 0043C3DC AFBF001C */  sw          $ra, 0x1C($sp)
/* 03C3E0 0043C3E0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03C3E4 0043C3E4 AFB00014 */  sw          $s0, 0x14($sp)
/* 03C3E8 0043C3E8 AFA7003C */  sw          $a3, 0x3C($sp)
/* 03C3EC 0043C3EC A4680008 */  sh          $t0, 0x8($v1)
/* 03C3F0 0043C3F0 10E00067 */  beqz        $a3, .L0043C590
/* 03C3F4 0043C3F4 AC6A0004 */   sw         $t2, 0x4($v1)
/* 03C3F8 0043C3F8 8F998598 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 03C3FC 0043C3FC AFA30020 */  sw          $v1, 0x20($sp)
/* 03C400 0043C400 0320F809 */  jalr        $t9
/* 03C404 0043C404 00000000 */   nop
/* 03C408 0043C408 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03C40C 0043C40C 8FA30020 */  lw          $v1, 0x20($sp)
/* 03C410 0043C410 14400008 */  bnez        $v0, .L0043C434
/* 03C414 0043C414 00408025 */   move       $s0, $v0
/* 03C418 0043C418 8F9985C4 */  lw          $t9, %call16(panic)($gp)
/* 03C41C 0043C41C 8F848030 */  lw          $a0, %got(STR_10008804)($gp)
/* 03C420 0043C420 AFA30020 */  sw          $v1, 0x20($sp)
/* 03C424 0043C424 0320F809 */  jalr        $t9
/* 03C428 0043C428 24848804 */   addiu      $a0, $a0, %lo(STR_10008804)
/* 03C42C 0043C42C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03C430 0043C430 8FA30020 */  lw          $v1, 0x20($sp)
.L0043C434:
/* 03C434 0043C434 8FA4003C */  lw          $a0, 0x3C($sp)
/* 03C438 0043C438 8F8D87D0 */  lw          $t5, %got(usertype)($gp)
/* 03C43C 0043C43C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03C440 0043C440 8C8C000C */  lw          $t4, 0xC($a0)
/* 03C444 0043C444 01B07023 */  subu        $t6, $t5, $s0
/* 03C448 0043C448 000EC083 */  sra         $t8, $t6, 2
/* 03C44C 0043C44C AE0C0000 */  sw          $t4, 0x0($s0)
/* 03C450 0043C450 8C620008 */  lw          $v0, 0x8($v1)
/* 03C454 0043C454 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03C458 0043C458 03017824 */  and         $t7, $t8, $at
/* 03C45C 0043C45C 01E2C826 */  xor         $t9, $t7, $v0
/* 03C460 0043C460 00194300 */  sll         $t0, $t9, 12
/* 03C464 0043C464 00085302 */  srl         $t2, $t0, 12
/* 03C468 0043C468 01424826 */  xor         $t1, $t2, $v0
/* 03C46C 0043C46C AC690008 */  sw          $t1, 0x8($v1)
/* 03C470 0043C470 8C8B0024 */  lw          $t3, 0x24($a0)
/* 03C474 0043C474 24010003 */  addiu       $at, $zero, 0x3
/* 03C478 0043C478 55610046 */  bnel        $t3, $at, .L0043C594
/* 03C47C 0043C47C 8FBF001C */   lw         $ra, 0x1C($sp)
/* 03C480 0043C480 8F998598 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 03C484 0043C484 0320F809 */  jalr        $t9
/* 03C488 0043C488 00000000 */   nop
/* 03C48C 0043C48C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03C490 0043C490 14400006 */  bnez        $v0, .L0043C4AC
/* 03C494 0043C494 00408025 */   move       $s0, $v0
/* 03C498 0043C498 8F9985C4 */  lw          $t9, %call16(panic)($gp)
/* 03C49C 0043C49C 8F848030 */  lw          $a0, %got(STR_10008828)($gp)
/* 03C4A0 0043C4A0 0320F809 */  jalr        $t9
/* 03C4A4 0043C4A4 24848828 */   addiu      $a0, $a0, %lo(STR_10008828)
/* 03C4A8 0043C4A8 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043C4AC:
/* 03C4AC 0043C4AC 3C0CFFF0 */  lui         $t4, (0xFFF00004 >> 16)
/* 03C4B0 0043C4B0 358C0004 */  ori         $t4, $t4, (0xFFF00004 & 0xFFFF)
/* 03C4B4 0043C4B4 AE0C0000 */  sw          $t4, 0x0($s0)
/* 03C4B8 0043C4B8 8F998598 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 03C4BC 0043C4BC 0320F809 */  jalr        $t9
/* 03C4C0 0043C4C0 00000000 */   nop
/* 03C4C4 0043C4C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03C4C8 0043C4C8 14400006 */  bnez        $v0, .L0043C4E4
/* 03C4CC 0043C4CC 00408025 */   move       $s0, $v0
/* 03C4D0 0043C4D0 8F9985C4 */  lw          $t9, %call16(panic)($gp)
/* 03C4D4 0043C4D4 8F848030 */  lw          $a0, %got(STR_1000884C)($gp)
/* 03C4D8 0043C4D8 0320F809 */  jalr        $t9
/* 03C4DC 0043C4DC 2484884C */   addiu      $a0, $a0, %lo(STR_1000884C)
/* 03C4E0 0043C4E0 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043C4E4:
/* 03C4E4 0043C4E4 AE000000 */  sw          $zero, 0x0($s0)
/* 03C4E8 0043C4E8 8F998598 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 03C4EC 0043C4EC 0320F809 */  jalr        $t9
/* 03C4F0 0043C4F0 00000000 */   nop
/* 03C4F4 0043C4F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03C4F8 0043C4F8 14400006 */  bnez        $v0, .L0043C514
/* 03C4FC 0043C4FC 00408025 */   move       $s0, $v0
/* 03C500 0043C500 8F9985C4 */  lw          $t9, %call16(panic)($gp)
/* 03C504 0043C504 8F848030 */  lw          $a0, %got(STR_10008870)($gp)
/* 03C508 0043C508 0320F809 */  jalr        $t9
/* 03C50C 0043C50C 24848870 */   addiu      $a0, $a0, %lo(STR_10008870)
/* 03C510 0043C510 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043C514:
/* 03C514 0043C514 8FAD003C */  lw          $t5, 0x3C($sp)
/* 03C518 0043C518 8DAE0034 */  lw          $t6, 0x34($t5)
/* 03C51C 0043C51C AE0E0000 */  sw          $t6, 0x0($s0)
/* 03C520 0043C520 8F998598 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 03C524 0043C524 0320F809 */  jalr        $t9
/* 03C528 0043C528 00000000 */   nop
/* 03C52C 0043C52C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03C530 0043C530 14400006 */  bnez        $v0, .L0043C54C
/* 03C534 0043C534 00408025 */   move       $s0, $v0
/* 03C538 0043C538 8F9985C4 */  lw          $t9, %call16(panic)($gp)
/* 03C53C 0043C53C 8F848030 */  lw          $a0, %got(STR_10008894)($gp)
/* 03C540 0043C540 0320F809 */  jalr        $t9
/* 03C544 0043C544 24848894 */   addiu      $a0, $a0, %lo(STR_10008894)
/* 03C548 0043C548 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043C54C:
/* 03C54C 0043C54C 8FB8003C */  lw          $t8, 0x3C($sp)
/* 03C550 0043C550 8F0F0038 */  lw          $t7, 0x38($t8)
/* 03C554 0043C554 AE0F0000 */  sw          $t7, 0x0($s0)
/* 03C558 0043C558 8F998598 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 03C55C 0043C55C 0320F809 */  jalr        $t9
/* 03C560 0043C560 00000000 */   nop
/* 03C564 0043C564 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03C568 0043C568 14400006 */  bnez        $v0, .L0043C584
/* 03C56C 0043C56C 00408025 */   move       $s0, $v0
/* 03C570 0043C570 8F9985C4 */  lw          $t9, %call16(panic)($gp)
/* 03C574 0043C574 8F848030 */  lw          $a0, %got(STR_100088B8)($gp)
/* 03C578 0043C578 0320F809 */  jalr        $t9
/* 03C57C 0043C57C 248488B8 */   addiu      $a0, $a0, %lo(STR_100088B8)
/* 03C580 0043C580 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043C584:
/* 03C584 0043C584 8FB9003C */  lw          $t9, 0x3C($sp)
/* 03C588 0043C588 8F28003C */  lw          $t0, 0x3C($t9)
/* 03C58C 0043C58C AE080000 */  sw          $t0, 0x0($s0)
.L0043C590:
/* 03C590 0043C590 8FBF001C */  lw          $ra, 0x1C($sp)
.L0043C594:
/* 03C594 0043C594 8FB00014 */  lw          $s0, 0x14($sp)
/* 03C598 0043C598 27BD0030 */  addiu       $sp, $sp, 0x30
/* 03C59C 0043C59C 03E00008 */  jr          $ra
/* 03C5A0 0043C5A0 00001025 */   move       $v0, $zero
