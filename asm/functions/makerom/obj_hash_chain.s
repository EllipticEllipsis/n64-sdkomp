glabel obj_hash_chain # 421
/* 02FB30 0042FB30 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02FB34 0042FB34 279C3230 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE3230
/* 02FB38 0042FB38 0399E021 */  addu        $gp, $gp, $t9
/* 02FB3C 0042FB3C 8F998400 */  lw          $t9, %call16(obj_nbucket)($gp)
/* 02FB40 0042FB40 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02FB44 0042FB44 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02FB48 0042FB48 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02FB4C 0042FB4C AFA40020 */  sw          $a0, 0x20($sp)
/* 02FB50 0042FB50 0320F809 */  jalr        $t9
/* 02FB54 0042FB54 AFA50024 */   sw         $a1, 0x24($sp)
/* 02FB58 0042FB58 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02FB5C 0042FB5C 8FA80024 */  lw          $t0, 0x24($sp)
/* 02FB60 0042FB60 0002C080 */  sll         $t8, $v0, 2
/* 02FB64 0042FB64 8DCF0118 */  lw          $t7, 0x118($t6)
/* 02FB68 0042FB68 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02FB6C 0042FB6C 00084880 */  sll         $t1, $t0, 2
/* 02FB70 0042FB70 01F8C821 */  addu        $t9, $t7, $t8
/* 02FB74 0042FB74 03295021 */  addu        $t2, $t9, $t1
/* 02FB78 0042FB78 8D420008 */  lw          $v0, 0x8($t2)
/* 02FB7C 0042FB7C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FB80 0042FB80 03E00008 */  jr          $ra
/* 02FB84 0042FB84 27BD0020 */   addiu      $sp, $sp, 0x20
