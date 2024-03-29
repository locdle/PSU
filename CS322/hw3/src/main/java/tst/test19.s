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
    # 1.   t1 = call _malloc(13)
	movq $13,%rdi
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
    # 1.   8[obj]:B = false
	movb $0,8(%rdi)
    # 2.   9[obj]:I = 0
	movl $0,9(%rdi)
    # 3.   return 
	addq $8,%rsp
	ret
    # 4.  End:
F1_End:
    # _init_A (obj, b, i)
# Allocation map
# b	%rsi
# obj	%rdi
# i	%rdx
	.p2align 4,0x90
	.globl __init_A
__init_A:
	subq $8,%rsp
    # 0.  Begin:
F2_Begin:
    # 1.   8[obj]:B = b
	movb %sil,8(%rdi)
    # 2.   9[obj]:I = i
	movl %edx,9(%rdi)
    # 3.   return 
	addq $8,%rsp
	ret
    # 4.  End:
F2_End:
    # _A_go (obj)
    # (a)
# Allocation map
# t1	%rax
# t2	%rax
# t3	%rcx
# t4	%rdx
# t5	%rdx
# t6	%rdx
# t7	%rcx
# t8	%rcx
# t9	%rax
# t10	%rax
# t11	%rax
# t12	%rbp
# t13	%rax
# t14	%rax
# t15	%rax
# t17	%rax
# t16	%rdi
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
    # 1.   t1 = call _malloc(16)
	movq $16,%rdi
	call __malloc
    # 2.   a = t1
    # 3.   t2 = 1 < 2
	movq $1,%r10
	cmpq $2,%r10
	setl %al
	movzbq %al,%rax
    # 4.   t3 = 3 > 4
	movq $3,%r10
	cmpq $4,%r10
	setg %cl
	movzbq %cl,%rcx
    # 5.   t4 = 7 * 8
	movq $7,%rdx
	imulq $8,%rdx
    # 6.   t5 = 6 + t4
	movq %rdx,%r10
	movq $6,%rdx
	addq %r10,%rdx
    # 7.   t6 = 5 == t5
	movq $5,%r10
	cmpq %rdx,%r10
	sete %dl
	movzbq %dl,%rdx
    # 8.   t7 = t3 && t6
	andq %rdx,%rcx
    # 9.   t8 = t2 || t7
	movq %rcx,%r10
	movq %rax,%rcx
	orq %r10,%rcx
    # 10.  t9 = !true
	movq $1,%rax
	notq %rax
    # 11.  t10 = t8 || t9
	movq %rax,%r10
	movq %rcx,%rax
	orq %r10,%rax
    # 12.  8[obj]:B = t10
	movb %al,8(%rbx)
    # 13.  t11 = 8 - 7
	movq $8,%rax
	subq $7,%rax
    # 14.  t12 = t11 + 6
	movq %rax,%rbp
	addq $6,%rbp
    # 15.  t13 = 5 * 4
	movq $5,%rax
	imulq $4,%rax
    # 16.  t14 = t13 / 2
	movq $2,%r10
	cqto
	idivq %r10
    # 17.  t15 = t12 + t14
	movq %rax,%r10
	movq %rbp,%rax
	addq %r10,%rax
    # 18.  9[obj]:I = t15
	movl %eax,9(%rbx)
    # 19.  t16 = 8[obj]:B
	movzbq 8(%rbx),%rdi
    # 20.  call _printBool(t16)
	call __printBool
    # 21.  t17 = 9[obj]:I
	movslq 9(%rbx),%rax
    # 22.  return t17
	addq $8,%rsp
	popq %rbp
	popq %rbx
	ret
    # 23. End:
F3_End:
