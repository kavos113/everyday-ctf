
libret2csu.so:     ファイル形式 elf64-x86-64


セクション .init の逆アセンブル:

0000000000000778 <_init>:
 778:	48 83 ec 08          	sub    rsp,0x8
 77c:	48 8b 05 65 18 20 00 	mov    rax,QWORD PTR [rip+0x201865]        # 201fe8 <__gmon_start__>
 783:	48 85 c0             	test   rax,rax
 786:	74 02                	je     78a <_init+0x12>
 788:	ff d0                	call   rax
 78a:	48 83 c4 08          	add    rsp,0x8
 78e:	c3                   	ret

セクション .plt の逆アセンブル:

0000000000000790 <.plt>:
 790:	ff 35 72 18 20 00    	push   QWORD PTR [rip+0x201872]        # 202008 <_GLOBAL_OFFSET_TABLE_+0x8>
 796:	ff 25 74 18 20 00    	jmp    QWORD PTR [rip+0x201874]        # 202010 <_GLOBAL_OFFSET_TABLE_+0x10>
 79c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000007a0 <puts@plt>:
 7a0:	ff 25 72 18 20 00    	jmp    QWORD PTR [rip+0x201872]        # 202018 <puts@GLIBC_2.2.5>
 7a6:	68 00 00 00 00       	push   0x0
 7ab:	e9 e0 ff ff ff       	jmp    790 <.plt>

00000000000007b0 <fclose@plt>:
 7b0:	ff 25 6a 18 20 00    	jmp    QWORD PTR [rip+0x20186a]        # 202020 <fclose@GLIBC_2.2.5>
 7b6:	68 01 00 00 00       	push   0x1
 7bb:	e9 d0 ff ff ff       	jmp    790 <.plt>

00000000000007c0 <printf@plt>:
 7c0:	ff 25 62 18 20 00    	jmp    QWORD PTR [rip+0x201862]        # 202028 <printf@GLIBC_2.2.5>
 7c6:	68 02 00 00 00       	push   0x2
 7cb:	e9 c0 ff ff ff       	jmp    790 <.plt>

00000000000007d0 <memset@plt>:
 7d0:	ff 25 5a 18 20 00    	jmp    QWORD PTR [rip+0x20185a]        # 202030 <memset@GLIBC_2.2.5>
 7d6:	68 03 00 00 00       	push   0x3
 7db:	e9 b0 ff ff ff       	jmp    790 <.plt>

00000000000007e0 <fgetc@plt>:
 7e0:	ff 25 52 18 20 00    	jmp    QWORD PTR [rip+0x201852]        # 202038 <fgetc@GLIBC_2.2.5>
 7e6:	68 04 00 00 00       	push   0x4
 7eb:	e9 a0 ff ff ff       	jmp    790 <.plt>

00000000000007f0 <read@plt>:
 7f0:	ff 25 4a 18 20 00    	jmp    QWORD PTR [rip+0x20184a]        # 202040 <read@GLIBC_2.2.5>
 7f6:	68 05 00 00 00       	push   0x5
 7fb:	e9 90 ff ff ff       	jmp    790 <.plt>

0000000000000800 <fgets@plt>:
 800:	ff 25 42 18 20 00    	jmp    QWORD PTR [rip+0x201842]        # 202048 <fgets@GLIBC_2.2.5>
 806:	68 06 00 00 00       	push   0x6
 80b:	e9 80 ff ff ff       	jmp    790 <.plt>

0000000000000810 <malloc@plt>:
 810:	ff 25 3a 18 20 00    	jmp    QWORD PTR [rip+0x20183a]        # 202050 <malloc@GLIBC_2.2.5>
 816:	68 07 00 00 00       	push   0x7
 81b:	e9 70 ff ff ff       	jmp    790 <.plt>

0000000000000820 <setvbuf@plt>:
 820:	ff 25 32 18 20 00    	jmp    QWORD PTR [rip+0x201832]        # 202058 <setvbuf@GLIBC_2.2.5>
 826:	68 08 00 00 00       	push   0x8
 82b:	e9 60 ff ff ff       	jmp    790 <.plt>

0000000000000830 <fopen@plt>:
 830:	ff 25 2a 18 20 00    	jmp    QWORD PTR [rip+0x20182a]        # 202060 <fopen@GLIBC_2.2.5>
 836:	68 09 00 00 00       	push   0x9
 83b:	e9 50 ff ff ff       	jmp    790 <.plt>

0000000000000840 <exit@plt>:
 840:	ff 25 22 18 20 00    	jmp    QWORD PTR [rip+0x201822]        # 202068 <exit@GLIBC_2.2.5>
 846:	68 0a 00 00 00       	push   0xa
 84b:	e9 40 ff ff ff       	jmp    790 <.plt>

セクション .plt.got の逆アセンブル:

0000000000000850 <__cxa_finalize@plt>:
 850:	ff 25 a2 17 20 00    	jmp    QWORD PTR [rip+0x2017a2]        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 856:	66 90                	xchg   ax,ax

セクション .text の逆アセンブル:

0000000000000860 <deregister_tm_clones>:
 860:	48 8d 3d 11 18 20 00 	lea    rdi,[rip+0x201811]        # 202078 <completed.7698>
 867:	55                   	push   rbp
 868:	48 8d 05 09 18 20 00 	lea    rax,[rip+0x201809]        # 202078 <completed.7698>
 86f:	48 39 f8             	cmp    rax,rdi
 872:	48 89 e5             	mov    rbp,rsp
 875:	74 19                	je     890 <deregister_tm_clones+0x30>
 877:	48 8b 05 5a 17 20 00 	mov    rax,QWORD PTR [rip+0x20175a]        # 201fd8 <_ITM_deregisterTMCloneTable>
 87e:	48 85 c0             	test   rax,rax
 881:	74 0d                	je     890 <deregister_tm_clones+0x30>
 883:	5d                   	pop    rbp
 884:	ff e0                	jmp    rax
 886:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
 88d:	00 00 00 
 890:	5d                   	pop    rbp
 891:	c3                   	ret
 892:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 896:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
 89d:	00 00 00 

00000000000008a0 <register_tm_clones>:
 8a0:	48 8d 3d d1 17 20 00 	lea    rdi,[rip+0x2017d1]        # 202078 <completed.7698>
 8a7:	48 8d 35 ca 17 20 00 	lea    rsi,[rip+0x2017ca]        # 202078 <completed.7698>
 8ae:	55                   	push   rbp
 8af:	48 29 fe             	sub    rsi,rdi
 8b2:	48 89 e5             	mov    rbp,rsp
 8b5:	48 c1 fe 03          	sar    rsi,0x3
 8b9:	48 89 f0             	mov    rax,rsi
 8bc:	48 c1 e8 3f          	shr    rax,0x3f
 8c0:	48 01 c6             	add    rsi,rax
 8c3:	48 d1 fe             	sar    rsi,1
 8c6:	74 18                	je     8e0 <register_tm_clones+0x40>
 8c8:	48 8b 05 21 17 20 00 	mov    rax,QWORD PTR [rip+0x201721]        # 201ff0 <_ITM_registerTMCloneTable>
 8cf:	48 85 c0             	test   rax,rax
 8d2:	74 0c                	je     8e0 <register_tm_clones+0x40>
 8d4:	5d                   	pop    rbp
 8d5:	ff e0                	jmp    rax
 8d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 8de:	00 00 
 8e0:	5d                   	pop    rbp
 8e1:	c3                   	ret
 8e2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 8e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
 8ed:	00 00 00 

