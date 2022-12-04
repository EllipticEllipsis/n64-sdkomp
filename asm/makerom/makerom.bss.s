.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .bss

.balign 16

glabel B_1000B540
/* 04B53C 1000B540 */ .space 0x100

glabel B_1000B640
/* 04B63C 1000B640 */ .space 0x100

glabel B_1000B740
/* 04B73C 1000B740 */ .space 0x100

glabel B_1000B840
/* 04B83C 1000B840 */ .space 0x100

glabel B_1000B940
/* 04B93C 1000B940 */ .space 0x100

glabel B_1000BA40
/* 04BA3C 1000BA40 */ .space 0x04

glabel fileName
/* 04BA40 1000BA44 */ .space 0x04

glabel bootEntryName
/* 04BA44 1000BA48 */ .space 0x04

glabel bootStackName
/* 04BA48 1000BA4C */ .space 0x04

glabel bootStackOffset
/* 04BA4C 1000BA50 */ .space 0x04

glabel loadMap
/* 04BA50 1000BA54 */ .space 0x04

glabel gcord
/* 04BA54 1000BA58 */ .space 0x04

glabel bootBuf
/* 04BA58 1000BA5C */ .space 0x04

glabel headerBuf
/* 04BA5C 1000BA60 */ .space 0x04

glabel pif2bootBuf
/* 04BA60 1000BA64 */ .space 0x04

glabel fontBuf
/* 04BA64 1000BA68 */ .space 0x04

glabel bootWordAlignedByteSize
/* 04BA68 1000BA6C */ .space 0x04

glabel pif2bootWordAlignedByteSize
/* 04BA6C 1000BA70 */ .space 0x04

glabel headerWordAlignedByteSize
/* 04BA70 1000BA74 */ .space 0x04

glabel fontdataWordAlignedByteSize
/* 04BA74 1000BA78 */ .space 0x04

glabel irixVersion
/* 04BA78 1000BA7C */ .space 0x04

glabel B_1000BA80
/* 04BA7C 1000BA80 */ .space 0x10

glabel Address
/* 04BA8C 1000BA90 */ .space 0x04

glabel Data0
/* 04BA90 1000BA94 */ .space 0x04

glabel Data1
/* 04BA94 1000BA98 */ .space 0x04

glabel OFileName
/* 04BA98 1000BA9C */ .space 0x04

glabel AFileName
/* 04BA9C 1000BAA0 */ .space 0x04

glabel SName
/* 04BAA0 1000BAA4 */ .space 0x04

glabel LDPtr
/* 04BAA4 1000BAA8 */ .space 0x04

# Automatically generated pad
glabel B_1000BAAC
/* 04BAA8 1000BAAC */ .space 0x04

glabel SHeader
/* 04BAAC 1000BAB0 */ .space 0x28

glabel AFile
/* 04BAD4 1000BAD8 */ .space 0x04

# Automatically generated pad
glabel B_1000BADC
/* 04BAD8 1000BADC */ .space 0x04

glabel yysbuf
/* 04BADC 1000BAE0 */ .space 0x800

glabel yyleng
/* 04C2DC 1000C2E0 */ .space 0x04

# Automatically generated pad
glabel B_1000C2E4
/* 04C2E0 1000C2E4 */ .space 0x04

glabel yytext
/* 04C2E4 1000C2E8 */ .space 0x800

glabel yymorfg
/* 04CAE4 1000CAE8 */ .space 0x04

glabel yytchar
/* 04CAE8 1000CAEC */ .space 0x04

glabel yyestate
/* 04CAEC 1000CAF0 */ .space 0x04

# Automatically generated pad
glabel B_1000CAF4
/* 04CAF0 1000CAF4 */ .space 0x04

glabel yylstate
/* 04CAF4 1000CAF8 */ .space 0x2000

glabel yylsp
/* 04EAF4 1000EAF8 */ .space 0x04

glabel yyolsp
/* 04EAF8 1000EAFC */ .space 0x04

glabel yyfnd
/* 04EAFC 1000EB00 */ .space 0x04

# Automatically generated pad
glabel B_1000EB04
/* 04EB00 1000EB04 */ .space 0x0C

glabel yy_yys
/* 04EB0C 1000EB10 */ .space 0x258

glabel yy_yyv
/* 04ED64 1000ED68 */ .space 0x258

glabel yychar
/* 04EFBC 1000EFC0 */ .space 0x04

glabel yyerrflag
/* 04EFC0 1000EFC4 */ .space 0x04

glabel yylval
/* 04EFC4 1000EFC8 */ .space 0x04

glabel yyval
/* 04EFC8 1000EFCC */ .space 0x04

glabel yydebug
/* 04EFCC 1000EFD0 */ .space 0x04

glabel yypv
/* 04EFD0 1000EFD4 */ .space 0x04

glabel yyps
/* 04EFD4 1000EFD8 */ .space 0x04

glabel yystate
/* 04EFD8 1000EFDC */ .space 0x04

glabel yytmp
/* 04EFDC 1000EFE0 */ .space 0x04

glabel yynerrs
/* 04EFE0 1000EFE4 */ .space 0x04

glabel bootAddress
/* 04EFE4 1000EFE8 */ .space 0x04

glabel B_1000EFEC
/* 04EFE8 1000EFEC */ .space 0x04

glabel B_1000EFF0
/* 04EFEC 1000EFF0 */ .space 0x04

