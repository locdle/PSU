	.text
	.globl __class_A
__class_A:
	.quad __A_foo
	.globl __class_B
__class_B:
	.quad __B_foo
    # _main ()
    # (a, b, c)
# Allocation map
# t1	%rbx
# t2	%rbx
# t3	%rbx
# t4	%rax
# b	%rbp
# t5	%rax
# c	%rbx
# t6	%rax
# t7	%rax
# a	%r12
# t8	%rax
# t9	%rax
	.p2align 4,0x90
	.globl __main
__main:
	pushq %rbx
	pushq %rbp
	pushq %r12
    # 0.  Begin:
F0_Begin:
    # 1.   t1 = call _malloc(8)
	movq $8,%rdi
	call __malloc
	movq %rax,%rbx
    # 2.   [t1]:P = _class_A
	leaq __class_A(%rip),%r10
	movq %r10,(%rbx)
    # 3.   call _init0_A(t1)
	movq %rbx,%rdi
	call __init0_A
    # 4.   a = t1
	movq %rbx,%r12
    # 5.   t2 = call _malloc(8)
	movq $8,%rdi
	call __malloc
	movq %rax,%rbx
    # 6.   [t2]:P = _class_B
	leaq __class_B(%rip),%r10
	movq %r10,(%rbx)
    # 7.   call _init0_B(t2)
	movq %rbx,%rdi
	call __init0_B
    # 8.   b = t2
	movq %rbx,%rbp
    # 9.   t3 = call _malloc(8)
	movq $8,%rdi
	call __malloc
	movq %rax,%rbx
    # 10.  [t3]:P = _class_B
	leaq __class_B(%rip),%r10
	movq %r10,(%rbx)
    # 11.  call _init0_B(t3)
	movq %rbx,%rdi
	call __init0_B
    # 12.  c = t3
    # 13.  t4 = [a]:P
	movq (%r12),%rax
    # 14.  t5 = [t4]:P
	movq (%rax),%rax
    # 15.  call * t5(a)
	movq %r12,%rdi
	call * %rax
    # 16.  t6 = [b]:P
	movq (%rbp),%rax
    # 17.  t7 = [t6]:P
	movq (%rax),%rax
    # 18.  call * t7(b)
	movq %rbp,%rdi
	call * %rax
    # 19.  t8 = [c]:P
	movq (%rbx),%rax
    # 20.  t9 = [t8]:P
	movq (%rax),%rax
    # 21.  call * t9(c)
	movq %rbx,%rdi
	call * %rax
    # 22.  return 
	popq %r12
	popq %rbp
	popq %rbx
	ret
    # 23. End:
F0_End:
    # _init0_A (obj)
# Allocation map
	.p2align 4,0x90
	.globl __init0_A
__init0_A:
	subq $8,%rsp
    # 0.  Begin:
F1_Begin:
    # 1.   return 
	addq $8,%rsp
	ret
    # 2.  End:
F1_End:
    # _init_A (obj)
# Allocation map
	.p2align 4,0x90
	.globl __init_A
__init_A:
	subq $8,%rsp
    # 0.  Begin:
F2_Begin:
    # 1.   return 
	addq $8,%rsp
	ret
    # 2.  End:
F2_End:
    # _A_foo (obj)
# Allocation map
	.p2align 4,0x90
	.globl __A_foo
__A_foo:
	subq $8,%rsp
    # 0.  Begin:
F3_Begin:
    # 1.   call _printStr("A")
	leaq __S0(%rip),%rdi
	call __printStr
    # 2.   return 
	addq $8,%rsp
	ret
    # 3.  End:
F3_End:
    # _init0_B (obj)
# Allocation map
	.p2align 4,0x90
	.globl __init0_B
__init0_B:
	subq $8,%rsp
    # 0.  Begin:
F4_Begin:
    # 1.   return 
	addq $8,%rsp
	ret
    # 2.  End:
F4_End:
    # _init_B (obj)
# Allocation map
	.p2align 4,0x90
	.globl __init_B
__init_B:
	subq $8,%rsp
    # 0.  Begin:
F5_Begin:
    # 1.   return 
	addq $8,%rsp
	ret
    # 2.  End:
F5_End:
    # _B_foo (obj)
# Allocation map
	.p2align 4,0x90
	.globl __B_foo
__B_foo:
	subq $8,%rsp
    # 0.  Begin:
F6_Begin:
    # 1.   call _printStr("B")
	leaq __S1(%rip),%rdi
	call __printStr
    # 2.   return 
	addq $8,%rsp
	ret
    # 3.  End:
F6_End:
__S0:
	.asciz "A"
__S1:
	.asciz "B"
