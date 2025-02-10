
pivot:     ファイル形式 elf64-x86-64


セクション .init の逆アセンブル:

00000000004006a0 <_init>:
  4006a0:	48 83 ec 08          	sub    rsp,0x8
  4006a4:	48 8b 05 4d 09 20 00 	mov    rax,QWORD PTR [rip+0x20094d]        # 600ff8 <__gmon_start__>
  4006ab:	48 85 c0             	test   rax,rax
  4006ae:	74 02                	je     4006b2 <_init+0x12>
  4006b0:	ff d0                	call   rax
  4006b2:	48 83 c4 08          	add    rsp,0x8
  4006b6:	c3                   	ret

セクション .plt の逆アセンブル:

00000000004006c0 <.plt>:
  4006c0:	ff 35 42 09 20 00    	push   QWORD PTR [rip+0x200942]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4006c6:	ff 25 44 09 20 00    	jmp    QWORD PTR [rip+0x200944]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4006cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004006d0 <free@plt>:
  4006d0:	ff 25 42 09 20 00    	jmp    QWORD PTR [rip+0x200942]        # 601018 <free@GLIBC_2.2.5>
  4006d6:	68 00 00 00 00       	push   0x0
  4006db:	e9 e0 ff ff ff       	jmp    4006c0 <.plt>

00000000004006e0 <puts@plt>:
  4006e0:	ff 25 3a 09 20 00    	jmp    QWORD PTR [rip+0x20093a]        # 601020 <puts@GLIBC_2.2.5>
  4006e6:	68 01 00 00 00       	push   0x1
  4006eb:	e9 d0 ff ff ff       	jmp    4006c0 <.plt>

00000000004006f0 <printf@plt>:
  4006f0:	ff 25 32 09 20 00    	jmp    QWORD PTR [rip+0x200932]        # 601028 <printf@GLIBC_2.2.5>
  4006f6:	68 02 00 00 00       	push   0x2
  4006fb:	e9 c0 ff ff ff       	jmp    4006c0 <.plt>

0000000000400700 <memset@plt>:
  400700:	ff 25 2a 09 20 00    	jmp    QWORD PTR [rip+0x20092a]        # 601030 <memset@GLIBC_2.2.5>
  400706:	68 03 00 00 00       	push   0x3
  40070b:	e9 b0 ff ff ff       	jmp    4006c0 <.plt>

0000000000400710 <read@plt>:
  400710:	ff 25 22 09 20 00    	jmp    QWORD PTR [rip+0x200922]        # 601038 <read@GLIBC_2.2.5>
  400716:	68 04 00 00 00       	push   0x4
  40071b:	e9 a0 ff ff ff       	jmp    4006c0 <.plt>

0000000000400720 <foothold_function@plt>:
  400720:	ff 25 1a 09 20 00    	jmp    QWORD PTR [rip+0x20091a]        # 601040 <foothold_function>
  400726:	68 05 00 00 00       	push   0x5
  40072b:	e9 90 ff ff ff       	jmp    4006c0 <.plt>

0000000000400730 <malloc@plt>:
  400730:	ff 25 12 09 20 00    	jmp    QWORD PTR [rip+0x200912]        # 601048 <malloc@GLIBC_2.2.5>
  400736:	68 06 00 00 00       	push   0x6
  40073b:	e9 80 ff ff ff       	jmp    4006c0 <.plt>

0000000000400740 <setvbuf@plt>:
  400740:	ff 25 0a 09 20 00    	jmp    QWORD PTR [rip+0x20090a]        # 601050 <setvbuf@GLIBC_2.2.5>
  400746:	68 07 00 00 00       	push   0x7
  40074b:	e9 70 ff ff ff       	jmp    4006c0 <.plt>

0000000000400750 <exit@plt>:
  400750:	ff 25 02 09 20 00    	jmp    QWORD PTR [rip+0x200902]        # 601058 <exit@GLIBC_2.2.5>
  400756:	68 08 00 00 00       	push   0x8
  40075b:	e9 60 ff ff ff       	jmp    4006c0 <.plt>

セクション .text の逆アセンブル:

0000000000400760 <_start>:
  400760:	31 ed                	xor    ebp,ebp
  400762:	49 89 d1             	mov    r9,rdx
  400765:	5e                   	pop    rsi
  400766:	48 89 e2             	mov    rdx,rsp
  400769:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40076d:	50                   	push   rax
  40076e:	54                   	push   rsp
  40076f:	49 c7 c0 40 0a 40 00 	mov    r8,0x400a40
  400776:	48 c7 c1 d0 09 40 00 	mov    rcx,0x4009d0
  40077d:	48 c7 c7 47 08 40 00 	mov    rdi,0x400847
  400784:	ff 15 66 08 20 00    	call   QWORD PTR [rip+0x200866]        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40078a:	f4                   	hlt
  40078b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000400790 <_dl_relocate_static_pie>:
  400790:	f3 c3                	repz ret
  400792:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  400799:	00 00 00 
  40079c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004007a0 <deregister_tm_clones>:
  4007a0:	55                   	push   rbp
  4007a1:	b8 70 10 60 00       	mov    eax,0x601070
  4007a6:	48 3d 70 10 60 00    	cmp    rax,0x601070
  4007ac:	48 89 e5             	mov    rbp,rsp
  4007af:	74 17                	je     4007c8 <deregister_tm_clones+0x28>
  4007b1:	b8 00 00 00 00       	mov    eax,0x0
  4007b6:	48 85 c0             	test   rax,rax
  4007b9:	74 0d                	je     4007c8 <deregister_tm_clones+0x28>
  4007bb:	5d                   	pop    rbp
  4007bc:	bf 70 10 60 00       	mov    edi,0x601070
  4007c1:	ff e0                	jmp    rax
  4007c3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4007c8:	5d                   	pop    rbp
  4007c9:	c3                   	ret
  4007ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004007d0 <register_tm_clones>:
  4007d0:	be 70 10 60 00       	mov    esi,0x601070
  4007d5:	55                   	push   rbp
  4007d6:	48 81 ee 70 10 60 00 	sub    rsi,0x601070
  4007dd:	48 89 e5             	mov    rbp,rsp
  4007e0:	48 c1 fe 03          	sar    rsi,0x3
  4007e4:	48 89 f0             	mov    rax,rsi
  4007e7:	48 c1 e8 3f          	shr    rax,0x3f
  4007eb:	48 01 c6             	add    rsi,rax
  4007ee:	48 d1 fe             	sar    rsi,1
  4007f1:	74 15                	je     400808 <register_tm_clones+0x38>
  4007f3:	b8 00 00 00 00       	mov    eax,0x0
  4007f8:	48 85 c0             	test   rax,rax
  4007fb:	74 0b                	je     400808 <register_tm_clones+0x38>
  4007fd:	5d                   	pop    rbp
  4007fe:	bf 70 10 60 00       	mov    edi,0x601070
  400803:	ff e0                	jmp    rax
  400805:	0f 1f 00             	nop    DWORD PTR [rax]
  400808:	5d                   	pop    rbp
  400809:	c3                   	ret
  40080a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400810 <__do_global_dtors_aux>:
  400810:	80 3d 61 08 20 00 00 	cmp    BYTE PTR [rip+0x200861],0x0        # 601078 <completed.7698>
  400817:	75 17                	jne    400830 <__do_global_dtors_aux+0x20>
  400819:	55                   	push   rbp
  40081a:	48 89 e5             	mov    rbp,rsp
  40081d:	e8 7e ff ff ff       	call   4007a0 <deregister_tm_clones>
  400822:	c6 05 4f 08 20 00 01 	mov    BYTE PTR [rip+0x20084f],0x1        # 601078 <completed.7698>
  400829:	5d                   	pop    rbp
  40082a:	c3                   	ret
  40082b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400830:	f3 c3                	repz ret
  400832:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400836:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40083d:	00 00 00 

0000000000400840 <frame_dummy>:
  400840:	55                   	push   rbp
  400841:	48 89 e5             	mov    rbp,rsp
  400844:	5d                   	pop    rbp
  400845:	eb 89                	jmp    4007d0 <register_tm_clones>

