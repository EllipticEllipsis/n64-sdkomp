glabel obj_unset_cxx_flags # 390
/* 02F838 0042F838 8C8E01C8 */  lw          $t6, 0x1C8($a0)
/* 02F83C 0042F83C 00A07827 */  not         $t7, $a1
/* 02F840 0042F840 01CFC024 */  and         $t8, $t6, $t7
/* 02F844 0042F844 03E00008 */  jr          $ra
/* 02F848 0042F848 AC9801C8 */   sw         $t8, 0x1C8($a0)
