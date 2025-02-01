
libcallme.so:     ファイル形式 elf64-x86-64


セクション .init の逆アセンブル:

0000000000000690 <_init>:
 690:	48 83 ec 08          	sub    rsp,0x8
 694:	48 8b 05 4d 09 20 00 	mov    rax,QWORD PTR [rip+0x20094d]        # 200fe8 <__gmon_start__>
 69b:	48 85 c0             	test   rax,rax
 69e:	74 02                	je     6a2 <_init+0x12>
 6a0:	ff d0                	call   rax
 6a2:	48 83 c4 08          	add    rsp,0x8
 6a6:	c3                   	ret

セクション .plt の逆アセンブル:

00000000000006b0 <.plt>:
 6b0:	ff 35 52 09 20 00    	push   QWORD PTR [rip+0x200952]        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 6b6:	ff 25 54 09 20 00    	jmp    QWORD PTR [rip+0x200954]        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 6bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000006c0 <puts@plt>:
 6c0:	ff 25 52 09 20 00    	jmp    QWORD PTR [rip+0x200952]        # 201018 <puts@GLIBC_2.2.5>
 6c6:	68 00 00 00 00       	push   0x0
 6cb:	e9 e0 ff ff ff       	jmp    6b0 <.plt>

00000000000006d0 <fclose@plt>:
 6d0:	ff 25 4a 09 20 00    	jmp    QWORD PTR [rip+0x20094a]        # 201020 <fclose@GLIBC_2.2.5>
 6d6:	68 01 00 00 00       	push   0x1
 6db:	e9 d0 ff ff ff       	jmp    6b0 <.plt>

00000000000006e0 <fgetc@plt>:
 6e0:	ff 25 42 09 20 00    	jmp    QWORD PTR [rip+0x200942]        # 201028 <fgetc@GLIBC_2.2.5>
 6e6:	68 02 00 00 00       	push   0x2
 6eb:	e9 c0 ff ff ff       	jmp    6b0 <.plt>

00000000000006f0 <fgets@plt>:
 6f0:	ff 25 3a 09 20 00    	jmp    QWORD PTR [rip+0x20093a]        # 201030 <fgets@GLIBC_2.2.5>
 6f6:	68 03 00 00 00       	push   0x3
 6fb:	e9 b0 ff ff ff       	jmp    6b0 <.plt>

0000000000000700 <malloc@plt>:
 700:	ff 25 32 09 20 00    	jmp    QWORD PTR [rip+0x200932]        # 201038 <malloc@GLIBC_2.2.5>
 706:	68 04 00 00 00       	push   0x4
 70b:	e9 a0 ff ff ff       	jmp    6b0 <.plt>

0000000000000710 <fopen@plt>:
 710:	ff 25 2a 09 20 00    	jmp    QWORD PTR [rip+0x20092a]        # 201040 <fopen@GLIBC_2.2.5>
 716:	68 05 00 00 00       	push   0x5
 71b:	e9 90 ff ff ff       	jmp    6b0 <.plt>

0000000000000720 <exit@plt>:
 720:	ff 25 22 09 20 00    	jmp    QWORD PTR [rip+0x200922]        # 201048 <exit@GLIBC_2.2.5>
 726:	68 06 00 00 00       	push   0x6
 72b:	e9 80 ff ff ff       	jmp    6b0 <.plt>

セクション .plt.got の逆アセンブル:

0000000000000730 <__cxa_finalize@plt>:
 730:	ff 25 c2 08 20 00    	jmp    QWORD PTR [rip+0x2008c2]        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 736:	66 90                	xchg   ax,ax

セクション .text の逆アセンブル:

0000000000000740 <deregister_tm_clones>:
 740:	48 8d 3d 11 09 20 00 	lea    rdi,[rip+0x200911]        # 201058 <completed.7698>
 747:	55                   	push   rbp
 748:	48 8d 05 09 09 20 00 	lea    rax,[rip+0x200909]        # 201058 <completed.7698>
 74f:	48 39 f8             	cmp    rax,rdi
 752:	48 89 e5             	mov    rbp,rsp
 755:	74 19                	je     770 <deregister_tm_clones+0x30>
 757:	48 8b 05 82 08 20 00 	mov    rax,QWORD PTR [rip+0x200882]        # 200fe0 <_ITM_deregisterTMCloneTable>
 75e:	48 85 c0             	test   rax,rax
 761:	74 0d                	je     770 <deregister_tm_clones+0x30>
 763:	5d                   	pop    rbp
 764:	ff e0                	jmp    rax
 766:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
 76d:	00 00 00 
 770:	5d                   	pop    rbp
 771:	c3                   	ret
 772:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 776:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
 77d:	00 00 00 

0000000000000780 <register_tm_clones>:
 780:	48 8d 3d d1 08 20 00 	lea    rdi,[rip+0x2008d1]        # 201058 <completed.7698>
 787:	48 8d 35 ca 08 20 00 	lea    rsi,[rip+0x2008ca]        # 201058 <completed.7698>
 78e:	55                   	push   rbp
 78f:	48 29 fe             	sub    rsi,rdi
 792:	48 89 e5             	mov    rbp,rsp
 795:	48 c1 fe 03          	sar    rsi,0x3
 799:	48 89 f0             	mov    rax,rsi
 79c:	48 c1 e8 3f          	shr    rax,0x3f
 7a0:	48 01 c6             	add    rsi,rax
 7a3:	48 d1 fe             	sar    rsi,1
 7a6:	74 18                	je     7c0 <register_tm_clones+0x40>
 7a8:	48 8b 05 41 08 20 00 	mov    rax,QWORD PTR [rip+0x200841]        # 200ff0 <_ITM_registerTMCloneTable>
 7af:	48 85 c0             	test   rax,rax
 7b2:	74 0c                	je     7c0 <register_tm_clones+0x40>
 7b4:	5d                   	pop    rbp
 7b5:	ff e0                	jmp    rax
 7b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 7be:	00 00 
 7c0:	5d                   	pop    rbp
 7c1:	c3                   	ret
 7c2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 7c6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
 7cd:	00 00 00 

00000000000007d0 <__do_global_dtors_aux>:
 7d0:	80 3d 81 08 20 00 00 	cmp    BYTE PTR [rip+0x200881],0x0        # 201058 <completed.7698>
 7d7:	75 2f                	jne    808 <__do_global_dtors_aux+0x38>
 7d9:	48 83 3d 17 08 20 00 	cmp    QWORD PTR [rip+0x200817],0x0        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 7e0:	00 
 7e1:	55                   	push   rbp
 7e2:	48 89 e5             	mov    rbp,rsp
 7e5:	74 0c                	je     7f3 <__do_global_dtors_aux+0x23>
 7e7:	48 8b 3d 62 08 20 00 	mov    rdi,QWORD PTR [rip+0x200862]        # 201050 <__dso_handle>
 7ee:	e8 3d ff ff ff       	call   730 <__cxa_finalize@plt>
 7f3:	e8 48 ff ff ff       	call   740 <deregister_tm_clones>
 7f8:	c6 05 59 08 20 00 01 	mov    BYTE PTR [rip+0x200859],0x1        # 201058 <completed.7698>
 7ff:	5d                   	pop    rbp
 800:	c3                   	ret
 801:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 808:	f3 c3                	repz ret
 80a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000810 <frame_dummy>:
 810:	55                   	push   rbp
 811:	48 89 e5             	mov    rbp,rsp
 814:	5d                   	pop    rbp
 815:	e9 66 ff ff ff       	jmp    780 <register_tm_clones>

000000000000081a <callme_one>:
 81a:	55                   	push   rbp
 81b:	48 89 e5             	mov    rbp,rsp
 81e:	48 83 ec 30          	sub    rsp,0x30
 822:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 826:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
 82a:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
 82e:	48 b8 ef be ad de ef 	movabs rax,0xdeadbeefdeadbeef
 835:	be ad de 
 838:	48 39 45 e8          	cmp    QWORD PTR [rbp-0x18],rax
 83c:	0f 85 d0 00 00 00    	jne    912 <callme_one+0xf8>
 842:	48 b8 be ba fe ca be 	movabs rax,0xcafebabecafebabe
 849:	ba fe ca 
 84c:	48 39 45 e0          	cmp    QWORD PTR [rbp-0x20],rax
 850:	0f 85 bc 00 00 00    	jne    912 <callme_one+0xf8>
 856:	48 b8 0d f0 0d d0 0d 	movabs rax,0xd00df00dd00df00d
 85d:	f0 0d d0 
 860:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
 864:	0f 85 a8 00 00 00    	jne    912 <callme_one+0xf8>
 86a:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
 871:	00 
 872:	48 8d 35 2f 03 00 00 	lea    rsi,[rip+0x32f]        # ba8 <_fini+0x10>  'r'
 879:	48 8d 3d 2a 03 00 00 	lea    rdi,[rip+0x32a]        # baa <_fini+0x12>  'encrypted_flag.dat'
 880:	e8 8b fe ff ff       	call   710 <fopen@plt>
 885:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 889:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 88e:	75 16                	jne    8a6 <callme_one+0x8c>
 890:	48 8d 3d 29 03 00 00 	lea    rdi,[rip+0x329]        # bc0 <_fini+0x28>
 897:	e8 24 fe ff ff       	call   6c0 <puts@plt>
 89c:	bf 01 00 00 00       	mov    edi,0x1
 8a1:	e8 7a fe ff ff       	call   720 <exit@plt>
 8a6:	bf 21 00 00 00       	mov    edi,0x21
 8ab:	e8 50 fe ff ff       	call   700 <malloc@plt>
 8b0:	48 89 05 a9 07 20 00 	mov    QWORD PTR [rip+0x2007a9],rax        # 201060 <g_buf>
 8b7:	48 8b 05 a2 07 20 00 	mov    rax,QWORD PTR [rip+0x2007a2]        # 201060 <g_buf>
 8be:	48 85 c0             	test   rax,rax
 8c1:	75 16                	jne    8d9 <callme_one+0xbf>
 8c3:	48 8d 3d 18 03 00 00 	lea    rdi,[rip+0x318]        # be2 <_fini+0x4a>
 8ca:	e8 f1 fd ff ff       	call   6c0 <puts@plt>
 8cf:	bf 01 00 00 00       	mov    edi,0x1
 8d4:	e8 47 fe ff ff       	call   720 <exit@plt>
 8d9:	48 8b 05 80 07 20 00 	mov    rax,QWORD PTR [rip+0x200780]        # 201060 <g_buf>
 8e0:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 8e4:	be 21 00 00 00       	mov    esi,0x21
 8e9:	48 89 c7             	mov    rdi,rax
 8ec:	e8 ff fd ff ff       	call   6f0 <fgets@plt>
 8f1:	48 89 05 68 07 20 00 	mov    QWORD PTR [rip+0x200768],rax        # 201060 <g_buf>
 8f8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 8fc:	48 89 c7             	mov    rdi,rax
 8ff:	e8 cc fd ff ff       	call   6d0 <fclose@plt>
 904:	48 8d 3d f1 02 00 00 	lea    rdi,[rip+0x2f1]        # bfc <_fini+0x64>
 90b:	e8 b0 fd ff ff       	call   6c0 <puts@plt>
 910:	eb 16                	jmp    928 <callme_one+0x10e>
 912:	48 8d 3d 01 03 00 00 	lea    rdi,[rip+0x301]        # c1a <_fini+0x82>
 919:	e8 a2 fd ff ff       	call   6c0 <puts@plt>
 91e:	bf 01 00 00 00       	mov    edi,0x1
 923:	e8 f8 fd ff ff       	call   720 <exit@plt>
 928:	90                   	nop
 929:	c9                   	leave
 92a:	c3                   	ret

000000000000092b <callme_two>:
 92b:	55                   	push   rbp
 92c:	48 89 e5             	mov    rbp,rsp
 92f:	48 83 ec 30          	sub    rsp,0x30
 933:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 937:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
 93b:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
 93f:	48 b8 ef be ad de ef 	movabs rax,0xdeadbeefdeadbeef
 946:	be ad de 
 949:	48 39 45 e8          	cmp    QWORD PTR [rbp-0x18],rax
 94d:	0f 85 c1 00 00 00    	jne    a14 <callme_two+0xe9>
 953:	48 b8 be ba fe ca be 	movabs rax,0xcafebabecafebabe
 95a:	ba fe ca 
 95d:	48 39 45 e0          	cmp    QWORD PTR [rbp-0x20],rax
 961:	0f 85 ad 00 00 00    	jne    a14 <callme_two+0xe9>
 967:	48 b8 0d f0 0d d0 0d 	movabs rax,0xd00df00dd00df00d
 96e:	f0 0d d0 
 971:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
 975:	0f 85 99 00 00 00    	jne    a14 <callme_two+0xe9>
 97b:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
 982:	00 
 983:	48 8d 35 1e 02 00 00 	lea    rsi,[rip+0x21e]        # ba8 <_fini+0x10>
 98a:	48 8d 3d 9e 02 00 00 	lea    rdi,[rip+0x29e]        # c2f <_fini+0x97>
 991:	e8 7a fd ff ff       	call   710 <fopen@plt>
 996:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 99a:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 99f:	75 16                	jne    9b7 <callme_two+0x8c>
 9a1:	48 8d 3d 90 02 00 00 	lea    rdi,[rip+0x290]        # c38 <_fini+0xa0>
 9a8:	e8 13 fd ff ff       	call   6c0 <puts@plt>
 9ad:	bf 01 00 00 00       	mov    edi,0x1
 9b2:	e8 69 fd ff ff       	call   720 <exit@plt>
 9b7:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
 9be:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
 9c5:	eb 39                	jmp    a00 <callme_two+0xd5>
 9c7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 9cb:	48 89 c7             	mov    rdi,rax
 9ce:	e8 0d fd ff ff       	call   6e0 <fgetc@plt>
 9d3:	89 c6                	mov    esi,eax
 9d5:	48 8b 15 84 06 20 00 	mov    rdx,QWORD PTR [rip+0x200684]        # 201060 <g_buf>
 9dc:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 9df:	48 98                	cdqe
 9e1:	48 01 d0             	add    rax,rdx
 9e4:	0f b6 08             	movzx  ecx,BYTE PTR [rax]
 9e7:	48 8b 15 72 06 20 00 	mov    rdx,QWORD PTR [rip+0x200672]        # 201060 <g_buf>
 9ee:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 9f1:	48 98                	cdqe
 9f3:	48 01 d0             	add    rax,rdx
 9f6:	31 f1                	xor    ecx,esi
 9f8:	89 ca                	mov    edx,ecx
 9fa:	88 10                	mov    BYTE PTR [rax],dl
 9fc:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
 a00:	83 7d f4 0f          	cmp    DWORD PTR [rbp-0xc],0xf
 a04:	7e c1                	jle    9c7 <callme_two+0x9c>
 a06:	48 8d 3d 43 02 00 00 	lea    rdi,[rip+0x243]        # c50 <_fini+0xb8>
 a0d:	e8 ae fc ff ff       	call   6c0 <puts@plt>
 a12:	eb 16                	jmp    a2a <callme_two+0xff>
 a14:	48 8d 3d ff 01 00 00 	lea    rdi,[rip+0x1ff]        # c1a <_fini+0x82>
 a1b:	e8 a0 fc ff ff       	call   6c0 <puts@plt>
 a20:	bf 01 00 00 00       	mov    edi,0x1
 a25:	e8 f6 fc ff ff       	call   720 <exit@plt>
 a2a:	90                   	nop
 a2b:	c9                   	leave
 a2c:	c3                   	ret

