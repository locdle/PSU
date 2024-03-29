	.text
	.globl __class_A
__class_A:
	.quad __A_go
    # _main ()
    # (a)
# Allocation map
# t1	%rbx
# t2	%rax
# t3	%rax
# t4	%rdi
# a	%rdi
	.p2align 4,0x90
	.globl __main
__main:
	pushq %rbx
    # 0.  Begin:
F0_Begin:
    # 1.   t1 = call _malloc(16)
	movq $16,%rdi
	call __malloc
	movq %rax,%rbx
    # 2.   [t1]:P = _class_A
	leaq __class_A(%rip),%r10
	movq %r10,(%rbx)
    # 3.   call _init0_A(t1)
	movq %rbx,%rdi
	call __init0_A
    # 4.   a = t1
	movq %rbx,%rdi
    # 5.   t2 = [a]:P
	movq (%rdi),%rax
    # 6.   t3 = [t2]:P
	movq (%rax),%rax
    # 7.   t4 = call * t3(a)
	call * %rax
	movq %rax,%rdi
    # 8.   call _printInt(t4)
	call __printInt
    # 9.   return 
	popq %rbx
	ret
    # 10. End:
F0_End:
    # _init0_A (obj)
# Allocation map
# obj	%rdi
	.p2align 4,0x90
	.globl __init0_A
__init0_A:
	subq $8,%rsp
    # 0.  Begin:
F1_Begin:
    # 1.   8[obj]:P = 0
	movq $0,8(%rdi)
    # 2.   return 
	addq $8,%rsp
	ret
    # 3.  End:
F1_End:
    # _init_A (obj, a)
# Allocation map
# a	%rsi
# obj	%rdi
	.p2align 4,0x90
	.globl __init_A
__init_A:
	subq $8,%rsp
    # 0.  Begin:
F2_Begin:
    # 1.   8[obj]:P = a
	movq %rsi,8(%rdi)
    # 2.   return 
	addq $8,%rsp
	ret
    # 3.  End:
F2_End:
    # _A_go (obj)
    # (b)
# Allocation map
# t1	%rax
# t2	%rax
# t3	%rcx
# b	%rbp
# t4	%rax
# t5	%rax
# t6	%rcx
# t7	%rax
# t8	%rax
# t9	%rax
# t10	%rax
# t11	%rax
# t12	%rax
# t13	%rcx
# t14	%rax
# t15	%rax
# t17	%rax
# t16	%rdi
# t19	%rdi
# t18	%rax
# t21	%rcx
# t20	%rax
# t23	%rax
# t22	%rax
# obj	%rbx
	.p2align 4,0x90
	.globl __A_go
__A_go:
	pushq %rbx
	pushq %rbp
	subq $8,%rsp
	movq %rdi,%rbx
    # 0.  Begin:
F3_Begin:
    # 1.   t1 = call _malloc(8)
	movq $8,%rdi
	call __malloc
    # 2.   8[obj]:P = t1
	movq %rax,8(%rbx)
    # 3.   t2 = call _malloc(8)
	movq $8,%rdi
	call __malloc
    # 4.   b = t2
	movq %rax,%rbp
    # 5.   t3 = 8[obj]:P
	movq 8(%rbx),%rcx
    # 6.   t4 = 0 * 4
	movq $0,%rax
	imulq $4,%rax
    # 7.   t5 = t3 + t4
	movq %rax,%r10
	movq %rcx,%rax
	addq %r10,%rax
    # 8.   [t5]:I = 1
	movl $1,(%rax)
    # 9.   t6 = 8[obj]:P
	movq 8(%rbx),%rcx
    # 10.  t7 = 1 * 4
	movq $1,%rax
	imulq $4,%rax
    # 11.  t8 = t6 + t7
	movq %rax,%r10
	movq %rcx,%rax
	addq %r10,%rax
    # 12.  [t8]:I = 2
	movl $2,(%rax)
    # 13.  t9 = 0 * 4
	movq $0,%rax
	imulq $4,%rax
    # 14.  t10 = b + t9
	movq %rax,%r10
	movq %rbp,%rax
	addq %r10,%rax
    # 15.  [t10]:I = 3
	movl $3,(%rax)
    # 16.  t11 = 1 * 4
	movq $1,%rax
	imulq $4,%rax
    # 17.  t12 = b + t11
	movq %rax,%r10
	movq %rbp,%rax
	addq %r10,%rax
    # 18.  [t12]:I = 4
	movl $4,(%rax)
    # 19.  t13 = 8[obj]:P
	movq 8(%rbx),%rcx
    # 20.  t14 = 1 * 4
	movq $1,%rax
	imulq $4,%rax
    # 21.  t15 = t13 + t14
	movq %rax,%r10
	movq %rcx,%rax
	addq %r10,%rax
    # 22.  t16 = [t15]:I
	movslq (%rax),%rdi
    # 23.  call _printInt(t16)
	call __printInt
    # 24.  t17 = 1 * 4
	movq $1,%rax
	imulq $4,%rax
    # 25.  t18 = b + t17
	movq %rax,%r10
	movq %rbp,%rax
	addq %r10,%rax
    # 26.  t19 = [t18]:I
	movslq (%rax),%rdi
    # 27.  call _printInt(t19)
	call __printInt
    # 28.  t20 = 8[obj]:P
	movq 8(%rbx),%rax
    # 29.  t21 = 0 * 4
	movq $0,%rcx
	imulq $4,%rcx
    # 30.  t22 = t20 + t21
	addq %rcx,%rax
    # 31.  t23 = [t22]:I
	movslq (%rax),%rax
    # 32.  return t23
	addq $8,%rsp
	popq %rbp
	popq %rbx
	ret
    # 33. End:
F3_End:
