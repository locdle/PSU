	.text
	.globl __class_A
__class_A:
	.quad __A_foo
	.quad __A_bar
    # _main ()
    # (a, i, j)
# Allocation map
# t1	%rbx
# t2	%rax
# t3	%rax
# t4	%rax
# t5	%rax
# t6	%rax
# t7	%rax
# a	%rbx
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
    # 5.   t2 = [a]:P
	movq (%rbx),%rax
    # 6.   t3 = [t2]:P
	movq (%rax),%rax
    # 7.   t4 = call * t3(a, 1)
	movq %rbx,%rdi
	movq $1,%rsi
	call * %rax
    # 8.   i = t4
	movq %rax,%rbp
    # 9.   t5 = [a]:P
	movq (%rbx),%rax
    # 10.  t6 = 8[t5]:P
	movq 8(%rax),%rax
    # 11.  t7 = call * t6(a, 1)
	movq %rbx,%rdi
	movq $1,%rsi
	call * %rax
    # 12.  j = t7
	movq %rax,%rbx
    # 13.  call _printInt(i)
	movq %rbp,%rdi
	call __printInt
    # 14.  call _printInt(j)
	movq %rbx,%rdi
	call __printInt
    # 15.  return 
	addq $8,%rsp
	popq %rbp
	popq %rbx
	ret
    # 16. End:
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
    # _A_foo (obj, i)
    # (x)
# Allocation map
# i	%rax
	.p2align 4,0x90
	.globl __A_foo
__A_foo:
	subq $8,%rsp
	movq %rsi,%rax
    # 0.  Begin:
F3_Begin:
    # 1.   return i
	addq $8,%rsp
	ret
    # 2.  End:
F3_End:
    # _A_bar (obj, i)
    # (x)
# Allocation map
# x	%rax
	.p2align 4,0x90
	.globl __A_bar
__A_bar:
	subq $8,%rsp
    # 0.  Begin:
F4_Begin:
    # 1.   x = 2
	movq $2,%rax
    # 2.   return x
	addq $8,%rsp
	ret
    # 3.  End:
F4_End:
