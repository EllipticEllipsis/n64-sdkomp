.section .rodata
glabel STR_10005BC4
/* 045BC4 10005BC4 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10005BD8
/* 045BD8 10005BD8 */ .asciz "makerom: lstat failed: %s\n"
                      .balign 4

glabel STR_10005BF4
/* 045BF4 10005BF4 */ .asciz "makerom: %s: segment size changed\n"
                      .balign 4

glabel STR_10005C18
/* 045C18 10005C18 */ .asciz "makerom: %s: read failed (%s)\n"
                      .balign 4


.section .text
glabel readRaw # 30
/* 00FF3C 0040FF3C 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 00FF40 0040FF40 279C2E24 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC02E24
/* 00FF44 0040FF44 0399E021 */  addu        $gp, $gp, $t9
/* 00FF48 0040FF48 27BDFF40 */  addiu       $sp, $sp, -0xC0
/* 00FF4C 0040FF4C AFBF001C */  sw          $ra, 0x1C($sp)
/* 00FF50 0040FF50 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00FF54 0040FF54 AFA400C0 */  sw          $a0, 0xC0($sp)
/* 00FF58 0040FF58 AFA000AC */  sw          $zero, 0xAC($sp)
/* 00FF5C 0040FF5C 8FAE00C0 */  lw          $t6, 0xC0($sp)
/* 00FF60 0040FF60 8DCF0024 */  lw          $t7, 0x24($t6)
/* 00FF64 0040FF64 AFAF00B4 */  sw          $t7, 0xB4($sp)
/* 00FF68 0040FF68 8FB800C0 */  lw          $t8, 0xC0($sp)
/* 00FF6C 0040FF6C 8F190008 */  lw          $t9, 0x8($t8)
/* 00FF70 0040FF70 13200077 */  beqz        $t9, .L00410150
/* 00FF74 0040FF74 AFB900BC */   sw         $t9, 0xBC($sp)
.L0040FF78:
/* 00FF78 0040FF78 8F9980B8 */  lw          $t9, %call16(open)($gp)
/* 00FF7C 0040FF7C 8FA800BC */  lw          $t0, 0xBC($sp)
/* 00FF80 0040FF80 00002825 */  move        $a1, $zero
/* 00FF84 0040FF84 0320F809 */  jalr        $t9
/* 00FF88 0040FF88 8D040004 */   lw         $a0, 0x4($t0)
/* 00FF8C 0040FF8C AFA200B8 */  sw          $v0, 0xB8($sp)
/* 00FF90 0040FF90 8FA900B8 */  lw          $t1, 0xB8($sp)
/* 00FF94 0040FF94 2401FFFF */  addiu       $at, $zero, -0x1
/* 00FF98 0040FF98 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00FF9C 0040FF9C 15210012 */  bne         $t1, $at, .L0040FFE8
/* 00FFA0 0040FFA0 00000000 */   nop
/* 00FFA4 0040FFA4 8F8B8050 */  lw          $t3, %got(errno)($gp)
/* 00FFA8 0040FFA8 8F8D8054 */  lw          $t5, %got(sys_errlist)($gp)
/* 00FFAC 0040FFAC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00FFB0 0040FFB0 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00FFB4 0040FFB4 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00FFB8 0040FFB8 8F85802C */  lw          $a1, %got(STR_10005BC4)($gp)
/* 00FFBC 0040FFBC 8FAA00BC */  lw          $t2, 0xBC($sp)
/* 00FFC0 0040FFC0 000B6080 */  sll         $t4, $t3, 2
/* 00FFC4 0040FFC4 018D7021 */  addu        $t6, $t4, $t5
/* 00FFC8 0040FFC8 8DC70000 */  lw          $a3, 0x0($t6)
/* 00FFCC 0040FFCC 24840020 */  addiu       $a0, $a0, 0x20
/* 00FFD0 0040FFD0 24A55BC4 */  addiu       $a1, $a1, %lo(STR_10005BC4)
/* 00FFD4 0040FFD4 0320F809 */  jalr        $t9
/* 00FFD8 0040FFD8 8D460004 */   lw         $a2, 0x4($t2)
/* 00FFDC 0040FFDC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00FFE0 0040FFE0 1000005F */  b           .L00410160
/* 00FFE4 0040FFE4 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FFE8:
/* 00FFE8 0040FFE8 8F9980C0 */  lw          $t9, %call16(fstat)($gp)
/* 00FFEC 0040FFEC 8FA400B8 */  lw          $a0, 0xB8($sp)
/* 00FFF0 0040FFF0 27A50024 */  addiu       $a1, $sp, 0x24
/* 00FFF4 0040FFF4 0320F809 */  jalr        $t9
/* 00FFF8 0040FFF8 00000000 */   nop
/* 00FFFC 0040FFFC 2401FFFF */  addiu       $at, $zero, -0x1
/* 010000 00410000 14410011 */  bne         $v0, $at, .L00410048
/* 010004 00410004 8FBC0018 */   lw         $gp, 0x18($sp)
/* 010008 00410008 8F8F8050 */  lw          $t7, %got(errno)($gp)
/* 01000C 0041000C 8F998054 */  lw          $t9, %got(sys_errlist)($gp)
/* 010010 00410010 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 010014 00410014 8DEF0000 */  lw          $t7, 0x0($t7)
/* 010018 00410018 8F85802C */  lw          $a1, %got(STR_10005BD8)($gp)
/* 01001C 0041001C 24840020 */  addiu       $a0, $a0, 0x20
/* 010020 00410020 000FC080 */  sll         $t8, $t7, 2
/* 010024 00410024 03194021 */  addu        $t0, $t8, $t9
/* 010028 00410028 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 01002C 0041002C 8D060000 */  lw          $a2, 0x0($t0)
/* 010030 00410030 24A55BD8 */  addiu       $a1, $a1, %lo(STR_10005BD8)
/* 010034 00410034 0320F809 */  jalr        $t9
/* 010038 00410038 00000000 */   nop
/* 01003C 0041003C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010040 00410040 10000047 */  b           .L00410160
/* 010044 00410044 2402FFFF */   addiu      $v0, $zero, -0x1
.L00410048:
/* 010048 00410048 8FA90054 */  lw          $t1, 0x54($sp)
/* 01004C 0041004C AFA900B0 */  sw          $t1, 0xB0($sp)
/* 010050 00410050 8FAA00AC */  lw          $t2, 0xAC($sp)
/* 010054 00410054 8FAB00B0 */  lw          $t3, 0xB0($sp)
/* 010058 00410058 014B6021 */  addu        $t4, $t2, $t3
/* 01005C 0041005C AFAC00AC */  sw          $t4, 0xAC($sp)
/* 010060 00410060 8FAE00C0 */  lw          $t6, 0xC0($sp)
/* 010064 00410064 8FAD00AC */  lw          $t5, 0xAC($sp)
/* 010068 00410068 8DCF0030 */  lw          $t7, 0x30($t6)
/* 01006C 0041006C 01ED082B */  sltu        $at, $t7, $t5
/* 010070 00410070 1020000C */  beqz        $at, .L004100A4
/* 010074 00410074 00000000 */   nop
/* 010078 00410078 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 01007C 0041007C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 010080 00410080 8F85802C */  lw          $a1, %got(STR_10005BF4)($gp)
/* 010084 00410084 8FB800C0 */  lw          $t8, 0xC0($sp)
/* 010088 00410088 24840020 */  addiu       $a0, $a0, 0x20
/* 01008C 0041008C 24A55BF4 */  addiu       $a1, $a1, %lo(STR_10005BF4)
/* 010090 00410090 0320F809 */  jalr        $t9
/* 010094 00410094 8F060004 */   lw         $a2, 0x4($t8)
/* 010098 00410098 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01009C 0041009C 10000030 */  b           .L00410160
/* 0100A0 004100A0 2402FFFF */   addiu      $v0, $zero, -0x1
.L004100A4:
/* 0100A4 004100A4 8F998030 */  lw          $t9, %got(B_1000BA80)($gp)
/* 0100A8 004100A8 8FA800B4 */  lw          $t0, 0xB4($sp)
/* 0100AC 004100AC 8FA400B8 */  lw          $a0, 0xB8($sp)
/* 0100B0 004100B0 8F39BA80 */  lw          $t9, %lo(B_1000BA80)($t9)
/* 0100B4 004100B4 8FA600B0 */  lw          $a2, 0xB0($sp)
/* 0100B8 004100B8 03282821 */  addu        $a1, $t9, $t0
/* 0100BC 004100BC 8F9980C8 */  lw          $t9, %call16(read)($gp)
/* 0100C0 004100C0 0320F809 */  jalr        $t9
/* 0100C4 004100C4 00000000 */   nop
/* 0100C8 004100C8 8FA900B0 */  lw          $t1, 0xB0($sp)
/* 0100CC 004100CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0100D0 004100D0 10490012 */  beq         $v0, $t1, .L0041011C
/* 0100D4 004100D4 00000000 */   nop
/* 0100D8 004100D8 8F8B8050 */  lw          $t3, %got(errno)($gp)
/* 0100DC 004100DC 8F8E8054 */  lw          $t6, %got(sys_errlist)($gp)
/* 0100E0 004100E0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 0100E4 004100E4 8D6B0000 */  lw          $t3, 0x0($t3)
/* 0100E8 004100E8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 0100EC 004100EC 8F85802C */  lw          $a1, %got(STR_10005C18)($gp)
/* 0100F0 004100F0 8FAA00BC */  lw          $t2, 0xBC($sp)
/* 0100F4 004100F4 000B6080 */  sll         $t4, $t3, 2
/* 0100F8 004100F8 018E6821 */  addu        $t5, $t4, $t6
/* 0100FC 004100FC 8DA70000 */  lw          $a3, 0x0($t5)
/* 010100 00410100 24840020 */  addiu       $a0, $a0, 0x20
/* 010104 00410104 24A55C18 */  addiu       $a1, $a1, %lo(STR_10005C18)
/* 010108 00410108 0320F809 */  jalr        $t9
/* 01010C 0041010C 8D460004 */   lw         $a2, 0x4($t2)
/* 010110 00410110 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010114 00410114 10000012 */  b           .L00410160
/* 010118 00410118 2402FFFF */   addiu      $v0, $zero, -0x1
.L0041011C:
/* 01011C 0041011C 8F9980C4 */  lw          $t9, %call16(close)($gp)
/* 010120 00410120 8FA400B8 */  lw          $a0, 0xB8($sp)
/* 010124 00410124 0320F809 */  jalr        $t9
/* 010128 00410128 00000000 */   nop
/* 01012C 0041012C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010130 00410130 8FAF00B4 */  lw          $t7, 0xB4($sp)
/* 010134 00410134 8FB800B0 */  lw          $t8, 0xB0($sp)
/* 010138 00410138 01F8C821 */  addu        $t9, $t7, $t8
/* 01013C 0041013C AFB900B4 */  sw          $t9, 0xB4($sp)
/* 010140 00410140 8FA800BC */  lw          $t0, 0xBC($sp)
/* 010144 00410144 8D090000 */  lw          $t1, 0x0($t0)
/* 010148 00410148 1520FF8B */  bnez        $t1, .L0040FF78
/* 01014C 0041014C AFA900BC */   sw         $t1, 0xBC($sp)
.L00410150:
/* 010150 00410150 10000003 */  b           .L00410160
/* 010154 00410154 00001025 */   move       $v0, $zero
/* 010158 00410158 10000001 */  b           .L00410160
/* 01015C 0041015C 00000000 */   nop
.L00410160:
/* 010160 00410160 8FBF001C */  lw          $ra, 0x1C($sp)
/* 010164 00410164 27BD00C0 */  addiu       $sp, $sp, 0xC0
/* 010168 00410168 03E00008 */  jr          $ra
/* 01016C 0041016C 00000000 */   nop
