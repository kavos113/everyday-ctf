
split:     ファイル形式 elf64-x86-64


セクション .interp の逆アセンブル:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)
  400239:	6c                   	ins    BYTE PTR es:[rdi],dx
  40023a:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
  400241:	2d 6c 69 6e 75       	sub    eax,0x756e696c
  400246:	78 2d                	js     400275 <_init-0x2b3>
  400248:	78 38                	js     400282 <_init-0x2a6>
  40024a:	36 2d 36 34 2e 73    	ss sub eax,0x732e3436
  400250:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  400251:	2e 32 00             	cs xor al,BYTE PTR [rax]

セクション .note.ABI-tag の逆アセンブル:

0000000000400254 <.note.ABI-tag>:
  400254:	04 00                	add    al,0x0
  400256:	00 00                	add    BYTE PTR [rax],al
  400258:	10 00                	adc    BYTE PTR [rax],al
  40025a:	00 00                	add    BYTE PTR [rax],al
  40025c:	01 00                	add    DWORD PTR [rax],eax
  40025e:	00 00                	add    BYTE PTR [rax],al
  400260:	47                   	rex.RXB
  400261:	4e 55                	rex.WRX push rbp
  400263:	00 00                	add    BYTE PTR [rax],al
  400265:	00 00                	add    BYTE PTR [rax],al
  400267:	00 03                	add    BYTE PTR [rbx],al
  400269:	00 00                	add    BYTE PTR [rax],al
  40026b:	00 02                	add    BYTE PTR [rdx],al
  40026d:	00 00                	add    BYTE PTR [rax],al
  40026f:	00 00                	add    BYTE PTR [rax],al
  400271:	00 00                	add    BYTE PTR [rax],al
	...

セクション .note.gnu.build-id の逆アセンブル:

0000000000400274 <.note.gnu.build-id>:
  400274:	04 00                	add    al,0x0
  400276:	00 00                	add    BYTE PTR [rax],al
  400278:	14 00                	adc    al,0x0
  40027a:	00 00                	add    BYTE PTR [rax],al
  40027c:	03 00                	add    eax,DWORD PTR [rax]
  40027e:	00 00                	add    BYTE PTR [rax],al
  400280:	47                   	rex.RXB
  400281:	4e 55                	rex.WRX push rbp
  400283:	00 98 75 5e 64 e1    	add    BYTE PTR [rax-0x1e9ba18b],bl
  400289:	d0 c1                	rol    cl,1
  40028b:	bf f4 8f cc ae       	mov    edi,0xaecc8ff4
  400290:	1d ca 9e e9 e3       	sbb    eax,0xe3e99eca
  400295:	c6                   	(bad)
  400296:	09 e2                	or     edx,esp

セクション .gnu.hash の逆アセンブル:

0000000000400298 <.gnu.hash>:
  400298:	02 00                	add    al,BYTE PTR [rax]
  40029a:	00 00                	add    BYTE PTR [rax],al
  40029c:	09 00                	or     DWORD PTR [rax],eax
  40029e:	00 00                	add    BYTE PTR [rax],al
  4002a0:	01 00                	add    DWORD PTR [rax],eax
  4002a2:	00 00                	add    BYTE PTR [rax],al
  4002a4:	06                   	(bad)
	...
  4002ad:	01 10                	add    DWORD PTR [rax],edx
  4002af:	00 09                	add    BYTE PTR [rcx],cl
  4002b1:	00 00                	add    BYTE PTR [rax],al
  4002b3:	00 00                	add    BYTE PTR [rax],al
  4002b5:	00 00                	add    BYTE PTR [rax],al
  4002b7:	00 29                	add    BYTE PTR [rcx],ch
  4002b9:	1d                   	.byte 0x1d
  4002ba:	8c                   	.byte 0x8c
  4002bb:	1c                   	.byte 0x1c

セクション .dynsym の逆アセンブル:

00000000004002c0 <.dynsym>:
	...
  4002d8:	0b 00                	or     eax,DWORD PTR [rax]
  4002da:	00 00                	add    BYTE PTR [rax],al
  4002dc:	12 00                	adc    al,BYTE PTR [rax]
	...
  4002ee:	00 00                	add    BYTE PTR [rax],al
  4002f0:	2a 00                	sub    al,BYTE PTR [rax]
  4002f2:	00 00                	add    BYTE PTR [rax],al
  4002f4:	12 00                	adc    al,BYTE PTR [rax]
	...
  400306:	00 00                	add    BYTE PTR [rax],al
  400308:	10 00                	adc    BYTE PTR [rax],al
  40030a:	00 00                	add    BYTE PTR [rax],al
  40030c:	12 00                	adc    al,BYTE PTR [rax]
	...
  40031e:	00 00                	add    BYTE PTR [rax],al
  400320:	17                   	(bad)
  400321:	00 00                	add    BYTE PTR [rax],al
  400323:	00 12                	add    BYTE PTR [rdx],dl
	...
  400335:	00 00                	add    BYTE PTR [rax],al
  400337:	00 1e                	add    BYTE PTR [rsi],bl
  400339:	00 00                	add    BYTE PTR [rax],al
  40033b:	00 12                	add    BYTE PTR [rdx],dl
	...
  40034d:	00 00                	add    BYTE PTR [rax],al
  40034f:	00 39                	add    BYTE PTR [rcx],bh
  400351:	00 00                	add    BYTE PTR [rax],al
  400353:	00 12                	add    BYTE PTR [rdx],dl
	...
  400365:	00 00                	add    BYTE PTR [rax],al
  400367:	00 57 00             	add    BYTE PTR [rdi+0x0],dl
  40036a:	00 00                	add    BYTE PTR [rax],al
  40036c:	20 00                	and    BYTE PTR [rax],al
	...
  40037e:	00 00                	add    BYTE PTR [rax],al
  400380:	31 00                	xor    DWORD PTR [rax],eax
  400382:	00 00                	add    BYTE PTR [rax],al
  400384:	12 00                	adc    al,BYTE PTR [rax]
	...
  400396:	00 00                	add    BYTE PTR [rax],al
  400398:	23 00                	and    eax,DWORD PTR [rax]
  40039a:	00 00                	add    BYTE PTR [rax],al
  40039c:	11 00                	adc    DWORD PTR [rax],eax
  40039e:	18 00                	sbb    BYTE PTR [rax],al
  4003a0:	78 10                	js     4003b2 <_init-0x176>
  4003a2:	60                   	(bad)
  4003a3:	00 00                	add    BYTE PTR [rax],al
  4003a5:	00 00                	add    BYTE PTR [rax],al
  4003a7:	00 08                	add    BYTE PTR [rax],cl
  4003a9:	00 00                	add    BYTE PTR [rax],al
  4003ab:	00 00                	add    BYTE PTR [rax],al
  4003ad:	00 00                	add    BYTE PTR [rax],al
	...

セクション .dynstr の逆アセンブル:

00000000004003b0 <.dynstr>:
  4003b0:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
  4003b4:	63 2e                	movsxd ebp,DWORD PTR [rsi]
  4003b6:	73 6f                	jae    400427 <_init-0x101>
  4003b8:	2e 36 00 70 75       	cs ss add BYTE PTR [rax+0x75],dh
  4003bd:	74 73                	je     400432 <_init-0xf6>
  4003bf:	00 70 72             	add    BYTE PTR [rax+0x72],dh
  4003c2:	69 6e 74 66 00 6d 65 	imul   ebp,DWORD PTR [rsi+0x74],0x656d0066
  4003c9:	6d                   	ins    DWORD PTR es:[rdi],dx
  4003ca:	73 65                	jae    400431 <_init-0xf7>
  4003cc:	74 00                	je     4003ce <_init-0x15a>
  4003ce:	72 65                	jb     400435 <_init-0xf3>
  4003d0:	61                   	(bad)
  4003d1:	64 00 73 74          	add    BYTE PTR fs:[rbx+0x74],dh
  4003d5:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
  4003d7:	75 74                	jne    40044d <_init-0xdb>
  4003d9:	00 73 79             	add    BYTE PTR [rbx+0x79],dh
  4003dc:	73 74                	jae    400452 <_init-0xd6>
  4003de:	65 6d                	gs ins DWORD PTR es:[rdi],dx
  4003e0:	00 73 65             	add    BYTE PTR [rbx+0x65],dh
  4003e3:	74 76                	je     40045b <_init-0xcd>
  4003e5:	62 75 66 00 5f 5f 6c 	vmaxsh xmm11,xmm19,WORD PTR [rdi+0xd8]
  4003ec:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
  4003f3:	72 74                	jb     400469 <_init-0xbf>
  4003f5:	5f                   	pop    rdi
  4003f6:	6d                   	ins    DWORD PTR es:[rdi],dx
  4003f7:	61                   	(bad)
  4003f8:	69 6e 00 47 4c 49 42 	imul   ebp,DWORD PTR [rsi+0x0],0x42494c47
  4003ff:	43 5f                	rex.XB pop r15
  400401:	32 2e                	xor    ch,BYTE PTR [rsi]
  400403:	32 2e                	xor    ch,BYTE PTR [rsi]
  400405:	35 00 5f 5f 67       	xor    eax,0x675f5f00
  40040a:	6d                   	ins    DWORD PTR es:[rdi],dx
  40040b:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  40040c:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  40040d:	5f                   	pop    rdi
  40040e:	73 74                	jae    400484 <_init-0xa4>
  400410:	61                   	(bad)
  400411:	72 74                	jb     400487 <_init-0xa1>
  400413:	5f                   	pop    rdi
  400414:	5f                   	pop    rdi
	...

セクション .gnu.version の逆アセンブル:

0000000000400416 <.gnu.version>:
  400416:	00 00                	add    BYTE PTR [rax],al
  400418:	02 00                	add    al,BYTE PTR [rax]
  40041a:	02 00                	add    al,BYTE PTR [rax]
  40041c:	02 00                	add    al,BYTE PTR [rax]
  40041e:	02 00                	add    al,BYTE PTR [rax]
  400420:	02 00                	add    al,BYTE PTR [rax]
  400422:	02 00                	add    al,BYTE PTR [rax]
  400424:	00 00                	add    BYTE PTR [rax],al
  400426:	02 00                	add    al,BYTE PTR [rax]
  400428:	02 00                	add    al,BYTE PTR [rax]

セクション .gnu.version_r の逆アセンブル:

0000000000400430 <.gnu.version_r>:
  400430:	01 00                	add    DWORD PTR [rax],eax
  400432:	01 00                	add    DWORD PTR [rax],eax
  400434:	01 00                	add    DWORD PTR [rax],eax
  400436:	00 00                	add    BYTE PTR [rax],al
  400438:	10 00                	adc    BYTE PTR [rax],al
  40043a:	00 00                	add    BYTE PTR [rax],al
  40043c:	00 00                	add    BYTE PTR [rax],al
  40043e:	00 00                	add    BYTE PTR [rax],al
  400440:	75 1a                	jne    40045c <_init-0xcc>
  400442:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
  400448:	4b 00 00             	rex.WXB add BYTE PTR [r8],al
  40044b:	00 00                	add    BYTE PTR [rax],al
  40044d:	00 00                	add    BYTE PTR [rax],al
	...

セクション .rela.dyn の逆アセンブル:

0000000000400450 <.rela.dyn>:
  400450:	f0 0f 60 00          	lock punpcklbw mm0,DWORD PTR [rax]
  400454:	00 00                	add    BYTE PTR [rax],al
  400456:	00 00                	add    BYTE PTR [rax],al
  400458:	06                   	(bad)
  400459:	00 00                	add    BYTE PTR [rax],al
  40045b:	00 06                	add    BYTE PTR [rsi],al
	...
  400465:	00 00                	add    BYTE PTR [rax],al
  400467:	00 f8                	add    al,bh
  400469:	0f 60 00             	punpcklbw mm0,DWORD PTR [rax]
  40046c:	00 00                	add    BYTE PTR [rax],al
  40046e:	00 00                	add    BYTE PTR [rax],al
  400470:	06                   	(bad)
  400471:	00 00                	add    BYTE PTR [rax],al
  400473:	00 07                	add    BYTE PTR [rdi],al
	...
  40047d:	00 00                	add    BYTE PTR [rax],al
  40047f:	00 78 10             	add    BYTE PTR [rax+0x10],bh
  400482:	60                   	(bad)
  400483:	00 00                	add    BYTE PTR [rax],al
  400485:	00 00                	add    BYTE PTR [rax],al
  400487:	00 05 00 00 00 09    	add    BYTE PTR [rip+0x9000000],al        # 940048d <_end+0x8dff405>
	...

セクション .rela.plt の逆アセンブル:

0000000000400498 <.rela.plt>:
  400498:	18 10                	sbb    BYTE PTR [rax],dl
  40049a:	60                   	(bad)
  40049b:	00 00                	add    BYTE PTR [rax],al
  40049d:	00 00                	add    BYTE PTR [rax],al
  40049f:	00 07                	add    BYTE PTR [rdi],al
  4004a1:	00 00                	add    BYTE PTR [rax],al
  4004a3:	00 01                	add    BYTE PTR [rcx],al
	...
  4004ad:	00 00                	add    BYTE PTR [rax],al
  4004af:	00 20                	add    BYTE PTR [rax],ah
  4004b1:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  4004b4:	00 00                	add    BYTE PTR [rax],al
  4004b6:	00 00                	add    BYTE PTR [rax],al
  4004b8:	07                   	(bad)
  4004b9:	00 00                	add    BYTE PTR [rax],al
  4004bb:	00 02                	add    BYTE PTR [rdx],al
	...
  4004c5:	00 00                	add    BYTE PTR [rax],al
  4004c7:	00 28                	add    BYTE PTR [rax],ch
  4004c9:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  4004cc:	00 00                	add    BYTE PTR [rax],al
  4004ce:	00 00                	add    BYTE PTR [rax],al
  4004d0:	07                   	(bad)
  4004d1:	00 00                	add    BYTE PTR [rax],al
  4004d3:	00 03                	add    BYTE PTR [rbx],al
	...
  4004dd:	00 00                	add    BYTE PTR [rax],al
  4004df:	00 30                	add    BYTE PTR [rax],dh
  4004e1:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  4004e4:	00 00                	add    BYTE PTR [rax],al
  4004e6:	00 00                	add    BYTE PTR [rax],al
  4004e8:	07                   	(bad)
  4004e9:	00 00                	add    BYTE PTR [rax],al
  4004eb:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...
  4004f6:	00 00                	add    BYTE PTR [rax],al
  4004f8:	38 10                	cmp    BYTE PTR [rax],dl
  4004fa:	60                   	(bad)
  4004fb:	00 00                	add    BYTE PTR [rax],al
  4004fd:	00 00                	add    BYTE PTR [rax],al
  4004ff:	00 07                	add    BYTE PTR [rdi],al
  400501:	00 00                	add    BYTE PTR [rax],al
  400503:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 400509 <_init-0x1f>
  400509:	00 00                	add    BYTE PTR [rax],al
  40050b:	00 00                	add    BYTE PTR [rax],al
  40050d:	00 00                	add    BYTE PTR [rax],al
  40050f:	00 40 10             	add    BYTE PTR [rax+0x10],al
  400512:	60                   	(bad)
  400513:	00 00                	add    BYTE PTR [rax],al
  400515:	00 00                	add    BYTE PTR [rax],al
  400517:	00 07                	add    BYTE PTR [rdi],al
  400519:	00 00                	add    BYTE PTR [rax],al
  40051b:	00 08                	add    BYTE PTR [rax],cl
	...

セクション .init の逆アセンブル:

0000000000400528 <_init>:
  400528:	48 83 ec 08          	sub    rsp,0x8
  40052c:	48 8b 05 c5 0a 20 00 	mov    rax,QWORD PTR [rip+0x200ac5]        # 600ff8 <__gmon_start__>
  400533:	48 85 c0             	test   rax,rax
  400536:	74 02                	je     40053a <_init+0x12>
  400538:	ff d0                	call   rax
  40053a:	48 83 c4 08          	add    rsp,0x8
  40053e:	c3                   	ret

セクション .plt の逆アセンブル:

0000000000400540 <.plt>:
  400540:	ff 35 c2 0a 20 00    	push   QWORD PTR [rip+0x200ac2]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400546:	ff 25 c4 0a 20 00    	jmp    QWORD PTR [rip+0x200ac4]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40054c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400550 <puts@plt>:
  400550:	ff 25 c2 0a 20 00    	jmp    QWORD PTR [rip+0x200ac2]        # 601018 <puts@GLIBC_2.2.5>
  400556:	68 00 00 00 00       	push   0x0
  40055b:	e9 e0 ff ff ff       	jmp    400540 <.plt>

0000000000400560 <system@plt>:
  400560:	ff 25 ba 0a 20 00    	jmp    QWORD PTR [rip+0x200aba]        # 601020 <system@GLIBC_2.2.5>
  400566:	68 01 00 00 00       	push   0x1
  40056b:	e9 d0 ff ff ff       	jmp    400540 <.plt>

0000000000400570 <printf@plt>:
  400570:	ff 25 b2 0a 20 00    	jmp    QWORD PTR [rip+0x200ab2]        # 601028 <printf@GLIBC_2.2.5>
  400576:	68 02 00 00 00       	push   0x2
  40057b:	e9 c0 ff ff ff       	jmp    400540 <.plt>

0000000000400580 <memset@plt>:
  400580:	ff 25 aa 0a 20 00    	jmp    QWORD PTR [rip+0x200aaa]        # 601030 <memset@GLIBC_2.2.5>
  400586:	68 03 00 00 00       	push   0x3
  40058b:	e9 b0 ff ff ff       	jmp    400540 <.plt>

0000000000400590 <read@plt>:
  400590:	ff 25 a2 0a 20 00    	jmp    QWORD PTR [rip+0x200aa2]        # 601038 <read@GLIBC_2.2.5>
  400596:	68 04 00 00 00       	push   0x4
  40059b:	e9 a0 ff ff ff       	jmp    400540 <.plt>

00000000004005a0 <setvbuf@plt>:
  4005a0:	ff 25 9a 0a 20 00    	jmp    QWORD PTR [rip+0x200a9a]        # 601040 <setvbuf@GLIBC_2.2.5>
  4005a6:	68 05 00 00 00       	push   0x5
  4005ab:	e9 90 ff ff ff       	jmp    400540 <.plt>

セクション .text の逆アセンブル:

00000000004005b0 <_start>:
  4005b0:	31 ed                	xor    ebp,ebp
  4005b2:	49 89 d1             	mov    r9,rdx
  4005b5:	5e                   	pop    rsi
  4005b6:	48 89 e2             	mov    rdx,rsp
  4005b9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4005bd:	50                   	push   rax
  4005be:	54                   	push   rsp
  4005bf:	49 c7 c0 d0 07 40 00 	mov    r8,0x4007d0
  4005c6:	48 c7 c1 60 07 40 00 	mov    rcx,0x400760
  4005cd:	48 c7 c7 97 06 40 00 	mov    rdi,0x400697
  4005d4:	ff 15 16 0a 20 00    	call   QWORD PTR [rip+0x200a16]        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  4005da:	f4                   	hlt
  4005db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004005e0 <_dl_relocate_static_pie>:
  4005e0:	f3 c3                	repz ret
  4005e2:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4005e9:	00 00 00 
  4005ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004005f0 <deregister_tm_clones>:
  4005f0:	55                   	push   rbp
  4005f1:	b8 78 10 60 00       	mov    eax,0x601078
  4005f6:	48 3d 78 10 60 00    	cmp    rax,0x601078
  4005fc:	48 89 e5             	mov    rbp,rsp
  4005ff:	74 17                	je     400618 <deregister_tm_clones+0x28>
  400601:	b8 00 00 00 00       	mov    eax,0x0
  400606:	48 85 c0             	test   rax,rax
  400609:	74 0d                	je     400618 <deregister_tm_clones+0x28>
  40060b:	5d                   	pop    rbp
  40060c:	bf 78 10 60 00       	mov    edi,0x601078
  400611:	ff e0                	jmp    rax
  400613:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400618:	5d                   	pop    rbp
  400619:	c3                   	ret
  40061a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400620 <register_tm_clones>:
  400620:	be 78 10 60 00       	mov    esi,0x601078
  400625:	55                   	push   rbp
  400626:	48 81 ee 78 10 60 00 	sub    rsi,0x601078
  40062d:	48 89 e5             	mov    rbp,rsp
  400630:	48 c1 fe 03          	sar    rsi,0x3
  400634:	48 89 f0             	mov    rax,rsi
  400637:	48 c1 e8 3f          	shr    rax,0x3f
  40063b:	48 01 c6             	add    rsi,rax
  40063e:	48 d1 fe             	sar    rsi,1
  400641:	74 15                	je     400658 <register_tm_clones+0x38>
  400643:	b8 00 00 00 00       	mov    eax,0x0
  400648:	48 85 c0             	test   rax,rax
  40064b:	74 0b                	je     400658 <register_tm_clones+0x38>
  40064d:	5d                   	pop    rbp
  40064e:	bf 78 10 60 00       	mov    edi,0x601078
  400653:	ff e0                	jmp    rax
  400655:	0f 1f 00             	nop    DWORD PTR [rax]
  400658:	5d                   	pop    rbp
  400659:	c3                   	ret
  40065a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400660 <__do_global_dtors_aux>:
  400660:	80 3d 19 0a 20 00 00 	cmp    BYTE PTR [rip+0x200a19],0x0        # 601080 <completed.7698>
  400667:	75 17                	jne    400680 <__do_global_dtors_aux+0x20>
  400669:	55                   	push   rbp
  40066a:	48 89 e5             	mov    rbp,rsp
  40066d:	e8 7e ff ff ff       	call   4005f0 <deregister_tm_clones>
  400672:	c6 05 07 0a 20 00 01 	mov    BYTE PTR [rip+0x200a07],0x1        # 601080 <completed.7698>
  400679:	5d                   	pop    rbp
  40067a:	c3                   	ret
  40067b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400680:	f3 c3                	repz ret
  400682:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400686:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40068d:	00 00 00 

