glabel obj_rldversion_string # 354
/* 02F670 0042F670 8C830148 */  lw          $v1, 0x148($a0)
/* 02F674 0042F674 8C8E0160 */  lw          $t6, 0x160($a0)
/* 02F678 0042F678 01C3082B */  sltu        $at, $t6, $v1
/* 02F67C 0042F67C 50200004 */  beql        $at, $zero, .L0042F690
/* 02F680 0042F680 8C8F011C */   lw         $t7, 0x11C($a0)
/* 02F684 0042F684 03E00008 */  jr          $ra
/* 02F688 0042F688 8C82011C */   lw         $v0, 0x11C($a0)
/* 02F68C 0042F68C 8C8F011C */  lw          $t7, 0x11C($a0)
.L0042F690:
/* 02F690 0042F690 01E31021 */  addu        $v0, $t7, $v1
/* 02F694 0042F694 03E00008 */  jr          $ra
/* 02F698 0042F698 00000000 */   nop
