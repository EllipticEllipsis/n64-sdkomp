/*	Copyright (c) 1990, 1991 UNIX System Laboratories, Inc.	*/
/*	Copyright (c) 1984, 1986, 1987, 1988, 1989, 1990 AT&T	*/
/*	  All Rights Reserved  	*/

/*	THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF     	*/
/*	UNIX System Laboratories, Inc.                     	*/
/*	The copyright notice above does not evidence any   	*/
/*	actual or intended publication of such source code.	*/

#ifndef _IO_UIO_H	/* wrapper symbol for kernel use */
#define _IO_UIO_H	/* subject to change without notice */
#ident	"@(#)uts-3b2:io/uio.h	1.2"
#ident	"$Revision: 1.6 $"

#ifdef __cplusplus
extern "C" {
#endif

/*
 * I/O parameter information.  A uio structure describes the I/O which
 * is to be performed by an operation.  Typically the data movement will
 * be performed by a routine such as uiomove(), which updates the uio
 * structure to reflect what was done.
 */

#include <sys/types.h>	/* REQUIRED */

typedef struct iovec {
	caddr_t	iov_base;
	ssize_t	iov_len;
} iovec_t;

#if defined(_KERNEL) || defined(_KMEMUSER)

typedef struct uio {
	iovec_t	*uio_iov;	/* pointer to array of iovecs */
	int	uio_iovcnt;	/* number of iovecs */
	off_t	uio_offset;	/* file offset */
	short	uio_segflg;	/* address space (kernel or user) */
	short	uio_fmode;	/* file mode flags */
	off_t	uio_limit;	/* u-limit (maximum byte offset) */
	ssize_t	uio_resid;	/* residual count */
	daddr_t	uio_blkno;	/* extension for specfs large i/o */
	long	uio_pio;	/* parallel IO */
	struct buf *uio_pbuf;	/* buffer allocated by physio */
} uio_t;

/*
 * I/O direction.
 */
typedef enum uio_rw { UIO_READ, UIO_WRITE } uio_rw_t;

/*
 * Segment flag values.
 */
typedef enum uio_seg {
	UIO_NOSPACE = -1,	/* no data movement (used for pagein) */
	UIO_USERSPACE,		/* uio_iov describes user space */
	UIO_SYSSPACE,		/* uio_iov describes system space */
	UIO_USERISPACE		/* uio_iov describes instruction space */
} uio_seg_t;

int	uiomove(caddr_t, int, uio_rw_t, uio_t *);
int	ureadc(int, uio_t *);
int	uwritec(uio_t *);
int	uiomvuio(uio_t *, uio_t *);
void	uioskip(uio_t *, size_t);

#endif	/* _KERNEL */

#ifdef __cplusplus
}
#endif
#endif	/* _IO_UIO_H */
