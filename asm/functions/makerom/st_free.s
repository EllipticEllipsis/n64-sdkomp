glabel st_free # 639
/* 03E9C0 0043E9C0 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03E9C4 0043E9C4 279C43A0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD43A0
/* 03E9C8 0043E9C8 0399E021 */  addu        $gp, $gp, $t9
/* 03E9CC 0043E9CC 8F8687C8 */  lw          $a2, %got(st_pchdr)($gp)
/* 03E9D0 0043E9D0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03E9D4 0043E9D4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03E9D8 0043E9D8 8CC60000 */  lw          $a2, 0x0($a2)
/* 03E9DC 0043E9DC AFBC0018 */  sw          $gp, 0x18($sp)
/* 03E9E0 0043E9E0 50C000AD */  beql        $a2, $zero, .L0043EC98
/* 03E9E4 0043E9E4 8FBF001C */   lw         $ra, 0x1C($sp)
/* 03E9E8 0043E9E8 8CC40038 */  lw          $a0, 0x38($a2)
/* 03E9EC 0043E9EC 1080000B */  beqz        $a0, .L0043EA1C
/* 03E9F0 0043E9F0 2401FFFF */   addiu      $at, $zero, -0x1
/* 03E9F4 0043E9F4 10810009 */  beq         $a0, $at, .L0043EA1C
/* 03E9F8 0043E9F8 24010001 */   addiu      $at, $zero, 0x1
/* 03E9FC 0043E9FC 50810008 */  beql        $a0, $at, .L0043EA20
/* 03EA00 0043EA00 8CC40018 */   lw         $a0, 0x18($a2)
/* 03EA04 0043EA04 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 03EA08 0043EA08 0320F809 */  jalr        $t9
/* 03EA0C 0043EA0C 00000000 */   nop
/* 03EA10 0043EA10 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EA14 0043EA14 8F8687C8 */  lw          $a2, %got(st_pchdr)($gp)
/* 03EA18 0043EA18 8CC60000 */  lw          $a2, 0x0($a2)
.L0043EA1C:
/* 03EA1C 0043EA1C 8CC40018 */  lw          $a0, 0x18($a2)
.L0043EA20:
/* 03EA20 0043EA20 1080000B */  beqz        $a0, .L0043EA50
/* 03EA24 0043EA24 2401FFFF */   addiu      $at, $zero, -0x1
/* 03EA28 0043EA28 10810009 */  beq         $a0, $at, .L0043EA50
/* 03EA2C 0043EA2C 24010001 */   addiu      $at, $zero, 0x1
/* 03EA30 0043EA30 50810008 */  beql        $a0, $at, .L0043EA54
/* 03EA34 0043EA34 8CC40024 */   lw         $a0, 0x24($a2)
/* 03EA38 0043EA38 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 03EA3C 0043EA3C 0320F809 */  jalr        $t9
/* 03EA40 0043EA40 00000000 */   nop
/* 03EA44 0043EA44 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EA48 0043EA48 8F8687C8 */  lw          $a2, %got(st_pchdr)($gp)
/* 03EA4C 0043EA4C 8CC60000 */  lw          $a2, 0x0($a2)
.L0043EA50:
/* 03EA50 0043EA50 8CC40024 */  lw          $a0, 0x24($a2)
.L0043EA54:
/* 03EA54 0043EA54 1080000B */  beqz        $a0, .L0043EA84
/* 03EA58 0043EA58 2401FFFF */   addiu      $at, $zero, -0x1
/* 03EA5C 0043EA5C 10810009 */  beq         $a0, $at, .L0043EA84
/* 03EA60 0043EA60 24010001 */   addiu      $at, $zero, 0x1
/* 03EA64 0043EA64 50810008 */  beql        $a0, $at, .L0043EA88
/* 03EA68 0043EA68 8CC40008 */   lw         $a0, 0x8($a2)
/* 03EA6C 0043EA6C 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 03EA70 0043EA70 0320F809 */  jalr        $t9
/* 03EA74 0043EA74 00000000 */   nop
/* 03EA78 0043EA78 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EA7C 0043EA7C 8F8687C8 */  lw          $a2, %got(st_pchdr)($gp)
/* 03EA80 0043EA80 8CC60000 */  lw          $a2, 0x0($a2)
.L0043EA84:
/* 03EA84 0043EA84 8CC40008 */  lw          $a0, 0x8($a2)
.L0043EA88:
/* 03EA88 0043EA88 2401FFFF */  addiu       $at, $zero, -0x1
/* 03EA8C 0043EA8C 5080000C */  beql        $a0, $zero, .L0043EAC0
/* 03EA90 0043EA90 8CC40004 */   lw         $a0, 0x4($a2)
/* 03EA94 0043EA94 10810009 */  beq         $a0, $at, .L0043EABC
/* 03EA98 0043EA98 24010001 */   addiu      $at, $zero, 0x1
/* 03EA9C 0043EA9C 50810008 */  beql        $a0, $at, .L0043EAC0
/* 03EAA0 0043EAA0 8CC40004 */   lw         $a0, 0x4($a2)
/* 03EAA4 0043EAA4 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 03EAA8 0043EAA8 0320F809 */  jalr        $t9
/* 03EAAC 0043EAAC 00000000 */   nop
/* 03EAB0 0043EAB0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EAB4 0043EAB4 8F8687C8 */  lw          $a2, %got(st_pchdr)($gp)
/* 03EAB8 0043EAB8 8CC60000 */  lw          $a2, 0x0($a2)
.L0043EABC:
/* 03EABC 0043EABC 8CC40004 */  lw          $a0, 0x4($a2)
.L0043EAC0:
/* 03EAC0 0043EAC0 2401FFFF */  addiu       $at, $zero, -0x1
/* 03EAC4 0043EAC4 5080000C */  beql        $a0, $zero, .L0043EAF8
/* 03EAC8 0043EAC8 8CC40014 */   lw         $a0, 0x14($a2)
/* 03EACC 0043EACC 10810009 */  beq         $a0, $at, .L0043EAF4
/* 03EAD0 0043EAD0 24010001 */   addiu      $at, $zero, 0x1
/* 03EAD4 0043EAD4 50810008 */  beql        $a0, $at, .L0043EAF8
/* 03EAD8 0043EAD8 8CC40014 */   lw         $a0, 0x14($a2)
/* 03EADC 0043EADC 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 03EAE0 0043EAE0 0320F809 */  jalr        $t9
/* 03EAE4 0043EAE4 00000000 */   nop
/* 03EAE8 0043EAE8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EAEC 0043EAEC 8F8687C8 */  lw          $a2, %got(st_pchdr)($gp)
/* 03EAF0 0043EAF0 8CC60000 */  lw          $a2, 0x0($a2)
.L0043EAF4:
/* 03EAF4 0043EAF4 8CC40014 */  lw          $a0, 0x14($a2)
.L0043EAF8:
/* 03EAF8 0043EAF8 2401FFFF */  addiu       $at, $zero, -0x1
/* 03EAFC 0043EAFC 5080000C */  beql        $a0, $zero, .L0043EB30
/* 03EB00 0043EB00 8CC40030 */   lw         $a0, 0x30($a2)
/* 03EB04 0043EB04 10810009 */  beq         $a0, $at, .L0043EB2C
/* 03EB08 0043EB08 24010001 */   addiu      $at, $zero, 0x1
/* 03EB0C 0043EB0C 50810008 */  beql        $a0, $at, .L0043EB30
/* 03EB10 0043EB10 8CC40030 */   lw         $a0, 0x30($a2)
/* 03EB14 0043EB14 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 03EB18 0043EB18 0320F809 */  jalr        $t9
/* 03EB1C 0043EB1C 00000000 */   nop
/* 03EB20 0043EB20 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EB24 0043EB24 8F8687C8 */  lw          $a2, %got(st_pchdr)($gp)
/* 03EB28 0043EB28 8CC60000 */  lw          $a2, 0x0($a2)
.L0043EB2C:
/* 03EB2C 0043EB2C 8CC40030 */  lw          $a0, 0x30($a2)
.L0043EB30:
/* 03EB30 0043EB30 2401FFFF */  addiu       $at, $zero, -0x1
/* 03EB34 0043EB34 5080000C */  beql        $a0, $zero, .L0043EB68
/* 03EB38 0043EB38 8CC40044 */   lw         $a0, 0x44($a2)
/* 03EB3C 0043EB3C 10810009 */  beq         $a0, $at, .L0043EB64
/* 03EB40 0043EB40 24010001 */   addiu      $at, $zero, 0x1
/* 03EB44 0043EB44 50810008 */  beql        $a0, $at, .L0043EB68
/* 03EB48 0043EB48 8CC40044 */   lw         $a0, 0x44($a2)
/* 03EB4C 0043EB4C 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 03EB50 0043EB50 0320F809 */  jalr        $t9
/* 03EB54 0043EB54 00000000 */   nop
/* 03EB58 0043EB58 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EB5C 0043EB5C 8F8687C8 */  lw          $a2, %got(st_pchdr)($gp)
/* 03EB60 0043EB60 8CC60000 */  lw          $a2, 0x0($a2)
.L0043EB64:
/* 03EB64 0043EB64 8CC40044 */  lw          $a0, 0x44($a2)
.L0043EB68:
/* 03EB68 0043EB68 2401FFFF */  addiu       $at, $zero, -0x1
/* 03EB6C 0043EB6C 5080000C */  beql        $a0, $zero, .L0043EBA0
/* 03EB70 0043EB70 8CC40050 */   lw         $a0, 0x50($a2)
/* 03EB74 0043EB74 10810009 */  beq         $a0, $at, .L0043EB9C
/* 03EB78 0043EB78 24010001 */   addiu      $at, $zero, 0x1
/* 03EB7C 0043EB7C 50810008 */  beql        $a0, $at, .L0043EBA0
/* 03EB80 0043EB80 8CC40050 */   lw         $a0, 0x50($a2)
/* 03EB84 0043EB84 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 03EB88 0043EB88 0320F809 */  jalr        $t9
/* 03EB8C 0043EB8C 00000000 */   nop
/* 03EB90 0043EB90 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EB94 0043EB94 8F8687C8 */  lw          $a2, %got(st_pchdr)($gp)
/* 03EB98 0043EB98 8CC60000 */  lw          $a2, 0x0($a2)
.L0043EB9C:
/* 03EB9C 0043EB9C 8CC40050 */  lw          $a0, 0x50($a2)
.L0043EBA0:
/* 03EBA0 0043EBA0 2401FFFF */  addiu       $at, $zero, -0x1
/* 03EBA4 0043EBA4 5080000C */  beql        $a0, $zero, .L0043EBD8
/* 03EBA8 0043EBA8 8CC40048 */   lw         $a0, 0x48($a2)
/* 03EBAC 0043EBAC 10810009 */  beq         $a0, $at, .L0043EBD4
/* 03EBB0 0043EBB0 24010001 */   addiu      $at, $zero, 0x1
/* 03EBB4 0043EBB4 50810008 */  beql        $a0, $at, .L0043EBD8
/* 03EBB8 0043EBB8 8CC40048 */   lw         $a0, 0x48($a2)
/* 03EBBC 0043EBBC 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 03EBC0 0043EBC0 0320F809 */  jalr        $t9
/* 03EBC4 0043EBC4 00000000 */   nop
/* 03EBC8 0043EBC8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EBCC 0043EBCC 8F8687C8 */  lw          $a2, %got(st_pchdr)($gp)
/* 03EBD0 0043EBD0 8CC60000 */  lw          $a2, 0x0($a2)
.L0043EBD4:
/* 03EBD4 0043EBD4 8CC40048 */  lw          $a0, 0x48($a2)
.L0043EBD8:
/* 03EBD8 0043EBD8 2401FFFF */  addiu       $at, $zero, -0x1
/* 03EBDC 0043EBDC 5080000C */  beql        $a0, $zero, .L0043EC10
/* 03EBE0 0043EBE0 8CC40034 */   lw         $a0, 0x34($a2)
/* 03EBE4 0043EBE4 10810009 */  beq         $a0, $at, .L0043EC0C
/* 03EBE8 0043EBE8 24010001 */   addiu      $at, $zero, 0x1
/* 03EBEC 0043EBEC 50810008 */  beql        $a0, $at, .L0043EC10
/* 03EBF0 0043EBF0 8CC40034 */   lw         $a0, 0x34($a2)
/* 03EBF4 0043EBF4 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 03EBF8 0043EBF8 0320F809 */  jalr        $t9
/* 03EBFC 0043EBFC 00000000 */   nop
/* 03EC00 0043EC00 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EC04 0043EC04 8F8687C8 */  lw          $a2, %got(st_pchdr)($gp)
/* 03EC08 0043EC08 8CC60000 */  lw          $a2, 0x0($a2)
.L0043EC0C:
/* 03EC0C 0043EC0C 8CC40034 */  lw          $a0, 0x34($a2)
.L0043EC10:
/* 03EC10 0043EC10 2401FFFF */  addiu       $at, $zero, -0x1
/* 03EC14 0043EC14 5080000C */  beql        $a0, $zero, .L0043EC48
/* 03EC18 0043EC18 8CC4004C */   lw         $a0, 0x4C($a2)
/* 03EC1C 0043EC1C 10810009 */  beq         $a0, $at, .L0043EC44
/* 03EC20 0043EC20 24010001 */   addiu      $at, $zero, 0x1
/* 03EC24 0043EC24 50810008 */  beql        $a0, $at, .L0043EC48
/* 03EC28 0043EC28 8CC4004C */   lw         $a0, 0x4C($a2)
/* 03EC2C 0043EC2C 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 03EC30 0043EC30 0320F809 */  jalr        $t9
/* 03EC34 0043EC34 00000000 */   nop
/* 03EC38 0043EC38 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EC3C 0043EC3C 8F8687C8 */  lw          $a2, %got(st_pchdr)($gp)
/* 03EC40 0043EC40 8CC60000 */  lw          $a2, 0x0($a2)
.L0043EC44:
/* 03EC44 0043EC44 8CC4004C */  lw          $a0, 0x4C($a2)
.L0043EC48:
/* 03EC48 0043EC48 2401FFFF */  addiu       $at, $zero, -0x1
/* 03EC4C 0043EC4C 1080000B */  beqz        $a0, .L0043EC7C
/* 03EC50 0043EC50 00000000 */   nop
/* 03EC54 0043EC54 10810009 */  beq         $a0, $at, .L0043EC7C
/* 03EC58 0043EC58 24010001 */   addiu      $at, $zero, 0x1
/* 03EC5C 0043EC5C 10810007 */  beq         $a0, $at, .L0043EC7C
/* 03EC60 0043EC60 00000000 */   nop
/* 03EC64 0043EC64 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 03EC68 0043EC68 0320F809 */  jalr        $t9
/* 03EC6C 0043EC6C 00000000 */   nop
/* 03EC70 0043EC70 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EC74 0043EC74 8F8687C8 */  lw          $a2, %got(st_pchdr)($gp)
/* 03EC78 0043EC78 8CC60000 */  lw          $a2, 0x0($a2)
.L0043EC7C:
/* 03EC7C 0043EC7C 8F998174 */  lw          $t9, %call16(bzero)($gp)
/* 03EC80 0043EC80 00C02025 */  move        $a0, $a2
/* 03EC84 0043EC84 24050060 */  addiu       $a1, $zero, 0x60
/* 03EC88 0043EC88 0320F809 */  jalr        $t9
/* 03EC8C 0043EC8C 00000000 */   nop
/* 03EC90 0043EC90 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EC94 0043EC94 8FBF001C */  lw          $ra, 0x1C($sp)
.L0043EC98:
/* 03EC98 0043EC98 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03EC9C 0043EC9C 03E00008 */  jr          $ra
/* 03ECA0 0043ECA0 00000000 */   nop
