glabel file_cline # 538
/* 03438C 0043438C 8C9900D0 */  lw          $t9, 0xD0($a0)
/* 034390 00434390 8C8E00A0 */  lw          $t6, 0xA0($a0)
/* 034394 00434394 000578C0 */  sll         $t7, $a1, 3
/* 034398 00434398 001940C0 */  sll         $t0, $t9, 3
/* 03439C 0043439C 01E57821 */  addu        $t7, $t7, $a1
/* 0343A0 004343A0 01194021 */  addu        $t0, $t0, $t9
/* 0343A4 004343A4 000840C0 */  sll         $t0, $t0, 3
/* 0343A8 004343A8 000F78C0 */  sll         $t7, $t7, 3
/* 0343AC 004343AC 00084823 */  negu        $t1, $t0
/* 0343B0 004343B0 01CFC021 */  addu        $t8, $t6, $t7
/* 0343B4 004343B4 03095021 */  addu        $t2, $t8, $t1
/* 0343B8 004343B8 03E00008 */  jr          $ra
/* 0343BC 004343BC 8D42001C */   lw         $v0, 0x1C($t2)
