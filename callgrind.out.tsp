# callgrind format
version: 1
creator: callgrind-3.22.0
pid: 29449
cmd:  ./tsp
part: 1


desc: I1 cache: 
desc: D1 cache: 
desc: LL cache: 

desc: Timerange: Basic block 0 - 40523182
desc: Trigger: Program termination

positions: line
events: Ir
summary: 392864863


ob=(3) /usr/lib/x86_64-linux-gnu/libm.so.6
fl=(148) ./math/../sysdeps/x86_64/fpu/multiarch/e_log2.c
fn=(460) log2@@GLIBC_2.29
27 1
fi=(142) ./math/../sysdeps/x86_64/fpu/multiarch/ifunc-fma.h
+2 4
+1 3
fe=(148)
-3 1

fl=(147) ./math/../sysdeps/x86_64/fpu/multiarch/e_logf.c
fn=(456) logf@@GLIBC_2.27
27 1
fi=(142)
+2 4
+1 3
fe=(147)
-3 1

fl=(160) ./math/../sysdeps/x86_64/fpu/multiarch/e_exp2f.c
fn=(506) exp2f@@GLIBC_2.27
27 1
fi=(142)
+2 4
+1 3
fe=(160)
-3 1

fl=(162) ./math/../sysdeps/x86_64/fpu/multiarch/s_sincos.c
fn=(518) sincos
26 1
fi=(152) ./math/../sysdeps/x86_64/fpu/multiarch/ifunc-fma4.h
+5 4
+1 2
fe=(162)
-6 1

fl=(155) ./math/../sysdeps/x86_64/fpu/multiarch/e_log.c
fn=(484) __log_finite@GLIBC_2.15
27 1
fi=(144) ./math/../sysdeps/x86_64/fpu/multiarch/ifunc-avx-fma4.h
+5 5
+1 2
fe=(155)
-6 1

fl=(153) ./math/../sysdeps/x86_64/fpu/multiarch/e_log2f.c
fn=(476) log2f@@GLIBC_2.27
27 1
fi=(142)
+2 4
+1 3
fe=(153)
-3 1

fl=(158) ./math/../sysdeps/x86_64/fpu/multiarch/s_fma.c
fn=(496) fma
49 6

fl=(151) ./math/../sysdeps/x86_64/fpu/multiarch/e_pow.c
fn=(472) __pow_finite@GLIBC_2.15
27 1
fi=(152)
+4 4
+1 2
fe=(151)
-5 1

fl=(146) ./math/../sysdeps/x86_64/fpu/multiarch/s_sin.c
fn=(514) sin
27 1
fi=(144)
+5 5
+1 2
fe=(146)
-6 1

fn=(452) cos
34 2
fi=(144)
-2 10
+1 4
fe=(146)
+1 2

fl=(201) ???
fn=(668) 0x00000000000104e0
0 12

fl=(145) ./math/../sysdeps/x86_64/fpu/multiarch/e_expf.c
fn=(448) expf@@GLIBC_2.27
27 1
fi=(142)
+2 4
+1 3
fe=(145)
-3 1

fl=(258) ./math/./math/w_sqrt_compat.c
fn=(930) sqrt
34 17161
+1 51483
+3 17161
cfi=(259) ./math/../sysdeps/ieee754/dbl-64/e_sqrt.c
cfn=(932) __sqrt_finite@GLIBC_2.15
calls=17161 +14 
* 51483

fl=(143) ./math/../sysdeps/x86_64/fpu/multiarch/e_exp.c
fn=(444) __exp_finite@GLIBC_2.15
27 1
fi=(144)
+5 5
+1 2
fe=(143)
-6 1

fl=(259)
fn=(932)
52 17161
+2 17161
+92 17161

fl=(157) ./math/../sysdeps/x86_64/fpu/multiarch/s_sinf.c
fn=(492) sinf
26 1
fi=(142)
+3 4
+1 3
fe=(157)
-4 1

fl=(150) ./math/../sysdeps/x86_64/fpu/multiarch/e_powf.c
fn=(468) powf@@GLIBC_2.27
30 1
fi=(142)
-1 4
+1 4
fe=(150)

fl=(161) ./math/../sysdeps/x86_64/fpu/multiarch/e_atan2.c
fn=(510) __atan2_finite@GLIBC_2.15
26 1
fi=(144)
+6 5
+1 2
fe=(161)
-7 1

fl=(156) ./math/../sysdeps/x86_64/fpu/multiarch/e_asin.c
fn=(498) __asin_finite@GLIBC_2.15
27 1
fi=(152)
+4 4
+1 2
fe=(156)
-5 1

fn=(488) __acos_finite@GLIBC_2.15
35 1
fi=(152)
-4 4
+1 2
+3 1
fe=(156)

fl=(159) ./math/../sysdeps/x86_64/fpu/multiarch/s_expm1.c
fn=(502) expm1
26 1
fi=(142)
+3 4
+1 3
fe=(159)
-4 1

fl=(141) ./math/../sysdeps/x86_64/fpu/multiarch/s_cosf.c
fn=(440) cosf
26 1
fi=(142)
+3 4
+1 3
fe=(141)
-4 1

fl=(154) ./math/../sysdeps/x86_64/fpu/multiarch/s_log1p.c
fn=(480) __log1p
26 1
fi=(142)
+3 4
+1 3
fe=(154)
-4 1

fl=(149) ./math/../sysdeps/x86_64/fpu/multiarch/s_sincosf.c
fn=(464) sincosf
26 1
fi=(142)
+3 4
+1 3
fe=(149)
-4 1

ob=(4) ???
fl=(176) ???
fn=(590) 0x0000000000109270
0 2
cob=(2) /usr/lib/x86_64-linux-gnu/libc.so.6
cfi=(180) ./gmon/./gmon/gmon.c
cfn=(592) monstartup
calls=1 125 
0 34014

fn=(824) 0x000000000495a430
0 280
cob=(2)
cfi=(224) ./string/../sysdeps/x86_64/multiarch/memmove-vec-unaligned-erms.S
cfn=(826) __mempcpy_avx_unaligned_erms
calls=140 242 
0 2657

fn=(900) 0x000000000495a6f0
0 1550
cob=(2)
cfi=(224)
cfn=(902) __memcpy_chk_avx_unaligned_erms
calls=775 249 
0 15500

fn=(938) 0x0000000000109200
0 126
cob=(2)
cfi=(260) ./time/../sysdeps/unix/sysv/linux/clock.c
cfn=(940) clock
calls=63 25 
0 2268

fn=(952) 0x0000000000109310
0 990738
cob=(2)
cfi=(263) ./stdlib/./stdlib/rand.c
cfn=(954) rand
calls=495369 26 
0 28220054

fn=(692) 0x000000000495a7b0
0 2
cob=(1) /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
cfi=(48) ./elf/./elf/dl-audit.c
cfn=(694) _dl_audit_preinit
calls=1 118 
0 5

fn=(638) 0x00000000001092c0
0 2
cob=(2)
cfi=(195) ./stdlib/./stdlib/cxa_atexit.c
cfn=(640) __cxa_atexit
calls=1 67 
0 72

fn=(750) 0x00000000001091c0
0 2
cob=(2)
cfi=(217) ./string/../sysdeps/x86_64/multiarch/strcpy-avx2.S
cfn=(752) __strcpy_avx2
calls=1 64 
0 21

fn=(834) 0x00000000001092a0
0 2
cob=(2)
cfi=(237) ./libio/./libio/iofopen.c
cfn=(836) fopen@@GLIBC_2.2.5
calls=1 85 
0 605

fn=(974) 0x0000000000109280
0 10
cob=(2)
cfi=(224)
cfn=(782) __memcpy_avx_unaligned_erms
calls=5 255 
0 625

fn=(584) 0x000000000483d000
0 6
cob=(5) /home/kutsukawa/Programming2/tsp/kutsu/tsp
cfi=(179) ???
cfn=(588) __gmon_start__
calls=1 0 
0 34107
0 2

fn=(620) 0x000000000495a740
0 6
cob=(2)
cfi=(188) ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S
cfn=(622) __memset_avx2_unaligned_erms
calls=3 158 
0 31969

fn=(680) 0x0000000000109000
0 6
cob=(5)
cfi=(179)
cfn=(588)
calls=1 0 
0 5
0 2

fn=(714) 0x0000000000109250
0 2
cob=(2)
cfi=(209) ./stdlib/./stdlib/random.c
cfn=(716) srand
calls=1 209 
0 6232

fn=(754) 0x00000000001092e0
0 2
cob=(2)
cfi=(217)
cfn=(756) __strcat_avx2
calls=1 64 
0 37

fn=(762) 0x0000000000109220
0 280
cob=(2)
cfi=(219) ./stdio-common/./stdio-common/printf.c
cfn=(764) printf
calls=140 28 
0 105790

fn=(862) 0x00000000001091d0
0 262
cob=(2)
cfi=(241) ./stdio-common/./stdio-common/isoc99_fscanf.c
cfn=(864) __isoc99_fscanf
calls=131 25 
0 554757

fn=(560) 0x000000000495a720
0 46
cob=(1)
cfi=(11) ./elf/./elf/dl-tunables.c
cfn=(28) __tunable_get_val
calls=23 387 
0 541

fn=(710) 0x0000000000109290
0 2
cob=(2)
cfi=(163) ./time/../sysdeps/unix/sysv/linux/time.c
cfn=(712) time_syscall
calls=1 31 
0 6

fn=(720) 0x0000000000109260
0 6
cob=(2)
cfi=(181) ./malloc/./malloc/malloc.c
cfn=(596) calloc
calls=3 3699 
0 878

fn=(730) 0x00000000001092b0
0 2
cob=(2)
cfi=(213) ./posix/./posix/getopt.c
cfn=(732) getopt
calls=1 736 
0 489

fn=(744) 0x000000000495a600
0 10
cob=(2)
cfi=(216) ./string/../sysdeps/x86_64/multiarch/strcmp-avx2.S
cfn=(746) __strncmp_avx2
calls=5 206 
0 172

fn=(800) 0x000000000495a3f0
0 6
cob=(2)
cfi=(181)
cfn=(802) malloc
calls=3 3294 
0 536

fn=(656) 0x000000000495a660
0 2
cob=(2)
cfi=(199) ./string/../sysdeps/x86_64/multiarch/strrchr-avx2.S
cfn=(658) __strrchr_avx2
calls=1 53 
0 22

fn=(780) 0x000000000495a6b0
0 582
cob=(2)
cfi=(224)
cfn=(782)
calls=291 255 
0 4860

fn=(858) 0x000000000495a680
0 2
cob=(2)
cfi=(222) ./string/../sysdeps/x86_64/multiarch/strchr-avx2.S
cfn=(860) __strchr_avx2
calls=1 53 
0 21

fn=(944) 0x00000000001091b0
0 4
cob=(2)
cfi=(262) ./libio/./libio/putchar.c
cfn=(946) putchar
calls=2 25 
0 435

fn=(1008) 0x00000000001091e0
0 2
cob=(2)
cfi=(275) ./libio/./libio/ioputs.c
cfn=(1010) puts
calls=1 33 
0 493

fn=(662) 0x0000000004859000
0 6
cob=(5)
cfi=(179)
cfn=(588)
calls=1 0 
0 5
0 2

fn=(774) 0x000000000495a590
0 560
cob=(2)
cfi=(222)
cfn=(776) __strchrnul_avx2
calls=280 53 
0 5320

fn=(1034) 0x00000000001091a0
0 2
cob=(2)
cfi=(282) ./stdlib/./stdlib/cxa_finalize.c
cfn=(1036) __cxa_finalize
calls=1 30 
0 519

fn=(594) 0x000000000495a450
0 2
cob=(2)
cfi=(181)
cfn=(596)
calls=1 3699 
0 33702

fn=(740) 0x000000000495a500
0 536
cob=(2)
cfi=(215) ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S
cfn=(742) __strlen_avx2
calls=268 52 
0 3752

fn=(928) 0x0000000000109300
0 34322
cob=(3)
cfi=(258)
cfn=(930)
calls=17161 34 
0 137288

ob=(2)
fl=(252) ./stdlib/../sysdeps/x86_64/mul_1.S
fn=(908) __mpn_mul_1
31 281
+1 281
+3 281
+1 281
+1 281
+1 281
+1 281
+2 281
+1 281
+2 281
+1 281
+1 281
+1 281
+1 280
+2 280
+1 280
+1 280
+1 280
+26 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+26 1
+1 1
+1 1
+2 1
+1 1
+1 1
+1 1
+1 1
+1 1
+2 1
+3 1
-5 280
+2 280
+3 280

fl=(217)
fn=(756)
64 1
+1 1
+3 1
fi=(218) ./string/../sysdeps/x86_64/multiarch/strcat-strlen-avx2.h.S
-41 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+2 1
+1 1
+1 1
+1 1
+1 1
+60 1
+1 1
fe=(217)
-28 1
+1 1
+1 1
+1 1
+5 1
+1 1
+1 1
+2 1
+1 1
+4 1
+2 1
+1 1
+9 1
+1 1
+2 1
+1 1
+39 1
+2 1
+1 1
+1 1

fn=(752)
64 1
+1 1
+7 1
+1 1
+1 1
+1 1
+3 1
+2 1
+1 1
+1 1
+2 1
+1 1
+4 1
+2 1
+1 1
+9 1
+1 1
+32 1
+1 1
+1 1
+1 1

fl=(116) ./wcsmbs/../sysdeps/x86_64/multiarch/wcscpy.c
fn=(360) wcscpy
60 1
-17 2
-1 4
+2 3
+2 2
+4 3
+10 1

fl=(136) ./string/../sysdeps/x86_64/multiarch/strspn.c
fn=(422) strspn
29 1
fi=(284) ./string/../sysdeps/x86_64/multiarch/ifunc-sse4_2.h
+7 5
fe=(136)
-7 1

fl=(264) ./stdio-common/./stdio-common/printf_fp.c
fn=(998) hack_digit
88 32
+3 8
-3 8
+3 16
+2 8
+2 16
-2 16
+8 8
+21 12
cfi=(252)
cfn=(908)
calls=4 -91 
* 84
+1 8
+1 15
+4 20
-23 24
cfi=(272) ./stdlib/./stdlib/divrem.c
cfn=(1000) __mpn_divrem
calls=4 -59 
* 171
+2 4
-2 4
+2 12
+3 4
-2 4
+2 4
+1 24
+11 4
-4 8
-23 4
+1 12
-1 4
+1 4
cfi=(252)
cfn=(908)
calls=4 -65 
* 84
+31 4
-31 4
+32 20

fn=(984) __printf_fp_buffer_1.isra.0
138 54
+21 3
+18 3
+10 3
-28 21
+62 6
1030 33
226 9
+4 21
+36 3
+5 3
-49 3
+44 12
+1 3
+1 6
+3 39
+1 3
-1 3
+1 9
-1 3
+1 6
-1 3
+1 24
+1 3
-1 6
+1 39
+6 3
-6 6
+7 6
+17 1
+4 4
-4 2
+16 2
+11 1
-41 1
+10 1
+31 1
-30 7
+33 3
+41 1
+1 1
-1 1
+1 3
fi=(268) ./stdio-common/../string/bits/string_fortified.h
29 1
cob=(4)
cfi=(176)
cfn=(780)
calls=1 -29 
* 13
fe=(264)
385 7
+18 1
-9 1
+2 2
-2 11
+2 22
-74 24
-4 12
+4 49
-4 1
+4 4
+15 2
-13 4
+53 1
-2 6
cfi=(251) ./stdlib/./stdlib/mul.c
cfn=(906) __mpn_mul
calls=1 48 
* 77
+5 2
+1 2
fi=(268)
29 2
fe=(264)
388 2
fi=(268)
29 1
cob=(4)
cfi=(176)
cfn=(780)
calls=1 -29 
* 13
fe=(264)
389 3
+1 3
+1 1
+3 1
-4 1
-1 1
+1 1
+1 3
+5 2
+1 2
+6 2
+4 1
+4 1
-4 1
+4 3
-4 10
+6 2
665 3
+9 3
-9 3
+9 3
+6 3
-15 3
+9 6
+6 3
-6 6
+2 6
+10 6
+52 6
+8 6
fi=(271) ./stdio-common/../sysdeps/pthread/allocalim.h
27 3
fe=(264)
746 3
fi=(271)
27 3
cfi=(270) ./nptl/./nptl/alloca_cutoff.c
cfn=(994) __libc_alloca_cutoff
calls=3 * 
* 33
+2 6
fe=(264)
759 42
fi=(271)
29 3
fe=(264)
759 9
+4 3
-3 6
+3 6
+3 9
+7 18
+2 6
-4 3
+4 3
+14 6
-2 3
+1 15
+1 3
+1 6
-1 14
+1 34
91 14
792 14
+2 14
91 28
+2 14
+2 28
-2 28
+8 4
+4 12
cfi=(272)
cfn=(1000)
calls=2 -59 
* 94
+2 2
+4 2
-6 2
+2 6
+1 2
+2 4
+1 8
+7 2
+4 6
cfi=(252)
cfn=(908)
calls=2 -91 
* 42
+1 4
+1 10
793 2
+1 4
-1 12
+1 24
+1 28
230 18
cfi=(266) ./stdlib/../sysdeps/ieee754/dbl-64/dbl2mpn.c
cfn=(986) __mpn_extract_double
calls=3 33 
* 66
* 12
+4 3
382 3
95 12
+1 36
-1 24
+1 12
cfi=(252)
cfn=(908)
calls=12 -65 
* 252
* 12
+31 36
805 15
+1 9
cfn=(998)
calls=3 88 
* 215
+2 6
-2 3
+2 15
+2 6
+3 4
+5 4
-8 4
+8 12
-9 2
fi=(273) ./stdio-common/../sysdeps/generic/get-rounding-mode.h
94 2
+1 8
-1 1
+1 13
fe=(264)
935 2
-11 6
+7 4
+4 6
+45 15
+3 6
+8 6
-4 3
+4 3
+5 6
-9 12
+9 12
fi=(236) ./stdio-common/../include/printf_buffer.h
163 9
fe=(264)
999 12
+2 9
+5 6
fi=(236)
163 9
fe=(264)
1009 9
+13 12
cfi=(223) ./stdio-common/./stdio-common/Xprintf_buffer_write.c
cfn=(778) __printf_buffer_write
calls=3 27 
* 161
+2 9
+4 9
483 4
655 6
+4 4
cfi=(253) ./stdlib/../sysdeps/x86_64/lshift.S
cfn=(910) __mpn_lshift
calls=2 28 
* 32
* 2
+1 10
+1 4
385 6
cfi=(267) ./stdlib/./stdlib/cmp.c
cfn=(988) __mpn_cmp
calls=2 31 
* 24
* 4
+3 2
fi=(274) ./stdio-common/../include/rounding-mode.h
52 8
fe=(264)
835 1
-5 2
+5 4
+5 3
+2 2
+2 2
+80 3
-69 2
+80 1
-11 3
766 9
-78 6
+1 10
+3 9
+2 3
+2 6
+42 6
994 12
+2 6
308 1
-2 1
+2 1
-3 1
+3 4
-3 2
cfi=(253)
cfn=(910)
calls=1 28 
* 16
+4 2
-4 1
+4 7
+1 2
+1 11
766 9
+3 6
cfn=(998)
calls=3 88 
* 203
* 4
cfn=(998)
calls=2 88 
* 232
* 5
-3 18
1003 6
439 2
+3 8
+16 3
+2 1
-2 1
cfi=(269) ./stdlib/../sysdeps/x86_64/rshift.S
cfn=(992) __mpn_rshift
calls=1 28 
* 18
+3 2
-1 1
+1 1
-1 1
+1 3
cfi=(269)
cfn=(992)
calls=1 28 
* 18
+2 8
+14 2
694 24
834 2

fn=(980) __printf_fp_l_buffer
1099 36
+3 3
-3 21
+3 6
+13 6
+2 3
-2 3
cob=(4)
cfi=(176)
cfn=(740)
calls=3 0 
* 48
* 6
+1 15
+31 33
-30 6
fi=(265) ./stdio-common/../include/../locale/localeinfo.h
331 6
fe=(264)
1111 3
fi=(265)
331 3
fe=(264)
1112 6
+10 21
cfn=(984)
calls=3 138 
* 3321
+4 3

fl=(193) ./gmon/../sysdeps/unix/sysv/linux/prof-freq.c
fn=(632) __profile_frequency
26 1
+1 2
+1 1

fl=(87) ./wcsmbs/../sysdeps/x86_64/multiarch/wcsnlen.c
fn=(292) wcsnlen
30 1
fi=(88) ./wcsmbs/../sysdeps/x86_64/multiarch/ifunc-wcslen.h
+11 2
-1 4
+2 3
+3 2
+4 3
+3 3
fe=(87)
-22 1

fl=(98) ./string/../sysdeps/x86_64/multiarch/memcmpeq.c
fn=(320) memcpy@@GLIBC_2.14
29 2
fi=(99) ./string/../sysdeps/x86_64/multiarch/ifunc-memmove.h
+28 6
-1 4
+4 6
+14 4
+3 4
+8 4
+8 4
+3 10
fe=(98)

fl=(276) ./stdlib/./stdlib/exit.c
fn=(1014) exit
137 2
+1 3
-1 1
+1 1
cfn=(1016) __run_exit_handlers
calls=1 38 
* 1256

fn=(1016)
38 12
+2 2
+3 5
+11 2
+2 2
+38 2
-30 3
+2 1
+1 1
-1 1
+3 7
+33 1
+1 1
-2 1
+3 1
+3 1
-3 2
+3 3
+1 3
cob=(1)
cfi=(278) ./elf/./elf/dl-fini.c
cfn=(1020) _dl_fini
calls=1 -82 
* 1190
-67 1
cfi=(277) ./stdlib/./stdlib/cxa_thread_atexit_impl.c
cfn=(1018) __call_tls_dtors
calls=1 148 
* 13
* 1

fl=(96) ./wcsmbs/../sysdeps/x86_64/multiarch/wcsncpy.c
fn=(316) wcsncpy
31 1
fi=(97) ./wcsmbs/../sysdeps/x86_64/multiarch/ifunc-wcs.h
+9 3
-1 4
+2 3
+3 2
+4 4
fe=(96)
-17 1

fl=(253)
fn=(910)
28 782
+1 782
+1 782
+2 782
+1 782
+1 782
+12 782
+1 782
+1 782
+1 782
+1 782
+1 782
+1 782
+6 782
+1 782
+1 782

fl=(127) ./string/../sysdeps/x86_64/multiarch/strlen.c
fn=(394) strlen
29 1
fi=(84) ./string/../sysdeps/x86_64/multiarch/ifunc-avx2.h
+11 3
-2 4
fe=(127)
-9 2
fi=(84)
+12 2
+1 3
+3 2
+4 3
+3 5
fe=(127)

fl=(248) ./stdlib/./stdlib/strtod.c
fn=(892) __strtod_internal
68 260
+1 780
cfi=(249) ./stdlib/./stdlib/strtod_l.c
cfn=(894) ____strtod_l_internal
calls=260 508 
* 269430

fl=(197) ./csu/./csu/init-first.c
fn=(652) _init_first
46 6
+5 2
+4 5
+8 1
-2 1
+10 1
-9 1
+1 1
+9 3
-1 1
cfi=(198) ./misc/./misc/init-misc.c
cfn=(654) __init_misc
calls=1 -41 
* 50

fl=(267)
fn=(988)
31 2
+4 4
+2 2
+1 2
+1 4
+8 10

fl=(108) ./string/../sysdeps/x86_64/multiarch/stpncpy.c
fn=(344) stpncpy
31 1
fi=(109) ./string/../sysdeps/x86_64/multiarch/ifunc-strncpy.h
+4 5
+1 3
+3 2
+4 3
+3 4
fe=(108)
-15 1

