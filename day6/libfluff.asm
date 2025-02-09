
libfluff.so:     ファイル形式 elf64-x86-64


セクション .init の逆アセンブル:

0000000000000708 <_init>:
 708:	48 83 ec 08          	sub    rsp,0x8
 70c:	48 8b 05 d5 08 20 00 	mov    rax,QWORD PTR [rip+0x2008d5]        # 200fe8 <__gmon_start__>
 713:	48 85 c0             	test   rax,rax
 716:	74 02                	je     71a <_init+0x12>
 718:	ff d0                	call   rax
 71a:	48 83 c4 08          	add    rsp,0x8
 71e:	c3                   	ret

セクション .plt の逆アセンブル:

0000000000000720 <.plt>:
 720:	ff 35 e2 08 20 00    	push   QWORD PTR [rip+0x2008e2]        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 726:	ff 25 e4 08 20 00    	jmp    QWORD PTR [rip+0x2008e4]        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 72c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000730 <puts@plt>:
 730:	ff 25 e2 08 20 00    	jmp    QWORD PTR [rip+0x2008e2]        # 201018 <puts@GLIBC_2.2.5>
 736:	68 00 00 00 00       	push   0x0
 73b:	e9 e0 ff ff ff       	jmp    720 <.plt>

0000000000000740 <fclose@plt>:
 740:	ff 25 da 08 20 00    	jmp    QWORD PTR [rip+0x2008da]        # 201020 <fclose@GLIBC_2.2.5>
 746:	68 01 00 00 00       	push   0x1
 74b:	e9 d0 ff ff ff       	jmp    720 <.plt>

0000000000000750 <printf@plt>:
 750:	ff 25 d2 08 20 00    	jmp    QWORD PTR [rip+0x2008d2]        # 201028 <printf@GLIBC_2.2.5>
 756:	68 02 00 00 00       	push   0x2
 75b:	e9 c0 ff ff ff       	jmp    720 <.plt>

0000000000000760 <memset@plt>:
 760:	ff 25 ca 08 20 00    	jmp    QWORD PTR [rip+0x2008ca]        # 201030 <memset@GLIBC_2.2.5>
 766:	68 03 00 00 00       	push   0x3
 76b:	e9 b0 ff ff ff       	jmp    720 <.plt>

0000000000000770 <read@plt>:
 770:	ff 25 c2 08 20 00    	jmp    QWORD PTR [rip+0x2008c2]        # 201038 <read@GLIBC_2.2.5>
 776:	68 04 00 00 00       	push   0x4
 77b:	e9 a0 ff ff ff       	jmp    720 <.plt>

0000000000000780 <fgets@plt>:
 780:	ff 25 ba 08 20 00    	jmp    QWORD PTR [rip+0x2008ba]        # 201040 <fgets@GLIBC_2.2.5>
 786:	68 05 00 00 00       	push   0x5
 78b:	e9 90 ff ff ff       	jmp    720 <.plt>

0000000000000790 <setvbuf@plt>:
 790:	ff 25 b2 08 20 00    	jmp    QWORD PTR [rip+0x2008b2]        # 201048 <setvbuf@GLIBC_2.2.5>
 796:	68 06 00 00 00       	push   0x6
 79b:	e9 80 ff ff ff       	jmp    720 <.plt>

00000000000007a0 <fopen@plt>:
 7a0:	ff 25 aa 08 20 00    	jmp    QWORD PTR [rip+0x2008aa]        # 201050 <fopen@GLIBC_2.2.5>
 7a6:	68 07 00 00 00       	push   0x7
 7ab:	e9 70 ff ff ff       	jmp    720 <.plt>

00000000000007b0 <exit@plt>:
 7b0:	ff 25 a2 08 20 00    	jmp    QWORD PTR [rip+0x2008a2]        # 201058 <exit@GLIBC_2.2.5>
 7b6:	68 08 00 00 00       	push   0x8
 7bb:	e9 60 ff ff ff       	jmp    720 <.plt>

セクション .plt.got の逆アセンブル:

00000000000007c0 <__cxa_finalize@plt>:
 7c0:	ff 25 32 08 20 00    	jmp    QWORD PTR [rip+0x200832]        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 7c6:	66 90                	xchg   ax,ax

セクション .text の逆アセンブル:

00000000000007d0 <deregister_tm_clones>:
 7d0:	48 8d 3d 91 08 20 00 	lea    rdi,[rip+0x200891]        # 201068 <completed.7698>
 7d7:	55                   	push   rbp
 7d8:	48 8d 05 89 08 20 00 	lea    rax,[rip+0x200889]        # 201068 <completed.7698>
 7df:	48 39 f8             	cmp    rax,rdi
 7e2:	48 89 e5             	mov    rbp,rsp
 7e5:	74 19                	je     800 <deregister_tm_clones+0x30>
 7e7:	48 8b 05 ea 07 20 00 	mov    rax,QWORD PTR [rip+0x2007ea]        # 200fd8 <_ITM_deregisterTMCloneTable>
 7ee:	48 85 c0             	test   rax,rax
 7f1:	74 0d                	je     800 <deregister_tm_clones+0x30>
 7f3:	5d                   	pop    rbp
 7f4:	ff e0                	jmp    rax
 7f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
 7fd:	00 00 00 
 800:	5d                   	pop    rbp
 801:	c3                   	ret
 802:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 806:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
 80d:	00 00 00 

0000000000000810 <register_tm_clones>:
 810:	48 8d 3d 51 08 20 00 	lea    rdi,[rip+0x200851]        # 201068 <completed.7698>
 817:	48 8d 35 4a 08 20 00 	lea    rsi,[rip+0x20084a]        # 201068 <completed.7698>
 81e:	55                   	push   rbp
 81f:	48 29 fe             	sub    rsi,rdi
 822:	48 89 e5             	mov    rbp,rsp
 825:	48 c1 fe 03          	sar    rsi,0x3
 829:	48 89 f0             	mov    rax,rsi
 82c:	48 c1 e8 3f          	shr    rax,0x3f
 830:	48 01 c6             	add    rsi,rax
 833:	48 d1 fe             	sar    rsi,1
 836:	74 18                	je     850 <register_tm_clones+0x40>
 838:	48 8b 05 b1 07 20 00 	mov    rax,QWORD PTR [rip+0x2007b1]        # 200ff0 <_ITM_registerTMCloneTable>
 83f:	48 85 c0             	test   rax,rax
 842:	74 0c                	je     850 <register_tm_clones+0x40>
 844:	5d                   	pop    rbp
 845:	ff e0                	jmp    rax
 847:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 84e:	00 00 
 850:	5d                   	pop    rbp
 851:	c3                   	ret
 852:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 856:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
 85d:	00 00 00 

0000000000000860 <__do_global_dtors_aux>:
 860:	80 3d 01 08 20 00 00 	cmp    BYTE PTR [rip+0x200801],0x0        # 201068 <completed.7698>
 867:	75 2f                	jne    898 <__do_global_dtors_aux+0x38>
 869:	48 83 3d 87 07 20 00 	cmp    QWORD PTR [rip+0x200787],0x0        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 870:	00 
 871:	55                   	push   rbp
 872:	48 89 e5             	mov    rbp,rsp
 875:	74 0c                	je     883 <__do_global_dtors_aux+0x23>
 877:	48 8b 3d e2 07 20 00 	mov    rdi,QWORD PTR [rip+0x2007e2]        # 201060 <__dso_handle>
 87e:	e8 3d ff ff ff       	call   7c0 <__cxa_finalize@plt>
 883:	e8 48 ff ff ff       	call   7d0 <deregister_tm_clones>
 888:	c6 05 d9 07 20 00 01 	mov    BYTE PTR [rip+0x2007d9],0x1        # 201068 <completed.7698>
 88f:	5d                   	pop    rbp
 890:	c3                   	ret
 891:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 898:	f3 c3                	repz ret
 89a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000008a0 <frame_dummy>:
 8a0:	55                   	push   rbp
 8a1:	48 89 e5             	mov    rbp,rsp
 8a4:	5d                   	pop    rbp
 8a5:	e9 66 ff ff ff       	jmp    810 <register_tm_clones>

00000000000008aa <pwnme>:
 8aa:	55                   	push   rbp
 8ab:	48 89 e5             	mov    rbp,rsp
 8ae:	48 83 ec 20          	sub    rsp,0x20
 8b2:	48 8b 05 27 07 20 00 	mov    rax,QWORD PTR [rip+0x200727]        # 200fe0 <stdout@GLIBC_2.2.5>
 8b9:	48 8b 00             	mov    rax,QWORD PTR [rax]
 8bc:	b9 00 00 00 00       	mov    ecx,0x0
 8c1:	ba 02 00 00 00       	mov    edx,0x2
 8c6:	be 00 00 00 00       	mov    esi,0x0
 8cb:	48 89 c7             	mov    rdi,rax
 8ce:	e8 bd fe ff ff       	call   790 <setvbuf@plt>
 8d3:	48 8d 3d 06 01 00 00 	lea    rdi,[rip+0x106]        # 9e0 <_fini+0x10>
 8da:	e8 51 fe ff ff       	call   730 <puts@plt>
 8df:	48 8d 3d 10 01 00 00 	lea    rdi,[rip+0x110]        # 9f6 <_fini+0x26>
 8e6:	e8 45 fe ff ff       	call   730 <puts@plt>
 8eb:	48 8d 45 e0          	lea    rax,[rbp-0x20]
 8ef:	ba 20 00 00 00       	mov    edx,0x20
 8f4:	be 00 00 00 00       	mov    esi,0x0
 8f9:	48 89 c7             	mov    rdi,rax
 8fc:	e8 5f fe ff ff       	call   760 <memset@plt>
 901:	48 8d 3d f8 00 00 00 	lea    rdi,[rip+0xf8]        # a00 <_fini+0x30>
 908:	e8 23 fe ff ff       	call   730 <puts@plt>
 90d:	48 8d 3d 34 01 00 00 	lea    rdi,[rip+0x134]        # a48 <_fini+0x78>
 914:	b8 00 00 00 00       	mov    eax,0x0
 919:	e8 32 fe ff ff       	call   750 <printf@plt>
 91e:	48 8d 45 e0          	lea    rax,[rbp-0x20]
 922:	ba 00 02 00 00       	mov    edx,0x200
 927:	48 89 c6             	mov    rsi,rax
 92a:	bf 00 00 00 00       	mov    edi,0x0
 92f:	e8 3c fe ff ff       	call   770 <read@plt>
 934:	48 8d 3d 10 01 00 00 	lea    rdi,[rip+0x110]        # a4b <_fini+0x7b>
 93b:	e8 f0 fd ff ff       	call   730 <puts@plt>
 940:	90                   	nop
 941:	c9                   	leave
 942:	c3                   	ret

0000000000000943 <print_file>:
 943:	55                   	push   rbp
 944:	48 89 e5             	mov    rbp,rsp
 947:	48 83 ec 40          	sub    rsp,0x40
 94b:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
 94f:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
 956:	00 
 957:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
 95b:	48 8d 35 f4 00 00 00 	lea    rsi,[rip+0xf4]        # a56 <_fini+0x86>
 962:	48 89 c7             	mov    rdi,rax
 965:	e8 36 fe ff ff       	call   7a0 <fopen@plt>
 96a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 96e:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 973:	75 22                	jne    997 <print_file+0x54>
 975:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
 979:	48 89 c6             	mov    rsi,rax
 97c:	48 8d 3d d5 00 00 00 	lea    rdi,[rip+0xd5]        # a58 <_fini+0x88>
 983:	b8 00 00 00 00       	mov    eax,0x0
 988:	e8 c3 fd ff ff       	call   750 <printf@plt>
 98d:	bf 01 00 00 00       	mov    edi,0x1
 992:	e8 19 fe ff ff       	call   7b0 <exit@plt>
 997:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 99b:	48 8d 45 d0          	lea    rax,[rbp-0x30]
 99f:	be 21 00 00 00       	mov    esi,0x21
 9a4:	48 89 c7             	mov    rdi,rax
 9a7:	e8 d4 fd ff ff       	call   780 <fgets@plt>
 9ac:	48 8d 45 d0          	lea    rax,[rbp-0x30]
 9b0:	48 89 c7             	mov    rdi,rax
 9b3:	e8 78 fd ff ff       	call   730 <puts@plt>
 9b8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 9bc:	48 89 c7             	mov    rdi,rax
 9bf:	e8 7c fd ff ff       	call   740 <fclose@plt>
 9c4:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
 9cb:	00 
 9cc:	90                   	nop
 9cd:	c9                   	leave
 9ce:	c3                   	ret

セクション .fini の逆アセンブル:

00000000000009d0 <_fini>:
 9d0:	48 83 ec 08          	sub    rsp,0x8
 9d4:	48 83 c4 08          	add    rsp,0x8
 9d8:	c3                   	ret
