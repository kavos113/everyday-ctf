
callme:     ファイル形式 elf64-x86-64


セクション .init の逆アセンブル:

00000000004006a8 <_init>:
  4006a8:	48 83 ec 08          	sub    rsp,0x8
  4006ac:	48 8b 05 45 09 20 00 	mov    rax,QWORD PTR [rip+0x200945]        # 600ff8 <__gmon_start__>
  4006b3:	48 85 c0             	test   rax,rax
  4006b6:	74 02                	je     4006ba <_init+0x12>
  4006b8:	ff d0                	call   rax
  4006ba:	48 83 c4 08          	add    rsp,0x8
  4006be:	c3                   	ret

セクション .plt の逆アセンブル:

00000000004006c0 <.plt>:
  4006c0:	ff 35 42 09 20 00    	push   QWORD PTR [rip+0x200942]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4006c6:	ff 25 44 09 20 00    	jmp    QWORD PTR [rip+0x200944]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4006cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004006d0 <puts@plt>:
  4006d0:	ff 25 42 09 20 00    	jmp    QWORD PTR [rip+0x200942]        # 601018 <puts@GLIBC_2.2.5>
  4006d6:	68 00 00 00 00       	push   0x0
  4006db:	e9 e0 ff ff ff       	jmp    4006c0 <.plt>

00000000004006e0 <printf@plt>:
  4006e0:	ff 25 3a 09 20 00    	jmp    QWORD PTR [rip+0x20093a]        # 601020 <printf@GLIBC_2.2.5>
  4006e6:	68 01 00 00 00       	push   0x1
  4006eb:	e9 d0 ff ff ff       	jmp    4006c0 <.plt>

00000000004006f0 <callme_three@plt>:
  4006f0:	ff 25 32 09 20 00    	jmp    QWORD PTR [rip+0x200932]        # 601028 <callme_three>
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

0000000000400720 <callme_one@plt>:
  400720:	ff 25 1a 09 20 00    	jmp    QWORD PTR [rip+0x20091a]        # 601040 <callme_one>
  400726:	68 05 00 00 00       	push   0x5
  40072b:	e9 90 ff ff ff       	jmp    4006c0 <.plt>

0000000000400730 <setvbuf@plt>:
  400730:	ff 25 12 09 20 00    	jmp    QWORD PTR [rip+0x200912]        # 601048 <setvbuf@GLIBC_2.2.5>
  400736:	68 06 00 00 00       	push   0x6
  40073b:	e9 80 ff ff ff       	jmp    4006c0 <.plt>

0000000000400740 <callme_two@plt>:
  400740:	ff 25 0a 09 20 00    	jmp    QWORD PTR [rip+0x20090a]        # 601050 <callme_two>
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
  40076f:	49 c7 c0 b0 09 40 00 	mov    r8,0x4009b0
  400776:	48 c7 c1 40 09 40 00 	mov    rcx,0x400940
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
  40084b:	48 8b 05 1e 08 20 00 	mov    rax,QWORD PTR [rip+0x20081e]        # 601070 <stdout@GLIBC_2.2.5>
  400852:	b9 00 00 00 00       	mov    ecx,0x0
  400857:	ba 02 00 00 00       	mov    edx,0x2
  40085c:	be 00 00 00 00       	mov    esi,0x0
  400861:	48 89 c7             	mov    rdi,rax
  400864:	e8 c7 fe ff ff       	call   400730 <setvbuf@plt>
  400869:	bf c8 09 40 00       	mov    edi,0x4009c8
  40086e:	e8 5d fe ff ff       	call   4006d0 <puts@plt>
  400873:	bf df 09 40 00       	mov    edi,0x4009df
  400878:	e8 53 fe ff ff       	call   4006d0 <puts@plt>
  40087d:	b8 00 00 00 00       	mov    eax,0x0
  400882:	e8 11 00 00 00       	call   400898 <pwnme>
  400887:	bf e7 09 40 00       	mov    edi,0x4009e7
  40088c:	e8 3f fe ff ff       	call   4006d0 <puts@plt>
  400891:	b8 00 00 00 00       	mov    eax,0x0
  400896:	5d                   	pop    rbp
  400897:	c3                   	ret

