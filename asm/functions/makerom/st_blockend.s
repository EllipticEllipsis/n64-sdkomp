glabel st_blockend # 693
/* 04203C 0044203C 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 042040 00442040 279C0D24 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD0D24
/* 042044 00442044 0399E021 */  addu        $gp, $gp, $t9
/* 042048 00442048 8F828030 */  lw          $v0, %got(B_10010824)($gp)
/* 04204C 0044204C 8F998030 */  lw          $t9, %got(B_10010820)($gp)
/* 042050 00442050 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 042054 00442054 24420824 */  addiu       $v0, $v0, %lo(B_10010824)
/* 042058 00442058 8C4E0000 */  lw          $t6, 0x0($v0)
/* 04205C 0044205C AFBF0024 */  sw          $ra, 0x24($sp)
/* 042060 00442060 AFBC0020 */  sw          $gp, 0x20($sp)
/* 042064 00442064 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 042068 00442068 AC4F0000 */  sw          $t7, 0x0($v0)
/* 04206C 0044206C 8F390820 */  lw          $t9, %lo(B_10010820)($t9)
/* 042070 00442070 000F50C0 */  sll         $t2, $t7, 3
/* 042074 00442074 AFA40040 */  sw          $a0, 0x40($sp)
/* 042078 00442078 032A5821 */  addu        $t3, $t9, $t2
/* 04207C 0044207C 8D6D0000 */  lw          $t5, 0x0($t3)
/* 042080 00442080 27B80034 */  addiu       $t8, $sp, 0x34
/* 042084 00442084 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 042088 00442088 AF0D0000 */  sw          $t5, 0x0($t8)
/* 04208C 0044208C 8D6C0004 */  lw          $t4, 0x4($t3)
/* 042090 00442090 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 042094 00442094 AF0C0004 */  sw          $t4, 0x4($t8)
/* 042098 00442098 8FAE0038 */  lw          $t6, 0x38($sp)
/* 04209C 0044209C 15C10005 */  bne         $t6, $at, .L004420B4
/* 0420A0 004420A0 00000000 */   nop
/* 0420A4 004420A4 8F818030 */  lw          $at, %got(D_1000AD64)($gp)
/* 0420A8 004420A8 00001025 */  move        $v0, $zero
/* 0420AC 004420AC 1000004D */  b           .L004421E4
/* 0420B0 004420B0 AC20AD64 */   sw         $zero, %lo(D_1000AD64)($at)
.L004420B4:
/* 0420B4 004420B4 8F99860C */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 0420B8 004420B8 8FA40034 */  lw          $a0, 0x34($sp)
/* 0420BC 004420BC 8FA50038 */  lw          $a1, 0x38($sp)
/* 0420C0 004420C0 0320F809 */  jalr        $t9
/* 0420C4 004420C4 00000000 */   nop
/* 0420C8 004420C8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0420CC 004420CC AFA2003C */  sw          $v0, 0x3C($sp)
/* 0420D0 004420D0 8F9985D8 */  lw          $t9, %call16(st_currentifd)($gp)
/* 0420D4 004420D4 0320F809 */  jalr        $t9
/* 0420D8 004420D8 00000000 */   nop
/* 0420DC 004420DC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0420E0 004420E0 AFA2002C */  sw          $v0, 0x2C($sp)
/* 0420E4 004420E4 8FA40034 */  lw          $a0, 0x34($sp)
/* 0420E8 004420E8 8F9985E0 */  lw          $t9, %call16(st_setfd)($gp)
/* 0420EC 004420EC 0320F809 */  jalr        $t9
/* 0420F0 004420F0 00000000 */   nop
/* 0420F4 004420F4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0420F8 004420F8 8FA8003C */  lw          $t0, 0x3C($sp)
/* 0420FC 004420FC 00002025 */  move        $a0, $zero
/* 042100 00442100 8F898030 */  lw          $t1, %got(B_10010824)($gp)
/* 042104 00442104 8F8F8030 */  lw          $t7, %got(B_10010820)($gp)
/* 042108 00442108 8D070008 */  lw          $a3, 0x8($t0)
/* 04210C 0044210C 8D290824 */  lw          $t1, %lo(B_10010824)($t1)
/* 042110 00442110 8DEF0820 */  lw          $t7, %lo(B_10010820)($t7)
/* 042114 00442114 00073980 */  sll         $a3, $a3, 6
/* 042118 00442118 0009C8C0 */  sll         $t9, $t1, 3
/* 04211C 0044211C 01F95021 */  addu        $t2, $t7, $t9
/* 042120 00442120 8F998600 */  lw          $t9, %call16(st_symadd)($gp)
/* 042124 00442124 8D580004 */  lw          $t8, 0x4($t2)
/* 042128 00442128 00073EC2 */  srl         $a3, $a3, 27
/* 04212C 0044212C 00002825 */  move        $a1, $zero
/* 042130 00442130 24060008 */  addiu       $a2, $zero, 0x8
/* 042134 00442134 0320F809 */  jalr        $t9
/* 042138 00442138 AFB80010 */   sw         $t8, 0x10($sp)
/* 04213C 0044213C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 042140 00442140 244B0001 */  addiu       $t3, $v0, 0x1
/* 042144 00442144 AFAB0030 */  sw          $t3, 0x30($sp)
/* 042148 00442148 8F99860C */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 04214C 0044214C 8FA40034 */  lw          $a0, 0x34($sp)
/* 042150 00442150 8FA50038 */  lw          $a1, 0x38($sp)
/* 042154 00442154 0320F809 */  jalr        $t9
/* 042158 00442158 00000000 */   nop
/* 04215C 0044215C 8FAC0030 */  lw          $t4, 0x30($sp)
/* 042160 00442160 8C430008 */  lw          $v1, 0x8($v0)
/* 042164 00442164 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 042168 00442168 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 04216C 0044216C 01816824 */  and         $t5, $t4, $at
/* 042170 00442170 01A37026 */  xor         $t6, $t5, $v1
/* 042174 00442174 000E4B00 */  sll         $t1, $t6, 12
/* 042178 00442178 00097B02 */  srl         $t7, $t1, 12
/* 04217C 0044217C 01E3C826 */  xor         $t9, $t7, $v1
/* 042180 00442180 0019C180 */  sll         $t8, $t9, 6
/* 042184 00442184 8FBC0020 */  lw          $gp, 0x20($sp)
/* 042188 00442188 00185EC2 */  srl         $t3, $t8, 27
/* 04218C 0044218C 24010001 */  addiu       $at, $zero, 0x1
/* 042190 00442190 00404025 */  move        $t0, $v0
/* 042194 00442194 11610003 */  beq         $t3, $at, .L004421A4
/* 042198 00442198 AC590008 */   sw         $t9, 0x8($v0)
/* 04219C 0044219C 8FAC0040 */  lw          $t4, 0x40($sp)
/* 0421A0 004421A0 AC4C0004 */  sw          $t4, 0x4($v0)
.L004421A4:
/* 0421A4 004421A4 8D040008 */  lw          $a0, 0x8($t0)
/* 0421A8 004421A8 8F998630 */  lw          $t9, %call16(st_idn_index_fext)($gp)
/* 0421AC 004421AC 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 0421B0 004421B0 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 0421B4 004421B4 00812024 */  and         $a0, $a0, $at
/* 0421B8 004421B8 2484FFFF */  addiu       $a0, $a0, -0x1
/* 0421BC 004421BC 0320F809 */  jalr        $t9
/* 0421C0 004421C0 00002825 */   move       $a1, $zero
/* 0421C4 004421C4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0421C8 004421C8 AFA20030 */  sw          $v0, 0x30($sp)
/* 0421CC 004421CC 8FA4002C */  lw          $a0, 0x2C($sp)
/* 0421D0 004421D0 8F9985E0 */  lw          $t9, %call16(st_setfd)($gp)
/* 0421D4 004421D4 0320F809 */  jalr        $t9
/* 0421D8 004421D8 00000000 */   nop
/* 0421DC 004421DC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0421E0 004421E0 8FA20030 */  lw          $v0, 0x30($sp)
.L004421E4:
/* 0421E4 004421E4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0421E8 004421E8 27BD0040 */  addiu       $sp, $sp, 0x40
/* 0421EC 004421EC 03E00008 */  jr          $ra
/* 0421F0 004421F0 00000000 */   nop