0000000000400690 <frame_dummy>:
  400690:	55                   	push   rbp
  400691:	48 89 e5             	mov    rbp,rsp
  400694:	5d                   	pop    rbp
  400695:	eb 89                	jmp    400620 <register_tm_clones>

0000000000400697 <main>:
  400697:	55                   	push   rbp
  400698:	48 89 e5             	mov    rbp,rsp
  40069b:	48 8b 05 d6 09 20 00 	mov    rax,QWORD PTR [rip+0x2009d6]        # 601078 <stdout@GLIBC_2.2.5>
  4006a2:	b9 00 00 00 00       	mov    ecx,0x0
  4006a7:	ba 02 00 00 00       	mov    edx,0x2
  4006ac:	be 00 00 00 00       	mov    esi,0x0
  4006b1:	48 89 c7             	mov    rdi,rax
  4006b4:	e8 e7 fe ff ff       	call   4005a0 <setvbuf@plt>
  4006b9:	bf e8 07 40 00       	mov    edi,0x4007e8
  4006be:	e8 8d fe ff ff       	call   400550 <puts@plt>
  4006c3:	bf fe 07 40 00       	mov    edi,0x4007fe
  4006c8:	e8 83 fe ff ff       	call   400550 <puts@plt>
  4006cd:	b8 00 00 00 00       	mov    eax,0x0
  4006d2:	e8 11 00 00 00       	call   4006e8 <pwnme>
  4006d7:	bf 06 08 40 00       	mov    edi,0x400806
  4006dc:	e8 6f fe ff ff       	call   400550 <puts@plt>
  4006e1:	b8 00 00 00 00       	mov    eax,0x0
  4006e6:	5d                   	pop    rbp
  4006e7:	c3                   	ret

00000000004006e8 <pwnme>:
  4006e8:	55                   	push   rbp
  4006e9:	48 89 e5             	mov    rbp,rsp
  4006ec:	48 83 ec 20          	sub    rsp,0x20
  4006f0:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  4006f4:	ba 20 00 00 00       	mov    edx,0x20
  4006f9:	be 00 00 00 00       	mov    esi,0x0
  4006fe:	48 89 c7             	mov    rdi,rax
  400701:	e8 7a fe ff ff       	call   400580 <memset@plt>
  400706:	bf 10 08 40 00       	mov    edi,0x400810
  40070b:	e8 40 fe ff ff       	call   400550 <puts@plt>
  400710:	bf 3c 08 40 00       	mov    edi,0x40083c
  400715:	b8 00 00 00 00       	mov    eax,0x0
  40071a:	e8 51 fe ff ff       	call   400570 <printf@plt>
  40071f:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400723:	ba 60 00 00 00       	mov    edx,0x60
  400728:	48 89 c6             	mov    rsi,rax
  40072b:	bf 00 00 00 00       	mov    edi,0x0
  400730:	e8 5b fe ff ff       	call   400590 <read@plt>
  400735:	bf 3f 08 40 00       	mov    edi,0x40083f
  40073a:	e8 11 fe ff ff       	call   400550 <puts@plt>
  40073f:	90                   	nop
  400740:	c9                   	leave
  400741:	c3                   	ret

0000000000400742 <usefulFunction>:
  400742:	55                   	push   rbp
  400743:	48 89 e5             	mov    rbp,rsp
  400746:	bf 4a 08 40 00       	mov    edi,0x40084a
  40074b:	e8 10 fe ff ff       	call   400560 <system@plt>
  400750:	90                   	nop
  400751:	5d                   	pop    rbp
  400752:	c3                   	ret
  400753:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40075a:	00 00 00 
  40075d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000400760 <__libc_csu_init>:
  400760:	41 57                	push   r15
  400762:	41 56                	push   r14
  400764:	49 89 d7             	mov    r15,rdx
  400767:	41 55                	push   r13
  400769:	41 54                	push   r12
  40076b:	4c 8d 25 9e 06 20 00 	lea    r12,[rip+0x20069e]        # 600e10 <__frame_dummy_init_array_entry>
  400772:	55                   	push   rbp
  400773:	48 8d 2d 9e 06 20 00 	lea    rbp,[rip+0x20069e]        # 600e18 <__do_global_dtors_aux_fini_array_entry>
  40077a:	53                   	push   rbx
  40077b:	41 89 fd             	mov    r13d,edi
  40077e:	49 89 f6             	mov    r14,rsi
  400781:	4c 29 e5             	sub    rbp,r12
  400784:	48 83 ec 08          	sub    rsp,0x8
  400788:	48 c1 fd 03          	sar    rbp,0x3
  40078c:	e8 97 fd ff ff       	call   400528 <_init>
  400791:	48 85 ed             	test   rbp,rbp
  400794:	74 20                	je     4007b6 <__libc_csu_init+0x56>
  400796:	31 db                	xor    ebx,ebx
  400798:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40079f:	00 
  4007a0:	4c 89 fa             	mov    rdx,r15
  4007a3:	4c 89 f6             	mov    rsi,r14
  4007a6:	44 89 ef             	mov    edi,r13d
  4007a9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  4007ad:	48 83 c3 01          	add    rbx,0x1
  4007b1:	48 39 dd             	cmp    rbp,rbx
  4007b4:	75 ea                	jne    4007a0 <__libc_csu_init+0x40>
  4007b6:	48 83 c4 08          	add    rsp,0x8
  4007ba:	5b                   	pop    rbx
  4007bb:	5d                   	pop    rbp
  4007bc:	41 5c                	pop    r12
  4007be:	41 5d                	pop    r13
  4007c0:	41 5e                	pop    r14
  4007c2:	41 5f                	pop    r15
  4007c4:	c3                   	ret
  4007c5:	90                   	nop
  4007c6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4007cd:	00 00 00 

