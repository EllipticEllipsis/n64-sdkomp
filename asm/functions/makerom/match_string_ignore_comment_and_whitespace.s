.section .rodata
glabel STR_100075E0
/* 0475E0 100075E0 */ .asciz "match_string: unable to malloc for NAME list\n"
                      .balign 4


.section .text
glabel match_string_ignore_comment_and_whitespace # 273
/* 02E014 0042E014 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02E018 0042E018 279C4D4C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE4D4C
/* 02E01C 0042E01C 0399E021 */  addu        $gp, $gp, $t9
/* 02E020 0042E020 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 02E024 0042E024 8F998164 */  lw          $t9, %call16(strpbrk)($gp)
/* 02E028 0042E028 AFB5002C */  sw          $s5, 0x2C($sp)
/* 02E02C 0042E02C 00A0A825 */  move        $s5, $a1
/* 02E030 0042E030 AFBF0034 */  sw          $ra, 0x34($sp)
/* 02E034 0042E034 AFB30024 */  sw          $s3, 0x24($sp)
/* 02E038 0042E038 AFB00018 */  sw          $s0, 0x18($sp)
/* 02E03C 0042E03C 00808025 */  move        $s0, $a0
/* 02E040 0042E040 00C09825 */  move        $s3, $a2
/* 02E044 0042E044 AFBC0030 */  sw          $gp, 0x30($sp)
/* 02E048 0042E048 AFB40028 */  sw          $s4, 0x28($sp)
/* 02E04C 0042E04C AFB20020 */  sw          $s2, 0x20($sp)
/* 02E050 0042E050 AFB1001C */  sw          $s1, 0x1C($sp)
/* 02E054 0042E054 AFA70064 */  sw          $a3, 0x64($sp)
/* 02E058 0042E058 AFA0003C */  sw          $zero, 0x3C($sp)
/* 02E05C 0042E05C 0320F809 */  jalr        $t9
/* 02E060 0042E060 00C02825 */   move       $a1, $a2
/* 02E064 0042E064 10500003 */  beq         $v0, $s0, .L0042E074
/* 02E068 0042E068 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02E06C 0042E06C 240E0001 */  addiu       $t6, $zero, 0x1
/* 02E070 0042E070 AFAE003C */  sw          $t6, 0x3C($sp)
.L0042E074:
/* 02E074 0042E074 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 02E078 0042E078 02002025 */  move        $a0, $s0
/* 02E07C 0042E07C 0320F809 */  jalr        $t9
/* 02E080 0042E080 00000000 */   nop
/* 02E084 0042E084 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02E088 0042E088 00022080 */  sll         $a0, $v0, 2
/* 02E08C 0042E08C 24840004 */  addiu       $a0, $a0, 0x4
/* 02E090 0042E090 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 02E094 0042E094 0320F809 */  jalr        $t9
/* 02E098 0042E098 00000000 */   nop
/* 02E09C 0042E09C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02E0A0 0042E0A0 14400006 */  bnez        $v0, .L0042E0BC
/* 02E0A4 0042E0A4 AFA20050 */   sw         $v0, 0x50($sp)
/* 02E0A8 0042E0A8 8F998638 */  lw          $t9, %call16(fatal)($gp)
/* 02E0AC 0042E0AC 8F84802C */  lw          $a0, %got(STR_100075E0)($gp)
/* 02E0B0 0042E0B0 0320F809 */  jalr        $t9
/* 02E0B4 0042E0B4 248475E0 */   addiu      $a0, $a0, %lo(STR_100075E0)
/* 02E0B8 0042E0B8 8FBC0030 */  lw          $gp, 0x30($sp)
.L0042E0BC:
/* 02E0BC 0042E0BC 8F998108 */  lw          $t9, %call16(strchr)($gp)
/* 02E0C0 0042E0C0 02A02025 */  move        $a0, $s5
/* 02E0C4 0042E0C4 83A50067 */  lb          $a1, 0x67($sp)
/* 02E0C8 0042E0C8 0320F809 */  jalr        $t9
/* 02E0CC 0042E0CC 00000000 */   nop
/* 02E0D0 0042E0D0 10400002 */  beqz        $v0, .L0042E0DC
/* 02E0D4 0042E0D4 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02E0D8 0042E0D8 24550001 */  addiu       $s5, $v0, 0x1
.L0042E0DC:
/* 02E0DC 0042E0DC 82A30000 */  lb          $v1, 0x0($s5)
/* 02E0E0 0042E0E0 24120009 */  addiu       $s2, $zero, 0x9
/* 02E0E4 0042E0E4 24110020 */  addiu       $s1, $zero, 0x20
/* 02E0E8 0042E0E8 10600009 */  beqz        $v1, .L0042E110
/* 02E0EC 0042E0EC 00000000 */   nop
.L0042E0F0:
/* 02E0F0 0042E0F0 50710004 */  beql        $v1, $s1, .L0042E104
/* 02E0F4 0042E0F4 82A30001 */   lb         $v1, 0x1($s5)
/* 02E0F8 0042E0F8 14720005 */  bne         $v1, $s2, .L0042E110
/* 02E0FC 0042E0FC 00000000 */   nop
/* 02E100 0042E100 82A30001 */  lb          $v1, 0x1($s5)
.L0042E104:
/* 02E104 0042E104 26B50001 */  addiu       $s5, $s5, 0x1
/* 02E108 0042E108 1460FFF9 */  bnez        $v1, .L0042E0F0
/* 02E10C 0042E10C 00000000 */   nop
.L0042E110:
/* 02E110 0042E110 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 02E114 0042E114 24110020 */  addiu       $s1, $zero, 0x20
/* 02E118 0042E118 24120009 */  addiu       $s2, $zero, 0x9
/* 02E11C 0042E11C 0320F809 */  jalr        $t9
/* 02E120 0042E120 02A02025 */   move       $a0, $s5
/* 02E124 0042E124 AFA2004C */  sw          $v0, 0x4C($sp)
/* 02E128 0042E128 02A27821 */  addu        $t7, $s5, $v0
/* 02E12C 0042E12C 81E3FFFF */  lb          $v1, -0x1($t7)
/* 02E130 0042E130 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02E134 0042E134 10710003 */  beq         $v1, $s1, .L0042E144
/* 02E138 0042E138 00000000 */   nop
/* 02E13C 0042E13C 14720015 */  bne         $v1, $s2, .L0042E194
/* 02E140 0042E140 00000000 */   nop
.L0042E144:
/* 02E144 0042E144 8F998290 */  lw          $t9, %call16(obj_newstr)($gp)
/* 02E148 0042E148 02A02025 */  move        $a0, $s5
/* 02E14C 0042E14C 0320F809 */  jalr        $t9
/* 02E150 0042E150 00000000 */   nop
/* 02E154 0042E154 8FB8004C */  lw          $t8, 0x4C($sp)
/* 02E158 0042E158 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02E15C 0042E15C 0040A825 */  move        $s5, $v0
/* 02E160 0042E160 00581821 */  addu        $v1, $v0, $t8
/* 02E164 0042E164 2464FFFF */  addiu       $a0, $v1, -0x1
/* 02E168 0042E168 0082082B */  sltu        $at, $a0, $v0
/* 02E16C 0042E16C 14200009 */  bnez        $at, .L0042E194
/* 02E170 0042E170 00000000 */   nop
.L0042E174:
/* 02E174 0042E174 80830000 */  lb          $v1, 0x0($a0)
/* 02E178 0042E178 50710003 */  beql        $v1, $s1, .L0042E188
/* 02E17C 0042E17C 2484FFFF */   addiu      $a0, $a0, -0x1
/* 02E180 0042E180 14720004 */  bne         $v1, $s2, .L0042E194
/* 02E184 0042E184 2484FFFF */   addiu      $a0, $a0, -0x1
.L0042E188:
/* 02E188 0042E188 0095082B */  sltu        $at, $a0, $s5
/* 02E18C 0042E18C 1020FFF9 */  beqz        $at, .L0042E174
/* 02E190 0042E190 A0800001 */   sb         $zero, 0x1($a0)
.L0042E194:
/* 02E194 0042E194 8F998294 */  lw          $t9, %call16(split)($gp)
/* 02E198 0042E198 02002025 */  move        $a0, $s0
/* 02E19C 0042E19C 8FA50050 */  lw          $a1, 0x50($sp)
/* 02E1A0 0042E1A0 02603025 */  move        $a2, $s3
/* 02E1A4 0042E1A4 0320F809 */  jalr        $t9
/* 02E1A8 0042E1A8 00003825 */   move       $a3, $zero
/* 02E1AC 0042E1AC 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02E1B0 0042E1B0 AFA2004C */  sw          $v0, 0x4C($sp)
/* 02E1B4 0042E1B4 18400042 */  blez        $v0, .L0042E2C0
/* 02E1B8 0042E1B8 00009825 */   move       $s3, $zero
/* 02E1BC 0042E1BC 8FB40050 */  lw          $s4, 0x50($sp)
.L0042E1C0:
/* 02E1C0 0042E1C0 8F998108 */  lw          $t9, %call16(strchr)($gp)
/* 02E1C4 0042E1C4 8E900000 */  lw          $s0, 0x0($s4)
/* 02E1C8 0042E1C8 83A50067 */  lb          $a1, 0x67($sp)
/* 02E1CC 0042E1CC 0320F809 */  jalr        $t9
/* 02E1D0 0042E1D0 02002025 */   move       $a0, $s0
/* 02E1D4 0042E1D4 10400002 */  beqz        $v0, .L0042E1E0
/* 02E1D8 0042E1D8 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02E1DC 0042E1DC 24500001 */  addiu       $s0, $v0, 0x1
.L0042E1E0:
/* 02E1E0 0042E1E0 82030000 */  lb          $v1, 0x0($s0)
/* 02E1E4 0042E1E4 10600009 */  beqz        $v1, .L0042E20C
/* 02E1E8 0042E1E8 00000000 */   nop
.L0042E1EC:
/* 02E1EC 0042E1EC 50710004 */  beql        $v1, $s1, .L0042E200
/* 02E1F0 0042E1F0 82030001 */   lb         $v1, 0x1($s0)
/* 02E1F4 0042E1F4 14720005 */  bne         $v1, $s2, .L0042E20C
/* 02E1F8 0042E1F8 00000000 */   nop
/* 02E1FC 0042E1FC 82030001 */  lb          $v1, 0x1($s0)
.L0042E200:
/* 02E200 0042E200 26100001 */  addiu       $s0, $s0, 0x1
/* 02E204 0042E204 1460FFF9 */  bnez        $v1, .L0042E1EC
/* 02E208 0042E208 00000000 */   nop
.L0042E20C:
/* 02E20C 0042E20C 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 02E210 0042E210 02002025 */  move        $a0, $s0
/* 02E214 0042E214 0320F809 */  jalr        $t9
/* 02E218 0042E218 00000000 */   nop
/* 02E21C 0042E21C 00501821 */  addu        $v1, $v0, $s0
/* 02E220 0042E220 2464FFFF */  addiu       $a0, $v1, -0x1
/* 02E224 0042E224 0090082B */  sltu        $at, $a0, $s0
/* 02E228 0042E228 14200009 */  bnez        $at, .L0042E250
/* 02E22C 0042E22C 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042E230:
/* 02E230 0042E230 80830000 */  lb          $v1, 0x0($a0)
/* 02E234 0042E234 50710003 */  beql        $v1, $s1, .L0042E244
/* 02E238 0042E238 2484FFFF */   addiu      $a0, $a0, -0x1
/* 02E23C 0042E23C 14720004 */  bne         $v1, $s2, .L0042E250
/* 02E240 0042E240 2484FFFF */   addiu      $a0, $a0, -0x1
.L0042E244:
/* 02E244 0042E244 24990001 */  addiu       $t9, $a0, 0x1
/* 02E248 0042E248 1730FFF9 */  bne         $t9, $s0, .L0042E230
/* 02E24C 0042E24C A0800001 */   sb         $zero, 0x1($a0)
.L0042E250:
/* 02E250 0042E250 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 02E254 0042E254 02002025 */  move        $a0, $s0
/* 02E258 0042E258 02A02825 */  move        $a1, $s5
/* 02E25C 0042E25C 0320F809 */  jalr        $t9
/* 02E260 0042E260 00000000 */   nop
/* 02E264 0042E264 14400010 */  bnez        $v0, .L0042E2A8
/* 02E268 0042E268 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02E26C 0042E26C 8FA8003C */  lw          $t0, 0x3C($sp)
/* 02E270 0042E270 11000006 */  beqz        $t0, .L0042E28C
/* 02E274 0042E274 00000000 */   nop
/* 02E278 0042E278 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02E27C 0042E27C 8FA90050 */  lw          $t1, 0x50($sp)
/* 02E280 0042E280 0320F809 */  jalr        $t9
/* 02E284 0042E284 8D240000 */   lw         $a0, 0x0($t1)
/* 02E288 0042E288 8FBC0030 */  lw          $gp, 0x30($sp)
.L0042E28C:
/* 02E28C 0042E28C 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02E290 0042E290 8FA40050 */  lw          $a0, 0x50($sp)
/* 02E294 0042E294 0320F809 */  jalr        $t9
/* 02E298 0042E298 00000000 */   nop
/* 02E29C 0042E29C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02E2A0 0042E2A0 10000015 */  b           .L0042E2F8
/* 02E2A4 0042E2A4 00001025 */   move       $v0, $zero
.L0042E2A8:
/* 02E2A8 0042E2A8 8FAA004C */  lw          $t2, 0x4C($sp)
/* 02E2AC 0042E2AC 26730001 */  addiu       $s3, $s3, 0x1
/* 02E2B0 0042E2B0 26940004 */  addiu       $s4, $s4, 0x4
/* 02E2B4 0042E2B4 026A082A */  slt         $at, $s3, $t2
/* 02E2B8 0042E2B8 1420FFC1 */  bnez        $at, .L0042E1C0
/* 02E2BC 0042E2BC 00000000 */   nop
.L0042E2C0:
/* 02E2C0 0042E2C0 8FAB003C */  lw          $t3, 0x3C($sp)
/* 02E2C4 0042E2C4 11600006 */  beqz        $t3, .L0042E2E0
/* 02E2C8 0042E2C8 00000000 */   nop
/* 02E2CC 0042E2CC 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02E2D0 0042E2D0 8FAC0050 */  lw          $t4, 0x50($sp)
/* 02E2D4 0042E2D4 0320F809 */  jalr        $t9
/* 02E2D8 0042E2D8 8D840000 */   lw         $a0, 0x0($t4)
/* 02E2DC 0042E2DC 8FBC0030 */  lw          $gp, 0x30($sp)
.L0042E2E0:
/* 02E2E0 0042E2E0 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02E2E4 0042E2E4 8FA40050 */  lw          $a0, 0x50($sp)
/* 02E2E8 0042E2E8 0320F809 */  jalr        $t9
/* 02E2EC 0042E2EC 00000000 */   nop
/* 02E2F0 0042E2F0 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02E2F4 0042E2F4 2402FFFF */  addiu       $v0, $zero, -0x1
.L0042E2F8:
/* 02E2F8 0042E2F8 8FBF0034 */  lw          $ra, 0x34($sp)
/* 02E2FC 0042E2FC 8FB00018 */  lw          $s0, 0x18($sp)
/* 02E300 0042E300 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02E304 0042E304 8FB20020 */  lw          $s2, 0x20($sp)
/* 02E308 0042E308 8FB30024 */  lw          $s3, 0x24($sp)
/* 02E30C 0042E30C 8FB40028 */  lw          $s4, 0x28($sp)
/* 02E310 0042E310 8FB5002C */  lw          $s5, 0x2C($sp)
/* 02E314 0042E314 03E00008 */  jr          $ra
/* 02E318 0042E318 27BD0058 */   addiu      $sp, $sp, 0x58
