	.text
	.globl __class_Body
__class_Body:
    # _main ()
    # (b)
# Allocation map
# t1	%rbx
# t2	%rax
# t3	%rcx
# t4	%rdi
# b	%rcx
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
    # 2.   [t1]:P = _class_Body
	leaq __class_Body(%rip),%r10
	movq %r10,(%rbx)
    # 3.   call _init0_Body(t1)
	movq %rbx,%rdi
	call __init0_Body
    # 4.   b = t1
	movq %rbx,%rcx
    # 5.   t2 = 8[b]:I
	movslq 8(%rcx),%rax
    # 6.   t3 = 12[b]:I
	movslq 12(%rcx),%rcx
    # 7.   t4 = t2 + t3
	movq %rax,%rdi
	addq %rcx,%rdi
    # 8.   call _printInt(t4)
	call __printInt
    # 9.   return 
	popq %rbx
	ret
    # 10. End:
F0_End:
    # _init0_Body (obj)
# Allocation map
# obj	%rdi
	.p2align 4,0x90
	.globl __init0_Body
__init0_Body:
	subq $8,%rsp
    # 0.  Begin:
F1_Begin:
    # 1.   8[obj]:I = 5
	movl $5,8(%rdi)
    # 2.   12[obj]:I = 7
	movl $7,12(%rdi)
    # 3.   return 
	addq $8,%rsp
	ret
    # 4.  End:
F1_End:
    # _init_Body (obj, i, j)
# Allocation map
# obj	%rdi
# j	%rdx
# i	%rsi
	.p2align 4,0x90
	.globl __init_Body
__init_Body:
	subq $8,%rsp
    # 0.  Begin:
F2_Begin:
    # 1.   8[obj]:I = i
	movl %esi,8(%rdi)
    # 2.   12[obj]:I = j
	movl %edx,12(%rdi)
    # 3.   return 
	addq $8,%rsp
	ret
    # 4.  End:
F2_End:
