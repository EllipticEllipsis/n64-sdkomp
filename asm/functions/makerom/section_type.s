.section .rodata
glabel STR_10007D70
/* 047D70 10007D70 */ .asciz ".text"
                      .balign 4

glabel STR_10007D78
/* 047D78 10007D78 */ .asciz ".data"
                      .balign 4

glabel STR_10007D80
/* 047D80 10007D80 */ .asciz ".bss"
                      .balign 4

glabel STR_10007D88
/* 047D88 10007D88 */ .asciz ".rodata"
                      .balign 4

glabel STR_10007D90
/* 047D90 10007D90 */ .asciz ".sdata"
                      .balign 4

glabel STR_10007D98
/* 047D98 10007D98 */ .asciz ".sbss"
                      .balign 4

glabel STR_10007DA0
/* 047DA0 10007DA0 */ .asciz ".lit8"
                      .balign 4

glabel STR_10007DA8
/* 047DA8 10007DA8 */ .asciz ".lit4"
                      .balign 4

glabel STR_10007DB0
/* 047DB0 10007DB0 */ .asciz ".init"
                      .balign 4


.section .text
glabel section_type # 557
/* 034FEC 00434FEC 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 034FF0 00434FF0 279CDD74 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDDD74
/* 034FF4 00434FF4 0399E021 */  addu        $gp, $gp, $t9
/* 034FF8 00434FF8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 034FFC 00434FFC AFBF001C */  sw          $ra, 0x1C($sp)
/* 035000 00435000 AFBC0018 */  sw          $gp, 0x18($sp)
/* 035004 00435004 8C82008C */  lw          $v0, 0x8C($a0)
/* 035008 00435008 24010002 */  addiu       $at, $zero, 0x2
/* 03500C 0043500C 5441002F */  bnel        $v0, $at, .L004350CC
/* 035010 00435010 24010003 */   addiu      $at, $zero, 0x3
/* 035014 00435014 8CA20024 */  lw          $v0, 0x24($a1)
/* 035018 00435018 28410101 */  slti        $at, $v0, 0x101
/* 03501C 0043501C 1420000B */  bnez        $at, .L0043504C
/* 035020 00435020 24010200 */   addiu      $at, $zero, 0x200
/* 035024 00435024 1041001E */  beq         $v0, $at, .L004350A0
/* 035028 00435028 24010400 */   addiu      $at, $zero, 0x400
/* 03502C 0043502C 1041001E */  beq         $v0, $at, .L004350A8
/* 035030 00435030 3C010800 */   lui        $at, (0x8000000 >> 16)
/* 035034 00435034 1041001E */  beq         $v0, $at, .L004350B0
/* 035038 00435038 3C011000 */   lui        $at, (0x10000000 >> 16)
/* 03503C 0043503C 1041001E */  beq         $v0, $at, .L004350B8
/* 035040 00435040 00000000 */   nop
/* 035044 00435044 10000085 */  b           .L0043525C
/* 035048 00435048 00001025 */   move       $v0, $zero
.L0043504C:
/* 03504C 0043504C 3C018000 */  lui         $at, (0x80000000 >> 16)
/* 035050 00435050 1041001B */  beq         $v0, $at, .L004350C0
/* 035054 00435054 24010020 */   addiu      $at, $zero, 0x20
/* 035058 00435058 10410009 */  beq         $v0, $at, .L00435080
/* 03505C 0043505C 24010040 */   addiu      $at, $zero, 0x40
/* 035060 00435060 10410009 */  beq         $v0, $at, .L00435088
/* 035064 00435064 24010080 */   addiu      $at, $zero, 0x80
/* 035068 00435068 10410009 */  beq         $v0, $at, .L00435090
/* 03506C 0043506C 24010100 */   addiu      $at, $zero, 0x100
/* 035070 00435070 10410009 */  beq         $v0, $at, .L00435098
/* 035074 00435074 00000000 */   nop
/* 035078 00435078 10000078 */  b           .L0043525C
/* 03507C 0043507C 00001025 */   move       $v0, $zero
.L00435080:
/* 035080 00435080 10000076 */  b           .L0043525C
/* 035084 00435084 24020001 */   addiu      $v0, $zero, 0x1
.L00435088:
/* 035088 00435088 10000074 */  b           .L0043525C
/* 03508C 0043508C 24020003 */   addiu      $v0, $zero, 0x3
.L00435090:
/* 035090 00435090 10000072 */  b           .L0043525C
/* 035094 00435094 24020006 */   addiu      $v0, $zero, 0x6
.L00435098:
/* 035098 00435098 10000070 */  b           .L0043525C
/* 03509C 0043509C 24020002 */   addiu      $v0, $zero, 0x2
.L004350A0:
/* 0350A0 004350A0 1000006E */  b           .L0043525C
/* 0350A4 004350A4 24020004 */   addiu      $v0, $zero, 0x4
.L004350A8:
/* 0350A8 004350A8 1000006C */  b           .L0043525C
/* 0350AC 004350AC 24020005 */   addiu      $v0, $zero, 0x5
.L004350B0:
/* 0350B0 004350B0 1000006A */  b           .L0043525C
/* 0350B4 004350B4 24020008 */   addiu      $v0, $zero, 0x8
.L004350B8:
/* 0350B8 004350B8 10000068 */  b           .L0043525C
/* 0350BC 004350BC 24020009 */   addiu      $v0, $zero, 0x9
.L004350C0:
/* 0350C0 004350C0 10000066 */  b           .L0043525C
/* 0350C4 004350C4 24020007 */   addiu      $v0, $zero, 0x7
/* 0350C8 004350C8 24010003 */  addiu       $at, $zero, 0x3
.L004350CC:
/* 0350CC 004350CC 54410063 */  bnel        $v0, $at, .L0043525C
/* 0350D0 004350D0 00001025 */   move       $v0, $zero
/* 0350D4 004350D4 8F99842C */  lw          $t9, %call16(obj_pelfhdr)($gp)
/* 0350D8 004350D8 AFA40028 */  sw          $a0, 0x28($sp)
/* 0350DC 004350DC AFA5002C */  sw          $a1, 0x2C($sp)
/* 0350E0 004350E0 0320F809 */  jalr        $t9
/* 0350E4 004350E4 00000000 */   nop
/* 0350E8 004350E8 8C4E0020 */  lw          $t6, 0x20($v0)
/* 0350EC 004350EC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0350F0 004350F0 8FA40028 */  lw          $a0, 0x28($sp)
/* 0350F4 004350F4 11C00058 */  beqz        $t6, .L00435258
/* 0350F8 004350F8 8FA5002C */   lw         $a1, 0x2C($sp)
/* 0350FC 004350FC 8F998450 */  lw          $t9, %call16(obj_section_name)($gp)
/* 035100 00435100 0320F809 */  jalr        $t9
/* 035104 00435104 00000000 */   nop
/* 035108 00435108 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03510C 0043510C 10400052 */  beqz        $v0, .L00435258
/* 035110 00435110 00402025 */   move       $a0, $v0
/* 035114 00435114 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 035118 00435118 8F85802C */  lw          $a1, %got(STR_10007D70)($gp)
/* 03511C 0043511C AFA20020 */  sw          $v0, 0x20($sp)
/* 035120 00435120 0320F809 */  jalr        $t9
/* 035124 00435124 24A57D70 */   addiu      $a1, $a1, %lo(STR_10007D70)
/* 035128 00435128 14400003 */  bnez        $v0, .L00435138
/* 03512C 0043512C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 035130 00435130 1000004A */  b           .L0043525C
/* 035134 00435134 24020001 */   addiu      $v0, $zero, 0x1
.L00435138:
/* 035138 00435138 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 03513C 0043513C 8F85802C */  lw          $a1, %got(STR_10007D78)($gp)
/* 035140 00435140 8FA40020 */  lw          $a0, 0x20($sp)
/* 035144 00435144 0320F809 */  jalr        $t9
/* 035148 00435148 24A57D78 */   addiu      $a1, $a1, %lo(STR_10007D78)
/* 03514C 0043514C 14400003 */  bnez        $v0, .L0043515C
/* 035150 00435150 8FBC0018 */   lw         $gp, 0x18($sp)
/* 035154 00435154 10000041 */  b           .L0043525C
/* 035158 00435158 24020003 */   addiu      $v0, $zero, 0x3
.L0043515C:
/* 03515C 0043515C 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 035160 00435160 8F85802C */  lw          $a1, %got(STR_10007D80)($gp)
/* 035164 00435164 8FA40020 */  lw          $a0, 0x20($sp)
/* 035168 00435168 0320F809 */  jalr        $t9
/* 03516C 0043516C 24A57D80 */   addiu      $a1, $a1, %lo(STR_10007D80)
/* 035170 00435170 14400003 */  bnez        $v0, .L00435180
/* 035174 00435174 8FBC0018 */   lw         $gp, 0x18($sp)
/* 035178 00435178 10000038 */  b           .L0043525C
/* 03517C 0043517C 24020006 */   addiu      $v0, $zero, 0x6
.L00435180:
/* 035180 00435180 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 035184 00435184 8F85802C */  lw          $a1, %got(STR_10007D88)($gp)
/* 035188 00435188 8FA40020 */  lw          $a0, 0x20($sp)
/* 03518C 0043518C 0320F809 */  jalr        $t9
/* 035190 00435190 24A57D88 */   addiu      $a1, $a1, %lo(STR_10007D88)
/* 035194 00435194 14400003 */  bnez        $v0, .L004351A4
/* 035198 00435198 8FBC0018 */   lw         $gp, 0x18($sp)
/* 03519C 0043519C 1000002F */  b           .L0043525C
/* 0351A0 004351A0 24020002 */   addiu      $v0, $zero, 0x2
.L004351A4:
/* 0351A4 004351A4 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 0351A8 004351A8 8F85802C */  lw          $a1, %got(STR_10007D90)($gp)
/* 0351AC 004351AC 8FA40020 */  lw          $a0, 0x20($sp)
/* 0351B0 004351B0 0320F809 */  jalr        $t9
/* 0351B4 004351B4 24A57D90 */   addiu      $a1, $a1, %lo(STR_10007D90)
/* 0351B8 004351B8 14400003 */  bnez        $v0, .L004351C8
/* 0351BC 004351BC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0351C0 004351C0 10000026 */  b           .L0043525C
/* 0351C4 004351C4 24020004 */   addiu      $v0, $zero, 0x4
.L004351C8:
/* 0351C8 004351C8 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 0351CC 004351CC 8F85802C */  lw          $a1, %got(STR_10007D98)($gp)
/* 0351D0 004351D0 8FA40020 */  lw          $a0, 0x20($sp)
/* 0351D4 004351D4 0320F809 */  jalr        $t9
/* 0351D8 004351D8 24A57D98 */   addiu      $a1, $a1, %lo(STR_10007D98)
/* 0351DC 004351DC 14400003 */  bnez        $v0, .L004351EC
/* 0351E0 004351E0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0351E4 004351E4 1000001D */  b           .L0043525C
/* 0351E8 004351E8 24020005 */   addiu      $v0, $zero, 0x5
.L004351EC:
/* 0351EC 004351EC 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 0351F0 004351F0 8F85802C */  lw          $a1, %got(STR_10007DA0)($gp)
/* 0351F4 004351F4 8FA40020 */  lw          $a0, 0x20($sp)
/* 0351F8 004351F8 0320F809 */  jalr        $t9
/* 0351FC 004351FC 24A57DA0 */   addiu      $a1, $a1, %lo(STR_10007DA0)
/* 035200 00435200 14400003 */  bnez        $v0, .L00435210
/* 035204 00435204 8FBC0018 */   lw         $gp, 0x18($sp)
/* 035208 00435208 10000014 */  b           .L0043525C
/* 03520C 0043520C 24020008 */   addiu      $v0, $zero, 0x8
.L00435210:
/* 035210 00435210 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 035214 00435214 8F85802C */  lw          $a1, %got(STR_10007DA8)($gp)
/* 035218 00435218 8FA40020 */  lw          $a0, 0x20($sp)
/* 03521C 0043521C 0320F809 */  jalr        $t9
/* 035220 00435220 24A57DA8 */   addiu      $a1, $a1, %lo(STR_10007DA8)
/* 035224 00435224 14400003 */  bnez        $v0, .L00435234
/* 035228 00435228 8FBC0018 */   lw         $gp, 0x18($sp)
/* 03522C 0043522C 1000000B */  b           .L0043525C
/* 035230 00435230 24020009 */   addiu      $v0, $zero, 0x9
.L00435234:
/* 035234 00435234 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 035238 00435238 8F85802C */  lw          $a1, %got(STR_10007DB0)($gp)
/* 03523C 0043523C 8FA40020 */  lw          $a0, 0x20($sp)
/* 035240 00435240 0320F809 */  jalr        $t9
/* 035244 00435244 24A57DB0 */   addiu      $a1, $a1, %lo(STR_10007DB0)
/* 035248 00435248 14400003 */  bnez        $v0, .L00435258
/* 03524C 0043524C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 035250 00435250 10000002 */  b           .L0043525C
/* 035254 00435254 24020007 */   addiu      $v0, $zero, 0x7
.L00435258:
/* 035258 00435258 00001025 */  move        $v0, $zero
.L0043525C:
/* 03525C 0043525C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 035260 00435260 27BD0028 */  addiu       $sp, $sp, 0x28
/* 035264 00435264 03E00008 */  jr          $ra
/* 035268 00435268 00000000 */   nop
