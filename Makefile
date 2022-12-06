MAKEFLAGS += --no-builtin-rules

DISASM_COMMAND := python3 -m spimdisasm.elfObjDisasm --no-emit-cpload --Mreg-names o32 --no-use-fpccsr --aggressive-string-guesser

all: check

setup:
	make -C tools/recomp setup
	make -C tools/recomp VERSION=5.3
	make -C tools/recomp VERSION=7.1

disasm:
	$(RM) asm
	$(DISASM_COMMAND) --split-functions asm/functions --save-context context/makerom.csv makerom asm/makerom

CHECK_WARNINGS_ON := -Wall -Wextra
CHECK_WARNINGS_OFF := -Wno-unknown-pragmas -Wno-unused-variable -Wno-unused-parameter
CHECK_CC := gcc

check:
	$(CHECK_CC) -fno-builtin -fsyntax-only -funsigned-char -std=gnu89 -m32 -DNON_MATCHING -DCC_CHECK=1 -nostdinc -Iinclude -Iinclude/indy -Isrc $(CHECK_WARNINGS_ON) $(CHECK_WARNINGS_OFF) -D_MIPS_FPSET=16 -D_MIPS_ISA=2 -D_ABIO32=1 -D_MIPS_SIM=_ABIO32 -D_MIPS_SZINT=32 -D_MIPS_SZLONG=32 -D_MIPS_SZPTR=32 -D__EXTENSIONS__ -DLANGUAGE_C -D_LANGUAGE_C -D__INLINE_INTRINSICS -Dsgi -D__sgi -Dunix -Dmips -Dhost_mips -D__unix -D__host_mips -D_SVR4_SOURCE -D_MODERN_C -D_SGI_SOURCE -D__DSO__ -DSYSTYPE_SVR4 -D_SYSTYPE_SVR4 -D_LONGLONG -D__mips=2 -D_MIPSEB -DMIPSEB -D_CFE -DPERMUTER=1 src/makerom.c

.PHONY: all setup disasm check
