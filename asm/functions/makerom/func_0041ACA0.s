glabel func_0041ACA0 # 88
/* 01ACA0 0041ACA0 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 01ACA4 0041ACA4 279C80C0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF80C0
/* 01ACA8 0041ACA8 0399E021 */  addu        $gp, $gp, $t9
/* 01ACAC 0041ACAC 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 01ACB0 0041ACB0 AFA40060 */  sw          $a0, 0x60($sp)
/* 01ACB4 0041ACB4 AFA60068 */  sw          $a2, 0x68($sp)
/* 01ACB8 0041ACB8 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01ACBC 0041ACBC 8FAF0068 */  lw          $t7, 0x68($sp)
/* 01ACC0 0041ACC0 AFA50064 */  sw          $a1, 0x64($sp)
/* 01ACC4 0041ACC4 AFAE005C */  sw          $t6, 0x5C($sp)
/* 01ACC8 0041ACC8 000FC180 */  sll         $t8, $t7, 6
/* 01ACCC 0041ACCC 8FA80064 */  lw          $t0, 0x64($sp)
/* 01ACD0 0041ACD0 8FAA005C */  lw          $t2, 0x5C($sp)
/* 01ACD4 0041ACD4 01D8C821 */  addu        $t9, $t6, $t8
/* 01ACD8 0041ACD8 AFB00014 */  sw          $s0, 0x14($sp)
/* 01ACDC 0041ACDC AFB90060 */  sw          $t9, 0x60($sp)
/* 01ACE0 0041ACE0 272BFFC0 */  addiu       $t3, $t9, -0x40
/* 01ACE4 0041ACE4 01184821 */  addu        $t1, $t0, $t8
/* 01ACE8 0041ACE8 0159802B */  sltu        $s0, $t2, $t9
/* 01ACEC 0041ACEC AFBF001C */  sw          $ra, 0x1C($sp)
/* 01ACF0 0041ACF0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01ACF4 0041ACF4 AFA90064 */  sw          $t1, 0x64($sp)
/* 01ACF8 0041ACF8 120001E0 */  beqz        $s0, .L0041B47C
/* 01ACFC 0041ACFC AFAB0060 */   sw         $t3, 0x60($sp)
.L0041AD00:
/* 01AD00 0041AD00 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01AD04 0041AD04 8FA90060 */  lw          $t1, 0x60($sp)
/* 01AD08 0041AD08 24040000 */  addiu       $a0, $zero, 0x0
/* 01AD0C 0041AD0C 258DFFC0 */  addiu       $t5, $t4, -0x40
/* 01AD10 0041AD10 AFAD0064 */  sw          $t5, 0x64($sp)
/* 01AD14 0041AD14 91AE003F */  lbu         $t6, 0x3F($t5)
/* 01AD18 0041AD18 91AF003E */  lbu         $t7, 0x3E($t5)
/* 01AD1C 0041AD1C 24060000 */  addiu       $a2, $zero, 0x0
/* 01AD20 0041AD20 000E4200 */  sll         $t0, $t6, 8
/* 01AD24 0041AD24 01E8C021 */  addu        $t8, $t7, $t0
/* 01AD28 0041AD28 A538003E */  sh          $t8, 0x3E($t1)
/* 01AD2C 0041AD2C 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01AD30 0041AD30 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01AD34 0041AD34 24070008 */  addiu       $a3, $zero, 0x8
/* 01AD38 0041AD38 914B003D */  lbu         $t3, 0x3D($t2)
/* 01AD3C 0041AD3C 9159003C */  lbu         $t9, 0x3C($t2)
/* 01AD40 0041AD40 000B6200 */  sll         $t4, $t3, 8
/* 01AD44 0041AD44 032C6821 */  addu        $t5, $t9, $t4
/* 01AD48 0041AD48 A5CD003C */  sh          $t5, 0x3C($t6)
/* 01AD4C 0041AD4C 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01AD50 0041AD50 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01AD54 0041AD54 91F8003B */  lbu         $t8, 0x3B($t7)
/* 01AD58 0041AD58 91E8003A */  lbu         $t0, 0x3A($t7)
/* 01AD5C 0041AD5C 00184A00 */  sll         $t1, $t8, 8
/* 01AD60 0041AD60 01095021 */  addu        $t2, $t0, $t1
/* 01AD64 0041AD64 A56A003A */  sh          $t2, 0x3A($t3)
/* 01AD68 0041AD68 8FB90064 */  lw          $t9, 0x64($sp)
/* 01AD6C 0041AD6C 8FB80060 */  lw          $t8, 0x60($sp)
/* 01AD70 0041AD70 932D0039 */  lbu         $t5, 0x39($t9)
/* 01AD74 0041AD74 932C0038 */  lbu         $t4, 0x38($t9)
/* 01AD78 0041AD78 000D7200 */  sll         $t6, $t5, 8
/* 01AD7C 0041AD7C 018E7821 */  addu        $t7, $t4, $t6
/* 01AD80 0041AD80 A70F0038 */  sh          $t7, 0x38($t8)
/* 01AD84 0041AD84 8FA80064 */  lw          $t0, 0x64($sp)
/* 01AD88 0041AD88 8FAD0060 */  lw          $t5, 0x60($sp)
/* 01AD8C 0041AD8C 910A0037 */  lbu         $t2, 0x37($t0)
/* 01AD90 0041AD90 91090036 */  lbu         $t1, 0x36($t0)
/* 01AD94 0041AD94 000A5A00 */  sll         $t3, $t2, 8
/* 01AD98 0041AD98 012BC821 */  addu        $t9, $t1, $t3
/* 01AD9C 0041AD9C A5B90036 */  sh          $t9, 0x36($t5)
/* 01ADA0 0041ADA0 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01ADA4 0041ADA4 8FAA0060 */  lw          $t2, 0x60($sp)
/* 01ADA8 0041ADA8 918F0035 */  lbu         $t7, 0x35($t4)
/* 01ADAC 0041ADAC 918E0034 */  lbu         $t6, 0x34($t4)
/* 01ADB0 0041ADB0 000FC200 */  sll         $t8, $t7, 8
/* 01ADB4 0041ADB4 01D84021 */  addu        $t0, $t6, $t8
/* 01ADB8 0041ADB8 A5480034 */  sh          $t0, 0x34($t2)
/* 01ADBC 0041ADBC 8FA90064 */  lw          $t1, 0x64($sp)
/* 01ADC0 0041ADC0 912B0033 */  lbu         $t3, 0x33($t1)
/* 01ADC4 0041ADC4 912D0032 */  lbu         $t5, 0x32($t1)
/* 01ADC8 0041ADC8 912E0031 */  lbu         $t6, 0x31($t1)
/* 01ADCC 0041ADCC 000BCA00 */  sll         $t9, $t3, 8
/* 01ADD0 0041ADD0 032D6021 */  addu        $t4, $t9, $t5
/* 01ADD4 0041ADD4 912A0030 */  lbu         $t2, 0x30($t1)
/* 01ADD8 0041ADD8 000C7A00 */  sll         $t7, $t4, 8
/* 01ADDC 0041ADDC 8FB90060 */  lw          $t9, 0x60($sp)
/* 01ADE0 0041ADE0 01EEC021 */  addu        $t8, $t7, $t6
/* 01ADE4 0041ADE4 00184200 */  sll         $t0, $t8, 8
/* 01ADE8 0041ADE8 01485821 */  addu        $t3, $t2, $t0
/* 01ADEC 0041ADEC AF2B0030 */  sw          $t3, 0x30($t9)
/* 01ADF0 0041ADF0 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01ADF4 0041ADF4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01ADF8 0041ADF8 91AC002F */  lbu         $t4, 0x2F($t5)
/* 01ADFC 0041ADFC 0320F809 */  jalr        $t9
/* 01AE00 0041AE00 01802825 */   move       $a1, $t4
/* 01AE04 0041AE04 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01AE08 0041AE08 AFA20020 */  sw          $v0, 0x20($sp)
/* 01AE0C 0041AE0C AFA30024 */  sw          $v1, 0x24($sp)
/* 01AE10 0041AE10 91EE002E */  lbu         $t6, 0x2E($t7)
/* 01AE14 0041AE14 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01AE18 0041AE18 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01AE1C 0041AE1C 01C0C825 */  move        $t9, $t6
/* 01AE20 0041AE20 032B2821 */  addu        $a1, $t9, $t3
/* 01AE24 0041AE24 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AE28 0041AE28 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01AE2C 0041AE2C 000EC7C3 */  sra         $t8, $t6, 31
/* 01AE30 0041AE30 00AB082B */  sltu        $at, $a1, $t3
/* 01AE34 0041AE34 00382021 */  addu        $a0, $at, $t8
/* 01AE38 0041AE38 24060000 */  addiu       $a2, $zero, 0x0
/* 01AE3C 0041AE3C 24070008 */  addiu       $a3, $zero, 0x8
/* 01AE40 0041AE40 0320F809 */  jalr        $t9
/* 01AE44 0041AE44 008A2021 */   addu       $a0, $a0, $t2
/* 01AE48 0041AE48 8FA90064 */  lw          $t1, 0x64($sp)
/* 01AE4C 0041AE4C AFA20028 */  sw          $v0, 0x28($sp)
/* 01AE50 0041AE50 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01AE54 0041AE54 9128002D */  lbu         $t0, 0x2D($t1)
/* 01AE58 0041AE58 8FAF002C */  lw          $t7, 0x2C($sp)
/* 01AE5C 0041AE5C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01AE60 0041AE60 01006825 */  move        $t5, $t0
/* 01AE64 0041AE64 01AF2821 */  addu        $a1, $t5, $t7
/* 01AE68 0041AE68 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AE6C 0041AE6C 8FAE0028 */  lw          $t6, 0x28($sp)
/* 01AE70 0041AE70 000867C3 */  sra         $t4, $t0, 31
/* 01AE74 0041AE74 00AF082B */  sltu        $at, $a1, $t7
/* 01AE78 0041AE78 002C2021 */  addu        $a0, $at, $t4
/* 01AE7C 0041AE7C 24060000 */  addiu       $a2, $zero, 0x0
/* 01AE80 0041AE80 24070008 */  addiu       $a3, $zero, 0x8
/* 01AE84 0041AE84 0320F809 */  jalr        $t9
/* 01AE88 0041AE88 008E2021 */   addu       $a0, $a0, $t6
/* 01AE8C 0041AE8C 8FB80064 */  lw          $t8, 0x64($sp)
/* 01AE90 0041AE90 AFA20030 */  sw          $v0, 0x30($sp)
/* 01AE94 0041AE94 AFA30034 */  sw          $v1, 0x34($sp)
/* 01AE98 0041AE98 9319002C */  lbu         $t9, 0x2C($t8)
/* 01AE9C 0041AE9C 8FA90034 */  lw          $t1, 0x34($sp)
/* 01AEA0 0041AEA0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01AEA4 0041AEA4 03205825 */  move        $t3, $t9
/* 01AEA8 0041AEA8 001957C3 */  sra         $t2, $t9, 31
/* 01AEAC 0041AEAC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AEB0 0041AEB0 01692821 */  addu        $a1, $t3, $t1
/* 01AEB4 0041AEB4 8FA80030 */  lw          $t0, 0x30($sp)
/* 01AEB8 0041AEB8 00A9082B */  sltu        $at, $a1, $t1
/* 01AEBC 0041AEBC 002A2021 */  addu        $a0, $at, $t2
/* 01AEC0 0041AEC0 24060000 */  addiu       $a2, $zero, 0x0
/* 01AEC4 0041AEC4 24070008 */  addiu       $a3, $zero, 0x8
/* 01AEC8 0041AEC8 0320F809 */  jalr        $t9
/* 01AECC 0041AECC 00882021 */   addu       $a0, $a0, $t0
/* 01AED0 0041AED0 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01AED4 0041AED4 AFA20038 */  sw          $v0, 0x38($sp)
/* 01AED8 0041AED8 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01AEDC 0041AEDC 918D002B */  lbu         $t5, 0x2B($t4)
/* 01AEE0 0041AEE0 8FB9003C */  lw          $t9, 0x3C($sp)
/* 01AEE4 0041AEE4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01AEE8 0041AEE8 01A07825 */  move        $t7, $t5
/* 01AEEC 0041AEEC 01F92821 */  addu        $a1, $t7, $t9
/* 01AEF0 0041AEF0 00B9082B */  sltu        $at, $a1, $t9
/* 01AEF4 0041AEF4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AEF8 0041AEF8 8FB80038 */  lw          $t8, 0x38($sp)
/* 01AEFC 0041AEFC 000D77C3 */  sra         $t6, $t5, 31
/* 01AF00 0041AF00 002E2021 */  addu        $a0, $at, $t6
/* 01AF04 0041AF04 24060000 */  addiu       $a2, $zero, 0x0
/* 01AF08 0041AF08 24070008 */  addiu       $a3, $zero, 0x8
/* 01AF0C 0041AF0C 0320F809 */  jalr        $t9
/* 01AF10 0041AF10 00982021 */   addu       $a0, $a0, $t8
/* 01AF14 0041AF14 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01AF18 0041AF18 AFA20040 */  sw          $v0, 0x40($sp)
/* 01AF1C 0041AF1C AFA30044 */  sw          $v1, 0x44($sp)
/* 01AF20 0041AF20 914B002A */  lbu         $t3, 0x2A($t2)
/* 01AF24 0041AF24 8FAD0044 */  lw          $t5, 0x44($sp)
/* 01AF28 0041AF28 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01AF2C 0041AF2C 01604825 */  move        $t1, $t3
/* 01AF30 0041AF30 012D2821 */  addu        $a1, $t1, $t5
/* 01AF34 0041AF34 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AF38 0041AF38 8FAC0040 */  lw          $t4, 0x40($sp)
/* 01AF3C 0041AF3C 000B47C3 */  sra         $t0, $t3, 31
/* 01AF40 0041AF40 00AD082B */  sltu        $at, $a1, $t5
/* 01AF44 0041AF44 00282021 */  addu        $a0, $at, $t0
/* 01AF48 0041AF48 24060000 */  addiu       $a2, $zero, 0x0
/* 01AF4C 0041AF4C 24070008 */  addiu       $a3, $zero, 0x8
/* 01AF50 0041AF50 0320F809 */  jalr        $t9
/* 01AF54 0041AF54 008C2021 */   addu       $a0, $a0, $t4
/* 01AF58 0041AF58 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01AF5C 0041AF5C AFA20048 */  sw          $v0, 0x48($sp)
/* 01AF60 0041AF60 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01AF64 0041AF64 91CF0029 */  lbu         $t7, 0x29($t6)
/* 01AF68 0041AF68 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01AF6C 0041AF6C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01AF70 0041AF70 01E0C825 */  move        $t9, $t7
/* 01AF74 0041AF74 032B2821 */  addu        $a1, $t9, $t3
/* 01AF78 0041AF78 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AF7C 0041AF7C 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01AF80 0041AF80 000FC7C3 */  sra         $t8, $t7, 31
/* 01AF84 0041AF84 00AB082B */  sltu        $at, $a1, $t3
/* 01AF88 0041AF88 00382021 */  addu        $a0, $at, $t8
/* 01AF8C 0041AF8C 24060000 */  addiu       $a2, $zero, 0x0
/* 01AF90 0041AF90 24070008 */  addiu       $a3, $zero, 0x8
/* 01AF94 0041AF94 0320F809 */  jalr        $t9
/* 01AF98 0041AF98 008A2021 */   addu       $a0, $a0, $t2
/* 01AF9C 0041AF9C 8FA80064 */  lw          $t0, 0x64($sp)
/* 01AFA0 0041AFA0 AFA20050 */  sw          $v0, 0x50($sp)
/* 01AFA4 0041AFA4 AFA30054 */  sw          $v1, 0x54($sp)
/* 01AFA8 0041AFA8 91090028 */  lbu         $t1, 0x28($t0)
/* 01AFAC 0041AFAC 8FAF0054 */  lw          $t7, 0x54($sp)
/* 01AFB0 0041AFB0 8FAE0050 */  lw          $t6, 0x50($sp)
/* 01AFB4 0041AFB4 01206825 */  move        $t5, $t1
/* 01AFB8 0041AFB8 8FAA0060 */  lw          $t2, 0x60($sp)
/* 01AFBC 0041AFBC 01AFC821 */  addu        $t9, $t5, $t7
/* 01AFC0 0041AFC0 000967C3 */  sra         $t4, $t1, 31
/* 01AFC4 0041AFC4 032F082B */  sltu        $at, $t9, $t7
/* 01AFC8 0041AFC8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01AFCC 0041AFCC 002CC021 */  addu        $t8, $at, $t4
/* 01AFD0 0041AFD0 030EC021 */  addu        $t8, $t8, $t6
/* 01AFD4 0041AFD4 AD580028 */  sw          $t8, 0x28($t2)
/* 01AFD8 0041AFD8 AD59002C */  sw          $t9, 0x2C($t2)
/* 01AFDC 0041AFDC 8FAB0064 */  lw          $t3, 0x64($sp)
/* 01AFE0 0041AFE0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AFE4 0041AFE4 24040000 */  addiu       $a0, $zero, 0x0
/* 01AFE8 0041AFE8 91680027 */  lbu         $t0, 0x27($t3)
/* 01AFEC 0041AFEC 24060000 */  addiu       $a2, $zero, 0x0
/* 01AFF0 0041AFF0 24070008 */  addiu       $a3, $zero, 0x8
/* 01AFF4 0041AFF4 0320F809 */  jalr        $t9
/* 01AFF8 0041AFF8 01002825 */   move       $a1, $t0
/* 01AFFC 0041AFFC 8FA90064 */  lw          $t1, 0x64($sp)
/* 01B000 0041B000 AFA20020 */  sw          $v0, 0x20($sp)
/* 01B004 0041B004 AFA30024 */  sw          $v1, 0x24($sp)
/* 01B008 0041B008 912C0026 */  lbu         $t4, 0x26($t1)
/* 01B00C 0041B00C 8FB90024 */  lw          $t9, 0x24($sp)
/* 01B010 0041B010 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B014 0041B014 01807825 */  move        $t7, $t4
/* 01B018 0041B018 01F92821 */  addu        $a1, $t7, $t9
/* 01B01C 0041B01C 00B9082B */  sltu        $at, $a1, $t9
/* 01B020 0041B020 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B024 0041B024 8FB80020 */  lw          $t8, 0x20($sp)
/* 01B028 0041B028 000C77C3 */  sra         $t6, $t4, 31
/* 01B02C 0041B02C 002E2021 */  addu        $a0, $at, $t6
/* 01B030 0041B030 24060000 */  addiu       $a2, $zero, 0x0
/* 01B034 0041B034 24070008 */  addiu       $a3, $zero, 0x8
/* 01B038 0041B038 0320F809 */  jalr        $t9
/* 01B03C 0041B03C 00982021 */   addu       $a0, $a0, $t8
/* 01B040 0041B040 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01B044 0041B044 AFA20028 */  sw          $v0, 0x28($sp)
/* 01B048 0041B048 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01B04C 0041B04C 91AA0025 */  lbu         $t2, 0x25($t5)
/* 01B050 0041B050 8FAD002C */  lw          $t5, 0x2C($sp)
/* 01B054 0041B054 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B058 0041B058 01404825 */  move        $t1, $t2
/* 01B05C 0041B05C 012D2821 */  addu        $a1, $t1, $t5
/* 01B060 0041B060 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B064 0041B064 8FAC0028 */  lw          $t4, 0x28($sp)
/* 01B068 0041B068 000A47C3 */  sra         $t0, $t2, 31
/* 01B06C 0041B06C 00AD082B */  sltu        $at, $a1, $t5
/* 01B070 0041B070 00282021 */  addu        $a0, $at, $t0
/* 01B074 0041B074 24060000 */  addiu       $a2, $zero, 0x0
/* 01B078 0041B078 24070008 */  addiu       $a3, $zero, 0x8
/* 01B07C 0041B07C 0320F809 */  jalr        $t9
/* 01B080 0041B080 008C2021 */   addu       $a0, $a0, $t4
/* 01B084 0041B084 8FAB0064 */  lw          $t3, 0x64($sp)
/* 01B088 0041B088 AFA20030 */  sw          $v0, 0x30($sp)
/* 01B08C 0041B08C AFA30034 */  sw          $v1, 0x34($sp)
/* 01B090 0041B090 916E0024 */  lbu         $t6, 0x24($t3)
/* 01B094 0041B094 8FAB0034 */  lw          $t3, 0x34($sp)
/* 01B098 0041B098 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B09C 0041B09C 01C0C825 */  move        $t9, $t6
/* 01B0A0 0041B0A0 032B2821 */  addu        $a1, $t9, $t3
/* 01B0A4 0041B0A4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B0A8 0041B0A8 8FAA0030 */  lw          $t2, 0x30($sp)
/* 01B0AC 0041B0AC 000EC7C3 */  sra         $t8, $t6, 31
/* 01B0B0 0041B0B0 00AB082B */  sltu        $at, $a1, $t3
/* 01B0B4 0041B0B4 00382021 */  addu        $a0, $at, $t8
/* 01B0B8 0041B0B8 24060000 */  addiu       $a2, $zero, 0x0
/* 01B0BC 0041B0BC 24070008 */  addiu       $a3, $zero, 0x8
/* 01B0C0 0041B0C0 0320F809 */  jalr        $t9
/* 01B0C4 0041B0C4 008A2021 */   addu       $a0, $a0, $t2
/* 01B0C8 0041B0C8 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01B0CC 0041B0CC AFA20038 */  sw          $v0, 0x38($sp)
/* 01B0D0 0041B0D0 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01B0D4 0041B0D4 91E80023 */  lbu         $t0, 0x23($t7)
/* 01B0D8 0041B0D8 8FAF003C */  lw          $t7, 0x3C($sp)
/* 01B0DC 0041B0DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B0E0 0041B0E0 01006825 */  move        $t5, $t0
/* 01B0E4 0041B0E4 01AF2821 */  addu        $a1, $t5, $t7
/* 01B0E8 0041B0E8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B0EC 0041B0EC 8FAE0038 */  lw          $t6, 0x38($sp)
/* 01B0F0 0041B0F0 000867C3 */  sra         $t4, $t0, 31
/* 01B0F4 0041B0F4 00AF082B */  sltu        $at, $a1, $t7
/* 01B0F8 0041B0F8 002C2021 */  addu        $a0, $at, $t4
/* 01B0FC 0041B0FC 24060000 */  addiu       $a2, $zero, 0x0
/* 01B100 0041B100 24070008 */  addiu       $a3, $zero, 0x8
/* 01B104 0041B104 0320F809 */  jalr        $t9
/* 01B108 0041B108 008E2021 */   addu       $a0, $a0, $t6
/* 01B10C 0041B10C 8FA90064 */  lw          $t1, 0x64($sp)
/* 01B110 0041B110 AFA20040 */  sw          $v0, 0x40($sp)
/* 01B114 0041B114 AFA30044 */  sw          $v1, 0x44($sp)
/* 01B118 0041B118 91380022 */  lbu         $t8, 0x22($t1)
/* 01B11C 0041B11C 8FA90044 */  lw          $t1, 0x44($sp)
/* 01B120 0041B120 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B124 0041B124 03005825 */  move        $t3, $t8
/* 01B128 0041B128 01692821 */  addu        $a1, $t3, $t1
/* 01B12C 0041B12C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B130 0041B130 8FA80040 */  lw          $t0, 0x40($sp)
/* 01B134 0041B134 001857C3 */  sra         $t2, $t8, 31
/* 01B138 0041B138 00A9082B */  sltu        $at, $a1, $t1
/* 01B13C 0041B13C 002A2021 */  addu        $a0, $at, $t2
/* 01B140 0041B140 24060000 */  addiu       $a2, $zero, 0x0
/* 01B144 0041B144 24070008 */  addiu       $a3, $zero, 0x8
/* 01B148 0041B148 0320F809 */  jalr        $t9
/* 01B14C 0041B14C 00882021 */   addu       $a0, $a0, $t0
/* 01B150 0041B150 8FB90064 */  lw          $t9, 0x64($sp)
/* 01B154 0041B154 AFA20048 */  sw          $v0, 0x48($sp)
/* 01B158 0041B158 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01B15C 0041B15C 932C0021 */  lbu         $t4, 0x21($t9)
/* 01B160 0041B160 8FB9004C */  lw          $t9, 0x4C($sp)
/* 01B164 0041B164 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B168 0041B168 01807825 */  move        $t7, $t4
/* 01B16C 0041B16C 01F92821 */  addu        $a1, $t7, $t9
/* 01B170 0041B170 00B9082B */  sltu        $at, $a1, $t9
/* 01B174 0041B174 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B178 0041B178 8FB80048 */  lw          $t8, 0x48($sp)
/* 01B17C 0041B17C 000C77C3 */  sra         $t6, $t4, 31
/* 01B180 0041B180 002E2021 */  addu        $a0, $at, $t6
/* 01B184 0041B184 24060000 */  addiu       $a2, $zero, 0x0
/* 01B188 0041B188 24070008 */  addiu       $a3, $zero, 0x8
/* 01B18C 0041B18C 0320F809 */  jalr        $t9
/* 01B190 0041B190 00982021 */   addu       $a0, $a0, $t8
/* 01B194 0041B194 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01B198 0041B198 AFA20050 */  sw          $v0, 0x50($sp)
/* 01B19C 0041B19C AFA30054 */  sw          $v1, 0x54($sp)
/* 01B1A0 0041B1A0 91AA0020 */  lbu         $t2, 0x20($t5)
/* 01B1A4 0041B1A4 8FAD0054 */  lw          $t5, 0x54($sp)
/* 01B1A8 0041B1A8 8FAC0050 */  lw          $t4, 0x50($sp)
/* 01B1AC 0041B1AC 01404825 */  move        $t1, $t2
/* 01B1B0 0041B1B0 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01B1B4 0041B1B4 012D7821 */  addu        $t7, $t1, $t5
/* 01B1B8 0041B1B8 000A47C3 */  sra         $t0, $t2, 31
/* 01B1BC 0041B1BC 01ED082B */  sltu        $at, $t7, $t5
/* 01B1C0 0041B1C0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B1C4 0041B1C4 00287021 */  addu        $t6, $at, $t0
/* 01B1C8 0041B1C8 01CC7021 */  addu        $t6, $t6, $t4
/* 01B1CC 0041B1CC AD6E0020 */  sw          $t6, 0x20($t3)
/* 01B1D0 0041B1D0 AD6F0024 */  sw          $t7, 0x24($t3)
/* 01B1D4 0041B1D4 8FB80064 */  lw          $t8, 0x64($sp)
/* 01B1D8 0041B1D8 24040000 */  addiu       $a0, $zero, 0x0
/* 01B1DC 0041B1DC 24060000 */  addiu       $a2, $zero, 0x0
/* 01B1E0 0041B1E0 9319001F */  lbu         $t9, 0x1F($t8)
/* 01B1E4 0041B1E4 24070008 */  addiu       $a3, $zero, 0x8
/* 01B1E8 0041B1E8 03202825 */  move        $a1, $t9
/* 01B1EC 0041B1EC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B1F0 0041B1F0 0320F809 */  jalr        $t9
/* 01B1F4 0041B1F4 00000000 */   nop
/* 01B1F8 0041B1F8 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01B1FC 0041B1FC AFA20020 */  sw          $v0, 0x20($sp)
/* 01B200 0041B200 AFA30024 */  sw          $v1, 0x24($sp)
/* 01B204 0041B204 9148001E */  lbu         $t0, 0x1E($t2)
/* 01B208 0041B208 8FAF0024 */  lw          $t7, 0x24($sp)
/* 01B20C 0041B20C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B210 0041B210 01006825 */  move        $t5, $t0
/* 01B214 0041B214 01AF2821 */  addu        $a1, $t5, $t7
/* 01B218 0041B218 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B21C 0041B21C 8FAE0020 */  lw          $t6, 0x20($sp)
/* 01B220 0041B220 000867C3 */  sra         $t4, $t0, 31
/* 01B224 0041B224 00AF082B */  sltu        $at, $a1, $t7
/* 01B228 0041B228 002C2021 */  addu        $a0, $at, $t4
/* 01B22C 0041B22C 24060000 */  addiu       $a2, $zero, 0x0
/* 01B230 0041B230 24070008 */  addiu       $a3, $zero, 0x8
/* 01B234 0041B234 0320F809 */  jalr        $t9
/* 01B238 0041B238 008E2021 */   addu       $a0, $a0, $t6
/* 01B23C 0041B23C 8FA90064 */  lw          $t1, 0x64($sp)
/* 01B240 0041B240 AFA20028 */  sw          $v0, 0x28($sp)
/* 01B244 0041B244 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01B248 0041B248 912B001D */  lbu         $t3, 0x1D($t1)
/* 01B24C 0041B24C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B250 0041B250 8FAA0028 */  lw          $t2, 0x28($sp)
/* 01B254 0041B254 0160C825 */  move        $t9, $t3
/* 01B258 0041B258 000BC7C3 */  sra         $t8, $t3, 31
/* 01B25C 0041B25C 8FAB002C */  lw          $t3, 0x2C($sp)
/* 01B260 0041B260 24060000 */  addiu       $a2, $zero, 0x0
/* 01B264 0041B264 24070008 */  addiu       $a3, $zero, 0x8
/* 01B268 0041B268 032B2821 */  addu        $a1, $t9, $t3
/* 01B26C 0041B26C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B270 0041B270 00AB082B */  sltu        $at, $a1, $t3
/* 01B274 0041B274 00382021 */  addu        $a0, $at, $t8
/* 01B278 0041B278 0320F809 */  jalr        $t9
/* 01B27C 0041B27C 008A2021 */   addu       $a0, $a0, $t2
/* 01B280 0041B280 8FA80064 */  lw          $t0, 0x64($sp)
/* 01B284 0041B284 AFA20030 */  sw          $v0, 0x30($sp)
/* 01B288 0041B288 AFA30034 */  sw          $v1, 0x34($sp)
/* 01B28C 0041B28C 910C001C */  lbu         $t4, 0x1C($t0)
/* 01B290 0041B290 8FB90034 */  lw          $t9, 0x34($sp)
/* 01B294 0041B294 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B298 0041B298 01807825 */  move        $t7, $t4
/* 01B29C 0041B29C 01F92821 */  addu        $a1, $t7, $t9
/* 01B2A0 0041B2A0 00B9082B */  sltu        $at, $a1, $t9
/* 01B2A4 0041B2A4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B2A8 0041B2A8 8FB80030 */  lw          $t8, 0x30($sp)
/* 01B2AC 0041B2AC 000C77C3 */  sra         $t6, $t4, 31
/* 01B2B0 0041B2B0 002E2021 */  addu        $a0, $at, $t6
/* 01B2B4 0041B2B4 24060000 */  addiu       $a2, $zero, 0x0
/* 01B2B8 0041B2B8 24070008 */  addiu       $a3, $zero, 0x8
/* 01B2BC 0041B2BC 0320F809 */  jalr        $t9
/* 01B2C0 0041B2C0 00982021 */   addu       $a0, $a0, $t8
/* 01B2C4 0041B2C4 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01B2C8 0041B2C8 AFA20038 */  sw          $v0, 0x38($sp)
/* 01B2CC 0041B2CC AFA3003C */  sw          $v1, 0x3C($sp)
/* 01B2D0 0041B2D0 91A9001B */  lbu         $t1, 0x1B($t5)
/* 01B2D4 0041B2D4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B2D8 0041B2D8 8FA80038 */  lw          $t0, 0x38($sp)
/* 01B2DC 0041B2DC 01205825 */  move        $t3, $t1
/* 01B2E0 0041B2E0 000957C3 */  sra         $t2, $t1, 31
/* 01B2E4 0041B2E4 8FA9003C */  lw          $t1, 0x3C($sp)
/* 01B2E8 0041B2E8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B2EC 0041B2EC 24060000 */  addiu       $a2, $zero, 0x0
/* 01B2F0 0041B2F0 01692821 */  addu        $a1, $t3, $t1
/* 01B2F4 0041B2F4 00A9082B */  sltu        $at, $a1, $t1
/* 01B2F8 0041B2F8 002A2021 */  addu        $a0, $at, $t2
/* 01B2FC 0041B2FC 24070008 */  addiu       $a3, $zero, 0x8
/* 01B300 0041B300 0320F809 */  jalr        $t9
/* 01B304 0041B304 00882021 */   addu       $a0, $a0, $t0
/* 01B308 0041B308 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01B30C 0041B30C AFA20040 */  sw          $v0, 0x40($sp)
/* 01B310 0041B310 AFA30044 */  sw          $v1, 0x44($sp)
/* 01B314 0041B314 918E001A */  lbu         $t6, 0x1A($t4)
/* 01B318 0041B318 8FAB0044 */  lw          $t3, 0x44($sp)
/* 01B31C 0041B31C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B320 0041B320 01C0C825 */  move        $t9, $t6
/* 01B324 0041B324 032B2821 */  addu        $a1, $t9, $t3
/* 01B328 0041B328 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B32C 0041B32C 8FAA0040 */  lw          $t2, 0x40($sp)
/* 01B330 0041B330 000EC7C3 */  sra         $t8, $t6, 31
/* 01B334 0041B334 00AB082B */  sltu        $at, $a1, $t3
/* 01B338 0041B338 00382021 */  addu        $a0, $at, $t8
/* 01B33C 0041B33C 24060000 */  addiu       $a2, $zero, 0x0
/* 01B340 0041B340 24070008 */  addiu       $a3, $zero, 0x8
/* 01B344 0041B344 0320F809 */  jalr        $t9
/* 01B348 0041B348 008A2021 */   addu       $a0, $a0, $t2
/* 01B34C 0041B34C 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01B350 0041B350 AFA20048 */  sw          $v0, 0x48($sp)
/* 01B354 0041B354 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01B358 0041B358 91ED0019 */  lbu         $t5, 0x19($t7)
/* 01B35C 0041B35C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B360 0041B360 8FAC0048 */  lw          $t4, 0x48($sp)
/* 01B364 0041B364 01A04825 */  move        $t1, $t5
/* 01B368 0041B368 000D47C3 */  sra         $t0, $t5, 31
/* 01B36C 0041B36C 8FAD004C */  lw          $t5, 0x4C($sp)
/* 01B370 0041B370 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B374 0041B374 24060000 */  addiu       $a2, $zero, 0x0
/* 01B378 0041B378 012D2821 */  addu        $a1, $t1, $t5
/* 01B37C 0041B37C 00AD082B */  sltu        $at, $a1, $t5
/* 01B380 0041B380 00282021 */  addu        $a0, $at, $t0
/* 01B384 0041B384 24070008 */  addiu       $a3, $zero, 0x8
/* 01B388 0041B388 0320F809 */  jalr        $t9
/* 01B38C 0041B38C 008C2021 */   addu       $a0, $a0, $t4
/* 01B390 0041B390 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01B394 0041B394 AFA20050 */  sw          $v0, 0x50($sp)
/* 01B398 0041B398 AFA30054 */  sw          $v1, 0x54($sp)
/* 01B39C 0041B39C 91D80018 */  lbu         $t8, 0x18($t6)
/* 01B3A0 0041B3A0 8FA90054 */  lw          $t1, 0x54($sp)
/* 01B3A4 0041B3A4 8FA80050 */  lw          $t0, 0x50($sp)
/* 01B3A8 0041B3A8 03005825 */  move        $t3, $t8
/* 01B3AC 0041B3AC 8FB90060 */  lw          $t9, 0x60($sp)
/* 01B3B0 0041B3B0 01696821 */  addu        $t5, $t3, $t1
/* 01B3B4 0041B3B4 001857C3 */  sra         $t2, $t8, 31
/* 01B3B8 0041B3B8 01A9082B */  sltu        $at, $t5, $t1
/* 01B3BC 0041B3BC 002A6021 */  addu        $t4, $at, $t2
/* 01B3C0 0041B3C0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B3C4 0041B3C4 01886021 */  addu        $t4, $t4, $t0
/* 01B3C8 0041B3C8 AF2C0018 */  sw          $t4, 0x18($t9)
/* 01B3CC 0041B3CC AF2D001C */  sw          $t5, 0x1C($t9)
/* 01B3D0 0041B3D0 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01B3D4 0041B3D4 91EE0017 */  lbu         $t6, 0x17($t7)
/* 01B3D8 0041B3D8 91EA0016 */  lbu         $t2, 0x16($t7)
/* 01B3DC 0041B3DC 91E90015 */  lbu         $t1, 0x15($t7)
/* 01B3E0 0041B3E0 000EC200 */  sll         $t8, $t6, 8
/* 01B3E4 0041B3E4 030A5821 */  addu        $t3, $t8, $t2
/* 01B3E8 0041B3E8 91F90014 */  lbu         $t9, 0x14($t7)
/* 01B3EC 0041B3EC 000B4200 */  sll         $t0, $t3, 8
/* 01B3F0 0041B3F0 8FB80060 */  lw          $t8, 0x60($sp)
/* 01B3F4 0041B3F4 01096021 */  addu        $t4, $t0, $t1
/* 01B3F8 0041B3F8 000C6A00 */  sll         $t5, $t4, 8
/* 01B3FC 0041B3FC 032D7021 */  addu        $t6, $t9, $t5
/* 01B400 0041B400 AF0E0014 */  sw          $t6, 0x14($t8)
/* 01B404 0041B404 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01B408 0041B408 8FAF0060 */  lw          $t7, 0x60($sp)
/* 01B40C 0041B40C 91480013 */  lbu         $t0, 0x13($t2)
/* 01B410 0041B410 914B0012 */  lbu         $t3, 0x12($t2)
/* 01B414 0041B414 00084A00 */  sll         $t1, $t0, 8
/* 01B418 0041B418 01696021 */  addu        $t4, $t3, $t1
/* 01B41C 0041B41C A5EC0012 */  sh          $t4, 0x12($t7)
/* 01B420 0041B420 8FB90064 */  lw          $t9, 0x64($sp)
/* 01B424 0041B424 8FA80060 */  lw          $t0, 0x60($sp)
/* 01B428 0041B428 932E0011 */  lbu         $t6, 0x11($t9)
/* 01B42C 0041B42C 932D0010 */  lbu         $t5, 0x10($t9)
/* 01B430 0041B430 000EC200 */  sll         $t8, $t6, 8
/* 01B434 0041B434 01B85021 */  addu        $t2, $t5, $t8
/* 01B438 0041B438 A50A0010 */  sh          $t2, 0x10($t0)
/* 01B43C 0041B43C 8FA90064 */  lw          $t1, 0x64($sp)
/* 01B440 0041B440 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01B444 0041B444 11690007 */  beq         $t3, $t1, .L0041B464
/* 01B448 0041B448 00000000 */   nop
/* 01B44C 0041B44C 8F99810C */  lw          $t9, %call16(memcpy)($gp)
/* 01B450 0041B450 01602025 */  move        $a0, $t3
/* 01B454 0041B454 01202825 */  move        $a1, $t1
/* 01B458 0041B458 0320F809 */  jalr        $t9
/* 01B45C 0041B45C 24060010 */   addiu      $a2, $zero, 0x10
/* 01B460 0041B460 8FBC0018 */  lw          $gp, 0x18($sp)
.L0041B464:
/* 01B464 0041B464 8FAC0060 */  lw          $t4, 0x60($sp)
/* 01B468 0041B468 8FAF005C */  lw          $t7, 0x5C($sp)
/* 01B46C 0041B46C 2599FFC0 */  addiu       $t9, $t4, -0x40
/* 01B470 0041B470 01EC802B */  sltu        $s0, $t7, $t4
/* 01B474 0041B474 1600FE22 */  bnez        $s0, .L0041AD00
/* 01B478 0041B478 AFB90060 */   sw         $t9, 0x60($sp)
.L0041B47C:
/* 01B47C 0041B47C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01B480 0041B480 8FB00014 */  lw          $s0, 0x14($sp)
/* 01B484 0041B484 27BD0060 */  addiu       $sp, $sp, 0x60
/* 01B488 0041B488 03E00008 */  jr          $ra
/* 01B48C 0041B48C 00000000 */   nop