fl=(175) ./nptl/./nptl/pthread_mutex_conf.c
fn=(558) __pthread_tunables_init
55 2
+1 2
-1 2
+1 2
-1 4
+1 1
cob=(4)
cfi=(176)
cfn=(560)
calls=1 -56 
* 26
+2 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 -58 
* 25
+2 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 -60 
* 26
+2 6

fl=(261) ./time/../sysdeps/unix/sysv/linux/clock_gettime.c
fn=(942) clock_gettime@@GLIBC_2.17
30 63
+8 126
+2 126
+28 126
+1 126
-25 126

fl=(220) ./stdio-common/./stdio-common/vfprintf-internal.c
fn=(772) __printf_buffer
600 1680
fi=(243) ./stdio-common/./stdio-common/printf-parse.h
82 140
fe=(220)
600 280
fi=(243)
82 140
fe=(220)
600 140
+27 420
+11 140
-11 140
+11 140
-11 140
+11 280
fi=(243)
82 140
cob=(4)
cfi=(176)
cfn=(774)
calls=140 -82 
* 2940
fe=(220)
653 280
+1 140
fi=(243)
82 280
fe=(220)
654 140
-1 140
cfi=(223)
cfn=(778)
calls=140 27 
* 2980
+2 420
+4 280
+4 1112
-32 139
973 139
642 139
973 278
634 139
+71 560
1044 1540
705 280
-13 140
+7 140
+6 280
-14 140
-4 140
+18 140
-10 140
+10 140
-7 140
-4 140
+11 280
-19 140
-1 140
+20 140
-12 140
-9 140
-1 140
+22 140
-15 280
891 6
+82 6
+3 102
+20 33
+1 3
263 3
+1 3
997 3
744 3
264 6
744 3
263 6
1024 140
fi=(243)
82 140
fe=(220)
1018 140
fi=(243)
82 280
cob=(4)
cfi=(176)
cfn=(774)
calls=140 -82 
* 2940
fe=(220)
1028 280
+1 140
fi=(243)
82 140
fe=(220)
1029 140
-1 140
cfi=(223)
cfn=(778)
calls=140 27 
* 7842
+3 283
fi=(225) ./stdio-common/./stdio-common/vfprintf-process-arg.c
501 8
cfi=(223)
cfn=(778)
calls=2 27 
* 104
+1 2
-11 2
-88 16
+19 4
-14 4
+47 6
fe=(220)
709 1
814 1
-1 1
+1 2
+26 3
+15 13
fi=(225)
422 8
+8 4
136 270
+19 1755
cfi=(235) ./stdio-common/./stdio-common/_itoa.c
cfn=(828) _itoa_word
calls=135 +14 
* 5769
+11 270
-11 270
+11 540
-5 1080
+25 675
+15 270
-4 405
+2 405
+2 270
+7 135
-2 270
+2 405
+3 270
+13 270
fi=(236)
-61 270
fi=(225)
+70 270
+3 270
136 135
+2 270
fe=(220)
876 4
-5 36
-1 4
+1 32
fi=(225)
67 135
-18 135
-1 270
+1 14
201 6
58 4
201 399
58 266
-23 135
+22 270
161 135
+9 270
+17 135
+8 135
-8 135
+12 135
-12 135
+8 540
-8 810
+53 540
cfi=(223)
cfn=(778)
calls=135 27 
* 7800
* 135
fe=(220)
+26 3
cfi=(264)
cfn=(980)
calls=3 1099 
* 3549
1001 3
fi=(236)
163 270
fi=(225)
50 266
+2 266
+1 1064
435 4
cob=(4)
cfi=(176)
cfn=(740)
calls=2 0 
* 32
* 4
fi=(243)
55 1
+10 2
-10 5
fe=(220)

fn=(766) __vfprintf_internal
1522 1820
+3 701
+4 700
+11 280
+27 1540
-42 278
+18 560
cfi=(221) ./stdio-common/./stdio-common/printf_buffer_to_file.c
cfn=(768) __printf_buffer_to_file_init
calls=140 108 
* 3360
+1 700
cfn=(772)
calls=140 600 
* 64375
+1 280
cfi=(221)
cfn=(786) __printf_buffer_to_file_done
calls=140 117 
* 26560
* 140

fl=(277)
fn=(1018)
148 4
+1 1
-1 1
+1 3
+16 4

fl=(207) ./gmon/../sysdeps/x86_64/_mcount.S
fn=(706) mcount
26 34658
+2 34658
+2 34658
+2 34658
+2 34658
+2 34658
+2 34658
+2 34658
+2 34658
+5 34658
+2 34658
+1 34658
cfi=(208) ./gmon/./gmon/mcount.c
cfn=(708) __mcount_internal
calls=34658 +14 
* 901164
+3 34658
+2 34658
+2 34658
+2 34658
+2 34658
+2 34658
+2 34658
+2 34658
+2 34658

fl=(117) ./string/../sysdeps/x86_64/multiarch/strcat.c
fn=(362) strcat
29 2
fi=(118) ./string/../sysdeps/x86_64/multiarch/ifunc-strcpy.h
+9 4
+1 2
-1 4
+1 4
+3 4
+4 6
+3 6
fe=(117)
-20 2

fl=(192) ./signal/../sysdeps/unix/sysv/linux/libc_sigaction.c
fn=(630) __libc_sigaction
43 16
+5 4
+2 2
fi=(285) ./signal/../string/bits/string_fortified.h
-21 2
fe=(192)
+29 2
fi=(285)
-29 4
fe=(192)
+21 2
+3 2
fi=(285)
-24 6
fe=(192)
+24 2
fi=(285)
-24 6
fe=(192)
+24 4
fi=(285)
-24 2
fe=(192)
+29 2
-5 2
+5 6
fi=(285)
-29 12
fe=(192)
+29 12
+5 6
+2 1
fi=(285)
-36 5
fe=(192)
+36 1
fi=(285)
-36 3
fe=(192)
+38 1
fi=(285)
-38 3
fe=(192)
+38 1
+1 1
fi=(285)
-39 1
fe=(192)
+39 1
fi=(285)
-39 4
fe=(192)
+42 12

fl=(172) ./ctype/./ctype/ctype-info.c
fn=(552) __ctype_init
29 1
+2 7
+2 4
+2 4
+1 1

fl=(238) ./nptl/./nptl/libc-cleanup.c
fn=(846) __libc_cleanup_push_defer
24 132
+1 132
+2 264
+2 264
+3 264
+14 396
+2 132
+1 132

fn=(848) __libc_cleanup_pop_restore
54 132
+1 132
+2 264
+2 132
+1 396
+11 132

fl=(139) ./string/../sysdeps/x86_64/multiarch/strncase.c
fn=(432) strncasecmp
31 1
fi=(114) ./string/../sysdeps/x86_64/multiarch/ifunc-strcasecmp.h
+6 2
-1 4
fe=(139)
-5 2
fi=(114)
+7 3
+3 2
+4 3
+3 4
fe=(139)

fl=(110) ./wcsmbs/../sysdeps/x86_64/multiarch/wmemchr.c
fn=(348) wmemchr
31 2
fi=(111) ./wcsmbs/../sysdeps/x86_64/multiarch/ifunc-evex.h
+7 6
-1 8
+2 6
+6 4
-3 4
+9 6
+3 8
fe=(110)
-23 2

fl=(272)
fn=(1000)
46 84
+3 12
234 54
62 6
+1 6
-16 6
+18 12
+7 30
+1 4
-1 8
+1 8
-1 8
+4 12
+3 6
+2 6
-13 1
-1 1
+1 1

fl=(91) ./wcsmbs/../sysdeps/x86_64/multiarch/wcslen.c
fn=(300) wcslen
29 1
fi=(88)
+12 2
-1 4
+2 3
+3 2
+4 3
+3 3
fe=(91)
-23 1

fl=(206) ./setjmp/./setjmp/sigjmp.c
fn=(702) __sigjmp_save
28 6
+2 2
-1 1
+5 4

fl=(228) ./libio/./libio/filedoalloc.c
fn=(794) _IO_file_doallocate
78 22
+6 8
fi=(230) ./libio/./libio/libioP.h
1025 6
+1 4
fe=(228)
84 6
cfi=(226) ./libio/./libio/fileops.c
cfn=(796) _IO_file_stat
calls=2 1147 
* 18
* 4
+2 8
+11 8
+4 4
cob=(4)
cfi=(176)
cfn=(800)
calls=2 0 
* 353
* 2
+1 4
+2 8
cfi=(227) ./libio/./libio/genops.c
cfn=(806) _IO_setb
calls=2 329 
* 58
+1 2
+1 18
-15 1
fi=(286) ./libio/../include/sys/sysmacros.h
-44 6
fe=(228)
+44 1
-2 2
+5 2

fl=(128) ./string/../sysdeps/x86_64/multiarch/strncpy.c
fn=(398) strncpy
29 1
fi=(109)
+6 5
+1 3
+3 2
+4 3
+3 4
fe=(128)
-17 1

fl=(214) ./stdlib/./stdlib/getenv.c
fn=(738) getenv
24 18
+1 16
+3 2
cob=(4)
cfi=(176)
cfn=(740)
calls=2 -28 
* 32
+1 2
-1 2
+1 252
+2 124
+1 20
cob=(4)
cfi=(176)
cfn=(744)
calls=5 -32 
* 182
* 10
+5 18

fl=(239) ./io/../sysdeps/unix/sysv/linux/open64.c
fn=(854) open
30 2
+3 1
-3 10
+3 6
+8 9
+2 8

fl=(270)
fn=(994)
27 3
+1 27
+7 3

fl=(115) ./string/../sysdeps/x86_64/multiarch/strcspn.c
fn=(358) strcspn
29 1
fi=(284)
+7 5
fe=(115)
-7 1

fl=(134) ./string/../sysdeps/x86_64/multiarch/memchr.c
fn=(418) memchr
29 1
fi=(135) ./string/../sysdeps/x86_64/multiarch/ifunc-evex.h
+9 3
-1 4
+2 3
+6 2
-3 2
+9 3
+3 4
fe=(134)
-25 1

fl=(185) ./misc/./misc/sbrk.c
fn=(612) sbrk
37 16
+3 2
+3 2
-3 2
+3 2
+35 7
-20 4
+4 4
+4 4
+8 1
cfi=(186) ./misc/../sysdeps/unix/sysv/linux/brk.c
cfn=(614) brk
calls=1 -38 
* 9
* 2
+4 7
-19 2
cfi=(186)
cfn=(614)
calls=1 -23 
* 9
* 2
+4 2

fl=(195)
fn=(640)
67 14
-26 4
+2 16
+1 4
cfn=(642) __new_exitfn
calls=2 +36 
* 70
+2 4
+8 2
-2 2
+3 2
+1 2
-4 4
+1 2
+4 8
+1 2
+11 12

fn=(642)
80 2
+6 4
-6 8
+11 4
-10 2
+10 8
+2 4
+1 5
-1 4
-2 1
+10 1
-10 3
+13 2
+25 1
+1 2
-1 2
+7 1
+5 3
-4 1
+4 2
-5 1
+5 3
-4 1
+4 2
-18 1
-1 1
+12 1

fl=(205) ./setjmp/../sysdeps/x86_64/setjmp.S
fn=(700) __sigsetjmp
31 1
+2 1
+9 1
+1 2
+1 1
+4 1
+1 1
+1 1
+1 1
+1 1
+2 2
+2 1
+1 1
+1 1
+2 2
+2 1
+5 1
+1 1
+17 1
cfi=(206)
cfn=(702)
calls=1 -57 
* 13

fl=(222)
fn=(860)
53 1
+2 1
+1 1
+1 1
+1 1
+1 1
+3 1
+1 1
+4 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+3 1
+8 1
+8 1
+1 2

fn=(776)
53 280
+2 280
+1 280
+1 280
+1 280
+1 280
+3 280
+1 280
+4 280
+1 280
+1 280
+1 280
+1 280
+1 280
+1 280
+1 280
+13 280
+2 560

fl=(81) ./string/../sysdeps/x86/cacheinfo.c
fn=(280) __x86_cacheinfo
86 1
fi=(82) ./string/../sysdeps/x86/cacheinfo.h
-27 1
+3 3
+2 1
+1 1
-1 2
+7 3
+2 1
+1 1
-1 2
+5 2
+2 2
+1 2
+1 2
+2 2
+2 2
fe=(81)

fl=(235)
fn=(828)
169 135
+3 540
+2 270
+9 4554
+9 270

fl=(177) ./nptl/../sysdeps/unix/sysv/linux/x86/elision-conf.c
fn=(562) __lll_elision_init
92 2
+4 1
-4 2
+4 2
-4 1
+4 1
-4 3
+4 1
cob=(4)
cfi=(176)
cfn=(560)
calls=1 -96 
* 26
+2 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 -98 
* 26
+2 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 26
+2 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 26
+2 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 26
+3 3
+1 1
+1 6

fl=(275)
fn=(1010)
33 10
+2 1
cob=(4)
cfi=(176)
cfn=(740)
calls=1 -35 
* 16
+1 1
-1 1
+1 3
-3 1
+6 3
+1 1
fi=(230)
1025 3
+1 2
fe=(275)
40 3
cfi=(226)
cfn=(788) _IO_file_xsputn@@GLIBC_2.2.5
calls=1 1198 
* 235
* 2
+1 4
+1 4
fi=(230)
979 2
+1 8
fe=(275)
46 8
-10 5
+2 2
-2 5
+5 2
cfi=(227)
cfn=(948) __overflow
calls=1 199 
* 169
* 2

fl=(182) ./malloc/./malloc/arena.c
fn=(600) ptmalloc_init.part.0
262 1
fi=(183) ./malloc/../sysdeps/unix/sysv/linux/not-cancel.h
97 3
fe=(182)
262 7
+5 1
fi=(183)
97 3
fi=(181)
3143 2
fe=(182)
292 2
+4 3
fi=(181)
1946 4
+3 1
-3 1
+3 2
-3 2
+3 126
-3 126
+3 252
-3 252
+11 1
fe=(182)
300 3
fi=(181)
1958 1
+2 1
fe=(182)
300 1
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 25
+1 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 26
+1 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 25
+1 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 25
+1 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 26
+1 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 25
+1 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 25
+2 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 25
+1 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 25
+1 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 25
+3 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 25
+1 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 25
+2 2
+10 8

fl=(126) ./string/../sysdeps/x86_64/multiarch/strcasecmp_l.c
fn=(386) strcasecmp_l
31 1
fi=(114)
+6 2
-1 4
fe=(126)
-5 2
fi=(114)
+7 3
+3 2
+4 3
+3 4
fe=(126)

fl=(240) ./string/../string/strstr.c
fn=(856) __GI_strstr
77 9
+5 1
-5 3
+5 2
+2 4
cob=(4)
cfi=(176)
cfn=(858)
calls=1 -84 
* 23
* 1
+1 2
+1 2
+75 12

fl=(260)
fn=(940)
25 126
+6 63
-6 315
+6 126
cfi=(261)
cfn=(942)
calls=63 -1 
* 693
* 126
+4 63
-1 63
+1 378
+1 315

fl=(85) ./string/../sysdeps/x86_64/multiarch/strpbrk.c
fn=(288) strpbrk
29 1
fi=(284)
+7 5
fe=(85)
-7 1

fl=(138) ./string/../sysdeps/x86_64/multiarch/mempcpy.c
fn=(428) mempcpy
33 1
fi=(99)
+24 3
-1 2
+4 3
+14 2
+3 2
+8 2
+8 2
+3 5
fe=(138)

fl=(173) ./resource/../sysdeps/unix/sysv/linux/getrlimit64.c
fn=(554) getrlimit
38 2
+1 7
+1 1

fl=(237)
fn=(836)
85 7
-20 1
+20 2
-20 1
cob=(4)
cfi=(176)
cfn=(800)
calls=1 -65 
* 189
+2 3
+3 1
+2 2
-2 1
+2 5
cfi=(227)
cfn=(838) _IO_no_init
calls=1 563 
* 56
+1 1
+1 1
-1 1
+1 1
cfi=(226)
cfn=(842) _IO_new_file_init_internal
calls=1 +32 
* 102
+1 5
cfi=(226)
cfn=(850) _IO_file_fopen@@GLIBC_2.2.5
calls=1 213 
* 215
* 2
-38 2
+50 7

fl=(171) ./elf/./elf/libc_early_init.c
fn=(550) __libc_early_init
33 9
+2 1
cfi=(172)
cfn=(552)
calls=1 -6 
* 17
+3 1
fi=(174) ./elf/../sysdeps/nptl/pthread_early_init.h
-5 2
fe=(171)
+8 1
-3 1
+3 1
fi=(174)
-8 1
cfi=(173)
cfn=(554)
calls=1 +5 
* 10
* 3
+1 1
+4 5
+7 1
fi=(287) ./elf/../nptl/nptl-stack.h
+16 3
fi=(174)
-16 1
fi=(287)
+16 2
fi=(174)
-7 1
fi=(287)
+7 3
fi=(174)
-9 1
-6 1
+2 2
+4 4
+1 1
+3 1
cfi=(175)
cfn=(558)
calls=1 -1 
* 104
fe=(171)
-9 3
+2 2
-2 1
cfi=(177)
cfn=(562)
calls=1 +45 
* 169

fl=(113) ./string/../sysdeps/x86_64/multiarch/strcasecmp.c
fn=(354) strcasecmp
31 1
fi=(114)
+6 2
-1 4
fe=(113)
-5 2
fi=(114)
+7 3
+3 2
+4 3
+3 4
fe=(113)

fl=(129) ./wcsmbs/../sysdeps/x86_64/multiarch/wmemcmp.c
fn=(402) wmemcmp
29 1
fi=(130) ./wcsmbs/../sysdeps/x86_64/multiarch/ifunc-memcmp.h
+5 5
+1 2
+1 2
+1 3
+3 2
+4 3
+3 4
fe=(129)
-18 2

fl=(137) ./wcsmbs/../sysdeps/x86_64/multiarch/wcpcpy.c
fn=(424) wcpncpy
31 1
fi=(97)
+9 3
-1 4
+2 3
+3 2
+4 4
fi=(288) ./wcsmbs/../sysdeps/x86_64/multiarch/wcpncpy.c
-17 1
fe=(137)

fl=(266)
fn=(986)
33 3
+2 3
-2 6
+4 9
+1 15
+9 6
+9 3
-9 3
+9 6
+47 3
+4 3
-4 3
+4 3

fl=(103) ./string/../sysdeps/x86_64/multiarch/strchr.c
fn=(330) index
65 1
-22 2
+1 1
-2 4
+2 2
+3 2
+4 3
+3 3
+11 1

fl=(213)
fn=(734) _getopt_internal
706 5
+4 1
-1 2
+3 1
-3 1
+3 3
-3 2
+3 1
cfn=(736) _getopt_internal_r
calls=1 474 
* 451
+4 1
+1 1
-1 1
+1 1
+4 1
-4 1
+1 3
+3 2

fn=(736)
474 12
+1 1
+2 2
+5 1
-2 4
+2 5
-91 1
+1 1
-1 2
+4 3
+5 2
+5 4
+5 1
+77 1
+1 3
+5 2
700 9
499 3
+2 3
+3 3
+24 2
+21 4
-71 2
+31 3
+9 2
+2 2
405 4
cfi=(214)
cfn=(738)
calls=1 24 
* 360
* 4
512 2
408 1
+85 2

fn=(732)
736 9
cfn=(734)
calls=1 -30 
* 478
* 2

fl=(89) ./string/../sysdeps/x86_64/multiarch/memset.c
fn=(296) memset
29 1
fi=(90) ./string/../sysdeps/x86_64/multiarch/ifunc-memset.h
+25 5
+3 3
+7 2
+9 2
+2 2
+10 2
+8 2
+3 5
fe=(89)

fl=(104) ./debug/../sysdeps/x86_64/multiarch/memset_chk.c
fn=(332) __memset_chk
29 1
fi=(105) ./debug/../sysdeps/x86_64/multiarch/ifunc-memset.h
+25 5
+3 3
+7 2
+9 2
+2 2
+10 2
+8 2
+3 5
fe=(104)

fl=(227)
fn=(872) _IO_default_uflow
361 4
fi=(230)
1025 2
fe=(227)
361 6
+1 2
-1 2
fi=(230)
1025 4
+1 4
fe=(227)
362 4
cfi=(226)
cfn=(874) _IO_file_underflow@@GLIBC_2.2.5
calls=2 462 
* 496
+1 4
+2 8
+1 8

fn=(878) _IO_switch_to_get_mode
164 12
+1 6
+3 6
+4 4
+1 4
+7 2
-4 2
+4 2
-2 4
+3 2
+1 8

fn=(948)
199 15
+2 9
+2 3
fi=(230)
1025 9
+1 6
fe=(227)
203 3
+1 6
-1 3
cfi=(226)
cfn=(790) _IO_file_overflow@@GLIBC_2.2.5
calls=3 732 
* 454

fn=(884) _IO_sputbackc
635 5474
+3 2346
+1 1564
+9 782
+3 3910
-10 1564
+1 782
+5 782

fn=(810) _IO_default_xsputn
371 11
+3 4
fi=(230)
1025 1
fe=(227)
373 2
+26 116
fi=(230)
1025 76
+1 76
fe=(227)
399 152
cfi=(226)
cfn=(790)
calls=38 732 
* 1595
* 76
+2 38
-2 38
-20 156
-4 1
+29 8

fn=(806)
329 22
+1 8
+5 4
-3 2
+3 4
-2 2
+2 4
+3 12

fn=(838)
563 11
+1 1
cfn=(840) _IO_old_init
calls=1 -33 
* 25
+1 1
+1 2
+2 1
+4 1
+7 1
+2 1
-9 5
+15 1
+1 6

fn=(792) _IO_doallocbuf
343 2
+1 4
-1 14
+3 6
+1 2
fi=(230)
1025 6
+1 4
fe=(227)
347 4
cfi=(228)
cfn=(794)
calls=2 78 
* 545
* 4
+3 12

fn=(870) __uflow
299 10
+1 2
-1 2
+1 4
+5 6
+3 2
173 2
308 4
+2 4
+6 4
+7 2
fi=(230)
1025 6
+1 4
fe=(227)
323 4
+1 6
-1 2
cfn=(872)
calls=2 +38 
* 544
-23 4
+21 6

fn=(844) _IO_link_in
87 14
+1 10
+18 18
-16 1
+2 3
-2 1
+2 4
cfi=(238)
cfn=(846)
calls=1 -68 
* 13
+1 7
+10 2
cfi=(238)
cfn=(848)
calls=1 -49 
* 9
+3 1
-11 5
+2 1
-2 1
+3 1
-3 1
+2 1
+3 4
+2 1
-2 1
+1 1
+1 5
-9 2
+1 1
+1 2

fn=(840)
531 1
+3 1
-2 1
+2 1
+5 1
-7 1
+2 1
+10 1
-10 1
+16 1
-11 1
-5 1
+16 1
-16 1
+21 1
-16 5
+16 2
+1 2
+2 1

fl=(209)
fn=(716)
209 2
+1 2
-1 4
+1 2
+1 3
cfi=(210) ./stdlib/./stdlib/random_r.c
cfn=(718) srandom_r
calls=1 -49 
* 6212
+1 4
+1 3

fn=(956) random
288 990738
+3 495369
-3 2476845
+3 990738
+2 1486107
cfi=(210)
cfn=(958) random_r
calls=495369 +61 
* 13854353
+2 1981476
+2 495369
+1 2476845

