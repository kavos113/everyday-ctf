
split:     ファイル形式 elf64-x86-64


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
