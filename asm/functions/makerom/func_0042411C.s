glabel func_0042411C # 138
/* 02411C 0042411C 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 024120 00424120 279CEC44 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEEC44
/* 024124 00424124 0399E021 */  addu        $gp, $gp, $t9
/* 024128 00424128 00067140 */  sll         $t6, $a2, 5
/* 02412C 0042412C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 024130 00424130 01C57821 */  addu        $t7, $t6, $a1
/* 024134 00424134 AFAF0024 */  sw          $t7, 0x24($sp)
.L00424138:
/* 024138 00424138 8CA70000 */  lw          $a3, 0x0($a1)
/* 02413C 0042413C 24A50020 */  addiu       $a1, $a1, 0x20
/* 024140 00424140 24840020 */  addiu       $a0, $a0, 0x20
/* 024144 00424144 0007C202 */  srl         $t8, $a3, 8
/* 024148 00424148 0007CC02 */  srl         $t9, $a3, 16
/* 02414C 0042414C 00077602 */  srl         $t6, $a3, 24
/* 024150 00424150 A08EFFE0 */  sb          $t6, -0x20($a0)
/* 024154 00424154 A099FFE1 */  sb          $t9, -0x1F($a0)
/* 024158 00424158 A098FFE2 */  sb          $t8, -0x1E($a0)
/* 02415C 0042415C A087FFE3 */  sb          $a3, -0x1D($a0)
/* 024160 00424160 8CA8FFE4 */  lw          $t0, -0x1C($a1)
/* 024164 00424164 00087A02 */  srl         $t7, $t0, 8
/* 024168 00424168 0008C402 */  srl         $t8, $t0, 16
/* 02416C 0042416C 0008CE02 */  srl         $t9, $t0, 24
/* 024170 00424170 A099FFE4 */  sb          $t9, -0x1C($a0)
/* 024174 00424174 A098FFE5 */  sb          $t8, -0x1B($a0)
/* 024178 00424178 A08FFFE6 */  sb          $t7, -0x1A($a0)
/* 02417C 0042417C A088FFE7 */  sb          $t0, -0x19($a0)
/* 024180 00424180 8CA9FFE8 */  lw          $t1, -0x18($a1)
/* 024184 00424184 00097202 */  srl         $t6, $t1, 8
/* 024188 00424188 00097C02 */  srl         $t7, $t1, 16
/* 02418C 0042418C 0009C602 */  srl         $t8, $t1, 24
/* 024190 00424190 A098FFE8 */  sb          $t8, -0x18($a0)
/* 024194 00424194 A08FFFE9 */  sb          $t7, -0x17($a0)
/* 024198 00424198 A08EFFEA */  sb          $t6, -0x16($a0)
/* 02419C 0042419C A089FFEB */  sb          $t1, -0x15($a0)
/* 0241A0 004241A0 8CAAFFEC */  lw          $t2, -0x14($a1)
/* 0241A4 004241A4 000ACA02 */  srl         $t9, $t2, 8
/* 0241A8 004241A8 000A7402 */  srl         $t6, $t2, 16
/* 0241AC 004241AC 000A7E02 */  srl         $t7, $t2, 24
/* 0241B0 004241B0 A08FFFEC */  sb          $t7, -0x14($a0)
/* 0241B4 004241B4 A08EFFED */  sb          $t6, -0x13($a0)
/* 0241B8 004241B8 A099FFEE */  sb          $t9, -0x12($a0)
/* 0241BC 004241BC A08AFFEF */  sb          $t2, -0x11($a0)
/* 0241C0 004241C0 8CABFFF0 */  lw          $t3, -0x10($a1)
/* 0241C4 004241C4 000BC202 */  srl         $t8, $t3, 8
/* 0241C8 004241C8 000BCC02 */  srl         $t9, $t3, 16
/* 0241CC 004241CC 000B7602 */  srl         $t6, $t3, 24
/* 0241D0 004241D0 A08EFFF0 */  sb          $t6, -0x10($a0)
/* 0241D4 004241D4 A099FFF1 */  sb          $t9, -0xF($a0)
/* 0241D8 004241D8 A098FFF2 */  sb          $t8, -0xE($a0)
/* 0241DC 004241DC A08BFFF3 */  sb          $t3, -0xD($a0)
/* 0241E0 004241E0 8CACFFF4 */  lw          $t4, -0xC($a1)
/* 0241E4 004241E4 000C7A02 */  srl         $t7, $t4, 8
/* 0241E8 004241E8 000CC402 */  srl         $t8, $t4, 16
/* 0241EC 004241EC 000CCE02 */  srl         $t9, $t4, 24
/* 0241F0 004241F0 A099FFF4 */  sb          $t9, -0xC($a0)
/* 0241F4 004241F4 A098FFF5 */  sb          $t8, -0xB($a0)
/* 0241F8 004241F8 A08FFFF6 */  sb          $t7, -0xA($a0)
/* 0241FC 004241FC A08CFFF7 */  sb          $t4, -0x9($a0)
/* 024200 00424200 8CADFFF8 */  lw          $t5, -0x8($a1)
/* 024204 00424204 000D7202 */  srl         $t6, $t5, 8
/* 024208 00424208 000D7C02 */  srl         $t7, $t5, 16
/* 02420C 0042420C 000DC602 */  srl         $t8, $t5, 24
/* 024210 00424210 A098FFF8 */  sb          $t8, -0x8($a0)
/* 024214 00424214 A08FFFF9 */  sb          $t7, -0x7($a0)
/* 024218 00424218 A08EFFFA */  sb          $t6, -0x6($a0)
/* 02421C 0042421C A08DFFFB */  sb          $t5, -0x5($a0)
/* 024220 00424220 8CB9FFFC */  lw          $t9, -0x4($a1)
/* 024224 00424224 AFB90004 */  sw          $t9, 0x4($sp)
/* 024228 00424228 8FAE0004 */  lw          $t6, 0x4($sp)
/* 02422C 0042422C A08EFFFF */  sb          $t6, -0x1($a0)
/* 024230 00424230 8FAF0004 */  lw          $t7, 0x4($sp)
/* 024234 00424234 000FC202 */  srl         $t8, $t7, 8
/* 024238 00424238 A098FFFE */  sb          $t8, -0x2($a0)
/* 02423C 0042423C 8FB90004 */  lw          $t9, 0x4($sp)
/* 024240 00424240 00197402 */  srl         $t6, $t9, 16
/* 024244 00424244 A08EFFFD */  sb          $t6, -0x3($a0)
/* 024248 00424248 8FAF0004 */  lw          $t7, 0x4($sp)
/* 02424C 0042424C 000FC602 */  srl         $t8, $t7, 24
/* 024250 00424250 A098FFFC */  sb          $t8, -0x4($a0)
/* 024254 00424254 8FB90024 */  lw          $t9, 0x24($sp)
/* 024258 00424258 00B9082B */  sltu        $at, $a1, $t9
/* 02425C 0042425C 1420FFB6 */  bnez        $at, .L00424138
/* 024260 00424260 00000000 */   nop
/* 024264 00424264 03E00008 */  jr          $ra
/* 024268 00424268 27BD0028 */   addiu      $sp, $sp, 0x28