0000000000400847 <main>:
  400847:	55                   	push   rbp
  400848:	48 89 e5             	mov    rbp,rsp
  40084b:	48 83 ec 10          	sub    rsp,0x10
  40084f:	48 8b 05 1a 08 20 00 	mov    rax,QWORD PTR [rip+0x20081a]        # 601070 <stdout@GLIBC_2.2.5>
  400856:	b9 00 00 00 00       	mov    ecx,0x0
  40085b:	ba 02 00 00 00       	mov    edx,0x2
  400860:	be 00 00 00 00       	mov    esi,0x0
  400865:	48 89 c7             	mov    rdi,rax
  400868:	e8 d3 fe ff ff       	call   400740 <setvbuf@plt>
  40086d:	bf 58 0a 40 00       	mov    edi,0x400a58
  400872:	e8 69 fe ff ff       	call   4006e0 <puts@plt>
  400877:	bf 6e 0a 40 00       	mov    edi,0x400a6e
  40087c:	e8 5f fe ff ff       	call   4006e0 <puts@plt>
  400881:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
  400888:	00 
  400889:	bf 00 00 00 01       	mov    edi,0x1000000
  40088e:	e8 9d fe ff ff       	call   400730 <malloc@plt>
  400893:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400897:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  40089c:	75 14                	jne    4008b2 <main+0x6b>
  40089e:	bf 78 0a 40 00       	mov    edi,0x400a78
  4008a3:	e8 38 fe ff ff       	call   4006e0 <puts@plt>
  4008a8:	bf 01 00 00 00       	mov    edi,0x1
  4008ad:	e8 9e fe ff ff       	call   400750 <exit@plt>
  4008b2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4008b6:	48 05 00 ff ff 00    	add    rax,0xffff00
  4008bc:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  4008c0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4008c4:	48 89 c7             	mov    rdi,rax
  4008c7:	e8 25 00 00 00       	call   4008f1 <pwnme>
  4008cc:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  4008d3:	00 
  4008d4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4008d8:	48 89 c7             	mov    rdi,rax
  4008db:	e8 f0 fd ff ff       	call   4006d0 <free@plt>
  4008e0:	bf a0 0a 40 00       	mov    edi,0x400aa0
  4008e5:	e8 f6 fd ff ff       	call   4006e0 <puts@plt>
  4008ea:	b8 00 00 00 00       	mov    eax,0x0
  4008ef:	c9                   	leave
  4008f0:	c3                   	ret

00000000004008f1 <pwnme>:
  4008f1:	55                   	push   rbp
  4008f2:	48 89 e5             	mov    rbp,rsp
  4008f5:	48 83 ec 30          	sub    rsp,0x30
  4008f9:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  4008fd:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400901:	ba 20 00 00 00       	mov    edx,0x20
  400906:	be 00 00 00 00       	mov    esi,0x0
  40090b:	48 89 c7             	mov    rdi,rax
  40090e:	e8 ed fd ff ff       	call   400700 <memset@plt>
  400913:	bf a9 0a 40 00       	mov    edi,0x400aa9
  400918:	e8 c3 fd ff ff       	call   4006e0 <puts@plt>
  40091d:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  400921:	48 89 c6             	mov    rsi,rax
  400924:	bf c8 0a 40 00       	mov    edi,0x400ac8
  400929:	b8 00 00 00 00       	mov    eax,0x0
  40092e:	e8 bd fd ff ff       	call   4006f0 <printf@plt>
  400933:	bf 08 0b 40 00       	mov    edi,0x400b08
  400938:	e8 a3 fd ff ff       	call   4006e0 <puts@plt>
  40093d:	bf 34 0b 40 00       	mov    edi,0x400b34
  400942:	b8 00 00 00 00       	mov    eax,0x0
  400947:	e8 a4 fd ff ff       	call   4006f0 <printf@plt>
  40094c:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  400950:	ba 00 01 00 00       	mov    edx,0x100
  400955:	48 89 c6             	mov    rsi,rax
  400958:	bf 00 00 00 00       	mov    edi,0x0
  40095d:	e8 ae fd ff ff       	call   400710 <read@plt>
  400962:	bf 37 0b 40 00       	mov    edi,0x400b37
  400967:	e8 74 fd ff ff       	call   4006e0 <puts@plt>
  40096c:	bf 48 0b 40 00       	mov    edi,0x400b48
  400971:	e8 6a fd ff ff       	call   4006e0 <puts@plt>
  400976:	bf 34 0b 40 00       	mov    edi,0x400b34
  40097b:	b8 00 00 00 00       	mov    eax,0x0
  400980:	e8 6b fd ff ff       	call   4006f0 <printf@plt>
  400985:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400989:	ba 40 00 00 00       	mov    edx,0x40
  40098e:	48 89 c6             	mov    rsi,rax
  400991:	bf 00 00 00 00       	mov    edi,0x0
  400996:	e8 75 fd ff ff       	call   400710 <read@plt>
  40099b:	bf 69 0b 40 00       	mov    edi,0x400b69
  4009a0:	e8 3b fd ff ff       	call   4006e0 <puts@plt>
  4009a5:	90                   	nop
  4009a6:	c9                   	leave
  4009a7:	c3                   	ret

00000000004009a8 <uselessFunction>:
  4009a8:	55                   	push   rbp
  4009a9:	48 89 e5             	mov    rbp,rsp
  4009ac:	e8 6f fd ff ff       	call   400720 <foothold_function@plt>
  4009b1:	bf 01 00 00 00       	mov    edi,0x1
  4009b6:	e8 95 fd ff ff       	call   400750 <exit@plt>

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

00000000004009d0 <__libc_csu_init>:
  4009d0:	41 57                	push   r15
  4009d2:	41 56                	push   r14
  4009d4:	49 89 d7             	mov    r15,rdx
  4009d7:	41 55                	push   r13
  4009d9:	41 54                	push   r12
  4009db:	4c 8d 25 0e 04 20 00 	lea    r12,[rip+0x20040e]        # 600df0 <__frame_dummy_init_array_entry>
  4009e2:	55                   	push   rbp
  4009e3:	48 8d 2d 0e 04 20 00 	lea    rbp,[rip+0x20040e]        # 600df8 <__do_global_dtors_aux_fini_array_entry>
  4009ea:	53                   	push   rbx
  4009eb:	41 89 fd             	mov    r13d,edi
  4009ee:	49 89 f6             	mov    r14,rsi
  4009f1:	4c 29 e5             	sub    rbp,r12
  4009f4:	48 83 ec 08          	sub    rsp,0x8
  4009f8:	48 c1 fd 03          	sar    rbp,0x3
  4009fc:	e8 9f fc ff ff       	call   4006a0 <_init>
  400a01:	48 85 ed             	test   rbp,rbp
  400a04:	74 20                	je     400a26 <__libc_csu_init+0x56>
  400a06:	31 db                	xor    ebx,ebx
  400a08:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  400a0f:	00 
  400a10:	4c 89 fa             	mov    rdx,r15
  400a13:	4c 89 f6             	mov    rsi,r14
  400a16:	44 89 ef             	mov    edi,r13d
  400a19:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  400a1d:	48 83 c3 01          	add    rbx,0x1
  400a21:	48 39 dd             	cmp    rbp,rbx
  400a24:	75 ea                	jne    400a10 <__libc_csu_init+0x40>
  400a26:	48 83 c4 08          	add    rsp,0x8
  400a2a:	5b                   	pop    rbx
  400a2b:	5d                   	pop    rbp
  400a2c:	41 5c                	pop    r12
  400a2e:	41 5d                	pop    r13
  400a30:	41 5e                	pop    r14
  400a32:	41 5f                	pop    r15
  400a34:	c3                   	ret
  400a35:	90                   	nop
  400a36:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  400a3d:	00 00 00 

0000000000400a40 <__libc_csu_fini>:
  400a40:	f3 c3                	repz ret

セクション .fini の逆アセンブル:

0000000000400a44 <_fini>:
  400a44:	48 83 ec 08          	sub    rsp,0x8
  400a48:	48 83 c4 08          	add    rsp,0x8
  400a4c:	c3                   	ret
