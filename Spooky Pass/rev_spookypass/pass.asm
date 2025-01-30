
pass:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 c1 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fc1]        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   QWORD PTR [rip+0x2fca]        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    QWORD PTR [rip+0x2fcc]        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <puts@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 4000 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <__stack_chk_fail@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    QWORD PTR [rip+0x2fc2]        # 4008 <__stack_chk_fail@GLIBC_2.4>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <strchr@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    QWORD PTR [rip+0x2fba]        # 4010 <strchr@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <printf@plt>:
    1060:	ff 25 b2 2f 00 00    	jmp    QWORD PTR [rip+0x2fb2]        # 4018 <printf@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <fgets@plt>:
    1070:	ff 25 aa 2f 00 00    	jmp    QWORD PTR [rip+0x2faa]        # 4020 <fgets@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <strcmp@plt>:
    1080:	ff 25 a2 2f 00 00    	jmp    QWORD PTR [rip+0x2fa2]        # 4028 <strcmp@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001090 <_start>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	31 ed                	xor    ebp,ebp
    1096:	49 89 d1             	mov    r9,rdx
    1099:	5e                   	pop    rsi
    109a:	48 89 e2             	mov    rdx,rsp
    109d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    10a1:	50                   	push   rax
    10a2:	54                   	push   rsp
    10a3:	45 31 c0             	xor    r8d,r8d
    10a6:	31 c9                	xor    ecx,ecx
    10a8:	48 8d 3d da 00 00 00 	lea    rdi,[rip+0xda]        # 1189 <main>
    10af:	ff 15 0b 2f 00 00    	call   QWORD PTR [rip+0x2f0b]        # 3fc0 <__libc_start_main@GLIBC_2.34>
    10b5:	f4                   	hlt    
    10b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    10bd:	00 00 00 
    10c0:	48 8d 3d 01 30 00 00 	lea    rdi,[rip+0x3001]        # 40c8 <__TMC_END__>
    10c7:	48 8d 05 fa 2f 00 00 	lea    rax,[rip+0x2ffa]        # 40c8 <__TMC_END__>
    10ce:	48 39 f8             	cmp    rax,rdi
    10d1:	74 15                	je     10e8 <_start+0x58>
    10d3:	48 8b 05 ee 2e 00 00 	mov    rax,QWORD PTR [rip+0x2eee]        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    10da:	48 85 c0             	test   rax,rax
    10dd:	74 09                	je     10e8 <_start+0x58>
    10df:	ff e0                	jmp    rax
    10e1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10e8:	c3                   	ret    
    10e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10f0:	48 8d 3d d1 2f 00 00 	lea    rdi,[rip+0x2fd1]        # 40c8 <__TMC_END__>
    10f7:	48 8d 35 ca 2f 00 00 	lea    rsi,[rip+0x2fca]        # 40c8 <__TMC_END__>
    10fe:	48 29 fe             	sub    rsi,rdi
    1101:	48 89 f0             	mov    rax,rsi
    1104:	48 c1 ee 3f          	shr    rsi,0x3f
    1108:	48 c1 f8 03          	sar    rax,0x3
    110c:	48 01 c6             	add    rsi,rax
    110f:	48 d1 fe             	sar    rsi,1
    1112:	74 14                	je     1128 <_start+0x98>
    1114:	48 8b 05 bd 2e 00 00 	mov    rax,QWORD PTR [rip+0x2ebd]        # 3fd8 <_ITM_registerTMCloneTable@Base>
    111b:	48 85 c0             	test   rax,rax
    111e:	74 08                	je     1128 <_start+0x98>
    1120:	ff e0                	jmp    rax
    1122:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1128:	c3                   	ret    
    1129:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1130:	f3 0f 1e fa          	endbr64 
    1134:	80 3d 9d 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f9d],0x0        # 40d8 <stdin@GLIBC_2.2.5+0x8>
    113b:	75 33                	jne    1170 <_start+0xe0>
    113d:	55                   	push   rbp
    113e:	48 83 3d 9a 2e 00 00 	cmp    QWORD PTR [rip+0x2e9a],0x0        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1145:	00 
    1146:	48 89 e5             	mov    rbp,rsp
    1149:	74 0d                	je     1158 <_start+0xc8>
    114b:	48 8b 3d f6 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2ef6]        # 4048 <__dso_handle>
    1152:	ff 15 88 2e 00 00    	call   QWORD PTR [rip+0x2e88]        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1158:	e8 63 ff ff ff       	call   10c0 <_start+0x30>
    115d:	c6 05 74 2f 00 00 01 	mov    BYTE PTR [rip+0x2f74],0x1        # 40d8 <stdin@GLIBC_2.2.5+0x8>
    1164:	5d                   	pop    rbp
    1165:	c3                   	ret    
    1166:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    116d:	00 00 00 
    1170:	c3                   	ret    
    1171:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1178:	00 00 00 00 
    117c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1180:	f3 0f 1e fa          	endbr64 
    1184:	e9 67 ff ff ff       	jmp    10f0 <_start+0x60>

0000000000001189 <main>:
    1189:	55                   	push   rbp
    118a:	48 89 e5             	mov    rbp,rsp
    118d:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
    1194:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    119b:	00 00 
    119d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    11a1:	31 c0                	xor    eax,eax
    11a3:	48 c7 85 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],0x0
    11aa:	00 00 00 00 
    11ae:	48 c7 85 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],0x0
    11b5:	00 00 00 00 
    11b9:	48 c7 85 5a ff ff ff 	mov    QWORD PTR [rbp-0xa6],0x0
    11c0:	00 00 00 00 
    11c4:	48 c7 85 62 ff ff ff 	mov    QWORD PTR [rbp-0x9e],0x0
    11cb:	00 00 00 00 
    11cf:	48 8d 05 32 0e 00 00 	lea    rax,[rip+0xe32]        # 2008 <_IO_stdin_used+0x8>
    11d6:	48 89 c7             	mov    rdi,rax
    11d9:	e8 52 fe ff ff       	call   1030 <puts@plt>
    11de:	48 8d 05 5b 0e 00 00 	lea    rax,[rip+0xe5b]        # 2040 <_IO_stdin_used+0x40>
    11e5:	48 89 c7             	mov    rdi,rax
    11e8:	b8 00 00 00 00       	mov    eax,0x0
    11ed:	e8 6e fe ff ff       	call   1060 <printf@plt>
    11f2:	48 8b 15 d7 2e 00 00 	mov    rdx,QWORD PTR [rip+0x2ed7]        # 40d0 <stdin@GLIBC_2.2.5>
    11f9:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
    1200:	be 80 00 00 00       	mov    esi,0x80
    1205:	48 89 c7             	mov    rdi,rax
    1208:	e8 63 fe ff ff       	call   1070 <fgets@plt>
    120d:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
    1214:	be 0a 00 00 00       	mov    esi,0xa
    1219:	48 89 c7             	mov    rdi,rax
    121c:	e8 2f fe ff ff       	call   1050 <strchr@plt>
    1221:	48 89 85 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],rax
    1228:	48 83 bd 48 ff ff ff 	cmp    QWORD PTR [rbp-0xb8],0x0
    122f:	00 
    1230:	74 0a                	je     123c <main+0xb3>
    1232:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
    1239:	c6 00 00             	mov    BYTE PTR [rax],0x0
    123c:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
    1243:	48 8d 15 36 0e 00 00 	lea    rdx,[rip+0xe36]        # 2080 <_IO_stdin_used+0x80>
    124a:	48 89 d6             	mov    rsi,rdx
    124d:	48 89 c7             	mov    rdi,rax
    1250:	e8 2b fe ff ff       	call   1080 <strcmp@plt>
    1255:	85 c0                	test   eax,eax
    1257:	75 69                	jne    12c2 <main+0x139>
    1259:	48 8d 05 42 0e 00 00 	lea    rax,[rip+0xe42]        # 20a2 <_IO_stdin_used+0xa2>
    1260:	48 89 c7             	mov    rdi,rax
    1263:	e8 c8 fd ff ff       	call   1030 <puts@plt>
    1268:	c7 85 44 ff ff ff 00 	mov    DWORD PTR [rbp-0xbc],0x0
    126f:	00 00 00 
    1272:	eb 32                	jmp    12a6 <main+0x11d>
    1274:	8b 85 44 ff ff ff    	mov    eax,DWORD PTR [rbp-0xbc]
    127a:	48 98                	cdqe   
    127c:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    1283:	00 
    1284:	48 8d 05 d5 2d 00 00 	lea    rax,[rip+0x2dd5]        # 4060 <parts>
    128b:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    128e:	89 c2                	mov    edx,eax
    1290:	8b 85 44 ff ff ff    	mov    eax,DWORD PTR [rbp-0xbc]
    1296:	48 98                	cdqe   
    1298:	88 94 05 50 ff ff ff 	mov    BYTE PTR [rbp+rax*1-0xb0],dl
    129f:	83 85 44 ff ff ff 01 	add    DWORD PTR [rbp-0xbc],0x1
    12a6:	8b 85 44 ff ff ff    	mov    eax,DWORD PTR [rbp-0xbc]
    12ac:	83 f8 19             	cmp    eax,0x19
    12af:	76 c3                	jbe    1274 <main+0xeb>
    12b1:	48 8d 85 50 ff ff ff 	lea    rax,[rbp-0xb0]
    12b8:	48 89 c7             	mov    rdi,rax
    12bb:	e8 70 fd ff ff       	call   1030 <puts@plt>
    12c0:	eb 0f                	jmp    12d1 <main+0x148>
    12c2:	48 8d 05 ef 0d 00 00 	lea    rax,[rip+0xdef]        # 20b8 <_IO_stdin_used+0xb8>
    12c9:	48 89 c7             	mov    rdi,rax
    12cc:	e8 5f fd ff ff       	call   1030 <puts@plt>
    12d1:	b8 00 00 00 00       	mov    eax,0x0
    12d6:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    12da:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    12e1:	00 00 
    12e3:	74 05                	je     12ea <main+0x161>
    12e5:	e8 56 fd ff ff       	call   1040 <__stack_chk_fail@plt>
    12ea:	c9                   	leave  
    12eb:	c3                   	ret    

Disassembly of section .fini:

00000000000012ec <_fini>:
    12ec:	f3 0f 1e fa          	endbr64 
    12f0:	48 83 ec 08          	sub    rsp,0x8
    12f4:	48 83 c4 08          	add    rsp,0x8
    12f8:	c3                   	ret    
