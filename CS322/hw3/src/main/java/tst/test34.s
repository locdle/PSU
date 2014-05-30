	.text
    # _main ()
    # (a, b, i)
# Allocation map
# t1	%rax
# t2	%rcx
# t3	%rcx
# b	%rdi
# t4	%rcx
# t5	%rcx
# t6	%rcx
# a	%rax
# t7	%rcx
# t8	%rcx
# t9	%rdx
# t10	%rdx
# t11	%rax
# t12	%rax
# t13	%rax
# i	%rdx
	.p2align 4,0x90
	.globl __main
__main:
	subq $8,%rsp
    # 0.  Begin:
F0_Begin:
    # 1.   t1 = call _malloc(8)
	movq $8,%rdi
	call __malloc
    # 2.   a = t1
    # 3.   t2 = 0 * 4
	movq $0,%rcx
	imulq $4,%rcx
    # 4.   t3 = a + t2
	movq %rcx,%r10
	movq %rax,%rcx
	addq %r10,%rcx
    # 5.   [t3]:I = 2
	movl $2,(%rcx)
    # 6.   t4 = 1 * 4
	movq $1,%rcx
	imulq $4,%rcx
    # 7.   t5 = a + t4
	movq %rcx,%r10
	movq %rax,%rcx
	addq %r10,%rcx
    # 8.   [t5]:I = 4
	movl $4,(%rcx)
    # 9.   i = 0
	movq $0,%rdx
    # 10.  t6 = i * 4
	movq %rdx,%rcx
	imulq $4,%rcx
    # 11.  t7 = a + t6
	movq %rcx,%r10
	movq %rax,%rcx
	addq %r10,%rcx
    # 12.  t8 = [t7]:I
	movslq (%rcx),%rcx
    # 13.  t9 = i + 1
	addq $1,%rdx
    # 14.  t10 = t9 * 4
	imulq $4,%rdx
    # 15.  t11 = a + t10
	addq %rdx,%rax
    # 16.  t12 = [t11]:I
	movslq (%rax),%rax
    # 17.  t13 = t8 + t12
	movq %rax,%r10
	movq %rcx,%rax
	addq %r10,%rax
    # 18.  b = t13
	movq %rax,%rdi
    # 19.  call _printInt(b)
	call __printInt
    # 20.  return 
	addq $8,%rsp
	ret
    # 21. End:
F0_End:
