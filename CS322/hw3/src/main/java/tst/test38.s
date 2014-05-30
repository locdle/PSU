	.text
	.globl __class_A
__class_A:
	.quad __A_selectionSort
    # _main ()
    # (a, numbers, cnt)
# Allocation map
# t1	%rbx
# t2	%rax
# t3	%rax
# t4	%rcx
# cnt	%rbp
# t5	%rcx
# numbers	%rbx
# t6	%rax
# t7	%rax
# a	%r12
# t8	%rax
# t9	%rax
# t10	%rax
# t11	%rdi
# t12	%rax
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
    # 5.   t2 = call _malloc(40)
	movq $40,%rdi
	call __malloc
    # 6.   numbers = t2
	movq %rax,%rbx
    # 7.   cnt = 0
	movq $0,%rbp
    # 8.  L0:
F0_L0:
    # 9.   if cnt >= 10 goto L1
	cmpq $10,%rbp
	jge F0_L1
    # 10.  t3 = 10 - cnt
	movq $10,%rax
	subq %rbp,%rax
    # 11.  t4 = cnt * 4
	movq %rbp,%rcx
	imulq $4,%rcx
    # 12.  t5 = numbers + t4
	movq %rcx,%r10
	movq %rbx,%rcx
	addq %r10,%rcx
    # 13.  [t5]:I = t3
	movl %eax,(%rcx)
    # 14.  t6 = cnt + 1
	movq %rbp,%rax
	addq $1,%rax
    # 15.  cnt = t6
	movq %rax,%rbp
    # 16.  goto L0
	jmp F0_L0
    # 17. L1:
F0_L1:
    # 18.  t7 = [a]:P
	movq (%r12),%rax
    # 19.  t8 = [t7]:P
	movq (%rax),%rax
    # 20.  call * t8(a, numbers, cnt)
	movq %r12,%rdi
	movq %rbx,%rsi
	movq %rbp,%rdx
	call * %rax
    # 21.  call _printStr("Your numbers in sorted order are:")
	leaq __S0(%rip),%rdi
	call __printStr
    # 22.  cnt = 0
	movq $0,%rbp
    # 23. L2:
F0_L2:
    # 24.  if cnt >= 10 goto L3
	cmpq $10,%rbp
	jge F0_L3
    # 25.  t9 = cnt * 4
	movq %rbp,%rax
	imulq $4,%rax
    # 26.  t10 = numbers + t9
	movq %rax,%r10
	movq %rbx,%rax
	addq %r10,%rax
    # 27.  t11 = [t10]:I
	movslq (%rax),%rdi
    # 28.  call _printInt(t11)
	call __printInt
    # 29.  t12 = cnt + 1
	movq %rbp,%rax
	addq $1,%rax
    # 30.  cnt = t12
	movq %rax,%rbp
    # 31.  goto L2
	jmp F0_L2
    # 32. L3:
F0_L3:
    # 33.  return 
	popq %r12
	popq %rbp
	popq %rbx
	ret
    # 34. End:
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
    # _A_selectionSort (obj, A, count)
    # (temp, i, j, k)
# Allocation map
# t1	%rax
# t2	%rdi
# t3	%rdi
# count	%rdx
# t4	%rdi
# A	%rsi
# t5	%r8
# t6	%r8
# t7	%r8
# t8	%rdx
# t9	%rdx
# t10	%rdx
# t11	%rdx
# t12	%rdi
# j	%rdx
# t13	%rdi
# k	%rcx
# t14	%rdi
# i	%rax
# t15	%rcx
# t17	%rcx
# t16	%rcx
# t19	%rax
# t18	%rcx
# temp	%rdx
	.p2align 4,0x90
	.globl __A_selectionSort
__A_selectionSort:
	subq $8,%rsp
    # 0.  Begin:
F3_Begin:
    # 1.   t1 = count - 1
	movq %rdx,%rax
	subq $1,%rax
    # 2.   i = t1
    # 3.  L4:
F3_L4:
    # 4.   if i < 0 goto L5
	cmpq $0,%rax
	jl F3_L5
    # 5.   j = 0
	movq $0,%rdx
    # 6.   k = 0
	movq $0,%rcx
    # 7.  L6:
F3_L6:
    # 8.   if j > i goto L7
	cmpq %rax,%rdx
	jg F3_L7
    # 9.   t2 = j * 4
	movq %rdx,%rdi
	imulq $4,%rdi
    # 10.  t3 = A + t2
	movq %rdi,%r10
	movq %rsi,%rdi
	addq %r10,%rdi
    # 11.  t4 = [t3]:I
	movslq (%rdi),%rdi
    # 12.  t5 = k * 4
	movq %rcx,%r8
	imulq $4,%r8
    # 13.  t6 = A + t5
	movq %r8,%r10
	movq %rsi,%r8
	addq %r10,%r8
    # 14.  t7 = [t6]:I
	movslq (%r8),%r8
    # 15.  if t4 <= t7 goto L8
	cmpq %r8,%rdi
	jle F3_L8
    # 16.  k = j
	movq %rdx,%rcx
    # 17. L8:
F3_L8:
    # 18.  t8 = j + 1
	addq $1,%rdx
    # 19.  j = t8
    # 20.  goto L6
	jmp F3_L6
    # 21. L7:
F3_L7:
    # 22.  if k == i goto L9
	cmpq %rax,%rcx
	je F3_L9
    # 23.  t9 = k * 4
	movq %rcx,%rdx
	imulq $4,%rdx
    # 24.  t10 = A + t9
	movq %rdx,%r10
	movq %rsi,%rdx
	addq %r10,%rdx
    # 25.  t11 = [t10]:I
	movslq (%rdx),%rdx
    # 26.  temp = t11
    # 27.  t12 = i * 4
	movq %rax,%rdi
	imulq $4,%rdi
    # 28.  t13 = A + t12
	movq %rdi,%r10
	movq %rsi,%rdi
	addq %r10,%rdi
    # 29.  t14 = [t13]:I
	movslq (%rdi),%rdi
    # 30.  t15 = k * 4
	imulq $4,%rcx
    # 31.  t16 = A + t15
	movq %rcx,%r10
	movq %rsi,%rcx
	addq %r10,%rcx
    # 32.  [t16]:I = t14
	movl %edi,(%rcx)
    # 33.  t17 = i * 4
	movq %rax,%rcx
	imulq $4,%rcx
    # 34.  t18 = A + t17
	movq %rcx,%r10
	movq %rsi,%rcx
	addq %r10,%rcx
    # 35.  [t18]:I = temp
	movl %edx,(%rcx)
    # 36. L9:
F3_L9:
    # 37.  t19 = i - 1
	subq $1,%rax
    # 38.  i = t19
    # 39.  goto L4
	jmp F3_L4
    # 40. L5:
F3_L5:
    # 41.  return 
	addq $8,%rsp
	ret
    # 42. End:
F3_End:
__S0:
	.asciz "Your numbers in sorted order are:"
