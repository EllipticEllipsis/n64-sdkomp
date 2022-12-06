glabel ehdr32 # 181
/* 026B74 00426B74 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 026B78 00426B78 279CC1EC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEC1EC
/* 026B7C 00426B7C 0399E021 */  addu        $gp, $gp, $t9
/* 026B80 00426B80 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 026B84 00426B84 8F9981F4 */  lw          $t9, %call16(_elf32_fsize)($gp)
/* 026B88 00426B88 AFA40058 */  sw          $a0, 0x58($sp)
/* 026B8C 00426B8C 8FAE0058 */  lw          $t6, 0x58($sp)
/* 026B90 00426B90 AFBF001C */  sw          $ra, 0x1C($sp)
/* 026B94 00426B94 AFBC0018 */  sw          $gp, 0x18($sp)
/* 026B98 00426B98 AFA5005C */  sw          $a1, 0x5C($sp)
/* 026B9C 00426B9C AFB00014 */  sw          $s0, 0x14($sp)
/* 026BA0 00426BA0 24050001 */  addiu       $a1, $zero, 0x1
/* 026BA4 00426BA4 24040003 */  addiu       $a0, $zero, 0x3
/* 026BA8 00426BA8 0320F809 */  jalr        $t9
/* 026BAC 00426BAC 8DC60044 */   lw         $a2, 0x44($t6)
/* 026BB0 00426BB0 8FAF0058 */  lw          $t7, 0x58($sp)
/* 026BB4 00426BB4 00408025 */  move        $s0, $v0
/* 026BB8 00426BB8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 026BBC 00426BBC 8DF80034 */  lw          $t8, 0x34($t7)
/* 026BC0 00426BC0 0310082B */  sltu        $at, $t8, $s0
/* 026BC4 00426BC4 10200005 */  beqz        $at, .L00426BDC
/* 026BC8 00426BC8 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 026BCC 00426BCC 2419020B */  addiu       $t9, $zero, 0x20B
/* 026BD0 00426BD0 2402FFFF */  addiu       $v0, $zero, -0x1
/* 026BD4 00426BD4 10000057 */  b           .L00426D34
/* 026BD8 00426BD8 AC390000 */   sw         $t9, 0x0($at)
.L00426BDC:
/* 026BDC 00426BDC 8FA8005C */  lw          $t0, 0x5C($sp)
/* 026BE0 00426BE0 1100000A */  beqz        $t0, .L00426C0C
/* 026BE4 00426BE4 2E010034 */   sltiu      $at, $s0, 0x34
/* 026BE8 00426BE8 14200008 */  bnez        $at, .L00426C0C
/* 026BEC 00426BEC 00000000 */   nop
/* 026BF0 00426BF0 8FA90058 */  lw          $t1, 0x58($sp)
/* 026BF4 00426BF4 240B0001 */  addiu       $t3, $zero, 0x1
/* 026BF8 00426BF8 8D2A0028 */  lw          $t2, 0x28($t1)
/* 026BFC 00426BFC AD2A0050 */  sw          $t2, 0x50($t1)
/* 026C00 00426C00 8FAC0058 */  lw          $t4, 0x58($sp)
/* 026C04 00426C04 10000014 */  b           .L00426C58
/* 026C08 00426C08 AD8B000C */   sw         $t3, 0xC($t4)
.L00426C0C:
/* 026C0C 00426C0C 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 026C10 00426C10 24040034 */  addiu       $a0, $zero, 0x34
/* 026C14 00426C14 0320F809 */  jalr        $t9
/* 026C18 00426C18 00000000 */   nop
/* 026C1C 00426C1C 8FAD0058 */  lw          $t5, 0x58($sp)
/* 026C20 00426C20 8FBC0018 */  lw          $gp, 0x18($sp)
/* 026C24 00426C24 ADA20050 */  sw          $v0, 0x50($t5)
/* 026C28 00426C28 8FAE0058 */  lw          $t6, 0x58($sp)
/* 026C2C 00426C2C 8DCF0050 */  lw          $t7, 0x50($t6)
/* 026C30 00426C30 15E00005 */  bnez        $t7, .L00426C48
/* 026C34 00426C34 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 026C38 00426C38 2418040C */  addiu       $t8, $zero, 0x40C
/* 026C3C 00426C3C 2402FFFF */  addiu       $v0, $zero, -0x1
/* 026C40 00426C40 1000003C */  b           .L00426D34
/* 026C44 00426C44 AC380000 */   sw         $t8, 0x0($at)
.L00426C48:
/* 026C48 00426C48 8FB90058 */  lw          $t9, 0x58($sp)
/* 026C4C 00426C4C 8F280088 */  lw          $t0, 0x88($t9)
/* 026C50 00426C50 350A0002 */  ori         $t2, $t0, 0x2
/* 026C54 00426C54 AF2A0088 */  sw          $t2, 0x88($t9)
.L00426C58:
/* 026C58 00426C58 8FA90058 */  lw          $t1, 0x58($sp)
/* 026C5C 00426C5C 240C0003 */  addiu       $t4, $zero, 0x3
/* 026C60 00426C60 8F998218 */  lw          $t9, %call16(_elf_vm)($gp)
/* 026C64 00426C64 8D2B0028 */  lw          $t3, 0x28($t1)
/* 026C68 00426C68 AFAC0028 */  sw          $t4, 0x28($sp)
/* 026C6C 00426C6C AFB0002C */  sw          $s0, 0x2C($sp)
/* 026C70 00426C70 AFAB0024 */  sw          $t3, 0x24($sp)
/* 026C74 00426C74 8D2D0044 */  lw          $t5, 0x44($t1)
/* 026C78 00426C78 240F0034 */  addiu       $t7, $zero, 0x34
/* 026C7C 00426C7C 24180001 */  addiu       $t8, $zero, 0x1
/* 026C80 00426C80 AFAD0038 */  sw          $t5, 0x38($sp)
/* 026C84 00426C84 8D2E0050 */  lw          $t6, 0x50($t1)
/* 026C88 00426C88 AFAF0044 */  sw          $t7, 0x44($sp)
/* 026C8C 00426C8C AFB80050 */  sw          $t8, 0x50($sp)
/* 026C90 00426C90 00002825 */  move        $a1, $zero
/* 026C94 00426C94 02003025 */  move        $a2, $s0
/* 026C98 00426C98 01202025 */  move        $a0, $t1
/* 026C9C 00426C9C 0320F809 */  jalr        $t9
/* 026CA0 00426CA0 AFAE003C */   sw         $t6, 0x3C($sp)
/* 026CA4 00426CA4 14400009 */  bnez        $v0, .L00426CCC
/* 026CA8 00426CA8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 026CAC 00426CAC 8F998200 */  lw          $t9, %call16(_elf32_xlatetom)($gp)
/* 026CB0 00426CB0 8FA80058 */  lw          $t0, 0x58($sp)
/* 026CB4 00426CB4 27A4003C */  addiu       $a0, $sp, 0x3C
/* 026CB8 00426CB8 27A50024 */  addiu       $a1, $sp, 0x24
/* 026CBC 00426CBC 0320F809 */  jalr        $t9
/* 026CC0 00426CC0 8D060040 */   lw         $a2, 0x40($t0)
/* 026CC4 00426CC4 14400011 */  bnez        $v0, .L00426D0C
/* 026CC8 00426CC8 8FBC0018 */   lw         $gp, 0x18($sp)
.L00426CCC:
/* 026CCC 00426CCC 8FAA0058 */  lw          $t2, 0x58($sp)
/* 026CD0 00426CD0 8D590088 */  lw          $t9, 0x88($t2)
/* 026CD4 00426CD4 332B0002 */  andi        $t3, $t9, 0x2
/* 026CD8 00426CD8 11600008 */  beqz        $t3, .L00426CFC
/* 026CDC 00426CDC 2401FFFD */   addiu      $at, $zero, -0x3
/* 026CE0 00426CE0 03216024 */  and         $t4, $t9, $at
/* 026CE4 00426CE4 AD4C0088 */  sw          $t4, 0x88($t2)
/* 026CE8 00426CE8 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 026CEC 00426CEC 8FAD0058 */  lw          $t5, 0x58($sp)
/* 026CF0 00426CF0 0320F809 */  jalr        $t9
/* 026CF4 00426CF4 8DA40050 */   lw         $a0, 0x50($t5)
/* 026CF8 00426CF8 8FBC0018 */  lw          $gp, 0x18($sp)
.L00426CFC:
/* 026CFC 00426CFC 8FAE0058 */  lw          $t6, 0x58($sp)
/* 026D00 00426D00 2402FFFF */  addiu       $v0, $zero, -0x1
/* 026D04 00426D04 1000000B */  b           .L00426D34
/* 026D08 00426D08 ADC00050 */   sw         $zero, 0x50($t6)
.L00426D0C:
/* 026D0C 00426D0C 8FAF0058 */  lw          $t7, 0x58($sp)
/* 026D10 00426D10 8DF80050 */  lw          $t8, 0x50($t7)
/* 026D14 00426D14 8DE80044 */  lw          $t0, 0x44($t7)
/* 026D18 00426D18 8F090014 */  lw          $t1, 0x14($t8)
/* 026D1C 00426D1C 11280004 */  beq         $t1, $t0, .L00426D30
/* 026D20 00426D20 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 026D24 00426D24 240B0212 */  addiu       $t3, $zero, 0x212
/* 026D28 00426D28 1000FFE8 */  b           .L00426CCC
/* 026D2C 00426D2C AC2B0000 */   sw         $t3, 0x0($at)
.L00426D30:
/* 026D30 00426D30 00001025 */  move        $v0, $zero
.L00426D34:
/* 026D34 00426D34 8FBF001C */  lw          $ra, 0x1C($sp)
/* 026D38 00426D38 8FB00014 */  lw          $s0, 0x14($sp)
/* 026D3C 00426D3C 27BD0058 */  addiu       $sp, $sp, 0x58
/* 026D40 00426D40 03E00008 */  jr          $ra
/* 026D44 00426D44 00000000 */   nop