00000000000008f0 <__do_global_dtors_aux>:
 8f0:	80 3d 81 17 20 00 00 	cmp    BYTE PTR [rip+0x201781],0x0        # 202078 <completed.7698>
 8f7:	75 2f                	jne    928 <__do_global_dtors_aux+0x38>
 8f9:	48 83 3d f7 16 20 00 	cmp    QWORD PTR [rip+0x2016f7],0x0        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 900:	00 
 901:	55                   	push   rbp
 902:	48 89 e5             	mov    rbp,rsp
 905:	74 0c                	je     913 <__do_global_dtors_aux+0x23>
 907:	48 8b 3d 62 17 20 00 	mov    rdi,QWORD PTR [rip+0x201762]        # 202070 <__dso_handle>
 90e:	e8 3d ff ff ff       	call   850 <__cxa_finalize@plt>
 913:	e8 48 ff ff ff       	call   860 <deregister_tm_clones>
 918:	c6 05 59 17 20 00 01 	mov    BYTE PTR [rip+0x201759],0x1        # 202078 <completed.7698>
 91f:	5d                   	pop    rbp
 920:	c3                   	ret
 921:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 928:	f3 c3                	repz ret
 92a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000930 <frame_dummy>:
 930:	55                   	push   rbp
 931:	48 89 e5             	mov    rbp,rsp
 934:	5d                   	pop    rbp
 935:	e9 66 ff ff ff       	jmp    8a0 <register_tm_clones>

000000000000093a <pwnme>:
 93a:	55                   	push   rbp
 93b:	48 89 e5             	mov    rbp,rsp
 93e:	48 83 ec 20          	sub    rsp,0x20
 942:	48 8b 05 97 16 20 00 	mov    rax,QWORD PTR [rip+0x201697]        # 201fe0 <stdout@GLIBC_2.2.5>
 949:	48 8b 00             	mov    rax,QWORD PTR [rax]
 94c:	b9 00 00 00 00       	mov    ecx,0x0
 951:	ba 02 00 00 00       	mov    edx,0x2
 956:	be 00 00 00 00       	mov    esi,0x0
 95b:	48 89 c7             	mov    rdi,rax
 95e:	e8 bd fe ff ff       	call   820 <setvbuf@plt>
 963:	48 8d 3d 1e 03 00 00 	lea    rdi,[rip+0x31e]        # c88 <_fini+0xc>
 96a:	e8 31 fe ff ff       	call   7a0 <puts@plt>
 96f:	48 8d 3d 2a 03 00 00 	lea    rdi,[rip+0x32a]        # ca0 <_fini+0x24>
 976:	e8 25 fe ff ff       	call   7a0 <puts@plt>
 97b:	48 8d 45 e0          	lea    rax,[rbp-0x20]
 97f:	ba 20 00 00 00       	mov    edx,0x20
 984:	be 00 00 00 00       	mov    esi,0x0
 989:	48 89 c7             	mov    rdi,rax
 98c:	e8 3f fe ff ff       	call   7d0 <memset@plt>
 991:	48 8d 3d 10 03 00 00 	lea    rdi,[rip+0x310]        # ca8 <_fini+0x2c>
 998:	e8 03 fe ff ff       	call   7a0 <puts@plt>
 99d:	48 8d 3d 6e 03 00 00 	lea    rdi,[rip+0x36e]        # d12 <_fini+0x96>
 9a4:	b8 00 00 00 00       	mov    eax,0x0
 9a9:	e8 12 fe ff ff       	call   7c0 <printf@plt>
 9ae:	48 8d 45 e0          	lea    rax,[rbp-0x20]
 9b2:	ba 00 02 00 00       	mov    edx,0x200
 9b7:	48 89 c6             	mov    rsi,rax
 9ba:	bf 00 00 00 00       	mov    edi,0x0
 9bf:	e8 2c fe ff ff       	call   7f0 <read@plt>
 9c4:	48 8d 3d 4a 03 00 00 	lea    rdi,[rip+0x34a]        # d15 <_fini+0x99>
 9cb:	e8 d0 fd ff ff       	call   7a0 <puts@plt>
 9d0:	90                   	nop
 9d1:	c9                   	leave
 9d2:	c3                   	ret

00000000000009d3 <ret2win>:
 9d3:	55                   	push   rbp
 9d4:	48 89 e5             	mov    rbp,rsp
 9d7:	48 83 ec 30          	sub    rsp,0x30
 9db:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 9df:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
 9e3:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
 9e7:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
 9ee:	00 
 9ef:	48 b8 ef be ad de ef 	movabs rax,0xdeadbeefdeadbeef
 9f6:	be ad de 
 9f9:	48 39 45 e8          	cmp    QWORD PTR [rbp-0x18],rax
 9fd:	0f 85 d7 00 00 00    	jne    ada <ret2win+0x107>
 a03:	48 b8 be ba fe ca be 	movabs rax,0xcafebabecafebabe
 a0a:	ba fe ca 
 a0d:	48 39 45 e0          	cmp    QWORD PTR [rbp-0x20],rax
 a11:	0f 85 c3 00 00 00    	jne    ada <ret2win+0x107>
 a17:	48 b8 0d f0 0d d0 0d 	movabs rax,0xd00df00dd00df00d
 a1e:	f0 0d d0 
 a21:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
 a25:	0f 85 af 00 00 00    	jne    ada <ret2win+0x107>
 a2b:	48 8d 35 ee 02 00 00 	lea    rsi,[rip+0x2ee]        # d20 <_fini+0xa4>
 a32:	48 8d 3d e9 02 00 00 	lea    rdi,[rip+0x2e9]        # d22 <_fini+0xa6>
 a39:	e8 f2 fd ff ff       	call   830 <fopen@plt>
 a3e:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
 a42:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
 a47:	75 16                	jne    a5f <ret2win+0x8c>
 a49:	48 8d 3d e8 02 00 00 	lea    rdi,[rip+0x2e8]        # d38 <_fini+0xbc>
 a50:	e8 4b fd ff ff       	call   7a0 <puts@plt>
 a55:	bf 01 00 00 00       	mov    edi,0x1
 a5a:	e8 e1 fd ff ff       	call   840 <exit@plt>
 a5f:	bf 21 00 00 00       	mov    edi,0x21
 a64:	e8 a7 fd ff ff       	call   810 <malloc@plt>
 a69:	48 89 05 10 16 20 00 	mov    QWORD PTR [rip+0x201610],rax        # 202080 <g_buf>
 a70:	48 8b 05 09 16 20 00 	mov    rax,QWORD PTR [rip+0x201609]        # 202080 <g_buf>
 a77:	48 85 c0             	test   rax,rax
 a7a:	75 16                	jne    a92 <ret2win+0xbf>
 a7c:	48 8d 3d d7 02 00 00 	lea    rdi,[rip+0x2d7]        # d5a <_fini+0xde>
 a83:	e8 18 fd ff ff       	call   7a0 <puts@plt>
 a88:	bf 01 00 00 00       	mov    edi,0x1
 a8d:	e8 ae fd ff ff       	call   840 <exit@plt>
 a92:	48 8b 05 e7 15 20 00 	mov    rax,QWORD PTR [rip+0x2015e7]        # 202080 <g_buf>
 a99:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
 a9d:	be 21 00 00 00       	mov    esi,0x21
 aa2:	48 89 c7             	mov    rdi,rax
 aa5:	e8 56 fd ff ff       	call   800 <fgets@plt>
 aaa:	48 89 05 cf 15 20 00 	mov    QWORD PTR [rip+0x2015cf],rax        # 202080 <g_buf>
 ab1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 ab5:	48 89 c7             	mov    rdi,rax
 ab8:	e8 f3 fc ff ff       	call   7b0 <fclose@plt>
 abd:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
 ac4:	00 
 ac5:	48 b8 ef be ad de ef 	movabs rax,0xdeadbeefdeadbeef
 acc:	be ad de 
 acf:	48 39 45 e8          	cmp    QWORD PTR [rbp-0x18],rax
 ad3:	74 1b                	je     af0 <ret2win+0x11d>
 ad5:	e9 c3 00 00 00       	jmp    b9d <ret2win+0x1ca>
 ada:	48 8d 3d 93 02 00 00 	lea    rdi,[rip+0x293]        # d74 <_fini+0xf8>
 ae1:	e8 ba fc ff ff       	call   7a0 <puts@plt>
 ae6:	bf 01 00 00 00       	mov    edi,0x1
 aeb:	e8 50 fd ff ff       	call   840 <exit@plt>
 af0:	48 b8 be ba fe ca be 	movabs rax,0xcafebabecafebabe
 af7:	ba fe ca 
 afa:	48 39 45 e0          	cmp    QWORD PTR [rbp-0x20],rax
 afe:	0f 85 99 00 00 00    	jne    b9d <ret2win+0x1ca>
 b04:	48 b8 0d f0 0d d0 0d 	movabs rax,0xd00df00dd00df00d
 b0b:	f0 0d d0 
 b0e:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
 b12:	0f 85 85 00 00 00    	jne    b9d <ret2win+0x1ca>
 b18:	48 8d 35 01 02 00 00 	lea    rsi,[rip+0x201]        # d20 <_fini+0xa4>
 b1f:	48 8d 3d 63 02 00 00 	lea    rdi,[rip+0x263]        # d89 <_fini+0x10d>
 b26:	e8 05 fd ff ff       	call   830 <fopen@plt>
 b2b:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
 b2f:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
 b34:	75 16                	jne    b4c <ret2win+0x179>
 b36:	48 8d 3d 54 02 00 00 	lea    rdi,[rip+0x254]        # d91 <_fini+0x115>
 b3d:	e8 5e fc ff ff       	call   7a0 <puts@plt>
 b42:	bf 01 00 00 00       	mov    edi,0x1
 b47:	e8 f4 fc ff ff       	call   840 <exit@plt>
 b4c:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
 b53:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
 b5a:	eb 39                	jmp    b95 <ret2win+0x1c2>
 b5c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 b60:	48 89 c7             	mov    rdi,rax
 b63:	e8 78 fc ff ff       	call   7e0 <fgetc@plt>
 b68:	89 c6                	mov    esi,eax
 b6a:	48 8b 15 0f 15 20 00 	mov    rdx,QWORD PTR [rip+0x20150f]        # 202080 <g_buf>
 b71:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 b74:	48 98                	cdqe
 b76:	48 01 d0             	add    rax,rdx
 b79:	0f b6 08             	movzx  ecx,BYTE PTR [rax]
 b7c:	48 8b 15 fd 14 20 00 	mov    rdx,QWORD PTR [rip+0x2014fd]        # 202080 <g_buf>
 b83:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 b86:	48 98                	cdqe
 b88:	48 01 d0             	add    rax,rdx
 b8b:	31 f1                	xor    ecx,esi
 b8d:	89 ca                	mov    edx,ecx
 b8f:	88 10                	mov    BYTE PTR [rax],dl
 b91:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
 b95:	83 7d fc 1f          	cmp    DWORD PTR [rbp-0x4],0x1f
 b99:	7e c1                	jle    b5c <ret2win+0x189>
 b9b:	eb 16                	jmp    bb3 <ret2win+0x1e0>
 b9d:	48 8d 3d d0 01 00 00 	lea    rdi,[rip+0x1d0]        # d74 <_fini+0xf8>
 ba4:	e8 f7 fb ff ff       	call   7a0 <puts@plt>
 ba9:	bf 01 00 00 00       	mov    edi,0x1
 bae:	e8 8d fc ff ff       	call   840 <exit@plt>
 bb3:	48 b8 ef be ad de ef 	movabs rax,0xdeadbeefdeadbeef
 bba:	be ad de 
 bbd:	48 39 45 e8          	cmp    QWORD PTR [rbp-0x18],rax
 bc1:	0f 85 9d 00 00 00    	jne    c64 <ret2win+0x291>
 bc7:	48 b8 be ba fe ca be 	movabs rax,0xcafebabecafebabe
 bce:	ba fe ca 
 bd1:	48 39 45 e0          	cmp    QWORD PTR [rbp-0x20],rax
 bd5:	0f 85 89 00 00 00    	jne    c64 <ret2win+0x291>
 bdb:	48 b8 0d f0 0d d0 0d 	movabs rax,0xd00df00dd00df00d
 be2:	f0 0d d0 
 be5:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
 be9:	75 79                	jne    c64 <ret2win+0x291>
 beb:	48 8b 05 8e 14 20 00 	mov    rax,QWORD PTR [rip+0x20148e]        # 202080 <g_buf>
 bf2:	48 83 c0 04          	add    rax,0x4
 bf6:	48 8b 00             	mov    rax,QWORD PTR [rax]
 bf9:	48 8b 15 80 14 20 00 	mov    rdx,QWORD PTR [rip+0x201480]        # 202080 <g_buf>
 c00:	48 83 c2 04          	add    rdx,0x4
 c04:	48 33 45 e8          	xor    rax,QWORD PTR [rbp-0x18]
 c08:	48 89 02             	mov    QWORD PTR [rdx],rax
 c0b:	48 8b 05 6e 14 20 00 	mov    rax,QWORD PTR [rip+0x20146e]        # 202080 <g_buf>
 c12:	48 83 c0 0c          	add    rax,0xc
 c16:	48 8b 00             	mov    rax,QWORD PTR [rax]
 c19:	48 8b 15 60 14 20 00 	mov    rdx,QWORD PTR [rip+0x201460]        # 202080 <g_buf>
 c20:	48 83 c2 0c          	add    rdx,0xc
 c24:	48 33 45 e0          	xor    rax,QWORD PTR [rbp-0x20]
 c28:	48 89 02             	mov    QWORD PTR [rdx],rax
 c2b:	48 8b 05 4e 14 20 00 	mov    rax,QWORD PTR [rip+0x20144e]        # 202080 <g_buf>
 c32:	48 83 c0 14          	add    rax,0x14
 c36:	48 8b 00             	mov    rax,QWORD PTR [rax]
 c39:	48 8b 15 40 14 20 00 	mov    rdx,QWORD PTR [rip+0x201440]        # 202080 <g_buf>
 c40:	48 83 c2 14          	add    rdx,0x14
 c44:	48 33 45 d8          	xor    rax,QWORD PTR [rbp-0x28]
 c48:	48 89 02             	mov    QWORD PTR [rdx],rax
 c4b:	48 8b 05 2e 14 20 00 	mov    rax,QWORD PTR [rip+0x20142e]        # 202080 <g_buf>
 c52:	48 89 c7             	mov    rdi,rax
 c55:	e8 46 fb ff ff       	call   7a0 <puts@plt>
 c5a:	bf 00 00 00 00       	mov    edi,0x0
 c5f:	e8 dc fb ff ff       	call   840 <exit@plt>
 c64:	48 8d 3d 09 01 00 00 	lea    rdi,[rip+0x109]        # d74 <_fini+0xf8>
 c6b:	e8 30 fb ff ff       	call   7a0 <puts@plt>
 c70:	bf 01 00 00 00       	mov    edi,0x1
 c75:	e8 c6 fb ff ff       	call   840 <exit@plt>

セクション .fini の逆アセンブル:

0000000000000c7c <_fini>:
 c7c:	48 83 ec 08          	sub    rsp,0x8
 c80:	48 83 c4 08          	add    rsp,0x8
 c84:	c3                   	ret
