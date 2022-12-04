glabel st_pdadd # 654
/* 03FC08 0043FC08 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03FC0C 0043FC0C 279C3158 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD3158
/* 03FC10 0043FC10 0399E021 */  addu        $gp, $gp, $t9
/* 03FC14 0043FC14 8F8E87C8 */  lw          $t6, %got(st_pchdr)($gp)
/* 03FC18 0043FC18 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03FC1C 0043FC1C AFBF001C */  sw          $ra, 0x1C($sp)
/* 03FC20 0043FC20 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03FC24 0043FC24 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03FC28 0043FC28 AFA40020 */  sw          $a0, 0x20($sp)
/* 03FC2C 0043FC2C 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03FC30 0043FC30 15E00006 */  bnez        $t7, .L0043FC4C
/* 03FC34 0043FC34 00000000 */   nop
/* 03FC38 0043FC38 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03FC3C 0043FC3C 8F848030 */  lw          $a0, %got(D_1000AB80)($gp)
/* 03FC40 0043FC40 0320F809 */  jalr        $t9
/* 03FC44 0043FC44 2484AB80 */   addiu      $a0, $a0, %lo(D_1000AB80)
/* 03FC48 0043FC48 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043FC4C:
/* 03FC4C 0043FC4C 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 03FC50 0043FC50 8C630000 */  lw          $v1, 0x0($v1)
/* 03FC54 0043FC54 54600009 */  bnel        $v1, $zero, .L0043FC7C
/* 03FC58 0043FC58 8C78003C */   lw         $t8, 0x3C($v1)
/* 03FC5C 0043FC5C 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03FC60 0043FC60 8F848030 */  lw          $a0, %got(D_1000ABBC)($gp)
/* 03FC64 0043FC64 0320F809 */  jalr        $t9
/* 03FC68 0043FC68 2484ABBC */   addiu      $a0, $a0, %lo(D_1000ABBC)
/* 03FC6C 0043FC6C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03FC70 0043FC70 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 03FC74 0043FC74 8C630000 */  lw          $v1, 0x0($v1)
/* 03FC78 0043FC78 8C78003C */  lw          $t8, 0x3C($v1)
.L0043FC7C:
/* 03FC7C 0043FC7C 33190100 */  andi        $t9, $t8, 0x100
/* 03FC80 0043FC80 53200009 */  beql        $t9, $zero, .L0043FCA8
/* 03FC84 0043FC84 8C680000 */   lw         $t0, 0x0($v1)
/* 03FC88 0043FC88 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03FC8C 0043FC8C 8F848030 */  lw          $a0, %got(D_1000ABF0)($gp)
/* 03FC90 0043FC90 0320F809 */  jalr        $t9
/* 03FC94 0043FC94 2484ABF0 */   addiu      $a0, $a0, %lo(D_1000ABF0)
/* 03FC98 0043FC98 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03FC9C 0043FC9C 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 03FCA0 0043FCA0 8C630000 */  lw          $v1, 0x0($v1)
/* 03FCA4 0043FCA4 8C680000 */  lw          $t0, 0x0($v1)
.L0043FCA8:
/* 03FCA8 0043FCA8 8C690038 */  lw          $t1, 0x38($v1)
/* 03FCAC 0043FCAC 24650038 */  addiu       $a1, $v1, 0x38
/* 03FCB0 0043FCB0 9504002A */  lhu         $a0, 0x2A($t0)
/* 03FCB4 0043FCB4 0089082B */  sltu        $at, $a0, $t1
/* 03FCB8 0043FCB8 5420000F */  bnel        $at, $zero, .L0043FCF8
/* 03FCBC 0043FCBC 24070034 */   addiu      $a3, $zero, 0x34
/* 03FCC0 0043FCC0 8F9985FC */  lw          $t9, %call16(st_malloc)($gp)
/* 03FCC4 0043FCC4 8C640034 */  lw          $a0, 0x34($v1)
/* 03FCC8 0043FCC8 24060034 */  addiu       $a2, $zero, 0x34
/* 03FCCC 0043FCCC 0320F809 */  jalr        $t9
/* 03FCD0 0043FCD0 24070020 */   addiu      $a3, $zero, 0x20
/* 03FCD4 0043FCD4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03FCD8 0043FCD8 8F8A87CC */  lw          $t2, %got(pcfdcur)($gp)
/* 03FCDC 0043FCDC 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 03FCE0 0043FCE0 8D4A0000 */  lw          $t2, 0x0($t2)
/* 03FCE4 0043FCE4 AD420034 */  sw          $v0, 0x34($t2)
/* 03FCE8 0043FCE8 8C630000 */  lw          $v1, 0x0($v1)
/* 03FCEC 0043FCEC 8C6B0000 */  lw          $t3, 0x0($v1)
/* 03FCF0 0043FCF0 9564002A */  lhu         $a0, 0x2A($t3)
/* 03FCF4 0043FCF4 24070034 */  addiu       $a3, $zero, 0x34
.L0043FCF8:
/* 03FCF8 0043FCF8 00870019 */  multu       $a0, $a3
/* 03FCFC 0043FCFC 8F8F8030 */  lw          $t7, %got(B_100107E0)($gp)
/* 03FD00 0043FD00 8C6C0034 */  lw          $t4, 0x34($v1)
/* 03FD04 0043FD04 25EF07E0 */  addiu       $t7, $t7, %lo(B_100107E0)
/* 03FD08 0043FD08 25E80030 */  addiu       $t0, $t7, 0x30
/* 03FD0C 0043FD0C 00006812 */  mflo        $t5
/* 03FD10 0043FD10 018D7021 */  addu        $t6, $t4, $t5
/* 03FD14 0043FD14 00000000 */  nop
.L0043FD18:
/* 03FD18 0043FD18 8DF90000 */  lw          $t9, 0x0($t7)
/* 03FD1C 0043FD1C 25EF000C */  addiu       $t7, $t7, 0xC
/* 03FD20 0043FD20 25CE000C */  addiu       $t6, $t6, 0xC
/* 03FD24 0043FD24 ADD9FFF4 */  sw          $t9, -0xC($t6)
/* 03FD28 0043FD28 8DF8FFF8 */  lw          $t8, -0x8($t7)
/* 03FD2C 0043FD2C ADD8FFF8 */  sw          $t8, -0x8($t6)
/* 03FD30 0043FD30 8DF9FFFC */  lw          $t9, -0x4($t7)
/* 03FD34 0043FD34 15E8FFF8 */  bne         $t7, $t0, .L0043FD18
/* 03FD38 0043FD38 ADD9FFFC */   sw         $t9, -0x4($t6)
/* 03FD3C 0043FD3C 8DF90000 */  lw          $t9, 0x0($t7)
/* 03FD40 0043FD40 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 03FD44 0043FD44 8F8F87CC */  lw          $t7, %got(pcfdcur)($gp)
/* 03FD48 0043FD48 ADD90000 */  sw          $t9, 0x0($t6)
/* 03FD4C 0043FD4C 8C630000 */  lw          $v1, 0x0($v1)
/* 03FD50 0043FD50 8FA90020 */  lw          $t1, 0x20($sp)
/* 03FD54 0043FD54 8C6B0000 */  lw          $t3, 0x0($v1)
/* 03FD58 0043FD58 8C6A0034 */  lw          $t2, 0x34($v1)
/* 03FD5C 0043FD5C 956C002A */  lhu         $t4, 0x2A($t3)
/* 03FD60 0043FD60 01870019 */  multu       $t4, $a3
/* 03FD64 0043FD64 00006812 */  mflo        $t5
/* 03FD68 0043FD68 014D4021 */  addu        $t0, $t2, $t5
/* 03FD6C 0043FD6C AD090004 */  sw          $t1, 0x4($t0)
/* 03FD70 0043FD70 8DEF0000 */  lw          $t7, 0x0($t7)
/* 03FD74 0043FD74 8DE50000 */  lw          $a1, 0x0($t7)
/* 03FD78 0043FD78 94A2002A */  lhu         $v0, 0x2A($a1)
/* 03FD7C 0043FD7C 244E0001 */  addiu       $t6, $v0, 0x1
/* 03FD80 0043FD80 A4AE002A */  sh          $t6, 0x2A($a1)
/* 03FD84 0043FD84 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03FD88 0043FD88 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03FD8C 0043FD8C 03E00008 */  jr          $ra
/* 03FD90 0043FD90 00000000 */   nop