fl=(280) ./nptl/./nptl/pthread_mutex_unlock.c
fn=(1024) pthread_mutex_unlock@@GLIBC_2.2.5
367 1
51 3
+1 2
367 3
57 2
+8 1
-3 1
-23 1
+1 4
+1 1
+29 1
+2 1
369 2
74 2
+6 4
+4 3
+3 2

fl=(199)
fn=(658)
53 1
+1 1
+1 1
+2 1
+1 1
+4 1
+1 1
+1 1
+3 1
+2 1
+1 1
+1 1
+1 1
+3 1
+1 1
+2 1
+1 1
+1 1
+1 1
+1 1
+9 2

fl=(249)
fn=(912) round_and_return
215 4160
fi=(254) ./stdlib/../sysdeps/generic/get-rounding-mode.h
94 260
+1 2340
fe=(249)
218 520
fi=(255) ./stdlib/../include/rounding-mode.h
46 1300
fe=(249)
355 126
-3 252
+3 378
-3 268
+3 402
+1 260
-1 520
+1 1560
-1 260
cfi=(256) ./stdlib/../sysdeps/ieee754/dbl-64/mpn2dbl.c
cfn=(918) __mpn_construct_double
calls=260 29 
* 4160
-42 520
-80 260
+83 260
-90 260
+90 260
+4 520
-1 520
+36 134
-5 402
fi=(257) ./stdlib/../stdlib/gmp.h
453 134
fe=(249)
328 134
fi=(257)
454 134
fe=(249)
328 134
+22 268
-12 268
fi=(255)
52 788
fe=(249)

fn=(894)
508 520
+45 260
-45 2600
+53 780
+26 260
-24 520
+32 520
+1 520
cob=(4)
cfi=(176)
cfn=(740)
calls=260 0 
* 4160
+1 520
-1 260
+1 260
+14 260
-4 260
-6 260
+10 520
-1 1040
+1 520
+3 520
-12 260
+17 520
+13 1560
+1 520
+8 780
+91 520
-43 520
+19 259
514 259
708 1038
+67 2973
+1 520
+12 520
+16 1040
+42 520
+9 2080
+1 520
980 520
+33 520
+2 520
877 46
1017 23
-2 46
+2 5
-2 33
+3 23
+2 69
+3 46
+19 711
+1 237
+5 520
1770 2860
779 1462
+22 1462
-26 731
-36 7
+1 2
-7 3
862 780
+1 260
+1 260
1175 2600
+2 260
-1 260
+1 520
+3 1040
+12 520
+3 520
1357 5
+18 3
+3 1
+13 1
-13 7
+8 2
+10 6
603 2
1399 2
+3 3
-3 1
+3 6
-3 518
+3 777
-3 259
+3 1554
+8 260
-55 260
+75 260
-17 260
-3 260
+20 260
-16 260
-4 520
-56 260
+76 260
-20 260
-56 260
-1 260
+77 260
-77 260
+77 520
-6 260
+1 260
fi=(250) ./stdlib/../string/bits/string_fortified.h
29 520
fe=(249)
1425 260
fi=(250)
29 260
cob=(4)
cfi=(176)
cfn=(900)
calls=260 -29 
* 5720
fe=(249)
1440 781
+1 781
+2 1562
-26 2078
+7 518
+1 518
-5 518
+2 1036
+8 1548
cfi=(251)
cfn=(906)
calls=258 48 
* 16770
+4 516
+1 516
+1 516
+4 258
+1 258
-4 774
+6 516
+2 1300
+4 2340
cfn=(896) str_to_mpn.isra.0
calls=260 365 
* 45136
+17 520
+2 260
-2 260
+2 260
-2 520
+2 520
+17 520
+2 520
1042 69
+1 23
+2 46
689 3
514 1
708 3
514 2
710 2
-1 3
+24 3
-1 1
+2 1
-2 1
+2 5
882 1300
1081 520
-9 520
739 4
+8 2
1198 3367
cfn=(896)
calls=259 365 
* 20122
+6 259
+20 259
-26 259
+6 1295
+44 259
+1 259
-1 259
+1 259
-1 259
+1 518
+4 518
+6 518
+32 518
1494 260
+1 260
+1 1560
+42 260
-38 1560
+38 520
-38 777
+38 1813
+6 260
-1 260
-1 520
+2 260
-2 260
+1 260
-1 1300
cfn=(912)
calls=260 215 
* 21762
* 262
-4 19
+2 3
-68 1300
cfi=(253)
cfn=(910)
calls=260 28 
* 4160
+1 1560
cfi=(253)
cfn=(910)
calls=260 28 
* 4160
+1 520
+64 1554
cfi=(253)
cfn=(910)
calls=259 28 
* 4144
* 1295
+2 259
1391 1
+5 2
fi=(250)
29 256
fe=(249)
1446 256
fi=(250)
29 1024
cob=(4)
cfi=(176)
cfn=(900)
calls=256 -29 
* 5632
* 512
fe=(249)
864 520
+1 520
+9 520
+6 780
+1 520
-16 2340
+3 5201
+1 1
-1 1
+1 4
+2 1
-6 1
-1 1
+1 2
+6 2599
-6 2599
-1 2599
+1 5718
+5 520
fi=(250)
29 518
fe=(249)
1330 259
fi=(250)
29 1295
cob=(4)
cfi=(176)
cfn=(900)
calls=259 -29 
* 5698
fe=(249)
1357 1554
+9 518
+3 777
+1 777
1485 259
1370 518

fn=(896)
365 5190
+13 519
+1 3114
-4 519
-1 1038
+52 3303
+1 6606
-14 13212
+3 520
+7 260
+3 780
+3 520
-3 6086
+3 6086
-47 6606
+49 2076
+7 1557
+2 1557
+2 519
+1 519
+15 4671

fl=(181)
fn=(722) sysmalloc_mmap.isra.0
2400 5
+13 3
-13 1
+18 2
+3 9
cfi=(211) ./misc/../sysdeps/unix/sysv/linux/mmap64.c
cfn=(724) mmap
calls=1 47 
* 26
* 1
+3 2
+4 2
2008 4
2432 4
cfi=(212) ./misc/../sysdeps/unix/sysv/linux/setvmaname.c
cfn=(726) __set_vma_name
calls=1 33 
* 59
+16 3
+19 1
-1 1
+5 1
-4 2
+4 2
+1 5
+3 3
+1 5
+5 7

fn=(616) alloc_perturb
1985 24
+2 8

fn=(608) _int_malloc
3846 88
1326 16
+19 48
3887 16
1794 8
3914 16
+63 16
+62 62
+1 15
+20 8
-1 8
-1 8
+1 16
+1 16
-2 14
+12 40
-90 3
+2 3
-2 3
+2 6
4487 96
4257 24
+2 15
+3 5
-3 5
+3 10
+1 8
+71 24
-4 8
+1 8
+1 8
-1 8
+1 8
+1 16
+1 24
+5 32
+4 24
+3 20
-3 15
+3 12
-3 9
+3 8
-3 4
4443 8
+1 16
+2 16
+3 24
+17 8
4070 3
-91 18
2552 2
+12 2
-12 10
+12 2
+1 3
+3 4
+8 5
cfn=(722)
calls=1 2400 
* 148
* 1
+1 2
4482 2
-22 24
cfn=(616)
calls=8 1985 
* 32
+1 8
-9 12
+2 12
-1 6
+1 6
-3 6
+3 6
+2 6
-2 24
+2 6
+3 12
2553 1
+36 3
+1 1
-1 1
+1 1
+9 4
+9 3
2921 3
+1 1
+4 1
+4 5
+5 1
-2 1
+5 1
-3 2
-3 1
+2 1
+1 1
+1 1
-1 3
+1 1
4482 1
2669 3
+8 2
+1 3
+13 1
+2 1
-2 2
+8 5
+8 2
+48 4
+40 3
+19 2
+3 2
+1 6
+2 1
+1 5
cfi=(184) ./malloc/./malloc/morecore.c
cfn=(610) __glibc_morecore
calls=1 25 
* 33
+12 4
-12 1
+12 1
2008 4
3882 1
2873 1
+3 1
-1 1
+1 4
+12 1
-11 1
+11 2
2783 1
-1 2
2017 2
2745 1
+1 1
+6 3
-6 1
+6 3
-43 3
cfi=(184)
cfn=(610)
calls=1 25 
* 64
+1 2
-1 1
+1 1
2008 1
2711 1
2008 3
2712 1
+3 2
+29 3

fn=(606) tcache_init.part.0
3242 4
+9 8
+1 3
cfn=(608)
calls=1 3846 
* 359
+1 2
+8 4
+9 1
fi=(187) ./malloc/../string/bits/string_fortified.h
59 2
fe=(181)
3270 1
fi=(187)
59 86
fe=(181)
3274 3

fn=(596)
3699 8
+10 4
-10 28
+10 32
+8 8
+3 12
+2 8
+34 19
fi=(182)
153 6
fe=(181)
3732 4
+1 4
+21 8
-21 8
+21 4
cfn=(608)
calls=4 +92 
* 709
+2 8
+33 1
fi=(187)
59 1
fe=(181)
3789 2
+48 8
-78 2
+37 3
-12 3
+12 6
+3 15
+8 3
+2 6
+2 6
fi=(182)
264 1
cfn=(600)
calls=1 -2 
* 1151
* 1
fe=(181)
3756 9
+3 9
+78 3
fi=(187)
59 6
fe=(181)
3837 18
fi=(187)
59 3
cob=(4)
cfi=(176)
cfn=(620)
calls=3 -59 
* 31975
fe=(181)
3248 4
cfn=(606)
calls=1 -6 
* 473
* 1

fn=(802)
3294 24
+7 6
1326 6
+19 15
3311 6
+2 12
+3 6
+10 6
+28 18
-36 6
+10 12
cfn=(608)
calls=3 3846 
* 398
+1 15
fi=(182)
153 6
fe=(181)

fl=(212)
fn=(726)
33 7
+2 5
+14 12
-9 4
cob=(4)
cfi=(176)
cfn=(560)
calls=1 -40 
* 26
* 3
+7 1
+1 1

fl=(229) ./io/../sysdeps/unix/sysv/linux/fstat64.c
fn=(798) fstat
30 2
+9 8
+33 2

fl=(234) ./stdio-common/./stdio-common/Xprintf_buffer_done.c
fn=(822) __printf_buffer_done
25 140
+1 420
+5 280
+2 1680
+7 140

fl=(83) ./string/../sysdeps/x86_64/multiarch/strnlen.c
fn=(284) strnlen
31 2
fi=(84)
+9 6
-2 8
fe=(83)
-7 4
fi=(84)
+10 4
+1 6
+3 4
+4 6
+3 10
fe=(83)

fl=(251)
fn=(906)
48 4403
+6 518
+12 518
+76 2849
-71 259
+1 518
+69 259
-60 518
cfi=(252)
cfn=(908)
calls=259 -50 
* 5451
* 518
+2 259
+1 259
+4 518

fl=(184)
fn=(610)
25 2
+1 4
-1 4
+4 2
cfi=(185)
cfn=(612)
calls=2 +8 
* 77
+1 4
+4 4

fl=(131) ./debug/../sysdeps/x86_64/multiarch/memmove_chk.c
fn=(406) __memmove_chk
29 1
fi=(93) ./debug/../sysdeps/x86_64/multiarch/ifunc-memmove.h
+28 3
-1 2
+4 3
+14 2
+3 2
+8 2
+8 2
+3 5
fe=(131)

fl=(215)
fn=(742)
52 268
+13 268
+1 268
+1 268
+3 268
+2 268
+1 268
+3 268
+1 268
+8 268
+1 268
+1 268
+5 536

fl=(186)
fn=(614)
36 2
fi=(289) ./misc/../sysdeps/unix/sysv/linux/brk_call.h
-12 4
fe=(186)
+13 4
+1 4
+6 2
+1 2

fl=(282)
fn=(1036)
30 2
+3 2
-3 8
+3 5
+3 4
+4 6
+1 4
+2 1
+2 1
+36 1
-5 1
-33 1
+35 3
+3 3
+1 3
cfi=(180)
cfn=(1038) _mcleanup
calls=1 463 
* 474

fl=(119) ./string/../sysdeps/x86_64/multiarch/strncase_l.c
fn=(366) strncasecmp_l
31 1
fi=(114)
+6 2
-1 4
fe=(119)
-5 2
fi=(114)
+7 3
+3 2
+4 3
+3 4
fe=(119)

fl=(219)
fn=(764)
28 1562
+4 2
+1 4
-1 2
+1 2
-1 4
+1 2
-1 4
+1 6
cfi=(220)
cfn=(766)
calls=2 1522 
* 5198
-5 414
+4 138
+1 276
-1 138
+1 138
-1 276
+1 138
-1 276
+1 414
cfi=(220)
cfn=(766)
calls=138 1522 
* 96096
+4 700

fl=(112) ./string/../sysdeps/x86_64/multiarch/strncmp.c
fn=(352) strncmp
67 1
-23 2
-1 4
+24 2
-22 3
+3 2
+4 3
+3 4

fl=(242) ./stdio-common/./stdio-common/vfscanf-internal.c
fn=(866) __vfscanf_internal
278 1703
+10 655
+1 131
fi=(247) ./stdio-common/../include/scratch_buffer.h
78 131
fe=(242)
289 131
fi=(247)
77 262
fe=(242)
339 131
fi=(247)
77 131
fe=(242)
339 524
+6 394
+3 524
+4 131
+20 262
-20 131
+13 131
-6 131
+8 262
-8 131
+8 131
+5 262
-5 131
+5 393
cfi=(238)
cfn=(846)
calls=131 24 
* 1703
* 393
+9 131
fi=(268)
59 131
fe=(242)
381 393
-49 131
-48 131
-1 131
+10 131
-11 131
+46 131
-1 131
-1 131
-1 131
-12 131
-30 262
419 1302
+24 1302
+1 1302
+3 1300
-66 2604
3095 786
+3 391
223 391
-17 391
+17 391
-1 391
489 391
222 782
489 782
222 391
489 782
372 917
483 391
fi=(243)
55 2346
fe=(242)
506 1955
345 260
+98 260
+6 520
3105 1310
cfi=(238)
cfn=(848)
calls=131 54 
* 1179
fi=(247)
85 524
fe=(242)
3109 262
+17 262
+6 1572
660 782
+4 782
+1 1566
+4 391
+1 1173
-1 391
+1 2737
+6 5463
+3 1820
-3 910
+3 3642
-3 1
+3 4
-3 1822
+4 3128
+1 1955
+4 1173
-4 1173
cfi=(227)
cfn=(884)
calls=391 -46 
* 8602
+4 4692
530 391
+3 3519
665 393
+11 2
cfi=(227)
cfn=(870)
calls=1 299 
* 459
* 3
3105 393
372 393
546 780
+8 260
-21 520
1992 1560
+1 520
260 260
1993 520
+8 780
+12 1300
+21 520
263 780
2501 520
+10 260
206 260
2511 260
+2 260
-2 260
+2 260
-5 520
+37 780
1450 786
+5 131
-5 131
+5 262
+9 917
1813 524
+9 131
fi=(247)
113 524
fe=(242)
1822 262
fi=(247)
113 393
fe=(242)
1815 832
+5 2103
260 570
1877 285
260 570
+3 855
1879 1140
+2 2565
-68 1094
231 131
1884 262
206 131
1891 262
214 262
1892 262
+28 917
cfi=(227)
cfn=(884)
calls=131 635 
* 2882
* 393
260 262
+3 393
1924 262
1742 262
1942 262
206 131
1742 262
1941 393
+1 131
cfi=(245) ./stdlib/../stdlib/strtol.c
cfn=(886) __strtol_internal
calls=131 107 
* 16966
* 262
+6 393
+3 655
+6 131
-4 262
+4 262
+23 262
685 520
1822 655
1498 262
+3 262
+97 524
1813 262
1501 262
1893 18
+1 18
+98 260
+21 260
-15 260
+15 520
-54 262
2526 520
+2 260
-2 260
+2 260
cfi=(248)
cfn=(892)
calls=260 68 
* 270470
+2 1560
+1 3120
206 260
2098 1040
260 2
+3 3
2101 7
+1 2
-5 2
+22 1
+5 520
+11 2340
260 6662
+3 9993
2133 3331
2239 28205
+4 3590
-4 3590
231 3590
2243 10770
2124 7180
2243 1
-4 1
231 1
2243 3
2124 2
+6 11553
+5 2600
2239 1040
231 260
2246 520
206 260
2254 520
2492 260
214 520
2492 1300
260 780
2172 1040
-4 1040
+52 780
-77 1040
+1 3120
+26 1040
-2 260
+15 520
+7 520
1976 1310
-15 262
+1 393
2168 260
-1 260
+5 1560
+1 780
+10 520
+21 260
fi=(247)
113 260
fe=(242)
2204 260
-18 2080
260 780
+3 780
2186 2080
+2 520
+32 1040
1442 262
-1 262
249 1
2104 5
2733 259
2097 259
-99 518
2239 2
cfi=(227)
cfn=(870)
calls=1 299 
* 159
* 3
-7 2340
cfi=(227)
cfn=(884)
calls=260 635 
* 5720
* 520

fl=(121) ./string/../sysdeps/x86_64/multiarch/memcmp.c
fn=(374) bcmp
29 1
fi=(122) ./string/../sysdeps/x86_64/multiarch/ifunc-memcmp.h
+5 5
+1 2
+1 2
+1 3
+3 2
+4 3
+3 4
fe=(121)
-18 2

fl=(92) ./debug/../sysdeps/x86_64/multiarch/mempcpy_chk.c
fn=(304) __mempcpy_chk
29 1
fi=(93)
+28 3
-1 2
+4 3
+14 2
+3 2
+8 2
+8 2
+3 5
fe=(92)

fl=(200) ./libio/./libio/vtables.c
fn=(660) check_stdfiles_vtables
545 1
+1 4
+1 3
+1 3
+2 1

fl=(241)
fn=(864)
25 1703
+4 131
+1 262
-1 655
+1 131
cfi=(242)
cfn=(866)
calls=131 278 
* 551220
+4 655

fl=(211)
fn=(724)
47 1
+3 2
-3 6
+6 2
+5 6
+2 4
-7 5

fl=(223)
fn=(778)
27 420
+1 1260
-1 2940
+4 1418
+2 578
+3 289
fi=(268)
-7 289
fe=(223)
+8 578
fi=(268)
-8 289
fe=(223)
+12 289
fi=(268)
-12 289
cob=(4)
cfi=(176)
cfn=(780)
calls=289 -29 
* 5416
fe=(223)
+11 867
-9 578
+2 867
+11 2520

fl=(190) ./signal/./signal/sigaction.c
fn=(626) sigaction
26 2
+1 6
fi=(191) ./signal/../sysdeps/unix/sysv/linux/internal-signals.h
+26 2
fe=(190)
-26 4
+6 2
cfi=(192)
cfn=(630)
calls=2 +10 
* 128

fl=(180)
fn=(592)
125 2
+7 1
-7 3
+7 1
-7 2
+7 1
-7 2
+7 1
-7 4
+7 1
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 26
+1 3
-1 1
+1 1
cob=(4)
cfi=(176)
cfn=(560)
calls=1 0 
* 26
* 1
+1 2
+11 2
+68 10
-60 1
-1 1
+16 1
-15 1
+1 2
+14 1
-11 1
+11 1
-11 1
+11 1
-11 2
+11 2
+1 2
+4 1
-19 1
+21 1
-2 1
-21 1
+23 1
-22 1
+4 1
+1 1
+7 1
+2 1
+3 1
+3 1
+2 1
cob=(4)
cfi=(176)
cfn=(594)
calls=1 0 
* 33704
+1 2
+8 1
+7 1
-8 1
+27 1
-21 1
-3 1
+6 1
-7 1
+1 1
+6 2
+3 9
-91 3
+3 3
cfi=(189) ./gmon/../sysdeps/posix/profil.c
cfn=(624) profil
calls=1 -41 
* 157
+1 1
+10 1
+53 2

fn=(1040) write_gmon
377 1
+4 1
-4 10
+4 1
cfi=(214)
cfn=(738)
calls=1 24 
* 318
+1 2
+11 5
cfi=(283) ./io/../sysdeps/unix/sysv/linux/open64_nocancel.c
cfn=(1042) __open_nocancel
calls=1 28 
* 18

fn=(1038)
463 2
113 4
463 1
113 1
cfi=(189)
cfn=(624)
calls=1 -47 
* 103
+2 2
466 1
116 1
466 2
+1 1
cfn=(1040)
calls=1 -90 
* 356

fl=(256)
fn=(918)
29 260
+10 260
-6 260
+7 2600
+6 260
+1 520

fl=(132) ./string/../sysdeps/x86_64/multiarch/stpcpy.c
fn=(410) stpcpy
33 1
fi=(118)
+5 2
+1 1
-1 2
+1 2
+3 2
+4 3
+3 3
fe=(132)
-16 1

fl=(198)
fn=(654)
30 1
+1 2
-1 4
+1 4
+2 3
cob=(4)
cfi=(176)
cfn=(656)
calls=1 -33 
* 24
+4 5
+1 3
+2 4

fl=(221)
fn=(786)
117 140
+1 420
-1 140
-64 140
+64 840
-66 560
+2 420
+69 140
-1 140
+1 560
-1 140
cfi=(234)
cfn=(822)
calls=140 -96 
* 2660
-56 280
cfn=(770) __printf_buffer_to_file_switch
calls=140 -36 
* 1820
+1 140
-8 140
+1 140
fi=(290) ./stdio-common/../libio/libioP.h
1025 140
fe=(221)
58 140
+1 140
-1 140
fi=(290)
1025 280
+1 280
fe=(221)
59 280
cfi=(226)
cfn=(788)
calls=140 1198 
* 16060
* 280

fn=(768)
108 140
+1 140
fi=(236)
+18 140
fe=(221)
-18 140
fi=(236)
+28 140
-9 140
+9 140
-13 140
fe=(221)
-13 140
fi=(236)
+13 140
fe=(221)
-12 140
cfn=(770)
calls=140 -83 
* 1820

fn=(770)
29 280
+1 1400
+10 280
+1 280
+3 1120
+1 280

fl=(245)
fn=(886)
107 131
+1 524
cfi=(246) ./stdlib/../stdlib/strtol_l.c
cfn=(888) ____strtol_l_internal
calls=131 238 
* 16311

fl=(86) ./string/../sysdeps/x86_64/multiarch/strcmp.c
fn=(290) strcmp
79 1
-31 2
+1 1
-2 4
+2 2
+3 2
+4 3
+3 3
+20 1

fl=(123) ./wcsmbs/../sysdeps/x86_64/multiarch/wmemset.c
fn=(378) wmemset
31 2
fi=(124) ./wcsmbs/../sysdeps/x86_64/multiarch/ifunc-wmemset.h
+5 10
+1 6
fe=(123)
-6 2

fl=(189)
fn=(624)
66 18
+12 6
-3 8
+13 2
+16 1
+5 1
+8 2
-13 1
-1 1
+1 1
+13 1
-12 1
+1 1
+3 1
+6 1
fi=(291) ./gmon/../sysdeps/unix/sysv/linux/sigsetops.h
-53 1
fe=(189)
+55 1
cfi=(190)
cfn=(626)
calls=1 -91 
* 84
* 2
+3 1
+1 1
cfi=(193)
cfn=(632)
calls=1 -95 
* 4
* 1
+2 2
-2 3
+2 1
-2 2
+1 2
+1 1
cfi=(194) ./time/../sysdeps/unix/sysv/linux/setitimer.c
cfn=(634) setitimer
calls=1 -94 
* 6
+1 13
-46 2
+4 4
cfi=(194)
cfn=(634)
calls=1 -53 
* 6
* 2
+2 1
+1 3
+39 1
-39 2
+39 1
-39 1
+39 5
-39 1
cfi=(190)
cfn=(626)
calls=1 -59 
* 60

fl=(263)
fn=(954)
26 1486107
+1 495369
cfi=(209)
cfn=(956)
calls=495369 288 
* 25247840
+1 990738

fl=(279) ./nptl/./nptl/pthread_mutex_lock.c
fn=(1022) pthread_mutex_lock@@GLIBC_2.2.5
77 1
+3 3
+2 1
+2 2
-7 4
+11 2
+91 1
+3 1
+2 1
+3 1
-63 1
+66 3
-93 2
+11 4
+4 1
+3 2
-71 1
+1 7
+1 1
+84 3
+1 2

fl=(194)
fn=(634)
29 2
+2 8
+29 2

fl=(262)
fn=(946)
25 18
+2 8
-2 2
+3 8
fi=(230)
979 4
+1 16
fe=(262)
31 14
-4 10
+1 4
cfi=(227)
cfn=(948)
calls=2 199 
* 339
* 2
-1 10

fl=(120) ./string/../sysdeps/x86_64/multiarch/strchrnul.c
fn=(370) strchrnul
31 1
fi=(84)
+9 3
-2 4
fe=(120)
-7 2
fi=(84)
+10 2
+1 3
+3 2
+4 3
+3 5
fe=(120)

fl=(203) ./csu/../sysdeps/nptl/libc_start_call_main.h
fn=(696) (below main)
29 4
+15 1
-15 5
+15 1
cfi=(204) ./setjmp/../sysdeps/x86_64/bsd-_setjmp.S
cfn=(698) _setjmp
calls=1 -16 
* 38
* 1
+2 2
+5 2
+1 2
+3 2
+3 6
cob=(5)
cfi=(179)
cfn=(704) main
calls=1 -58 
* 392651812
+16 2
cfi=(276)
cfn=(1014)
calls=1 +63 
* 1263

fl=(216)
fn=(746)
206 5
+24 5
+5 5
+14 5
+25 5
+1 5
+1 5
+2 5
+1 5
+4 3
+4 3
+2 3
+2 3
+3 3
+2 3
+1 3
+11 3
+10 3
+1 3
+3 3
+4 6
+5 3
+1 3
+1 3
957 3
+1 3
+1 3
+1 3
+2 3
+3 3
+1 3
+4 1
+1 1
+22 2
+1 2
+1 2
+1 2
+1 2
+1 2
+2 2
+47 2
+1 2
+3 2
+1 2
+1 2
+3 4
+7 2
+1 2
+1 2
+1 2
+10 2
+1 2
+3 2
+1 2
+1 2
+1 2
+6 2
+2 2
+3 2
+1 2

fl=(232) ./gmon/../sysdeps/unix/sysv/linux/profil-counter.h
fn=(818) __profil_counter
25 123
fi=(189)
+17 369
+5 246
-5 123
+5 615
+2 246
+1 216
fe=(232)
-18 123

fl=(210)
fn=(718)
162 2
+8 2
+2 1
+1 2
+7 2
-4 1
+4 2
+1 2
+5 1
+1 3
-3 3
+8 8
+2 1
-1 2
+1 2
+2 3
+1 2
-10 2
+5 232
+2 29
-1 58
+1 58
+2 87
+1 58
-10 58
+13 4
+2 1
-2 1
+3 1
-3 1
+3 1
362 930
+9 310
-1 310
+2 310
+3 620
+3 310
+4 310
-3 620
+9 600
+2 300
+1 300
203 600
390 10
+1 10
203 20
+7 2
381 20

fn=(958)
354 495369
+3 1981476
+5 495369
-2 495369
+2 990738
+8 495369
+1 495369
+1 495369
+3 990738
+3 495369
+4 495369
-7 495369
+2 990738
+2 990738
+8 958780
-9 479390
+12 479390
+3 479390
-2 479390
+7 479390
-8 15979
+3 15979
-2 15979
+7 15979
-10 31958

fl=(226)
fn=(814) _IO_file_write@@GLIBC_2.2.5
1174 96
+2 48
-1 24
+6 12
cfi=(231) ./io/../sysdeps/unix/sysv/linux/write.c
cfn=(816) write
calls=12 25 
* 100
+1 24
+5 12
+1 12
-12 24
+4 36
+1 24
+10 36
+3 72
-4 36

fn=(880) _IO_file_read
1131 2
+1 2
+2 2
-1 2
+1 4
cfi=(244) ./io/../sysdeps/unix/sysv/linux/read.c
cfn=(882) read
calls=2 25 
* 18

fn=(850)
213 12
+9 2
+2 6
+23 6
357 12
-76 4
cfn=(852) _IO_file_open
calls=1 -99 
* 95
* 1
+3 2
+3 3
cfi=(240)
cfn=(856)
calls=1 77 
* 59
* 1
+1 2
-74 1
+13 1
+1 2
+19 6

fn=(852)
182 2
+3 1
-3 10
+2 2
+4 1
cfi=(239)
cfn=(854)
calls=1 30 
* 36
* 1
+1 2
+3 2
+3 1
-4 1
+1 3
+3 1
-3 1
+3 1
+10 2
cfi=(227)
cfn=(844)
calls=1 87 
* 21
+1 1
+1 6

fn=(808) _IO_do_write@@GLIBC_2.2.5
424 13
+2 39
+1 1
-3 36
fi=(230)
1025 12
fe=(226)
424 96
+20 12
-10 24
+7 48
fi=(230)
1025 24
+1 24
fe=(226)
449 48
cfn=(814)
calls=12 1174 
* 556
* 12
+1 36
+2 12
+4 24
-3 24
-1 24
+4 24
-30 24
+28 12
-28 24
+1 96
+28 24

fn=(790)
732 400
+1 200
+7 248
+37 49
-2 98
+3 82
+3 123
+1 123
+1 164
+4 41
+1 246
-45 2
+12 2
+9 3
+5 3
+2 2
-5 1
+5 1
+1 1
-5 1
+1 1
+4 2
-7 1
+10 2
+13 9
-12 9
+1 9
+11 36
-12 9
cfn=(808)
calls=9 424 
* 847
+9 8
-1 4
+1 4
-1 4
cfn=(808)
calls=4 424 
* 422
* 8
-12 2
+1 2
-28 2
cfi=(227)
cfn=(792)
calls=1 343 
* 310
+1 1
+9 1
-9 5

fn=(788)
1198 987
+7 141
-7 282
+6 564
+9 282
-2 564
+17 3
+1 132
+5 132
+2 264
+2 132
-4 132
+2 132
+2 132
-1 132
-1 132
cob=(4)
cfi=(176)
cfn=(824)
calls=132 0 
* 2805
-2 8
+2 16
+2 8
-4 8
+2 8
+2 8
-1 8
-1 8
cob=(4)
cfi=(176)
cfn=(824)
calls=8 0 
* 132
+2 140
-2 140
+4 280
+28 1269
-55 140
+4 140
-4 140
+1 280
-14 1
+44 1
fi=(230)
1025 3
+1 2
fe=(226)
1244 8
fi=(230)
1025 24
+1 16
fe=(226)
1244 27
cfn=(790)
calls=9 732 
* 1439
* 18
+6 18
+1 45
+2 27
+11 18
+1 4
cfi=(227)
cfn=(810)
calls=1 371 
* 2350
+2 3
-48 1290
-2 1256
446 16
1221 8
+11 24
444 16

fn=(796)
1147 2
+1 4
cfi=(229)
cfn=(798)
calls=2 30 
* 12

fn=(874)
462 2
+4 6
-4 18
+7 4
+6 6
+3 4
+12 2
fi=(230)
1025 2
fe=(226)
506 4
cfi=(227)
cfn=(878)
calls=2 164 
* 52
+6 2
+5 2
-5 2
fi=(230)
1025 4
fe=(226)
512 2
fi=(230)
1025 2
fe=(226)
512 6
fi=(230)
1026 4
fe=(226)
517 8
cfn=(880)
calls=2 1131 
* 30
+2 4
+16 2
-9 2
+9 4
+2 4
+1 16
-57 3
+5 2
cfi=(227)
cfn=(792)
calls=1 343 
* 293
+4 4

fn=(842)
106 6
+5 1
-1 1
+3 1
cfi=(227)
cfn=(844)
calls=1 -26 
* 89
+1 1
+1 3

fl=(94) ./debug/../sysdeps/x86_64/multiarch/memcpy_chk.c
fn=(308) __memcpy_chk
29 1
fi=(93)
+28 3
-1 2
+4 3
+14 2
+3 2
+8 2
+8 2
+3 5
fe=(94)

fl=(106) ./string/../sysdeps/x86_64/multiarch/strrchr.c
fn=(336) rindex
28 1
fi=(84)
+12 3
-2 4
fe=(106)
-10 2
fi=(84)
+13 2
+1 3
+3 2
+4 3
+3 5
fe=(106)

fl=(133) ./string/../sysdeps/x86_64/multiarch/memmove.c
fn=(414) memmove
29 1
fi=(99)
+28 3
-1 2
+4 3
+14 2
+3 2
+8 2
+8 2
+3 5
fe=(133)

fl=(231)
fn=(816)
25 12
+1 76
+1 12

fl=(246)
fn=(888)
238 655
+54 131
-54 131
+19 131
-19 524
+14 131
-14 393
+26 262
+31 524
+9 786
+2 262
+5 262
-1 131
+6 262
+4 262
+15 262
+10 524
-87 262
395 131
+56 655
+26 131
+1 131
-84 131
-1 131
+96 262
-5 570
+5 285
+1 855
-41 570
+2 1140
+2 855
+28 855
+3 570
+11 262
+5 393
+1 131
+5 262
+3 131
+15 131
-15 262
-2 262
+39 1048
342 262

fl=(100) ./wcsmbs/../sysdeps/x86_64/multiarch/wcscat.c
fn=(324) wcschr
31 2
fi=(101) ./wcsmbs/../sysdeps/x86_64/multiarch/ifunc-avx2.h
+9 6
-2 8
fi=(102) ./wcsmbs/../sysdeps/x86_64/multiarch/wcschr.c
-7 4
fi=(101)
+10 4
+1 6
+3 4
+4 6
+3 10
fe=(100)

fn=(390) wcscat
31 1
fi=(97)
+9 3
-1 4
+2 3
+3 2
+4 4
fe=(100)
-17 1

fl=(283)
fn=(1042)
28 2
+3 1
-3 6
+3 2
+3 2
+1 1
-1 3
+2 1

fl=(202) ./csu/../csu/libc-start.c
fn=(678) __libc_start_main@@GLIBC_2.34
242 13
+69 3
+1 3
cfi=(195)
cfn=(640)
calls=1 67 
* 76
+25 6
+6 2
-3 2
+10 2
cob=(4)
cfi=(176)
cfn=(692)
calls=1 0 
* 7
+2 2
+8 4
cfi=(203)
cfn=(696)
calls=1 29 
* 392653141
128 2
+6 3
+1 6
cob=(4)
cfi=(176)
cfn=(680)
calls=1 0 
* 13
* 1
+3 1
+1 2
+3 2
+1 2
-1 1
+2 7
+1 4
cob=(5)
cfi=(179)
cfn=(686) 0x0000000000001450
calls=1 0 
* 12
-1 4

fl=(163)
fn=(522) time
38 1
fi=(292) ./time/../sysdeps/unix/sysv/linux/dl-vdso.h
+2 2
+1 2
fe=(163)
-3 2

fn=(712)
31 1
+1 4
+1 1

fl=(244)
fn=(882)
25 2
+1 14
+1 2

fl=(188)
fn=(622)
158 3
+1 6
+5 3
+1 3
+1 3
+1 3
+1 3
+69 3
+1 3
+6 2
+1 2
+12 2
+3 2
+1 2
+12 2
+1 2
+13 2
+1 2
+2 2
+3 1
+3 1
+3 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
-6 6
+1 6
+1 6
+1 6
+1 6
+1 6
+1 7
+3 1
+1 1
+1 1
+1 1
+3 2
-6 1
+1 1
+1 1
+1 1
+3 2
+11 1
+1 1
+1 1
+1 31849
+1 1
+1 2

fl=(208)
fn=(708)
64 34658
+12 138632
+9 34658
+1 69316
+11 34657
+4 34657
-4 34657
+4 69314
+6 34657
-5 34657
+1 69314
+16 69278
+1 103917
+53 34640
+1 34640
-67 36
+1 18
-1 18
+1 18
+4 18
+1 36
+1 18
+1 18
+1 18
+57 18
+1 18
-50 34639
+1 34639

fl=(95) ./string/../sysdeps/x86_64/multiarch/memrchr.c
fn=(312) memrchr
29 1
fi=(84)
+11 3
-2 4
fe=(95)
-9 2
fi=(84)
+12 2
+1 3
+3 2
+4 3
+3 5
fe=(95)

fl=(107) ./wcsmbs/../sysdeps/x86_64/multiarch/wcscmp.c
fn=(340) wcscmp
30 1
fi=(101)
+10 3
-2 4
fe=(107)
-8 2
fi=(101)
+11 2
+1 3
+3 2
+4 3
+3 5
fe=(107)

fl=(204)
fn=(698)
28 1
+2 1
+2 1
cfi=(205)
cfn=(700)
calls=1 -1 
* 35

fl=(269)
fn=(992)
28 2
+1 2
+1 2
+1 2
+13 2
+1 2
+16 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+5 2
+1 2
+1 2
+1 2
+1 2

fl=(125) ./string/../sysdeps/x86_64/multiarch/strcpy.c
fn=(382) strcpy
29 2
fi=(118)
+9 4
+1 2
-1 4
+1 4
+3 4
+4 6
+3 6
fe=(125)
-20 2

fl=(224)
fn=(826)
242 140
+1 140
+1 140
+1 140
+17 140
+1 140
+42 140
+1 140
+2 137
+1 137
+2 133
+4 133
+1 99
+1 99
+1 99
+1 99
+1 99
+1 99
+2 99
+2 99
+6 34
+1 34
+1 34
+1 34
+1 34
+7 3
+1 3
+1 3
+1 3
+2 3
+17 4
+1 4
+1 4
+1 4
+1 4

fn=(782)
255 296
+1 296
+6 296
+1 296
+2 5
+1 5
+1 5
+38 291
+1 291
+2 288
+1 288
+2 283
+4 283
+1 271
+1 271
+1 271
+1 271
+1 123
+1 123
+2 123
+2 123
-2 148
+2 148
+6 12
+1 12
+1 12
+1 12
+1 12
+7 3
+1 3
+1 3
+1 3
+2 3
+17 5
+1 5
+1 5
+1 5
+1 5
+18 5
+1 5
+5 5
+1 5
+24 5
+1 5
+4 5
+2 5
+4 5
+1 5
+11 5
+3 5
+2 5
+2 5
+4 5
+1 5
+9 5
+1 5
+2 5
+2 5
+1 5
+1 5
+3 5
+2 5
+2 5
+2 10
+6 5
+1 5
+1 5
+1 5
+1 5
+1 5
+1 5
+1 5
+1 5
+1 5
+1 5
+1 5
-11 30
+1 30
+1 30
+1 30
+1 30
+1 30
+1 30
+1 30
+1 30
+1 30
+1 30
+1 30
+2 5
+1 5
+1 5
+1 5
+2 5
+4 10

fn=(902)
249 775
+1 775
+1 3875
+4 775
+1 775
+6 775
+1 775
+42 775
+1 775
+2 775
+1 775
+55 775
+1 775
+1 775
+1 775
+1 775

ob=(5)
fl=(179)
fn=(832) read_file
0 5
cob=(2)
cfi=(207)
cfn=(706)
calls=1 26 
0 51
0 10
cob=(4)
cfi=(176)
cfn=(834)
calls=1 0 
0 607
0 8
cob=(4)
cfi=(176)
cfn=(862)
calls=1 0 
0 1166
0 1175
cob=(4)
cfi=(176)
cfn=(862)
calls=130 0 
0 553853
0 3389

fn=(976) show_path
0 5
cob=(2)
cfi=(207)
cfn=(706)
calls=1 26 
0 51
0 5
cob=(4)
cfi=(176)
cfn=(762)
calls=1 0 
0 409
0 1574
cob=(4)
cfi=(176)
cfn=(762)
calls=131 0 
0 92547
0 661
cob=(4)
cfi=(176)
cfn=(944)
calls=1 0 
0 220
0 6
cfn=(964) calc_dis_sum
calls=1 0 
0 4488
0 9
cob=(4)
cfi=(176)
cfn=(762)
calls=1 0 
0 908
0 18
cob=(4)
cfi=(176)
cfn=(762)
calls=1 0 
0 2464
0 3

fn=(636) atexit
0 4
cob=(4)
cfi=(176)
cfn=(638)
calls=1 0 
0 74

fn=(748) set_data_info
0 5
cob=(2)
cfi=(207)
cfn=(706)
calls=1 26 
0 51
0 25
cob=(4)
cfi=(176)
cfn=(750)
calls=1 0 
0 23
0 12
cob=(4)
cfi=(176)
cfn=(754)
calls=1 0 
0 39
0 10

fn=(934) round_off
0 85805
cob=(2)
cfi=(207)
cfn=(706)
calls=17161 26 
0 806571
0 120127

fn=(676) (below main)
0 12
cob=(2)
cfi=(202)
cfn=(678)
calls=1 242 
0 392653321

fn=(924) calc_each_euc_dis
0 6
cob=(2)
cfi=(207)
cfn=(706)
calls=1 26 
0 51
0 2816506
cfn=(926) calc_euc_dis
calls=17161 0 
0 2488353
0 155639

fn=(964)
0 350
cob=(2)
cfi=(207)
cfn=(706)
calls=70 26 
0 3302
0 310240

fn=(962) conv_route
0 45
cob=(2)
cfi=(207)
cfn=(706)
calls=9 26 
0 427
0 22545

fn=(760) show_data_info
0 5
cob=(2)
cfi=(207)
cfn=(706)
calls=1 26 
0 51
0 8
cob=(4)
cfi=(176)
cfn=(762)
calls=1 0 
0 3324
0 11
cob=(4)
cfi=(176)
cfn=(762)
calls=1 0 
0 772
0 7
cob=(4)
cfi=(176)
cfn=(762)
calls=1 0 
0 910
0 3

fn=(960) farthest_insertion
0 45
cob=(2)
cfi=(207)
cfn=(706)
calls=9 26 
0 427
0 142996402
cfn=(962)
calls=9 0 
0 23017
0 54

fn=(968) or_one_opt
0 300
cob=(2)
cfi=(207)
cfn=(706)
calls=60 26 
0 2824
0 69613283

fn=(1028) 0x0000000000001410
0 9
cob=(4)
cfi=(176)
cfn=(1034)
calls=1 0 
0 521

fn=(922) calc_each_dis
0 5
cob=(2)
cfi=(207)
cfn=(706)
calls=1 26 
0 51
0 8
cfn=(924)
calls=1 0 
0 5460555
0 4

fn=(588)
0 20
cob=(4)
cfi=(176)
cfn=(590)
calls=1 0 
0 34016
0 3
cfn=(636)
calls=1 0 
0 78

fn=(966) local_search
0 300
cob=(2)
cfi=(207)
cfn=(706)
calls=60 26 
0 2824
0 480
cfn=(968)
calls=60 0 
0 69616407
0 180
cfn=(970) two_opt
calls=60 0 
0 87036766
0 180
cfn=(972) or_two_opt
calls=60 0 
0 86516954
0 180

fn=(970)
0 300
cob=(2)
cfi=(207)
cfn=(706)
calls=60 26 
0 2824
0 45108660
cob=(4)
cfi=(176)
cfn=(952)
calls=495360 0 
0 29210257
0 12714725

fn=(972)
0 300
cob=(2)
cfi=(207)
cfn=(706)
calls=60 26 
0 2824
0 86513830

fn=(686)
0 12

fn=(704)
0 5
cob=(2)
cfi=(207)
cfn=(706)
calls=1 26 
0 31
0 8
cob=(4)
cfi=(176)
cfn=(710)
calls=1 0 
0 8
0 2
cob=(4)
cfi=(176)
cfn=(714)
calls=1 0 
0 6234
0 3
cob=(4)
cfi=(176)
cfn=(720)
calls=1 0 
0 241
0 4
cob=(4)
cfi=(176)
cfn=(720)
calls=1 0 
0 360
0 4
cob=(4)
cfi=(176)
cfn=(720)
calls=1 0 
0 283
0 7
cfn=(728) parse_options
calls=1 0 
0 571
0 5
cfn=(748)
calls=1 0 
0 165
0 6
cfn=(760)
calls=1 0 
0 5091
0 3
cfn=(832)
calls=1 0 
0 560264
0 3
cfn=(922)
calls=1 0 
0 5460623
0 1
cob=(4)
cfi=(176)
cfn=(938)
calls=1 0 
0 38
0 6
cob=(4)
cfi=(176)
cfn=(944)
calls=1 0 
0 219
0 9
cob=(4)
cfi=(176)
cfn=(952)
calls=9 0 
0 535
0 117
cfn=(960)
calls=9 0 
0 143019945
0 45
cfn=(964)
calls=9 0 
0 40360
0 387
cfn=(966)
calls=60 0 
0 243174271
0 300
cfn=(964)
calls=60 0 
0 269044
0 396
cob=(4)
cfi=(176)
cfn=(938)
calls=52 0 
0 1976
0 491
cob=(4)
cfi=(176)
cfn=(974)
calls=4 0 
0 508
0 9
cob=(4)
cfi=(176)
cfn=(938)
calls=9 0 
0 342
0 78
cob=(4)
cfi=(176)
cfn=(974)
calls=1 0 
0 127
0 1
cob=(4)
cfi=(176)
cfn=(938)
calls=1 0 
0 38
0 14
cfn=(976)
calls=1 0 
0 103368
0 3
cob=(4)
cfi=(176)
cfn=(1008)
calls=1 0 
0 495
0 11
cob=(4)
cfi=(176)
cfn=(762)
calls=1 0 
0 2818
0 6
cob=(4)
cfi=(176)
cfn=(762)
calls=1 0 
0 952
0 6
cob=(4)
cfi=(176)
cfn=(762)
calls=1 0 
0 966
0 9

fn=(728)
0 5
cob=(2)
cfi=(207)
cfn=(706)
calls=1 26 
0 51
0 17
cob=(4)
cfi=(176)
cfn=(730)
calls=1 0 
0 491
0 7

fn=(926)
0 85805
cob=(2)
cfi=(207)
cfn=(706)
calls=17161 26 
0 806571
0 326059
cob=(4)
cfi=(176)
cfn=(928)
calls=17161 0 
0 171610
0 51483
cfn=(934)
calls=17161 0 
0 1012503
0 34322

ob=(1)
fl=(11)
fn=(58) __GI___tunable_set_val
153 15
-81 40
+81 15
-81 10
+10 5
fi=(293) ./elf/./dl-tunable-types.h
+2 5
fe=(11)
+9 40
+1 25
fi=(12) ./elf/./elf/dl-tunables.h
+47 10
fe=(11)
-26 25
+1 5
+1 5
+1 5
+39 15
fi=(12)
-15 10
fe=(11)
-45 10
+3 5
fi=(12)
+51 5
fe=(11)
-51 5
+4 10
+7 10
+1 10
-12 25

fn=(22) __GI___tunables_init
261 8
+22 1
-22 1
128 1
283 1
-22 1
+6 4
42 160
+6 31
-3 31
+3 2594
+4 62
+4 62
fi=(12)
160 31
fe=(11)
56 62
fi=(12)
161 20
-1 91
+1 113
-1 62
fe=(11)
281 5084
+6 9207
fi=(12)
160 310
+1 620
-1 19
+1 76
-1 95
fe=(11)
304 8

