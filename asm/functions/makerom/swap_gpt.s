glabel swap_gpt # 509
/* 032A90 00432A90 18A0001D */  blez        $a1, .L00432B08
/* 032A94 00432A94 AFA60008 */   sw         $a2, 0x8($sp)
/* 032A98 00432A98 000570C0 */  sll         $t6, $a1, 3
/* 032A9C 00432A9C 01C43021 */  addu        $a2, $t6, $a0
/* 032AA0 00432AA0 00801025 */  move        $v0, $a0
/* 032AA4 00432AA4 3C0700FF */  lui         $a3, (0xFF0000 >> 16)
.L00432AA8:
/* 032AA8 00432AA8 8C430000 */  lw          $v1, 0x0($v0)
/* 032AAC 00432AAC 8C440004 */  lw          $a0, 0x4($v0)
/* 032AB0 00432AB0 24420008 */  addiu       $v0, $v0, 0x8
/* 032AB4 00432AB4 0003C200 */  sll         $t8, $v1, 8
/* 032AB8 00432AB8 0307C824 */  and         $t9, $t8, $a3
/* 032ABC 00432ABC 00037E00 */  sll         $t7, $v1, 24
/* 032AC0 00432AC0 01F94025 */  or          $t0, $t7, $t9
/* 032AC4 00432AC4 00034A03 */  sra         $t1, $v1, 8
/* 032AC8 00432AC8 312AFF00 */  andi        $t2, $t1, 0xFF00
/* 032ACC 00432ACC 010A5825 */  or          $t3, $t0, $t2
/* 032AD0 00432AD0 0004C200 */  sll         $t8, $a0, 8
/* 032AD4 00432AD4 03077824 */  and         $t7, $t8, $a3
/* 032AD8 00432AD8 00036602 */  srl         $t4, $v1, 24
/* 032ADC 00432ADC 00044A03 */  sra         $t1, $a0, 8
/* 032AE0 00432AE0 00047600 */  sll         $t6, $a0, 24
/* 032AE4 00432AE4 018B6825 */  or          $t5, $t4, $t3
/* 032AE8 00432AE8 01CFC825 */  or          $t9, $t6, $t7
/* 032AEC 00432AEC 3128FF00 */  andi        $t0, $t1, 0xFF00
/* 032AF0 00432AF0 03285025 */  or          $t2, $t9, $t0
/* 032AF4 00432AF4 00046602 */  srl         $t4, $a0, 24
/* 032AF8 00432AF8 018A5825 */  or          $t3, $t4, $t2
/* 032AFC 00432AFC AC4DFFF8 */  sw          $t5, -0x8($v0)
/* 032B00 00432B00 1446FFE9 */  bne         $v0, $a2, .L00432AA8
/* 032B04 00432B04 AC4BFFFC */   sw         $t3, -0x4($v0)
.L00432B08:
/* 032B08 00432B08 03E00008 */  jr          $ra
/* 032B0C 00432B0C 00000000 */   nop
