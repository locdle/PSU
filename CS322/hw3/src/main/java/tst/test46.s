	.text
	.globl __class_A
__class_A:
	.quad __A_foo
	.quad __A_bar
	.globl __class_B
__class_B:
	.quad __A_foo
	.quad __A_bar
    # _main ()
    # (a, b)
# Allocation map
# t1	%rbx
# t2	%rbx
# t3	%rax
# t4	%rax
# b	%rbx
# t5	%rax
# t6	%rax
# a	%rbp
	.p2align 4,0x90
	.globl __main
__main:
	pushq %rbx
	pushq %rbp
	subq $8,%rsp
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
	movq %rbx,%rbp
    # 5.   t2 = call _malloc(20)
	movq $20,%rdi
	call __malloc
	movq %rax,%rbx
    # 6.   [t2]:P = _class_B
	leaq __class_B(%rip),%r10
	movq %r10,(%rbx)
    # 7.   call _init0_B(t2)
	movq %rbx,%rdi
	call __init0_B
    # 8.   b = t2
    # 9.   t3 = [a]:P
	movq (%rbp),%rax
    # 10.  t4 = [t3]:P
	movq (%rax),%rax
    # 11.  call * t4(a)
	movq %rbp,%rdi
	call * %rax
    # 12.  8[b]:I = 10
	movl $10,8(%rbx)
    # 13.  12[b]:I = 11
	movl $11,12(%rbx)
    # 14.  t5 = [b]:P
	movq (%rbx),%rax
    # 15.  t6 = [t5]:P
	movq (%rax),%rax
    # 16.  call * t6(b)
	movq %rbx,%rdi
	call * %rax
    # 17.  return 
	addq $8,%rsp
	popq %rbp
	popq %rbx
	ret
    # 18. End:
F0_End:
    # _init0_A (obj)
# Allocation map
# t7	%rax
# t8	%rax
# obj	%rdi
	.p2align 4,0x90
	.globl __init0_A
__init0_A:
	subq $8,%rsp
    # 0.  Begin:
F1_Begin:
    # 1.   8[obj]:I = 1
	movl $1,8(%rdi)
    # 2.   t7 = 8[obj]:I
	movslq 8(%rdi),%rax
    # 3.   t8 = t7 + 1
	addq $1,%rax
    # 4.   12[obj]:I = t8
	movl %eax,12(%rdi)
    # 5.   return 
	addq $8,%rsp
	ret
    # 6.  End:
F1_End:
    # _init_A (obj, i, j)
# Allocation map
# obj	%rdi
# j	%rdx
# i	%rsi
	.p2align 4,0x90
	.globl __init_A
__init_A:
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
    # _A_foo (obj)
# Allocation map
# t1	%rax
# t2	%rax
# obj	%rdi
	.p2align 4,0x90
	.globl __A_foo
__A_foo:
	subq $8,%rsp
    # 0.  Begin:
F3_Begin:
    # 1.   t1 = [obj]:P
	movq (%rdi),%rax
    # 2.   t2 = 8[t1]:P
	movq 8(%rax),%rax
    # 3.   call * t2(obj)
	call * %rax
    # 4.   return 
	addq $8,%rsp
	ret
    # 5.  End:
F3_End:
    # _A_bar (obj)
# Allocation map
# t1	%rdi
# obj	%rdi
	.p2align 4,0x90
	.globl __A_bar
__A_bar:
	subq $8,%rsp
    # 0.  Begin:
F4_Begin:
    # 1.   t1 = 8[obj]:I
	movslq 8(%rdi),%rdi
    # 2.   call _printInt(t1)
	call __printInt
    # 3.   return 
	addq $8,%rsp
	ret
    # 4.  End:
F4_End:
    # _init0_B (obj)
# Allocation map
# t2	%rax
# t3	%rax
# obj	%rdi
	.p2align 4,0x90
	.globl __init0_B
__init0_B:
	subq $8,%rsp
    # 0.  Begin:
F5_Begin:
    # 1.   8[obj]:I = 1
	movl $1,8(%rdi)
    # 2.   t2 = 8[obj]:I
	movslq 8(%rdi),%rax
    # 3.   t3 = t2 + 1
	addq $1,%rax
    # 4.   12[obj]:I = t3
	movl %eax,12(%rdi)
    # 5.   16[obj]:I = 10
	movl $10,16(%rdi)
    # 6.   return 
	addq $8,%rsp
	ret
    # 7.  End:
F5_End:
    # _init_B (obj, i, j, k)
# Allocation map
# obj	%rdi
# j	%rdx
# k	%rcx
# i	%rsi
	.p2align 4,0x90
	.globl __init_B
__init_B:
	subq $8,%rsp
    # 0.  Begin:
F6_Begin:
    # 1.   8[obj]:I = i
	movl %esi,8(%rdi)
    # 2.   12[obj]:I = j
	movl %edx,12(%rdi)
    # 3.   16[obj]:I = k
	movl %ecx,16(%rdi)
    # 4.   return 
	addq $8,%rsp
	ret
    # 5.  End:
F6_End:
