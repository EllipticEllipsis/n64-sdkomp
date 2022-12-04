glabel func_0041C248 # 94
/* 01C248 0041C248 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 01C24C 0041C24C 279C6B18 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF6B18
/* 01C250 0041C250 0399E021 */  addu        $gp, $gp, $t9
/* 01C254 0041C254 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 01C258 0041C258 AFA40060 */  sw          $a0, 0x60($sp)
/* 01C25C 0041C25C AFA60068 */  sw          $a2, 0x68($sp)
/* 01C260 0041C260 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01C264 0041C264 8FAF0068 */  lw          $t7, 0x68($sp)
/* 01C268 0041C268 AFA50064 */  sw          $a1, 0x64($sp)
/* 01C26C 0041C26C AFAE005C */  sw          $t6, 0x5C($sp)
/* 01C270 0041C270 000FC140 */  sll         $t8, $t7, 5
/* 01C274 0041C274 8FA80064 */  lw          $t0, 0x64($sp)
/* 01C278 0041C278 8FAB005C */  lw          $t3, 0x5C($sp)
/* 01C27C 0041C27C 01D8C821 */  addu        $t9, $t6, $t8
/* 01C280 0041C280 000F48C0 */  sll         $t1, $t7, 3
/* 01C284 0041C284 012F4823 */  subu        $t1, $t1, $t7
/* 01C288 0041C288 AFB00014 */  sw          $s0, 0x14($sp)
/* 01C28C 0041C28C 000948C0 */  sll         $t1, $t1, 3
/* 01C290 0041C290 AFB90060 */  sw          $t9, 0x60($sp)
/* 01C294 0041C294 272CFFE0 */  addiu       $t4, $t9, -0x20
/* 01C298 0041C298 01095021 */  addu        $t2, $t0, $t1
/* 01C29C 0041C29C 0179802B */  sltu        $s0, $t3, $t9
/* 01C2A0 0041C2A0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 01C2A4 0041C2A4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01C2A8 0041C2A8 AFAA0064 */  sw          $t2, 0x64($sp)
/* 01C2AC 0041C2AC 12000317 */  beqz        $s0, .L0041CF0C
/* 01C2B0 0041C2B0 AFAC0060 */   sw         $t4, 0x60($sp)
.L0041C2B4:
/* 01C2B4 0041C2B4 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01C2B8 0041C2B8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C2BC 0041C2BC 24040000 */  addiu       $a0, $zero, 0x0
/* 01C2C0 0041C2C0 25AEFFC8 */  addiu       $t6, $t5, -0x38
/* 01C2C4 0041C2C4 AFAE0064 */  sw          $t6, 0x64($sp)
/* 01C2C8 0041C2C8 91D80037 */  lbu         $t8, 0x37($t6)
/* 01C2CC 0041C2CC 24060000 */  addiu       $a2, $zero, 0x0
/* 01C2D0 0041C2D0 24070008 */  addiu       $a3, $zero, 0x8
/* 01C2D4 0041C2D4 0320F809 */  jalr        $t9
/* 01C2D8 0041C2D8 03002825 */   move       $a1, $t8
/* 01C2DC 0041C2DC 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01C2E0 0041C2E0 AFA20020 */  sw          $v0, 0x20($sp)
/* 01C2E4 0041C2E4 AFA30024 */  sw          $v1, 0x24($sp)
/* 01C2E8 0041C2E8 91E80036 */  lbu         $t0, 0x36($t7)
/* 01C2EC 0041C2EC 8FAD0024 */  lw          $t5, 0x24($sp)
/* 01C2F0 0041C2F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C2F4 0041C2F4 01005825 */  move        $t3, $t0
/* 01C2F8 0041C2F8 016D2821 */  addu        $a1, $t3, $t5
/* 01C2FC 0041C2FC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C300 0041C300 8FAC0020 */  lw          $t4, 0x20($sp)
/* 01C304 0041C304 000857C3 */  sra         $t2, $t0, 31
/* 01C308 0041C308 00AD082B */  sltu        $at, $a1, $t5
/* 01C30C 0041C30C 002A2021 */  addu        $a0, $at, $t2
/* 01C310 0041C310 24060000 */  addiu       $a2, $zero, 0x0
/* 01C314 0041C314 24070008 */  addiu       $a3, $zero, 0x8
/* 01C318 0041C318 0320F809 */  jalr        $t9
/* 01C31C 0041C31C 008C2021 */   addu       $a0, $a0, $t4
/* 01C320 0041C320 8FA90064 */  lw          $t1, 0x64($sp)
/* 01C324 0041C324 AFA20028 */  sw          $v0, 0x28($sp)
/* 01C328 0041C328 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01C32C 0041C32C 91390035 */  lbu         $t9, 0x35($t1)
/* 01C330 0041C330 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C334 0041C334 8FB80028 */  lw          $t8, 0x28($sp)
/* 01C338 0041C338 03207825 */  move        $t7, $t9
/* 01C33C 0041C33C 001977C3 */  sra         $t6, $t9, 31
/* 01C340 0041C340 8FB9002C */  lw          $t9, 0x2C($sp)
/* 01C344 0041C344 24060000 */  addiu       $a2, $zero, 0x0
/* 01C348 0041C348 24070008 */  addiu       $a3, $zero, 0x8
/* 01C34C 0041C34C 01F92821 */  addu        $a1, $t7, $t9
/* 01C350 0041C350 00B9082B */  sltu        $at, $a1, $t9
/* 01C354 0041C354 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C358 0041C358 002E2021 */  addu        $a0, $at, $t6
/* 01C35C 0041C35C 00982021 */  addu        $a0, $a0, $t8
/* 01C360 0041C360 0320F809 */  jalr        $t9
/* 01C364 0041C364 00000000 */   nop
/* 01C368 0041C368 8FA80064 */  lw          $t0, 0x64($sp)
/* 01C36C 0041C36C AFA20030 */  sw          $v0, 0x30($sp)
/* 01C370 0041C370 AFA30034 */  sw          $v1, 0x34($sp)
/* 01C374 0041C374 910A0034 */  lbu         $t2, 0x34($t0)
/* 01C378 0041C378 8FAF0034 */  lw          $t7, 0x34($sp)
/* 01C37C 0041C37C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C380 0041C380 01406825 */  move        $t5, $t2
/* 01C384 0041C384 01AF2821 */  addu        $a1, $t5, $t7
/* 01C388 0041C388 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C38C 0041C38C 8FAE0030 */  lw          $t6, 0x30($sp)
/* 01C390 0041C390 000A67C3 */  sra         $t4, $t2, 31
/* 01C394 0041C394 00AF082B */  sltu        $at, $a1, $t7
/* 01C398 0041C398 002C2021 */  addu        $a0, $at, $t4
/* 01C39C 0041C39C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C3A0 0041C3A0 24070008 */  addiu       $a3, $zero, 0x8
/* 01C3A4 0041C3A4 0320F809 */  jalr        $t9
/* 01C3A8 0041C3A8 008E2021 */   addu       $a0, $a0, $t6
/* 01C3AC 0041C3AC 8FAB0064 */  lw          $t3, 0x64($sp)
/* 01C3B0 0041C3B0 AFA20038 */  sw          $v0, 0x38($sp)
/* 01C3B4 0041C3B4 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01C3B8 0041C3B8 91690033 */  lbu         $t1, 0x33($t3)
/* 01C3BC 0041C3BC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C3C0 0041C3C0 8FA80038 */  lw          $t0, 0x38($sp)
/* 01C3C4 0041C3C4 0120C825 */  move        $t9, $t1
/* 01C3C8 0041C3C8 0009C7C3 */  sra         $t8, $t1, 31
/* 01C3CC 0041C3CC 8FA9003C */  lw          $t1, 0x3C($sp)
/* 01C3D0 0041C3D0 24060000 */  addiu       $a2, $zero, 0x0
/* 01C3D4 0041C3D4 24070008 */  addiu       $a3, $zero, 0x8
/* 01C3D8 0041C3D8 03292821 */  addu        $a1, $t9, $t1
/* 01C3DC 0041C3DC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C3E0 0041C3E0 00A9082B */  sltu        $at, $a1, $t1
/* 01C3E4 0041C3E4 00382021 */  addu        $a0, $at, $t8
/* 01C3E8 0041C3E8 0320F809 */  jalr        $t9
/* 01C3EC 0041C3EC 00882021 */   addu       $a0, $a0, $t0
/* 01C3F0 0041C3F0 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01C3F4 0041C3F4 AFA20040 */  sw          $v0, 0x40($sp)
/* 01C3F8 0041C3F8 AFA30044 */  sw          $v1, 0x44($sp)
/* 01C3FC 0041C3FC 914C0032 */  lbu         $t4, 0x32($t2)
/* 01C400 0041C400 8FB90044 */  lw          $t9, 0x44($sp)
/* 01C404 0041C404 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C408 0041C408 01807825 */  move        $t7, $t4
/* 01C40C 0041C40C 01F92821 */  addu        $a1, $t7, $t9
/* 01C410 0041C410 00B9082B */  sltu        $at, $a1, $t9
/* 01C414 0041C414 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C418 0041C418 8FB80040 */  lw          $t8, 0x40($sp)
/* 01C41C 0041C41C 000C77C3 */  sra         $t6, $t4, 31
/* 01C420 0041C420 002E2021 */  addu        $a0, $at, $t6
/* 01C424 0041C424 24060000 */  addiu       $a2, $zero, 0x0
/* 01C428 0041C428 24070008 */  addiu       $a3, $zero, 0x8
/* 01C42C 0041C42C 0320F809 */  jalr        $t9
/* 01C430 0041C430 00982021 */   addu       $a0, $a0, $t8
/* 01C434 0041C434 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01C438 0041C438 AFA20048 */  sw          $v0, 0x48($sp)
/* 01C43C 0041C43C AFA3004C */  sw          $v1, 0x4C($sp)
/* 01C440 0041C440 91AB0031 */  lbu         $t3, 0x31($t5)
/* 01C444 0041C444 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C448 0041C448 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01C44C 0041C44C 01604825 */  move        $t1, $t3
/* 01C450 0041C450 000B47C3 */  sra         $t0, $t3, 31
/* 01C454 0041C454 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01C458 0041C458 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C45C 0041C45C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C460 0041C460 012B2821 */  addu        $a1, $t1, $t3
/* 01C464 0041C464 00AB082B */  sltu        $at, $a1, $t3
/* 01C468 0041C468 00282021 */  addu        $a0, $at, $t0
/* 01C46C 0041C46C 24070008 */  addiu       $a3, $zero, 0x8
/* 01C470 0041C470 0320F809 */  jalr        $t9
/* 01C474 0041C474 008A2021 */   addu       $a0, $a0, $t2
/* 01C478 0041C478 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01C47C 0041C47C AFA20050 */  sw          $v0, 0x50($sp)
/* 01C480 0041C480 AFA30054 */  sw          $v1, 0x54($sp)
/* 01C484 0041C484 918E0030 */  lbu         $t6, 0x30($t4)
/* 01C488 0041C488 8FA90054 */  lw          $t1, 0x54($sp)
/* 01C48C 0041C48C 8FAD0060 */  lw          $t5, 0x60($sp)
/* 01C490 0041C490 01C0C825 */  move        $t9, $t6
/* 01C494 0041C494 03295821 */  addu        $t3, $t9, $t1
/* 01C498 0041C498 8FA80050 */  lw          $t0, 0x50($sp)
/* 01C49C 0041C49C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C4A0 0041C4A0 01607825 */  move        $t7, $t3
/* 01C4A4 0041C4A4 ADAF001C */  sw          $t7, 0x1C($t5)
/* 01C4A8 0041C4A8 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01C4AC 0041C4AC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C4B0 0041C4B0 000EC7C3 */  sra         $t8, $t6, 31
/* 01C4B4 0041C4B4 918E002F */  lbu         $t6, 0x2F($t4)
/* 01C4B8 0041C4B8 0169082B */  sltu        $at, $t3, $t1
/* 01C4BC 0041C4BC 00385021 */  addu        $t2, $at, $t8
/* 01C4C0 0041C4C0 24040000 */  addiu       $a0, $zero, 0x0
/* 01C4C4 0041C4C4 24060000 */  addiu       $a2, $zero, 0x0
/* 01C4C8 0041C4C8 24070008 */  addiu       $a3, $zero, 0x8
/* 01C4CC 0041C4CC 01485021 */  addu        $t2, $t2, $t0
/* 01C4D0 0041C4D0 0320F809 */  jalr        $t9
/* 01C4D4 0041C4D4 01C02825 */   move       $a1, $t6
/* 01C4D8 0041C4D8 8FB80064 */  lw          $t8, 0x64($sp)
/* 01C4DC 0041C4DC AFA20020 */  sw          $v0, 0x20($sp)
/* 01C4E0 0041C4E0 AFA30024 */  sw          $v1, 0x24($sp)
/* 01C4E4 0041C4E4 9319002E */  lbu         $t9, 0x2E($t8)
/* 01C4E8 0041C4E8 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01C4EC 0041C4EC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C4F0 0041C4F0 03204825 */  move        $t1, $t9
/* 01C4F4 0041C4F4 001947C3 */  sra         $t0, $t9, 31
/* 01C4F8 0041C4F8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C4FC 0041C4FC 012B2821 */  addu        $a1, $t1, $t3
/* 01C500 0041C500 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01C504 0041C504 00AB082B */  sltu        $at, $a1, $t3
/* 01C508 0041C508 00282021 */  addu        $a0, $at, $t0
/* 01C50C 0041C50C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C510 0041C510 24070008 */  addiu       $a3, $zero, 0x8
/* 01C514 0041C514 0320F809 */  jalr        $t9
/* 01C518 0041C518 008A2021 */   addu       $a0, $a0, $t2
/* 01C51C 0041C51C 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01C520 0041C520 AFA20028 */  sw          $v0, 0x28($sp)
/* 01C524 0041C524 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01C528 0041C528 91ED002D */  lbu         $t5, 0x2D($t7)
/* 01C52C 0041C52C 8FAF002C */  lw          $t7, 0x2C($sp)
/* 01C530 0041C530 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C534 0041C534 8FAE0028 */  lw          $t6, 0x28($sp)
/* 01C538 0041C538 01AF2821 */  addu        $a1, $t5, $t7
/* 01C53C 0041C53C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C540 0041C540 000D67C3 */  sra         $t4, $t5, 31
/* 01C544 0041C544 00AF082B */  sltu        $at, $a1, $t7
/* 01C548 0041C548 002C2021 */  addu        $a0, $at, $t4
/* 01C54C 0041C54C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C550 0041C550 24070008 */  addiu       $a3, $zero, 0x8
/* 01C554 0041C554 0320F809 */  jalr        $t9
/* 01C558 0041C558 008E2021 */   addu       $a0, $a0, $t6
/* 01C55C 0041C55C 8FB80064 */  lw          $t8, 0x64($sp)
/* 01C560 0041C560 AFA20030 */  sw          $v0, 0x30($sp)
/* 01C564 0041C564 AFA30034 */  sw          $v1, 0x34($sp)
/* 01C568 0041C568 9319002C */  lbu         $t9, 0x2C($t8)
/* 01C56C 0041C56C 8FAB0034 */  lw          $t3, 0x34($sp)
/* 01C570 0041C570 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C574 0041C574 03204825 */  move        $t1, $t9
/* 01C578 0041C578 001947C3 */  sra         $t0, $t9, 31
/* 01C57C 0041C57C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C580 0041C580 012B2821 */  addu        $a1, $t1, $t3
/* 01C584 0041C584 8FAA0030 */  lw          $t2, 0x30($sp)
/* 01C588 0041C588 00AB082B */  sltu        $at, $a1, $t3
/* 01C58C 0041C58C 00282021 */  addu        $a0, $at, $t0
/* 01C590 0041C590 24060000 */  addiu       $a2, $zero, 0x0
/* 01C594 0041C594 24070008 */  addiu       $a3, $zero, 0x8
/* 01C598 0041C598 0320F809 */  jalr        $t9
/* 01C59C 0041C59C 008A2021 */   addu       $a0, $a0, $t2
/* 01C5A0 0041C5A0 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01C5A4 0041C5A4 AFA20038 */  sw          $v0, 0x38($sp)
/* 01C5A8 0041C5A8 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01C5AC 0041C5AC 918D002B */  lbu         $t5, 0x2B($t4)
/* 01C5B0 0041C5B0 8FB9003C */  lw          $t9, 0x3C($sp)
/* 01C5B4 0041C5B4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C5B8 0041C5B8 01A07825 */  move        $t7, $t5
/* 01C5BC 0041C5BC 01F92821 */  addu        $a1, $t7, $t9
/* 01C5C0 0041C5C0 00B9082B */  sltu        $at, $a1, $t9
/* 01C5C4 0041C5C4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C5C8 0041C5C8 8FB80038 */  lw          $t8, 0x38($sp)
/* 01C5CC 0041C5CC 000D77C3 */  sra         $t6, $t5, 31
/* 01C5D0 0041C5D0 002E2021 */  addu        $a0, $at, $t6
/* 01C5D4 0041C5D4 24060000 */  addiu       $a2, $zero, 0x0
/* 01C5D8 0041C5D8 24070008 */  addiu       $a3, $zero, 0x8
/* 01C5DC 0041C5DC 0320F809 */  jalr        $t9
/* 01C5E0 0041C5E0 00982021 */   addu       $a0, $a0, $t8
/* 01C5E4 0041C5E4 8FA80064 */  lw          $t0, 0x64($sp)
/* 01C5E8 0041C5E8 AFA20040 */  sw          $v0, 0x40($sp)
/* 01C5EC 0041C5EC AFA30044 */  sw          $v1, 0x44($sp)
/* 01C5F0 0041C5F0 9109002A */  lbu         $t1, 0x2A($t0)
/* 01C5F4 0041C5F4 8FAD0044 */  lw          $t5, 0x44($sp)
/* 01C5F8 0041C5F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C5FC 0041C5FC 01205825 */  move        $t3, $t1
/* 01C600 0041C600 016D2821 */  addu        $a1, $t3, $t5
/* 01C604 0041C604 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C608 0041C608 8FAC0040 */  lw          $t4, 0x40($sp)
/* 01C60C 0041C60C 000957C3 */  sra         $t2, $t1, 31
/* 01C610 0041C610 00AD082B */  sltu        $at, $a1, $t5
/* 01C614 0041C614 002A2021 */  addu        $a0, $at, $t2
/* 01C618 0041C618 24060000 */  addiu       $a2, $zero, 0x0
/* 01C61C 0041C61C 24070008 */  addiu       $a3, $zero, 0x8
/* 01C620 0041C620 0320F809 */  jalr        $t9
/* 01C624 0041C624 008C2021 */   addu       $a0, $a0, $t4
/* 01C628 0041C628 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01C62C 0041C62C AFA20048 */  sw          $v0, 0x48($sp)
/* 01C630 0041C630 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01C634 0041C634 91CF0029 */  lbu         $t7, 0x29($t6)
/* 01C638 0041C638 8FA9004C */  lw          $t1, 0x4C($sp)
/* 01C63C 0041C63C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C640 0041C640 01E0C825 */  move        $t9, $t7
/* 01C644 0041C644 03292821 */  addu        $a1, $t9, $t1
/* 01C648 0041C648 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C64C 0041C64C 8FA80048 */  lw          $t0, 0x48($sp)
/* 01C650 0041C650 000FC7C3 */  sra         $t8, $t7, 31
/* 01C654 0041C654 00A9082B */  sltu        $at, $a1, $t1
/* 01C658 0041C658 00382021 */  addu        $a0, $at, $t8
/* 01C65C 0041C65C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C660 0041C660 24070008 */  addiu       $a3, $zero, 0x8
/* 01C664 0041C664 0320F809 */  jalr        $t9
/* 01C668 0041C668 00882021 */   addu       $a0, $a0, $t0
/* 01C66C 0041C66C 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01C670 0041C670 AFA20050 */  sw          $v0, 0x50($sp)
/* 01C674 0041C674 AFA30054 */  sw          $v1, 0x54($sp)
/* 01C678 0041C678 914B0028 */  lbu         $t3, 0x28($t2)
/* 01C67C 0041C67C 8FAF0054 */  lw          $t7, 0x54($sp)
/* 01C680 0041C680 8FA90060 */  lw          $t1, 0x60($sp)
/* 01C684 0041C684 01606825 */  move        $t5, $t3
/* 01C688 0041C688 01AFC821 */  addu        $t9, $t5, $t7
/* 01C68C 0041C68C 8FAE0050 */  lw          $t6, 0x50($sp)
/* 01C690 0041C690 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C694 0041C694 03204025 */  move        $t0, $t9
/* 01C698 0041C698 AD280014 */  sw          $t0, 0x14($t1)
/* 01C69C 0041C69C 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01C6A0 0041C6A0 032F082B */  sltu        $at, $t9, $t7
/* 01C6A4 0041C6A4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C6A8 0041C6A8 000B67C3 */  sra         $t4, $t3, 31
/* 01C6AC 0041C6AC 914B0027 */  lbu         $t3, 0x27($t2)
/* 01C6B0 0041C6B0 002CC021 */  addu        $t8, $at, $t4
/* 01C6B4 0041C6B4 24040000 */  addiu       $a0, $zero, 0x0
/* 01C6B8 0041C6B8 24060000 */  addiu       $a2, $zero, 0x0
/* 01C6BC 0041C6BC 24070008 */  addiu       $a3, $zero, 0x8
/* 01C6C0 0041C6C0 030EC021 */  addu        $t8, $t8, $t6
/* 01C6C4 0041C6C4 0320F809 */  jalr        $t9
/* 01C6C8 0041C6C8 01602825 */   move       $a1, $t3
/* 01C6CC 0041C6CC 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01C6D0 0041C6D0 AFA20020 */  sw          $v0, 0x20($sp)
/* 01C6D4 0041C6D4 AFA30024 */  sw          $v1, 0x24($sp)
/* 01C6D8 0041C6D8 918D0026 */  lbu         $t5, 0x26($t4)
/* 01C6DC 0041C6DC 8FB90024 */  lw          $t9, 0x24($sp)
/* 01C6E0 0041C6E0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C6E4 0041C6E4 01A07825 */  move        $t7, $t5
/* 01C6E8 0041C6E8 01F92821 */  addu        $a1, $t7, $t9
/* 01C6EC 0041C6EC 00B9082B */  sltu        $at, $a1, $t9
/* 01C6F0 0041C6F0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C6F4 0041C6F4 8FB80020 */  lw          $t8, 0x20($sp)
/* 01C6F8 0041C6F8 000D77C3 */  sra         $t6, $t5, 31
/* 01C6FC 0041C6FC 002E2021 */  addu        $a0, $at, $t6
/* 01C700 0041C700 24060000 */  addiu       $a2, $zero, 0x0
/* 01C704 0041C704 24070008 */  addiu       $a3, $zero, 0x8
/* 01C708 0041C708 0320F809 */  jalr        $t9
/* 01C70C 0041C70C 00982021 */   addu       $a0, $a0, $t8
/* 01C710 0041C710 8FA80064 */  lw          $t0, 0x64($sp)
/* 01C714 0041C714 AFA20028 */  sw          $v0, 0x28($sp)
/* 01C718 0041C718 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01C71C 0041C71C 91090025 */  lbu         $t1, 0x25($t0)
/* 01C720 0041C720 8FAD002C */  lw          $t5, 0x2C($sp)
/* 01C724 0041C724 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C728 0041C728 01205825 */  move        $t3, $t1
/* 01C72C 0041C72C 016D2821 */  addu        $a1, $t3, $t5
/* 01C730 0041C730 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C734 0041C734 8FAC0028 */  lw          $t4, 0x28($sp)
/* 01C738 0041C738 000957C3 */  sra         $t2, $t1, 31
/* 01C73C 0041C73C 00AD082B */  sltu        $at, $a1, $t5
/* 01C740 0041C740 002A2021 */  addu        $a0, $at, $t2
/* 01C744 0041C744 24060000 */  addiu       $a2, $zero, 0x0
/* 01C748 0041C748 24070008 */  addiu       $a3, $zero, 0x8
/* 01C74C 0041C74C 0320F809 */  jalr        $t9
/* 01C750 0041C750 008C2021 */   addu       $a0, $a0, $t4
/* 01C754 0041C754 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01C758 0041C758 AFA20030 */  sw          $v0, 0x30($sp)
/* 01C75C 0041C75C AFA30034 */  sw          $v1, 0x34($sp)
/* 01C760 0041C760 91CF0024 */  lbu         $t7, 0x24($t6)
/* 01C764 0041C764 8FA90034 */  lw          $t1, 0x34($sp)
/* 01C768 0041C768 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C76C 0041C76C 01E0C825 */  move        $t9, $t7
/* 01C770 0041C770 03292821 */  addu        $a1, $t9, $t1
/* 01C774 0041C774 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C778 0041C778 8FA80030 */  lw          $t0, 0x30($sp)
/* 01C77C 0041C77C 000FC7C3 */  sra         $t8, $t7, 31
/* 01C780 0041C780 00A9082B */  sltu        $at, $a1, $t1
/* 01C784 0041C784 00382021 */  addu        $a0, $at, $t8
/* 01C788 0041C788 24060000 */  addiu       $a2, $zero, 0x0
/* 01C78C 0041C78C 24070008 */  addiu       $a3, $zero, 0x8
/* 01C790 0041C790 0320F809 */  jalr        $t9
/* 01C794 0041C794 00882021 */   addu       $a0, $a0, $t0
/* 01C798 0041C798 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01C79C 0041C79C AFA20038 */  sw          $v0, 0x38($sp)
/* 01C7A0 0041C7A0 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01C7A4 0041C7A4 914B0023 */  lbu         $t3, 0x23($t2)
/* 01C7A8 0041C7A8 8FAF003C */  lw          $t7, 0x3C($sp)
/* 01C7AC 0041C7AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C7B0 0041C7B0 01606825 */  move        $t5, $t3
/* 01C7B4 0041C7B4 01AF2821 */  addu        $a1, $t5, $t7
/* 01C7B8 0041C7B8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C7BC 0041C7BC 8FAE0038 */  lw          $t6, 0x38($sp)
/* 01C7C0 0041C7C0 000B67C3 */  sra         $t4, $t3, 31
/* 01C7C4 0041C7C4 00AF082B */  sltu        $at, $a1, $t7
/* 01C7C8 0041C7C8 002C2021 */  addu        $a0, $at, $t4
/* 01C7CC 0041C7CC 24060000 */  addiu       $a2, $zero, 0x0
/* 01C7D0 0041C7D0 24070008 */  addiu       $a3, $zero, 0x8
/* 01C7D4 0041C7D4 0320F809 */  jalr        $t9
/* 01C7D8 0041C7D8 008E2021 */   addu       $a0, $a0, $t6
/* 01C7DC 0041C7DC 8FB80064 */  lw          $t8, 0x64($sp)
/* 01C7E0 0041C7E0 AFA20040 */  sw          $v0, 0x40($sp)
/* 01C7E4 0041C7E4 AFA30044 */  sw          $v1, 0x44($sp)
/* 01C7E8 0041C7E8 93190022 */  lbu         $t9, 0x22($t8)
/* 01C7EC 0041C7EC 8FAB0044 */  lw          $t3, 0x44($sp)
/* 01C7F0 0041C7F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C7F4 0041C7F4 03204825 */  move        $t1, $t9
/* 01C7F8 0041C7F8 001947C3 */  sra         $t0, $t9, 31
/* 01C7FC 0041C7FC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C800 0041C800 012B2821 */  addu        $a1, $t1, $t3
/* 01C804 0041C804 8FAA0040 */  lw          $t2, 0x40($sp)
/* 01C808 0041C808 00AB082B */  sltu        $at, $a1, $t3
/* 01C80C 0041C80C 00282021 */  addu        $a0, $at, $t0
/* 01C810 0041C810 24060000 */  addiu       $a2, $zero, 0x0
/* 01C814 0041C814 24070008 */  addiu       $a3, $zero, 0x8
/* 01C818 0041C818 0320F809 */  jalr        $t9
/* 01C81C 0041C81C 008A2021 */   addu       $a0, $a0, $t2
/* 01C820 0041C820 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01C824 0041C824 AFA20048 */  sw          $v0, 0x48($sp)
/* 01C828 0041C828 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01C82C 0041C82C 918D0021 */  lbu         $t5, 0x21($t4)
/* 01C830 0041C830 8FB9004C */  lw          $t9, 0x4C($sp)
/* 01C834 0041C834 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C838 0041C838 01A07825 */  move        $t7, $t5
/* 01C83C 0041C83C 01F92821 */  addu        $a1, $t7, $t9
/* 01C840 0041C840 00B9082B */  sltu        $at, $a1, $t9
/* 01C844 0041C844 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C848 0041C848 8FB80048 */  lw          $t8, 0x48($sp)
/* 01C84C 0041C84C 000D77C3 */  sra         $t6, $t5, 31
/* 01C850 0041C850 002E2021 */  addu        $a0, $at, $t6
/* 01C854 0041C854 24060000 */  addiu       $a2, $zero, 0x0
/* 01C858 0041C858 24070008 */  addiu       $a3, $zero, 0x8
/* 01C85C 0041C85C 0320F809 */  jalr        $t9
/* 01C860 0041C860 00982021 */   addu       $a0, $a0, $t8
/* 01C864 0041C864 8FA80064 */  lw          $t0, 0x64($sp)
/* 01C868 0041C868 AFA20050 */  sw          $v0, 0x50($sp)
/* 01C86C 0041C86C AFA30054 */  sw          $v1, 0x54($sp)
/* 01C870 0041C870 91090020 */  lbu         $t1, 0x20($t0)
/* 01C874 0041C874 8FAD0054 */  lw          $t5, 0x54($sp)
/* 01C878 0041C878 8FB90060 */  lw          $t9, 0x60($sp)
/* 01C87C 0041C87C 01205825 */  move        $t3, $t1
/* 01C880 0041C880 016D7821 */  addu        $t7, $t3, $t5
/* 01C884 0041C884 8FAC0050 */  lw          $t4, 0x50($sp)
/* 01C888 0041C888 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C88C 0041C88C 01E0C025 */  move        $t8, $t7
/* 01C890 0041C890 AF380010 */  sw          $t8, 0x10($t9)
/* 01C894 0041C894 8FA80064 */  lw          $t0, 0x64($sp)
/* 01C898 0041C898 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C89C 0041C89C 000957C3 */  sra         $t2, $t1, 31
/* 01C8A0 0041C8A0 9109001F */  lbu         $t1, 0x1F($t0)
/* 01C8A4 0041C8A4 01ED082B */  sltu        $at, $t7, $t5
/* 01C8A8 0041C8A8 002A7021 */  addu        $t6, $at, $t2
/* 01C8AC 0041C8AC 24040000 */  addiu       $a0, $zero, 0x0
/* 01C8B0 0041C8B0 24060000 */  addiu       $a2, $zero, 0x0
/* 01C8B4 0041C8B4 24070008 */  addiu       $a3, $zero, 0x8
/* 01C8B8 0041C8B8 01CC7021 */  addu        $t6, $t6, $t4
/* 01C8BC 0041C8BC 0320F809 */  jalr        $t9
/* 01C8C0 0041C8C0 01202825 */   move       $a1, $t1
/* 01C8C4 0041C8C4 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01C8C8 0041C8C8 AFA20020 */  sw          $v0, 0x20($sp)
/* 01C8CC 0041C8CC AFA30024 */  sw          $v1, 0x24($sp)
/* 01C8D0 0041C8D0 914B001E */  lbu         $t3, 0x1E($t2)
/* 01C8D4 0041C8D4 8FAF0024 */  lw          $t7, 0x24($sp)
/* 01C8D8 0041C8D8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C8DC 0041C8DC 01606825 */  move        $t5, $t3
/* 01C8E0 0041C8E0 01AF2821 */  addu        $a1, $t5, $t7
/* 01C8E4 0041C8E4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C8E8 0041C8E8 8FAE0020 */  lw          $t6, 0x20($sp)
/* 01C8EC 0041C8EC 000B67C3 */  sra         $t4, $t3, 31
/* 01C8F0 0041C8F0 00AF082B */  sltu        $at, $a1, $t7
/* 01C8F4 0041C8F4 002C2021 */  addu        $a0, $at, $t4
/* 01C8F8 0041C8F8 24060000 */  addiu       $a2, $zero, 0x0
/* 01C8FC 0041C8FC 24070008 */  addiu       $a3, $zero, 0x8
/* 01C900 0041C900 0320F809 */  jalr        $t9
/* 01C904 0041C904 008E2021 */   addu       $a0, $a0, $t6
/* 01C908 0041C908 8FB80064 */  lw          $t8, 0x64($sp)
/* 01C90C 0041C90C AFA20028 */  sw          $v0, 0x28($sp)
/* 01C910 0041C910 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01C914 0041C914 9319001D */  lbu         $t9, 0x1D($t8)
/* 01C918 0041C918 8FAB002C */  lw          $t3, 0x2C($sp)
/* 01C91C 0041C91C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C920 0041C920 03204825 */  move        $t1, $t9
/* 01C924 0041C924 001947C3 */  sra         $t0, $t9, 31
/* 01C928 0041C928 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C92C 0041C92C 012B2821 */  addu        $a1, $t1, $t3
/* 01C930 0041C930 8FAA0028 */  lw          $t2, 0x28($sp)
/* 01C934 0041C934 00AB082B */  sltu        $at, $a1, $t3
/* 01C938 0041C938 00282021 */  addu        $a0, $at, $t0
/* 01C93C 0041C93C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C940 0041C940 24070008 */  addiu       $a3, $zero, 0x8
/* 01C944 0041C944 0320F809 */  jalr        $t9
/* 01C948 0041C948 008A2021 */   addu       $a0, $a0, $t2
/* 01C94C 0041C94C 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01C950 0041C950 AFA20030 */  sw          $v0, 0x30($sp)
/* 01C954 0041C954 AFA30034 */  sw          $v1, 0x34($sp)
/* 01C958 0041C958 918D001C */  lbu         $t5, 0x1C($t4)
/* 01C95C 0041C95C 8FB90034 */  lw          $t9, 0x34($sp)
/* 01C960 0041C960 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C964 0041C964 01A07825 */  move        $t7, $t5
/* 01C968 0041C968 01F92821 */  addu        $a1, $t7, $t9
/* 01C96C 0041C96C 00B9082B */  sltu        $at, $a1, $t9
/* 01C970 0041C970 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C974 0041C974 8FB80030 */  lw          $t8, 0x30($sp)
/* 01C978 0041C978 000D77C3 */  sra         $t6, $t5, 31
/* 01C97C 0041C97C 002E2021 */  addu        $a0, $at, $t6
/* 01C980 0041C980 24060000 */  addiu       $a2, $zero, 0x0
/* 01C984 0041C984 24070008 */  addiu       $a3, $zero, 0x8
/* 01C988 0041C988 0320F809 */  jalr        $t9
/* 01C98C 0041C98C 00982021 */   addu       $a0, $a0, $t8
/* 01C990 0041C990 8FA80064 */  lw          $t0, 0x64($sp)
/* 01C994 0041C994 AFA20038 */  sw          $v0, 0x38($sp)
/* 01C998 0041C998 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01C99C 0041C99C 9109001B */  lbu         $t1, 0x1B($t0)
/* 01C9A0 0041C9A0 8FAD003C */  lw          $t5, 0x3C($sp)
/* 01C9A4 0041C9A4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C9A8 0041C9A8 01205825 */  move        $t3, $t1
/* 01C9AC 0041C9AC 016D2821 */  addu        $a1, $t3, $t5
/* 01C9B0 0041C9B0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C9B4 0041C9B4 8FAC0038 */  lw          $t4, 0x38($sp)
/* 01C9B8 0041C9B8 000957C3 */  sra         $t2, $t1, 31
/* 01C9BC 0041C9BC 00AD082B */  sltu        $at, $a1, $t5
/* 01C9C0 0041C9C0 002A2021 */  addu        $a0, $at, $t2
/* 01C9C4 0041C9C4 24060000 */  addiu       $a2, $zero, 0x0
/* 01C9C8 0041C9C8 24070008 */  addiu       $a3, $zero, 0x8
/* 01C9CC 0041C9CC 0320F809 */  jalr        $t9
/* 01C9D0 0041C9D0 008C2021 */   addu       $a0, $a0, $t4
/* 01C9D4 0041C9D4 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01C9D8 0041C9D8 AFA20040 */  sw          $v0, 0x40($sp)
/* 01C9DC 0041C9DC AFA30044 */  sw          $v1, 0x44($sp)
/* 01C9E0 0041C9E0 91CF001A */  lbu         $t7, 0x1A($t6)
/* 01C9E4 0041C9E4 8FA90044 */  lw          $t1, 0x44($sp)
/* 01C9E8 0041C9E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01C9EC 0041C9EC 01E0C825 */  move        $t9, $t7
/* 01C9F0 0041C9F0 03292821 */  addu        $a1, $t9, $t1
/* 01C9F4 0041C9F4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C9F8 0041C9F8 8FA80040 */  lw          $t0, 0x40($sp)
/* 01C9FC 0041C9FC 000FC7C3 */  sra         $t8, $t7, 31
/* 01CA00 0041CA00 00A9082B */  sltu        $at, $a1, $t1
/* 01CA04 0041CA04 00382021 */  addu        $a0, $at, $t8
/* 01CA08 0041CA08 24060000 */  addiu       $a2, $zero, 0x0
/* 01CA0C 0041CA0C 24070008 */  addiu       $a3, $zero, 0x8
/* 01CA10 0041CA10 0320F809 */  jalr        $t9
/* 01CA14 0041CA14 00882021 */   addu       $a0, $a0, $t0
/* 01CA18 0041CA18 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01CA1C 0041CA1C AFA20048 */  sw          $v0, 0x48($sp)
/* 01CA20 0041CA20 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01CA24 0041CA24 914B0019 */  lbu         $t3, 0x19($t2)
/* 01CA28 0041CA28 8FAF004C */  lw          $t7, 0x4C($sp)
/* 01CA2C 0041CA2C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CA30 0041CA30 01606825 */  move        $t5, $t3
/* 01CA34 0041CA34 01AF2821 */  addu        $a1, $t5, $t7
/* 01CA38 0041CA38 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CA3C 0041CA3C 8FAE0048 */  lw          $t6, 0x48($sp)
/* 01CA40 0041CA40 000B67C3 */  sra         $t4, $t3, 31
/* 01CA44 0041CA44 00AF082B */  sltu        $at, $a1, $t7
/* 01CA48 0041CA48 002C2021 */  addu        $a0, $at, $t4
/* 01CA4C 0041CA4C 24060000 */  addiu       $a2, $zero, 0x0
/* 01CA50 0041CA50 24070008 */  addiu       $a3, $zero, 0x8
/* 01CA54 0041CA54 0320F809 */  jalr        $t9
/* 01CA58 0041CA58 008E2021 */   addu       $a0, $a0, $t6
/* 01CA5C 0041CA5C 8FB80064 */  lw          $t8, 0x64($sp)
/* 01CA60 0041CA60 AFA20050 */  sw          $v0, 0x50($sp)
/* 01CA64 0041CA64 AFA30054 */  sw          $v1, 0x54($sp)
/* 01CA68 0041CA68 93190018 */  lbu         $t9, 0x18($t8)
/* 01CA6C 0041CA6C 8FAB0054 */  lw          $t3, 0x54($sp)
/* 01CA70 0041CA70 8FAF0060 */  lw          $t7, 0x60($sp)
/* 01CA74 0041CA74 03204825 */  move        $t1, $t9
/* 01CA78 0041CA78 012B6821 */  addu        $t5, $t1, $t3
/* 01CA7C 0041CA7C 8FAA0050 */  lw          $t2, 0x50($sp)
/* 01CA80 0041CA80 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CA84 0041CA84 01A07025 */  move        $t6, $t5
/* 01CA88 0041CA88 ADEE000C */  sw          $t6, 0xC($t7)
/* 01CA8C 0041CA8C 8FB80064 */  lw          $t8, 0x64($sp)
/* 01CA90 0041CA90 001947C3 */  sra         $t0, $t9, 31
/* 01CA94 0041CA94 01AB082B */  sltu        $at, $t5, $t3
/* 01CA98 0041CA98 93190017 */  lbu         $t9, 0x17($t8)
/* 01CA9C 0041CA9C 00286021 */  addu        $t4, $at, $t0
/* 01CAA0 0041CAA0 24040000 */  addiu       $a0, $zero, 0x0
/* 01CAA4 0041CAA4 03202825 */  move        $a1, $t9
/* 01CAA8 0041CAA8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CAAC 0041CAAC 24060000 */  addiu       $a2, $zero, 0x0
/* 01CAB0 0041CAB0 24070008 */  addiu       $a3, $zero, 0x8
/* 01CAB4 0041CAB4 0320F809 */  jalr        $t9
/* 01CAB8 0041CAB8 018A6021 */   addu       $t4, $t4, $t2
/* 01CABC 0041CABC 8FA80064 */  lw          $t0, 0x64($sp)
/* 01CAC0 0041CAC0 AFA20020 */  sw          $v0, 0x20($sp)
/* 01CAC4 0041CAC4 AFA30024 */  sw          $v1, 0x24($sp)
/* 01CAC8 0041CAC8 91090016 */  lbu         $t1, 0x16($t0)
/* 01CACC 0041CACC 8FAD0024 */  lw          $t5, 0x24($sp)
/* 01CAD0 0041CAD0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CAD4 0041CAD4 01205825 */  move        $t3, $t1
/* 01CAD8 0041CAD8 016D2821 */  addu        $a1, $t3, $t5
/* 01CADC 0041CADC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CAE0 0041CAE0 8FAC0020 */  lw          $t4, 0x20($sp)
/* 01CAE4 0041CAE4 000957C3 */  sra         $t2, $t1, 31
/* 01CAE8 0041CAE8 00AD082B */  sltu        $at, $a1, $t5
/* 01CAEC 0041CAEC 002A2021 */  addu        $a0, $at, $t2
/* 01CAF0 0041CAF0 24060000 */  addiu       $a2, $zero, 0x0
/* 01CAF4 0041CAF4 24070008 */  addiu       $a3, $zero, 0x8
/* 01CAF8 0041CAF8 0320F809 */  jalr        $t9
/* 01CAFC 0041CAFC 008C2021 */   addu       $a0, $a0, $t4
/* 01CB00 0041CB00 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01CB04 0041CB04 AFA20028 */  sw          $v0, 0x28($sp)
/* 01CB08 0041CB08 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01CB0C 0041CB0C 91CF0015 */  lbu         $t7, 0x15($t6)
/* 01CB10 0041CB10 8FA9002C */  lw          $t1, 0x2C($sp)
/* 01CB14 0041CB14 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CB18 0041CB18 01E0C825 */  move        $t9, $t7
/* 01CB1C 0041CB1C 03292821 */  addu        $a1, $t9, $t1
/* 01CB20 0041CB20 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CB24 0041CB24 8FA80028 */  lw          $t0, 0x28($sp)
/* 01CB28 0041CB28 000FC7C3 */  sra         $t8, $t7, 31
/* 01CB2C 0041CB2C 00A9082B */  sltu        $at, $a1, $t1
/* 01CB30 0041CB30 00382021 */  addu        $a0, $at, $t8
/* 01CB34 0041CB34 24060000 */  addiu       $a2, $zero, 0x0
/* 01CB38 0041CB38 24070008 */  addiu       $a3, $zero, 0x8
/* 01CB3C 0041CB3C 0320F809 */  jalr        $t9
/* 01CB40 0041CB40 00882021 */   addu       $a0, $a0, $t0
/* 01CB44 0041CB44 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01CB48 0041CB48 AFA20030 */  sw          $v0, 0x30($sp)
/* 01CB4C 0041CB4C AFA30034 */  sw          $v1, 0x34($sp)
/* 01CB50 0041CB50 914B0014 */  lbu         $t3, 0x14($t2)
/* 01CB54 0041CB54 8FAF0034 */  lw          $t7, 0x34($sp)
/* 01CB58 0041CB58 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CB5C 0041CB5C 01606825 */  move        $t5, $t3
/* 01CB60 0041CB60 01AF2821 */  addu        $a1, $t5, $t7
/* 01CB64 0041CB64 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CB68 0041CB68 8FAE0030 */  lw          $t6, 0x30($sp)
/* 01CB6C 0041CB6C 000B67C3 */  sra         $t4, $t3, 31
/* 01CB70 0041CB70 00AF082B */  sltu        $at, $a1, $t7
/* 01CB74 0041CB74 002C2021 */  addu        $a0, $at, $t4
/* 01CB78 0041CB78 24060000 */  addiu       $a2, $zero, 0x0
/* 01CB7C 0041CB7C 24070008 */  addiu       $a3, $zero, 0x8
/* 01CB80 0041CB80 0320F809 */  jalr        $t9
/* 01CB84 0041CB84 008E2021 */   addu       $a0, $a0, $t6
/* 01CB88 0041CB88 8FB80064 */  lw          $t8, 0x64($sp)
/* 01CB8C 0041CB8C AFA20038 */  sw          $v0, 0x38($sp)
/* 01CB90 0041CB90 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01CB94 0041CB94 93190013 */  lbu         $t9, 0x13($t8)
/* 01CB98 0041CB98 8FAB003C */  lw          $t3, 0x3C($sp)
/* 01CB9C 0041CB9C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CBA0 0041CBA0 03204825 */  move        $t1, $t9
/* 01CBA4 0041CBA4 001947C3 */  sra         $t0, $t9, 31
/* 01CBA8 0041CBA8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CBAC 0041CBAC 012B2821 */  addu        $a1, $t1, $t3
/* 01CBB0 0041CBB0 8FAA0038 */  lw          $t2, 0x38($sp)
/* 01CBB4 0041CBB4 00AB082B */  sltu        $at, $a1, $t3
/* 01CBB8 0041CBB8 00282021 */  addu        $a0, $at, $t0
/* 01CBBC 0041CBBC 24060000 */  addiu       $a2, $zero, 0x0
/* 01CBC0 0041CBC0 24070008 */  addiu       $a3, $zero, 0x8
/* 01CBC4 0041CBC4 0320F809 */  jalr        $t9
/* 01CBC8 0041CBC8 008A2021 */   addu       $a0, $a0, $t2
/* 01CBCC 0041CBCC 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01CBD0 0041CBD0 AFA20040 */  sw          $v0, 0x40($sp)
/* 01CBD4 0041CBD4 AFA30044 */  sw          $v1, 0x44($sp)
/* 01CBD8 0041CBD8 918D0012 */  lbu         $t5, 0x12($t4)
/* 01CBDC 0041CBDC 8FB90044 */  lw          $t9, 0x44($sp)
/* 01CBE0 0041CBE0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CBE4 0041CBE4 01A07825 */  move        $t7, $t5
/* 01CBE8 0041CBE8 01F92821 */  addu        $a1, $t7, $t9
/* 01CBEC 0041CBEC 00B9082B */  sltu        $at, $a1, $t9
/* 01CBF0 0041CBF0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CBF4 0041CBF4 8FB80040 */  lw          $t8, 0x40($sp)
/* 01CBF8 0041CBF8 000D77C3 */  sra         $t6, $t5, 31
/* 01CBFC 0041CBFC 002E2021 */  addu        $a0, $at, $t6
/* 01CC00 0041CC00 24060000 */  addiu       $a2, $zero, 0x0
/* 01CC04 0041CC04 24070008 */  addiu       $a3, $zero, 0x8
/* 01CC08 0041CC08 0320F809 */  jalr        $t9
/* 01CC0C 0041CC0C 00982021 */   addu       $a0, $a0, $t8
/* 01CC10 0041CC10 8FA80064 */  lw          $t0, 0x64($sp)
/* 01CC14 0041CC14 AFA20048 */  sw          $v0, 0x48($sp)
/* 01CC18 0041CC18 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01CC1C 0041CC1C 91090011 */  lbu         $t1, 0x11($t0)
/* 01CC20 0041CC20 8FAD004C */  lw          $t5, 0x4C($sp)
/* 01CC24 0041CC24 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CC28 0041CC28 01205825 */  move        $t3, $t1
/* 01CC2C 0041CC2C 016D2821 */  addu        $a1, $t3, $t5
/* 01CC30 0041CC30 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CC34 0041CC34 8FAC0048 */  lw          $t4, 0x48($sp)
/* 01CC38 0041CC38 000957C3 */  sra         $t2, $t1, 31
/* 01CC3C 0041CC3C 00AD082B */  sltu        $at, $a1, $t5
/* 01CC40 0041CC40 002A2021 */  addu        $a0, $at, $t2
/* 01CC44 0041CC44 24060000 */  addiu       $a2, $zero, 0x0
/* 01CC48 0041CC48 24070008 */  addiu       $a3, $zero, 0x8
/* 01CC4C 0041CC4C 0320F809 */  jalr        $t9
/* 01CC50 0041CC50 008C2021 */   addu       $a0, $a0, $t4
/* 01CC54 0041CC54 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01CC58 0041CC58 AFA20050 */  sw          $v0, 0x50($sp)
/* 01CC5C 0041CC5C AFA30054 */  sw          $v1, 0x54($sp)
/* 01CC60 0041CC60 91CF0010 */  lbu         $t7, 0x10($t6)
/* 01CC64 0041CC64 8FA90054 */  lw          $t1, 0x54($sp)
/* 01CC68 0041CC68 8FAD0060 */  lw          $t5, 0x60($sp)
/* 01CC6C 0041CC6C 01E0C825 */  move        $t9, $t7
/* 01CC70 0041CC70 03295821 */  addu        $t3, $t9, $t1
/* 01CC74 0041CC74 8FA80050 */  lw          $t0, 0x50($sp)
/* 01CC78 0041CC78 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CC7C 0041CC7C 01606025 */  move        $t4, $t3
/* 01CC80 0041CC80 ADAC0008 */  sw          $t4, 0x8($t5)
/* 01CC84 0041CC84 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01CC88 0041CC88 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CC8C 0041CC8C 000FC7C3 */  sra         $t8, $t7, 31
/* 01CC90 0041CC90 91CF000F */  lbu         $t7, 0xF($t6)
/* 01CC94 0041CC94 0169082B */  sltu        $at, $t3, $t1
/* 01CC98 0041CC98 00385021 */  addu        $t2, $at, $t8
/* 01CC9C 0041CC9C 24040000 */  addiu       $a0, $zero, 0x0
/* 01CCA0 0041CCA0 24060000 */  addiu       $a2, $zero, 0x0
/* 01CCA4 0041CCA4 24070008 */  addiu       $a3, $zero, 0x8
/* 01CCA8 0041CCA8 01485021 */  addu        $t2, $t2, $t0
/* 01CCAC 0041CCAC 0320F809 */  jalr        $t9
/* 01CCB0 0041CCB0 01E02825 */   move       $a1, $t7
/* 01CCB4 0041CCB4 8FB80064 */  lw          $t8, 0x64($sp)
/* 01CCB8 0041CCB8 AFA20020 */  sw          $v0, 0x20($sp)
/* 01CCBC 0041CCBC AFA30024 */  sw          $v1, 0x24($sp)
/* 01CCC0 0041CCC0 9319000E */  lbu         $t9, 0xE($t8)
/* 01CCC4 0041CCC4 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01CCC8 0041CCC8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CCCC 0041CCCC 03204825 */  move        $t1, $t9
/* 01CCD0 0041CCD0 001947C3 */  sra         $t0, $t9, 31
/* 01CCD4 0041CCD4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CCD8 0041CCD8 012B2821 */  addu        $a1, $t1, $t3
/* 01CCDC 0041CCDC 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01CCE0 0041CCE0 00AB082B */  sltu        $at, $a1, $t3
/* 01CCE4 0041CCE4 00282021 */  addu        $a0, $at, $t0
/* 01CCE8 0041CCE8 24060000 */  addiu       $a2, $zero, 0x0
/* 01CCEC 0041CCEC 24070008 */  addiu       $a3, $zero, 0x8
/* 01CCF0 0041CCF0 0320F809 */  jalr        $t9
/* 01CCF4 0041CCF4 008A2021 */   addu       $a0, $a0, $t2
/* 01CCF8 0041CCF8 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01CCFC 0041CCFC AFA20028 */  sw          $v0, 0x28($sp)
/* 01CD00 0041CD00 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01CD04 0041CD04 918D000D */  lbu         $t5, 0xD($t4)
/* 01CD08 0041CD08 8FB9002C */  lw          $t9, 0x2C($sp)
/* 01CD0C 0041CD0C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CD10 0041CD10 01A07825 */  move        $t7, $t5
/* 01CD14 0041CD14 01F92821 */  addu        $a1, $t7, $t9
/* 01CD18 0041CD18 00B9082B */  sltu        $at, $a1, $t9
/* 01CD1C 0041CD1C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CD20 0041CD20 8FB80028 */  lw          $t8, 0x28($sp)
/* 01CD24 0041CD24 000D77C3 */  sra         $t6, $t5, 31
/* 01CD28 0041CD28 002E2021 */  addu        $a0, $at, $t6
/* 01CD2C 0041CD2C 24060000 */  addiu       $a2, $zero, 0x0
/* 01CD30 0041CD30 24070008 */  addiu       $a3, $zero, 0x8
/* 01CD34 0041CD34 0320F809 */  jalr        $t9
/* 01CD38 0041CD38 00982021 */   addu       $a0, $a0, $t8
/* 01CD3C 0041CD3C 8FA80064 */  lw          $t0, 0x64($sp)
/* 01CD40 0041CD40 AFA20030 */  sw          $v0, 0x30($sp)
/* 01CD44 0041CD44 AFA30034 */  sw          $v1, 0x34($sp)
/* 01CD48 0041CD48 9109000C */  lbu         $t1, 0xC($t0)
/* 01CD4C 0041CD4C 8FAD0034 */  lw          $t5, 0x34($sp)
/* 01CD50 0041CD50 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CD54 0041CD54 01205825 */  move        $t3, $t1
/* 01CD58 0041CD58 016D2821 */  addu        $a1, $t3, $t5
/* 01CD5C 0041CD5C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CD60 0041CD60 8FAC0030 */  lw          $t4, 0x30($sp)
/* 01CD64 0041CD64 000957C3 */  sra         $t2, $t1, 31
/* 01CD68 0041CD68 00AD082B */  sltu        $at, $a1, $t5
/* 01CD6C 0041CD6C 002A2021 */  addu        $a0, $at, $t2
/* 01CD70 0041CD70 24060000 */  addiu       $a2, $zero, 0x0
/* 01CD74 0041CD74 24070008 */  addiu       $a3, $zero, 0x8
/* 01CD78 0041CD78 0320F809 */  jalr        $t9
/* 01CD7C 0041CD7C 008C2021 */   addu       $a0, $a0, $t4
/* 01CD80 0041CD80 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01CD84 0041CD84 AFA20038 */  sw          $v0, 0x38($sp)
/* 01CD88 0041CD88 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01CD8C 0041CD8C 91CF000B */  lbu         $t7, 0xB($t6)
/* 01CD90 0041CD90 8FA9003C */  lw          $t1, 0x3C($sp)
/* 01CD94 0041CD94 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CD98 0041CD98 01E0C825 */  move        $t9, $t7
/* 01CD9C 0041CD9C 03292821 */  addu        $a1, $t9, $t1
/* 01CDA0 0041CDA0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CDA4 0041CDA4 8FA80038 */  lw          $t0, 0x38($sp)
/* 01CDA8 0041CDA8 000FC7C3 */  sra         $t8, $t7, 31
/* 01CDAC 0041CDAC 00A9082B */  sltu        $at, $a1, $t1
/* 01CDB0 0041CDB0 00382021 */  addu        $a0, $at, $t8
/* 01CDB4 0041CDB4 24060000 */  addiu       $a2, $zero, 0x0
/* 01CDB8 0041CDB8 24070008 */  addiu       $a3, $zero, 0x8
/* 01CDBC 0041CDBC 0320F809 */  jalr        $t9
/* 01CDC0 0041CDC0 00882021 */   addu       $a0, $a0, $t0
/* 01CDC4 0041CDC4 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01CDC8 0041CDC8 AFA20040 */  sw          $v0, 0x40($sp)
/* 01CDCC 0041CDCC AFA30044 */  sw          $v1, 0x44($sp)
/* 01CDD0 0041CDD0 914B000A */  lbu         $t3, 0xA($t2)
/* 01CDD4 0041CDD4 8FAF0044 */  lw          $t7, 0x44($sp)
/* 01CDD8 0041CDD8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CDDC 0041CDDC 01606825 */  move        $t5, $t3
/* 01CDE0 0041CDE0 01AF2821 */  addu        $a1, $t5, $t7
/* 01CDE4 0041CDE4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CDE8 0041CDE8 8FAE0040 */  lw          $t6, 0x40($sp)
/* 01CDEC 0041CDEC 000B67C3 */  sra         $t4, $t3, 31
/* 01CDF0 0041CDF0 00AF082B */  sltu        $at, $a1, $t7
/* 01CDF4 0041CDF4 002C2021 */  addu        $a0, $at, $t4
/* 01CDF8 0041CDF8 24060000 */  addiu       $a2, $zero, 0x0
/* 01CDFC 0041CDFC 24070008 */  addiu       $a3, $zero, 0x8
/* 01CE00 0041CE00 0320F809 */  jalr        $t9
/* 01CE04 0041CE04 008E2021 */   addu       $a0, $a0, $t6
/* 01CE08 0041CE08 8FB80064 */  lw          $t8, 0x64($sp)
/* 01CE0C 0041CE0C AFA20048 */  sw          $v0, 0x48($sp)
/* 01CE10 0041CE10 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01CE14 0041CE14 93190009 */  lbu         $t9, 0x9($t8)
/* 01CE18 0041CE18 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01CE1C 0041CE1C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CE20 0041CE20 03204825 */  move        $t1, $t9
/* 01CE24 0041CE24 001947C3 */  sra         $t0, $t9, 31
/* 01CE28 0041CE28 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CE2C 0041CE2C 012B2821 */  addu        $a1, $t1, $t3
/* 01CE30 0041CE30 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01CE34 0041CE34 00AB082B */  sltu        $at, $a1, $t3
/* 01CE38 0041CE38 00282021 */  addu        $a0, $at, $t0
/* 01CE3C 0041CE3C 24060000 */  addiu       $a2, $zero, 0x0
/* 01CE40 0041CE40 24070008 */  addiu       $a3, $zero, 0x8
/* 01CE44 0041CE44 0320F809 */  jalr        $t9
/* 01CE48 0041CE48 008A2021 */   addu       $a0, $a0, $t2
/* 01CE4C 0041CE4C 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01CE50 0041CE50 AFA20050 */  sw          $v0, 0x50($sp)
/* 01CE54 0041CE54 AFA30054 */  sw          $v1, 0x54($sp)
/* 01CE58 0041CE58 918D0008 */  lbu         $t5, 0x8($t4)
/* 01CE5C 0041CE5C 8FB90054 */  lw          $t9, 0x54($sp)
/* 01CE60 0041CE60 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01CE64 0041CE64 01A07825 */  move        $t7, $t5
/* 01CE68 0041CE68 01F94821 */  addu        $t1, $t7, $t9
/* 01CE6C 0041CE6C 8FB80050 */  lw          $t8, 0x50($sp)
/* 01CE70 0041CE70 01205025 */  move        $t2, $t1
/* 01CE74 0041CE74 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CE78 0041CE78 AD6A0004 */  sw          $t2, 0x4($t3)
/* 01CE7C 0041CE7C 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01CE80 0041CE80 000D77C3 */  sra         $t6, $t5, 31
/* 01CE84 0041CE84 0139082B */  sltu        $at, $t1, $t9
/* 01CE88 0041CE88 918D0007 */  lbu         $t5, 0x7($t4)
/* 01CE8C 0041CE8C 918F0006 */  lbu         $t7, 0x6($t4)
/* 01CE90 0041CE90 002E4021 */  addu        $t0, $at, $t6
/* 01CE94 0041CE94 01184021 */  addu        $t0, $t0, $t8
/* 01CE98 0041CE98 91880005 */  lbu         $t0, 0x5($t4)
/* 01CE9C 0041CE9C 000D7200 */  sll         $t6, $t5, 8
/* 01CEA0 0041CEA0 01CFC021 */  addu        $t8, $t6, $t7
/* 01CEA4 0041CEA4 918B0004 */  lbu         $t3, 0x4($t4)
/* 01CEA8 0041CEA8 0018CA00 */  sll         $t9, $t8, 8
/* 01CEAC 0041CEAC 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01CEB0 0041CEB0 03284821 */  addu        $t1, $t9, $t0
/* 01CEB4 0041CEB4 00095200 */  sll         $t2, $t1, 8
/* 01CEB8 0041CEB8 016A6821 */  addu        $t5, $t3, $t2
/* 01CEBC 0041CEBC ADCD0018 */  sw          $t5, 0x18($t6)
/* 01CEC0 0041CEC0 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01CEC4 0041CEC4 91F80003 */  lbu         $t8, 0x3($t7)
/* 01CEC8 0041CEC8 91E80002 */  lbu         $t0, 0x2($t7)
/* 01CECC 0041CECC 91EB0001 */  lbu         $t3, 0x1($t7)
/* 01CED0 0041CED0 0018CA00 */  sll         $t9, $t8, 8
/* 01CED4 0041CED4 03284821 */  addu        $t1, $t9, $t0
/* 01CED8 0041CED8 91EE0000 */  lbu         $t6, 0x0($t7)
/* 01CEDC 0041CEDC 00096200 */  sll         $t4, $t1, 8
/* 01CEE0 0041CEE0 8FB90060 */  lw          $t9, 0x60($sp)
/* 01CEE4 0041CEE4 018B5021 */  addu        $t2, $t4, $t3
/* 01CEE8 0041CEE8 000A6A00 */  sll         $t5, $t2, 8
/* 01CEEC 0041CEEC 01CDC021 */  addu        $t8, $t6, $t5
/* 01CEF0 0041CEF0 AF380000 */  sw          $t8, 0x0($t9)
/* 01CEF4 0041CEF4 8FA80060 */  lw          $t0, 0x60($sp)
/* 01CEF8 0041CEF8 8FA9005C */  lw          $t1, 0x5C($sp)
/* 01CEFC 0041CEFC 250CFFE0 */  addiu       $t4, $t0, -0x20
/* 01CF00 0041CF00 0128802B */  sltu        $s0, $t1, $t0
/* 01CF04 0041CF04 1600FCEB */  bnez        $s0, .L0041C2B4
/* 01CF08 0041CF08 AFAC0060 */   sw         $t4, 0x60($sp)
.L0041CF0C:
/* 01CF0C 0041CF0C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01CF10 0041CF10 8FB00014 */  lw          $s0, 0x14($sp)
/* 01CF14 0041CF14 27BD0060 */  addiu       $sp, $sp, 0x60
/* 01CF18 0041CF18 03E00008 */  jr          $ra
/* 01CF1C 0041CF1C 00000000 */   nop