glabel B_1000EFF4
/* 04EFF0 1000EFF4 */ .space 0x04

glabel B_1000EFF8
/* 04EFF4 1000EFF8 */ .space 0x04

glabel B_1000EFFC
/* 04EFF8 1000EFFC */ .space 0x04

glabel B_1000F000
/* 04EFFC 1000F000 */ .space 0x10

glabel _elf_page_size
/* 04F00C 1000F010 */ .space 0x04

# Automatically generated pad
glabel B_1000F014
/* 04F010 1000F014 */ .space 0x0C

glabel B_1000F020
/* 04F01C 1000F020 */ .space 0x08

glabel B_1000F028
/* 04F024 1000F028 */ .space 0x108

glabel B_1000F130
/* 04F12C 1000F130 */ .space 0x04

glabel B_1000F134
/* 04F130 1000F134 */ .space 0x04

glabel B_1000F138
/* 04F134 1000F138 */ .space 0x04

glabel B_1000F13C
/* 04F138 1000F13C */ .space 0x04

glabel B_1000F140
/* 04F13C 1000F140 */ .space 0x100

glabel B_1000F240
/* 04F23C 1000F240 */ .space 0x04

glabel B_1000F244
/* 04F240 1000F244 */ .space 0x04

glabel B_1000F248
/* 04F244 1000F248 */ .space 0x04

glabel B_1000F24C
/* 04F248 1000F24C */ .space 0x04

glabel B_1000F250
/* 04F24C 1000F250 */ .space 0x340

glabel B_1000F590
/* 04F58C 1000F590 */ .space 0x04

glabel B_1000F594
/* 04F590 1000F594 */ .space 0x04

glabel B_1000F598
/* 04F594 1000F598 */ .space 0x08

glabel B_1000F5A0
/* 04F59C 1000F5A0 */ .space 0x04

glabel B_1000F5A4
/* 04F5A0 1000F5A4 */ .space 0x04

glabel B_1000F5A8
/* 04F5A4 1000F5A8 */ .space 0x04

glabel B_1000F5AC
/* 04F5A8 1000F5AC */ .space 0x04

glabel B_1000F5B0
/* 04F5AC 1000F5B0 */ .space 0x04

glabel B_1000F5B4
/* 04F5B0 1000F5B4 */ .space 0x04

glabel B_1000F5B8
/* 04F5B4 1000F5B8 */ .space 0x04

glabel B_1000F5BC
/* 04F5B8 1000F5BC */ .space 0x04

glabel B_1000F5C0
/* 04F5BC 1000F5C0 */ .space 0x04

glabel B_1000F5C4
/* 04F5C0 1000F5C4 */ .space 0x04

glabel B_1000F5C8
/* 04F5C4 1000F5C8 */ .space 0x04

glabel B_1000F5CC
/* 04F5C8 1000F5CC */ .space 0x04

glabel B_1000F5D0
/* 04F5CC 1000F5D0 */ .space 0x04

glabel B_1000F5D4
/* 04F5D0 1000F5D4 */ .space 0x1C

glabel B_1000F5F0
/* 04F5EC 1000F5F0 */ .space 0x08

glabel B_1000F5F8
/* 04F5F4 1000F5F8 */ .space 0x88

glabel B_1000F680
/* 04F67C 1000F680 */ .space 0x88

glabel B_1000F708
/* 04F704 1000F708 */ .space 0xFC4

glabel B_100106CC
/* 0506C8 100106CC */ .space 0x04

glabel B_100106D0
/* 0506CC 100106D0 */ .space 0x04

glabel B_100106D4
/* 0506D0 100106D4 */ .space 0x0C

glabel B_100106E0
/* 0506DC 100106E0 */ .space 0x48

glabel B_10010728
/* 050724 10010728 */ .space 0x40

glabel B_10010768
/* 050764 10010768 */ .space 0x44

glabel B_100107AC
/* 0507A8 100107AC */ .space 0x04

glabel B_100107B0
/* 0507AC 100107B0 */ .space 0x04

glabel B_100107B4
/* 0507B0 100107B4 */ .space 0x04

glabel B_100107B8
/* 0507B4 100107B8 */ .space 0x20

glabel B_100107D8
/* 0507D4 100107D8 */ .space 0x08

glabel B_100107E0
/* 0507DC 100107E0 */ .space 0x40

glabel B_10010820
/* 05081C 10010820 */ .space 0x04

glabel B_10010824
/* 050820 10010824 */ .space 0x04

glabel B_10010828
/* 050824 10010828 */ .space 0x04

glabel B_1001082C
/* 050828 1001082C */ .space 0x04

glabel B_10010830
/* 05082C 10010830 */ .space 0x04

glabel B_10010834
/* 050830 10010834 */ .space 0x0C

glabel __Argv
/* 05083C 10010840 */ .space 0x04

glabel __rld_obj_head
/* 050840 10010844 */ .space 0x04

glabel __Argc
/* 050844 10010848 */ .space 0x04

# Automatically generated pad
glabel B_1001084C
/* 050848 1001084C */ .space 0x04

glabel st_pchdr
/* 05084C 10010850 */ .space 0x04

glabel pcfdcur
/* 050850 10010854 */ .space 0x04

glabel Uc
/* 050854 10010858 */ .space 0x20

glabel usertype
/* 050874 10010878 */ .space 0x800

glabel usersymbol
/* 051074 10011078 */ .space 0x1800
