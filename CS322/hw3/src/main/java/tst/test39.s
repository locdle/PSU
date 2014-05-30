	.text
    # _main ()
    # (a, i)
# Allocation map
# t1	%rax
# t2	%rax
# t3	%rax
# t4	%rax
# t5	%rax
# t6	%rax
# t7	%rax
# a	%rbx
# t8	%rdi
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
    # 1.   t1 = call _malloc(8)
	movq $8,%rdi
	call __malloc
    # 2.   a = t1
	movq %rax,%rbx
    # 3.   i = 0
	movq $0,%rbp
    # 4.   t2 = 0 * 4
	movq $0,%rax
	imulq $4,%rax
    # 5.   t3 = a + t2
	movq %rax,%r10
	movq %rbx,%rax
	addq %r10,%rax
    # 6.   [t3]:I = 3
	movl $3,(%rax)
    # 7.   t4 = 1 * 4
	movq $1,%rax
	imulq $4,%rax
    # 8.   t5 = a + t4
	movq %rax,%r10
	movq %rbx,%rax
	addq %r10,%rax
    # 9.   [t5]:I = 5
	movl $5,(%rax)
    # 10. L0:
F0_L0:
    # 11.  if i >= 2 goto L1
	cmpq $2,%rbp
	jge F0_L1
    # 12.  t6 = i * 4
	movq %rbp,%rax
	imulq $4,%rax
    # 13.  t7 = a + t6
	movq %rax,%r10
	movq %rbx,%rax
	addq %r10,%rax
    # 14.  t8 = [t7]:I
	movslq (%rax),%rdi
    # 15.  call _printInt(t8)
	call __printInt
    # 16.  t9 = i + 1
	movq %rbp,%rax
	addq $1,%rax
    # 17.  i = t9
	movq %rax,%rbp
    # 18.  goto L0
	jmp F0_L0
    # 19. L1:
F0_L1:
    # 20.  return 
	addq $8,%rsp
	popq %rbp
	popq %rbx
	ret
    # 21. End:
F0_End:
