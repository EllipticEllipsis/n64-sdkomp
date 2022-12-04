glabel obj_set_dynsym_got # 423
/* 02FC24 0042FC24 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02FC28 0042FC28 279C313C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE313C
/* 02FC2C 0042FC2C 0399E021 */  addu        $gp, $gp, $t9
/* 02FC30 0042FC30 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02FC34 0042FC34 8F99831C */  lw          $t9, %call16(obj_gotsym)($gp)
/* 02FC38 0042FC38 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02FC3C 0042FC3C AFBC0018 */  sw          $gp, 0x18($sp)
/* 02FC40 0042FC40 AFA40020 */  sw          $a0, 0x20($sp)
/* 02FC44 0042FC44 AFA50024 */  sw          $a1, 0x24($sp)
/* 02FC48 0042FC48 0320F809 */  jalr        $t9
/* 02FC4C 0042FC4C AFA60028 */   sw         $a2, 0x28($sp)
/* 02FC50 0042FC50 8FAE0024 */  lw          $t6, 0x24($sp)
/* 02FC54 0042FC54 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FC58 0042FC58 01C2082B */  sltu        $at, $t6, $v0
/* 02FC5C 0042FC5C 54200011 */  bnel        $at, $zero, .L0042FCA4
/* 02FC60 0042FC60 8FBF001C */   lw         $ra, 0x1C($sp)
/* 02FC64 0042FC64 8F99831C */  lw          $t9, %call16(obj_gotsym)($gp)
/* 02FC68 0042FC68 8FA40020 */  lw          $a0, 0x20($sp)
/* 02FC6C 0042FC6C 0320F809 */  jalr        $t9
/* 02FC70 0042FC70 00000000 */   nop
/* 02FC74 0042FC74 8FB80020 */  lw          $t8, 0x20($sp)
/* 02FC78 0042FC78 8FA80024 */  lw          $t0, 0x24($sp)
/* 02FC7C 0042FC7C 8FAF0028 */  lw          $t7, 0x28($sp)
/* 02FC80 0042FC80 8F19012C */  lw          $t9, 0x12C($t8)
/* 02FC84 0042FC84 00025880 */  sll         $t3, $v0, 2
/* 02FC88 0042FC88 00084880 */  sll         $t1, $t0, 2
/* 02FC8C 0042FC8C 000B6023 */  negu        $t4, $t3
/* 02FC90 0042FC90 03295021 */  addu        $t2, $t9, $t1
/* 02FC94 0042FC94 014C6821 */  addu        $t5, $t2, $t4
/* 02FC98 0042FC98 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FC9C 0042FC9C ADAF0000 */  sw          $t7, 0x0($t5)
/* 02FCA0 0042FCA0 8FBF001C */  lw          $ra, 0x1C($sp)
.L0042FCA4:
/* 02FCA4 0042FCA4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02FCA8 0042FCA8 03E00008 */  jr          $ra
/* 02FCAC 0042FCAC 00000000 */   nop