fn=(28)
387 40
+3 80
-3 40
+3 320
+9 37
-9 74
+19 23
+7 240
+2 40
-19 17
+1 17
+9 6

fl=(63) ./io/../sysdeps/unix/sysv/linux/access.c
fn=(200) access
25 1
+2 7
+4 1

fl=(38) ./elf/../sysdeps/x86_64/dl-hwcaps-subdirs.c
fn=(110) _dl_hwcaps_subdirs_active
29 1
fi=(19) ./elf/../sysdeps/x86/get-isa-level.h
+2 1
fe=(38)
+7 1
fi=(19)
-8 4
fe=(38)
+22 1
fi=(19)
-20 3
+4 1
fe=(38)
+2 1
fi=(19)
-2 2
+3 4
+1 4
+5 1
fe=(38)
-7 1
fi=(19)
+7 3
fe=(38)
-2 1
fi=(19)
+5 2
+3 5
+2 4
+1 2
+1 2
+3 1
fe=(38)
-10 1
fi=(19)
+10 3
fe=(38)

fl=(165) ./elf/./dl-find_object.h
fn=(528) _dl_find_object_from_map
95 10
+1 10
+1 5
+6 25
+1 145
+1 100
+2 15
+5 5

fl=(169) ./elf/./elf/dl-lookup-direct.c
fn=(544) _dl_lookup_direct
74 30
+2 3
-2 6
+4 3
-4 3
+2 3
+2 9
+37 3
-37 9
+1 6
+2 12
+3 25
+2 6
-54 3
+54 3
-54 3
+54 3
-54 9
+1 9
+2 6
+1 6
+12 9
+3 3
+2 6
-2 3
+2 9
cfi=(32) ./string/../sysdeps/x86_64/multiarch/../multiarch/strcmp-sse2.S
cfn=(94) strcmp
calls=3 +45 
* 209
* 6
+4 6
+1 3
-1 3
+1 18
+1 9
cfi=(32)
cfn=(94)
calls=3 +39 
* 198
* 6
+57 27
-23 6

fl=(46) ./elf/../elf/dl-tls.c
fn=(146) _dl_count_modids
192 1
+2 2
+1 1
+15 2

fn=(248) _dl_tls_static_surplus_init
97 2
+3 1
-3 3
+3 1
-3 1
+3 1
-3 1
+3 1
-3 1
+3 1
cfi=(11)
cfn=(28)
calls=1 387 
* 23
* 1
+1 4
cfi=(11)
cfn=(28)
calls=1 387 
* 23
+1 1
+2 1
-3 1
+1 2
+2 3
+3 1
+2 1
-26 3
+28 3
+1 6

fn=(252) _dl_allocate_tls_storage
417 7
+2 1
+11 1
+1 1
fi=(28) ./elf/../include/rtld-malloc.h
56 1
cfi=(27) ./elf/./elf/dl-minimal-malloc.c
cfn=(78) __minimal_malloc
calls=1 -20 
* 85
fe=(46)
432 2
+8 3
fi=(28)
44 1
fe=(46)
440 2
+5 1
-5 1
+1 1
+4 304
+19 1
-99 1
+4 1
+1 1
fi=(28)
44 1
cfi=(27)
cfn=(74) __minimal_calloc
calls=1 +36 
* 41
fe=(46)
371 2
+3 1
+6 2
+90 7

fn=(524) _dl_allocate_tls_init
523 11
+1 2
+4 1
+6 1
-6 1
+6 1
cfi=(24) ./elf/../sysdeps/nptl/dl-tls_init_tp.c
cfn=(86) rtld_mutex_dummy
calls=1 42 
* 3
+3 3
+12 1
-18 1
+42 3
-19 12
+9 3
+1 2
+6 3
+3 1
-2 1
+2 1
-2 1
+2 4
+4 1
-4 1
+4 1
-1 2
+4 2
+1 4
+2 2
+1 2
+17 1
-8 1
+8 1
+2 4
cfi=(29) ./string/../sysdeps/x86_64/multiarch/memmove-vec-unaligned-erms.S
cfn=(126) mempcpy
calls=1 197 
* 13
* 6
cfi=(43) ./string/../sysdeps/x86_64/multiarch/../multiarch/memset-vec-unaligned-erms.S
cfn=(130) memset
calls=1 132 
* 25
-49 1
+55 1
-55 4
+6 5
+55 2
cfi=(24)
cfn=(86)
calls=1 42 
* 3
+3 2
+3 9

fn=(438) _dl_add_to_slotinfo
1017 8
+9 1
-9 1
+6 1
+4 1
+4 3
+34 2
+3 2
+1 3
+3 6

fn=(226) _dl_assign_tls_modid
125 1
+16 1
-13 1
-3 3
+3 1
+55 1
-2 1
+5 1
+1 2

fn=(250) _dl_determine_tlsoffset
216 9
+6 4
+3 2
+36 3
+2 1
-2 1
-2 1
-40 1
-1 1
-1 1
+46 2
+23 3
+3 1
-3 5
+2 2
+6 1
-33 2
+20 1
-20 5
+2 2
+3 1
-1 1
+5 2
-5 1
+1 1
-1 1
+3 2
+2 3
+32 2
-1 1
+53 1
-52 5
+2 2
+51 8

fl=(39) ./elf/./elf/dl-hwcaps_split.c
fn=(120) _dl_hwcaps_split
25 5
+1 3
+21 1
-20 1
+20 3

fn=(114) _dl_hwcaps_split_masked
51 110
-25 44
+36 5
-7 5
+7 35
-26 24
+5 27
cfi=(41) ./string/../sysdeps/x86_64/multiarch/../multiarch/strchr-sse2.S
cfn=(118) index
calls=9 -9 
* 216
* 9
+1 18
+3 6
+11 12
+1 18
+1 12
-2 6
+1 9
+1 6
-28 24
+4 48
+1 12
-1 30
+24 6
+9 12
-5 6
-2 6
+2 42
-19 6
cfi=(22) ./string/../sysdeps/x86_64/multiarch/../multiarch/strlen-sse2.S
cfn=(62) strlen
calls=3 +14 
* 51
* 6

fl=(48)
fn=(198) _dl_audit_objopen
77 3
+1 12

fn=(566) _dl_audit_activity_nsid
41 2
+4 8
+1 2
+1 10

fn=(694)
118 1
+1 4

fn=(152) _dl_audit_activity_map
29 2
+2 1
-2 5
+1 1
+1 2
+6 6

fl=(41)
fn=(118)
32 19
+1 19
+1 19
+1 19
+1 19
+1 19
+1 19
+1 19
+1 19
+1 19
+1 19
+1 19
+1 19
+1 19
+1 19
+1 19
+1 19
+1 19
+1 16
+4 16
+1 16
+1 16
+1 16
+2 16
+4 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+52 3
+4 3
+1 3
+1 3
+1 3
+2 3

fl=(57) ./misc/../sysdeps/unix/sysv/linux/mmap64.c
fn=(182) mmap
47 16
+3 32
-3 96
+6 32
+5 96
+2 64
-7 36

fl=(15) ./elf/../sysdeps/x86/dl-get-cpu-features.c
fn=(546) __x86_cpu_features
71 1
-32 3
+32 2

fn=(34) _dl_x86_init_cpu_features
37 1
+2 3
+2 1
cfi=(16) ./elf/../sysdeps/x86/cpu-features.c
cfn=(36) init_cpu_features.constprop.0
calls=1 682 
* 7344

fl=(55) ./io/../sysdeps/unix/sysv/linux/fstat64.c
fn=(178) fstat
30 4
+9 16
+33 4

fl=(170) ./elf/./elf/dl-call-libc-early-init.c
fn=(548) _dl_call_libc_early_init
27 1
+2 2
-2 1
+6 3
-6 3
+6 1
-6 2
+6 1
cfi=(169)
cfn=(544)
calls=1 +41 
* 225
+4 2
+2 3
+2 1
-1 1
-1 1
+2 2
-1 1
cob=(2)
cfi=(171)
cfn=(550)
calls=1 -7 
* 353

fl=(178) ./elf/./elf/dl-init.c
fn=(582) call_init.part.0
26 60
+17 5
+3 5
-3 10
+3 10
+5 8
+8 12
+1 12
cob=(4)
cfi=(176)
cfn=(662)
calls=1 -60 
* 13
cob=(4)
cfi=(176)
cfn=(584)
calls=1 -60 
* 34115
+3 4
+1 8
+6 6
+2 6
-2 3
+3 19
+1 4
cob=(2)
cfi=(200)
cfn=(660)
calls=1 545 
* 12
* 12
cob=(3)
cfi=(201)
cfn=(668)
calls=1 -74 
* 12
cob=(2)
cfi=(197)
cfn=(652)
calls=1 -28 
* 72
cob=(6) /usr/libexec/valgrind/vgpreload_core-amd64-linux.so
cfi=(196) ???
cfn=(646) 0x0000000000001110
calls=1 -74 
* 12
-1 12
+3 40
-29 2

fn=(580) _dl_init
81 13
+1 1
+1 1
+3 3
+8 2
+25 1
+1 8
+1 10
-92 10
+6 15
+2 22
+83 8
cfn=(582)
calls=4 -94 
* 289
* 8
+7 8
-98 2
+60 2
-54 3
+2 7
cfn=(582)
calls=1 -11 
* 34185
* 2

fl=(1) ???
fn=(0) 0x000000000001f540
0 2
cfi=(2) ./elf/./elf/rtld.c
cfn=(2) _dl_start
calls=1 517 
0 176903
0 8
cfi=(76) ./elf/../sysdeps/x86_64/dl-cet.c
cfn=(576) _dl_cet_setup_features
calls=1 331 
0 4
0 10
cfi=(178)
cfn=(580)
calls=1 81 
0 34600
0 3
cob=(5)
cfi=(179)
cfn=(676)
calls=1 0 
0 392653333

fl=(168) ./elf/../sysdeps/nptl/dl-mutex.c
fn=(542) __rtld_mutex_init
30 2
+10 3
-10 3
+10 1
-10 1
+10 1
-10 1
+7 1
+3 2
cfi=(169)
cfn=(544)
calls=1 +34 
* 233
+4 2
+1 8
+2 3
-2 1
+2 3
cfi=(169)
cfn=(544)
calls=1 +27 
* 223
+4 2
+1 7
+1 6

fl=(67) ./elf/./elf/dl-cache.c
fn=(568) _dl_unload_cache
525 1
+1 4
-1 1
+3 1
-3 1
+3 1
cfi=(140) ./misc/../sysdeps/unix/syscall-template.S
cfn=(570) munmap
calls=1 117 
* 6
+7 1
-6 1
+4 1
+2 1

fn=(214) _dl_load_cache_lookup
403 20
+2 4
+3 6
+69 3
+5 2
205 2
482 4
+3 6
fi=(69) ./elf/../sysdeps/x86/dl-procinfo.h
39 4
+3 6
cfi=(32)
cfn=(94)
calls=2 +56 
* 50
* 8
fe=(67)
208 12
cfi=(11)
cfn=(28)
calls=2 387 
* 46
* 2
+12 2
-10 2
-2 2
+12 4
-7 10
+9 10
+1 2
-32 4
+36 2
-4 2
+4 4
-5 70
+1 14
-32 28
+36 14
-4 14
+4 28
+4 48
cfn=(222) _dl_cache_libcmp
calls=16 357 
* 1188
+1 32
346 14
+3 5
220 10
347 9
220 22
+2 20
+20 4
+3 4
+2 8
cfn=(222)
calls=2 357 
* 146
* 4
-7 4
-30 6
+1 2
fi=(294) ./elf/../sysdeps/x86/dl-isa-level.h
28 4
fe=(67)
210 4
fi=(294)
28 2
fe=(67)
210 2
+1 2
-1 6
+76 6
fi=(294)
28 6
fe=(67)
259 4
+10 6
+1 8
+16 2
fi=(68) ./elf/../sysdeps/generic/dl-cache.h
125 2
fe=(67)
286 6
+9 4
+3 4
+3 2
+1 6
+28 4
500 4
+12 4
cfi=(22)
cfn=(62)
calls=2 57 
* 70
+1 2
-1 2
+1 24
+1 2
-1 2
+1 2
-1 2
+1 2
cfi=(29)
cfn=(82) memcpy
calls=2 210 
* 22
* 2
+1 2
cfi=(44) ./string/./string/strdup.c
cfn=(138) strdup
calls=2 40 
* 190
+1 16
411 4
cfi=(52) ./elf/./elf/dl-misc.c
cfn=(216) _dl_sysdep_read_whole_file
calls=1 36 
* 103
* 1
+8 5
+1 8
+3 3
+1 1
-1 3
fi=(68)
194 1
+1 5
fe=(67)
431 1
+1 2

fn=(222)
357 18
+1 18
+32 18
-33 18
+1 40
+2 89
+2 89
-2 178
+20 174
+2 174
-12 71
+2 71
+14 71
+1 71
-29 142
+32 6
-28 4
+6 2
+2 2
-2 2
+1 2
-1 2
+1 2
-1 2
+2 6
+2 2
-3 2
+3 6
+2 4
+9 48

fl=(8) ./elf/./elf/dl-setup_hash.c
fn=(14) _dl_setup_hash
25 5
+3 5
-3 5
+3 10
+3 15
+1 10
+2 5
-1 5
+3 15
+1 5
+1 10
+7 5
-5 5
-2 5
+3 10
+2 5
+2 10
+5 5

fl=(54) ./io/../sysdeps/unix/sysv/linux/read_nocancel.c
fn=(174) __read_nocancel
25 3
+1 12
+1 3

fl=(58) ./misc/../sysdeps/unix/sysv/linux/setvmaname.c
fn=(184) __set_vma_name
33 2
+2 7
-2 4
+7 1
-7 2
+7 1
-7 2
+7 1
-7 1
+7 1
cfi=(11)
cfn=(28)
calls=1 387 
* 24
* 3
+7 1
+2 6

fl=(24)
fn=(256) __tls_init_tp
68 2
fi=(295) ./elf/../include/list.h
-24 1
fe=(24)
+24 3
fi=(295)
-25 1
fe=(24)
+26 1
+3 1
fi=(295)
-29 1
+1 1
+1 1
+2 1
fe=(24)
+28 4
+1 2
+1 1
+5 2
+5 1
+6 1
-3 1
+3 1
-6 3
+6 1
+12 4
cfi=(11)
cfn=(28)
calls=1 387 
* 24
fi=(75) ./elf/../sysdeps/unix/sysv/linux/rseq-internal.h
-73 3
+8 1
fe=(24)
+81 3
+7 2
+1 3
fi=(75)
-95 7
+3 2
fe=(24)

fn=(68) __tls_pre_init_tp
53 3
+3 8
+5 1
-5 1
+5 1
+1 1
-6 1
+8 1

fn=(86)
42 10
+2 20

fl=(65) ./io/../sysdeps/unix/sysv/linux/stat64.c
fn=(210) stat
28 6
+1 12
cfi=(66) ./io/../sysdeps/unix/sysv/linux/fstatat64.c
cfn=(212) fstatat
calls=3 146 
* 28

fl=(44)
fn=(138)
40 24
+1 4
cfi=(22)
cfn=(62)
calls=4 +16 
* 122
* 4
fi=(296) ./string/../include/rtld-malloc.h
+15 8
cfi=(27)
cfn=(78)
calls=4 -20 
* 120
fe=(44)
-12 8
+3 12
+1 12
-1 4
cfi=(29)
cfn=(82)
calls=4 210 
* 52

fl=(278)
fn=(1020)
26 5
+17 1
-17 6
+20 9
+3 2
cob=(2)
cfi=(279)
cfn=(1022)
calls=1 +28 
* 44
+2 1
+3 2
+2 5
+7 3
-2 1
+2 1
cfi=(48)
cfn=(566)
calls=1 -22 
* 11
+5 15
+5 1
-5 1
+5 3
+2 10
+2 10
+2 10
+1 5
+1 5
+4 5
-12 15
+14 6
+1 4
+6 6
cfi=(13) ./elf/./elf/dl-sort-maps.c
cfn=(232) _dl_sort_maps
calls=1 298 
* 398
+9 2
cob=(2)
cfi=(280)
cfn=(1024)
calls=1 367 
* 34
+5 6
+2 1
+2 2
+2 4
cfi=(281) ./elf/./elf/dl-call_fini.c
cfn=(1026) _dl_call_fini
calls=1 -90 
* 554
-46 2

fl=(27)
fn=(142) __minimal_free
97 1
+2 4

fn=(74)
80 10
+4 10
-4 40
+7 10
+1 30
fi=(28)
-32 10
cfi=(27)
cfn=(78)
calls=10 -20 
* 407
fe=(27)

fn=(78)
36 232
+1 87
+11 84
+3 28
-3 28
+3 56
-3 2
+3 1
-3 1
+3 110
+19 29
+1 29
+2 174
-17 8
+1 4
+2 2
+1 14
cfi=(57)
cfn=(182)
calls=2 -13 
* 52
* 2
+2 4
+2 8
cfi=(58)
cfn=(184)
calls=2 -31 
* 56
+1 6
+2 2
+4 2
-4 4
-24 1
-1 1
+1 1
+1 2
-2 2

fl=(30) ./elf/./elf/dl-load.c
fn=(136) expand_dynamic_string_token
385 18
241 4
385 2
241 2
cfi=(41)
cfn=(118)
calls=2 32 
* 72
+3 4
410 2
-11 2
+11 12
-11 2
cfi=(44)
cfn=(138)
calls=2 40 
* 180

fn=(166) _dl_map_object
1967 72
+8 12
+1 24
+3 111
+5 126
+2 54
cfi=(52)
cfn=(168) _dl_name_match_p
calls=18 68 
* 1894
* 36
+4 30
+1 45
+4 6
-1 30
+1 6
+1 6
-1 6
+1 12
cfi=(32)
cfn=(94)
calls=6 98 
* 196
* 12
2270 57
2011 9
-1 6
+9 3
-50 3
+50 6
+17 6
-2 3
+2 3
cfi=(41)
cfn=(118)
calls=3 32 
* 72
* 6
2202 2
-1 3
cfn=(136)
calls=1 385 
* 175
+6 1
-7 1
+1 1
+2 2
+4 7
cfn=(170) open_verify.constprop.0
calls=1 1572 
* 106
+3 2
-3 1
+3 1
+12 4
+45 1
+1 5
-1 1
+1 8
cfn=(176) _dl_map_object_from_fd
calls=1 944 
* 1940
-1 2
+1 10
-1 2
+1 16
cfn=(176)
calls=2 944 
* 4412
* 9
2040 4
cfi=(22)
cfn=(62)
calls=2 57 
* 34
* 4
+2 4
+7 8
+51 26
cfn=(208) open_path
calls=2 1812 
* 824
+6 2
-6 2
+6 4
2222 8
+46 4
682 2
2107 2
682 4
2135 4
cfi=(67)
cfn=(214)
calls=2 403 
* 2478
* 2
+2 4
+4 4
+31 2
-23 4
+23 14
cfn=(170)
calls=2 1572 
* 246
+4 4
-4 2
+4 2
+1 2
+17 4
2074 10
682 2
2075 2
682 6
2099 4
+1 4
-47 2
+1 2
696 10
2058 6
682 2
2059 2
682 4
2073 10
+1 4
+41 2
+14 4
+2 6
-47 4

fn=(170)
1572 70
+32 7
-32 14
+32 14
+19 28
cfi=(53) ./io/../sysdeps/unix/sysv/linux/open64_nocancel.c
cfn=(172) __open_nocancel
calls=7 28 
* 152
* 7
+2 14
+8 3
+1 6
+5 3
-5 3
+5 15
cfi=(54)
cfn=(174)
calls=3 25 
* 18
+2 6
+2 6
+2 6
+6 6
+17 39
+81 6
+5 6
+6 12
+6 6
+6 3
+1 3
-1 9
+1 9
+26 63
-22 13
+1 2
-1 1
+1 1
cfi=(70) ./io/../sysdeps/unix/sysv/linux/pread64_nocancel.c
cfn=(224) __pread64_nocancel
calls=1 25 
* 7
* 2
1668 6
-59 8
1777 2

fn=(132) fillin_rpath.isra.0
468 9
+4 1
-4 8
+6 3
cfi=(7) ./elf/./elf/dl-minimal.c
cfn=(134) strsep
calls=1 239 
* 240
* 3
cfi=(7)
cfn=(134)
calls=1 239 
* 8
* 6
+7 2
+2 3
cfn=(136)
calls=1 -98 
* 125
* 1
+4 2
+5 2
cfi=(22)
cfn=(62)
calls=1 57 
* 17
* 1
+1 2
+7 5
+9 15
+1 8
fi=(28)
50 2
cfi=(27)
cfn=(142)
calls=1 +47 
* 5
+1 1
fe=(30)
528 4
+4 4
fi=(28)
56 1
cfi=(27)
cfn=(78)
calls=1 -20 
* 30
* 1
fe=(30)
534 2
+5 1
+1 2
-1 1
-1 1
+2 1
cfi=(29)
cfn=(126)
calls=1 197 
* 13
+3 1
-3 1
+1 1
+2 1
+6 1
+1 1
-1 3
+1 5
+1 1
-1 1
+1 1
-1 3
+1 1
-1 2
+1 1
+2 2
+1 3
+1 1
+6 2
+1 1
+3 3
-60 2
-22 2
+88 1
+3 8
-24 2

fn=(176)
944 30
+15 3
-15 6
+15 3
-15 6
+15 6
+77 12
+10 6
+7 21
cfi=(26) ./elf/./elf/dl-object.c
cfn=(72) _dl_new_object
calls=3 59 
* 1184
* 3
+1 6
+11 3
+5 3
-4 3
-1 3
+2 3
+2 3
-2 3
+2 6
+1 9
+1 4
+19 4
-2 2
+2 22
-2 1
+2 37
+10 3
-10 3
+10 9
+27 3
-33 3
-3 3
+2 3
-1 3
+35 3
+9 3
-50 3
+41 3
+9 3
-36 3
+63 15
-62 124
+26 84
+8 24
+1 12
-1 12
+1 48
+1 12
-1 12
+1 12
+2 12
-2 12
+2 12
+2 12
-4 12
+1 12
+3 12
-4 12
+4 60
+2 24
+13 24
+1 45
+5 9
+1 81
-28 18
-35 27
+62 3
+1 27
-28 6
-35 72
+1 185
1213 3
1100 3
1213 6
1100 9
1218 21
+10 9
+1 3
-1 3
+1 3
-1 9
+1 9
-1 9
+1 9
-1 27
1066 6
1235 6
+10 12
+7 12
fi=(59) ./elf/./dl-map-segments.h
28 3
fe=(30)
1252 9
fi=(59)
28 6
+1 24
cfi=(57)
cfn=(182)
calls=3 +18 
* 84
+73 6
-1 3
-72 3
+73 3
+3 6
+1 3
+2 3
-3 3
+1 3
+2 3
+17 3
-44 3
fi=(60) ./elf/./dl-load.h
+10 24
fi=(59)
+58 48
+6 3
+2 3
-2 3
+1 3
+2 6
-1 6
+3 6
+5 6
+3 9
+8 18
cfi=(43)
cfn=(130)
calls=3 -44 
* 301
* 3
+6 6
+12 12
-59 72
+2 36
+2 72
cfi=(57)
cfn=(182)
calls=9 -92 
* 189
* 18
fe=(30)
1264 3
fi=(56) ./elf/../sysdeps/posix/dl-fileid.h
37 6
cfi=(55)
cfn=(178)
calls=3 -7 
* 18
* 6
fe=(30)
989 6
fi=(56)
40 9
fe=(30)
989 3
fi=(56)
40 3
fe=(30)
989 39
+1 18
fi=(56)
49 24
fe=(30)
1519 27
1074 13
+1 2
-1 1
+1 1
-1 1
+1 1
cfi=(70)
cfn=(224)
calls=1 25 
* 7
* 2
+46 2
+1 1
-15 6
+7 3
+2 3
-2 3
+1 3
+1 3
-1 6
+1 24
+60 3
+5 1
-1 2
+5 1
-5 2
-66 1
+71 4
+1 1
+3 1
-3 1
+8 4
+15 6
+1 3
1008 6
1268 12
+1 9
fi=(61) ./elf/./elf/get-dynamic-info.h
39 6
+6 3
-2 3
+11 3
+1 3
-10 6
+8 6
+15 6
-23 24
+23 76
-23 304
+4 164
+3 23
-1 46
+3 68
+1 56
+1 15
+16 12
+12 11
+1 12
+1 12
+1 12
+1 11
+1 11
+1 11
+1 12
+12 3
+7 3
-7 21
+7 7
+5 4
+7 4
+1 9
+6 9
+1 6
+17 9
+5 4
+2 4
+2 4
+2 4
+4 9
+2 9
+1 6
+9 6
+6 6
+4 6
fe=(30)
1275 6
+1 6
+2 6
+10 9
+19 9
+2 18
+52 9
+1 2
+6 27
+1 60
+6 12
cfn=(88) _dl_process_pt_gnu_property
calls=3 868 
* 244
-7 75
+1 36
+6 36
-6 72
fi=(31) ./elf/../sysdeps/x86/dl-prop.h
149 12
fe=(30)
1380 6
cfi=(62) ./io/../sysdeps/unix/sysv/linux/close_nocancel.c
cfn=(194) __GI___close_nocancel
calls=3 25 
* 18
* 6
+13 6
+2 12
+2 6
+16 6
cfi=(8)
cfn=(14)
calls=3 25 
* 81
+4 6
+1 6
+17 6
+1 1
+3 1
+5 1
-5 1
+5 1
-5 2
+5 2
-5 2
+5 2
+5 6
+12 24
+10 6
+1 4
+5 2
cfi=(46)
cfn=(226)
calls=1 125 
* 12
+7 9
cfi=(26)
cfn=(84) _dl_add_to_namespace_list
calls=3 31 
* 165
+3 6
+4 6
cfi=(45) ./elf/./elf/dl-debug.c
cfn=(196) _dl_debug_update
calls=3 38 
* 21
* 3
+1 9
+22 21
+1 9
cfi=(48)
cfn=(198)
calls=3 77 
* 15
* 3
fi=(60)
92 8
+2 2
-1 2
+1 2
-1 2
+1 2
-1 2
+1 2
-1 4
+3 8
fi=(61)
-37 12
+3 12
+2 12
181 6
-22 4
fe=(30)
1510 6
1074 2
fi=(59)
186 8
cfi=(57)
cfn=(182)
calls=1 47 
* 21
+3 2
fe=(30)
1462 9
+2 2
-1 10
+1 2
-1 2
+1 2
-1 2
cfi=(32)
cfn=(94)
calls=2 98 
* 70
* 4
+2 5

fn=(208)
1812 16
+1 2
-1 6
+1 2
+6 4
+5 34
+67 4
-74 2
+7 6
+57 2
-65 2
+65 2
+10 4
-64 4
+8 12
+7 4
-11 2
+12 2
-1 8
cfi=(29)
cfn=(126)
calls=2 197 
* 26
+1 20
+50 2
-2 4
-48 22
+3 12
+5 28
cfi=(29)
cfn=(126)
calls=4 197 
* 52
* 16
cfi=(29)
cfn=(126)
calls=4 197 
* 52
+3 8
+6 12
+3 28
cfn=(170)
calls=4 1572 
* 224
* 4
+2 12
+2 6
+93 18
-88 6
+1 21
+6 3
+2 6
-2 6
+2 3
cfi=(65)
cfn=(210)
calls=3 28 
* 46
* 3
+3 3
-3 6
+1 2
+9 8
+2 1
-2 2
+2 4
+44 16
+6 4
-2 2
+2 4
+3 6
1822 4
+2 4

fn=(106) _dl_init_paths
706 11
+14 1
-14 2
+14 2
cfi=(37) ./elf/./elf/dl-hwcaps.c
cfn=(108) _dl_important_hwcaps
calls=1 172 
* 1244
fi=(28)
56 1
fe=(30)
720 1
fi=(28)
56 1
cfi=(27)
cfn=(78)
calls=1 -20 
* 30
fe=(30)
725 1
+2 3
+8 2
-1 3
+5 3
fi=(28)
56 1
cfi=(27)
cfn=(78)
calls=1 -20 
* 30
fe=(30)
739 1
+2 4
+7 1
+8 1
+2 1
+12 2
-23 1
+9 1
+11 1
-4 1
-5 1
+3 2
+7 2
+2 2
-11 1
+11 3
-8 1
+4 1
+1 3
+1 16
cfi=(43)
cfn=(130)
calls=4 132 
* 56
+2 15
-14 3
+10 3
+4 9
-12 3
-2 3
+2 3
+4 3
-3 3
+3 3
+1 3
-2 3
+5 9
+1 6
+3 1
+15 1
-8 1
+5 1
-6 1
+9 2
+2 4
+2 3
+36 5
+2 2
cfi=(22)
cfn=(62)
calls=1 57 
* 17
* 9
-19 1
-2 1
+2 2
+19 9
cfi=(29)
cfn=(82)
calls=1 210 
* 11
* 1
+5 4
-1 2
+2 1
+1 2
-2 4
+1 13
+1 26
-2 52
+5 1
fi=(28)
56 1
cfi=(27)
cfn=(78)
calls=1 -20 
* 30
fe=(30)
836 1
fi=(28)
56 1
fe=(30)
838 2
+6 6
cfn=(132)
calls=1 468 
* 581
+3 3
+6 1
+4 8
-35 2
+5 2

fn=(204) _dl_dst_count
238 10
+3 5
-3 25
+7 5
-7 10
+3 5
cfi=(41)
cfn=(118)
calls=5 32 
* 168
+3 10
+20 45

fn=(88)
868 4
+8 4
-8 8
+8 4
-6 4
+12 8
-13 4
+13 4
-13 4
+13 8
+3 12
+1 8
+1 8
+3 12
+1 12
+4 4
+1 8
+22 4
+2 4
-2 8
+2 12
-20 14
+1 7
+3 14
+3 7
+1 28
fi=(31)
95 28
+7 14
+16 7
-3 14
254 8
+1 4
+2 16
+3 4
-8 6
+5 3
-4 3
+4 9
+3 3
-2 1
fe=(30)

fl=(50) ./elf/./elf/dl-catch.c
fn=(158) _dl_catch_error
254 6
+2 1
-2 6
+2 1
cfn=(160) _dl_catch_exception
calls=1 -52 
* 2728
+1 2
+1 1
+1 1
-1 1
+1 1
+2 6

fn=(236) _dl_receive_error
186 2
58 1
186 4
+2 1
-2 1
58 1
+1 1
+11 1
192 1
+2 1
cfi=(2)
cfn=(238) version_check_doit
calls=1 674 
* 8345
69 2
+1 1
198 1
-1 1
+1 3

fn=(160)
204 36
58 6
204 12
+3 12
+22 6
-1 6
+1 6
58 12
235 18
cfi=(51) ./setjmp/../sysdeps/x86_64/setjmp.S
cfn=(162) __sigsetjmp
calls=6 31 
* 144
* 18
+2 18
cfi=(64) ./elf/./elf/dl-deps.c
cfn=(206) openaux
calls=5 61 
* 10821
cfi=(2)
cfn=(164) map_doit
calls=1 641 
* 2662
69 6
+1 6
-1 6
+1 6
239 24
-25 6
+34 18
59 12
+11 18

fl=(78) ./elf/./elf/dl-lookup.c
fn=(270) _dl_lookup_symbol_x
772 852
+3 142
-3 426
+3 142
-3 568
fi=(79) ./elf/../sysdeps/generic/dl-new-hash.h
74 142
+3 284
-8 142
+1 284
+10 142
+1 284
-1 805
+1 1610
+20 881
-2 881
+6 881
-3 1762
+2 881
-30 881
+3 1762
fe=(78)
774 142
+1 142
+3 142
-4 142
+1 142
+7 546
+5 142
-2 142
+2 142
-2 142
+6 2023
+1 1988
cfn=(274) do_lookup_x
calls=142 347 
* 57659
* 426
+28 142
-23 426
+23 142
-23 284
+24 794
+7 135
-7 135
+35 540
+34 540
-20 405
+3 270
-57 142
+76 1278
fi=(79)
87 66
+1 66
+1 132
+1 66
fe=(78)
871 2
-72 42
+18 21
+11 28

fn=(276) check_match
70 2085
+3 828
+13 136
-13 136
+13 136
-13 136
+13 408
+3 560
cfi=(32)
cfn=(94)
calls=72 +9 
* 3587
* 144
+4 136
+1 272
+2 264
+19 264
+1 1056
+2 2
+43 135
+1 1112
-18 8
+2 8
+1 4
-1 8
+1 12
-1 8
-68 2
+39 393
cfi=(32)
cfn=(94)
calls=131 -19 
* 3543
* 262
-44 12
+5 6

fn=(274)
347 1278
+1 142
-1 568
+6 142
-6 142
+65 142
-58 142
+11 142
+50 142
-3 284
+3 284
-50 142
+50 568
-19 1728
+8 576
-4 576
+1 576
+3 2304
+1 1152
+3 576
-3 576
+4 1152
+4 1152
-2 576
+5 2304
+3 4032
+99 1329
358 1156
+3 1156
+4 1172
+21 1152
+4 1152
+71 1080
fi=(4) ./elf/../sysdeps/generic/ldsodefs.h
139 270
+1 405
fe=(78)
476 270
fi=(80) ./elf/../sysdeps/generic/dl-protected.h
29 540
fe=(78)
483 1016
+16 270
+1 135
+22 135
-21 135
+21 945
-99 444
-1 296
+2 296
+2 144
+6 576
-6 144
+6 1008
+7 543
-10 1580
+2 139
+1 417
-1 139
+1 278
-1 139
+1 139
+1 139
-1 139
+1 139
-1 973
cfn=(276)
calls=139 70 
* 15663
+4 417
+3 8
+31 72
+52 7
-1 7
+1 49
-35 48

fl=(53)
fn=(172)
28 16
+3 8
-3 16
+3 48
+8 56
+2 8
-2 12
+2 8

fl=(73) ./elf/./elf/dl-version.c
fn=(242) _dl_check_map_versions
155 50
+15 15
+2 25
+2 5
+1 5
+2 10
+3 6
-16 6
+20 3
-4 3
-24 3
+28 21
+16 6
36 3
200 3
36 21
200 4
36 2
200 2
36 14
+1 16
-1 32
+2 63
cfi=(52)
cfn=(168)
calls=21 +30 
* 2033
* 47
208 15
+5 5
fi=(297) ./elf/../sysdeps/generic/_itoa.h
76 15
fe=(73)
213 10
+4 10
+1 10
-1 10
+4 5
-3 5
+3 5
-3 15
-1 20
+1 20
-1 20
+4 10
-3 10
+3 10
-3 60
56 60
+8 45
+6 45
+16 15
+1 30
+2 15
+5 105
+14 446
+12 624
+4 208
-30 416
231 60
+3 45
+5 10
-24 10
110 15
+3 75
cfi=(32)
cfn=(94)
calls=15 -15 
* 575
* 45
224 45
+1 3
cfi=(32)
cfn=(94)
calls=1 98 
* 71
* 2
+3 12
+15 15
+5 2
-50 2
+59 15
+3 6
+3 21
+3 12
+4 3
-7 12
+3 9
+4 59
-7 236
+3 180
+8 9
+6 8
fi=(28)
44 4
fe=(73)
280 8
fi=(28)
44 4
cfi=(27)
cfn=(74)
calls=4 +36 
* 164
fe=(73)
281 8
-2 4
fi=(28)
44 4
fe=(73)
281 4
+13 4
-3 4
+3 16
+2 8
+3 12
+4 15
+7 15
+1 15
-1 45
+1 15
+1 15
-2 15
+2 30
+1 45
+3 45
+5 10
-15 10
+2 10
-2 10
+2 10
-2 10
+2 20
-2 5
+2 5
-2 5
+2 5
-2 5
+2 10
+16 15
+5 2
-28 2
+33 6
+3 6
+4 62
+6 62
+1 62
+1 62
-1 186
+1 62
-1 62
+1 62
+1 62
+3 186
+4 62
-14 130
+10 9
+12 6
+1 6
+1 6
+1 4
+19 45
164 2
-8 2
257 5
+17 3
+60 2
-40 2
+76 4
+2 4
+4 2
-4 120
+1 60
+2 1
+1 2
-1 1
+1 1
cfi=(32)
cfn=(244) strncmp
calls=1 98 
* 32
* 2

fn=(240) _dl_check_all_versions
392 7
+4 5
-2 1
+4 30
cfn=(242)
calls=5 155 
* 8245
-2 5
+2 15
-1 5
-1 10
+5 7

fl=(51)
fn=(162)
31 6
+2 6
+9 6
+1 12
+1 6
+4 6
+1 6
+1 6
+1 6
+1 6
+2 12
+2 6
+1 6
+1 6
+2 12
+2 6
+8 6
+3 6
+1 6
+7 6
+1 6

fl=(43)
fn=(130)
132 8
+1 40
+5 8
+1 8
+3 2
+1 2
244 2
+1 2
+12 2
+3 2
+1 2
+12 2
+1 2
+13 2
+1 2
+2 2
+3 1
+3 2
+3 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
-6 34
+1 34
+1 34
+1 34
+1 34
+1 34
+1 34
+3 2
+1 2
+1 2
+1 2
+5 2
+34 6
+2 6
+1 6
+39 6
+1 6
+2 6

fl=(42) ./string/../sysdeps/x86_64/multiarch/../multiarch/memcmp-sse2.S
fn=(122) bcmp
59 1
+12 1
+1 1
+22 1
+1 1
+45 1
+1 1
+2 1
+1 1
+2 1
+1 1
+2 1
+1 1
+47 1
+1 1
+1 1
+1 1
+1 1
+1 1

fl=(29)
fn=(126)
197 17
+1 17
+1 17
+1 17
+17 17
+1 17
+2 6
+1 6
+1 6
+2 5
+1 5
+1 5
+2 5
+80 11
+1 11
+2 2
+4 2
+1 2
+1 2
+8 2
+39 9
+1 9
+1 9
+1 9
+1 9
+7 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+11 1
+1 1
+2 1
+1 1
+1 1

fn=(82)
210 23
+1 23
+6 23
+1 23
+2 14
+1 14
+1 14
+2 8
+1 8
+1 8
+2 8
+80 9
+1 9
+2 2
+4 2
+1 1
+1 1
+1 1
+1 1
+4 1
+2 1
+6 1
+1 1
+1 1
+1 1
+1 1
+29 7
+1 7
+1 7
+1 7
+1 7
+7 6
+1 6
+1 6
+1 6
+1 6
+1 6
+1 6
+11 6
+1 6
+2 6
+1 6
+1 6

fl=(9) ./elf/../sysdeps/unix/sysv/linux/dl-sysdep.c
fn=(16) _dl_sysdep_start
102 5
+4 1
-4 1
+1 1
+3 1
cfn=(18) _dl_sysdep_parse_arguments
calls=1 -28 
* 371
+4 2
cfi=(11)
cfn=(22)
calls=1 261 
* 18755
+3 1
cfi=(13)
cfn=(26) _dl_sort_maps_init
calls=1 289 
* 38
+2 2
cfi=(14) ./elf/../sysdeps/unix/sysv/linux/brk.c
cfn=(30) brk
calls=1 -79 
* 8
fi=(6) ./elf/../sysdeps/x86_64/dl-machine.h
220 1
cfi=(15)
cfn=(34)
calls=1 37 
* 7349
fe=(9)
-98 3
+1 1
cfi=(22)
cfn=(62)
calls=1 -66 
* 17
* 1
+2 2
cfi=(23) ./elf/../misc/sbrk.c
cfn=(64) sbrk
calls=1 -88 
* 16
* 3
+12 3
+3 5
cfi=(2)
cfn=(66) dl_main
calls=1 1346 
* 149639
+3 4

fn=(18)
78 1
+2 1
-2 6
+1 1
+1 1
-1 1
+2 2
+2 1
-2 1
+2 2
-1 1
+1 2
-1 30
+1 60
+7 56
fi=(10) ./elf/../sysdeps/unix/sysv/linux/dl-parse_auxv.h
-49 1
fe=(9)
+45 1
fi=(10)
-54 1
fe=(9)
+54 1
fi=(10)
-54 1
+1 1
+1 1
+7 3
+1 40
+1 20
-2 20
+2 20
-2 61
fe=(9)
+52 3
+1 1
+1 2
fi=(10)
-49 1
+1 1
fe=(9)
+46 1
fi=(10)
-45 1
+3 1
+1 1
+1 1
+1 1
+2 1
-5 1
-4 1
+1 1
+4 1
+1 1
+3 1
-7 1
-4 1
+1 1
+8 1
fe=(9)
+40 1
-1 1
+2 1
+1 6

fn=(564) _dl_sysdep_start_cleanup
147 1
+1 1

fl=(76)
fn=(260) _dl_cet_check
361 8
-76 1
-10 2
+2 2
-1 1
+6 1
+3 1
+8 1
-11 1
+1 1
-1 1
+1 1
-1 1
+1 1
+10 4
+3 1
+4 2
+2 2
-1 1
+2 2
+2 2
-1 2
+4 1
+2 1
+3 2
145 2
+12 2
+16 1
+6 1
363 6

fn=(576)
331 1
+3 2
+16 1

fl=(32)
fn=(244)
98 1
+27 1
+1 1
+1 1
+1 1
+1 1
+2 1
+1 1
+2 1
+1 1
+21 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+17 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
2104 1
+3 1
+1 1
+2 1
+1 1
+8 1
+1 1

fn=(94)
98 322
+33 322
+1 322
+2 322
+1 322
+21 322
+1 322
+1 263
+1 263
+1 243
+1 243
+1 243
+1 243
+17 243
+1 243
+1 243
+1 243
+1 243
+1 243
+1 243
+5 15
+1 45
+9 15
+1 15
+1 15
+1 15
+1 15
+1 15
+1 15
+1 15
-7 79
+1 79
+1 79
+1 79
+1 79
+1 79
+1 79
+1 79
+1 90
+1 41
+1 41
+1 41
+2 41
+1 41
+1 41
+1 41
+1 41
+1 41
-5 49
+1 49
+1 49
+1 49
+1 49
+1 49
+10 4
+1 4
+1 4
+2 4
+6 4
+1 4
+1 4
+1 4
+1 4
+5 4
+52 6
+1 6
+1 6
+1 6
+1 6
+2 6
+1 6
+1 6
+1 6
+1 6
+1 6
+1 6
+1 6
+3 6
+1 6
+1 6
+6 6
+1 6
+1 12
+4 6
+1 6
+3 6
+1 6
+1 6
+2 6
+1 6
+1 6
+4 6
+1 6
+1 6
+1 6
+1 6
+1 6
661 1
+1 1
+1 1
+1 1
+1 1
+2 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
780 1
+1 1
+1 1
+1 1
+1 1
+2 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
899 5
+1 5
+1 5
+1 5
+1 5
+2 5
+1 5
+1 5
+1 5
+1 5
+1 5
+1 5
+1 4
+4 4
+1 4
+1 4
+6 4
+1 4
+1 8
+4 4
+1 4
+3 4
+1 4
+1 4
+2 4
+1 4
+1 4
+4 4
+1 4
+1 4
+1 4
+1 4
+1 4
+7 1
+1 1
+2 1
+1 1
+2 1
+1 1
+1 1
+2 1
+1 1
+1 1
+4 1
+1 1
+1 1
+1 1
+1 1
+1 1
+41 3
+1 3
+1 3
+1 3
+1 3
+2 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 2
+4 2
+1 2
+1 2
+6 2
+1 2
+1 4
+4 2
+1 2
+3 2
+1 2
+1 2
+2 2
+1 2
+1 2
+4 2
+1 2
+1 2
+1 2
+1 2
+1 2
+69 3
+1 3
+1 3
+1 3
+1 3
+2 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
1256 16
+1 16
+1 16
+1 16
+1 16
+2 16
+1 16
+1 16
+1 16
+1 16
+1 16
+1 16
+1 1
+4 1
+1 1
+1 1
+6 1
+1 1
+1 2
+4 1
+1 1
+3 1
+1 1
+1 1
+2 1
+1 1
+1 1
+4 1
+1 1
+1 1
+1 1
+1 1
+1 1
+69 5
+1 5
+1 5
+1 5
+1 5
+2 5
+1 5
+1 5
+1 5
+1 5
+1 5
+1 5
+1 5
+4 5
+1 5
+1 5
+6 5
+1 5
+1 10
+4 5
+1 5
+3 5
+1 5
+1 5
+2 5
+1 5
+1 5
+4 5
+1 5
+1 5
+1 5
+1 5
+1 5
+69 7
+1 7
+1 7
+1 7
+1 7
+2 7
+1 7
+1 7
+1 7
+1 7
+1 7
+1 7
+1 5
+4 5
+1 5
+1 5
+6 5
+1 5
+1 10
+4 5
+1 5
+3 5
+1 5
+1 5
+2 5
+1 5
+1 5
+4 5
+1 5
+1 5
+1 5
+1 5
+1 5
+69 7
+1 7
+1 7
+1 7
+1 7
+2 7
+1 7
+1 7
+1 7
+1 7
+1 7
+1 7
+1 5
+4 5
+1 5
+1 5
+6 5
+1 5
+1 10
+4 5
+1 5
+3 5
+1 5
+1 5
+2 5
+1 5
+1 5
+4 5
+1 5
+1 5
+1 5
+1 5
+1 5
+7 1
+1 1
+2 1
+1 1
+2 1
+1 1
+1 1
+2 1
+1 1
+1 1
+4 1
+1 1
+1 1
+1 1
+1 1
+1 1
+41 14
+1 14
+1 14
+1 14
+1 14
+2 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 9
+4 9
+1 9
+1 9
+6 9
+1 9
+1 18
+4 9
+1 9
+3 9
+1 9
+1 9
+2 9
+1 9
+1 9
+4 9
+1 9
+1 9
+1 9
+1 9
+1 9
+7 1
+1 1
+2 1
+1 1
+2 1
+1 1
+1 1
+2 1
+1 1
+1 1
+4 1
+1 1
+1 1
+1 1
+1 1
+1 1
+41 8
+1 8
+1 8
+1 8
+1 8
+2 8
+1 8
+1 8
+1 8
+1 8
+1 8
+1 8
+1 5
+4 5
+1 5
+1 5
+6 5
+1 5
+1 10
+4 5
+1 5
+3 5
+1 5
+1 5
+2 5
+1 5
+1 5
+4 5
+1 5
+1 5
+1 5
+1 5
+1 5
+69 14
+1 14
+1 14
+1 14
+1 14
+2 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 14
+2 6
+4 6
+1 6
+1 6
+6 6
+1 6
+2 12
+4 6
+1 6
+3 6
+1 6
+1 6
+2 6
+1 6
+1 6
+4 6
+1 6
+1 6
+1 6
+1 6
+1 6
+71 48
+2 48
+1 48
+1 48
+1 48
-3 46
+1 46
+1 46
+1 46
+1 82
+5 41
+6 41
+1 41
+8 41
+1 41
-16 281
+6 281
+1 281
+8 281
+1 281

fl=(281)
fn=(1026)
24 8
+4 2
+6 1
-2 1
+3 2
+3 1
+1 1
-1 1
+1 2
+3 4
+1 1
cob=(5)
cfi=(179)
cfn=(1028)
calls=1 -43 
* 530

fl=(77) ./elf/./elf/dl-reloc.c
fn=(262) _dl_relocate_object
207 66
+1 12
+12 5
+4 20
-4 5
+6 15
+3 5
-1 5
+1 10
+22 25
+4 4
+7 6
fi=(6)
81 8
fi=(4)
-2 5
fe=(77)
301 10
fi=(4)
79 10
fe=(77)
301 9884
fi=(4)
79 2
fe=(77)
301 2
fi=(4)
79 4
fe=(77)
301 202
-80 10
fi=(6)
393 10
fe=(77)
190 5
+31 5
-31 5
fi=(6)
393 15
fi=(5) ./elf/./elf/do-rel.h
49 5
fe=(77)
301 5
fi=(5)
50 5
+30 5
-31 10
+4 5
-3 5
+3 5
-3 5
+3 15
+27 10
-31 5
fe=(77)
301 5
fi=(5)
50 5
+30 5
-31 10
+4 5
-3 5
+3 5
-3 5
+3 15
+27 10
fe=(77)
301 30
fi=(5)
51 5
fi=(4)
+28 25
fi=(6)
730 10
+4 8
fe=(77)
304 25
+24 5
+3 10
+17 15
+2 48
-98 10
+3 6
+7 3
-9 3
+9 6
fi=(6)
81 6
fi=(5)
+33 30
+9 18
+1 2
fi=(6)
498 2
fi=(5)
124 2
fi=(6)
498 4
fi=(5)
124 4
fi=(6)
498 4
fi=(5)
124 4
fi=(6)
498 8
+5 12
+1 6
fi=(5)
123 6
fi=(6)
504 6
-5 6
fi=(5)
123 12
+3 30
+3 32
+2 28
fe=(77)
+59 8
fi=(5)
73 4
fe=(77)
190 4
fi=(5)
72 4
fe=(77)
190 36
fi=(5)
-57 8
+1 4
+1 4
-2 4
+2 4
+3 4
-5 4
+2 4
-2 4
+1 8
+2 4
-2 4
+2 12
+2 8
-5 436
+1 218
+1 218
-2 218
+2 218
+3 218
-5 218
+2 218
-2 218
+1 436
+2 218
-2 218
+2 654
+2 436
+9 154
fi=(6)
267 308
+7 308
+4 308
fe=(77)
170 616
fi=(4)
-30 417
fe=(77)
+31 278
+3 278
+8 264
-8 1170
+12 256
-3 128
+1 128
+2 520
-3 4
+1 4
+2 148
+1 132
-1 132
+2 264
-1 528
+3 792
cfi=(78)
cfn=(270)
calls=132 772 
* 77689
+3 132
+1 264
-4 132
+4 660
fi=(6)
+93 552
+3 135
-3 420
+3 150
-3 150
+5 310
+25 924
423 24
fi=(5)
150 24
fi=(6)
423 254
fi=(5)
150 421
-19 900
+33 16
+1 72
+1 252
+3 136
+4 68
-1 68
-3 68
+2 136
+2 68
-2 136
fe=(77)
-1 272
fi=(6)
287 68
+3 68
-3 68
+4 136
476 136
+2 68
cfi=(15)
cfn=(546)
calls=1 71 
* 6
cob=(3)
cfi=(162)
cfn=(518)
calls=1 26 
* 8
cob=(3)
cfi=(146)
cfn=(514)
calls=1 27 
* 9
cob=(3)
cfi=(161)
cfn=(510)
calls=1 26 
* 9
cob=(3)
cfi=(160)
cfn=(506)
calls=1 27 
* 9
cob=(3)
cfi=(159)
cfn=(502)
calls=1 26 
* 9
cob=(3)
cfi=(156)
cfn=(498)
calls=1 27 
* 8
cob=(3)
cfi=(158)
cfn=(496)
calls=1 49 
* 6
cob=(3)
cfi=(157)
cfn=(492)
calls=1 26 
* 9
cob=(3)
cfi=(156)
cfn=(488)
calls=1 35 
* 8
cob=(3)
cfi=(155)
cfn=(484)
calls=1 27 
* 9
cob=(3)
cfi=(154)
cfn=(480)
calls=1 26 
* 9
cob=(3)
cfi=(153)
cfn=(476)
calls=1 27 
* 9
cob=(3)
cfi=(151)
cfn=(472)
calls=1 27 
* 8
cob=(3)
cfi=(150)
cfn=(468)
calls=1 30 
* 9
cob=(3)
cfi=(149)
cfn=(464)
calls=1 26 
* 9
cob=(3)
cfi=(148)
cfn=(460)
calls=1 27 
* 9
cob=(3)
cfi=(147)
cfn=(456)
calls=1 27 
* 9
cob=(3)
cfi=(146)
cfn=(452)
calls=1 34 
* 9
cob=(3)
cfi=(145)
cfn=(448)
calls=1 27 
* 9
cob=(3)
cfi=(143)
cfn=(444)
calls=1 27 
* 9
cob=(3)
cfi=(141)
cfn=(440)
calls=1 26 
* 9
cob=(2)
cfi=(139)
cfn=(432)
calls=1 31 
* 21
cob=(2)
cfi=(138)
cfn=(428)
calls=1 33 
* 22
cob=(2)
cfi=(137)
cfn=(424)
calls=1 31 
* 18
cob=(2)
cfi=(136)
cfn=(422)
calls=1 29 
* 7
cob=(2)
cfi=(134)
cfn=(418)
calls=1 29 
* 23
cob=(2)
cfi=(133)
cfn=(414)
calls=1 29 
* 22
cob=(2)
cfi=(132)
cfn=(410)
calls=1 33 
* 17
cob=(2)
cfi=(131)
cfn=(406)
calls=1 29 
* 22
cob=(2)
cfi=(129)
cfn=(402)
calls=1 29 
* 24
cob=(2)
cfi=(128)
cfn=(398)
calls=1 29 
* 19
cob=(2)
cfi=(127)
cfn=(394)
calls=1 29 
* 25
cob=(2)
cfi=(100)
cfn=(390)
calls=1 31 
* 18
cob=(2)
cfi=(126)
cfn=(386)
calls=1 31 
* 21
cob=(2)
cfi=(125)
cfn=(382)
calls=1 29 
* 17
cob=(2)
cfi=(123)
cfn=(378)
calls=2 31 
* 20
cob=(2)
cfi=(121)
cfn=(374)
calls=1 29 
* 24
cob=(2)
cfi=(120)
cfn=(370)
calls=1 31 
* 25
cob=(2)
cfi=(119)
cfn=(366)
calls=1 31 
* 21
cob=(2)
cfi=(117)
cfn=(362)
calls=1 29 
* 17
cob=(2)
cfi=(116)
cfn=(360)
calls=1 60 
* 16
cob=(2)
cfi=(115)
cfn=(358)
calls=1 29 
* 7
cob=(2)
cfi=(113)
cfn=(354)
calls=1 31 
* 21
cob=(2)
cfi=(112)
cfn=(352)
calls=1 67 
* 21
cob=(2)
cfi=(110)
cfn=(348)
calls=2 31 
* 46
cob=(2)
cfi=(108)
cfn=(344)
calls=1 31 
* 19
cob=(2)
cfi=(107)
cfn=(340)
calls=1 30 
* 25
cob=(2)
cfi=(106)
cfn=(336)
calls=1 28 
* 25
cob=(2)
cfi=(104)
cfn=(332)
calls=1 29 
* 24
cob=(2)
cfi=(103)
cfn=(330)
calls=1 65 
* 19
cob=(2)
cfi=(100)
cfn=(324)
calls=2 31 
* 50
cob=(2)
cfi=(98)
cfn=(320)
calls=1 29 
* 22
cob=(2)
cfi=(96)
cfn=(316)
calls=1 31 
* 18
cob=(2)
cfi=(95)
cfn=(312)
calls=1 29 
* 25
cob=(2)
cfi=(94)
cfn=(308)
calls=1 29 
* 22
cob=(2)
cfi=(92)
cfn=(304)
calls=1 29 
* 22
cob=(2)
cfi=(91)
cfn=(300)
calls=1 29 
* 19
cob=(2)
cfi=(89)
cfn=(296)
calls=1 29 
* 24
cob=(2)
cfi=(87)
cfn=(292)
calls=1 30 
* 19
cob=(2)
cfi=(86)
cfn=(290)
calls=1 79 
* 19
cob=(2)
cfi=(85)
cfn=(288)
calls=1 29 
* 7
cob=(2)
cfi=(83)
cfn=(284)
calls=2 31 
* 50
cob=(2)
cfi=(81)
cfn=(280)
calls=1 86 
* 28
fi=(5)
165 68
fi=(6)
479 68
fi=(5)
165 145
-14 147
fi=(6)
460 6
+5 4
-1 6
+1 4
-1 2
cfi=(29)
cfn=(82)
calls=2 210 
* 24
+2 10
+1 4
-67 51
+2 68
+4 17
+9 17
-9 34
+9 17
fi=(5)
150 34
fi=(6)
320 49
+3 49
-36 75
fi=(5)
141 68
+1 68
-1 204
+2 68
fi=(6)
287 340
fe=(77)
175 63
+3 7
-1 7
+19 7
-18 14
fi=(6)
295 10
+1 15
+11 10
+7 5
cob=(2)
cfi=(117)
cfn=(362)
calls=1 29 
* 17
cob=(2)
cfi=(163)
cfn=(522)
calls=1 38 
* 7
cob=(2)
cfi=(98)
cfn=(320)
calls=1 29 
* 22
cob=(3)
cfi=(146)
cfn=(452)
calls=1 34 
* 9
cob=(2)
cfi=(125)
cfn=(382)
calls=1 29 
* 17
* 20
fe=(77)
+42 25
+3 5
-3 5
+3 5
+4 10
+1 20
cfi=(140)
cfn=(436) mprotect
calls=5 117 
* 30
* 10
-63 9
fi=(5)
180 7
fe=(77)
+10 2
fi=(5)
73 1
fe=(77)
190 3
fi=(6)
436 7
fi=(5)
182 2
+1 2
-1 1
+3 1
-3 4
+3 2
-3 10
+1 10
-1 5
+3 5
-3 20
+3 10
+8 6
fi=(6)
+74 12
+7 12
+4 12
fe=(77)
170 24
fi=(4)
-30 18
fe=(77)
+31 12
+3 12
+8 12
-8 54
+12 12
-3 6
+1 6
+2 36
+4 24
-4 6
+4 18
cfi=(78)
cfn=(270)
calls=6 772 
* 3271
+3 6
+1 12
-4 6
+4 30
fi=(6)
+93 21
+3 3
-3 9
+3 3
-3 3
+5 6
+25 36
423 6
fi=(5)
196 18
-16 24
+31 7
fe=(77)
-33 7
-3 21

fl=(140)
fn=(436)
117 25
+5 5

fn=(570)
117 5
+5 1

fl=(62)
fn=(194)
25 4
+1 16
+1 4

fl=(71) ./malloc/./malloc/scratch_buffer_set_array_size.c
fn=(228) __libc_scratch_buffer_set_array_size
30 39
+4 3
+1 6
+10 6
+18 3
-17 3
+17 15

fl=(49) ./string/../string/strcspn.c
fn=(156) strcspn
32 6
+1 3
+1 2
+5 6
+1 4
+1 4
+1 4
+2 1
+3 3
+1 2
-1 6
+1 4
+3 4
+1 4
+1 4
+1 4
+2 3
+6 1
-1 1
+1 1
+2 2
-1 2
+2 1
+2 6
-5 12
-1 12
+1 12
+2 24
-1 24
+2 12
+2 72
+2 1
+1 3
+1 2
-1 1
+1 1

fl=(52)
fn=(216)
36 2
+3 1
-3 7
+3 1
-3 2
+3 1
cfi=(53)
cfn=(172)
calls=1 -11 
* 20
+1 2
+23 8
-21 4
cfi=(55)
cfn=(178)
calls=1 -12 
* 6
* 2
+2 2
+3 2
+13 2
cfi=(62)
cfn=(194)
calls=1 -35 
* 6
* 1
-11 6
cfi=(57)
cfn=(182)
calls=1 -2 
* 26
* 2

fn=(168)
68 273
+1 78
cfi=(32)
cfn=(94)
calls=39 +29 
* 1183
* 78
+3 39
+2 78
+6 39
-6 78
+1 141
cfi=(32)
cfn=(94)
calls=47 +23 
* 1651
* 94
+8 8
-13 8
+13 55
-1 31
+1 93

fl=(2)
fn=(154) handle_preload_list
869 11
+5 1
-5 2
+5 2
-4 3
+7 3
cfi=(49)
cfn=(156)
calls=1 32 
* 254
* 1
+1 3
+9 1
183 1
889 2
183 2
891 2
-80 1
+5 1
-6 1
-4 1
+10 2
-6 1
+4 1
+2 2
-5 1
+1 1
+4 1
cfi=(50)
cfn=(158)
calls=1 254 
* 2754
+1 3
+8 3
+67 1
-18 2
+21 9
-15 4
cfi=(29)
cfn=(82)
calls=1 210 
* 19
+1 2

fn=(246) init_tls
734 1
+6 1
-6 3
+2 2
+4 2
+11 1
fi=(28)
44 1
fe=(2)
746 1
+4 1
fi=(28)
44 1
cfi=(27)
cfn=(74)
calls=1 +36 
* 41
fe=(2)
761 1
-12 1
+6 1
-9 1
+11 1
+4 1
+2 3
-1 2
+3 10
+4 1
+2 1
-2 2
-5 1
-1 2
+10 3
+3 2
cfi=(46)
cfn=(248)
calls=1 97 
* 86
+3 1
cfi=(46)
cfn=(250)
calls=1 216 
* 79
+7 1
cfi=(46)
cfn=(252)
calls=1 417 
* 469
* 1
+1 2
+6 1
fi=(74) ./elf/../sysdeps/generic/dl-call_tls_init_tp.h
31 2
fe=(2)
793 1
fi=(74)
31 6
+2 1
cfi=(24)
cfn=(256)
calls=1 +35 
* 79
fe=(2)
800 1
-3 1
+3 4
-36 4
-1 9

fn=(2)
517 16
85 1
547 4
85 1
543 1
fi=(6)
55 1
fe=(2)
+30 1
546 1
85 1
fi=(3) ./elf/./get-dynamic-info.h
-40 1
fe=(2)
546 1
fi=(3)
45 2
+23 18
-23 72
+4 36
+3 5
-1 10
+3 20
+1 16
+1 5
fi=(4)
+23 1
fi=(3)
+31 1
-38 3
+12 4
+1 3
+1 4
+1 4
+1 5
+1 3
+1 4
+1 4
+12 7
+7 2
-51 4
+64 3
+6 3
+1 3
+3 2
+1 3
+5 5
+3 5
fe=(2)
563 154
fi=(4)
79 1
fe=(2)
563 1
fi=(4)
79 2
fe=(2)
563 27
fi=(6)
287 3
fi=(5)
49 1
fe=(2)
563 1
fi=(5)
50 1
-1 2
+4 1
-3 1
+3 4
+3 2
-7 1
fe=(2)
563 1
fi=(5)
50 1
-1 2
+4 1
-3 1
+3 4
+3 2
+7 3
+2 3
-2 6
fi=(6)
278 3
fi=(5)
64 6
fi=(6)
278 6
+9 24
+3 6
+1 6
+26 8
+6 2
fi=(5)
61 13
fe=(2)
563 6
fi=(5)
51 1
fi=(4)
+28 2
fi=(3)
-17 4
+2 4
fe=(2)
565 1
+13 1
cfi=(7)
cfn=(12) __rtld_malloc_init_stubs
calls=1 42 
* 10
458 2
85 1
476 2
85 3
476 1
cfi=(8)
cfn=(14)
calls=1 25 
* 27
+2 1
+16 2
-17 1
+11 1
-10 1
+16 1
cfi=(9)
cfn=(16)
calls=1 102 
* 176230
* 1
+2 2
+89 9
fi=(3)
103 3
fe=(2)

fn=(238)
674 2
+2 1
-2 4
+2 3
cfi=(73)
cfn=(240)
calls=1 392 
* 8330
* 2
+4 3

fn=(66)
1346 2
197 1
1346 11
199 1
302 1
+1 1
197 1
+99 3
1357 1
cfi=(24)
cfn=(68)
calls=1 53 
* 17
2749 1
2538 1
2749 2
2598 1
+2 2
+15 1
-13 2
cfi=(25) ./elf/./elf/dl-environ.c
cfn=(70) _dl_next_ld_env_entry
calls=1 28 
* 39
* 4
cfi=(25)
cfn=(70)
calls=2 28 
* 175
* 9
+4 6
-2 2
+2 6
+1 2
-1 6
+1 17
-1 89
+9 12
2727 3
1373 1
+1 2
-1 2
+1 2
2687 3
-47 2
+10 2
1637 9
cfi=(26)
cfn=(72)
calls=1 59 
* 210
* 1
+2 2
+1 3
+6 1
-5 2
+1 3
+4 1
cfi=(26)
cfn=(84)
calls=1 31 
* 42
+1 2
1116 1
-1 1
1351 1
1143 1
-21 2
+21 2
-19 1
+1 1
-3 1
+21 2
+57 1
-82 1
+25 1
-3 1
+4 1
+19 1
+37 4
-56 102
+56 4
-1 4
+1 8
-1 4
+2 8
+1 1
+2 12
+1 14
+4 8
+1 8
+1 4
+4 12
-72 27
1253 2
+1 22
+6 4
cfi=(30)
cfn=(88)
calls=1 868 
* 90
-7 26
+1 13
+6 13
-6 26
fi=(31)
235 4
+1 2
-87 4
fe=(2)
1148 1
-5 1
+5 2
-5 2
+30 1
-9 2
+2 1
-3 1
+10 2
+18 2
-38 2
-10 1
+10 1
+1 9
-11 2
+1 14
1247 1
1143 1
1247 2
1143 3
1266 4
+3 3
+2 3
1672 3
+2 2
-1 1
+1 1
+1 3
-2 2
cfi=(32)
cfn=(94)
calls=1 98 
* 25
* 2
+7 1
+3 1
-5 1
+3 1
+2 1
+1 2
+4 2
+2 2
fi=(3)
39 4
+4 1
+2 1
+9 1
+1 1
-10 2
+23 27
-23 108
+4 54
+3 6
-1 12
+3 24
+1 20
fe=(2)
1243 1
1143 1
1243 1
1143 2
fi=(3)
72 4
+43 2
+7 3
+1 4
+6 3
+18 4
+5 2
+2 2
+2 2
+2 2
+1 2
+3 4
+2 3
+1 2
+9 2
+6 2
+1 3
+3 3
fe=(2)
1698 4
+7 2
cfi=(8)
cfn=(14)
calls=1 25 
* 27
+3 2
fi=(33) ./elf/./setup-vdso.h
24 2
fi=(36) ./elf/./dl-main.h
+85 2
fi=(35) ./elf/../sysdeps/unix/sysv/linux/dl-vdso-setup.h
-64 1
fi=(36)
+64 3
cfi=(30)
cfn=(106)
calls=1 706 
* 2322
fe=(2)
1733 3
cfi=(45)
cfn=(144) _dl_debug_initialize
calls=1 56 
* 34
+7 1
-5 1
-2 1
+7 1
+4 1
+1 1
+2 1
-3 3
+1 2
+3 1
+11 1
-13 1
+13 1
+1 2
+5 1
-3 2
+2 1
+1 2
+5 3
+1 5
-1 2
224 1
+1 1
-1 1
+1 3
+1 2
1788 2
+5 1
-1 1
1352 1
1793 1
+24 1
cfi=(46)
cfn=(146)
calls=1 192 
* 6
* 1
fi=(47) ./elf/../sysdeps/generic/dl-debug.h
29 4
+1 1
fe=(2)
1823 1
+1 1
cfi=(45)
cfn=(150) _dl_debug_state
calls=1 116 
* 2
+1 1
+4 3
cfi=(48)
cfn=(152)
calls=1 29 
* 17
+5 3
+2 1
+2 2
+9 2
+16 4
cfi=(63)
cfn=(200)
calls=1 25 
* 9
* 2
+76 4
+16 3
85 1
1965 1
85 2
1965 1
85 1
1965 5
85 1
1965 2
cfi=(64)
cfn=(202) _dl_map_object_deps
calls=1 143 
* 13587
92 1
+9 1
1971 1
92 2
+9 2
1971 2
+1 6
-1 4
+1 8
-1 16
+4 3
+1 2
+1 1
+2 18
+1 8
+46 1
-42 2
+8 3
+1 2
+2 1
+2 3
+2 1
-4 1
+5 1
-1 2
+14 2
+1 2
+1 3
-25 1
+36 2
+2 1
-2 1
+2 2
-2 1
+1 2
+1 1
-1 2
+1 1
cfi=(50)
cfn=(236)
calls=1 186 
* 8367
+10 1
+1 1
-1 1
+1 1
+3 2
837 1
fi=(298) ./elf/../sysdeps/unix/sysv/linux/dl-osinfo.h
39 2
fe=(2)
839 1
fi=(298)
52 1
fe=(2)
848 1
+7 1
-5 1
2047 3
2246 2
+4 1
-4 1
+10 1
-6 1
+6 1
-6 1
+9 2
+8 2
fi=(31)
36 2
+1 3
+3 3
+13 7
-13 4
+9 8
-9 1
+9 20
+4 16
-16 15
+34 1
fe=(2)
2279 1
fi=(31)
71 1
cfi=(76)
cfn=(260)
calls=1 361 
* 55
fe=(2)
2282 1
-3 2
+5 1
-2 2
+2 2
+1 6
cfi=(77)
cfn=(262)
calls=1 207 
* 71402
85 2
2292 1
85 2
2292 1
+1 20
+2 10
+5 10
+2 10
+6 5
+2 10
+1 32
cfi=(77)
cfn=(262)
calls=4 207 
* 41201
+4 12
+1 2
-23 1
+23 1
cfi=(46)
cfn=(438)
calls=1 1017 
* 28
-23 3
92 3
+1 1
2325 1
93 1
2325 1
+4 4
+2 1
+7 4
cfi=(46)
cfn=(524)
calls=1 523 
* 149
+3 2
+4 3
+2 2
+33 3
cfi=(170)
cfn=(548)
calls=1 27 
* 603
+7 1
cfi=(9)
cfn=(564)
calls=1 147 
* 2
+3 3
cfi=(48)
cfn=(566)
calls=1 41 
* 11
+4 2
cfi=(45)
cfn=(196)
calls=1 38 
* 7
+1 1
-1 1
+2 1
cfi=(45)
cfn=(150)
calls=1 116 
* 2
+1 1
+4 1
cfi=(67)
cfn=(568)
calls=1 525 
* 19
+5 8
2304 1
+1 1
-3 2
226 2
-2 1
+1 1
1773 1
+6 1
-6 2
+6 1
fi=(3)
56 5
+3 4
fi=(34) ./elf/../sysdeps/unix/sysv/linux/dl-vdso.h
-19 2
+1 5
fi=(35)
-11 1
+3 1
+3 1
+3 1
fi=(34)
+16 2
fi=(3)
+17 3
+12 3
+1 5
+1 5
+1 5
+1 4
+1 5
+1 5
+1 5
+12 2
+7 1
-7 7
+7 2
fe=(2)
1743 4
2357 1
cfi=(164) ./elf/./elf/dl-find_object.c
cfn=(526) _dl_find_object_init
calls=1 561 
* 723
+5 3
cfi=(7)
cfn=(534) __rtld_malloc_init_real
calls=1 76 
* 2651
+3 1
cfi=(168)
cfn=(542)
calls=1 30 
* 503
85 1
2371 1
+1 3
85 3
2372 2
cfi=(77)
cfn=(262)
calls=1 207 
* 1699
92 3
+9 3
2687 2
+2 1
+1 1
-1 1
+1 1
+1 1
2040 2
cfn=(246)
calls=1 734 
* 836
* 2
2650 2
+2 2
+1 1
fi=(3)
62 4
+2 4
fe=(2)
1943 10
85 1
1842 2
85 3
1842 2
cfn=(154)
calls=1 869 
* 3098
* 1
92 3
+9 3
1943 6
+1 1
-1 1
+4 3
+1 1
+1 2
+1 2
-7 2

fn=(164)
641 2
+2 1
-2 4
+2 1
+1 2
-1 2
+1 3
cfi=(30)
cfn=(166)
calls=1 1967 
* 2643
* 1
+2 3

fl=(66)
fn=(212)
146 6
-55 6
+70 7
+1 1
-2 4
+1 4

fl=(70)
fn=(224)
25 4
+1 8
+1 2

fl=(37)
fn=(108)
172 6
+3 1
-3 3
+3 1
-3 5
+2 1
cfi=(38)
cfn=(110)
calls=1 29 
* 49
+1 1
fi=(40) ./elf/./dl-hwcaps.h
43 1
fe=(37)
174 1
fi=(40)
45 2
+32 1
+1 1
+1 1
fe=(37)
-27 2
cfi=(39)
cfn=(114)
calls=1 -1 
* 23
* 2
fi=(40)
-9 1
+2 1
-2 1
+34 2
+1 2
+1 1
fe=(37)
-24 2
-1 2
+1 2
+1 2
+1 2
-5 4
cfi=(39)
cfn=(114)
calls=2 -1 
* 130
* 2
cfi=(39)
cfn=(114)
calls=1 -1 
* 125
* 6
+48 4
fi=(28)
-44 2
cfi=(27)
cfn=(78)
calls=1 -20 
* 30
fe=(37)
+46 2
-2 1
+2 1
+3 1
+3 1
fi=(40)
-65 1
+2 1
fe=(37)
+67 1
fi=(40)
-66 1
fe=(37)
+66 2
cfi=(39)
cfn=(120)
calls=1 -87 
* 13
* 2
fi=(40)
-69 1
+2 1
-2 1
+34 2
+1 2
+1 1
fe=(37)
+48 10
+1 4
+1 2
+1 2
-1 2
-4 4
cfi=(39)
cfn=(114)
calls=2 -74 
* 130
* 2
cfi=(39)
cfn=(114)
calls=1 -74 
* 125
* 6
+8 3
+9 5
+3 8
-2 6
+14 1
+4 1
+1 1
+1 1
-20 3
+19 1
+1 1
-20 2
+8 2
+4 2
-4 3
+4 2
cfi=(42)
cfn=(122)
calls=1 -96 
* 19
+1 3
-14 8
+47 1
-4 2
+4 2
-3 1
+7 1
-7 2
+7 1
fi=(28)
56 1
cfi=(27)
cfn=(78)
calls=1 -20 
* 30
* 1
fe=(37)
194 2
+8 1
fi=(40)
43 1
fe=(37)
201 1
80 1
fi=(40)
-35 1
fe=(37)
+35 1
202 1
fi=(40)
77 1
+1 1
fe=(37)
202 3
fi=(40)
79 1
fe=(37)
-2 2
cfi=(39)
cfn=(114)
calls=1 -26 
* 23
* 2
fi=(40)
-34 1
+2 1
fe=(37)
+35 2
fi=(40)
-37 1
+34 2
+1 2
+1 3
fe=(37)
+1 4
+7 2
-7 8
cfi=(29)
cfn=(126)
calls=2 197 
* 26
+4 2
+2 2
+2 2
-2 4
-9 4
cfi=(39)
cfn=(114)
calls=2 -26 
* 130
* 2
cfi=(39)
cfn=(114)
calls=1 -26 
* 125
* 6
213 2
-5 1
+1 1
-1 1
+5 1
+3 9

fl=(64)
fn=(202)
143 4
+1 2
-1 1
+1 1
-1 2
+1 1
-1 1
+1 1
-1 4
+1 3
-1 1
+1 7
-8 1
+8 2
-8 1
-6 1
-2 1
+16 1
-8 1
-7 1
+1 1
+6 1
+24 4
-28 3
-2 1
+31 1
-33 2
+2 2
+30 2
-30 1
-1 4
+7 4
+24 3
+28 3
-6 1
+46 1
fi=(72) ./elf/../include/scratch_buffer.h
77 1
fe=(64)
+87 1
fi=(72)
-87 1
+1 1
fe=(64)
184 1
+44 4
-31 1
-4 1
+4 6
-4 4
+4 8
+11 14
-18 2
+18 4
417 10
+2 3
+3 3
-3 9
+3 3
-3 3
fi=(28)
56 3
cfi=(27)
cfn=(78)
calls=3 -20 
* 90
fe=(64)
423 9
fi=(28)
56 3
fe=(64)
423 3
+6 3
+1 15
cfi=(29)
cfn=(82)
calls=3 210 
* 33
+1 15
cfi=(29)
cfn=(82)
calls=3 210 
* 33
+3 3
+1 6
+4 15
188 8
442 12
-1 5
+1 10
183 6
+27 12
+7 3
+4 3
-6 3
+1 3
+1 3
+1 6
+3 9
-2 3
-29 15
+32 184
+6 20
cfi=(30)
cfn=(204)
calls=5 +10 
* 283
* 15
+4 10
-2 5
+2 10
cfi=(50)
cfn=(160)
calls=5 -28 
* 11151
+1 10
+9 5
+2 10
+5 15
+6 3
+2 3
-8 6
+3 3
+1 3
+1 3
+1 3
+4 3
-3 3
+3 9
+4 15
+1 9
-43 377
+7 10
+38 261
fi=(72)
85 3
fe=(64)
448 5
+1 1
+3 4
+11 5
fi=(28)
56 1
cfi=(27)
cfn=(78)
calls=1 -20 
* 30
fe=(64)
465 3
fi=(28)
56 1
fe=(64)
465 1
+5 2
+1 1
-1 3
+4 3
-2 2
+13 4
+5 4
-16 12
+11 4
-7 4
+7 4
-2 8
-5 1
+7 1
-2 2
+2 1
-11 1
+11 1
+5 1
-16 3
+21 3
+37 2
+15 2
-14 2
+20 1
-1 4
+1 4
-1 5
cfi=(13)
cfn=(232)
calls=1 298 
* 349
+5 1
+2 1
+1 1
+1 2
-2 1
+2 1
+7 3
+3 2
+3 8
198 32
+3 3
fi=(72)
-70 12
cfi=(71)
cfn=(228)
calls=3 30 
* 75
fe=(64)
+70 9
+4 6
547 4
cfi=(29)
cfn=(82)
calls=1 210 
* 19
* 3
-53 2
144 2

fn=(206)
61 30
+7 5
-4 15
+1 5
-1 35
cfi=(30)
cfn=(166)
calls=5 1967 
* 10711
* 5
+5 15

fl=(20) ./elf/../sysdeps/x86/dl-cacheinfo.h
fn=(50) handle_intel.constprop.0
255 24
-5 12
+17 12
-17 96
+11 12
+1 12
+5 36
+4 24
+34 96
-29 12
+3 24
-3 12
+3 36
cfn=(52) intel_check_word.constprop.0
calls=12 123 
* 4092
+2 24
+3 60
cfn=(52)
calls=12 123 
* 1272
+2 24

fn=(52)
123 48
-4 72
+10 24
-10 96
+10 48
-10 24
+10 24
-10 24
+10 24
+2 48
+71 48
fi=(21) ./elf/../bits/stdlib-bsearch.h
32 24
fe=(20)
202 120
-71 96
+2 60
+2 120
+8 120
+51 96
+22 48
fi=(21)
28 48
-1 96
+2 216
+2 168
+1 84
fe=(20)
+78 168
+3 324
fi=(21)
-78 264
-6 528
+2 480
+1 240
fe=(20)
+78 480
+15 12
246 144
fi=(21)
37 120
fe=(20)
155 36
+3 36
-6 12
+3 39
+9 18
+23 21
-32 63
+3 63
+4 58
+2 116
+3 84
+1 48
+1 48
+1 30
+2 11
+2 22
+6 14
+3 8
+1 12
-20 15
+12 4
+2 4
+1 4
-2 4
-1 4
+2 8
-2 4
+3 4
-2 12
+2 12
+11 2
-9 12

fn=(56) get_common_cache_info.constprop.0
571 11
+17 1
+1 1
+9 1
-12 1
+2 1
+2 1
+8 1
-11 1
+3 1
+11 2
-5 3
+17 1
+5 3
+4 2
770 5
+1 5
+4 2
+8 1
-1 1
+1 1
+1 1
+1 7
627 5
+3 6
-32 5
+75 4
+8 5
+2 2
-2 1
+6 3
+3 1
+1 5
-4 4
+21 2
-21 4
+2 1
+2 4
-4 1
+6 4
+3 2
+5 1
+2 2
+1 1
+1 1
-2 2
+1 1
-19 4
+46 2
+1 1
+1 2
+1 1
+25 3
630 3
+10 6
+14 2
+4 1
+3 1
+1 1
-4 2
+3 3
+6 4
-37 12
+7 6
-7 3
+7 2
+3 20
+5 2
+4 1
+1 1
-1 2
+1 1
+61 2
+7 1
+2 2
-16 1
+22 1
-6 2
+1 1
+5 1
-30 5

fl=(45)
fn=(150)
116 2
+1 2

fn=(196)
38 4
+3 4
-1 8
+4 8
+4 4

fn=(144)
56 3
+3 2
+4 1
+22 1
+10 1
-32 2
+1 1
+21 2
+5 2
+1 1
+4 1
-4 1
-1 1
+2 1
+3 1
+4 2
+8 2
-50 1
+4 2
+35 6

fl=(16)
fn=(42) update_active.constprop.0
72 8
+4 1
+37 1
+4 1
-31 1
-1 1
-1 1
+25 1
-14 1
-10 1
-1 2
+25 1
-24 1
+19 1
-10 1
+9 1
+6 1
+7 1
-22 1
+9 1
+13 2
-4 1
-18 1
+22 1
-13 1
+9 1
+4 1
+5 1
-9 1
+9 2
-4 1
+4 2
+1 1
-28 1
+28 1
-19 1
+6 1
+3 1
+10 1
+2 1
-1 1
+6 1
-5 1
-1 2
+5 1
+2 1
-2 4
+1 1
+1 1
-1 2
+1 1
-1 1
+3 2
+1 4
+14 2
356 2
+4 3
fi=(18) ./elf/../sysdeps/unix/sysv/linux/x86/dl-hwcap2.h
25 2
fi=(19)
+5 1
-2 1
+2 3
fe=(16)
369 1
+1 8
151 2
+1 2
-1 5
+1 2
+2 3
+90 1
+1 1
-1 2
+17 4
+16 2
+5 1
-1 2
+4 4
+4 2
+4 3
+1 2
+3 1
-1 1
+9 1
-5 1
+2 1
-2 1
+5 1
+51 1
fi=(19)
31 1
fe=(16)
356 2
fi=(19)
32 3
+4 3
fe=(16)
158 4
+3 1
+3 2
+14 1
+2 1
+10 3
-12 1
+12 1
-12 1
+2 2
-2 1
+2 1
+8 1
-8 1
+6 3
+2 1
-2 1
+2 3
+7 5
fi=(19)
39 2
+1 4
-2 1
+7 4
+2 1
+1 2
+3 5
+2 4
+1 2
+1 2
+3 1
-1 1
+1 3
fe=(16)
171 1
-5 2
+4 1

fn=(36)
682 1
+17 1
-17 7
+3 1
+1 1
+1 1
+3 1
+9 2
+3 6
1001 3
+1 2
+3 2
+1 2
+6 1
+1 1
+1 1
+1 1
fi=(20)
792 1
+1 1
+2 1
+14 2
+85 1
+1 1
+15 1
-5 1
+5 1
-10 1
-6 1
+2 1
+14 1
-15 1
+2 1
-1 1
+2 1
-1 1
+2 1
-1 1
+1 1
+2 1
+1 1
+1 1
+1 1
+35 2
-15 3
+8 2
+27 6
+9 2
+19 2
+8 6
cfi=(11)
cfn=(28)
calls=1 387 
* 23
* 1
+2 2
+3 4
cfi=(11)
cfn=(28)
calls=1 387 
* 23
* 1
+2 2
+3 4
cfi=(11)
cfn=(28)
calls=1 387 
* 23
* 1
+1 5
+16 2
-12 5
cfi=(11)
cfn=(28)
calls=1 387 
* 23
* 1
+1 3
+6 3
+3 1
-3 2
cfi=(11)
cfn=(28)
calls=1 387 
* 23
* 1
+3 5
-3 1
+3 5
cfi=(11)
cfn=(58)
calls=1 153 
* 62
+1 10
cfi=(11)
cfn=(58)
calls=1 153 
* 62
+1 11
cfi=(11)
cfn=(58)
calls=1 153 
* 62
+3 10
cfi=(11)
cfn=(58)
calls=1 153 
* 62
+2 10
cfi=(11)
cfn=(58)
calls=1 153 
* 62
+13 1
+2 1
fe=(16)
-23 1
fi=(20)
+21 1
+3 1
fe=(16)
-24 1
fi=(20)
+26 1
-5 1
+2 1
-2 1
+3 1
fe=(16)
-24 1
fi=(20)
+25 1
+3 1
-1 1
fe=(16)
-27 1
cfi=(11)
cfn=(28)
calls=1 387 
* 22
+3 4
cfi=(11)
cfn=(28)
calls=1 387 
* 24
+6 3
+54 1
-1 1
+1 1
+45 4
cfi=(11)
cfn=(28)
calls=1 387 
* 22
+2 4
cfi=(11)
cfn=(28)
calls=1 387 
* 22
+6 4
cfi=(11)
cfn=(28)
calls=1 387 
* 24
+7 8
fi=(20)
974 12
fe=(16)
+68 1
-1 2
+1 3
+44 3
+27 2
-10 2
+1 2
+2 3
+1 2
+2 3
+1 2
fi=(20)
811 2
cfn=(50)
calls=1 255 
* 455
+1 1
-1 1
+1 1
cfn=(50)
calls=1 255 
* 503
+1 1
-1 1
+1 1
cfn=(50)
calls=1 255 
* 530
+4 1
-4 1
+1 2
+3 1
cfn=(50)
calls=1 255 
* 476
+2 1
-2 1
+2 1
cfn=(50)
calls=1 255 
* 468
+3 1
-3 1
+1 2
+2 1
cfn=(50)
calls=1 255 
* 446
+2 1
-2 1
+2 1
cfn=(50)
calls=1 255 
* 447
+3 1
-2 1
-1 1
+3 1
cfn=(50)
calls=1 255 
* 494
+2 1
-2 1
+2 1
cfn=(50)
calls=1 255 
* 495
+1 1
+2 1
-3 1
+1 1
+2 1
cfn=(50)
calls=1 255 
* 521
+2 1
-2 1
+2 1
cfn=(50)
calls=1 255 
* 522
+2 1
-2 1
+2 1
cfn=(50)
calls=1 255 
* 523
+2 4
-2 1
+2 1
cfn=(56)
calls=1 571 
* 223
+93 1
-6 3
+6 1
-6 2
+6 2
-6 2
+6 2
-1 2
fe=(16)
708 6
cfn=(38) get_common_indices.constprop.0
calls=1 398 
* 74
376 3
+1 2
+1 6
+5 2
713 1
cfn=(42)
calls=1 72 
* 222
+2 1
+2 1
1015 1
715 2
878 2
+7 2
+2 2
+4 2
+6 2
+2 1
706 2
-3 1
384 6
+5 2
+1 7
717 1
fi=(20)
987 1
-48 1
fe=(16)
717 1
fi=(20)
987 2
fe=(16)
717 6
+4 7
+78 1
-25 3
+92 2
+3 2
fi=(20)
+38 1
fe=(16)
-37 1
-89 2
+51 2

fn=(38)
398 3
+4 4
+3 3
+5 2
-5 1
+5 1
-5 1
+4 1
+1 1
+1 4
+1 4
+1 3
+1 2
+7 2
+2 5
+5 1
-5 1
+5 1
-5 1
+5 1
-5 2
+5 1
+7 1
-7 4
+7 1
+1 3
+6 1
-6 4
+6 1
fi=(17) ./elf/../sysdeps/unix/sysv/linux/x86/dl-minsigstacksize.h
24 2
+3 2
+1 2
+37 3
+7 1
+2 1
fe=(16)
457 3

fl=(26)
fn=(84)
31 16
+2 4
-2 8
+2 4
-2 12
+2 4
cfi=(24)
cfn=(86)
calls=4 +9 
* 12
+2 35
+3 36
+2 3
+2 3
+4 3
+4 3
-4 6
+1 6
+1 6
+3 15
-1 3
cfi=(24)
cfn=(86)
calls=3 -8 
* 9
-4 1
+4 1
-4 2
+1 2
+1 2
+3 5
-1 1
cfi=(24)
cfn=(86)
calls=1 -8 
* 3
-5 2

fn=(72)
59 60
+3 8
+18 6
+3 3
cfi=(22)
cfn=(62)
calls=3 -26 
* 69
+4 3
-4 3
+4 3
+5 3
-9 9
fi=(28)
-39 6
cfi=(27)
cfn=(74)
calls=3 +36 
* 224
fe=(26)
+39 1
fi=(28)
-39 2
cfi=(27)
cfn=(74)
calls=1 +36 
* 47
* 4
fe=(26)
+51 8
+5 4
+4 4
-6 4
+2 4
+4 4
-5 4
+4 4
+1 4
-1 4
+1 8
cfi=(29)
cfn=(82)
calls=4 210 
* 55
* 4
+15 4
-15 4
+2 4
+13 8
+6 1
+2 7
+3 2
-3 21
+3 6
+2 4
+4 4
+3 12
+2 12
-2 8
+2 8
-2 16
+16 8
-5 4
+5 4
-6 4
+6 4
-6 4
+6 8
+2 6
+3 6
-3 6
+7 12
+4 9
+8 1
+13 1
-10 2
+10 6
-10 6
+10 9
+2 3
cfi=(22)
cfn=(62)
calls=3 57 
* 105
+21 3
-21 9
+17 3
-13 9
+50 9
cfi=(29)
cfn=(126)
calls=3 -48 
* 47
* 3
+5 6
+1 6
-1 100
+1 100
+4 6
+1 3
+3 3
+4 36
131 8
-8 3
-4 6
+34 1
+7 4
+8 12
fi=(28)
56 6
cfi=(27)
cfn=(78)
calls=3 -20 
* 90
* 3
fe=(26)
200 6
-1 6
64 2
+2 3
+1 2
+4 6
+6 2

fl=(14)
fn=(30)
36 1
fi=(299) ./elf/../sysdeps/unix/sysv/linux/brk_call.h
-12 2
fe=(14)
+13 1
+1 2
+6 1
+1 1

fl=(7)
fn=(538) lookup_malloc_symbol
61 8
+3 4
-3 12
+3 4
-3 12
+3 4
-3 4
+2 4
+1 16
cfi=(78)
cfn=(270)
calls=4 772 
* 2368
+4 28
+1 28
+2 4
fi=(167) ./elf/./dl-sym-post.h
-30 8
+12 12
fe=(7)
+19 24

fn=(12)
42 1
+1 2
+1 2
+1 2
+1 2
+1 1

fn=(534)
76 2
+10 1
fi=(166) ./elf/../sysdeps/generic/dl-hash.h
-41 1
-1 1
fe=(7)
+32 8
+11 1
-1 1
fi=(166)
-43 1
+5 3
+14 4
-17 3
+3 15
+14 20
-17 15
fe=(7)
+46 2
fi=(166)
-24 1
fe=(7)
+22 1
+2 2
fi=(166)
-19 1
fe=(7)
+19 1
cfn=(538)
calls=1 -30 
* 617
+1 3
-1 1
+1 1
cfn=(538)
calls=1 -31 
* 606
+1 3
-1 1
+1 1
cfn=(538)
calls=1 -32 
* 691
+1 3
-1 1
+1 1
cfn=(538)
calls=1 -33 
* 626
+5 1
+1 1
+1 1
+1 1
+1 8

fn=(134)
239 2
+3 4
+2 2
+1 4
+4 3
-2 2
+4 28
+5 84
-2 56
+13 1
+4 4
-22 14
+15 14
-15 30

fl=(13)
fn=(26)
289 2
+1 2
-1 2
+1 2
cfi=(11)
cfn=(28)
calls=1 +97 
* 24
+2 3
-1 1
+2 2

fn=(234) dfs_traversal.part.0
135 90
+10 10
-2 10
+2 20
+2 28
-7 34
+7 68
+9 20
+15 30
+1 10
+1 60
-17 15

fn=(232)
298 24
+8 2
-8 2
+8 4
+4 16
-99 2
-28 2
-2 2
+1 4
+29 2
-28 8
+1 2
-1 2
+1 2
-1 4
+1 8
-1 8
+1 8
-1 16
+28 30
+8 6
-3 2
+2 2
+1 4
-3 2
+5 32
+2 10
-83 50
cfn=(234)
calls=10 -5 
* 395
+86 30
+18 8
+32 8
+7 2
+27 2
-47 6
cfi=(29)
cfn=(82)
calls=2 -53 
* 38
* 2

fl=(25)
fn=(70)
28 3
+1 3
+3 39
+13 29
-13 58
+2 62
+1 12
+5 2
-3 2
+3 2
+2 2

fl=(22)
fn=(62)
57 20
+44 20
+1 20
+1 20
+1 20
+1 20
+1 20
+1 20
+2 20
+2 20
+31 20
+1 20
+1 20
+1 20
+1 20
+1 11
+2 11
+4 9
+1 9
+1 9
+1 9
+1 9
+1 9
+1 9
+1 9
+1 9
+1 9
+1 9
+1 9
+5 72

fl=(164)
fn=(530) _dlfo_process_initial
474 2
+3 2
-3 6
+1 2
+3 4
+26 14
+1 6
+1 10
-1 20
+3 36
+3 32
-7 10
+27 2
-2 2
+2 6
-18 24
+3 8
-1 8
cfi=(165)
cfn=(528)
calls=4 95 
* 247
+2 16

fn=(532) _dlfo_sort_mappings
536 1
+1 2
+3 4
+4 1
+1 1
-1 1
+1 2
-1 2
+1 2
-1 2
+1 10
+1 30
+3 3
-1 3
-3 18
+8 9
+1 6
-1 3
-13 6
+14 9
+1 6
-15 6
+17 1

fn=(526)
561 2
+3 1
-3 3
+5 2
+13 1
cfn=(530)
calls=1 474 
* 97
+1 1
-1 1
+1 1
fi=(28)
56 1
cfi=(27)
cfn=(78)
calls=1 -20 
* 30
fe=(164)
580 1
fi=(28)
56 1
fe=(164)
582 2
+3 2
+5 1
+1 1
cfn=(530)
calls=1 474 
* 360
+3 3
+10 4
-37 2
cfi=(165)
cfn=(528)
calls=1 95 
* 68
* 1
+29 2
cfn=(532)
calls=1 -60 
* 128
+3 6
+2 1

fl=(23)
fn=(64)
37 4
+3 1
-3 2
+21 2
+4 2
+16 5

ob=(6)
fl=(196)
fn=(646)
0 12

totals: 392866924
