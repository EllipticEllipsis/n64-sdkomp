.section .rodata
glabel STR_10007FB8
/* 047FB8 10007FB8 */ .asciz ".text"
                      .balign 4

glabel STR_10007FC0
/* 047FC0 10007FC0 */ .asciz ".rodata"
                      .balign 4

glabel STR_10007FC8
/* 047FC8 10007FC8 */ .asciz ".data"
                      .balign 4

glabel STR_10007FD0
/* 047FD0 10007FD0 */ .asciz ".sdata"
                      .balign 4

glabel STR_10007FD8
/* 047FD8 10007FD8 */ .asciz ".init"
                      .balign 4

glabel STR_10007FE0
/* 047FE0 10007FE0 */ .asciz ".lit8"
                      .balign 4

glabel STR_10007FE8
/* 047FE8 10007FE8 */ .asciz ".lit4"
                      .balign 4

glabel STR_10007FF0
/* 047FF0 10007FF0 */ .asciz ".reginfo"
                      .balign 4

glabel STR_10007FFC
/* 047FFC 10007FFC */ .asciz ".compact_rel"
                      .balign 4

glabel STR_1000800C
/* 04800C 1000800C */ .asciz ".mdebug"
                      .balign 4

glabel STR_10008014
/* 048014 10008014 */ .asciz "0"
                      .balign 4

glabel STR_10008018
/* 048018 10008018 */ .asciz "obj_elf.c"
                      .balign 4

glabel STR_10008024
/* 048024 10008024 */ .asciz ".sbss"
                      .balign 4

glabel STR_1000802C
/* 04802C 1000802C */ .asciz ".bss"
                      .balign 4

.section .late_rodata
glabel jtbl_10008034
/* 048034 10008034 F042483C */ .gpword .L0043759C
/* 048038 10008038 F042483C */ .gpword .L0043759C
/* 04803C 1000803C F042483C */ .gpword .L0043759C
/* 048040 10008040 F042483C */ .gpword .L0043759C
/* 048044 10008044 F042483C */ .gpword .L0043759C

glabel jtbl_10008048
/* 048048 10008048 F04247C4 */ .gpword .L00437524
/* 04804C 1000804C F0424558 */ .gpword .L004372B8
/* 048050 10008050 F04247C4 */ .gpword .L00437524
/* 048054 10008054 F04247C4 */ .gpword .L00437524
/* 048058 10008058 F04247C4 */ .gpword .L00437524
/* 04805C 1000805C F04247C4 */ .gpword .L00437524
/* 048060 10008060 F04247C4 */ .gpword .L00437524
/* 048064 10008064 F04247C4 */ .gpword .L00437524
/* 048068 10008068 F04247C4 */ .gpword .L00437524
/* 04806C 1000806C F042483C */ .gpword .L0043759C
/* 048070 10008070 F042483C */ .gpword .L0043759C
/* 048074 10008074 F042483C */ .gpword .L0043759C
/* 048078 10008078 00000000 */ .word 0x00000000
/* 04807C 1000807C 00000000 */ .word 0x00000000


.section .text
glabel obj_section_reloc_type # 570
/* 03721C 0043721C 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 037220 00437220 279CBB44 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDBB44
/* 037224 00437224 0399E021 */  addu        $gp, $gp, $t9
/* 037228 00437228 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 03722C 0043722C 8F998438 */  lw          $t9, %call16(obj_section)($gp)
/* 037230 00437230 AFBF001C */  sw          $ra, 0x1C($sp)
/* 037234 00437234 AFA40058 */  sw          $a0, 0x58($sp)
/* 037238 00437238 AFA5005C */  sw          $a1, 0x5C($sp)
/* 03723C 0043723C AFBC0018 */  sw          $gp, 0x18($sp)
/* 037240 00437240 8FA6005C */  lw          $a2, 0x5C($sp)
/* 037244 00437244 8FA50058 */  lw          $a1, 0x58($sp)
/* 037248 00437248 0320F809 */  jalr        $t9
/* 03724C 0043724C 27A40030 */   addiu      $a0, $sp, 0x30
/* 037250 00437250 8FA30034 */  lw          $v1, 0x34($sp)
/* 037254 00437254 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037258 00437258 2C61000C */  sltiu       $at, $v1, 0xC
/* 03725C 0043725C 1420000C */  bnez        $at, .L00437290
/* 037260 00437260 3C019000 */   lui        $at, (0x90000000 >> 16)
/* 037264 00437264 00617021 */  addu        $t6, $v1, $at
/* 037268 00437268 2DC10005 */  sltiu       $at, $t6, 0x5
/* 03726C 0043726C 502000CD */  beql        $at, $zero, .L004375A4
/* 037270 00437270 8FBF001C */   lw         $ra, 0x1C($sp)
/* 037274 00437274 8F818030 */  lw          $at, %got(jtbl_10008034)($gp)
/* 037278 00437278 000E7080 */  sll         $t6, $t6, 2
/* 03727C 0043727C 002E0821 */  addu        $at, $at, $t6
/* 037280 00437280 8C2E8034 */  lw          $t6, %lo(jtbl_10008034)($at)
/* 037284 00437284 01DC7021 */  addu        $t6, $t6, $gp
/* 037288 00437288 01C00008 */  jr          $t6
/* 03728C 0043728C 00000000 */   nop
.L00437290:
/* 037290 00437290 2C61000C */  sltiu       $at, $v1, 0xC
/* 037294 00437294 502000C3 */  beql        $at, $zero, .L004375A4
/* 037298 00437298 8FBF001C */   lw         $ra, 0x1C($sp)
/* 03729C 0043729C 8F818030 */  lw          $at, %got(jtbl_10008048)($gp)
/* 0372A0 004372A0 00037880 */  sll         $t7, $v1, 2
/* 0372A4 004372A4 002F0821 */  addu        $at, $at, $t7
/* 0372A8 004372A8 8C2F8048 */  lw          $t7, %lo(jtbl_10008048)($at)
/* 0372AC 004372AC 01FC7821 */  addu        $t7, $t7, $gp
/* 0372B0 004372B0 01E00008 */  jr          $t7
/* 0372B4 004372B4 00000000 */   nop
.L004372B8:
/* 0372B8 004372B8 8F998440 */  lw          $t9, %call16(obj_section_index_name)($gp)
/* 0372BC 004372BC 8FA40058 */  lw          $a0, 0x58($sp)
/* 0372C0 004372C0 8FA5005C */  lw          $a1, 0x5C($sp)
/* 0372C4 004372C4 0320F809 */  jalr        $t9
/* 0372C8 004372C8 00000000 */   nop
/* 0372CC 004372CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0372D0 004372D0 00402025 */  move        $a0, $v0
/* 0372D4 004372D4 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 0372D8 004372D8 8F85802C */  lw          $a1, %got(STR_10007FB8)($gp)
/* 0372DC 004372DC 0320F809 */  jalr        $t9
/* 0372E0 004372E0 24A57FB8 */   addiu      $a1, $a1, %lo(STR_10007FB8)
/* 0372E4 004372E4 14400003 */  bnez        $v0, .L004372F4
/* 0372E8 004372E8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0372EC 004372EC 100000AC */  b           .L004375A0
/* 0372F0 004372F0 24020001 */   addiu      $v0, $zero, 0x1
.L004372F4:
/* 0372F4 004372F4 8F998440 */  lw          $t9, %call16(obj_section_index_name)($gp)
/* 0372F8 004372F8 8FA40058 */  lw          $a0, 0x58($sp)
/* 0372FC 004372FC 8FA5005C */  lw          $a1, 0x5C($sp)
/* 037300 00437300 0320F809 */  jalr        $t9
/* 037304 00437304 00000000 */   nop
/* 037308 00437308 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03730C 0043730C 00402025 */  move        $a0, $v0
/* 037310 00437310 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 037314 00437314 8F85802C */  lw          $a1, %got(STR_10007FC0)($gp)
/* 037318 00437318 0320F809 */  jalr        $t9
/* 03731C 0043731C 24A57FC0 */   addiu      $a1, $a1, %lo(STR_10007FC0)
/* 037320 00437320 14400003 */  bnez        $v0, .L00437330
/* 037324 00437324 8FBC0018 */   lw         $gp, 0x18($sp)
/* 037328 00437328 1000009D */  b           .L004375A0
/* 03732C 0043732C 24020002 */   addiu      $v0, $zero, 0x2
.L00437330:
/* 037330 00437330 8F998440 */  lw          $t9, %call16(obj_section_index_name)($gp)
/* 037334 00437334 8FA40058 */  lw          $a0, 0x58($sp)
/* 037338 00437338 8FA5005C */  lw          $a1, 0x5C($sp)
/* 03733C 0043733C 0320F809 */  jalr        $t9
/* 037340 00437340 00000000 */   nop
/* 037344 00437344 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037348 00437348 00402025 */  move        $a0, $v0
/* 03734C 0043734C 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 037350 00437350 8F85802C */  lw          $a1, %got(STR_10007FC8)($gp)
/* 037354 00437354 0320F809 */  jalr        $t9
/* 037358 00437358 24A57FC8 */   addiu      $a1, $a1, %lo(STR_10007FC8)
/* 03735C 0043735C 14400003 */  bnez        $v0, .L0043736C
/* 037360 00437360 8FBC0018 */   lw         $gp, 0x18($sp)
/* 037364 00437364 1000008E */  b           .L004375A0
/* 037368 00437368 24020003 */   addiu      $v0, $zero, 0x3
.L0043736C:
/* 03736C 0043736C 8F998440 */  lw          $t9, %call16(obj_section_index_name)($gp)
/* 037370 00437370 8FA40058 */  lw          $a0, 0x58($sp)
/* 037374 00437374 8FA5005C */  lw          $a1, 0x5C($sp)
/* 037378 00437378 0320F809 */  jalr        $t9
/* 03737C 0043737C 00000000 */   nop
/* 037380 00437380 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037384 00437384 00402025 */  move        $a0, $v0
/* 037388 00437388 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 03738C 0043738C 8F85802C */  lw          $a1, %got(STR_10007FD0)($gp)
/* 037390 00437390 0320F809 */  jalr        $t9
/* 037394 00437394 24A57FD0 */   addiu      $a1, $a1, %lo(STR_10007FD0)
/* 037398 00437398 14400003 */  bnez        $v0, .L004373A8
/* 03739C 0043739C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0373A0 004373A0 1000007F */  b           .L004375A0
/* 0373A4 004373A4 24020004 */   addiu      $v0, $zero, 0x4
.L004373A8:
/* 0373A8 004373A8 8F998440 */  lw          $t9, %call16(obj_section_index_name)($gp)
/* 0373AC 004373AC 8FA40058 */  lw          $a0, 0x58($sp)
/* 0373B0 004373B0 8FA5005C */  lw          $a1, 0x5C($sp)
/* 0373B4 004373B4 0320F809 */  jalr        $t9
/* 0373B8 004373B8 00000000 */   nop
/* 0373BC 004373BC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0373C0 004373C0 00402025 */  move        $a0, $v0
/* 0373C4 004373C4 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 0373C8 004373C8 8F85802C */  lw          $a1, %got(STR_10007FD8)($gp)
/* 0373CC 004373CC 0320F809 */  jalr        $t9
/* 0373D0 004373D0 24A57FD8 */   addiu      $a1, $a1, %lo(STR_10007FD8)
/* 0373D4 004373D4 14400003 */  bnez        $v0, .L004373E4
/* 0373D8 004373D8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0373DC 004373DC 10000070 */  b           .L004375A0
/* 0373E0 004373E0 24020007 */   addiu      $v0, $zero, 0x7
.L004373E4:
/* 0373E4 004373E4 8F998440 */  lw          $t9, %call16(obj_section_index_name)($gp)
/* 0373E8 004373E8 8FA40058 */  lw          $a0, 0x58($sp)
/* 0373EC 004373EC 8FA5005C */  lw          $a1, 0x5C($sp)
/* 0373F0 004373F0 0320F809 */  jalr        $t9
/* 0373F4 004373F4 00000000 */   nop
/* 0373F8 004373F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0373FC 004373FC 00402025 */  move        $a0, $v0
/* 037400 00437400 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 037404 00437404 8F85802C */  lw          $a1, %got(STR_10007FE0)($gp)
/* 037408 00437408 0320F809 */  jalr        $t9
/* 03740C 0043740C 24A57FE0 */   addiu      $a1, $a1, %lo(STR_10007FE0)
/* 037410 00437410 14400003 */  bnez        $v0, .L00437420
/* 037414 00437414 8FBC0018 */   lw         $gp, 0x18($sp)
/* 037418 00437418 10000061 */  b           .L004375A0
/* 03741C 0043741C 24020008 */   addiu      $v0, $zero, 0x8
.L00437420:
/* 037420 00437420 8F998440 */  lw          $t9, %call16(obj_section_index_name)($gp)
/* 037424 00437424 8FA40058 */  lw          $a0, 0x58($sp)
/* 037428 00437428 8FA5005C */  lw          $a1, 0x5C($sp)
/* 03742C 0043742C 0320F809 */  jalr        $t9
/* 037430 00437430 00000000 */   nop
/* 037434 00437434 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037438 00437438 00402025 */  move        $a0, $v0
/* 03743C 0043743C 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 037440 00437440 8F85802C */  lw          $a1, %got(STR_10007FE8)($gp)
/* 037444 00437444 0320F809 */  jalr        $t9
/* 037448 00437448 24A57FE8 */   addiu      $a1, $a1, %lo(STR_10007FE8)
/* 03744C 0043744C 14400003 */  bnez        $v0, .L0043745C
/* 037450 00437450 8FBC0018 */   lw         $gp, 0x18($sp)
/* 037454 00437454 10000052 */  b           .L004375A0
/* 037458 00437458 24020009 */   addiu      $v0, $zero, 0x9
.L0043745C:
/* 03745C 0043745C 8F998440 */  lw          $t9, %call16(obj_section_index_name)($gp)
/* 037460 00437460 8FA40058 */  lw          $a0, 0x58($sp)
/* 037464 00437464 8FA5005C */  lw          $a1, 0x5C($sp)
/* 037468 00437468 0320F809 */  jalr        $t9
/* 03746C 0043746C 00000000 */   nop
/* 037470 00437470 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037474 00437474 00402025 */  move        $a0, $v0
/* 037478 00437478 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 03747C 0043747C 8F85802C */  lw          $a1, %got(STR_10007FF0)($gp)
/* 037480 00437480 0320F809 */  jalr        $t9
/* 037484 00437484 24A57FF0 */   addiu      $a1, $a1, %lo(STR_10007FF0)
/* 037488 00437488 1040001B */  beqz        $v0, .L004374F8
/* 03748C 0043748C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 037490 00437490 8F998440 */  lw          $t9, %call16(obj_section_index_name)($gp)
/* 037494 00437494 8FA40058 */  lw          $a0, 0x58($sp)
/* 037498 00437498 8FA5005C */  lw          $a1, 0x5C($sp)
/* 03749C 0043749C 0320F809 */  jalr        $t9
/* 0374A0 004374A0 00000000 */   nop
/* 0374A4 004374A4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0374A8 004374A8 00402025 */  move        $a0, $v0
/* 0374AC 004374AC 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 0374B0 004374B0 8F85802C */  lw          $a1, %got(STR_10007FFC)($gp)
/* 0374B4 004374B4 0320F809 */  jalr        $t9
/* 0374B8 004374B8 24A57FFC */   addiu      $a1, $a1, %lo(STR_10007FFC)
/* 0374BC 004374BC 1040000E */  beqz        $v0, .L004374F8
/* 0374C0 004374C0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0374C4 004374C4 8F998440 */  lw          $t9, %call16(obj_section_index_name)($gp)
/* 0374C8 004374C8 8FA40058 */  lw          $a0, 0x58($sp)
/* 0374CC 004374CC 8FA5005C */  lw          $a1, 0x5C($sp)
/* 0374D0 004374D0 0320F809 */  jalr        $t9
/* 0374D4 004374D4 00000000 */   nop
/* 0374D8 004374D8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0374DC 004374DC 00402025 */  move        $a0, $v0
/* 0374E0 004374E0 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 0374E4 004374E4 8F858030 */  lw          $a1, %got(STR_1000800C)($gp)
/* 0374E8 004374E8 0320F809 */  jalr        $t9
/* 0374EC 004374EC 24A5800C */   addiu      $a1, $a1, %lo(STR_1000800C)
/* 0374F0 004374F0 14400003 */  bnez        $v0, .L00437500
/* 0374F4 004374F4 8FBC0018 */   lw         $gp, 0x18($sp)
.L004374F8:
/* 0374F8 004374F8 10000029 */  b           .L004375A0
/* 0374FC 004374FC 00001025 */   move       $v0, $zero
.L00437500:
/* 037500 00437500 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 037504 00437504 8F848030 */  lw          $a0, %got(STR_10008014)($gp)
/* 037508 00437508 8F858030 */  lw          $a1, %got(STR_10008018)($gp)
/* 03750C 0043750C 24060162 */  addiu       $a2, $zero, 0x162
/* 037510 00437510 24848014 */  addiu       $a0, $a0, %lo(STR_10008014)
/* 037514 00437514 0320F809 */  jalr        $t9
/* 037518 00437518 24A58018 */   addiu      $a1, $a1, %lo(STR_10008018)
/* 03751C 0043751C 10000020 */  b           .L004375A0
/* 037520 00437520 8FBC0018 */   lw         $gp, 0x18($sp)
.L00437524:
/* 037524 00437524 8F998440 */  lw          $t9, %call16(obj_section_index_name)($gp)
/* 037528 00437528 8FA40058 */  lw          $a0, 0x58($sp)
/* 03752C 0043752C 8FA5005C */  lw          $a1, 0x5C($sp)
/* 037530 00437530 0320F809 */  jalr        $t9
/* 037534 00437534 00000000 */   nop
/* 037538 00437538 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03753C 0043753C 00402025 */  move        $a0, $v0
/* 037540 00437540 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 037544 00437544 8F858030 */  lw          $a1, %got(STR_10008024)($gp)
/* 037548 00437548 0320F809 */  jalr        $t9
/* 03754C 0043754C 24A58024 */   addiu      $a1, $a1, %lo(STR_10008024)
/* 037550 00437550 14400003 */  bnez        $v0, .L00437560
/* 037554 00437554 8FBC0018 */   lw         $gp, 0x18($sp)
/* 037558 00437558 10000011 */  b           .L004375A0
/* 03755C 0043755C 24020005 */   addiu      $v0, $zero, 0x5
.L00437560:
/* 037560 00437560 8F998440 */  lw          $t9, %call16(obj_section_index_name)($gp)
/* 037564 00437564 8FA40058 */  lw          $a0, 0x58($sp)
/* 037568 00437568 8FA5005C */  lw          $a1, 0x5C($sp)
/* 03756C 0043756C 0320F809 */  jalr        $t9
/* 037570 00437570 00000000 */   nop
/* 037574 00437574 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037578 00437578 00402025 */  move        $a0, $v0
/* 03757C 0043757C 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 037580 00437580 8F858030 */  lw          $a1, %got(STR_1000802C)($gp)
/* 037584 00437584 0320F809 */  jalr        $t9
/* 037588 00437588 24A5802C */   addiu      $a1, $a1, %lo(STR_1000802C)
/* 03758C 0043758C 14400003 */  bnez        $v0, .L0043759C
/* 037590 00437590 8FBC0018 */   lw         $gp, 0x18($sp)
/* 037594 00437594 10000002 */  b           .L004375A0
/* 037598 00437598 24020006 */   addiu      $v0, $zero, 0x6
.L0043759C:
/* 03759C 0043759C 00001025 */  move        $v0, $zero
.L004375A0:
/* 0375A0 004375A0 8FBF001C */  lw          $ra, 0x1C($sp)
.L004375A4:
/* 0375A4 004375A4 27BD0058 */  addiu       $sp, $sp, 0x58
/* 0375A8 004375A8 03E00008 */  jr          $ra
/* 0375AC 004375AC 00000000 */   nop
