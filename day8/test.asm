
test:     ファイル形式 elf64-x86-64


セクション .init の逆アセンブル:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    rsp,0x8
    1004:	48 8b 05 c5 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fc5]        # 3fd0 <__gmon_start__@Base>
    100b:	48 85 c0             	test   rax,rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   rax
    1012:	48 83 c4 08          	add    rsp,0x8
    1016:	c3                   	ret

セクション .plt の逆アセンブル:

0000000000001020 <.plt>:
    1020:	ff 35 ca 2f 00 00    	push   QWORD PTR [rip+0x2fca]        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    QWORD PTR [rip+0x2fcc]        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

セクション .plt.got の逆アセンブル:

0000000000001030 <__cxa_finalize@plt>:
    1030:	ff 25 aa 2f 00 00    	jmp    QWORD PTR [rip+0x2faa]        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1036:	66 90                	xchg   ax,ax

セクション .text の逆アセンブル:

0000000000001040 <_start>:
    1040:	31 ed                	xor    ebp,ebp
    1042:	49 89 d1             	mov    r9,rdx
    1045:	5e                   	pop    rsi
    1046:	48 89 e2             	mov    rdx,rsp
    1049:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    104d:	50                   	push   rax
    104e:	54                   	push   rsp
    104f:	45 31 c0             	xor    r8d,r8d
    1052:	31 c9                	xor    ecx,ecx
    1054:	48 8d 3d ce 00 00 00 	lea    rdi,[rip+0xce]        # 1129 <main>
    105b:	ff 15 5f 2f 00 00    	call   QWORD PTR [rip+0x2f5f]        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1061:	f4                   	hlt
    1062:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1069:	00 00 00 
    106c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001070 <deregister_tm_clones>:
    1070:	48 8d 3d 99 2f 00 00 	lea    rdi,[rip+0x2f99]        # 4010 <__TMC_END__>
    1077:	48 8d 05 92 2f 00 00 	lea    rax,[rip+0x2f92]        # 4010 <__TMC_END__>
    107e:	48 39 f8             	cmp    rax,rdi
    1081:	74 15                	je     1098 <deregister_tm_clones+0x28>
    1083:	48 8b 05 3e 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f3e]        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    108a:	48 85 c0             	test   rax,rax
    108d:	74 09                	je     1098 <deregister_tm_clones+0x28>
    108f:	ff e0                	jmp    rax
    1091:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1098:	c3                   	ret
    1099:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010a0 <register_tm_clones>:
    10a0:	48 8d 3d 69 2f 00 00 	lea    rdi,[rip+0x2f69]        # 4010 <__TMC_END__>
    10a7:	48 8d 35 62 2f 00 00 	lea    rsi,[rip+0x2f62]        # 4010 <__TMC_END__>
    10ae:	48 29 fe             	sub    rsi,rdi
    10b1:	48 89 f0             	mov    rax,rsi
    10b4:	48 c1 ee 3f          	shr    rsi,0x3f
    10b8:	48 c1 f8 03          	sar    rax,0x3
    10bc:	48 01 c6             	add    rsi,rax
    10bf:	48 d1 fe             	sar    rsi,1
    10c2:	74 14                	je     10d8 <register_tm_clones+0x38>
    10c4:	48 8b 05 0d 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f0d]        # 3fd8 <_ITM_registerTMCloneTable@Base>
    10cb:	48 85 c0             	test   rax,rax
    10ce:	74 08                	je     10d8 <register_tm_clones+0x38>
    10d0:	ff e0                	jmp    rax
    10d2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    10d8:	c3                   	ret
    10d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010e0 <__do_global_dtors_aux>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	80 3d 25 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f25],0x0        # 4010 <__TMC_END__>
    10eb:	75 2b                	jne    1118 <__do_global_dtors_aux+0x38>
    10ed:	55                   	push   rbp
    10ee:	48 83 3d ea 2e 00 00 	cmp    QWORD PTR [rip+0x2eea],0x0        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    10f5:	00 
    10f6:	48 89 e5             	mov    rbp,rsp
    10f9:	74 0c                	je     1107 <__do_global_dtors_aux+0x27>
    10fb:	48 8b 3d 06 2f 00 00 	mov    rdi,QWORD PTR [rip+0x2f06]        # 4008 <__dso_handle>
    1102:	e8 29 ff ff ff       	call   1030 <__cxa_finalize@plt>
    1107:	e8 64 ff ff ff       	call   1070 <deregister_tm_clones>
    110c:	c6 05 fd 2e 00 00 01 	mov    BYTE PTR [rip+0x2efd],0x1        # 4010 <__TMC_END__>
    1113:	5d                   	pop    rbp
    1114:	c3                   	ret
    1115:	0f 1f 00             	nop    DWORD PTR [rax]
    1118:	c3                   	ret
    1119:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001120 <frame_dummy>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	e9 77 ff ff ff       	jmp    10a0 <register_tm_clones>

0000000000001129 <main>:
    1129:	55                   	push   rbp
    112a:	48 89 e5             	mov    rbp,rsp
    112d:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    1130:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    1134:	b8 00 00 00 00       	mov    eax,0x0
    1139:	5d                   	pop    rbp
    113a:	c3                   	ret

セクション .fini の逆アセンブル:

000000000000113c <_fini>:
    113c:	48 83 ec 08          	sub    rsp,0x8
    1140:	48 83 c4 08          	add    rsp,0x8
    1144:	c3                   	ret
