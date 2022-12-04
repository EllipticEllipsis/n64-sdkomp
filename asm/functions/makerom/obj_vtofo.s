.section .rodata
glabel STR_1000813C
/* 04813C 1000813C */ .asciz "0"
                      .balign 4

glabel STR_10008140
/* 048140 10008140 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008150
/* 048150 10008150 */ .asciz "0"
                      .balign 4

glabel STR_10008154
/* 048154 10008154 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008164
/* 048164 10008164 */ .asciz "0"
                      .balign 4

glabel STR_10008168
/* 048168 10008168 */ .asciz "obj_rewrite.c"
                      .balign 4


.section .text
glabel obj_vtofo # 575
/* 037C8C 00437C8C 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 037C90 00437C90 279CB0D4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDB0D4
/* 037C94 00437C94 0399E021 */  addu        $gp, $gp, $t9
/* 037C98 00437C98 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 037C9C 00437C9C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 037CA0 00437CA0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 037CA4 00437CA4 AFB00014 */  sw          $s0, 0x14($sp)
/* 037CA8 00437CA8 00808025 */  move        $s0, $a0
/* 037CAC 00437CAC AFBC0018 */  sw          $gp, 0x18($sp)
/* 037CB0 00437CB0 0320F809 */  jalr        $t9
/* 037CB4 00437CB4 AFA5002C */   sw         $a1, 0x2C($sp)
/* 037CB8 00437CB8 24010002 */  addiu       $at, $zero, 0x2
/* 037CBC 00437CBC 10410008 */  beq         $v0, $at, .L00437CE0
/* 037CC0 00437CC0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 037CC4 00437CC4 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 037CC8 00437CC8 02002025 */  move        $a0, $s0
/* 037CCC 00437CCC 0320F809 */  jalr        $t9
/* 037CD0 00437CD0 00000000 */   nop
/* 037CD4 00437CD4 24010003 */  addiu       $at, $zero, 0x3
/* 037CD8 00437CD8 14410067 */  bne         $v0, $at, .L00437E78
/* 037CDC 00437CDC 8FBC0018 */   lw         $gp, 0x18($sp)
.L00437CE0:
/* 037CE0 00437CE0 8F998390 */  lw          $t9, %call16(obj_text_start)($gp)
/* 037CE4 00437CE4 02002025 */  move        $a0, $s0
/* 037CE8 00437CE8 0320F809 */  jalr        $t9
/* 037CEC 00437CEC 00000000 */   nop
/* 037CF0 00437CF0 8FAE002C */  lw          $t6, 0x2C($sp)
/* 037CF4 00437CF4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037CF8 00437CF8 01C2082B */  sltu        $at, $t6, $v0
/* 037CFC 00437CFC 14200056 */  bnez        $at, .L00437E58
/* 037D00 00437D00 00000000 */   nop
/* 037D04 00437D04 8F998390 */  lw          $t9, %call16(obj_text_start)($gp)
/* 037D08 00437D08 02002025 */  move        $a0, $s0
/* 037D0C 00437D0C 0320F809 */  jalr        $t9
/* 037D10 00437D10 00000000 */   nop
/* 037D14 00437D14 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037D18 00437D18 AFA20024 */  sw          $v0, 0x24($sp)
/* 037D1C 00437D1C 02002025 */  move        $a0, $s0
/* 037D20 00437D20 8F998394 */  lw          $t9, %call16(obj_text_size)($gp)
/* 037D24 00437D24 0320F809 */  jalr        $t9
/* 037D28 00437D28 00000000 */   nop
/* 037D2C 00437D2C 8FB80024 */  lw          $t8, 0x24($sp)
/* 037D30 00437D30 8FAF002C */  lw          $t7, 0x2C($sp)
/* 037D34 00437D34 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037D38 00437D38 0058C821 */  addu        $t9, $v0, $t8
/* 037D3C 00437D3C 01F9082B */  sltu        $at, $t7, $t9
/* 037D40 00437D40 10200009 */  beqz        $at, .L00437D68
/* 037D44 00437D44 00000000 */   nop
/* 037D48 00437D48 8F998390 */  lw          $t9, %call16(obj_text_start)($gp)
/* 037D4C 00437D4C 02002025 */  move        $a0, $s0
/* 037D50 00437D50 0320F809 */  jalr        $t9
/* 037D54 00437D54 00000000 */   nop
/* 037D58 00437D58 8FA8002C */  lw          $t0, 0x2C($sp)
/* 037D5C 00437D5C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037D60 00437D60 10000045 */  b           .L00437E78
/* 037D64 00437D64 01021023 */   subu       $v0, $t0, $v0
.L00437D68:
/* 037D68 00437D68 8F99839C */  lw          $t9, %call16(obj_data_start)($gp)
/* 037D6C 00437D6C 02002025 */  move        $a0, $s0
/* 037D70 00437D70 0320F809 */  jalr        $t9
/* 037D74 00437D74 00000000 */   nop
/* 037D78 00437D78 8FA9002C */  lw          $t1, 0x2C($sp)
/* 037D7C 00437D7C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037D80 00437D80 0122082B */  sltu        $at, $t1, $v0
/* 037D84 00437D84 1420002B */  bnez        $at, .L00437E34
/* 037D88 00437D88 00000000 */   nop
/* 037D8C 00437D8C 8F9983A0 */  lw          $t9, %call16(obj_bss_start)($gp)
/* 037D90 00437D90 02002025 */  move        $a0, $s0
/* 037D94 00437D94 0320F809 */  jalr        $t9
/* 037D98 00437D98 00000000 */   nop
/* 037D9C 00437D9C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037DA0 00437DA0 AFA20024 */  sw          $v0, 0x24($sp)
/* 037DA4 00437DA4 02002025 */  move        $a0, $s0
/* 037DA8 00437DA8 8F9983A8 */  lw          $t9, %call16(obj_bss_size)($gp)
/* 037DAC 00437DAC 0320F809 */  jalr        $t9
/* 037DB0 00437DB0 00000000 */   nop
/* 037DB4 00437DB4 8FAB0024 */  lw          $t3, 0x24($sp)
/* 037DB8 00437DB8 8FAA002C */  lw          $t2, 0x2C($sp)
/* 037DBC 00437DBC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037DC0 00437DC0 004B6021 */  addu        $t4, $v0, $t3
/* 037DC4 00437DC4 014C082B */  sltu        $at, $t2, $t4
/* 037DC8 00437DC8 10200011 */  beqz        $at, .L00437E10
/* 037DCC 00437DCC 00000000 */   nop
/* 037DD0 00437DD0 8F998394 */  lw          $t9, %call16(obj_text_size)($gp)
/* 037DD4 00437DD4 02002025 */  move        $a0, $s0
/* 037DD8 00437DD8 0320F809 */  jalr        $t9
/* 037DDC 00437DDC 00000000 */   nop
/* 037DE0 00437DE0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037DE4 00437DE4 AFA20024 */  sw          $v0, 0x24($sp)
/* 037DE8 00437DE8 02002025 */  move        $a0, $s0
/* 037DEC 00437DEC 8F99839C */  lw          $t9, %call16(obj_data_start)($gp)
/* 037DF0 00437DF0 0320F809 */  jalr        $t9
/* 037DF4 00437DF4 00000000 */   nop
/* 037DF8 00437DF8 8FAD0024 */  lw          $t5, 0x24($sp)
/* 037DFC 00437DFC 8FAE002C */  lw          $t6, 0x2C($sp)
/* 037E00 00437E00 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037E04 00437E04 01AEC021 */  addu        $t8, $t5, $t6
/* 037E08 00437E08 1000001B */  b           .L00437E78
/* 037E0C 00437E0C 03021023 */   subu       $v0, $t8, $v0
.L00437E10:
/* 037E10 00437E10 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 037E14 00437E14 8F848030 */  lw          $a0, %got(STR_1000813C)($gp)
/* 037E18 00437E18 8F858030 */  lw          $a1, %got(STR_10008140)($gp)
/* 037E1C 00437E1C 240600BB */  addiu       $a2, $zero, 0xBB
/* 037E20 00437E20 2484813C */  addiu       $a0, $a0, %lo(STR_1000813C)
/* 037E24 00437E24 0320F809 */  jalr        $t9
/* 037E28 00437E28 24A58140 */   addiu      $a1, $a1, %lo(STR_10008140)
/* 037E2C 00437E2C 10000012 */  b           .L00437E78
/* 037E30 00437E30 8FBC0018 */   lw         $gp, 0x18($sp)
.L00437E34:
/* 037E34 00437E34 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 037E38 00437E38 8F848030 */  lw          $a0, %got(STR_10008150)($gp)
/* 037E3C 00437E3C 8F858030 */  lw          $a1, %got(STR_10008154)($gp)
/* 037E40 00437E40 240600BD */  addiu       $a2, $zero, 0xBD
/* 037E44 00437E44 24848150 */  addiu       $a0, $a0, %lo(STR_10008150)
/* 037E48 00437E48 0320F809 */  jalr        $t9
/* 037E4C 00437E4C 24A58154 */   addiu      $a1, $a1, %lo(STR_10008154)
/* 037E50 00437E50 10000009 */  b           .L00437E78
/* 037E54 00437E54 8FBC0018 */   lw         $gp, 0x18($sp)
.L00437E58:
/* 037E58 00437E58 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 037E5C 00437E5C 8F848030 */  lw          $a0, %got(STR_10008164)($gp)
/* 037E60 00437E60 8F858030 */  lw          $a1, %got(STR_10008168)($gp)
/* 037E64 00437E64 240600C0 */  addiu       $a2, $zero, 0xC0
/* 037E68 00437E68 24848164 */  addiu       $a0, $a0, %lo(STR_10008164)
/* 037E6C 00437E6C 0320F809 */  jalr        $t9
/* 037E70 00437E70 24A58168 */   addiu      $a1, $a1, %lo(STR_10008168)
/* 037E74 00437E74 8FBC0018 */  lw          $gp, 0x18($sp)
.L00437E78:
/* 037E78 00437E78 8FBF001C */  lw          $ra, 0x1C($sp)
/* 037E7C 00437E7C 8FB00014 */  lw          $s0, 0x14($sp)
/* 037E80 00437E80 27BD0028 */  addiu       $sp, $sp, 0x28
/* 037E84 00437E84 03E00008 */  jr          $ra
/* 037E88 00437E88 00000000 */   nop
