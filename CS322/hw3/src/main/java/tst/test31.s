	.text
	.globl __class_A
__class_A:
	.quad __A_f
	.quad __A_g
	.globl __class_B
__class_B:
	.quad __B_f
	.quad __A_g
    # _main ()
    # (a, b, i, j)
# Allocation map
# t1	%rbx
# t2	%rbx
# t3	%rax
# t4	%rax
# b	%rbx
# t5	%rax
# t6	%rax
# t7	%rax
# a	%rbp
# t8	%rax
# j	%rbx
# i	%rbp
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
    # 2.   [t1]:P = _class_B
	leaq __class_B(%rip),%r10
	movq %r10,(%rbx)
    # 3.   call _init0_B(t1)
	movq %rbx,%rdi
	call __init0_B
    # 4.   a = t1
	movq %rbx,%rbp
    # 5.   t2 = call _malloc(16)
	movq $16,%rdi
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
    # 10.  t4 = 8[t3]:P
	movq 8(%rax),%rax
    # 11.  t5 = call * t4(a, 2)
	movq %rbp,%rdi
	movq $2,%rsi
	call * %rax
    # 12.  i = t5
	movq %rax,%rbp
    # 13.  t6 = [b]:P
	movq (%rbx),%rax
    # 14.  t7 = 8[t6]:P
	movq 8(%rax),%rax
    # 15.  t8 = call * t7(b, 2)
	movq %rbx,%rdi
	movq $2,%rsi
	call * %rax
    # 16.  j = t8
	movq %rax,%rbx
    # 17.  call _printInt(i)
	movq %rbp,%rdi
	call __printInt
    # 18.  call _printInt(j)
	movq %rbx,%rdi
	call __printInt
    # 19.  return 
	addq $8,%rsp
	popq %rbp
	popq %rbx
	ret
    # 20. End:
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
    # 1.   8[obj]:I = 1
	movl $1,8(%rdi)
    # 2.   return 
	addq $8,%rsp
	ret
    # 3.  End:
F1_End:
    # _init_A (obj, x)
# Allocation map
# obj	%rdi
# x	%rsi
	.p2align 4,0x90
	.globl __init_A
__init_A:
	subq $8,%rsp
    # 0.  Begin:
F2_Begin:
    # 1.   8[obj]:I = x
	movl %esi,8(%rdi)
    # 2.   return 
	addq $8,%rsp
	ret
    # 3.  End:
F2_End:
    # _A_f (obj, i)
# Allocation map
# t1	%rax
# i	%rsi
	.p2align 4,0x90
	.globl __A_f
__A_f:
	subq $8,%rsp
    # 0.  Begin:
F3_Begin:
    # 1.   t1 = i - 1
	movq %rsi,%rax
	subq $1,%rax
    # 2.   return t1
	addq $8,%rsp
	ret
    # 3.  End:
F3_End:
    # _A_g (obj, i)
# Allocation map
# t1	%rax
# t2	%rax
# t3	%rax
# obj	%rdi
# i	%rsi
	.p2align 4,0x90
	.globl __A_g
__A_g:
	subq $8,%rsp
    # 0.  Begin:
F4_Begin:
    # 1.   t1 = [obj]:P
	movq (%rdi),%rax
    # 2.   t2 = [t1]:P
	movq (%rax),%rax
    # 3.   t3 = call * t2(obj, i)
	call * %rax
    # 4.   return t3
	addq $8,%rsp
	ret
    # 5.  End:
F4_End:
    # _init0_B (obj)
# Allocation map
# obj	%rdi
	.p2align 4,0x90
	.globl __init0_B
__init0_B:
	subq $8,%rsp
    # 0.  Begin:
F5_Begin:
    # 1.   12[obj]:I = 2
	movl $2,12(%rdi)
    # 2.   return 
	addq $8,%rsp
	ret
    # 3.  End:
F5_End:
    # _init_B (obj, x)
# Allocation map
# obj	%rdi
# x	%rsi
	.p2align 4,0x90
	.globl __init_B
__init_B:
	subq $8,%rsp
    # 0.  Begin:
F6_Begin:
    # 1.   12[obj]:I = x
	movl %esi,12(%rdi)
    # 2.   return 
	addq $8,%rsp
	ret
    # 3.  End:
F6_End:
    # _B_f (obj, i)
# Allocation map
# i	%rax
	.p2align 4,0x90
	.globl __B_f
__B_f:
	subq $8,%rsp
	movq %rsi,%rax
    # 0.  Begin:
F7_Begin:
    # 1.   return i
	addq $8,%rsp
	ret
    # 2.  End:
F7_End:
