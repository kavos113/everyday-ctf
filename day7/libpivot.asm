
libpivot.so:     ファイル形式 elf64-x86-64


セクション .init の逆アセンブル:

0000000000000808 <_init>:
 808:	48 83 ec 08          	sub    rsp,0x8
 80c:	48 8b 05 d5 07 20 00 	mov    rax,QWORD PTR [rip+0x2007d5]        # 200fe8 <__gmon_start__>
 813:	48 85 c0             	test   rax,rax
 816:	74 02                	je     81a <_init+0x12>
 818:	ff d0                	call   rax
 81a:	48 83 c4 08          	add    rsp,0x8
 81e:	c3                   	ret

セクション .plt の逆アセンブル:

0000000000000820 <.plt>:
 820:	ff 35 e2 07 20 00    	push   QWORD PTR [rip+0x2007e2]        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 826:	ff 25 e4 07 20 00    	jmp    QWORD PTR [rip+0x2007e4]        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 82c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000830 <puts@plt>:
 830:	ff 25 e2 07 20 00    	jmp    QWORD PTR [rip+0x2007e2]        # 201018 <puts@GLIBC_2.2.5>
 836:	68 00 00 00 00       	push   0x0
 83b:	e9 e0 ff ff ff       	jmp    820 <.plt>

0000000000000840 <fclose@plt>:
 840:	ff 25 da 07 20 00    	jmp    QWORD PTR [rip+0x2007da]        # 201020 <fclose@GLIBC_2.2.5>
 846:	68 01 00 00 00       	push   0x1
 84b:	e9 d0 ff ff ff       	jmp    820 <.plt>

0000000000000850 <fgets@plt>:
 850:	ff 25 d2 07 20 00    	jmp    QWORD PTR [rip+0x2007d2]        # 201028 <fgets@GLIBC_2.2.5>
 856:	68 02 00 00 00       	push   0x2
 85b:	e9 c0 ff ff ff       	jmp    820 <.plt>

0000000000000860 <fopen@plt>:
 860:	ff 25 ca 07 20 00    	jmp    QWORD PTR [rip+0x2007ca]        # 201030 <fopen@GLIBC_2.2.5>
 866:	68 03 00 00 00       	push   0x3
 86b:	e9 b0 ff ff ff       	jmp    820 <.plt>

0000000000000870 <exit@plt>:
 870:	ff 25 c2 07 20 00    	jmp    QWORD PTR [rip+0x2007c2]        # 201038 <exit@GLIBC_2.2.5>
 876:	68 04 00 00 00       	push   0x4
 87b:	e9 a0 ff ff ff       	jmp    820 <.plt>

セクション .plt.got の逆アセンブル:

0000000000000880 <__cxa_finalize@plt>:
 880:	ff 25 72 07 20 00    	jmp    QWORD PTR [rip+0x200772]        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 886:	66 90                	xchg   ax,ax

セクション .text の逆アセンブル:

0000000000000890 <deregister_tm_clones>:
 890:	48 8d 3d b1 07 20 00 	lea    rdi,[rip+0x2007b1]        # 201048 <completed.7698>
 897:	55                   	push   rbp
 898:	48 8d 05 a9 07 20 00 	lea    rax,[rip+0x2007a9]        # 201048 <completed.7698>
 89f:	48 39 f8             	cmp    rax,rdi
 8a2:	48 89 e5             	mov    rbp,rsp
 8a5:	74 19                	je     8c0 <deregister_tm_clones+0x30>
 8a7:	48 8b 05 32 07 20 00 	mov    rax,QWORD PTR [rip+0x200732]        # 200fe0 <_ITM_deregisterTMCloneTable>
 8ae:	48 85 c0             	test   rax,rax
 8b1:	74 0d                	je     8c0 <deregister_tm_clones+0x30>
 8b3:	5d                   	pop    rbp
 8b4:	ff e0                	jmp    rax
 8b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
 8bd:	00 00 00 
 8c0:	5d                   	pop    rbp
 8c1:	c3                   	ret
 8c2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 8c6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
 8cd:	00 00 00 

00000000000008d0 <register_tm_clones>:
 8d0:	48 8d 3d 71 07 20 00 	lea    rdi,[rip+0x200771]        # 201048 <completed.7698>
 8d7:	48 8d 35 6a 07 20 00 	lea    rsi,[rip+0x20076a]        # 201048 <completed.7698>
 8de:	55                   	push   rbp
 8df:	48 29 fe             	sub    rsi,rdi
 8e2:	48 89 e5             	mov    rbp,rsp
 8e5:	48 c1 fe 03          	sar    rsi,0x3
 8e9:	48 89 f0             	mov    rax,rsi
 8ec:	48 c1 e8 3f          	shr    rax,0x3f
 8f0:	48 01 c6             	add    rsi,rax
 8f3:	48 d1 fe             	sar    rsi,1
 8f6:	74 18                	je     910 <register_tm_clones+0x40>
 8f8:	48 8b 05 f1 06 20 00 	mov    rax,QWORD PTR [rip+0x2006f1]        # 200ff0 <_ITM_registerTMCloneTable>
 8ff:	48 85 c0             	test   rax,rax
 902:	74 0c                	je     910 <register_tm_clones+0x40>
 904:	5d                   	pop    rbp
 905:	ff e0                	jmp    rax
 907:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 90e:	00 00 
 910:	5d                   	pop    rbp
 911:	c3                   	ret
 912:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 916:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
 91d:	00 00 00 

0000000000000920 <__do_global_dtors_aux>:
 920:	80 3d 21 07 20 00 00 	cmp    BYTE PTR [rip+0x200721],0x0        # 201048 <completed.7698>
 927:	75 2f                	jne    958 <__do_global_dtors_aux+0x38>
 929:	48 83 3d c7 06 20 00 	cmp    QWORD PTR [rip+0x2006c7],0x0        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 930:	00 
 931:	55                   	push   rbp
 932:	48 89 e5             	mov    rbp,rsp
 935:	74 0c                	je     943 <__do_global_dtors_aux+0x23>
 937:	48 8b 3d 02 07 20 00 	mov    rdi,QWORD PTR [rip+0x200702]        # 201040 <__dso_handle>
 93e:	e8 3d ff ff ff       	call   880 <__cxa_finalize@plt>
 943:	e8 48 ff ff ff       	call   890 <deregister_tm_clones>
 948:	c6 05 f9 06 20 00 01 	mov    BYTE PTR [rip+0x2006f9],0x1        # 201048 <completed.7698>
 94f:	5d                   	pop    rbp
 950:	c3                   	ret
 951:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 958:	f3 c3                	repz ret
 95a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000960 <frame_dummy>:
 960:	55                   	push   rbp
 961:	48 89 e5             	mov    rbp,rsp
 964:	5d                   	pop    rbp
 965:	e9 66 ff ff ff       	jmp    8d0 <register_tm_clones>

000000000000096a <foothold_function>:
 96a:	55                   	push   rbp
 96b:	48 89 e5             	mov    rbp,rsp
 96e:	48 8d 3d ab 01 00 00 	lea    rdi,[rip+0x1ab]        # b20 <_fini+0xc>
 975:	e8 b6 fe ff ff       	call   830 <puts@plt>
 97a:	90                   	nop
 97b:	5d                   	pop    rbp
 97c:	c3                   	ret

000000000000097d <void_function_01>:
 97d:	55                   	push   rbp
 97e:	48 89 e5             	mov    rbp,rsp
 981:	48 8d 3d ea 01 00 00 	lea    rdi,[rip+0x1ea]        # b72 <_fini+0x5e>
 988:	e8 a3 fe ff ff       	call   830 <puts@plt>
 98d:	bf 01 00 00 00       	mov    edi,0x1
 992:	e8 d9 fe ff ff       	call   870 <exit@plt>

0000000000000997 <void_function_02>:
 997:	55                   	push   rbp
 998:	48 89 e5             	mov    rbp,rsp
 99b:	48 8d 3d d0 01 00 00 	lea    rdi,[rip+0x1d0]        # b72 <_fini+0x5e>
 9a2:	e8 89 fe ff ff       	call   830 <puts@plt>
 9a7:	bf 01 00 00 00       	mov    edi,0x1
 9ac:	e8 bf fe ff ff       	call   870 <exit@plt>

00000000000009b1 <void_function_03>:
 9b1:	55                   	push   rbp
 9b2:	48 89 e5             	mov    rbp,rsp
 9b5:	48 8d 3d b6 01 00 00 	lea    rdi,[rip+0x1b6]        # b72 <_fini+0x5e>
 9bc:	e8 6f fe ff ff       	call   830 <puts@plt>
 9c1:	bf 01 00 00 00       	mov    edi,0x1
 9c6:	e8 a5 fe ff ff       	call   870 <exit@plt>

00000000000009cb <void_function_04>:
 9cb:	55                   	push   rbp
 9cc:	48 89 e5             	mov    rbp,rsp
 9cf:	48 8d 3d 9c 01 00 00 	lea    rdi,[rip+0x19c]        # b72 <_fini+0x5e>
 9d6:	e8 55 fe ff ff       	call   830 <puts@plt>
 9db:	bf 01 00 00 00       	mov    edi,0x1
 9e0:	e8 8b fe ff ff       	call   870 <exit@plt>

00000000000009e5 <void_function_05>:
 9e5:	55                   	push   rbp
 9e6:	48 89 e5             	mov    rbp,rsp
 9e9:	48 8d 3d 82 01 00 00 	lea    rdi,[rip+0x182]        # b72 <_fini+0x5e>
 9f0:	e8 3b fe ff ff       	call   830 <puts@plt>
 9f5:	bf 01 00 00 00       	mov    edi,0x1
 9fa:	e8 71 fe ff ff       	call   870 <exit@plt>

00000000000009ff <void_function_06>:
 9ff:	55                   	push   rbp
 a00:	48 89 e5             	mov    rbp,rsp
 a03:	48 8d 3d 68 01 00 00 	lea    rdi,[rip+0x168]        # b72 <_fini+0x5e>
 a0a:	e8 21 fe ff ff       	call   830 <puts@plt>
 a0f:	bf 01 00 00 00       	mov    edi,0x1
 a14:	e8 57 fe ff ff       	call   870 <exit@plt>

0000000000000a19 <void_function_07>:
 a19:	55                   	push   rbp
 a1a:	48 89 e5             	mov    rbp,rsp
 a1d:	48 8d 3d 4e 01 00 00 	lea    rdi,[rip+0x14e]        # b72 <_fini+0x5e>
 a24:	e8 07 fe ff ff       	call   830 <puts@plt>
 a29:	bf 01 00 00 00       	mov    edi,0x1
 a2e:	e8 3d fe ff ff       	call   870 <exit@plt>

0000000000000a33 <void_function_08>:
 a33:	55                   	push   rbp
 a34:	48 89 e5             	mov    rbp,rsp
 a37:	48 8d 3d 34 01 00 00 	lea    rdi,[rip+0x134]        # b72 <_fini+0x5e>
 a3e:	e8 ed fd ff ff       	call   830 <puts@plt>
 a43:	bf 01 00 00 00       	mov    edi,0x1
 a48:	e8 23 fe ff ff       	call   870 <exit@plt>

0000000000000a4d <void_function_09>:
 a4d:	55                   	push   rbp
 a4e:	48 89 e5             	mov    rbp,rsp
 a51:	48 8d 3d 1a 01 00 00 	lea    rdi,[rip+0x11a]        # b72 <_fini+0x5e>
 a58:	e8 d3 fd ff ff       	call   830 <puts@plt>
 a5d:	bf 01 00 00 00       	mov    edi,0x1
 a62:	e8 09 fe ff ff       	call   870 <exit@plt>

0000000000000a67 <void_function_10>:
 a67:	55                   	push   rbp
 a68:	48 89 e5             	mov    rbp,rsp
 a6b:	48 8d 3d 00 01 00 00 	lea    rdi,[rip+0x100]        # b72 <_fini+0x5e>
 a72:	e8 b9 fd ff ff       	call   830 <puts@plt>
 a77:	bf 01 00 00 00       	mov    edi,0x1
 a7c:	e8 ef fd ff ff       	call   870 <exit@plt>

0000000000000a81 <ret2win>:
 a81:	55                   	push   rbp
 a82:	48 89 e5             	mov    rbp,rsp
 a85:	48 83 ec 40          	sub    rsp,0x40
 a89:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 a90:	00 00 
 a92:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 a96:	31 c0                	xor    eax,eax
 a98:	48 c7 45 c8 00 00 00 	mov    QWORD PTR [rbp-0x38],0x0
 a9f:	00 
 aa0:	48 8d 35 df 00 00 00 	lea    rsi,[rip+0xdf]        # b86 <_fini+0x72>
 aa7:	48 8d 3d da 00 00 00 	lea    rdi,[rip+0xda]        # b88 <_fini+0x74>
 aae:	e8 ad fd ff ff       	call   860 <fopen@plt>
 ab3:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
 ab7:	48 83 7d c8 00       	cmp    QWORD PTR [rbp-0x38],0x0
 abc:	75 16                	jne    ad4 <ret2win+0x53>
 abe:	48 8d 3d cc 00 00 00 	lea    rdi,[rip+0xcc]        # b91 <_fini+0x7d>
 ac5:	e8 66 fd ff ff       	call   830 <puts@plt>
 aca:	bf 01 00 00 00       	mov    edi,0x1
 acf:	e8 9c fd ff ff       	call   870 <exit@plt>
 ad4:	48 8b 55 c8          	mov    rdx,QWORD PTR [rbp-0x38]
 ad8:	48 8d 45 d0          	lea    rax,[rbp-0x30]
 adc:	be 21 00 00 00       	mov    esi,0x21
 ae1:	48 89 c7             	mov    rdi,rax
 ae4:	e8 67 fd ff ff       	call   850 <fgets@plt>
 ae9:	48 8d 45 d0          	lea    rax,[rbp-0x30]
 aed:	48 89 c7             	mov    rdi,rax
 af0:	e8 3b fd ff ff       	call   830 <puts@plt>
 af5:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
 af9:	48 89 c7             	mov    rdi,rax
 afc:	e8 3f fd ff ff       	call   840 <fclose@plt>
 b01:	48 c7 45 c8 00 00 00 	mov    QWORD PTR [rbp-0x38],0x0
 b08:	00 
 b09:	bf 00 00 00 00       	mov    edi,0x0
 b0e:	e8 5d fd ff ff       	call   870 <exit@plt>

セクション .fini の逆アセンブル:

0000000000000b14 <_fini>:
 b14:	48 83 ec 08          	sub    rsp,0x8
 b18:	48 83 c4 08          	add    rsp,0x8
 b1c:	c3                   	ret
