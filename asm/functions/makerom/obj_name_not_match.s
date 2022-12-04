glabel obj_name_not_match # 443
/* 02FF40 0042FF40 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02FF44 0042FF44 279C2E20 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE2E20
/* 02FF48 0042FF48 0399E021 */  addu        $gp, $gp, $t9
/* 02FF4C 0042FF4C 8F998418 */  lw          $t9, %call16(obj_liblist_name)($gp)
/* 02FF50 0042FF50 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02FF54 0042FF54 AFA40020 */  sw          $a0, 0x20($sp)
/* 02FF58 0042FF58 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02FF5C 0042FF5C 00A02025 */  move        $a0, $a1
/* 02FF60 0042FF60 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02FF64 0042FF64 0320F809 */  jalr        $t9
/* 02FF68 0042FF68 00C02825 */   move       $a1, $a2
/* 02FF6C 0042FF6C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FF70 0042FF70 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02FF74 0042FF74 00402025 */  move        $a0, $v0
/* 02FF78 0042FF78 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 02FF7C 0042FF7C 8DC500F0 */  lw          $a1, 0xF0($t6)
/* 02FF80 0042FF80 0320F809 */  jalr        $t9
/* 02FF84 0042FF84 00000000 */   nop
/* 02FF88 0042FF88 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02FF8C 0042FF8C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FF90 0042FF90 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02FF94 0042FF94 03E00008 */  jr          $ra
/* 02FF98 0042FF98 00000000 */   nop
