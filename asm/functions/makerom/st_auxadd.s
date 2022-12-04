glabel st_auxadd # 653
/* 03FADC 0043FADC 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03FAE0 0043FAE0 279C3284 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD3284
/* 03FAE4 0043FAE4 0399E021 */  addu        $gp, $gp, $t9
/* 03FAE8 0043FAE8 8F8E87C8 */  lw          $t6, %got(st_pchdr)($gp)
/* 03FAEC 0043FAEC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03FAF0 0043FAF0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03FAF4 0043FAF4 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03FAF8 0043FAF8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03FAFC 0043FAFC AFA40020 */  sw          $a0, 0x20($sp)
/* 03FB00 0043FB00 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03FB04 0043FB04 15E00006 */  bnez        $t7, .L0043FB20
/* 03FB08 0043FB08 00000000 */   nop
/* 03FB0C 0043FB0C 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03FB10 0043FB10 8F848030 */  lw          $a0, %got(D_1000AB80)($gp)
/* 03FB14 0043FB14 0320F809 */  jalr        $t9
/* 03FB18 0043FB18 2484AB80 */   addiu      $a0, $a0, %lo(D_1000AB80)
/* 03FB1C 0043FB1C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043FB20:
/* 03FB20 0043FB20 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 03FB24 0043FB24 8C630000 */  lw          $v1, 0x0($v1)
/* 03FB28 0043FB28 54600009 */  bnel        $v1, $zero, .L0043FB50
/* 03FB2C 0043FB2C 8C78003C */   lw         $t8, 0x3C($v1)
/* 03FB30 0043FB30 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03FB34 0043FB34 8F848030 */  lw          $a0, %got(D_1000ABBC)($gp)
/* 03FB38 0043FB38 0320F809 */  jalr        $t9
/* 03FB3C 0043FB3C 2484ABBC */   addiu      $a0, $a0, %lo(D_1000ABBC)
/* 03FB40 0043FB40 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03FB44 0043FB44 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 03FB48 0043FB48 8C630000 */  lw          $v1, 0x0($v1)
/* 03FB4C 0043FB4C 8C78003C */  lw          $t8, 0x3C($v1)
.L0043FB50:
/* 03FB50 0043FB50 33190400 */  andi        $t9, $t8, 0x400
/* 03FB54 0043FB54 53200009 */  beql        $t9, $zero, .L0043FB7C
/* 03FB58 0043FB58 8C680000 */   lw         $t0, 0x0($v1)
/* 03FB5C 0043FB5C 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03FB60 0043FB60 8F848030 */  lw          $a0, %got(D_1000ABF0)($gp)
/* 03FB64 0043FB64 0320F809 */  jalr        $t9
/* 03FB68 0043FB68 2484ABF0 */   addiu      $a0, $a0, %lo(D_1000ABF0)
/* 03FB6C 0043FB6C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03FB70 0043FB70 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 03FB74 0043FB74 8C630000 */  lw          $v1, 0x0($v1)
/* 03FB78 0043FB78 8C680000 */  lw          $t0, 0x0($v1)
.L0043FB7C:
/* 03FB7C 0043FB7C 8C690010 */  lw          $t1, 0x10($v1)
/* 03FB80 0043FB80 24650010 */  addiu       $a1, $v1, 0x10
/* 03FB84 0043FB84 8D040030 */  lw          $a0, 0x30($t0)
/* 03FB88 0043FB88 0089082A */  slt         $at, $a0, $t1
/* 03FB8C 0043FB8C 5420000F */  bnel        $at, $zero, .L0043FBCC
/* 03FB90 0043FB90 8C6C000C */   lw         $t4, 0xC($v1)
/* 03FB94 0043FB94 8F9985FC */  lw          $t9, %call16(st_malloc)($gp)
/* 03FB98 0043FB98 8C64000C */  lw          $a0, 0xC($v1)
/* 03FB9C 0043FB9C 24060004 */  addiu       $a2, $zero, 0x4
/* 03FBA0 0043FBA0 0320F809 */  jalr        $t9
/* 03FBA4 0043FBA4 24070040 */   addiu      $a3, $zero, 0x40
/* 03FBA8 0043FBA8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03FBAC 0043FBAC 8F8A87CC */  lw          $t2, %got(pcfdcur)($gp)
/* 03FBB0 0043FBB0 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 03FBB4 0043FBB4 8D4A0000 */  lw          $t2, 0x0($t2)
/* 03FBB8 0043FBB8 AD42000C */  sw          $v0, 0xC($t2)
/* 03FBBC 0043FBBC 8C630000 */  lw          $v1, 0x0($v1)
/* 03FBC0 0043FBC0 8C6B0000 */  lw          $t3, 0x0($v1)
/* 03FBC4 0043FBC4 8D640030 */  lw          $a0, 0x30($t3)
/* 03FBC8 0043FBC8 8C6C000C */  lw          $t4, 0xC($v1)
.L0043FBCC:
/* 03FBCC 0043FBCC 27AF0020 */  addiu       $t7, $sp, 0x20
/* 03FBD0 0043FBD0 8DF90000 */  lw          $t9, 0x0($t7)
/* 03FBD4 0043FBD4 8F8887CC */  lw          $t0, %got(pcfdcur)($gp)
/* 03FBD8 0043FBD8 00046880 */  sll         $t5, $a0, 2
/* 03FBDC 0043FBDC 018D7021 */  addu        $t6, $t4, $t5
/* 03FBE0 0043FBE0 ADD90000 */  sw          $t9, 0x0($t6)
/* 03FBE4 0043FBE4 8D080000 */  lw          $t0, 0x0($t0)
/* 03FBE8 0043FBE8 8D050000 */  lw          $a1, 0x0($t0)
/* 03FBEC 0043FBEC 8CA20030 */  lw          $v0, 0x30($a1)
/* 03FBF0 0043FBF0 24490001 */  addiu       $t1, $v0, 0x1
/* 03FBF4 0043FBF4 ACA90030 */  sw          $t1, 0x30($a1)
/* 03FBF8 0043FBF8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03FBFC 0043FBFC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03FC00 0043FC00 03E00008 */  jr          $ra
/* 03FC04 0043FC04 00000000 */   nop
