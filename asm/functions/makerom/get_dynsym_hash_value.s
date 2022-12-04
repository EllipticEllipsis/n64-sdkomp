glabel get_dynsym_hash_value # 276
/* 02E7D0 0042E7D0 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02E7D4 0042E7D4 279C4590 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE4590
/* 02E7D8 0042E7D8 0399E021 */  addu        $gp, $gp, $t9
/* 02E7DC 0042E7DC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02E7E0 0042E7E0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02E7E4 0042E7E4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02E7E8 0042E7E8 14A00003 */  bnez        $a1, .L0042E7F8
/* 02E7EC 0042E7EC AFA40028 */   sw         $a0, 0x28($sp)
/* 02E7F0 0042E7F0 1000001A */  b           .L0042E85C
/* 02E7F4 0042E7F4 00001025 */   move       $v0, $zero
.L0042E7F8:
/* 02E7F8 0042E7F8 8F9983F4 */  lw          $t9, %call16(obj_dynsym_name)($gp)
/* 02E7FC 0042E7FC 8FA40028 */  lw          $a0, 0x28($sp)
/* 02E800 0042E800 AFA5002C */  sw          $a1, 0x2C($sp)
/* 02E804 0042E804 0320F809 */  jalr        $t9
/* 02E808 0042E808 00000000 */   nop
/* 02E80C 0042E80C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02E810 0042E810 00402025 */  move        $a0, $v0
/* 02E814 0042E814 8F998288 */  lw          $t9, %call16(elfhash)($gp)
/* 02E818 0042E818 0320F809 */  jalr        $t9
/* 02E81C 0042E81C 00000000 */   nop
/* 02E820 0042E820 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02E824 0042E824 AFA20024 */  sw          $v0, 0x24($sp)
/* 02E828 0042E828 8FA40028 */  lw          $a0, 0x28($sp)
/* 02E82C 0042E82C 8F9983F8 */  lw          $t9, %call16(obj_msym_exists)($gp)
/* 02E830 0042E830 0320F809 */  jalr        $t9
/* 02E834 0042E834 00000000 */   nop
/* 02E838 0042E838 10400007 */  beqz        $v0, .L0042E858
/* 02E83C 0042E83C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02E840 0042E840 8F998414 */  lw          $t9, %call16(obj_set_msym_ms_hash_value)($gp)
/* 02E844 0042E844 8FA40028 */  lw          $a0, 0x28($sp)
/* 02E848 0042E848 8FA5002C */  lw          $a1, 0x2C($sp)
/* 02E84C 0042E84C 0320F809 */  jalr        $t9
/* 02E850 0042E850 8FA60024 */   lw         $a2, 0x24($sp)
/* 02E854 0042E854 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042E858:
/* 02E858 0042E858 8FA20024 */  lw          $v0, 0x24($sp)
.L0042E85C:
/* 02E85C 0042E85C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02E860 0042E860 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02E864 0042E864 03E00008 */  jr          $ra
/* 02E868 0042E868 00000000 */   nop
