/* racket/mzconfig.h.  Generated from mzconfig.h.in by configure.  */

/* This file contains information that was gathered by the configure script. */

#ifndef __MZSCHEME_CONFIGURATION_INFO__
#define __MZSCHEME_CONFIGURATION_INFO__

/* The size of a `char', as computed by sizeof. */
#define SIZEOF_CHAR 1

/* The size of a `int', as computed by sizeof. */
#define SIZEOF_INT 4

/* The size of a `short', as computed by sizeof. */
#define SIZEOF_SHORT 2

/* The size of a `long', as computed by sizeof. */
#define SIZEOF_LONG 8

/* The size of a `long long', as computed by sizeof. */
#define SIZEOF_LONG_LONG 8

/* The size of a `void *', as computed by sizeof. */
#define SIZEOF_VOID_P 8

/* Whether `intptr_t' is available. */
#define HAVE_INTPTR_T 1

/* Whether `uintptr_t' is available. */
#define HAVE_UINTPTR_T 1

#ifdef HAVE_INTPTR_T
# include <inttypes.h>
#endif
#ifndef HAVE_INTPTR_T
typedef long intptr_t;
#endif
#ifndef HAVE_UINTPTR_T
typedef unsigned long uintptr_t;
#endif

/* Endianness. */
/* #undef SCHEME_BIG_ENDIAN */

/* Direction of stack growth: 1 = up, -1 = down, 0 = unknown. */
#define STACK_DIRECTION -1

/* Whether nl_langinfo works. */
#define HAVE_CODESET 1

/* Whether getaddrinfo works. */
#define HAVE_GETADDRINFO 1

/* Whether __attribute__ ((noinline)) works. */
#define MZ_USE_NOINLINE 1

/* Whether pthread_rwlock is available. */
#define HAVE_PTHREAD_RWLOCK 1

/* When poll(), epoll(), and/or kqueue() is available: */
/* #undef HAVE_POLL_SYSCALL */
/* #undef HAVE_EPOLL_SYSCALL */
#define HAVE_KQUEUE_SYSCALL 1

/* Enable futures: */
#define MZ_USE_FUTURES 1

/* Enable places --- 3m only: */
#ifdef MZ_PRECISE_GC
#define MZ_USE_PLACES 1
#endif

/* Whether __sync_bool_compare_and_swap() works: */
#define MZ_CAS_AVAILABLE 1

/* Configure use of pthreads for the user-thread timer. */
#define USE_PTHREAD_INSTEAD_OF_ITIMER 1

/* Enable single-precision floats [as default]: */
#define USE_SINGLE_FLOATS 1
/* #undef USE_SINGLE_FLOATS_AS_DEFAULT */

#endif
