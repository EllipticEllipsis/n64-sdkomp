glabel search_symbol_using_hash # 281
/* 02EB5C 0042EB5C 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02EB60 0042EB60 279C4204 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE4204
/* 02EB64 0042EB64 0399E021 */  addu        $gp, $gp, $t9
/* 02EB68 0042EB68 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02EB6C 0042EB6C 8F998338 */  lw          $t9, %call16(obj_dynflags)($gp)
/* 02EB70 0042EB70 AFBF002C */  sw          $ra, 0x2C($sp)
/* 02EB74 0042EB74 AFB30024 */  sw          $s3, 0x24($sp)
/* 02EB78 0042EB78 AFB20020 */  sw          $s2, 0x20($sp)
/* 02EB7C 0042EB7C AFB1001C */  sw          $s1, 0x1C($sp)
/* 02EB80 0042EB80 00808825 */  move        $s1, $a0
/* 02EB84 0042EB84 00C09025 */  move        $s2, $a2
/* 02EB88 0042EB88 00A09825 */  move        $s3, $a1
/* 02EB8C 0042EB8C AFBC0028 */  sw          $gp, 0x28($sp)
/* 02EB90 0042EB90 0320F809 */  jalr        $t9
/* 02EB94 0042EB94 AFB00018 */   sw         $s0, 0x18($sp)
/* 02EB98 0042EB98 304E0002 */  andi        $t6, $v0, 0x2
/* 02EB9C 0042EB9C 15C0000F */  bnez        $t6, .L0042EBDC
/* 02EBA0 0042EBA0 8FBC0028 */   lw         $gp, 0x28($sp)
/* 02EBA4 0042EBA4 8F998400 */  lw          $t9, %call16(obj_nbucket)($gp)
/* 02EBA8 0042EBA8 02202025 */  move        $a0, $s1
/* 02EBAC 0042EBAC 0320F809 */  jalr        $t9
/* 02EBB0 0042EBB0 00000000 */   nop
/* 02EBB4 0042EBB4 8FBC0028 */  lw          $gp, 0x28($sp)
/* 02EBB8 0042EBB8 244FFFFF */  addiu       $t7, $v0, -0x1
/* 02EBBC 0042EBBC 01F22824 */  and         $a1, $t7, $s2
/* 02EBC0 0042EBC0 8F998404 */  lw          $t9, %call16(obj_hash_bucket)($gp)
/* 02EBC4 0042EBC4 02202025 */  move        $a0, $s1
/* 02EBC8 0042EBC8 0320F809 */  jalr        $t9
/* 02EBCC 0042EBCC 00000000 */   nop
/* 02EBD0 0042EBD0 8FBC0028 */  lw          $gp, 0x28($sp)
/* 02EBD4 0042EBD4 10000011 */  b           .L0042EC1C
/* 02EBD8 0042EBD8 00408025 */   move       $s0, $v0
.L0042EBDC:
/* 02EBDC 0042EBDC 8F998400 */  lw          $t9, %call16(obj_nbucket)($gp)
/* 02EBE0 0042EBE0 02202025 */  move        $a0, $s1
/* 02EBE4 0042EBE4 0320F809 */  jalr        $t9
/* 02EBE8 0042EBE8 00000000 */   nop
/* 02EBEC 0042EBEC 0242001B */  divu        $zero, $s2, $v0
/* 02EBF0 0042EBF0 8FBC0028 */  lw          $gp, 0x28($sp)
/* 02EBF4 0042EBF4 00002810 */  mfhi        $a1
/* 02EBF8 0042EBF8 02202025 */  move        $a0, $s1
/* 02EBFC 0042EBFC 8F998404 */  lw          $t9, %call16(obj_hash_bucket)($gp)
/* 02EC00 0042EC00 14400002 */  bnez        $v0, .L0042EC0C
/* 02EC04 0042EC04 00000000 */   nop
/* 02EC08 0042EC08 0007000D */  break       7
.L0042EC0C:
/* 02EC0C 0042EC0C 0320F809 */  jalr        $t9
/* 02EC10 0042EC10 00000000 */   nop
/* 02EC14 0042EC14 8FBC0028 */  lw          $gp, 0x28($sp)
/* 02EC18 0042EC18 00408025 */  move        $s0, $v0
.L0042EC1C:
/* 02EC1C 0042EC1C 8F9983FC */  lw          $t9, %call16(obj_dynsym_hash_value)($gp)
/* 02EC20 0042EC20 02202025 */  move        $a0, $s1
/* 02EC24 0042EC24 02002825 */  move        $a1, $s0
/* 02EC28 0042EC28 0320F809 */  jalr        $t9
/* 02EC2C 0042EC2C 00000000 */   nop
/* 02EC30 0042EC30 1452000E */  bne         $v0, $s2, .L0042EC6C
/* 02EC34 0042EC34 8FBC0028 */   lw         $gp, 0x28($sp)
/* 02EC38 0042EC38 8F9983F4 */  lw          $t9, %call16(obj_dynsym_name)($gp)
/* 02EC3C 0042EC3C 02202025 */  move        $a0, $s1
/* 02EC40 0042EC40 02002825 */  move        $a1, $s0
/* 02EC44 0042EC44 0320F809 */  jalr        $t9
/* 02EC48 0042EC48 00000000 */   nop
/* 02EC4C 0042EC4C 8FBC0028 */  lw          $gp, 0x28($sp)
/* 02EC50 0042EC50 00402025 */  move        $a0, $v0
/* 02EC54 0042EC54 02602825 */  move        $a1, $s3
/* 02EC58 0042EC58 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 02EC5C 0042EC5C 0320F809 */  jalr        $t9
/* 02EC60 0042EC60 00000000 */   nop
/* 02EC64 0042EC64 10400027 */  beqz        $v0, .L0042ED04
/* 02EC68 0042EC68 8FBC0028 */   lw         $gp, 0x28($sp)
.L0042EC6C:
/* 02EC6C 0042EC6C 8F998408 */  lw          $t9, %call16(obj_hash_chain)($gp)
/* 02EC70 0042EC70 02202025 */  move        $a0, $s1
/* 02EC74 0042EC74 02002825 */  move        $a1, $s0
/* 02EC78 0042EC78 0320F809 */  jalr        $t9
/* 02EC7C 0042EC7C 00000000 */   nop
/* 02EC80 0042EC80 8FBC0028 */  lw          $gp, 0x28($sp)
/* 02EC84 0042EC84 1040001D */  beqz        $v0, .L0042ECFC
/* 02EC88 0042EC88 00408025 */   move       $s0, $v0
.L0042EC8C:
/* 02EC8C 0042EC8C 8F9983FC */  lw          $t9, %call16(obj_dynsym_hash_value)($gp)
/* 02EC90 0042EC90 02202025 */  move        $a0, $s1
/* 02EC94 0042EC94 02002825 */  move        $a1, $s0
/* 02EC98 0042EC98 0320F809 */  jalr        $t9
/* 02EC9C 0042EC9C 00000000 */   nop
/* 02ECA0 0042ECA0 1452000E */  bne         $v0, $s2, .L0042ECDC
/* 02ECA4 0042ECA4 8FBC0028 */   lw         $gp, 0x28($sp)
/* 02ECA8 0042ECA8 8F9983F4 */  lw          $t9, %call16(obj_dynsym_name)($gp)
/* 02ECAC 0042ECAC 02202025 */  move        $a0, $s1
/* 02ECB0 0042ECB0 02002825 */  move        $a1, $s0
/* 02ECB4 0042ECB4 0320F809 */  jalr        $t9
/* 02ECB8 0042ECB8 00000000 */   nop
/* 02ECBC 0042ECBC 8FBC0028 */  lw          $gp, 0x28($sp)
/* 02ECC0 0042ECC0 00402025 */  move        $a0, $v0
/* 02ECC4 0042ECC4 02602825 */  move        $a1, $s3
/* 02ECC8 0042ECC8 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 02ECCC 0042ECCC 0320F809 */  jalr        $t9
/* 02ECD0 0042ECD0 00000000 */   nop
/* 02ECD4 0042ECD4 1040000B */  beqz        $v0, .L0042ED04
/* 02ECD8 0042ECD8 8FBC0028 */   lw         $gp, 0x28($sp)
.L0042ECDC:
/* 02ECDC 0042ECDC 8F998408 */  lw          $t9, %call16(obj_hash_chain)($gp)
/* 02ECE0 0042ECE0 02202025 */  move        $a0, $s1
/* 02ECE4 0042ECE4 02002825 */  move        $a1, $s0
/* 02ECE8 0042ECE8 0320F809 */  jalr        $t9
/* 02ECEC 0042ECEC 00000000 */   nop
/* 02ECF0 0042ECF0 8FBC0028 */  lw          $gp, 0x28($sp)
/* 02ECF4 0042ECF4 1440FFE5 */  bnez        $v0, .L0042EC8C
/* 02ECF8 0042ECF8 00408025 */   move       $s0, $v0
.L0042ECFC:
/* 02ECFC 0042ECFC 10000002 */  b           .L0042ED08
/* 02ED00 0042ED00 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042ED04:
/* 02ED04 0042ED04 02001025 */  move        $v0, $s0
.L0042ED08:
/* 02ED08 0042ED08 8FBF002C */  lw          $ra, 0x2C($sp)
/* 02ED0C 0042ED0C 8FB00018 */  lw          $s0, 0x18($sp)
/* 02ED10 0042ED10 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02ED14 0042ED14 8FB20020 */  lw          $s2, 0x20($sp)
/* 02ED18 0042ED18 8FB30024 */  lw          $s3, 0x24($sp)
/* 02ED1C 0042ED1C 03E00008 */  jr          $ra
/* 02ED20 0042ED20 27BD0030 */   addiu      $sp, $sp, 0x30
