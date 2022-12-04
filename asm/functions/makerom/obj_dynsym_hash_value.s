glabel obj_dynsym_hash_value # 417
/* 02FA8C 0042FA8C 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02FA90 0042FA90 279C32D4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE32D4
/* 02FA94 0042FA94 0399E021 */  addu        $gp, $gp, $t9
/* 02FA98 0042FA98 8F9983F8 */  lw          $t9, %call16(obj_msym_exists)($gp)
/* 02FA9C 0042FA9C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02FAA0 0042FAA0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02FAA4 0042FAA4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02FAA8 0042FAA8 AFA50024 */  sw          $a1, 0x24($sp)
/* 02FAAC 0042FAAC 0320F809 */  jalr        $t9
/* 02FAB0 0042FAB0 AFA40020 */   sw         $a0, 0x20($sp)
/* 02FAB4 0042FAB4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FAB8 0042FAB8 8FA40020 */  lw          $a0, 0x20($sp)
/* 02FABC 0042FABC 10400009 */  beqz        $v0, .L0042FAE4
/* 02FAC0 0042FAC0 8FA50024 */   lw         $a1, 0x24($sp)
/* 02FAC4 0042FAC4 8C8E0124 */  lw          $t6, 0x124($a0)
/* 02FAC8 0042FAC8 000578C0 */  sll         $t7, $a1, 3
/* 02FACC 0042FACC 01CFC021 */  addu        $t8, $t6, $t7
/* 02FAD0 0042FAD0 8F030000 */  lw          $v1, 0x0($t8)
/* 02FAD4 0042FAD4 10600003 */  beqz        $v1, .L0042FAE4
/* 02FAD8 0042FAD8 00000000 */   nop
/* 02FADC 0042FADC 10000005 */  b           .L0042FAF4
/* 02FAE0 0042FAE0 00601025 */   move       $v0, $v1
.L0042FAE4:
/* 02FAE4 0042FAE4 8F998298 */  lw          $t9, %call16(get_dynsym_hash_value)($gp)
/* 02FAE8 0042FAE8 0320F809 */  jalr        $t9
/* 02FAEC 0042FAEC 00000000 */   nop
/* 02FAF0 0042FAF0 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042FAF4:
/* 02FAF4 0042FAF4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02FAF8 0042FAF8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02FAFC 0042FAFC 03E00008 */  jr          $ra
/* 02FB00 0042FB00 00000000 */   nop
