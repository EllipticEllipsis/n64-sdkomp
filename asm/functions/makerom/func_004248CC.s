glabel func_004248CC # 147
/* 0248CC 004248CC 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 0248D0 004248D0 279CE494 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEE494
/* 0248D4 004248D4 0399E021 */  addu        $gp, $gp, $t9
/* 0248D8 004248D8 00067100 */  sll         $t6, $a2, 4
/* 0248DC 004248DC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0248E0 004248E0 01C57821 */  addu        $t7, $t6, $a1
/* 0248E4 004248E4 AFAF0014 */  sw          $t7, 0x14($sp)
.L004248E8:
/* 0248E8 004248E8 8CA70000 */  lw          $a3, 0x0($a1)
/* 0248EC 004248EC 24A50010 */  addiu       $a1, $a1, 0x10
/* 0248F0 004248F0 24840010 */  addiu       $a0, $a0, 0x10
/* 0248F4 004248F4 0007C202 */  srl         $t8, $a3, 8
/* 0248F8 004248F8 0007CC02 */  srl         $t9, $a3, 16
/* 0248FC 004248FC 00075E02 */  srl         $t3, $a3, 24
/* 024900 00424900 A08BFFF3 */  sb          $t3, -0xD($a0)
/* 024904 00424904 A099FFF2 */  sb          $t9, -0xE($a0)
/* 024908 00424908 A098FFF1 */  sb          $t8, -0xF($a0)
/* 02490C 0042490C A087FFF0 */  sb          $a3, -0x10($a0)
/* 024910 00424910 8CA8FFF4 */  lw          $t0, -0xC($a1)
/* 024914 00424914 00086202 */  srl         $t4, $t0, 8
/* 024918 00424918 00086C02 */  srl         $t5, $t0, 16
/* 02491C 0042491C 00087602 */  srl         $t6, $t0, 24
/* 024920 00424920 A08EFFF7 */  sb          $t6, -0x9($a0)
/* 024924 00424924 A08DFFF6 */  sb          $t5, -0xA($a0)
/* 024928 00424928 A08CFFF5 */  sb          $t4, -0xB($a0)
/* 02492C 0042492C A088FFF4 */  sb          $t0, -0xC($a0)
/* 024930 00424930 8CA9FFF8 */  lw          $t1, -0x8($a1)
/* 024934 00424934 00097A02 */  srl         $t7, $t1, 8
/* 024938 00424938 0009C402 */  srl         $t8, $t1, 16
/* 02493C 0042493C 0009CE02 */  srl         $t9, $t1, 24
/* 024940 00424940 A099FFFB */  sb          $t9, -0x5($a0)
/* 024944 00424944 A098FFFA */  sb          $t8, -0x6($a0)
/* 024948 00424948 A08FFFF9 */  sb          $t7, -0x7($a0)
/* 02494C 0042494C A089FFF8 */  sb          $t1, -0x8($a0)
/* 024950 00424950 90ABFFFC */  lbu         $t3, -0x4($a1)
/* 024954 00424954 A08BFFFC */  sb          $t3, -0x4($a0)
/* 024958 00424958 90ACFFFD */  lbu         $t4, -0x3($a1)
/* 02495C 0042495C A08CFFFD */  sb          $t4, -0x3($a0)
/* 024960 00424960 94AAFFFE */  lhu         $t2, -0x2($a1)
/* 024964 00424964 000A6A03 */  sra         $t5, $t2, 8
/* 024968 00424968 A08DFFFF */  sb          $t5, -0x1($a0)
/* 02496C 0042496C A08AFFFE */  sb          $t2, -0x2($a0)
/* 024970 00424970 8FAE0014 */  lw          $t6, 0x14($sp)
/* 024974 00424974 00AE082B */  sltu        $at, $a1, $t6
/* 024978 00424978 1420FFDB */  bnez        $at, .L004248E8
/* 02497C 0042497C 00000000 */   nop
/* 024980 00424980 03E00008 */  jr          $ra
/* 024984 00424984 27BD0018 */   addiu      $sp, $sp, 0x18