0000000000000a2d <callme_three>:
 a2d:	55                   	push   rbp
 a2e:	48 89 e5             	mov    rbp,rsp
 a31:	48 83 ec 30          	sub    rsp,0x30
 a35:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 a39:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
 a3d:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
 a41:	48 b8 ef be ad de ef 	movabs rax,0xdeadbeefdeadbeef
 a48:	be ad de 
 a4b:	48 39 45 e8          	cmp    QWORD PTR [rbp-0x18],rax
 a4f:	0f 85 2c 01 00 00    	jne    b81 <callme_three+0x154>
 a55:	48 b8 be ba fe ca be 	movabs rax,0xcafebabecafebabe
 a5c:	ba fe ca 
 a5f:	48 39 45 e0          	cmp    QWORD PTR [rbp-0x20],rax
 a63:	0f 85 18 01 00 00    	jne    b81 <callme_three+0x154>
 a69:	48 b8 0d f0 0d d0 0d 	movabs rax,0xd00df00dd00df00d
 a70:	f0 0d d0 
 a73:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
 a77:	0f 85 04 01 00 00    	jne    b81 <callme_three+0x154>
 a7d:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
 a84:	00 
 a85:	48 8d 35 1c 01 00 00 	lea    rsi,[rip+0x11c]        # ba8 <_fini+0x10>
 a8c:	48 8d 3d db 01 00 00 	lea    rdi,[rip+0x1db]        # c6e <_fini+0xd6>
 a93:	e8 78 fc ff ff       	call   710 <fopen@plt>
 a98:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 a9c:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 aa1:	75 16                	jne    ab9 <callme_three+0x8c>
 aa3:	48 8d 3d cd 01 00 00 	lea    rdi,[rip+0x1cd]        # c77 <_fini+0xdf>
 aaa:	e8 11 fc ff ff       	call   6c0 <puts@plt>
 aaf:	bf 01 00 00 00       	mov    edi,0x1
 ab4:	e8 67 fc ff ff       	call   720 <exit@plt>
 ab9:	c7 45 f4 10 00 00 00 	mov    DWORD PTR [rbp-0xc],0x10
 ac0:	c7 45 f4 10 00 00 00 	mov    DWORD PTR [rbp-0xc],0x10
 ac7:	eb 39                	jmp    b02 <callme_three+0xd5>
 ac9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 acd:	48 89 c7             	mov    rdi,rax
 ad0:	e8 0b fc ff ff       	call   6e0 <fgetc@plt>
 ad5:	89 c6                	mov    esi,eax
 ad7:	48 8b 15 82 05 20 00 	mov    rdx,QWORD PTR [rip+0x200582]        # 201060 <g_buf>
 ade:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 ae1:	48 98                	cdqe
 ae3:	48 01 d0             	add    rax,rdx
 ae6:	0f b6 08             	movzx  ecx,BYTE PTR [rax]
 ae9:	48 8b 15 70 05 20 00 	mov    rdx,QWORD PTR [rip+0x200570]        # 201060 <g_buf>
 af0:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 af3:	48 98                	cdqe
 af5:	48 01 d0             	add    rax,rdx
 af8:	31 f1                	xor    ecx,esi
 afa:	89 ca                	mov    edx,ecx
 afc:	88 10                	mov    BYTE PTR [rax],dl
 afe:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
 b02:	83 7d f4 1f          	cmp    DWORD PTR [rbp-0xc],0x1f
 b06:	7e c1                	jle    ac9 <callme_three+0x9c>
 b08:	48 8b 05 51 05 20 00 	mov    rax,QWORD PTR [rip+0x200551]        # 201060 <g_buf>
 b0f:	48 83 c0 04          	add    rax,0x4
 b13:	48 8b 00             	mov    rax,QWORD PTR [rax]
 b16:	48 8b 15 43 05 20 00 	mov    rdx,QWORD PTR [rip+0x200543]        # 201060 <g_buf>
 b1d:	48 83 c2 04          	add    rdx,0x4
 b21:	48 33 45 e8          	xor    rax,QWORD PTR [rbp-0x18]
 b25:	48 89 02             	mov    QWORD PTR [rdx],rax
 b28:	48 8b 05 31 05 20 00 	mov    rax,QWORD PTR [rip+0x200531]        # 201060 <g_buf>
 b2f:	48 83 c0 0c          	add    rax,0xc
 b33:	48 8b 00             	mov    rax,QWORD PTR [rax]
 b36:	48 8b 15 23 05 20 00 	mov    rdx,QWORD PTR [rip+0x200523]        # 201060 <g_buf>
 b3d:	48 83 c2 0c          	add    rdx,0xc
 b41:	48 33 45 e0          	xor    rax,QWORD PTR [rbp-0x20]
 b45:	48 89 02             	mov    QWORD PTR [rdx],rax
 b48:	48 8b 05 11 05 20 00 	mov    rax,QWORD PTR [rip+0x200511]        # 201060 <g_buf>
 b4f:	48 83 c0 14          	add    rax,0x14
 b53:	48 8b 00             	mov    rax,QWORD PTR [rax]
 b56:	48 8b 15 03 05 20 00 	mov    rdx,QWORD PTR [rip+0x200503]        # 201060 <g_buf>
 b5d:	48 83 c2 14          	add    rdx,0x14
 b61:	48 33 45 d8          	xor    rax,QWORD PTR [rbp-0x28]
 b65:	48 89 02             	mov    QWORD PTR [rdx],rax
 b68:	48 8b 05 f1 04 20 00 	mov    rax,QWORD PTR [rip+0x2004f1]        # 201060 <g_buf>
 b6f:	48 89 c7             	mov    rdi,rax
 b72:	e8 49 fb ff ff       	call   6c0 <puts@plt>
 b77:	bf 00 00 00 00       	mov    edi,0x0
 b7c:	e8 9f fb ff ff       	call   720 <exit@plt>
 b81:	48 8d 3d 92 00 00 00 	lea    rdi,[rip+0x92]        # c1a <_fini+0x82>
 b88:	e8 33 fb ff ff       	call   6c0 <puts@plt>
 b8d:	bf 01 00 00 00       	mov    edi,0x1
 b92:	e8 89 fb ff ff       	call   720 <exit@plt>

セクション .fini の逆アセンブル:

0000000000000b98 <_fini>:
 b98:	48 83 ec 08          	sub    rsp,0x8
 b9c:	48 83 c4 08          	add    rsp,0x8
 ba0:	c3                   	ret
