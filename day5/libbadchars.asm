
libbadchars.so:     ファイル形式 elf64-x86-64


セクション .init の逆アセンブル:

0000000000000750 <_init>:
 750:	48 83 ec 08          	sub    rsp,0x8
 754:	48 8b 05 8d 08 20 00 	mov    rax,QWORD PTR [rip+0x20088d]        # 200fe8 <__gmon_start__>
 75b:	48 85 c0             	test   rax,rax
 75e:	74 02                	je     762 <_init+0x12>
 760:	ff d0                	call   rax
 762:	48 83 c4 08          	add    rsp,0x8
 766:	c3                   	ret

セクション .plt の逆アセンブル:

0000000000000770 <.plt>:
 770:	ff 35 92 08 20 00    	push   QWORD PTR [rip+0x200892]        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 776:	ff 25 94 08 20 00    	jmp    QWORD PTR [rip+0x200894]        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 77c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000780 <puts@plt>:
 780:	ff 25 92 08 20 00    	jmp    QWORD PTR [rip+0x200892]        # 201018 <puts@GLIBC_2.2.5>
 786:	68 00 00 00 00       	push   0x0
 78b:	e9 e0 ff ff ff       	jmp    770 <.plt>

0000000000000790 <fclose@plt>:
 790:	ff 25 8a 08 20 00    	jmp    QWORD PTR [rip+0x20088a]        # 201020 <fclose@GLIBC_2.2.5>
 796:	68 01 00 00 00       	push   0x1
 79b:	e9 d0 ff ff ff       	jmp    770 <.plt>

00000000000007a0 <printf@plt>:
 7a0:	ff 25 82 08 20 00    	jmp    QWORD PTR [rip+0x200882]        # 201028 <printf@GLIBC_2.2.5>
 7a6:	68 02 00 00 00       	push   0x2
 7ab:	e9 c0 ff ff ff       	jmp    770 <.plt>

00000000000007b0 <memset@plt>:
 7b0:	ff 25 7a 08 20 00    	jmp    QWORD PTR [rip+0x20087a]        # 201030 <memset@GLIBC_2.2.5>
 7b6:	68 03 00 00 00       	push   0x3
 7bb:	e9 b0 ff ff ff       	jmp    770 <.plt>

00000000000007c0 <read@plt>:
 7c0:	ff 25 72 08 20 00    	jmp    QWORD PTR [rip+0x200872]        # 201038 <read@GLIBC_2.2.5>
 7c6:	68 04 00 00 00       	push   0x4
 7cb:	e9 a0 ff ff ff       	jmp    770 <.plt>

00000000000007d0 <fgets@plt>:
 7d0:	ff 25 6a 08 20 00    	jmp    QWORD PTR [rip+0x20086a]        # 201040 <fgets@GLIBC_2.2.5>
 7d6:	68 05 00 00 00       	push   0x5
 7db:	e9 90 ff ff ff       	jmp    770 <.plt>

00000000000007e0 <setvbuf@plt>:
 7e0:	ff 25 62 08 20 00    	jmp    QWORD PTR [rip+0x200862]        # 201048 <setvbuf@GLIBC_2.2.5>
 7e6:	68 06 00 00 00       	push   0x6
 7eb:	e9 80 ff ff ff       	jmp    770 <.plt>

00000000000007f0 <fopen@plt>:
 7f0:	ff 25 5a 08 20 00    	jmp    QWORD PTR [rip+0x20085a]        # 201050 <fopen@GLIBC_2.2.5>
 7f6:	68 07 00 00 00       	push   0x7
 7fb:	e9 70 ff ff ff       	jmp    770 <.plt>

0000000000000800 <exit@plt>:
 800:	ff 25 52 08 20 00    	jmp    QWORD PTR [rip+0x200852]        # 201058 <exit@GLIBC_2.2.5>
 806:	68 08 00 00 00       	push   0x8
 80b:	e9 60 ff ff ff       	jmp    770 <.plt>

セクション .plt.got の逆アセンブル:

0000000000000810 <__cxa_finalize@plt>:
 810:	ff 25 e2 07 20 00    	jmp    QWORD PTR [rip+0x2007e2]        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 816:	66 90                	xchg   ax,ax

セクション .text の逆アセンブル:

0000000000000820 <deregister_tm_clones>:
 820:	48 8d 3d 41 08 20 00 	lea    rdi,[rip+0x200841]        # 201068 <completed.7698>
 827:	55                   	push   rbp
 828:	48 8d 05 39 08 20 00 	lea    rax,[rip+0x200839]        # 201068 <completed.7698>
 82f:	48 39 f8             	cmp    rax,rdi
 832:	48 89 e5             	mov    rbp,rsp
 835:	74 19                	je     850 <deregister_tm_clones+0x30>
 837:	48 8b 05 92 07 20 00 	mov    rax,QWORD PTR [rip+0x200792]        # 200fd0 <_ITM_deregisterTMCloneTable>
 83e:	48 85 c0             	test   rax,rax
 841:	74 0d                	je     850 <deregister_tm_clones+0x30>
 843:	5d                   	pop    rbp
 844:	ff e0                	jmp    rax
 846:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
 84d:	00 00 00 
 850:	5d                   	pop    rbp
 851:	c3                   	ret
 852:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 856:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
 85d:	00 00 00 

