
ret2csu:     ファイル形式 elf64-x86-64


セクション .init の逆アセンブル:

00000000004004d0 <_init>:
  4004d0:	48 83 ec 08          	sub    rsp,0x8
  4004d4:	48 8b 05 1d 0b 20 00 	mov    rax,QWORD PTR [rip+0x200b1d]        # 600ff8 <__gmon_start__>
  4004db:	48 85 c0             	test   rax,rax
  4004de:	74 02                	je     4004e2 <_init+0x12>
  4004e0:	ff d0                	call   rax
  4004e2:	48 83 c4 08          	add    rsp,0x8
  4004e6:	c3                   	ret

セクション .plt の逆アセンブル:

00000000004004f0 <.plt>:
  4004f0:	ff 35 12 0b 20 00    	push   QWORD PTR [rip+0x200b12]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004f6:	ff 25 14 0b 20 00    	jmp    QWORD PTR [rip+0x200b14]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400500 <pwnme@plt>:
  400500:	ff 25 12 0b 20 00    	jmp    QWORD PTR [rip+0x200b12]        # 601018 <pwnme>
  400506:	68 00 00 00 00       	push   0x0
  40050b:	e9 e0 ff ff ff       	jmp    4004f0 <.plt>

0000000000400510 <ret2win@plt>:
  400510:	ff 25 0a 0b 20 00    	jmp    QWORD PTR [rip+0x200b0a]        # 601020 <ret2win>
  400516:	68 01 00 00 00       	push   0x1
  40051b:	e9 d0 ff ff ff       	jmp    4004f0 <.plt>

セクション .text の逆アセンブル:

0000000000400520 <_start>:
  400520:	31 ed                	xor    ebp,ebp
  400522:	49 89 d1             	mov    r9,rdx
  400525:	5e                   	pop    rsi
  400526:	48 89 e2             	mov    rdx,rsp
  400529:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40052d:	50                   	push   rax
  40052e:	54                   	push   rsp
  40052f:	49 c7 c0 b0 06 40 00 	mov    r8,0x4006b0
  400536:	48 c7 c1 40 06 40 00 	mov    rcx,0x400640
  40053d:	48 c7 c7 07 06 40 00 	mov    rdi,0x400607
  400544:	ff 15 a6 0a 20 00    	call   QWORD PTR [rip+0x200aa6]        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40054a:	f4                   	hlt
  40054b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000400550 <_dl_relocate_static_pie>:
  400550:	f3 c3                	repz ret
  400552:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  400559:	00 00 00 
  40055c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400560 <deregister_tm_clones>:
  400560:	55                   	push   rbp
  400561:	b8 38 10 60 00       	mov    eax,0x601038
  400566:	48 3d 38 10 60 00    	cmp    rax,0x601038
  40056c:	48 89 e5             	mov    rbp,rsp
  40056f:	74 17                	je     400588 <deregister_tm_clones+0x28>
  400571:	b8 00 00 00 00       	mov    eax,0x0
  400576:	48 85 c0             	test   rax,rax
  400579:	74 0d                	je     400588 <deregister_tm_clones+0x28>
  40057b:	5d                   	pop    rbp
  40057c:	bf 38 10 60 00       	mov    edi,0x601038
  400581:	ff e0                	jmp    rax
  400583:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400588:	5d                   	pop    rbp
  400589:	c3                   	ret
  40058a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400590 <register_tm_clones>:
  400590:	be 38 10 60 00       	mov    esi,0x601038
  400595:	55                   	push   rbp
  400596:	48 81 ee 38 10 60 00 	sub    rsi,0x601038
  40059d:	48 89 e5             	mov    rbp,rsp
  4005a0:	48 c1 fe 03          	sar    rsi,0x3
  4005a4:	48 89 f0             	mov    rax,rsi
  4005a7:	48 c1 e8 3f          	shr    rax,0x3f
  4005ab:	48 01 c6             	add    rsi,rax
  4005ae:	48 d1 fe             	sar    rsi,1
  4005b1:	74 15                	je     4005c8 <register_tm_clones+0x38>
  4005b3:	b8 00 00 00 00       	mov    eax,0x0
  4005b8:	48 85 c0             	test   rax,rax
  4005bb:	74 0b                	je     4005c8 <register_tm_clones+0x38>
  4005bd:	5d                   	pop    rbp
  4005be:	bf 38 10 60 00       	mov    edi,0x601038
  4005c3:	ff e0                	jmp    rax
  4005c5:	0f 1f 00             	nop    DWORD PTR [rax]
  4005c8:	5d                   	pop    rbp
  4005c9:	c3                   	ret
  4005ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004005d0 <__do_global_dtors_aux>:
  4005d0:	80 3d 61 0a 20 00 00 	cmp    BYTE PTR [rip+0x200a61],0x0        # 601038 <__TMC_END__>
  4005d7:	75 17                	jne    4005f0 <__do_global_dtors_aux+0x20>
  4005d9:	55                   	push   rbp
  4005da:	48 89 e5             	mov    rbp,rsp
  4005dd:	e8 7e ff ff ff       	call   400560 <deregister_tm_clones>
  4005e2:	c6 05 4f 0a 20 00 01 	mov    BYTE PTR [rip+0x200a4f],0x1        # 601038 <__TMC_END__>
  4005e9:	5d                   	pop    rbp
  4005ea:	c3                   	ret
  4005eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4005f0:	f3 c3                	repz ret
  4005f2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4005f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4005fd:	00 00 00 

0000000000400600 <frame_dummy>:
  400600:	55                   	push   rbp
  400601:	48 89 e5             	mov    rbp,rsp
  400604:	5d                   	pop    rbp
  400605:	eb 89                	jmp    400590 <register_tm_clones>

0000000000400607 <main>:
  400607:	55                   	push   rbp
  400608:	48 89 e5             	mov    rbp,rsp
  40060b:	e8 f0 fe ff ff       	call   400500 <pwnme@plt>
  400610:	b8 00 00 00 00       	mov    eax,0x0
  400615:	5d                   	pop    rbp
  400616:	c3                   	ret

0000000000400617 <usefulFunction>:
  400617:	55                   	push   rbp
  400618:	48 89 e5             	mov    rbp,rsp
  40061b:	ba 03 00 00 00       	mov    edx,0x3
  400620:	be 02 00 00 00       	mov    esi,0x2
  400625:	bf 01 00 00 00       	mov    edi,0x1
  40062a:	e8 e1 fe ff ff       	call   400510 <ret2win@plt>
  40062f:	90                   	nop
  400630:	5d                   	pop    rbp
  400631:	c3                   	ret
  400632:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  400639:	00 00 00 
  40063c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400640 <__libc_csu_init>:
  400640:	41 57                	push   r15
  400642:	41 56                	push   r14
  400644:	49 89 d7             	mov    r15,rdx
  400647:	41 55                	push   r13
  400649:	41 54                	push   r12
  40064b:	4c 8d 25 9e 07 20 00 	lea    r12,[rip+0x20079e]        # 600df0 <__frame_dummy_init_array_entry>
  400652:	55                   	push   rbp
  400653:	48 8d 2d 9e 07 20 00 	lea    rbp,[rip+0x20079e]        # 600df8 <__do_global_dtors_aux_fini_array_entry>
  40065a:	53                   	push   rbx
  40065b:	41 89 fd             	mov    r13d,edi
  40065e:	49 89 f6             	mov    r14,rsi
  400661:	4c 29 e5             	sub    rbp,r12
  400664:	48 83 ec 08          	sub    rsp,0x8
  400668:	48 c1 fd 03          	sar    rbp,0x3
  40066c:	e8 5f fe ff ff       	call   4004d0 <_init>
  400671:	48 85 ed             	test   rbp,rbp
  400674:	74 20                	je     400696 <__libc_csu_init+0x56>
  400676:	31 db                	xor    ebx,ebx
  400678:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40067f:	00 
  400680:	4c 89 fa             	mov    rdx,r15
  400683:	4c 89 f6             	mov    rsi,r14
  400686:	44 89 ef             	mov    edi,r13d
  400689:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40068d:	48 83 c3 01          	add    rbx,0x1
  400691:	48 39 dd             	cmp    rbp,rbx
  400694:	75 ea                	jne    400680 <__libc_csu_init+0x40>
  400696:	48 83 c4 08          	add    rsp,0x8
  40069a:	5b                   	pop    rbx
  40069b:	5d                   	pop    rbp
  40069c:	41 5c                	pop    r12
  40069e:	41 5d                	pop    r13
  4006a0:	41 5e                	pop    r14
  4006a2:	41 5f                	pop    r15
  4006a4:	c3                   	ret
  4006a5:	90                   	nop
  4006a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4006ad:	00 00 00 

00000000004006b0 <__libc_csu_fini>:
  4006b0:	f3 c3                	repz ret

セクション .fini の逆アセンブル:

00000000004006b4 <_fini>:
  4006b4:	48 83 ec 08          	sub    rsp,0x8
  4006b8:	48 83 c4 08          	add    rsp,0x8
  4006bc:	c3                   	ret