0000000000400898 <pwnme>:
  400898:	55                   	push   rbp
  400899:	48 89 e5             	mov    rbp,rsp
  40089c:	48 83 ec 20          	sub    rsp,0x20
  4008a0:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  4008a4:	ba 20 00 00 00       	mov    edx,0x20
  4008a9:	be 00 00 00 00       	mov    esi,0x0
  4008ae:	48 89 c7             	mov    rdi,rax
  4008b1:	e8 4a fe ff ff       	call   400700 <memset@plt>
  4008b6:	bf f0 09 40 00       	mov    edi,0x4009f0
  4008bb:	e8 10 fe ff ff       	call   4006d0 <puts@plt>
  4008c0:	bf 13 0a 40 00       	mov    edi,0x400a13
  4008c5:	b8 00 00 00 00       	mov    eax,0x0
  4008ca:	e8 11 fe ff ff       	call   4006e0 <printf@plt>
  4008cf:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  4008d3:	ba 00 02 00 00       	mov    edx,0x200
  4008d8:	48 89 c6             	mov    rsi,rax
  4008db:	bf 00 00 00 00       	mov    edi,0x0
  4008e0:	e8 2b fe ff ff       	call   400710 <read@plt>
  4008e5:	bf 16 0a 40 00       	mov    edi,0x400a16
  4008ea:	e8 e1 fd ff ff       	call   4006d0 <puts@plt>
  4008ef:	90                   	nop
  4008f0:	c9                   	leave
  4008f1:	c3                   	ret

00000000004008f2 <usefulFunction>:
  4008f2:	55                   	push   rbp
  4008f3:	48 89 e5             	mov    rbp,rsp
  4008f6:	ba 06 00 00 00       	mov    edx,0x6
  4008fb:	be 05 00 00 00       	mov    esi,0x5
  400900:	bf 04 00 00 00       	mov    edi,0x4
  400905:	e8 e6 fd ff ff       	call   4006f0 <callme_three@plt>
  40090a:	ba 06 00 00 00       	mov    edx,0x6
  40090f:	be 05 00 00 00       	mov    esi,0x5
  400914:	bf 04 00 00 00       	mov    edi,0x4
  400919:	e8 22 fe ff ff       	call   400740 <callme_two@plt>
  40091e:	ba 06 00 00 00       	mov    edx,0x6
  400923:	be 05 00 00 00       	mov    esi,0x5
  400928:	bf 04 00 00 00       	mov    edi,0x4
  40092d:	e8 ee fd ff ff       	call   400720 <callme_one@plt>
  400932:	bf 01 00 00 00       	mov    edi,0x1
  400937:	e8 14 fe ff ff       	call   400750 <exit@plt>

000000000040093c <usefulGadgets>:
  40093c:	5f                   	pop    rdi
  40093d:	5e                   	pop    rsi
  40093e:	5a                   	pop    rdx
  40093f:	c3                   	ret

0000000000400940 <__libc_csu_init>:
  400940:	41 57                	push   r15
  400942:	41 56                	push   r14
  400944:	49 89 d7             	mov    r15,rdx
  400947:	41 55                	push   r13
  400949:	41 54                	push   r12
  40094b:	4c 8d 25 9e 04 20 00 	lea    r12,[rip+0x20049e]        # 600df0 <__frame_dummy_init_array_entry>
  400952:	55                   	push   rbp
  400953:	48 8d 2d 9e 04 20 00 	lea    rbp,[rip+0x20049e]        # 600df8 <__do_global_dtors_aux_fini_array_entry>
  40095a:	53                   	push   rbx
  40095b:	41 89 fd             	mov    r13d,edi
  40095e:	49 89 f6             	mov    r14,rsi
  400961:	4c 29 e5             	sub    rbp,r12
  400964:	48 83 ec 08          	sub    rsp,0x8
  400968:	48 c1 fd 03          	sar    rbp,0x3
  40096c:	e8 37 fd ff ff       	call   4006a8 <_init>
  400971:	48 85 ed             	test   rbp,rbp
  400974:	74 20                	je     400996 <__libc_csu_init+0x56>
  400976:	31 db                	xor    ebx,ebx
  400978:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40097f:	00 
  400980:	4c 89 fa             	mov    rdx,r15
  400983:	4c 89 f6             	mov    rsi,r14
  400986:	44 89 ef             	mov    edi,r13d
  400989:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40098d:	48 83 c3 01          	add    rbx,0x1
  400991:	48 39 dd             	cmp    rbp,rbx
  400994:	75 ea                	jne    400980 <__libc_csu_init+0x40>
  400996:	48 83 c4 08          	add    rsp,0x8
  40099a:	5b                   	pop    rbx
  40099b:	5d                   	pop    rbp
  40099c:	41 5c                	pop    r12
  40099e:	41 5d                	pop    r13
  4009a0:	41 5e                	pop    r14
  4009a2:	41 5f                	pop    r15
  4009a4:	c3                   	ret
  4009a5:	90                   	nop
  4009a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4009ad:	00 00 00 

00000000004009b0 <__libc_csu_fini>:
  4009b0:	f3 c3                	repz ret

セクション .fini の逆アセンブル:

00000000004009b4 <_fini>:
  4009b4:	48 83 ec 08          	sub    rsp,0x8
  4009b8:	48 83 c4 08          	add    rsp,0x8
  4009bc:	c3                   	ret
