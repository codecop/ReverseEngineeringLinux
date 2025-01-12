
license:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	48 83 ec 08          	sub    rsp,0x8
  401004:	48 8b 05 ed 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fed]        # 403ff8 <__gmon_start__>
  40100b:	48 85 c0             	test   rax,rax
  40100e:	74 02                	je     401012 <_init+0x12>
  401010:	ff d0                	call   rax
  401012:	48 83 c4 08          	add    rsp,0x8
  401016:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 2f 00 00    	jmp    QWORD PTR [rip+0x2fe4]        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401030 <free@plt>:
  401030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 404018 <free@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <.plt>

0000000000401040 <puts@plt>:
  401040:	ff 25 da 2f 00 00    	jmp    QWORD PTR [rip+0x2fda]        # 404020 <puts@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <.plt>

0000000000401050 <readline@plt>:
  401050:	ff 25 d2 2f 00 00    	jmp    QWORD PTR [rip+0x2fd2]        # 404028 <readline>
  401056:	68 02 00 00 00       	push   0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <.plt>

0000000000401060 <strcmp@plt>:
  401060:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 404030 <strcmp@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <.plt>

0000000000401070 <getchar@plt>:
  401070:	ff 25 c2 2f 00 00    	jmp    QWORD PTR [rip+0x2fc2]        # 404038 <getchar@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <.plt>

0000000000401080 <exit@plt>:
  401080:	ff 25 ba 2f 00 00    	jmp    QWORD PTR [rip+0x2fba]        # 404040 <exit@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <.plt>

Disassembly of section .text:

0000000000401090 <_start>:
  401090:	31 ed                	xor    ebp,ebp
  401092:	49 89 d1             	mov    r9,rdx
  401095:	5e                   	pop    rsi
  401096:	48 89 e2             	mov    rdx,rsp
  401099:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40109d:	50                   	push   rax
  40109e:	54                   	push   rsp
  40109f:	49 c7 c0 20 14 40 00 	mov    r8,0x401420
  4010a6:	48 c7 c1 c0 13 40 00 	mov    rcx,0x4013c0
  4010ad:	48 c7 c7 72 11 40 00 	mov    rdi,0x401172
  4010b4:	ff 15 36 2f 00 00    	call   QWORD PTR [rip+0x2f36]        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  4010ba:	f4                   	hlt    
  4010bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004010c0 <_dl_relocate_static_pie>:
  4010c0:	c3                   	ret    
  4010c1:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4010c8:	00 00 00 
  4010cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004010d0 <deregister_tm_clones>:
  4010d0:	b8 88 40 40 00       	mov    eax,0x404088
  4010d5:	48 3d 88 40 40 00    	cmp    rax,0x404088
  4010db:	74 13                	je     4010f0 <deregister_tm_clones+0x20>
  4010dd:	b8 00 00 00 00       	mov    eax,0x0
  4010e2:	48 85 c0             	test   rax,rax
  4010e5:	74 09                	je     4010f0 <deregister_tm_clones+0x20>
  4010e7:	bf 88 40 40 00       	mov    edi,0x404088
  4010ec:	ff e0                	jmp    rax
  4010ee:	66 90                	xchg   ax,ax
  4010f0:	c3                   	ret    
  4010f1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4010f8:	00 00 00 00 
  4010fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401100 <register_tm_clones>:
  401100:	be 88 40 40 00       	mov    esi,0x404088
  401105:	48 81 ee 88 40 40 00 	sub    rsi,0x404088
  40110c:	48 89 f0             	mov    rax,rsi
  40110f:	48 c1 ee 3f          	shr    rsi,0x3f
  401113:	48 c1 f8 03          	sar    rax,0x3
  401117:	48 01 c6             	add    rsi,rax
  40111a:	48 d1 fe             	sar    rsi,1
  40111d:	74 11                	je     401130 <register_tm_clones+0x30>
  40111f:	b8 00 00 00 00       	mov    eax,0x0
  401124:	48 85 c0             	test   rax,rax
  401127:	74 07                	je     401130 <register_tm_clones+0x30>
  401129:	bf 88 40 40 00       	mov    edi,0x404088
  40112e:	ff e0                	jmp    rax
  401130:	c3                   	ret    
  401131:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401138:	00 00 00 00 
  40113c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401140 <__do_global_dtors_aux>:
  401140:	80 3d 3a 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f3a],0x0        # 404081 <completed.0>
  401147:	75 17                	jne    401160 <__do_global_dtors_aux+0x20>
  401149:	55                   	push   rbp
  40114a:	48 89 e5             	mov    rbp,rsp
  40114d:	e8 7e ff ff ff       	call   4010d0 <deregister_tm_clones>
  401152:	c6 05 28 2f 00 00 01 	mov    BYTE PTR [rip+0x2f28],0x1        # 404081 <completed.0>
  401159:	5d                   	pop    rbp
  40115a:	c3                   	ret    
  40115b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  401160:	c3                   	ret    
  401161:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401168:	00 00 00 00 
  40116c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401170 <frame_dummy>:
  401170:	eb 8e                	jmp    401100 <register_tm_clones>

0000000000401172 <main>:
  401172:	55                   	push   rbp
  401173:	48 89 e5             	mov    rbp,rsp
  401176:	48 83 ec 10          	sub    rsp,0x10
  40117a:	bf 08 20 40 00       	mov    edi,0x402008
  40117f:	e8 bc fe ff ff       	call   401040 <puts@plt>
  401184:	bf 30 20 40 00       	mov    edi,0x402030
  401189:	e8 b2 fe ff ff       	call   401040 <puts@plt>
  40118e:	bf 88 20 40 00       	mov    edi,0x402088
  401193:	e8 a8 fe ff ff       	call   401040 <puts@plt>
  401198:	e8 d3 fe ff ff       	call   401070 <getchar@plt>
  40119d:	88 45 ff             	mov    BYTE PTR [rbp-0x1],al
  4011a0:	80 7d ff 79          	cmp    BYTE PTR [rbp-0x1],0x79
  4011a4:	74 20                	je     4011c6 <main+0x54>
  4011a6:	80 7d ff 59          	cmp    BYTE PTR [rbp-0x1],0x59
  4011aa:	74 1a                	je     4011c6 <main+0x54>
  4011ac:	80 7d ff 0a          	cmp    BYTE PTR [rbp-0x1],0xa
  4011b0:	74 14                	je     4011c6 <main+0x54>
  4011b2:	bf dd 20 40 00       	mov    edi,0x4020dd
  4011b7:	e8 84 fe ff ff       	call   401040 <puts@plt>
  4011bc:	bf ff ff ff ff       	mov    edi,0xffffffff
  4011c1:	e8 ba fe ff ff       	call   401080 <exit@plt>
  4011c6:	b8 00 00 00 00       	mov    eax,0x0
  4011cb:	e8 ba 00 00 00       	call   40128a <exam>
  4011d0:	bf f0 20 40 00       	mov    edi,0x4020f0
  4011d5:	e8 66 fe ff ff       	call   401040 <puts@plt>
  4011da:	b8 00 00 00 00       	mov    eax,0x0
  4011df:	c9                   	leave  
  4011e0:	c3                   	ret    

00000000004011e1 <reverse>:
  4011e1:	55                   	push   rbp
  4011e2:	48 89 e5             	mov    rbp,rsp
  4011e5:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  4011e9:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  4011ed:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  4011f1:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  4011f8:	eb 2e                	jmp    401228 <reverse+0x47>
  4011fa:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  4011fd:	48 63 d0             	movsxd rdx,eax
  401200:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  401204:	48 29 d0             	sub    rax,rdx
  401207:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  40120b:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  40120f:	48 01 d0             	add    rax,rdx
  401212:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  401215:	48 63 ca             	movsxd rcx,edx
  401218:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  40121c:	48 01 ca             	add    rdx,rcx
  40121f:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  401222:	88 02                	mov    BYTE PTR [rdx],al
  401224:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  401228:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  40122b:	48 98                	cdqe   
  40122d:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
  401231:	77 c7                	ja     4011fa <reverse+0x19>
  401233:	90                   	nop
  401234:	90                   	nop
  401235:	5d                   	pop    rbp
  401236:	c3                   	ret    

0000000000401237 <xor>:
  401237:	55                   	push   rbp
  401238:	48 89 e5             	mov    rbp,rsp
  40123b:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  40123f:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  401243:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  401247:	89 c8                	mov    eax,ecx
  401249:	88 45 d4             	mov    BYTE PTR [rbp-0x2c],al
  40124c:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  401253:	eb 26                	jmp    40127b <xor+0x44>
  401255:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401258:	48 63 d0             	movsxd rdx,eax
  40125b:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  40125f:	48 01 d0             	add    rax,rdx
  401262:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  401265:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  401268:	48 63 ca             	movsxd rcx,edx
  40126b:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  40126f:	48 01 ca             	add    rdx,rcx
  401272:	32 45 d4             	xor    al,BYTE PTR [rbp-0x2c]
  401275:	88 02                	mov    BYTE PTR [rdx],al
  401277:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  40127b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  40127e:	48 98                	cdqe   
  401280:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
  401284:	77 cf                	ja     401255 <xor+0x1e>
  401286:	90                   	nop
  401287:	90                   	nop
  401288:	5d                   	pop    rbp
  401289:	c3                   	ret    

000000000040128a <exam>:
  40128a:	55                   	push   rbp
  40128b:	48 89 e5             	mov    rbp,rsp
  40128e:	48 83 ec 30          	sub    rsp,0x30
  401292:	bf 20 21 40 00       	mov    edi,0x402120
  401297:	e8 b4 fd ff ff       	call   401050 <readline@plt>
  40129c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4012a0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4012a4:	be 70 21 40 00       	mov    esi,0x402170
  4012a9:	48 89 c7             	mov    rdi,rax
  4012ac:	e8 af fd ff ff       	call   401060 <strcmp@plt>
  4012b1:	85 c0                	test   eax,eax
  4012b3:	74 14                	je     4012c9 <exam+0x3f>
  4012b5:	bf 82 21 40 00       	mov    edi,0x402182
  4012ba:	e8 81 fd ff ff       	call   401040 <puts@plt>
  4012bf:	bf ff ff ff ff       	mov    edi,0xffffffff
  4012c4:	e8 b7 fd ff ff       	call   401080 <exit@plt>
  4012c9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4012cd:	48 89 c7             	mov    rdi,rax
  4012d0:	e8 5b fd ff ff       	call   401030 <free@plt>
  4012d5:	48 c7 45 ec 00 00 00 	mov    QWORD PTR [rbp-0x14],0x0
  4012dc:	00 
  4012dd:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  4012e4:	48 8d 45 ec          	lea    rax,[rbp-0x14]
  4012e8:	ba 0b 00 00 00       	mov    edx,0xb
  4012ed:	be 60 40 40 00       	mov    esi,0x404060
  4012f2:	48 89 c7             	mov    rdi,rax
  4012f5:	e8 e7 fe ff ff       	call   4011e1 <reverse>
  4012fa:	bf 98 21 40 00       	mov    edi,0x402198
  4012ff:	e8 4c fd ff ff       	call   401050 <readline@plt>
  401304:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401308:	48 8d 55 ec          	lea    rdx,[rbp-0x14]
  40130c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401310:	48 89 d6             	mov    rsi,rdx
  401313:	48 89 c7             	mov    rdi,rax
  401316:	e8 45 fd ff ff       	call   401060 <strcmp@plt>
  40131b:	85 c0                	test   eax,eax
  40131d:	74 14                	je     401333 <exam+0xa9>
  40131f:	bf c8 21 40 00       	mov    edi,0x4021c8
  401324:	e8 17 fd ff ff       	call   401040 <puts@plt>
  401329:	bf ff ff ff ff       	mov    edi,0xffffffff
  40132e:	e8 4d fd ff ff       	call   401080 <exit@plt>
  401333:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401337:	48 89 c7             	mov    rdi,rax
  40133a:	e8 f1 fc ff ff       	call   401030 <free@plt>
  40133f:	48 c7 45 d0 00 00 00 	mov    QWORD PTR [rbp-0x30],0x0
  401346:	00 
  401347:	48 c7 45 d8 00 00 00 	mov    QWORD PTR [rbp-0x28],0x0
  40134e:	00 
  40134f:	c6 45 e0 00          	mov    BYTE PTR [rbp-0x20],0x0
  401353:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  401357:	b9 13 00 00 00       	mov    ecx,0x13
  40135c:	ba 11 00 00 00       	mov    edx,0x11
  401361:	be 70 40 40 00       	mov    esi,0x404070
  401366:	48 89 c7             	mov    rdi,rax
  401369:	e8 c9 fe ff ff       	call   401237 <xor>
  40136e:	bf e8 21 40 00       	mov    edi,0x4021e8
  401373:	e8 d8 fc ff ff       	call   401050 <readline@plt>
  401378:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40137c:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  401380:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401384:	48 89 d6             	mov    rsi,rdx
  401387:	48 89 c7             	mov    rdi,rax
  40138a:	e8 d1 fc ff ff       	call   401060 <strcmp@plt>
  40138f:	85 c0                	test   eax,eax
  401391:	74 14                	je     4013a7 <exam+0x11d>
  401393:	bf 2c 22 40 00       	mov    edi,0x40222c
  401398:	e8 a3 fc ff ff       	call   401040 <puts@plt>
  40139d:	bf ff ff ff ff       	mov    edi,0xffffffff
  4013a2:	e8 d9 fc ff ff       	call   401080 <exit@plt>
  4013a7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4013ab:	48 89 c7             	mov    rdi,rax
  4013ae:	e8 7d fc ff ff       	call   401030 <free@plt>
  4013b3:	90                   	nop
  4013b4:	c9                   	leave  
  4013b5:	c3                   	ret    
  4013b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4013bd:	00 00 00 

00000000004013c0 <__libc_csu_init>:
  4013c0:	41 57                	push   r15
  4013c2:	4c 8d 3d 37 2a 00 00 	lea    r15,[rip+0x2a37]        # 403e00 <__frame_dummy_init_array_entry>
  4013c9:	41 56                	push   r14
  4013cb:	49 89 d6             	mov    r14,rdx
  4013ce:	41 55                	push   r13
  4013d0:	49 89 f5             	mov    r13,rsi
  4013d3:	41 54                	push   r12
  4013d5:	41 89 fc             	mov    r12d,edi
  4013d8:	55                   	push   rbp
  4013d9:	48 8d 2d 28 2a 00 00 	lea    rbp,[rip+0x2a28]        # 403e08 <__do_global_dtors_aux_fini_array_entry>
  4013e0:	53                   	push   rbx
  4013e1:	4c 29 fd             	sub    rbp,r15
  4013e4:	48 83 ec 08          	sub    rsp,0x8
  4013e8:	e8 13 fc ff ff       	call   401000 <_init>
  4013ed:	48 c1 fd 03          	sar    rbp,0x3
  4013f1:	74 1b                	je     40140e <__libc_csu_init+0x4e>
  4013f3:	31 db                	xor    ebx,ebx
  4013f5:	0f 1f 00             	nop    DWORD PTR [rax]
  4013f8:	4c 89 f2             	mov    rdx,r14
  4013fb:	4c 89 ee             	mov    rsi,r13
  4013fe:	44 89 e7             	mov    edi,r12d
  401401:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
  401405:	48 83 c3 01          	add    rbx,0x1
  401409:	48 39 dd             	cmp    rbp,rbx
  40140c:	75 ea                	jne    4013f8 <__libc_csu_init+0x38>
  40140e:	48 83 c4 08          	add    rsp,0x8
  401412:	5b                   	pop    rbx
  401413:	5d                   	pop    rbp
  401414:	41 5c                	pop    r12
  401416:	41 5d                	pop    r13
  401418:	41 5e                	pop    r14
  40141a:	41 5f                	pop    r15
  40141c:	c3                   	ret    
  40141d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000401420 <__libc_csu_fini>:
  401420:	c3                   	ret    

Disassembly of section .fini:

0000000000401424 <_fini>:
  401424:	48 83 ec 08          	sub    rsp,0x8
  401428:	48 83 c4 08          	add    rsp,0x8
  40142c:	c3                   	ret    
