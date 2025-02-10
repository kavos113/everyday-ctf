#!/bin/bash
unzip $1.zip
objdump -d -M intel $1 > $1.asm
objdump -d -M intel lib$1.so > lib$1.asm
hexdump -C $1 > $1.hex
touch writeup.md
echo 'from pwn import *\n\nconn=gdb.debug("./'$1'")\n#conn=process("./'$1'")\n\nconn.interactive()' > exploit.py