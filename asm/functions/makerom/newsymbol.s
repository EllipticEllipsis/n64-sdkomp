.section .rodata
glabel STR_1000870C
/* 04870C 1000870C */ .asciz "dbx running out of memory space"
                      .balign 4

glabel STR_1000872C
/* 04872C 1000872C */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10008750
/* 048750 10008750 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10008774
/* 048774 10008774 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10008798
/* 048798 10008798 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_100087BC
/* 0487BC 100087BC */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_100087E0
/* 0487E0 100087E0 */ .asciz "dbx running out of type table space"
                      .balign 4


.section .text
glabel newsymbol # 610
/* 03C0EC 0043C0EC 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03C0F0 0043C0F0 279C6C74 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD6C74
/* 03C0F4 0043C0F4 0399E021 */  addu        $gp, $gp, $t9
/* 03C0F8 0043C0F8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03C0FC 0043C0FC 8F998594 */  lw          $t9, %call16(user_symbol_alloc)($gp)
/* 03C100 0043C100 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03C104 0043C104 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03C108 0043C108 AFB1001C */  sw          $s1, 0x1C($sp)
/* 03C10C 0043C10C AFB00018 */  sw          $s0, 0x18($sp)
/* 03C110 0043C110 AFA40028 */  sw          $a0, 0x28($sp)
/* 03C114 0043C114 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03C118 0043C118 AFA60030 */  sw          $a2, 0x30($sp)
/* 03C11C 0043C11C 0320F809 */  jalr        $t9
/* 03C120 0043C120 AFA70034 */   sw         $a3, 0x34($sp)
/* 03C124 0043C124 8FA40028 */  lw          $a0, 0x28($sp)
/* 03C128 0043C128 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C12C 0043C12C 00408825 */  move        $s1, $v0
/* 03C130 0043C130 10800018 */  beqz        $a0, .L0043C194
/* 03C134 0043C134 00008025 */   move       $s0, $zero
/* 03C138 0043C138 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 03C13C 0043C13C 0320F809 */  jalr        $t9
/* 03C140 0043C140 00000000 */   nop
/* 03C144 0043C144 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C148 0043C148 24440001 */  addiu       $a0, $v0, 0x1
/* 03C14C 0043C14C 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 03C150 0043C150 0320F809 */  jalr        $t9
/* 03C154 0043C154 00000000 */   nop
/* 03C158 0043C158 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C15C 0043C15C 14400006 */  bnez        $v0, .L0043C178
/* 03C160 0043C160 00408025 */   move       $s0, $v0
/* 03C164 0043C164 8F9985C4 */  lw          $t9, %call16(panic)($gp)
/* 03C168 0043C168 8F848030 */  lw          $a0, %got(STR_1000870C)($gp)
/* 03C16C 0043C16C 0320F809 */  jalr        $t9
/* 03C170 0043C170 2484870C */   addiu      $a0, $a0, %lo(STR_1000870C)
/* 03C174 0043C174 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043C178:
/* 03C178 0043C178 8F9980A0 */  lw          $t9, %call16(strcpy)($gp)
/* 03C17C 0043C17C 02002025 */  move        $a0, $s0
/* 03C180 0043C180 8FA50028 */  lw          $a1, 0x28($sp)
/* 03C184 0043C184 0320F809 */  jalr        $t9
/* 03C188 0043C188 00000000 */   nop
/* 03C18C 0043C18C 10000001 */  b           .L0043C194
/* 03C190 0043C190 8FBC0020 */   lw         $gp, 0x20($sp)
.L0043C194:
/* 03C194 0043C194 AE300000 */  sw          $s0, 0x0($s1)
/* 03C198 0043C198 8FAF002C */  lw          $t7, 0x2C($sp)
/* 03C19C 0043C19C 92280008 */  lbu         $t0, 0x8($s1)
/* 03C1A0 0043C1A0 000FC880 */  sll         $t9, $t7, 2
/* 03C1A4 0043C1A4 3109FF03 */  andi        $t1, $t0, 0xFF03
/* 03C1A8 0043C1A8 03295025 */  or          $t2, $t9, $t1
/* 03C1AC 0043C1AC A22A0008 */  sb          $t2, 0x8($s1)
/* 03C1B0 0043C1B0 8FAC0030 */  lw          $t4, 0x30($sp)
/* 03C1B4 0043C1B4 962F0008 */  lhu         $t7, 0x8($s1)
/* 03C1B8 0043C1B8 000C6940 */  sll         $t5, $t4, 5
/* 03C1BC 0043C1BC 31AE03E0 */  andi        $t6, $t5, 0x3E0
/* 03C1C0 0043C1C0 31F8FC1F */  andi        $t8, $t7, 0xFC1F
/* 03C1C4 0043C1C4 01D84025 */  or          $t0, $t6, $t8
/* 03C1C8 0043C1C8 A6280008 */  sh          $t0, 0x8($s1)
/* 03C1CC 0043C1CC 8F998598 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 03C1D0 0043C1D0 0320F809 */  jalr        $t9
/* 03C1D4 0043C1D4 00000000 */   nop
/* 03C1D8 0043C1D8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C1DC 0043C1DC 14400006 */  bnez        $v0, .L0043C1F8
/* 03C1E0 0043C1E0 00408025 */   move       $s0, $v0
/* 03C1E4 0043C1E4 8F9985C4 */  lw          $t9, %call16(panic)($gp)
/* 03C1E8 0043C1E8 8F848030 */  lw          $a0, %got(STR_1000872C)($gp)
/* 03C1EC 0043C1EC 0320F809 */  jalr        $t9
/* 03C1F0 0043C1F0 2484872C */   addiu      $a0, $a0, %lo(STR_1000872C)
/* 03C1F4 0043C1F4 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043C1F8:
/* 03C1F8 0043C1F8 8FA30034 */  lw          $v1, 0x34($sp)
/* 03C1FC 0043C1FC 8F8A87D0 */  lw          $t2, %got(usertype)($gp)
/* 03C200 0043C200 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03C204 0043C204 8C69000C */  lw          $t1, 0xC($v1)
/* 03C208 0043C208 01505823 */  subu        $t3, $t2, $s0
/* 03C20C 0043C20C 000B6083 */  sra         $t4, $t3, 2
/* 03C210 0043C210 AE090000 */  sw          $t1, 0x0($s0)
/* 03C214 0043C214 8E220008 */  lw          $v0, 0x8($s1)
/* 03C218 0043C218 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03C21C 0043C21C 01816824 */  and         $t5, $t4, $at
/* 03C220 0043C220 01A27826 */  xor         $t7, $t5, $v0
/* 03C224 0043C224 000F7300 */  sll         $t6, $t7, 12
/* 03C228 0043C228 000EC302 */  srl         $t8, $t6, 12
/* 03C22C 0043C22C 03024026 */  xor         $t0, $t8, $v0
/* 03C230 0043C230 AE280008 */  sw          $t0, 0x8($s1)
/* 03C234 0043C234 8FB90038 */  lw          $t9, 0x38($sp)
/* 03C238 0043C238 24010003 */  addiu       $at, $zero, 0x3
/* 03C23C 0043C23C AE390004 */  sw          $t9, 0x4($s1)
/* 03C240 0043C240 8C690024 */  lw          $t1, 0x24($v1)
/* 03C244 0043C244 15210045 */  bne         $t1, $at, .L0043C35C
/* 03C248 0043C248 00000000 */   nop
/* 03C24C 0043C24C 8F998598 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 03C250 0043C250 0320F809 */  jalr        $t9
/* 03C254 0043C254 00000000 */   nop
/* 03C258 0043C258 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C25C 0043C25C 14400006 */  bnez        $v0, .L0043C278
/* 03C260 0043C260 00408025 */   move       $s0, $v0
/* 03C264 0043C264 8F9985C4 */  lw          $t9, %call16(panic)($gp)
/* 03C268 0043C268 8F848030 */  lw          $a0, %got(STR_10008750)($gp)
/* 03C26C 0043C26C 0320F809 */  jalr        $t9
/* 03C270 0043C270 24848750 */   addiu      $a0, $a0, %lo(STR_10008750)
/* 03C274 0043C274 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043C278:
/* 03C278 0043C278 3C0AFFF0 */  lui         $t2, (0xFFF00004 >> 16)
/* 03C27C 0043C27C 354A0004 */  ori         $t2, $t2, (0xFFF00004 & 0xFFFF)
/* 03C280 0043C280 AE0A0000 */  sw          $t2, 0x0($s0)
/* 03C284 0043C284 8F998598 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 03C288 0043C288 0320F809 */  jalr        $t9
/* 03C28C 0043C28C 00000000 */   nop
/* 03C290 0043C290 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C294 0043C294 14400006 */  bnez        $v0, .L0043C2B0
/* 03C298 0043C298 00408025 */   move       $s0, $v0
/* 03C29C 0043C29C 8F9985C4 */  lw          $t9, %call16(panic)($gp)
/* 03C2A0 0043C2A0 8F848030 */  lw          $a0, %got(STR_10008774)($gp)
/* 03C2A4 0043C2A4 0320F809 */  jalr        $t9
/* 03C2A8 0043C2A8 24848774 */   addiu      $a0, $a0, %lo(STR_10008774)
/* 03C2AC 0043C2AC 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043C2B0:
/* 03C2B0 0043C2B0 AE000000 */  sw          $zero, 0x0($s0)
/* 03C2B4 0043C2B4 8F998598 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 03C2B8 0043C2B8 0320F809 */  jalr        $t9
/* 03C2BC 0043C2BC 00000000 */   nop
/* 03C2C0 0043C2C0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C2C4 0043C2C4 14400006 */  bnez        $v0, .L0043C2E0
/* 03C2C8 0043C2C8 00408025 */   move       $s0, $v0
/* 03C2CC 0043C2CC 8F9985C4 */  lw          $t9, %call16(panic)($gp)
/* 03C2D0 0043C2D0 8F848030 */  lw          $a0, %got(STR_10008798)($gp)
/* 03C2D4 0043C2D4 0320F809 */  jalr        $t9
/* 03C2D8 0043C2D8 24848798 */   addiu      $a0, $a0, %lo(STR_10008798)
/* 03C2DC 0043C2DC 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043C2E0:
/* 03C2E0 0043C2E0 8FAB0034 */  lw          $t3, 0x34($sp)
/* 03C2E4 0043C2E4 8D6C0034 */  lw          $t4, 0x34($t3)
/* 03C2E8 0043C2E8 AE0C0000 */  sw          $t4, 0x0($s0)
/* 03C2EC 0043C2EC 8F998598 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 03C2F0 0043C2F0 0320F809 */  jalr        $t9
/* 03C2F4 0043C2F4 00000000 */   nop
/* 03C2F8 0043C2F8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C2FC 0043C2FC 14400006 */  bnez        $v0, .L0043C318
/* 03C300 0043C300 00408025 */   move       $s0, $v0
/* 03C304 0043C304 8F9985C4 */  lw          $t9, %call16(panic)($gp)
/* 03C308 0043C308 8F848030 */  lw          $a0, %got(STR_100087BC)($gp)
/* 03C30C 0043C30C 0320F809 */  jalr        $t9
/* 03C310 0043C310 248487BC */   addiu      $a0, $a0, %lo(STR_100087BC)
/* 03C314 0043C314 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043C318:
/* 03C318 0043C318 8FAD0034 */  lw          $t5, 0x34($sp)
/* 03C31C 0043C31C 8DAF0038 */  lw          $t7, 0x38($t5)
/* 03C320 0043C320 AE0F0000 */  sw          $t7, 0x0($s0)
/* 03C324 0043C324 8F998598 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 03C328 0043C328 0320F809 */  jalr        $t9
/* 03C32C 0043C32C 00000000 */   nop
/* 03C330 0043C330 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C334 0043C334 14400006 */  bnez        $v0, .L0043C350
/* 03C338 0043C338 00408025 */   move       $s0, $v0
/* 03C33C 0043C33C 8F9985C4 */  lw          $t9, %call16(panic)($gp)
/* 03C340 0043C340 8F848030 */  lw          $a0, %got(STR_100087E0)($gp)
/* 03C344 0043C344 0320F809 */  jalr        $t9
/* 03C348 0043C348 248487E0 */   addiu      $a0, $a0, %lo(STR_100087E0)
/* 03C34C 0043C34C 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043C350:
/* 03C350 0043C350 8FAE0034 */  lw          $t6, 0x34($sp)
/* 03C354 0043C354 8DD8003C */  lw          $t8, 0x3C($t6)
/* 03C358 0043C358 AE180000 */  sw          $t8, 0x0($s0)
.L0043C35C:
/* 03C35C 0043C35C 8F8887D4 */  lw          $t0, %got(usersymbol)($gp)
/* 03C360 0043C360 2401000C */  addiu       $at, $zero, 0xC
/* 03C364 0043C364 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03C368 0043C368 01111023 */  subu        $v0, $t0, $s1
/* 03C36C 0043C36C 0041001A */  div         $zero, $v0, $at
/* 03C370 0043C370 00001012 */  mflo        $v0
/* 03C374 0043C374 8FB1001C */  lw          $s1, 0x1C($sp)
/* 03C378 0043C378 8FB00018 */  lw          $s0, 0x18($sp)
/* 03C37C 0043C37C 03E00008 */  jr          $ra
/* 03C380 0043C380 27BD0028 */   addiu      $sp, $sp, 0x28