00000000004007d0 <__libc_csu_fini>:
  4007d0:	f3 c3                	repz ret

セクション .fini の逆アセンブル:

00000000004007d4 <_fini>:
  4007d4:	48 83 ec 08          	sub    rsp,0x8
  4007d8:	48 83 c4 08          	add    rsp,0x8
  4007dc:	c3                   	ret

セクション .rodata の逆アセンブル:

00000000004007e0 <_IO_stdin_used>:
  4007e0:	01 00                	add    DWORD PTR [rax],eax
  4007e2:	02 00                	add    al,BYTE PTR [rax]
  4007e4:	00 00                	add    BYTE PTR [rax],al
  4007e6:	00 00                	add    BYTE PTR [rax],al
  4007e8:	73 70                	jae    40085a <__GNU_EH_FRAME_HDR+0x6>
  4007ea:	6c                   	ins    BYTE PTR es:[rdi],dx
  4007eb:	69 74 20 62 79 20 52 	imul   esi,DWORD PTR [rax+riz*1+0x62],0x4f522079
  4007f2:	4f 
  4007f3:	50                   	push   rax
  4007f4:	20 45 6d             	and    BYTE PTR [rbp+0x6d],al
  4007f7:	70 6f                	jo     400868 <__GNU_EH_FRAME_HDR+0x14>
  4007f9:	72 69                	jb     400864 <__GNU_EH_FRAME_HDR+0x10>
  4007fb:	75 6d                	jne    40086a <__GNU_EH_FRAME_HDR+0x16>
  4007fd:	00 78 38             	add    BYTE PTR [rax+0x38],bh
  400800:	36 5f                	ss pop rdi
  400802:	36 34 0a             	ss xor al,0xa
  400805:	00 0a                	add    BYTE PTR [rdx],cl
  400807:	45 78 69             	rex.RB js 400873 <__GNU_EH_FRAME_HDR+0x1f>
  40080a:	74 69                	je     400875 <__GNU_EH_FRAME_HDR+0x21>
  40080c:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  40080d:	67 00 00             	add    BYTE PTR [eax],al
  400810:	43 6f                	rex.XB outs dx,DWORD PTR ds:[rsi]
  400812:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  400813:	74 72                	je     400887 <__GNU_EH_FRAME_HDR+0x33>
  400815:	69 76 69 6e 67 20 61 	imul   esi,DWORD PTR [rsi+0x69],0x6120676e
  40081c:	20 72 65             	and    BYTE PTR [rdx+0x65],dh
  40081f:	61                   	(bad)
  400820:	73 6f                	jae    400891 <__GNU_EH_FRAME_HDR+0x3d>
  400822:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  400823:	20 74 6f 20          	and    BYTE PTR [rdi+rbp*2+0x20],dh
  400827:	61                   	(bad)
  400828:	73 6b                	jae    400895 <__GNU_EH_FRAME_HDR+0x41>
  40082a:	20 75 73             	and    BYTE PTR [rbp+0x73],dh
  40082d:	65 72 20             	gs jb  400850 <_IO_stdin_used+0x70>
  400830:	66 6f                	outs   dx,WORD PTR ds:[rsi]
  400832:	72 20                	jb     400854 <__GNU_EH_FRAME_HDR>
  400834:	64 61                	fs (bad)
  400836:	74 61                	je     400899 <__GNU_EH_FRAME_HDR+0x45>
  400838:	2e 2e 2e 00 3e       	cs cs cs add BYTE PTR [rsi],bh
  40083d:	20 00                	and    BYTE PTR [rax],al
  40083f:	54                   	push   rsp
  400840:	68 61 6e 6b 20       	push   0x206b6e61
  400845:	79 6f                	jns    4008b6 <__GNU_EH_FRAME_HDR+0x62>
  400847:	75 21                	jne    40086a <__GNU_EH_FRAME_HDR+0x16>
  400849:	00 2f                	add    BYTE PTR [rdi],ch
  40084b:	62 69 6e 2f 6c       	(bad)
  400850:	73 00                	jae    400852 <_IO_stdin_used+0x72>

セクション .eh_frame_hdr の逆アセンブル:

0000000000400854 <__GNU_EH_FRAME_HDR>:
  400854:	01 1b                	add    DWORD PTR [rbx],ebx
  400856:	03 3b                	add    edi,DWORD PTR [rbx]
  400858:	48 00 00             	rex.W add BYTE PTR [rax],al
  40085b:	00 08                	add    BYTE PTR [rax],cl
  40085d:	00 00                	add    BYTE PTR [rax],al
  40085f:	00 ec                	add    ah,ch
  400861:	fc                   	cld
  400862:	ff                   	(bad)
  400863:	ff a4 00 00 00 5c fd 	jmp    QWORD PTR [rax+rax*1-0x2a40000]
  40086a:	ff                   	(bad)
  40086b:	ff 64 00 00          	jmp    QWORD PTR [rax+rax*1+0x0]
  40086f:	00 8c fd ff ff 90 00 	add    BYTE PTR [rbp+rdi*8+0x90ffff],cl
  400876:	00 00                	add    BYTE PTR [rax],al
  400878:	43 fe                	rex.XB (bad)
  40087a:	ff                   	(bad)
  40087b:	ff cc                	dec    esp
  40087d:	00 00                	add    BYTE PTR [rax],al
  40087f:	00 94 fe ff ff ec 00 	add    BYTE PTR [rsi+rdi*8+0xecffff],dl
  400886:	00 00                	add    BYTE PTR [rax],al
  400888:	ee                   	out    dx,al
  400889:	fe                   	(bad)
  40088a:	ff                   	(bad)
  40088b:	ff 0c 01             	dec    DWORD PTR [rcx+rax*1]
  40088e:	00 00                	add    BYTE PTR [rax],al
  400890:	0c ff                	or     al,0xff
  400892:	ff                   	(bad)
  400893:	ff 2c 01             	jmp    FWORD PTR [rcx+rax*1]
  400896:	00 00                	add    BYTE PTR [rax],al
  400898:	7c ff                	jl     400899 <__GNU_EH_FRAME_HDR+0x45>
  40089a:	ff                   	(bad)
  40089b:	ff 74 01 00          	push   QWORD PTR [rcx+rax*1+0x0]
	...

セクション .eh_frame の逆アセンブル:

00000000004008a0 <__FRAME_END__-0x13c>:
  4008a0:	14 00                	adc    al,0x0
  4008a2:	00 00                	add    BYTE PTR [rax],al
  4008a4:	00 00                	add    BYTE PTR [rax],al
  4008a6:	00 00                	add    BYTE PTR [rax],al
  4008a8:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
  4008ab:	00 01                	add    BYTE PTR [rcx],al
  4008ad:	78 10                	js     4008bf <__GNU_EH_FRAME_HDR+0x6b>
  4008af:	01 1b                	add    DWORD PTR [rbx],ebx
  4008b1:	0c 07                	or     al,0x7
  4008b3:	08 90 01 07 10 10    	or     BYTE PTR [rax+0x10100701],dl
  4008b9:	00 00                	add    BYTE PTR [rax],al
  4008bb:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  4008be:	00 00                	add    BYTE PTR [rax],al
  4008c0:	f0 fc                	lock cld
  4008c2:	ff                   	(bad)
  4008c3:	ff 2b                	jmp    FWORD PTR [rbx]
  4008c5:	00 00                	add    BYTE PTR [rax],al
  4008c7:	00 00                	add    BYTE PTR [rax],al
  4008c9:	00 00                	add    BYTE PTR [rax],al
  4008cb:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
  4008ce:	00 00                	add    BYTE PTR [rax],al
  4008d0:	00 00                	add    BYTE PTR [rax],al
  4008d2:	00 00                	add    BYTE PTR [rax],al
  4008d4:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
  4008d7:	00 01                	add    BYTE PTR [rcx],al
  4008d9:	78 10                	js     4008eb <__GNU_EH_FRAME_HDR+0x97>
  4008db:	01 1b                	add    DWORD PTR [rbx],ebx
  4008dd:	0c 07                	or     al,0x7
  4008df:	08 90 01 00 00 10    	or     BYTE PTR [rax+0x10000001],dl
  4008e5:	00 00                	add    BYTE PTR [rax],al
  4008e7:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  4008ea:	00 00                	add    BYTE PTR [rax],al
  4008ec:	f4                   	hlt
  4008ed:	fc                   	cld
  4008ee:	ff                   	(bad)
  4008ef:	ff 02                	inc    DWORD PTR [rdx]
  4008f1:	00 00                	add    BYTE PTR [rax],al
  4008f3:	00 00                	add    BYTE PTR [rax],al
  4008f5:	00 00                	add    BYTE PTR [rax],al
  4008f7:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
  4008fa:	00 00                	add    BYTE PTR [rax],al
  4008fc:	30 00                	xor    BYTE PTR [rax],al
  4008fe:	00 00                	add    BYTE PTR [rax],al
  400900:	40 fc                	rex cld
  400902:	ff                   	(bad)
  400903:	ff 70 00             	push   QWORD PTR [rax+0x0]
  400906:	00 00                	add    BYTE PTR [rax],al
  400908:	00 0e                	add    BYTE PTR [rsi],cl
  40090a:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
  40090d:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
  400910:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
  400913:	80 00 3f             	add    BYTE PTR [rax],0x3f
  400916:	1a 3b                	sbb    bh,BYTE PTR [rbx]
  400918:	2a 33                	sub    dh,BYTE PTR [rbx]
  40091a:	24 22                	and    al,0x22
  40091c:	00 00                	add    BYTE PTR [rax],al
  40091e:	00 00                	add    BYTE PTR [rax],al
  400920:	1c 00                	sbb    al,0x0
  400922:	00 00                	add    BYTE PTR [rax],al
  400924:	58                   	pop    rax
  400925:	00 00                	add    BYTE PTR [rax],al
  400927:	00 6f fd             	add    BYTE PTR [rdi-0x3],ch
  40092a:	ff                   	(bad)
  40092b:	ff 51 00             	call   QWORD PTR [rcx+0x0]
  40092e:	00 00                	add    BYTE PTR [rax],al
  400930:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  400933:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  400939:	02 4c 0c 07          	add    cl,BYTE PTR [rsp+rcx*1+0x7]
  40093d:	08 00                	or     BYTE PTR [rax],al
  40093f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  400942:	00 00                	add    BYTE PTR [rax],al
  400944:	78 00                	js     400946 <__GNU_EH_FRAME_HDR+0xf2>
  400946:	00 00                	add    BYTE PTR [rax],al
  400948:	a0 fd ff ff 5a 00 00 	movabs al,ds:0x5afffffd
  40094f:	00 00 
  400951:	41 0e                	rex.B (bad)
  400953:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  400959:	02 55 0c             	add    dl,BYTE PTR [rbp+0xc]
  40095c:	07                   	(bad)
  40095d:	08 00                	or     BYTE PTR [rax],al
  40095f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  400962:	00 00                	add    BYTE PTR [rax],al
  400964:	98                   	cwde
  400965:	00 00                	add    BYTE PTR [rax],al
  400967:	00 da                	add    dl,bl
  400969:	fd                   	std
  40096a:	ff                   	(bad)
  40096b:	ff 11                	call   QWORD PTR [rcx]
  40096d:	00 00                	add    BYTE PTR [rax],al
  40096f:	00 00                	add    BYTE PTR [rax],al
  400971:	41 0e                	rex.B (bad)
  400973:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  400979:	4c 0c 07             	rex.WR or al,0x7
  40097c:	08 00                	or     BYTE PTR [rax],al
  40097e:	00 00                	add    BYTE PTR [rax],al
  400980:	44 00 00             	add    BYTE PTR [rax],r8b
  400983:	00 b8 00 00 00 d8    	add    BYTE PTR [rax-0x28000000],bh
  400989:	fd                   	std
  40098a:	ff                   	(bad)
  40098b:	ff 65 00             	jmp    QWORD PTR [rbp+0x0]
  40098e:	00 00                	add    BYTE PTR [rax],al
  400990:	00 42 0e             	add    BYTE PTR [rdx+0xe],al
  400993:	10 8f 02 42 0e 18    	adc    BYTE PTR [rdi+0x180e4202],cl
  400999:	8e 03                	mov    es,WORD PTR [rbx]
  40099b:	45 0e                	rex.RB (bad)
  40099d:	20 8d 04 42 0e 28    	and    BYTE PTR [rbp+0x280e4204],cl
  4009a3:	8c 05 48 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e48],es        # ffffffff867017f1 <_end+0xffffffff86100769>
  4009a9:	06                   	(bad)
  4009aa:	48 0e                	rex.W (bad)
  4009ac:	38 83 07 4d 0e 40    	cmp    BYTE PTR [rbx+0x400e4d07],al
  4009b2:	72 0e                	jb     4009c2 <__GNU_EH_FRAME_HDR+0x16e>
  4009b4:	38 41 0e             	cmp    BYTE PTR [rcx+0xe],al
  4009b7:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
  4009ba:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
  4009bd:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
  4009c0:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
  4009c3:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
  4009c6:	08 00                	or     BYTE PTR [rax],al
  4009c8:	10 00                	adc    BYTE PTR [rax],al
  4009ca:	00 00                	add    BYTE PTR [rax],al
  4009cc:	00 01                	add    BYTE PTR [rcx],al
  4009ce:	00 00                	add    BYTE PTR [rax],al
  4009d0:	00 fe                	add    dh,bh
  4009d2:	ff                   	(bad)
  4009d3:	ff 02                	inc    DWORD PTR [rdx]
  4009d5:	00 00                	add    BYTE PTR [rax],al
  4009d7:	00 00                	add    BYTE PTR [rax],al
  4009d9:	00 00                	add    BYTE PTR [rax],al
	...

00000000004009dc <__FRAME_END__>:
  4009dc:	00 00                	add    BYTE PTR [rax],al
	...

セクション .init_array の逆アセンブル:

0000000000600e10 <__frame_dummy_init_array_entry>:
  600e10:	90                   	nop
  600e11:	06                   	(bad)
  600e12:	40 00 00             	rex add BYTE PTR [rax],al
  600e15:	00 00                	add    BYTE PTR [rax],al
	...

セクション .fini_array の逆アセンブル:

0000000000600e18 <__do_global_dtors_aux_fini_array_entry>:
  600e18:	60                   	(bad)
  600e19:	06                   	(bad)
  600e1a:	40 00 00             	rex add BYTE PTR [rax],al
  600e1d:	00 00                	add    BYTE PTR [rax],al
	...

セクション .dynamic の逆アセンブル:

0000000000600e20 <_DYNAMIC>:
  600e20:	01 00                	add    DWORD PTR [rax],eax
  600e22:	00 00                	add    BYTE PTR [rax],al
  600e24:	00 00                	add    BYTE PTR [rax],al
  600e26:	00 00                	add    BYTE PTR [rax],al
  600e28:	01 00                	add    DWORD PTR [rax],eax
  600e2a:	00 00                	add    BYTE PTR [rax],al
  600e2c:	00 00                	add    BYTE PTR [rax],al
  600e2e:	00 00                	add    BYTE PTR [rax],al
  600e30:	0c 00                	or     al,0x0
  600e32:	00 00                	add    BYTE PTR [rax],al
  600e34:	00 00                	add    BYTE PTR [rax],al
  600e36:	00 00                	add    BYTE PTR [rax],al
  600e38:	28 05 40 00 00 00    	sub    BYTE PTR [rip+0x40],al        # 600e7e <_DYNAMIC+0x5e>
  600e3e:	00 00                	add    BYTE PTR [rax],al
  600e40:	0d 00 00 00 00       	or     eax,0x0
  600e45:	00 00                	add    BYTE PTR [rax],al
  600e47:	00 d4                	add    ah,dl
  600e49:	07                   	(bad)
  600e4a:	40 00 00             	rex add BYTE PTR [rax],al
  600e4d:	00 00                	add    BYTE PTR [rax],al
  600e4f:	00 19                	add    BYTE PTR [rcx],bl
  600e51:	00 00                	add    BYTE PTR [rax],al
  600e53:	00 00                	add    BYTE PTR [rax],al
  600e55:	00 00                	add    BYTE PTR [rax],al
  600e57:	00 10                	add    BYTE PTR [rax],dl
  600e59:	0e                   	(bad)
  600e5a:	60                   	(bad)
  600e5b:	00 00                	add    BYTE PTR [rax],al
  600e5d:	00 00                	add    BYTE PTR [rax],al
  600e5f:	00 1b                	add    BYTE PTR [rbx],bl
  600e61:	00 00                	add    BYTE PTR [rax],al
  600e63:	00 00                	add    BYTE PTR [rax],al
  600e65:	00 00                	add    BYTE PTR [rax],al
  600e67:	00 08                	add    BYTE PTR [rax],cl
  600e69:	00 00                	add    BYTE PTR [rax],al
  600e6b:	00 00                	add    BYTE PTR [rax],al
  600e6d:	00 00                	add    BYTE PTR [rax],al
  600e6f:	00 1a                	add    BYTE PTR [rdx],bl
  600e71:	00 00                	add    BYTE PTR [rax],al
  600e73:	00 00                	add    BYTE PTR [rax],al
  600e75:	00 00                	add    BYTE PTR [rax],al
  600e77:	00 18                	add    BYTE PTR [rax],bl
  600e79:	0e                   	(bad)
  600e7a:	60                   	(bad)
  600e7b:	00 00                	add    BYTE PTR [rax],al
  600e7d:	00 00                	add    BYTE PTR [rax],al
  600e7f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  600e82:	00 00                	add    BYTE PTR [rax],al
  600e84:	00 00                	add    BYTE PTR [rax],al
  600e86:	00 00                	add    BYTE PTR [rax],al
  600e88:	08 00                	or     BYTE PTR [rax],al
  600e8a:	00 00                	add    BYTE PTR [rax],al
  600e8c:	00 00                	add    BYTE PTR [rax],al
  600e8e:	00 00                	add    BYTE PTR [rax],al
  600e90:	f5                   	cmc
  600e91:	fe                   	(bad)
  600e92:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600e95:	00 00                	add    BYTE PTR [rax],al
  600e97:	00 98 02 40 00 00    	add    BYTE PTR [rax+0x4002],bl
  600e9d:	00 00                	add    BYTE PTR [rax],al
  600e9f:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 600ea5 <_DYNAMIC+0x85>
  600ea5:	00 00                	add    BYTE PTR [rax],al
  600ea7:	00 b0 03 40 00 00    	add    BYTE PTR [rax+0x4003],dh
  600ead:	00 00                	add    BYTE PTR [rax],al
  600eaf:	00 06                	add    BYTE PTR [rsi],al
  600eb1:	00 00                	add    BYTE PTR [rax],al
  600eb3:	00 00                	add    BYTE PTR [rax],al
  600eb5:	00 00                	add    BYTE PTR [rax],al
  600eb7:	00 c0                	add    al,al
  600eb9:	02 40 00             	add    al,BYTE PTR [rax+0x0]
  600ebc:	00 00                	add    BYTE PTR [rax],al
  600ebe:	00 00                	add    BYTE PTR [rax],al
  600ec0:	0a 00                	or     al,BYTE PTR [rax]
  600ec2:	00 00                	add    BYTE PTR [rax],al
  600ec4:	00 00                	add    BYTE PTR [rax],al
  600ec6:	00 00                	add    BYTE PTR [rax],al
  600ec8:	66 00 00             	data16 add BYTE PTR [rax],al
  600ecb:	00 00                	add    BYTE PTR [rax],al
  600ecd:	00 00                	add    BYTE PTR [rax],al
  600ecf:	00 0b                	add    BYTE PTR [rbx],cl
  600ed1:	00 00                	add    BYTE PTR [rax],al
  600ed3:	00 00                	add    BYTE PTR [rax],al
  600ed5:	00 00                	add    BYTE PTR [rax],al
  600ed7:	00 18                	add    BYTE PTR [rax],bl
  600ed9:	00 00                	add    BYTE PTR [rax],al
  600edb:	00 00                	add    BYTE PTR [rax],al
  600edd:	00 00                	add    BYTE PTR [rax],al
  600edf:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 600ee5 <_DYNAMIC+0xc5>
	...
  600eed:	00 00                	add    BYTE PTR [rax],al
  600eef:	00 03                	add    BYTE PTR [rbx],al
	...
  600ef9:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  600efc:	00 00                	add    BYTE PTR [rax],al
  600efe:	00 00                	add    BYTE PTR [rax],al
  600f00:	02 00                	add    al,BYTE PTR [rax]
  600f02:	00 00                	add    BYTE PTR [rax],al
  600f04:	00 00                	add    BYTE PTR [rax],al
  600f06:	00 00                	add    BYTE PTR [rax],al
  600f08:	90                   	nop
  600f09:	00 00                	add    BYTE PTR [rax],al
  600f0b:	00 00                	add    BYTE PTR [rax],al
  600f0d:	00 00                	add    BYTE PTR [rax],al
  600f0f:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
  600f12:	00 00                	add    BYTE PTR [rax],al
  600f14:	00 00                	add    BYTE PTR [rax],al
  600f16:	00 00                	add    BYTE PTR [rax],al
  600f18:	07                   	(bad)
  600f19:	00 00                	add    BYTE PTR [rax],al
  600f1b:	00 00                	add    BYTE PTR [rax],al
  600f1d:	00 00                	add    BYTE PTR [rax],al
  600f1f:	00 17                	add    BYTE PTR [rdi],dl
  600f21:	00 00                	add    BYTE PTR [rax],al
  600f23:	00 00                	add    BYTE PTR [rax],al
  600f25:	00 00                	add    BYTE PTR [rax],al
  600f27:	00 98 04 40 00 00    	add    BYTE PTR [rax+0x4004],bl
  600f2d:	00 00                	add    BYTE PTR [rax],al
  600f2f:	00 07                	add    BYTE PTR [rdi],al
  600f31:	00 00                	add    BYTE PTR [rax],al
  600f33:	00 00                	add    BYTE PTR [rax],al
  600f35:	00 00                	add    BYTE PTR [rax],al
  600f37:	00 50 04             	add    BYTE PTR [rax+0x4],dl
  600f3a:	40 00 00             	rex add BYTE PTR [rax],al
  600f3d:	00 00                	add    BYTE PTR [rax],al
  600f3f:	00 08                	add    BYTE PTR [rax],cl
  600f41:	00 00                	add    BYTE PTR [rax],al
  600f43:	00 00                	add    BYTE PTR [rax],al
  600f45:	00 00                	add    BYTE PTR [rax],al
  600f47:	00 48 00             	add    BYTE PTR [rax+0x0],cl
  600f4a:	00 00                	add    BYTE PTR [rax],al
  600f4c:	00 00                	add    BYTE PTR [rax],al
  600f4e:	00 00                	add    BYTE PTR [rax],al
  600f50:	09 00                	or     DWORD PTR [rax],eax
  600f52:	00 00                	add    BYTE PTR [rax],al
  600f54:	00 00                	add    BYTE PTR [rax],al
  600f56:	00 00                	add    BYTE PTR [rax],al
  600f58:	18 00                	sbb    BYTE PTR [rax],al
  600f5a:	00 00                	add    BYTE PTR [rax],al
  600f5c:	00 00                	add    BYTE PTR [rax],al
  600f5e:	00 00                	add    BYTE PTR [rax],al
  600f60:	fe                   	(bad)
  600f61:	ff                   	(bad)
  600f62:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600f65:	00 00                	add    BYTE PTR [rax],al
  600f67:	00 30                	add    BYTE PTR [rax],dh
  600f69:	04 40                	add    al,0x40
  600f6b:	00 00                	add    BYTE PTR [rax],al
  600f6d:	00 00                	add    BYTE PTR [rax],al
  600f6f:	00 ff                	add    bh,bh
  600f71:	ff                   	(bad)
  600f72:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600f75:	00 00                	add    BYTE PTR [rax],al
  600f77:	00 01                	add    BYTE PTR [rcx],al
  600f79:	00 00                	add    BYTE PTR [rax],al
  600f7b:	00 00                	add    BYTE PTR [rax],al
  600f7d:	00 00                	add    BYTE PTR [rax],al
  600f7f:	00 f0                	add    al,dh
  600f81:	ff                   	(bad)
  600f82:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600f85:	00 00                	add    BYTE PTR [rax],al
  600f87:	00 16                	add    BYTE PTR [rsi],dl
  600f89:	04 40                	add    al,0x40
	...