0000000000000860 <register_tm_clones>:
 860:	48 8d 3d 01 08 20 00 	lea    rdi,[rip+0x200801]        # 201068 <completed.7698>
 867:	48 8d 35 fa 07 20 00 	lea    rsi,[rip+0x2007fa]        # 201068 <completed.7698>
 86e:	55                   	push   rbp
 86f:	48 29 fe             	sub    rsi,rdi
 872:	48 89 e5             	mov    rbp,rsp
 875:	48 c1 fe 03          	sar    rsi,0x3
 879:	48 89 f0             	mov    rax,rsi
 87c:	48 c1 e8 3f          	shr    rax,0x3f
 880:	48 01 c6             	add    rsi,rax
 883:	48 d1 fe             	sar    rsi,1
 886:	74 18                	je     8a0 <register_tm_clones+0x40>
 888:	48 8b 05 61 07 20 00 	mov    rax,QWORD PTR [rip+0x200761]        # 200ff0 <_ITM_registerTMCloneTable>
 88f:	48 85 c0             	test   rax,rax
 892:	74 0c                	je     8a0 <register_tm_clones+0x40>
 894:	5d                   	pop    rbp
 895:	ff e0                	jmp    rax
 897:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 89e:	00 00 
 8a0:	5d                   	pop    rbp
 8a1:	c3                   	ret
 8a2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 8a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
 8ad:	00 00 00 

00000000000008b0 <__do_global_dtors_aux>:
 8b0:	80 3d b1 07 20 00 00 	cmp    BYTE PTR [rip+0x2007b1],0x0        # 201068 <completed.7698>
 8b7:	75 2f                	jne    8e8 <__do_global_dtors_aux+0x38>
 8b9:	48 83 3d 37 07 20 00 	cmp    QWORD PTR [rip+0x200737],0x0        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 8c0:	00 
 8c1:	55                   	push   rbp
 8c2:	48 89 e5             	mov    rbp,rsp
 8c5:	74 0c                	je     8d3 <__do_global_dtors_aux+0x23>
 8c7:	48 8b 3d 92 07 20 00 	mov    rdi,QWORD PTR [rip+0x200792]        # 201060 <__dso_handle>
 8ce:	e8 3d ff ff ff       	call   810 <__cxa_finalize@plt>
 8d3:	e8 48 ff ff ff       	call   820 <deregister_tm_clones>
 8d8:	c6 05 89 07 20 00 01 	mov    BYTE PTR [rip+0x200789],0x1        # 201068 <completed.7698>
 8df:	5d                   	pop    rbp
 8e0:	c3                   	ret
 8e1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 8e8:	f3 c3                	repz ret
 8ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000008f0 <frame_dummy>:
 8f0:	55                   	push   rbp
 8f1:	48 89 e5             	mov    rbp,rsp
 8f4:	5d                   	pop    rbp
 8f5:	e9 66 ff ff ff       	jmp    860 <register_tm_clones>

00000000000008fa <pwnme>:
 8fa:	55                   	push   rbp
 8fb:	48 89 e5             	mov    rbp,rsp
 8fe:	48 83 ec 40          	sub    rsp,0x40
 902:	48 8b 05 cf 06 20 00 	mov    rax,QWORD PTR [rip+0x2006cf]        # 200fd8 <stdout@GLIBC_2.2.5>
 909:	48 8b 00             	mov    rax,QWORD PTR [rax]
 90c:	b9 00 00 00 00       	mov    ecx,0x0
 911:	ba 02 00 00 00       	mov    edx,0x2
 916:	be 00 00 00 00       	mov    esi,0x0
 91b:	48 89 c7             	mov    rdi,rax
 91e:	e8 bd fe ff ff       	call   7e0 <setvbuf@plt>
 923:	48 8d 3d 7a 01 00 00 	lea    rdi,[rip+0x17a]        # aa4 <badcharacters+0x4>
 92a:	e8 51 fe ff ff       	call   780 <puts@plt>
 92f:	48 8d 3d 87 01 00 00 	lea    rdi,[rip+0x187]        # abd <badcharacters+0x1d>
 936:	e8 45 fe ff ff       	call   780 <puts@plt>
 93b:	48 8d 45 c0          	lea    rax,[rbp-0x40]
 93f:	48 83 c0 20          	add    rax,0x20
 943:	ba 20 00 00 00       	mov    edx,0x20
 948:	be 00 00 00 00       	mov    esi,0x0
 94d:	48 89 c7             	mov    rdi,rax
 950:	e8 5b fe ff ff       	call   7b0 <memset@plt>
 955:	48 8d 3d 6c 01 00 00 	lea    rdi,[rip+0x16c]        # ac8 <badcharacters+0x28>
 95c:	e8 1f fe ff ff       	call   780 <puts@plt>
 961:	48 8d 3d 81 01 00 00 	lea    rdi,[rip+0x181]        # ae9 <badcharacters+0x49>
 968:	b8 00 00 00 00       	mov    eax,0x0
 96d:	e8 2e fe ff ff       	call   7a0 <printf@plt>
 972:	48 8d 45 c0          	lea    rax,[rbp-0x40]
 976:	48 83 c0 20          	add    rax,0x20
 97a:	ba 00 02 00 00       	mov    edx,0x200
 97f:	48 89 c6             	mov    rsi,rax
 982:	bf 00 00 00 00       	mov    edi,0x0
 987:	e8 34 fe ff ff       	call   7c0 <read@plt>
 98c:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax # 読んだバイト数
 990:	48 c7 45 c8 00 00 00 	mov    QWORD PTR [rbp-0x38],0x0
 997:	00 
 998:	eb 51                	jmp    9eb <pwnme+0xf1>
 99a:	48 c7 45 d0 00 00 00 	mov    QWORD PTR [rbp-0x30],0x0
 9a1:	00 
 9a2:	eb 31                	jmp    9d5 <pwnme+0xdb>
 9a4:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
 9a8:	0f b6 4c 05 e0       	movzx  ecx,BYTE PTR [rbp+rax*1-0x20]
 9ad:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 9b1:	48 8b 15 28 06 20 00 	mov    rdx,QWORD PTR [rip+0x200628]        # 200fe0 <badcharacters@@Base+0x200540>
 9b8:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
 9bc:	38 c1                	cmp    cl,al
 9be:	75 09                	jne    9c9 <pwnme+0xcf>
 9c0:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
 9c4:	c6 44 05 e0 eb       	mov    BYTE PTR [rbp+rax*1-0x20],0xeb
 9c9:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 9cd:	48 83 c0 01          	add    rax,0x1
 9d1:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
 9d5:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 9d9:	48 83 f8 03          	cmp    rax,0x3
 9dd:	76 c5                	jbe    9a4 <pwnme+0xaa>
 9df:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
 9e3:	48 83 c0 01          	add    rax,0x1
 9e7:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
 9eb:	48 8b 55 c8          	mov    rdx,QWORD PTR [rbp-0x38]
 9ef:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
 9f3:	48 39 c2             	cmp    rdx,rax
 9f6:	72 a2                	jb     99a <pwnme+0xa0>
 9f8:	48 8d 3d ed 00 00 00 	lea    rdi,[rip+0xed]        # aec <badcharacters+0x4c>
 9ff:	e8 7c fd ff ff       	call   780 <puts@plt>
 a04:	90                   	nop
 a05:	c9                   	leave
 a06:	c3                   	ret

0000000000000a07 <print_file>:
 a07:	55                   	push   rbp
 a08:	48 89 e5             	mov    rbp,rsp
 a0b:	48 83 ec 40          	sub    rsp,0x40
 a0f:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
 a13:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
 a1a:	00 
 a1b:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
 a1f:	48 8d 35 d1 00 00 00 	lea    rsi,[rip+0xd1]        # af7 <badcharacters+0x57>
 a26:	48 89 c7             	mov    rdi,rax
 a29:	e8 c2 fd ff ff       	call   7f0 <fopen@plt>
 a2e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 a32:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 a37:	75 22                	jne    a5b <print_file+0x54>
 a39:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
 a3d:	48 89 c6             	mov    rsi,rax
 a40:	48 8d 3d b2 00 00 00 	lea    rdi,[rip+0xb2]        # af9 <badcharacters+0x59>
 a47:	b8 00 00 00 00       	mov    eax,0x0
 a4c:	e8 4f fd ff ff       	call   7a0 <printf@plt>
 a51:	bf 01 00 00 00       	mov    edi,0x1
 a56:	e8 a5 fd ff ff       	call   800 <exit@plt>
 a5b:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 a5f:	48 8d 45 d0          	lea    rax,[rbp-0x30]
 a63:	be 21 00 00 00       	mov    esi,0x21
 a68:	48 89 c7             	mov    rdi,rax
 a6b:	e8 60 fd ff ff       	call   7d0 <fgets@plt>
 a70:	48 8d 45 d0          	lea    rax,[rbp-0x30]
 a74:	48 89 c7             	mov    rdi,rax
 a77:	e8 04 fd ff ff       	call   780 <puts@plt>
 a7c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 a80:	48 89 c7             	mov    rdi,rax
 a83:	e8 08 fd ff ff       	call   790 <fclose@plt>
 a88:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
 a8f:	00 
 a90:	90                   	nop
 a91:	c9                   	leave
 a92:	c3                   	ret

セクション .fini の逆アセンブル:

0000000000000a94 <_fini>:
 a94:	48 83 ec 08          	sub    rsp,0x8
 a98:	48 83 c4 08          	add    rsp,0x8
 a9c:	c3                   	ret
