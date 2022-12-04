glabel obj_data_size # 364
/* 02F6E4 0042F6E4 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02F6E8 0042F6E8 279C367C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE367C
/* 02F6EC 0042F6EC 0399E021 */  addu        $gp, $gp, $t9
/* 02F6F0 0042F6F0 8F9983A0 */  lw          $t9, %call16(obj_bss_start)($gp)
/* 02F6F4 0042F6F4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02F6F8 0042F6F8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02F6FC 0042F6FC AFBC0018 */  sw          $gp, 0x18($sp)
/* 02F700 0042F700 0320F809 */  jalr        $t9
/* 02F704 0042F704 AFA40028 */   sw         $a0, 0x28($sp)
/* 02F708 0042F708 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02F70C 0042F70C AFA20024 */  sw          $v0, 0x24($sp)
/* 02F710 0042F710 8FA40028 */  lw          $a0, 0x28($sp)
/* 02F714 0042F714 8F99839C */  lw          $t9, %call16(obj_data_start)($gp)
/* 02F718 0042F718 0320F809 */  jalr        $t9
/* 02F71C 0042F71C 00000000 */   nop
/* 02F720 0042F720 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02F724 0042F724 8FAE0024 */  lw          $t6, 0x24($sp)
/* 02F728 0042F728 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02F72C 0042F72C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02F730 0042F730 03E00008 */  jr          $ra
/* 02F734 0042F734 01C21023 */   subu       $v0, $t6, $v0
