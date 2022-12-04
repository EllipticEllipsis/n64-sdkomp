#ifndef __LIBELF_H__
#define __LIBELF_H__

/*	Copyright (c) 1988 AT&T	*/
/*	  All Rights Reserved  	*/

/*	THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF AT&T	*/
/*	The copyright notice above does not evidence any   	*/
/*	actual or intended publication of such source code.	*/

#if (defined(_LANGUAGE_C) || defined(_LANGUAGE_C_PLUS_PLUS))

#include <sys/types.h>
#include <elf.h>

#ifdef __STDC__
	typedef void		Elf_Void;
#else
	typedef char		Elf_Void;
#endif


/*	commands
 */

typedef enum {
	ELF_C_NULL = 0,	/* must be first, 0 */
	ELF_C_READ,
	ELF_C_WRITE,
	ELF_C_CLR,
	ELF_C_SET,
	ELF_C_FDDONE,
	ELF_C_FDREAD,
	ELF_C_RDWR,
	ELF_C_NUM	/* must be last */
} Elf_Cmd;


/*	flags
 */

#define ELF_F_DIRTY	0x1
#define ELF_F_LAYOUT	0x4


/*	file types
 */

typedef enum {
	ELF_K_NONE = 0,	/* must be first, 0 */
	ELF_K_AR,
	ELF_K_COFF,
	ELF_K_ELF,
	ELF_K_NUM	/* must be last */
} Elf_Kind;


/*	translation types
 */

typedef enum {
	ELF_T_BYTE = 0,	/* must be first, 0 */
	ELF_T_ADDR,
	ELF_T_DYN,
	ELF_T_EHDR,
	ELF_T_HALF,
	ELF_T_OFF,
	ELF_T_PHDR,
	ELF_T_RELA,
	ELF_T_REL,
	ELF_T_SHDR,
	ELF_T_SWORD,
	ELF_T_SXWORD,
	ELF_T_SYM,
	ELF_T_WORD,
	ELF_T_XWORD,
	ELF_T_NUM	/* must be last */
} Elf_Type;


typedef struct Elf	Elf;
typedef struct Elf_Scn	Elf_Scn;


/*	archive member header
 */

typedef struct {
	char		*ar_name;
	time_t		ar_date;
	uid_t	 	ar_uid;
	gid_t 		ar_gid;
	mode_t		ar_mode;
	off_t		ar_size;
	char 		*ar_rawname;
} Elf_Arhdr;


/*	archive symbol table
 */

typedef struct {
	char		*as_name;
	size_t		as_off;
	unsigned long	as_hash;	/* as computed by elf_hash() */
} Elf_Arsym;


/*	data descriptor
 */

typedef struct {
	Elf_Void	*d_buf;
	Elf_Type	d_type;
	size_t		d_size;
	off_t		d_off;		/* offset into section */
	size_t		d_align;	/* alignment in section */
	unsigned	d_version;	/* elf version */
} Elf_Data;


/*	function declarations
 */

#ifdef __cplusplus
extern "C" {
#endif

Elf		*elf_begin	(int, Elf_Cmd, Elf *);
int		elf_cntl	(Elf *, Elf_Cmd);
int		elf_end		(Elf *);
const char	*elf_errmsg	(int);
int		elf_errno	(void);
void		elf_fill	(int);
unsigned	elf_flagdata	(Elf_Data *, Elf_Cmd, unsigned);
unsigned	elf_flagehdr	(Elf *, Elf_Cmd,  unsigned);
unsigned	elf_flagelf	(Elf *, Elf_Cmd, unsigned);
unsigned	elf_flagphdr	(Elf *, Elf_Cmd, unsigned);
unsigned	elf_flagscn	(Elf_Scn *, Elf_Cmd, unsigned);
unsigned	elf_flagshdr	(Elf_Scn *, Elf_Cmd, unsigned);
size_t		elf32_fsize	(Elf_Type, size_t, unsigned);
size_t		elf64_fsize	(Elf_Type, size_t, unsigned);
Elf_Arhdr	*elf_getarhdr	(Elf *);
Elf_Arsym	*elf_getarsym	(Elf *, size_t *);
off_t		elf_getbase	(Elf *);
Elf_Data	*elf_getdata	(Elf_Scn *, Elf_Data *);
Elf32_Ehdr	*elf32_getehdr	(Elf *);
Elf64_Ehdr	*elf64_getehdr	(Elf *);
char		*elf_getident	(Elf *, size_t *);
Elf32_Phdr	*elf32_getphdr	(Elf *);
Elf64_Phdr	*elf64_getphdr	(Elf *);
Elf_Scn		*elf_getscn	(Elf *elf, size_t);
Elf32_Shdr	*elf32_getshdr	(Elf_Scn *);
Elf64_Shdr	*elf64_getshdr	(Elf_Scn *);
unsigned long	elf_hash	(const char *);
Elf_Kind	elf_kind	(Elf *);
size_t		elf_ndxscn	(Elf_Scn *);
Elf_Data	*elf_newdata	(Elf_Scn *);
Elf32_Ehdr	*elf32_newehdr	(Elf *);
Elf64_Ehdr	*elf64_newehdr	(Elf *);
Elf32_Phdr	*elf32_newphdr	(Elf *, size_t);
Elf64_Phdr	*elf64_newphdr	(Elf *, size_t);
Elf_Scn		*elf_newscn	(Elf *);
Elf_Scn		*elf_nextscn	(Elf *, Elf_Scn *);
Elf_Cmd		elf_next	(Elf *);
size_t		elf_rand	(Elf *, size_t);
Elf_Data	*elf_rawdata	(Elf_Scn *, Elf_Data *);
char		*elf_rawfile	(Elf *, size_t *);
char		*elf_strptr	(Elf *, size_t, size_t);
off_t		elf_update	(Elf *, Elf_Cmd);
unsigned	elf_version	(unsigned);
Elf_Data	*elf32_xlatetof	(Elf_Data *, const Elf_Data *, unsigned);
Elf_Data	*elf64_xlatetof	(Elf_Data *, const Elf_Data *, unsigned);
Elf_Data	*elf32_xlatetom	(Elf_Data *, const Elf_Data *, unsigned);
Elf_Data	*elf64_xlatetom	(Elf_Data *, const Elf_Data *, unsigned);

#ifdef __cplusplus
}
#endif

#endif /* _LANGUAGE_C || _LANGUAGE_C_PLUS_PLUS */

#endif /* __LIBELF_H__ */