セクション .got の逆アセンブル:

0000000000600ff0 <.got>:
	...

セクション .got.plt の逆アセンブル:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	20 0e                	and    BYTE PTR [rsi],cl
  601002:	60                   	(bad)
	...
  601017:	00 56 05             	add    BYTE PTR [rsi+0x5],dl
  60101a:	40 00 00             	rex add BYTE PTR [rax],al
  60101d:	00 00                	add    BYTE PTR [rax],al
  60101f:	00 66 05             	add    BYTE PTR [rsi+0x5],ah
  601022:	40 00 00             	rex add BYTE PTR [rax],al
  601025:	00 00                	add    BYTE PTR [rax],al
  601027:	00 76 05             	add    BYTE PTR [rsi+0x5],dh
  60102a:	40 00 00             	rex add BYTE PTR [rax],al
  60102d:	00 00                	add    BYTE PTR [rax],al
  60102f:	00 86 05 40 00 00    	add    BYTE PTR [rsi+0x4005],al
  601035:	00 00                	add    BYTE PTR [rax],al
  601037:	00 96 05 40 00 00    	add    BYTE PTR [rsi+0x4005],dl
  60103d:	00 00                	add    BYTE PTR [rax],al
  60103f:	00 a6 05 40 00 00    	add    BYTE PTR [rsi+0x4005],ah
  601045:	00 00                	add    BYTE PTR [rax],al
	...

セクション .data の逆アセンブル:

0000000000601050 <__data_start>:
	...

0000000000601058 <__dso_handle>:
	...

0000000000601060 <usefulString>:
  601060:	2f                   	(bad)
  601061:	62 69 6e 2f 63       	(bad)
  601066:	61                   	(bad)
  601067:	74 20                	je     601089 <_end+0x1>
  601069:	66 6c                	data16 ins BYTE PTR es:[rdi],dx
  60106b:	61                   	(bad)
  60106c:	67 2e 74 78          	addr32 cs je 6010e8 <_end+0x60>
  601070:	74 00                	je     601072 <_edata>

セクション .comment の逆アセンブル:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 55 62             	sub    BYTE PTR [rbp+0x62],dl
   8:	75 6e                	jne    78 <_init-0x4004b0>
   a:	74 75                	je     81 <_init-0x4004a7>
   c:	20 37                	and    BYTE PTR [rdi],dh
   e:	2e 35 2e 30 2d 33    	cs xor eax,0x332d302e
  14:	75 62                	jne    78 <_init-0x4004b0>
  16:	75 6e                	jne    86 <_init-0x4004a2>
  18:	74 75                	je     8f <_init-0x400499>
  1a:	31 7e 31             	xor    DWORD PTR [rsi+0x31],edi
  1d:	38 2e                	cmp    BYTE PTR [rsi],ch
  1f:	30 34 29             	xor    BYTE PTR [rcx+rbp*1],dh
  22:	20 37                	and    BYTE PTR [rdi],dh
  24:	2e                   	cs
  25:	35                   	.byte 0x35
  26:	2e 30 00             	cs xor BYTE PTR [rax],al
