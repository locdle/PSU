	.text
	.globl __class_A
__class_A:
	.quad __A_foo
	.globl __class_B
__class_B:
	.quad __B_foo
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
    # 1.   t1 = call _malloc(12)
	movq $12,%rdi
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
    # 5.   t2 = call _malloc(12)
	movq $12,%rdi
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
    # 11.  t5 = call * t4(a, 1)
	movq %rbp,%rdi
	movq $1,%rsi
	call * %rax
    # 12.  i = t5
	movq %rax,%rbp
    # 13.  t6 = [b]:P
	movq (%rbx),%rax
    # 14.  t7 = [t6]:P
	movq (%rax),%rax
    # 15.  t8 = call * t7(b, 1)
	movq %rbx,%rdi
	movq $1,%rsi
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
    # 1.   8[obj]:I = 0
	movl $0,8(%rdi)
    # 2.   return 
	addq $8,%rsp
	ret
    # 3.  End:
F1_End:
    # _init_A (obj, i)
# Allocation map
# obj	%rdi
# i	%rsi
	.p2align 4,0x90
	.globl __init_A
__init_A:
	subq $8,%rsp
    # 0.  Begin:
F2_Begin:
    # 1.   8[obj]:I = i
	movl %esi,8(%rdi)
    # 2.   return 
	addq $8,%rsp
	ret
    # 3.  End:
F2_End:
    # _A_foo (obj, i)
    # (y)
# Allocation map
# t1	%rax
# i	%rsi
	.p2align 4,0x90
	.globl __A_foo
__A_foo:
	subq $8,%rsp
    # 0.  Begin:
F3_Begin:
    # 1.   t1 = i + 1
	movq %rsi,%rax
	addq $1,%rax
    # 2.   return t1
	addq $8,%rsp
	ret
    # 3.  End:
F3_End:
    # _init0_B (obj)
# Allocation map
# obj	%rdi
	.p2align 4,0x90
	.globl __init0_B
__init0_B:
	subq $8,%rsp
    # 0.  Begin:
F4_Begin:
    # 1.   8[obj]:I = 0
	movl $0,8(%rdi)
    # 2.   return 
	addq $8,%rsp
	ret
    # 3.  End:
F4_End:
    # _init_B (obj, i)
# Allocation map
# obj	%rdi
# i	%rsi
	.p2align 4,0x90
	.globl __init_B
__init_B:
	subq $8,%rsp
    # 0.  Begin:
F5_Begin:
    # 1.   8[obj]:I = i
	movl %esi,8(%rdi)
    # 2.   return 
	addq $8,%rsp
	ret
    # 3.  End:
F5_End:
    # _B_foo (obj, i)
# Allocation map
# i	%rax
	.p2align 4,0x90
	.globl __B_foo
__B_foo:
	subq $8,%rsp
	movq %rsi,%rax
    # 0.  Begin:
F6_Begin:
    # 1.   return i
	addq $8,%rsp
	ret
    # 2.  End:
F6_End:
