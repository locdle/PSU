	.text
    # _main ()
    # (b, i)
# Allocation map
# t1	%rax
# t2	%rdx
# t3	%rcx
# t4	%rcx
# b	%rbx
# t5	%rax
# t6	%rax
# t7	%rbp
# t8	%rax
# t9	%rax
# i	%rbp
	.p2align 4,0x90
	.globl __main
__main:
	pushq %rbx
	pushq %rbp
	subq $8,%rsp
    # 0.  Begin:
F0_Begin:
    # 1.   t1 = 1 > 2
	movq $1,%r10
	cmpq $2,%r10
	setg %al
	movzbq %al,%rax
    # 2.   t2 = 3 < 4
	movq $3,%r10
	cmpq $4,%r10
	setl %dl
	movzbq %dl,%rdx
    # 3.   t3 = !false
	movq $0,%rcx
	notq %rcx
    # 4.   t4 = t2 && t3
	movq %rcx,%r10
	movq %rdx,%rcx
	andq %r10,%rcx
    # 5.   t5 = t1 || t4
	orq %rcx,%rax
    # 6.   b = t5
	movq %rax,%rbx
    # 7.   t6 = 2 * 4
	movq $2,%rax
	imulq $4,%rax
    # 8.   t7 = 2 + t6
	movq $2,%rbp
	addq %rax,%rbp
    # 9.   t8 = 9 / 3
	movq $3,%r10
	movq $9,%rax
	cqto
	idivq %r10
    # 10.  t9 = t7 - t8
	movq %rax,%r10
	movq %rbp,%rax
	subq %r10,%rax
    # 11.  i = t9
	movq %rax,%rbp
    # 12.  call _printBool(b)
	movq %rbx,%rdi
	call __printBool
    # 13.  call _printInt(i)
	movq %rbp,%rdi
	call __printInt
    # 14.  return 
	addq $8,%rsp
	popq %rbp
	popq %rbx
	ret
    # 15. End:
F0_End:
