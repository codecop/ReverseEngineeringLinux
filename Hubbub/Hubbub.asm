
Hubbub:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 5d 00 	jmp	0xba	; 0xba <__ctors_end>
       4:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
       8:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
       c:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      10:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      14:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      18:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      1c:	0c 94 31 02 	jmp	0x462	; 0x462 <__vector_7>
      20:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      24:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      28:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      2c:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      30:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      34:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      38:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      3c:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      40:	0c 94 e7 01 	jmp	0x3ce	; 0x3ce <__vector_16>
      44:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      48:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      4c:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      50:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      54:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      58:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      5c:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      60:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>
      64:	0c 94 7a 00 	jmp	0xf4	; 0xf4 <__bad_interrupt>

00000068 <__trampolines_end>:
      68:	00 00       	nop
      6a:	00 08       	sbc	r0, r0
      6c:	00 02       	muls	r16, r16
      6e:	01 00       	.word	0x0001	; ????
      70:	00 03       	mulsu	r16, r16
      72:	04 07       	cpc	r16, r20
	...

0000007c <_ZL21tone_pin_to_timer_PGM>:
      7c:	02                                                  .

0000007d <port_to_output_PGM>:
      7d:	00 00 00 00 25 00 28 00 2b 00                       ....%.(.+.

00000087 <port_to_mode_PGM>:
      87:	00 00 00 00 24 00 27 00 2a 00                       ....$.'.*.

00000091 <digital_pin_to_port_PGM>:
      91:	04 04 04 04 04 04 04 04 02 02 02 02 02 02 03 03     ................
      a1:	03 03 03 03                                         ....

000000a5 <digital_pin_to_bit_mask_PGM>:
      a5:	01 02 04 08 10 20 40 80 01 02 04 08 10 20 01 02     ..... @...... ..
      b5:	04 08 10 20 00                                      ... .

000000ba <__ctors_end>:
      ba:	11 24       	eor	r1, r1
      bc:	1f be       	out	0x3f, r1	; 63
      be:	cf ef       	ldi	r28, 0xFF	; 255
      c0:	d8 e0       	ldi	r29, 0x08	; 8
      c2:	de bf       	out	0x3e, r29	; 62
      c4:	cd bf       	out	0x3d, r28	; 61

000000c6 <__do_copy_data>:
      c6:	11 e0       	ldi	r17, 0x01	; 1
      c8:	a0 e0       	ldi	r26, 0x00	; 0
      ca:	b1 e0       	ldi	r27, 0x01	; 1
      cc:	e4 ea       	ldi	r30, 0xA4	; 164
      ce:	f3 e1       	ldi	r31, 0x13	; 19
      d0:	02 c0       	rjmp	.+4      	; 0xd6 <__do_copy_data+0x10>
      d2:	05 90       	lpm	r0, Z+
      d4:	0d 92       	st	X+, r0
      d6:	a2 30       	cpi	r26, 0x02	; 2
      d8:	b1 07       	cpc	r27, r17
      da:	d9 f7       	brne	.-10     	; 0xd2 <__do_copy_data+0xc>

000000dc <__do_clear_bss>:
      dc:	21 e0       	ldi	r18, 0x01	; 1
      de:	a2 e0       	ldi	r26, 0x02	; 2
      e0:	b1 e0       	ldi	r27, 0x01	; 1
      e2:	01 c0       	rjmp	.+2      	; 0xe6 <.do_clear_bss_start>

000000e4 <.do_clear_bss_loop>:
      e4:	1d 92       	st	X+, r1

000000e6 <.do_clear_bss_start>:
      e6:	ac 31       	cpi	r26, 0x1C	; 28
      e8:	b2 07       	cpc	r27, r18
      ea:	e1 f7       	brne	.-8      	; 0xe4 <.do_clear_bss_loop>
      ec:	0e 94 f4 02 	call	0x5e8	; 0x5e8 <main>
      f0:	0c 94 d0 09 	jmp	0x13a0	; 0x13a0 <_exit>

000000f4 <__bad_interrupt>:
      f4:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000f8 <pinMode.constprop.3>:
      f8:	ef ea       	ldi	r30, 0xAF	; 175
      fa:	f0 e0       	ldi	r31, 0x00	; 0
      fc:	24 91       	lpm	r18, Z
      fe:	eb e9       	ldi	r30, 0x9B	; 155
     100:	f0 e0       	ldi	r31, 0x00	; 0
     102:	84 91       	lpm	r24, Z
     104:	88 23       	and	r24, r24
     106:	99 f0       	breq	.+38     	; 0x12e <pinMode.constprop.3+0x36>
     108:	90 e0       	ldi	r25, 0x00	; 0
     10a:	88 0f       	add	r24, r24
     10c:	99 1f       	adc	r25, r25
     10e:	fc 01       	movw	r30, r24
     110:	e9 57       	subi	r30, 0x79	; 121
     112:	ff 4f       	sbci	r31, 0xFF	; 255
     114:	a5 91       	lpm	r26, Z+
     116:	b4 91       	lpm	r27, Z
     118:	fc 01       	movw	r30, r24
     11a:	e3 58       	subi	r30, 0x83	; 131
     11c:	ff 4f       	sbci	r31, 0xFF	; 255
     11e:	85 91       	lpm	r24, Z+
     120:	94 91       	lpm	r25, Z
     122:	8f b7       	in	r24, 0x3f	; 63
     124:	f8 94       	cli
     126:	ec 91       	ld	r30, X
     128:	e2 2b       	or	r30, r18
     12a:	ec 93       	st	X, r30
     12c:	8f bf       	out	0x3f, r24	; 63
     12e:	08 95       	ret

00000130 <_Z4tonehjm.constprop.1>:
     130:	cf 92       	push	r12
     132:	df 92       	push	r13
     134:	ef 92       	push	r14
     136:	ff 92       	push	r15
     138:	1f 93       	push	r17
     13a:	cf 93       	push	r28
     13c:	df 93       	push	r29
     13e:	6b 01       	movw	r12, r22
     140:	7c 01       	movw	r14, r24
     142:	80 91 00 01 	lds	r24, 0x0100	; 0x800100 <__data_start>
     146:	8a 30       	cpi	r24, 0x0A	; 10
     148:	59 f0       	breq	.+22     	; 0x160 <_Z4tonehjm.constprop.1+0x30>
     14a:	8f 3f       	cpi	r24, 0xFF	; 255
     14c:	09 f4       	brne	.+2      	; 0x150 <_Z4tonehjm.constprop.1+0x20>
     14e:	3d c0       	rjmp	.+122    	; 0x1ca <_Z4tonehjm.constprop.1+0x9a>
     150:	df 91       	pop	r29
     152:	cf 91       	pop	r28
     154:	1f 91       	pop	r17
     156:	ff 90       	pop	r15
     158:	ef 90       	pop	r14
     15a:	df 90       	pop	r13
     15c:	cf 90       	pop	r12
     15e:	08 95       	ret
     160:	ec e7       	ldi	r30, 0x7C	; 124
     162:	f0 e0       	ldi	r31, 0x00	; 0
     164:	c4 91       	lpm	r28, Z
     166:	c7 fd       	sbrc	r28, 7
     168:	f3 cf       	rjmp	.-26     	; 0x150 <_Z4tonehjm.constprop.1+0x20>
     16a:	0e 94 7c 00 	call	0xf8	; 0xf8 <pinMode.constprop.3>
     16e:	cc 23       	and	r28, r28
     170:	09 f4       	brne	.+2      	; 0x174 <_Z4tonehjm.constprop.1+0x44>
     172:	58 c0       	rjmp	.+176    	; 0x224 <_Z4tonehjm.constprop.1+0xf4>
     174:	c2 30       	cpi	r28, 0x02	; 2
     176:	09 f4       	brne	.+2      	; 0x17a <_Z4tonehjm.constprop.1+0x4a>
     178:	a5 c0       	rjmp	.+330    	; 0x2c4 <_Z4tonehjm.constprop.1+0x194>
     17a:	c1 30       	cpi	r28, 0x01	; 1
     17c:	09 f4       	brne	.+2      	; 0x180 <_Z4tonehjm.constprop.1+0x50>
     17e:	77 c0       	rjmp	.+238    	; 0x26e <_Z4tonehjm.constprop.1+0x13e>
     180:	df e7       	ldi	r29, 0x7F	; 127
     182:	1e e3       	ldi	r17, 0x3E	; 62
     184:	a8 ee       	ldi	r26, 0xE8	; 232
     186:	b3 e0       	ldi	r27, 0x03	; 3
     188:	a7 01       	movw	r20, r14
     18a:	96 01       	movw	r18, r12
     18c:	0e 94 b6 09 	call	0x136c	; 0x136c <__muluhisi3>
     190:	28 ee       	ldi	r18, 0xE8	; 232
     192:	33 e0       	ldi	r19, 0x03	; 3
     194:	40 e0       	ldi	r20, 0x00	; 0
     196:	50 e0       	ldi	r21, 0x00	; 0
     198:	0e 94 94 09 	call	0x1328	; 0x1328 <__udivmodsi4>
     19c:	c1 30       	cpi	r28, 0x01	; 1
     19e:	09 f4       	brne	.+2      	; 0x1a2 <_Z4tonehjm.constprop.1+0x72>
     1a0:	9b c0       	rjmp	.+310    	; 0x2d8 <_Z4tonehjm.constprop.1+0x1a8>
     1a2:	c2 30       	cpi	r28, 0x02	; 2
     1a4:	09 f4       	brne	.+2      	; 0x1a8 <_Z4tonehjm.constprop.1+0x78>
     1a6:	ac c0       	rjmp	.+344    	; 0x300 <_Z4tonehjm.constprop.1+0x1d0>
     1a8:	c1 11       	cpse	r28, r1
     1aa:	d2 cf       	rjmp	.-92     	; 0x150 <_Z4tonehjm.constprop.1+0x20>
     1ac:	d7 bd       	out	0x27, r29	; 39
     1ae:	20 93 18 01 	sts	0x0118, r18	; 0x800118 <timer0_toggle_count>
     1b2:	30 93 19 01 	sts	0x0119, r19	; 0x800119 <timer0_toggle_count+0x1>
     1b6:	40 93 1a 01 	sts	0x011A, r20	; 0x80011a <timer0_toggle_count+0x2>
     1ba:	50 93 1b 01 	sts	0x011B, r21	; 0x80011b <timer0_toggle_count+0x3>
     1be:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
     1c2:	82 60       	ori	r24, 0x02	; 2
     1c4:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
     1c8:	c3 cf       	rjmp	.-122    	; 0x150 <_Z4tonehjm.constprop.1+0x20>
     1ca:	8a e0       	ldi	r24, 0x0A	; 10
     1cc:	80 93 00 01 	sts	0x0100, r24	; 0x800100 <__data_start>
     1d0:	ec e7       	ldi	r30, 0x7C	; 124
     1d2:	f0 e0       	ldi	r31, 0x00	; 0
     1d4:	c4 91       	lpm	r28, Z
     1d6:	cf 3f       	cpi	r28, 0xFF	; 255
     1d8:	09 f4       	brne	.+2      	; 0x1dc <_Z4tonehjm.constprop.1+0xac>
     1da:	ba cf       	rjmp	.-140    	; 0x150 <_Z4tonehjm.constprop.1+0x20>
     1dc:	c1 30       	cpi	r28, 0x01	; 1
     1de:	41 f1       	breq	.+80     	; 0x230 <_Z4tonehjm.constprop.1+0x100>
     1e0:	40 f0       	brcs	.+16     	; 0x1f2 <_Z4tonehjm.constprop.1+0xc2>
     1e2:	c2 30       	cpi	r28, 0x02	; 2
     1e4:	09 f4       	brne	.+2      	; 0x1e8 <_Z4tonehjm.constprop.1+0xb8>
     1e6:	4b c0       	rjmp	.+150    	; 0x27e <_Z4tonehjm.constprop.1+0x14e>
     1e8:	c7 fd       	sbrc	r28, 7
     1ea:	b2 cf       	rjmp	.-156    	; 0x150 <_Z4tonehjm.constprop.1+0x20>
     1ec:	0e 94 7c 00 	call	0xf8	; 0xf8 <pinMode.constprop.3>
     1f0:	c1 cf       	rjmp	.-126    	; 0x174 <_Z4tonehjm.constprop.1+0x44>
     1f2:	14 bc       	out	0x24, r1	; 36
     1f4:	15 bc       	out	0x25, r1	; 37
     1f6:	84 b5       	in	r24, 0x24	; 36
     1f8:	82 60       	ori	r24, 0x02	; 2
     1fa:	84 bd       	out	0x24, r24	; 36
     1fc:	85 b5       	in	r24, 0x25	; 37
     1fe:	81 60       	ori	r24, 0x01	; 1
     200:	85 bd       	out	0x25, r24	; 37
     202:	eb e9       	ldi	r30, 0x9B	; 155
     204:	f0 e0       	ldi	r31, 0x00	; 0
     206:	e4 91       	lpm	r30, Z
     208:	f0 e0       	ldi	r31, 0x00	; 0
     20a:	ee 0f       	add	r30, r30
     20c:	ff 1f       	adc	r31, r31
     20e:	e3 58       	subi	r30, 0x83	; 131
     210:	ff 4f       	sbci	r31, 0xFF	; 255
     212:	85 91       	lpm	r24, Z+
     214:	94 91       	lpm	r25, Z
     216:	ef ea       	ldi	r30, 0xAF	; 175
     218:	f0 e0       	ldi	r31, 0x00	; 0
     21a:	e4 91       	lpm	r30, Z
     21c:	e0 93 0f 01 	sts	0x010F, r30	; 0x80010f <timer0_pin_mask>
     220:	0e 94 7c 00 	call	0xf8	; 0xf8 <pinMode.constprop.3>
     224:	85 b5       	in	r24, 0x25	; 37
     226:	88 7f       	andi	r24, 0xF8	; 248
     228:	83 60       	ori	r24, 0x03	; 3
     22a:	85 bd       	out	0x25, r24	; 37
     22c:	c0 e0       	ldi	r28, 0x00	; 0
     22e:	51 c0       	rjmp	.+162    	; 0x2d2 <_Z4tonehjm.constprop.1+0x1a2>
     230:	10 92 80 00 	sts	0x0080, r1	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
     234:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     238:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     23c:	88 60       	ori	r24, 0x08	; 8
     23e:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     242:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     246:	81 60       	ori	r24, 0x01	; 1
     248:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     24c:	eb e9       	ldi	r30, 0x9B	; 155
     24e:	f0 e0       	ldi	r31, 0x00	; 0
     250:	e4 91       	lpm	r30, Z
     252:	f0 e0       	ldi	r31, 0x00	; 0
     254:	ee 0f       	add	r30, r30
     256:	ff 1f       	adc	r31, r31
     258:	e3 58       	subi	r30, 0x83	; 131
     25a:	ff 4f       	sbci	r31, 0xFF	; 255
     25c:	85 91       	lpm	r24, Z+
     25e:	94 91       	lpm	r25, Z
     260:	ef ea       	ldi	r30, 0xAF	; 175
     262:	f0 e0       	ldi	r31, 0x00	; 0
     264:	e4 91       	lpm	r30, Z
     266:	e0 93 0e 01 	sts	0x010E, r30	; 0x80010e <timer1_pin_mask>
     26a:	0e 94 7c 00 	call	0xf8	; 0xf8 <pinMode.constprop.3>
     26e:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     272:	88 7f       	andi	r24, 0xF8	; 248
     274:	81 60       	ori	r24, 0x01	; 1
     276:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     27a:	c1 e0       	ldi	r28, 0x01	; 1
     27c:	81 cf       	rjmp	.-254    	; 0x180 <_Z4tonehjm.constprop.1+0x50>
     27e:	10 92 b0 00 	sts	0x00B0, r1	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
     282:	10 92 b1 00 	sts	0x00B1, r1	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
     286:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
     28a:	82 60       	ori	r24, 0x02	; 2
     28c:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
     290:	80 91 b1 00 	lds	r24, 0x00B1	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
     294:	81 60       	ori	r24, 0x01	; 1
     296:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
     29a:	eb e9       	ldi	r30, 0x9B	; 155
     29c:	f0 e0       	ldi	r31, 0x00	; 0
     29e:	e4 91       	lpm	r30, Z
     2a0:	f0 e0       	ldi	r31, 0x00	; 0
     2a2:	ee 0f       	add	r30, r30
     2a4:	ff 1f       	adc	r31, r31
     2a6:	e3 58       	subi	r30, 0x83	; 131
     2a8:	ff 4f       	sbci	r31, 0xFF	; 255
     2aa:	85 91       	lpm	r24, Z+
     2ac:	94 91       	lpm	r25, Z
     2ae:	90 93 0d 01 	sts	0x010D, r25	; 0x80010d <timer2_pin_port+0x1>
     2b2:	80 93 0c 01 	sts	0x010C, r24	; 0x80010c <timer2_pin_port>
     2b6:	ef ea       	ldi	r30, 0xAF	; 175
     2b8:	f0 e0       	ldi	r31, 0x00	; 0
     2ba:	e4 91       	lpm	r30, Z
     2bc:	e0 93 0b 01 	sts	0x010B, r30	; 0x80010b <timer2_pin_mask>
     2c0:	0e 94 7c 00 	call	0xf8	; 0xf8 <pinMode.constprop.3>
     2c4:	80 91 b1 00 	lds	r24, 0x00B1	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
     2c8:	88 7f       	andi	r24, 0xF8	; 248
     2ca:	84 60       	ori	r24, 0x04	; 4
     2cc:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
     2d0:	c2 e0       	ldi	r28, 0x02	; 2
     2d2:	d9 ef       	ldi	r29, 0xF9	; 249
     2d4:	10 e0       	ldi	r17, 0x00	; 0
     2d6:	56 cf       	rjmp	.-340    	; 0x184 <_Z4tonehjm.constprop.1+0x54>
     2d8:	8d 2f       	mov	r24, r29
     2da:	91 2f       	mov	r25, r17
     2dc:	90 93 89 00 	sts	0x0089, r25	; 0x800089 <__DATA_REGION_ORIGIN__+0x29>
     2e0:	80 93 88 00 	sts	0x0088, r24	; 0x800088 <__DATA_REGION_ORIGIN__+0x28>
     2e4:	20 93 14 01 	sts	0x0114, r18	; 0x800114 <timer1_toggle_count>
     2e8:	30 93 15 01 	sts	0x0115, r19	; 0x800115 <timer1_toggle_count+0x1>
     2ec:	40 93 16 01 	sts	0x0116, r20	; 0x800116 <timer1_toggle_count+0x2>
     2f0:	50 93 17 01 	sts	0x0117, r21	; 0x800117 <timer1_toggle_count+0x3>
     2f4:	80 91 6f 00 	lds	r24, 0x006F	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
     2f8:	82 60       	ori	r24, 0x02	; 2
     2fa:	80 93 6f 00 	sts	0x006F, r24	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
     2fe:	28 cf       	rjmp	.-432    	; 0x150 <_Z4tonehjm.constprop.1+0x20>
     300:	d0 93 b3 00 	sts	0x00B3, r29	; 0x8000b3 <__DATA_REGION_ORIGIN__+0x53>
     304:	20 93 10 01 	sts	0x0110, r18	; 0x800110 <timer2_toggle_count>
     308:	30 93 11 01 	sts	0x0111, r19	; 0x800111 <timer2_toggle_count+0x1>
     30c:	40 93 12 01 	sts	0x0112, r20	; 0x800112 <timer2_toggle_count+0x2>
     310:	50 93 13 01 	sts	0x0113, r21	; 0x800113 <timer2_toggle_count+0x3>
     314:	80 91 70 00 	lds	r24, 0x0070	; 0x800070 <__DATA_REGION_ORIGIN__+0x10>
     318:	82 60       	ori	r24, 0x02	; 2
     31a:	80 93 70 00 	sts	0x0070, r24	; 0x800070 <__DATA_REGION_ORIGIN__+0x10>
     31e:	18 cf       	rjmp	.-464    	; 0x150 <_Z4tonehjm.constprop.1+0x20>

00000320 <micros>:
     320:	3f b7       	in	r19, 0x3f	; 63
     322:	f8 94       	cli
     324:	80 91 07 01 	lds	r24, 0x0107	; 0x800107 <timer0_overflow_count>
     328:	90 91 08 01 	lds	r25, 0x0108	; 0x800108 <timer0_overflow_count+0x1>
     32c:	a0 91 09 01 	lds	r26, 0x0109	; 0x800109 <timer0_overflow_count+0x2>
     330:	b0 91 0a 01 	lds	r27, 0x010A	; 0x80010a <timer0_overflow_count+0x3>
     334:	26 b5       	in	r18, 0x26	; 38
     336:	a8 9b       	sbis	0x15, 0	; 21
     338:	05 c0       	rjmp	.+10     	; 0x344 <micros+0x24>
     33a:	2f 3f       	cpi	r18, 0xFF	; 255
     33c:	19 f0       	breq	.+6      	; 0x344 <micros+0x24>
     33e:	01 96       	adiw	r24, 0x01	; 1
     340:	a1 1d       	adc	r26, r1
     342:	b1 1d       	adc	r27, r1
     344:	3f bf       	out	0x3f, r19	; 63
     346:	ba 2f       	mov	r27, r26
     348:	a9 2f       	mov	r26, r25
     34a:	98 2f       	mov	r25, r24
     34c:	88 27       	eor	r24, r24
     34e:	bc 01       	movw	r22, r24
     350:	cd 01       	movw	r24, r26
     352:	62 0f       	add	r22, r18
     354:	71 1d       	adc	r23, r1
     356:	81 1d       	adc	r24, r1
     358:	91 1d       	adc	r25, r1
     35a:	42 e0       	ldi	r20, 0x02	; 2
     35c:	66 0f       	add	r22, r22
     35e:	77 1f       	adc	r23, r23
     360:	88 1f       	adc	r24, r24
     362:	99 1f       	adc	r25, r25
     364:	4a 95       	dec	r20
     366:	d1 f7       	brne	.-12     	; 0x35c <micros+0x3c>
     368:	08 95       	ret

0000036a <delay>:
     36a:	8f 92       	push	r8
     36c:	9f 92       	push	r9
     36e:	af 92       	push	r10
     370:	bf 92       	push	r11
     372:	cf 92       	push	r12
     374:	df 92       	push	r13
     376:	ef 92       	push	r14
     378:	ff 92       	push	r15
     37a:	4b 01       	movw	r8, r22
     37c:	5c 01       	movw	r10, r24
     37e:	0e 94 90 01 	call	0x320	; 0x320 <micros>
     382:	6b 01       	movw	r12, r22
     384:	7c 01       	movw	r14, r24
     386:	0e 94 90 01 	call	0x320	; 0x320 <micros>
     38a:	6c 19       	sub	r22, r12
     38c:	7d 09       	sbc	r23, r13
     38e:	8e 09       	sbc	r24, r14
     390:	9f 09       	sbc	r25, r15
     392:	68 3e       	cpi	r22, 0xE8	; 232
     394:	73 40       	sbci	r23, 0x03	; 3
     396:	81 05       	cpc	r24, r1
     398:	91 05       	cpc	r25, r1
     39a:	a8 f3       	brcs	.-22     	; 0x386 <delay+0x1c>
     39c:	21 e0       	ldi	r18, 0x01	; 1
     39e:	82 1a       	sub	r8, r18
     3a0:	91 08       	sbc	r9, r1
     3a2:	a1 08       	sbc	r10, r1
     3a4:	b1 08       	sbc	r11, r1
     3a6:	88 ee       	ldi	r24, 0xE8	; 232
     3a8:	c8 0e       	add	r12, r24
     3aa:	83 e0       	ldi	r24, 0x03	; 3
     3ac:	d8 1e       	adc	r13, r24
     3ae:	e1 1c       	adc	r14, r1
     3b0:	f1 1c       	adc	r15, r1
     3b2:	81 14       	cp	r8, r1
     3b4:	91 04       	cpc	r9, r1
     3b6:	a1 04       	cpc	r10, r1
     3b8:	b1 04       	cpc	r11, r1
     3ba:	29 f7       	brne	.-54     	; 0x386 <delay+0x1c>
     3bc:	ff 90       	pop	r15
     3be:	ef 90       	pop	r14
     3c0:	df 90       	pop	r13
     3c2:	cf 90       	pop	r12
     3c4:	bf 90       	pop	r11
     3c6:	af 90       	pop	r10
     3c8:	9f 90       	pop	r9
     3ca:	8f 90       	pop	r8
     3cc:	08 95       	ret

000003ce <__vector_16>:
     3ce:	1f 92       	push	r1
     3d0:	0f 92       	push	r0
     3d2:	0f b6       	in	r0, 0x3f	; 63
     3d4:	0f 92       	push	r0
     3d6:	11 24       	eor	r1, r1
     3d8:	2f 93       	push	r18
     3da:	3f 93       	push	r19
     3dc:	8f 93       	push	r24
     3de:	9f 93       	push	r25
     3e0:	af 93       	push	r26
     3e2:	bf 93       	push	r27
     3e4:	80 91 03 01 	lds	r24, 0x0103	; 0x800103 <timer0_millis>
     3e8:	90 91 04 01 	lds	r25, 0x0104	; 0x800104 <timer0_millis+0x1>
     3ec:	a0 91 05 01 	lds	r26, 0x0105	; 0x800105 <timer0_millis+0x2>
     3f0:	b0 91 06 01 	lds	r27, 0x0106	; 0x800106 <timer0_millis+0x3>
     3f4:	30 91 02 01 	lds	r19, 0x0102	; 0x800102 <__data_end>
     3f8:	23 e0       	ldi	r18, 0x03	; 3
     3fa:	23 0f       	add	r18, r19
     3fc:	2d 37       	cpi	r18, 0x7D	; 125
     3fe:	58 f5       	brcc	.+86     	; 0x456 <__LOCK_REGION_LENGTH__+0x56>
     400:	01 96       	adiw	r24, 0x01	; 1
     402:	a1 1d       	adc	r26, r1
     404:	b1 1d       	adc	r27, r1
     406:	20 93 02 01 	sts	0x0102, r18	; 0x800102 <__data_end>
     40a:	80 93 03 01 	sts	0x0103, r24	; 0x800103 <timer0_millis>
     40e:	90 93 04 01 	sts	0x0104, r25	; 0x800104 <timer0_millis+0x1>
     412:	a0 93 05 01 	sts	0x0105, r26	; 0x800105 <timer0_millis+0x2>
     416:	b0 93 06 01 	sts	0x0106, r27	; 0x800106 <timer0_millis+0x3>
     41a:	80 91 07 01 	lds	r24, 0x0107	; 0x800107 <timer0_overflow_count>
     41e:	90 91 08 01 	lds	r25, 0x0108	; 0x800108 <timer0_overflow_count+0x1>
     422:	a0 91 09 01 	lds	r26, 0x0109	; 0x800109 <timer0_overflow_count+0x2>
     426:	b0 91 0a 01 	lds	r27, 0x010A	; 0x80010a <timer0_overflow_count+0x3>
     42a:	01 96       	adiw	r24, 0x01	; 1
     42c:	a1 1d       	adc	r26, r1
     42e:	b1 1d       	adc	r27, r1
     430:	80 93 07 01 	sts	0x0107, r24	; 0x800107 <timer0_overflow_count>
     434:	90 93 08 01 	sts	0x0108, r25	; 0x800108 <timer0_overflow_count+0x1>
     438:	a0 93 09 01 	sts	0x0109, r26	; 0x800109 <timer0_overflow_count+0x2>
     43c:	b0 93 0a 01 	sts	0x010A, r27	; 0x80010a <timer0_overflow_count+0x3>
     440:	bf 91       	pop	r27
     442:	af 91       	pop	r26
     444:	9f 91       	pop	r25
     446:	8f 91       	pop	r24
     448:	3f 91       	pop	r19
     44a:	2f 91       	pop	r18
     44c:	0f 90       	pop	r0
     44e:	0f be       	out	0x3f, r0	; 63
     450:	0f 90       	pop	r0
     452:	1f 90       	pop	r1
     454:	18 95       	reti
     456:	26 e8       	ldi	r18, 0x86	; 134
     458:	23 0f       	add	r18, r19
     45a:	02 96       	adiw	r24, 0x02	; 2
     45c:	a1 1d       	adc	r26, r1
     45e:	b1 1d       	adc	r27, r1
     460:	d2 cf       	rjmp	.-92     	; 0x406 <__LOCK_REGION_LENGTH__+0x6>

00000462 <__vector_7>:
     462:	1f 92       	push	r1
     464:	0f 92       	push	r0
     466:	0f b6       	in	r0, 0x3f	; 63
     468:	0f 92       	push	r0
     46a:	11 24       	eor	r1, r1
     46c:	2f 93       	push	r18
     46e:	3f 93       	push	r19
     470:	8f 93       	push	r24
     472:	9f 93       	push	r25
     474:	af 93       	push	r26
     476:	bf 93       	push	r27
     478:	ef 93       	push	r30
     47a:	ff 93       	push	r31
     47c:	80 91 10 01 	lds	r24, 0x0110	; 0x800110 <timer2_toggle_count>
     480:	90 91 11 01 	lds	r25, 0x0111	; 0x800111 <timer2_toggle_count+0x1>
     484:	a0 91 12 01 	lds	r26, 0x0112	; 0x800112 <timer2_toggle_count+0x2>
     488:	b0 91 13 01 	lds	r27, 0x0113	; 0x800113 <timer2_toggle_count+0x3>
     48c:	89 2b       	or	r24, r25
     48e:	8a 2b       	or	r24, r26
     490:	8b 2b       	or	r24, r27
     492:	b1 f1       	breq	.+108    	; 0x500 <__vector_7+0x9e>
     494:	90 91 0b 01 	lds	r25, 0x010B	; 0x80010b <timer2_pin_mask>
     498:	e0 91 0c 01 	lds	r30, 0x010C	; 0x80010c <timer2_pin_port>
     49c:	f0 91 0d 01 	lds	r31, 0x010D	; 0x80010d <timer2_pin_port+0x1>
     4a0:	80 81       	ld	r24, Z
     4a2:	89 27       	eor	r24, r25
     4a4:	80 83       	st	Z, r24
     4a6:	80 91 10 01 	lds	r24, 0x0110	; 0x800110 <timer2_toggle_count>
     4aa:	90 91 11 01 	lds	r25, 0x0111	; 0x800111 <timer2_toggle_count+0x1>
     4ae:	a0 91 12 01 	lds	r26, 0x0112	; 0x800112 <timer2_toggle_count+0x2>
     4b2:	b0 91 13 01 	lds	r27, 0x0113	; 0x800113 <timer2_toggle_count+0x3>
     4b6:	18 16       	cp	r1, r24
     4b8:	19 06       	cpc	r1, r25
     4ba:	1a 06       	cpc	r1, r26
     4bc:	1b 06       	cpc	r1, r27
     4be:	9c f4       	brge	.+38     	; 0x4e6 <__vector_7+0x84>
     4c0:	80 91 10 01 	lds	r24, 0x0110	; 0x800110 <timer2_toggle_count>
     4c4:	90 91 11 01 	lds	r25, 0x0111	; 0x800111 <timer2_toggle_count+0x1>
     4c8:	a0 91 12 01 	lds	r26, 0x0112	; 0x800112 <timer2_toggle_count+0x2>
     4cc:	b0 91 13 01 	lds	r27, 0x0113	; 0x800113 <timer2_toggle_count+0x3>
     4d0:	01 97       	sbiw	r24, 0x01	; 1
     4d2:	a1 09       	sbc	r26, r1
     4d4:	b1 09       	sbc	r27, r1
     4d6:	80 93 10 01 	sts	0x0110, r24	; 0x800110 <timer2_toggle_count>
     4da:	90 93 11 01 	sts	0x0111, r25	; 0x800111 <timer2_toggle_count+0x1>
     4de:	a0 93 12 01 	sts	0x0112, r26	; 0x800112 <timer2_toggle_count+0x2>
     4e2:	b0 93 13 01 	sts	0x0113, r27	; 0x800113 <timer2_toggle_count+0x3>
     4e6:	ff 91       	pop	r31
     4e8:	ef 91       	pop	r30
     4ea:	bf 91       	pop	r27
     4ec:	af 91       	pop	r26
     4ee:	9f 91       	pop	r25
     4f0:	8f 91       	pop	r24
     4f2:	3f 91       	pop	r19
     4f4:	2f 91       	pop	r18
     4f6:	0f 90       	pop	r0
     4f8:	0f be       	out	0x3f, r0	; 63
     4fa:	0f 90       	pop	r0
     4fc:	1f 90       	pop	r1
     4fe:	18 95       	reti
     500:	80 91 00 01 	lds	r24, 0x0100	; 0x800100 <__data_start>
     504:	ec e7       	ldi	r30, 0x7C	; 124
     506:	f0 e0       	ldi	r31, 0x00	; 0
     508:	e4 91       	lpm	r30, Z
     50a:	9f ef       	ldi	r25, 0xFF	; 255
     50c:	90 93 00 01 	sts	0x0100, r25	; 0x800100 <__data_start>
     510:	e1 30       	cpi	r30, 0x01	; 1
     512:	09 f4       	brne	.+2      	; 0x516 <__vector_7+0xb4>
     514:	31 c0       	rjmp	.+98     	; 0x578 <__vector_7+0x116>
     516:	68 f1       	brcs	.+90     	; 0x572 <__vector_7+0x110>
     518:	e2 30       	cpi	r30, 0x02	; 2
     51a:	09 f4       	brne	.+2      	; 0x51e <__vector_7+0xbc>
     51c:	33 c0       	rjmp	.+102    	; 0x584 <__vector_7+0x122>
     51e:	90 e0       	ldi	r25, 0x00	; 0
     520:	fc 01       	movw	r30, r24
     522:	e8 59       	subi	r30, 0x98	; 152
     524:	ff 4f       	sbci	r31, 0xFF	; 255
     526:	24 91       	lpm	r18, Z
     528:	fc 01       	movw	r30, r24
     52a:	eb 55       	subi	r30, 0x5B	; 91
     52c:	ff 4f       	sbci	r31, 0xFF	; 255
     52e:	34 91       	lpm	r19, Z
     530:	fc 01       	movw	r30, r24
     532:	ef 56       	subi	r30, 0x6F	; 111
     534:	ff 4f       	sbci	r31, 0xFF	; 255
     536:	e4 91       	lpm	r30, Z
     538:	ee 23       	and	r30, r30
     53a:	a9 f2       	breq	.-86     	; 0x4e6 <__vector_7+0x84>
     53c:	22 23       	and	r18, r18
     53e:	51 f0       	breq	.+20     	; 0x554 <__vector_7+0xf2>
     540:	23 30       	cpi	r18, 0x03	; 3
     542:	09 f4       	brne	.+2      	; 0x546 <__vector_7+0xe4>
     544:	3a c0       	rjmp	.+116    	; 0x5ba <__vector_7+0x158>
     546:	78 f5       	brcc	.+94     	; 0x5a6 <__vector_7+0x144>
     548:	21 30       	cpi	r18, 0x01	; 1
     54a:	09 f4       	brne	.+2      	; 0x54e <__vector_7+0xec>
     54c:	3c c0       	rjmp	.+120    	; 0x5c6 <__vector_7+0x164>
     54e:	22 30       	cpi	r18, 0x02	; 2
     550:	09 f4       	brne	.+2      	; 0x554 <__vector_7+0xf2>
     552:	3d c0       	rjmp	.+122    	; 0x5ce <__vector_7+0x16c>
     554:	f0 e0       	ldi	r31, 0x00	; 0
     556:	ee 0f       	add	r30, r30
     558:	ff 1f       	adc	r31, r31
     55a:	e3 58       	subi	r30, 0x83	; 131
     55c:	ff 4f       	sbci	r31, 0xFF	; 255
     55e:	a5 91       	lpm	r26, Z+
     560:	b4 91       	lpm	r27, Z
     562:	8f b7       	in	r24, 0x3f	; 63
     564:	f8 94       	cli
     566:	ec 91       	ld	r30, X
     568:	30 95       	com	r19
     56a:	3e 23       	and	r19, r30
     56c:	3c 93       	st	X, r19
     56e:	8f bf       	out	0x3f, r24	; 63
     570:	ba cf       	rjmp	.-140    	; 0x4e6 <__vector_7+0x84>
     572:	10 92 6e 00 	sts	0x006E, r1	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
     576:	d3 cf       	rjmp	.-90     	; 0x51e <__vector_7+0xbc>
     578:	90 91 6f 00 	lds	r25, 0x006F	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
     57c:	9d 7f       	andi	r25, 0xFD	; 253
     57e:	90 93 6f 00 	sts	0x006F, r25	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
     582:	cd cf       	rjmp	.-102    	; 0x51e <__vector_7+0xbc>
     584:	90 91 70 00 	lds	r25, 0x0070	; 0x800070 <__DATA_REGION_ORIGIN__+0x10>
     588:	9d 7f       	andi	r25, 0xFD	; 253
     58a:	90 93 70 00 	sts	0x0070, r25	; 0x800070 <__DATA_REGION_ORIGIN__+0x10>
     58e:	91 e0       	ldi	r25, 0x01	; 1
     590:	90 93 b0 00 	sts	0x00B0, r25	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
     594:	90 91 b1 00 	lds	r25, 0x00B1	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
     598:	98 7f       	andi	r25, 0xF8	; 248
     59a:	94 60       	ori	r25, 0x04	; 4
     59c:	90 93 b1 00 	sts	0x00B1, r25	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
     5a0:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__DATA_REGION_ORIGIN__+0x53>
     5a4:	bc cf       	rjmp	.-136    	; 0x51e <__vector_7+0xbc>
     5a6:	27 30       	cpi	r18, 0x07	; 7
     5a8:	a9 f0       	breq	.+42     	; 0x5d4 <__vector_7+0x172>
     5aa:	28 30       	cpi	r18, 0x08	; 8
     5ac:	c9 f0       	breq	.+50     	; 0x5e0 <__vector_7+0x17e>
     5ae:	24 30       	cpi	r18, 0x04	; 4
     5b0:	89 f6       	brne	.-94     	; 0x554 <__vector_7+0xf2>
     5b2:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
     5b6:	8f 7d       	andi	r24, 0xDF	; 223
     5b8:	03 c0       	rjmp	.+6      	; 0x5c0 <__vector_7+0x15e>
     5ba:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
     5be:	8f 77       	andi	r24, 0x7F	; 127
     5c0:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
     5c4:	c7 cf       	rjmp	.-114    	; 0x554 <__vector_7+0xf2>
     5c6:	84 b5       	in	r24, 0x24	; 36
     5c8:	8f 77       	andi	r24, 0x7F	; 127
     5ca:	84 bd       	out	0x24, r24	; 36
     5cc:	c3 cf       	rjmp	.-122    	; 0x554 <__vector_7+0xf2>
     5ce:	84 b5       	in	r24, 0x24	; 36
     5d0:	8f 7d       	andi	r24, 0xDF	; 223
     5d2:	fb cf       	rjmp	.-10     	; 0x5ca <__vector_7+0x168>
     5d4:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
     5d8:	8f 77       	andi	r24, 0x7F	; 127
     5da:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
     5de:	ba cf       	rjmp	.-140    	; 0x554 <__vector_7+0xf2>
     5e0:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
     5e4:	8f 7d       	andi	r24, 0xDF	; 223
     5e6:	f9 cf       	rjmp	.-14     	; 0x5da <__vector_7+0x178>

000005e8 <main>:
     5e8:	78 94       	sei
     5ea:	84 b5       	in	r24, 0x24	; 36
     5ec:	82 60       	ori	r24, 0x02	; 2
     5ee:	84 bd       	out	0x24, r24	; 36
     5f0:	84 b5       	in	r24, 0x24	; 36
     5f2:	81 60       	ori	r24, 0x01	; 1
     5f4:	84 bd       	out	0x24, r24	; 36
     5f6:	85 b5       	in	r24, 0x25	; 37
     5f8:	82 60       	ori	r24, 0x02	; 2
     5fa:	85 bd       	out	0x25, r24	; 37
     5fc:	85 b5       	in	r24, 0x25	; 37
     5fe:	81 60       	ori	r24, 0x01	; 1
     600:	85 bd       	out	0x25, r24	; 37
     602:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
     606:	81 60       	ori	r24, 0x01	; 1
     608:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
     60c:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     610:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     614:	82 60       	ori	r24, 0x02	; 2
     616:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     61a:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     61e:	81 60       	ori	r24, 0x01	; 1
     620:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     624:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
     628:	81 60       	ori	r24, 0x01	; 1
     62a:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
     62e:	80 91 b1 00 	lds	r24, 0x00B1	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
     632:	84 60       	ori	r24, 0x04	; 4
     634:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
     638:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
     63c:	81 60       	ori	r24, 0x01	; 1
     63e:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
     642:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     646:	84 60       	ori	r24, 0x04	; 4
     648:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     64c:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     650:	82 60       	ori	r24, 0x02	; 2
     652:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     656:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     65a:	81 60       	ori	r24, 0x01	; 1
     65c:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     660:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     664:	80 68       	ori	r24, 0x80	; 128
     666:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     66a:	10 92 c1 00 	sts	0x00C1, r1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
     66e:	0e 94 7c 00 	call	0xf8	; 0xf8 <pinMode.constprop.3>
     672:	60 e9       	ldi	r22, 0x90	; 144
     674:	71 e0       	ldi	r23, 0x01	; 1
     676:	80 e0       	ldi	r24, 0x00	; 0
     678:	90 e0       	ldi	r25, 0x00	; 0
     67a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     67e:	6c e2       	ldi	r22, 0x2C	; 44
     680:	71 e0       	ldi	r23, 0x01	; 1
     682:	80 e0       	ldi	r24, 0x00	; 0
     684:	90 e0       	ldi	r25, 0x00	; 0
     686:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     68a:	60 e9       	ldi	r22, 0x90	; 144
     68c:	71 e0       	ldi	r23, 0x01	; 1
     68e:	80 e0       	ldi	r24, 0x00	; 0
     690:	90 e0       	ldi	r25, 0x00	; 0
     692:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     696:	60 e9       	ldi	r22, 0x90	; 144
     698:	71 e0       	ldi	r23, 0x01	; 1
     69a:	80 e0       	ldi	r24, 0x00	; 0
     69c:	90 e0       	ldi	r25, 0x00	; 0
     69e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     6a2:	6c e2       	ldi	r22, 0x2C	; 44
     6a4:	71 e0       	ldi	r23, 0x01	; 1
     6a6:	80 e0       	ldi	r24, 0x00	; 0
     6a8:	90 e0       	ldi	r25, 0x00	; 0
     6aa:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     6ae:	60 e9       	ldi	r22, 0x90	; 144
     6b0:	71 e0       	ldi	r23, 0x01	; 1
     6b2:	80 e0       	ldi	r24, 0x00	; 0
     6b4:	90 e0       	ldi	r25, 0x00	; 0
     6b6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     6ba:	60 e9       	ldi	r22, 0x90	; 144
     6bc:	71 e0       	ldi	r23, 0x01	; 1
     6be:	80 e0       	ldi	r24, 0x00	; 0
     6c0:	90 e0       	ldi	r25, 0x00	; 0
     6c2:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     6c6:	6c e2       	ldi	r22, 0x2C	; 44
     6c8:	71 e0       	ldi	r23, 0x01	; 1
     6ca:	80 e0       	ldi	r24, 0x00	; 0
     6cc:	90 e0       	ldi	r25, 0x00	; 0
     6ce:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     6d2:	60 e9       	ldi	r22, 0x90	; 144
     6d4:	71 e0       	ldi	r23, 0x01	; 1
     6d6:	80 e0       	ldi	r24, 0x00	; 0
     6d8:	90 e0       	ldi	r25, 0x00	; 0
     6da:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     6de:	60 e9       	ldi	r22, 0x90	; 144
     6e0:	71 e0       	ldi	r23, 0x01	; 1
     6e2:	80 e0       	ldi	r24, 0x00	; 0
     6e4:	90 e0       	ldi	r25, 0x00	; 0
     6e6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     6ea:	6c e2       	ldi	r22, 0x2C	; 44
     6ec:	71 e0       	ldi	r23, 0x01	; 1
     6ee:	80 e0       	ldi	r24, 0x00	; 0
     6f0:	90 e0       	ldi	r25, 0x00	; 0
     6f2:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     6f6:	60 e9       	ldi	r22, 0x90	; 144
     6f8:	71 e0       	ldi	r23, 0x01	; 1
     6fa:	80 e0       	ldi	r24, 0x00	; 0
     6fc:	90 e0       	ldi	r25, 0x00	; 0
     6fe:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     702:	68 ee       	ldi	r22, 0xE8	; 232
     704:	73 e0       	ldi	r23, 0x03	; 3
     706:	80 e0       	ldi	r24, 0x00	; 0
     708:	90 e0       	ldi	r25, 0x00	; 0
     70a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     70e:	60 e9       	ldi	r22, 0x90	; 144
     710:	71 e0       	ldi	r23, 0x01	; 1
     712:	80 e0       	ldi	r24, 0x00	; 0
     714:	90 e0       	ldi	r25, 0x00	; 0
     716:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     71a:	68 e5       	ldi	r22, 0x58	; 88
     71c:	72 e0       	ldi	r23, 0x02	; 2
     71e:	80 e0       	ldi	r24, 0x00	; 0
     720:	90 e0       	ldi	r25, 0x00	; 0
     722:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     726:	60 e9       	ldi	r22, 0x90	; 144
     728:	71 e0       	ldi	r23, 0x01	; 1
     72a:	80 e0       	ldi	r24, 0x00	; 0
     72c:	90 e0       	ldi	r25, 0x00	; 0
     72e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     732:	68 ee       	ldi	r22, 0xE8	; 232
     734:	73 e0       	ldi	r23, 0x03	; 3
     736:	80 e0       	ldi	r24, 0x00	; 0
     738:	90 e0       	ldi	r25, 0x00	; 0
     73a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     73e:	60 e9       	ldi	r22, 0x90	; 144
     740:	71 e0       	ldi	r23, 0x01	; 1
     742:	80 e0       	ldi	r24, 0x00	; 0
     744:	90 e0       	ldi	r25, 0x00	; 0
     746:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     74a:	68 e5       	ldi	r22, 0x58	; 88
     74c:	72 e0       	ldi	r23, 0x02	; 2
     74e:	80 e0       	ldi	r24, 0x00	; 0
     750:	90 e0       	ldi	r25, 0x00	; 0
     752:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     756:	60 e9       	ldi	r22, 0x90	; 144
     758:	71 e0       	ldi	r23, 0x01	; 1
     75a:	80 e0       	ldi	r24, 0x00	; 0
     75c:	90 e0       	ldi	r25, 0x00	; 0
     75e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     762:	60 e9       	ldi	r22, 0x90	; 144
     764:	71 e0       	ldi	r23, 0x01	; 1
     766:	80 e0       	ldi	r24, 0x00	; 0
     768:	90 e0       	ldi	r25, 0x00	; 0
     76a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     76e:	6c e2       	ldi	r22, 0x2C	; 44
     770:	71 e0       	ldi	r23, 0x01	; 1
     772:	80 e0       	ldi	r24, 0x00	; 0
     774:	90 e0       	ldi	r25, 0x00	; 0
     776:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     77a:	60 e9       	ldi	r22, 0x90	; 144
     77c:	71 e0       	ldi	r23, 0x01	; 1
     77e:	80 e0       	ldi	r24, 0x00	; 0
     780:	90 e0       	ldi	r25, 0x00	; 0
     782:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     786:	60 e9       	ldi	r22, 0x90	; 144
     788:	71 e0       	ldi	r23, 0x01	; 1
     78a:	80 e0       	ldi	r24, 0x00	; 0
     78c:	90 e0       	ldi	r25, 0x00	; 0
     78e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     792:	6c e2       	ldi	r22, 0x2C	; 44
     794:	71 e0       	ldi	r23, 0x01	; 1
     796:	80 e0       	ldi	r24, 0x00	; 0
     798:	90 e0       	ldi	r25, 0x00	; 0
     79a:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     79e:	60 e9       	ldi	r22, 0x90	; 144
     7a0:	71 e0       	ldi	r23, 0x01	; 1
     7a2:	80 e0       	ldi	r24, 0x00	; 0
     7a4:	90 e0       	ldi	r25, 0x00	; 0
     7a6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     7aa:	60 e9       	ldi	r22, 0x90	; 144
     7ac:	71 e0       	ldi	r23, 0x01	; 1
     7ae:	80 e0       	ldi	r24, 0x00	; 0
     7b0:	90 e0       	ldi	r25, 0x00	; 0
     7b2:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     7b6:	6c e2       	ldi	r22, 0x2C	; 44
     7b8:	71 e0       	ldi	r23, 0x01	; 1
     7ba:	80 e0       	ldi	r24, 0x00	; 0
     7bc:	90 e0       	ldi	r25, 0x00	; 0
     7be:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     7c2:	60 e9       	ldi	r22, 0x90	; 144
     7c4:	71 e0       	ldi	r23, 0x01	; 1
     7c6:	80 e0       	ldi	r24, 0x00	; 0
     7c8:	90 e0       	ldi	r25, 0x00	; 0
     7ca:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     7ce:	60 ed       	ldi	r22, 0xD0	; 208
     7d0:	77 e0       	ldi	r23, 0x07	; 7
     7d2:	80 e0       	ldi	r24, 0x00	; 0
     7d4:	90 e0       	ldi	r25, 0x00	; 0
     7d6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     7da:	60 e9       	ldi	r22, 0x90	; 144
     7dc:	71 e0       	ldi	r23, 0x01	; 1
     7de:	80 e0       	ldi	r24, 0x00	; 0
     7e0:	90 e0       	ldi	r25, 0x00	; 0
     7e2:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     7e6:	6c e2       	ldi	r22, 0x2C	; 44
     7e8:	71 e0       	ldi	r23, 0x01	; 1
     7ea:	80 e0       	ldi	r24, 0x00	; 0
     7ec:	90 e0       	ldi	r25, 0x00	; 0
     7ee:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     7f2:	60 e9       	ldi	r22, 0x90	; 144
     7f4:	71 e0       	ldi	r23, 0x01	; 1
     7f6:	80 e0       	ldi	r24, 0x00	; 0
     7f8:	90 e0       	ldi	r25, 0x00	; 0
     7fa:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     7fe:	60 e9       	ldi	r22, 0x90	; 144
     800:	71 e0       	ldi	r23, 0x01	; 1
     802:	80 e0       	ldi	r24, 0x00	; 0
     804:	90 e0       	ldi	r25, 0x00	; 0
     806:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     80a:	68 e5       	ldi	r22, 0x58	; 88
     80c:	72 e0       	ldi	r23, 0x02	; 2
     80e:	80 e0       	ldi	r24, 0x00	; 0
     810:	90 e0       	ldi	r25, 0x00	; 0
     812:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     816:	60 e9       	ldi	r22, 0x90	; 144
     818:	71 e0       	ldi	r23, 0x01	; 1
     81a:	80 e0       	ldi	r24, 0x00	; 0
     81c:	90 e0       	ldi	r25, 0x00	; 0
     81e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     822:	60 ed       	ldi	r22, 0xD0	; 208
     824:	77 e0       	ldi	r23, 0x07	; 7
     826:	80 e0       	ldi	r24, 0x00	; 0
     828:	90 e0       	ldi	r25, 0x00	; 0
     82a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     82e:	60 e9       	ldi	r22, 0x90	; 144
     830:	71 e0       	ldi	r23, 0x01	; 1
     832:	80 e0       	ldi	r24, 0x00	; 0
     834:	90 e0       	ldi	r25, 0x00	; 0
     836:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     83a:	68 e5       	ldi	r22, 0x58	; 88
     83c:	72 e0       	ldi	r23, 0x02	; 2
     83e:	80 e0       	ldi	r24, 0x00	; 0
     840:	90 e0       	ldi	r25, 0x00	; 0
     842:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     846:	60 e9       	ldi	r22, 0x90	; 144
     848:	71 e0       	ldi	r23, 0x01	; 1
     84a:	80 e0       	ldi	r24, 0x00	; 0
     84c:	90 e0       	ldi	r25, 0x00	; 0
     84e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     852:	60 e9       	ldi	r22, 0x90	; 144
     854:	71 e0       	ldi	r23, 0x01	; 1
     856:	80 e0       	ldi	r24, 0x00	; 0
     858:	90 e0       	ldi	r25, 0x00	; 0
     85a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     85e:	6c e2       	ldi	r22, 0x2C	; 44
     860:	71 e0       	ldi	r23, 0x01	; 1
     862:	80 e0       	ldi	r24, 0x00	; 0
     864:	90 e0       	ldi	r25, 0x00	; 0
     866:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     86a:	60 e9       	ldi	r22, 0x90	; 144
     86c:	71 e0       	ldi	r23, 0x01	; 1
     86e:	80 e0       	ldi	r24, 0x00	; 0
     870:	90 e0       	ldi	r25, 0x00	; 0
     872:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     876:	68 ee       	ldi	r22, 0xE8	; 232
     878:	73 e0       	ldi	r23, 0x03	; 3
     87a:	80 e0       	ldi	r24, 0x00	; 0
     87c:	90 e0       	ldi	r25, 0x00	; 0
     87e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     882:	60 e9       	ldi	r22, 0x90	; 144
     884:	71 e0       	ldi	r23, 0x01	; 1
     886:	80 e0       	ldi	r24, 0x00	; 0
     888:	90 e0       	ldi	r25, 0x00	; 0
     88a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     88e:	68 e5       	ldi	r22, 0x58	; 88
     890:	72 e0       	ldi	r23, 0x02	; 2
     892:	80 e0       	ldi	r24, 0x00	; 0
     894:	90 e0       	ldi	r25, 0x00	; 0
     896:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     89a:	60 e9       	ldi	r22, 0x90	; 144
     89c:	71 e0       	ldi	r23, 0x01	; 1
     89e:	80 e0       	ldi	r24, 0x00	; 0
     8a0:	90 e0       	ldi	r25, 0x00	; 0
     8a2:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     8a6:	60 e9       	ldi	r22, 0x90	; 144
     8a8:	71 e0       	ldi	r23, 0x01	; 1
     8aa:	80 e0       	ldi	r24, 0x00	; 0
     8ac:	90 e0       	ldi	r25, 0x00	; 0
     8ae:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     8b2:	68 e5       	ldi	r22, 0x58	; 88
     8b4:	72 e0       	ldi	r23, 0x02	; 2
     8b6:	80 e0       	ldi	r24, 0x00	; 0
     8b8:	90 e0       	ldi	r25, 0x00	; 0
     8ba:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     8be:	60 e9       	ldi	r22, 0x90	; 144
     8c0:	71 e0       	ldi	r23, 0x01	; 1
     8c2:	80 e0       	ldi	r24, 0x00	; 0
     8c4:	90 e0       	ldi	r25, 0x00	; 0
     8c6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     8ca:	60 e9       	ldi	r22, 0x90	; 144
     8cc:	71 e0       	ldi	r23, 0x01	; 1
     8ce:	80 e0       	ldi	r24, 0x00	; 0
     8d0:	90 e0       	ldi	r25, 0x00	; 0
     8d2:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     8d6:	68 e5       	ldi	r22, 0x58	; 88
     8d8:	72 e0       	ldi	r23, 0x02	; 2
     8da:	80 e0       	ldi	r24, 0x00	; 0
     8dc:	90 e0       	ldi	r25, 0x00	; 0
     8de:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     8e2:	60 e9       	ldi	r22, 0x90	; 144
     8e4:	71 e0       	ldi	r23, 0x01	; 1
     8e6:	80 e0       	ldi	r24, 0x00	; 0
     8e8:	90 e0       	ldi	r25, 0x00	; 0
     8ea:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     8ee:	68 ee       	ldi	r22, 0xE8	; 232
     8f0:	73 e0       	ldi	r23, 0x03	; 3
     8f2:	80 e0       	ldi	r24, 0x00	; 0
     8f4:	90 e0       	ldi	r25, 0x00	; 0
     8f6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     8fa:	60 e9       	ldi	r22, 0x90	; 144
     8fc:	71 e0       	ldi	r23, 0x01	; 1
     8fe:	80 e0       	ldi	r24, 0x00	; 0
     900:	90 e0       	ldi	r25, 0x00	; 0
     902:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     906:	6c e2       	ldi	r22, 0x2C	; 44
     908:	71 e0       	ldi	r23, 0x01	; 1
     90a:	80 e0       	ldi	r24, 0x00	; 0
     90c:	90 e0       	ldi	r25, 0x00	; 0
     90e:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     912:	60 e9       	ldi	r22, 0x90	; 144
     914:	71 e0       	ldi	r23, 0x01	; 1
     916:	80 e0       	ldi	r24, 0x00	; 0
     918:	90 e0       	ldi	r25, 0x00	; 0
     91a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     91e:	60 e9       	ldi	r22, 0x90	; 144
     920:	71 e0       	ldi	r23, 0x01	; 1
     922:	80 e0       	ldi	r24, 0x00	; 0
     924:	90 e0       	ldi	r25, 0x00	; 0
     926:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     92a:	6c e2       	ldi	r22, 0x2C	; 44
     92c:	71 e0       	ldi	r23, 0x01	; 1
     92e:	80 e0       	ldi	r24, 0x00	; 0
     930:	90 e0       	ldi	r25, 0x00	; 0
     932:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     936:	60 e9       	ldi	r22, 0x90	; 144
     938:	71 e0       	ldi	r23, 0x01	; 1
     93a:	80 e0       	ldi	r24, 0x00	; 0
     93c:	90 e0       	ldi	r25, 0x00	; 0
     93e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     942:	68 ee       	ldi	r22, 0xE8	; 232
     944:	73 e0       	ldi	r23, 0x03	; 3
     946:	80 e0       	ldi	r24, 0x00	; 0
     948:	90 e0       	ldi	r25, 0x00	; 0
     94a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     94e:	60 e9       	ldi	r22, 0x90	; 144
     950:	71 e0       	ldi	r23, 0x01	; 1
     952:	80 e0       	ldi	r24, 0x00	; 0
     954:	90 e0       	ldi	r25, 0x00	; 0
     956:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     95a:	6c e2       	ldi	r22, 0x2C	; 44
     95c:	71 e0       	ldi	r23, 0x01	; 1
     95e:	80 e0       	ldi	r24, 0x00	; 0
     960:	90 e0       	ldi	r25, 0x00	; 0
     962:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     966:	60 e9       	ldi	r22, 0x90	; 144
     968:	71 e0       	ldi	r23, 0x01	; 1
     96a:	80 e0       	ldi	r24, 0x00	; 0
     96c:	90 e0       	ldi	r25, 0x00	; 0
     96e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     972:	60 e9       	ldi	r22, 0x90	; 144
     974:	71 e0       	ldi	r23, 0x01	; 1
     976:	80 e0       	ldi	r24, 0x00	; 0
     978:	90 e0       	ldi	r25, 0x00	; 0
     97a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     97e:	6c e2       	ldi	r22, 0x2C	; 44
     980:	71 e0       	ldi	r23, 0x01	; 1
     982:	80 e0       	ldi	r24, 0x00	; 0
     984:	90 e0       	ldi	r25, 0x00	; 0
     986:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     98a:	60 e9       	ldi	r22, 0x90	; 144
     98c:	71 e0       	ldi	r23, 0x01	; 1
     98e:	80 e0       	ldi	r24, 0x00	; 0
     990:	90 e0       	ldi	r25, 0x00	; 0
     992:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     996:	60 e9       	ldi	r22, 0x90	; 144
     998:	71 e0       	ldi	r23, 0x01	; 1
     99a:	80 e0       	ldi	r24, 0x00	; 0
     99c:	90 e0       	ldi	r25, 0x00	; 0
     99e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     9a2:	6c e2       	ldi	r22, 0x2C	; 44
     9a4:	71 e0       	ldi	r23, 0x01	; 1
     9a6:	80 e0       	ldi	r24, 0x00	; 0
     9a8:	90 e0       	ldi	r25, 0x00	; 0
     9aa:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     9ae:	60 e9       	ldi	r22, 0x90	; 144
     9b0:	71 e0       	ldi	r23, 0x01	; 1
     9b2:	80 e0       	ldi	r24, 0x00	; 0
     9b4:	90 e0       	ldi	r25, 0x00	; 0
     9b6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     9ba:	68 ee       	ldi	r22, 0xE8	; 232
     9bc:	73 e0       	ldi	r23, 0x03	; 3
     9be:	80 e0       	ldi	r24, 0x00	; 0
     9c0:	90 e0       	ldi	r25, 0x00	; 0
     9c2:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     9c6:	60 e9       	ldi	r22, 0x90	; 144
     9c8:	71 e0       	ldi	r23, 0x01	; 1
     9ca:	80 e0       	ldi	r24, 0x00	; 0
     9cc:	90 e0       	ldi	r25, 0x00	; 0
     9ce:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     9d2:	68 e5       	ldi	r22, 0x58	; 88
     9d4:	72 e0       	ldi	r23, 0x02	; 2
     9d6:	80 e0       	ldi	r24, 0x00	; 0
     9d8:	90 e0       	ldi	r25, 0x00	; 0
     9da:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     9de:	60 e9       	ldi	r22, 0x90	; 144
     9e0:	71 e0       	ldi	r23, 0x01	; 1
     9e2:	80 e0       	ldi	r24, 0x00	; 0
     9e4:	90 e0       	ldi	r25, 0x00	; 0
     9e6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     9ea:	60 e9       	ldi	r22, 0x90	; 144
     9ec:	71 e0       	ldi	r23, 0x01	; 1
     9ee:	80 e0       	ldi	r24, 0x00	; 0
     9f0:	90 e0       	ldi	r25, 0x00	; 0
     9f2:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     9f6:	6c e2       	ldi	r22, 0x2C	; 44
     9f8:	71 e0       	ldi	r23, 0x01	; 1
     9fa:	80 e0       	ldi	r24, 0x00	; 0
     9fc:	90 e0       	ldi	r25, 0x00	; 0
     9fe:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     a02:	60 e9       	ldi	r22, 0x90	; 144
     a04:	71 e0       	ldi	r23, 0x01	; 1
     a06:	80 e0       	ldi	r24, 0x00	; 0
     a08:	90 e0       	ldi	r25, 0x00	; 0
     a0a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     a0e:	60 e9       	ldi	r22, 0x90	; 144
     a10:	71 e0       	ldi	r23, 0x01	; 1
     a12:	80 e0       	ldi	r24, 0x00	; 0
     a14:	90 e0       	ldi	r25, 0x00	; 0
     a16:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     a1a:	68 e5       	ldi	r22, 0x58	; 88
     a1c:	72 e0       	ldi	r23, 0x02	; 2
     a1e:	80 e0       	ldi	r24, 0x00	; 0
     a20:	90 e0       	ldi	r25, 0x00	; 0
     a22:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     a26:	60 e9       	ldi	r22, 0x90	; 144
     a28:	71 e0       	ldi	r23, 0x01	; 1
     a2a:	80 e0       	ldi	r24, 0x00	; 0
     a2c:	90 e0       	ldi	r25, 0x00	; 0
     a2e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     a32:	60 e9       	ldi	r22, 0x90	; 144
     a34:	71 e0       	ldi	r23, 0x01	; 1
     a36:	80 e0       	ldi	r24, 0x00	; 0
     a38:	90 e0       	ldi	r25, 0x00	; 0
     a3a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     a3e:	68 e5       	ldi	r22, 0x58	; 88
     a40:	72 e0       	ldi	r23, 0x02	; 2
     a42:	80 e0       	ldi	r24, 0x00	; 0
     a44:	90 e0       	ldi	r25, 0x00	; 0
     a46:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     a4a:	60 e9       	ldi	r22, 0x90	; 144
     a4c:	71 e0       	ldi	r23, 0x01	; 1
     a4e:	80 e0       	ldi	r24, 0x00	; 0
     a50:	90 e0       	ldi	r25, 0x00	; 0
     a52:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     a56:	60 ed       	ldi	r22, 0xD0	; 208
     a58:	77 e0       	ldi	r23, 0x07	; 7
     a5a:	80 e0       	ldi	r24, 0x00	; 0
     a5c:	90 e0       	ldi	r25, 0x00	; 0
     a5e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     a62:	60 e9       	ldi	r22, 0x90	; 144
     a64:	71 e0       	ldi	r23, 0x01	; 1
     a66:	80 e0       	ldi	r24, 0x00	; 0
     a68:	90 e0       	ldi	r25, 0x00	; 0
     a6a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     a6e:	68 e5       	ldi	r22, 0x58	; 88
     a70:	72 e0       	ldi	r23, 0x02	; 2
     a72:	80 e0       	ldi	r24, 0x00	; 0
     a74:	90 e0       	ldi	r25, 0x00	; 0
     a76:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     a7a:	60 e9       	ldi	r22, 0x90	; 144
     a7c:	71 e0       	ldi	r23, 0x01	; 1
     a7e:	80 e0       	ldi	r24, 0x00	; 0
     a80:	90 e0       	ldi	r25, 0x00	; 0
     a82:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     a86:	60 e9       	ldi	r22, 0x90	; 144
     a88:	71 e0       	ldi	r23, 0x01	; 1
     a8a:	80 e0       	ldi	r24, 0x00	; 0
     a8c:	90 e0       	ldi	r25, 0x00	; 0
     a8e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     a92:	6c e2       	ldi	r22, 0x2C	; 44
     a94:	71 e0       	ldi	r23, 0x01	; 1
     a96:	80 e0       	ldi	r24, 0x00	; 0
     a98:	90 e0       	ldi	r25, 0x00	; 0
     a9a:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     a9e:	60 e9       	ldi	r22, 0x90	; 144
     aa0:	71 e0       	ldi	r23, 0x01	; 1
     aa2:	80 e0       	ldi	r24, 0x00	; 0
     aa4:	90 e0       	ldi	r25, 0x00	; 0
     aa6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     aaa:	60 e9       	ldi	r22, 0x90	; 144
     aac:	71 e0       	ldi	r23, 0x01	; 1
     aae:	80 e0       	ldi	r24, 0x00	; 0
     ab0:	90 e0       	ldi	r25, 0x00	; 0
     ab2:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     ab6:	6c e2       	ldi	r22, 0x2C	; 44
     ab8:	71 e0       	ldi	r23, 0x01	; 1
     aba:	80 e0       	ldi	r24, 0x00	; 0
     abc:	90 e0       	ldi	r25, 0x00	; 0
     abe:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     ac2:	60 e9       	ldi	r22, 0x90	; 144
     ac4:	71 e0       	ldi	r23, 0x01	; 1
     ac6:	80 e0       	ldi	r24, 0x00	; 0
     ac8:	90 e0       	ldi	r25, 0x00	; 0
     aca:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     ace:	60 e9       	ldi	r22, 0x90	; 144
     ad0:	71 e0       	ldi	r23, 0x01	; 1
     ad2:	80 e0       	ldi	r24, 0x00	; 0
     ad4:	90 e0       	ldi	r25, 0x00	; 0
     ad6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     ada:	6c e2       	ldi	r22, 0x2C	; 44
     adc:	71 e0       	ldi	r23, 0x01	; 1
     ade:	80 e0       	ldi	r24, 0x00	; 0
     ae0:	90 e0       	ldi	r25, 0x00	; 0
     ae2:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     ae6:	60 e9       	ldi	r22, 0x90	; 144
     ae8:	71 e0       	ldi	r23, 0x01	; 1
     aea:	80 e0       	ldi	r24, 0x00	; 0
     aec:	90 e0       	ldi	r25, 0x00	; 0
     aee:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     af2:	68 ee       	ldi	r22, 0xE8	; 232
     af4:	73 e0       	ldi	r23, 0x03	; 3
     af6:	80 e0       	ldi	r24, 0x00	; 0
     af8:	90 e0       	ldi	r25, 0x00	; 0
     afa:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     afe:	60 e9       	ldi	r22, 0x90	; 144
     b00:	71 e0       	ldi	r23, 0x01	; 1
     b02:	80 e0       	ldi	r24, 0x00	; 0
     b04:	90 e0       	ldi	r25, 0x00	; 0
     b06:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     b0a:	6c e2       	ldi	r22, 0x2C	; 44
     b0c:	71 e0       	ldi	r23, 0x01	; 1
     b0e:	80 e0       	ldi	r24, 0x00	; 0
     b10:	90 e0       	ldi	r25, 0x00	; 0
     b12:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     b16:	60 e9       	ldi	r22, 0x90	; 144
     b18:	71 e0       	ldi	r23, 0x01	; 1
     b1a:	80 e0       	ldi	r24, 0x00	; 0
     b1c:	90 e0       	ldi	r25, 0x00	; 0
     b1e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     b22:	60 e9       	ldi	r22, 0x90	; 144
     b24:	71 e0       	ldi	r23, 0x01	; 1
     b26:	80 e0       	ldi	r24, 0x00	; 0
     b28:	90 e0       	ldi	r25, 0x00	; 0
     b2a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     b2e:	6c e2       	ldi	r22, 0x2C	; 44
     b30:	71 e0       	ldi	r23, 0x01	; 1
     b32:	80 e0       	ldi	r24, 0x00	; 0
     b34:	90 e0       	ldi	r25, 0x00	; 0
     b36:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     b3a:	60 e9       	ldi	r22, 0x90	; 144
     b3c:	71 e0       	ldi	r23, 0x01	; 1
     b3e:	80 e0       	ldi	r24, 0x00	; 0
     b40:	90 e0       	ldi	r25, 0x00	; 0
     b42:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     b46:	60 e9       	ldi	r22, 0x90	; 144
     b48:	71 e0       	ldi	r23, 0x01	; 1
     b4a:	80 e0       	ldi	r24, 0x00	; 0
     b4c:	90 e0       	ldi	r25, 0x00	; 0
     b4e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     b52:	68 e5       	ldi	r22, 0x58	; 88
     b54:	72 e0       	ldi	r23, 0x02	; 2
     b56:	80 e0       	ldi	r24, 0x00	; 0
     b58:	90 e0       	ldi	r25, 0x00	; 0
     b5a:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     b5e:	60 e9       	ldi	r22, 0x90	; 144
     b60:	71 e0       	ldi	r23, 0x01	; 1
     b62:	80 e0       	ldi	r24, 0x00	; 0
     b64:	90 e0       	ldi	r25, 0x00	; 0
     b66:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     b6a:	68 ee       	ldi	r22, 0xE8	; 232
     b6c:	73 e0       	ldi	r23, 0x03	; 3
     b6e:	80 e0       	ldi	r24, 0x00	; 0
     b70:	90 e0       	ldi	r25, 0x00	; 0
     b72:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     b76:	60 e9       	ldi	r22, 0x90	; 144
     b78:	71 e0       	ldi	r23, 0x01	; 1
     b7a:	80 e0       	ldi	r24, 0x00	; 0
     b7c:	90 e0       	ldi	r25, 0x00	; 0
     b7e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     b82:	68 e5       	ldi	r22, 0x58	; 88
     b84:	72 e0       	ldi	r23, 0x02	; 2
     b86:	80 e0       	ldi	r24, 0x00	; 0
     b88:	90 e0       	ldi	r25, 0x00	; 0
     b8a:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     b8e:	60 e9       	ldi	r22, 0x90	; 144
     b90:	71 e0       	ldi	r23, 0x01	; 1
     b92:	80 e0       	ldi	r24, 0x00	; 0
     b94:	90 e0       	ldi	r25, 0x00	; 0
     b96:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     b9a:	60 e9       	ldi	r22, 0x90	; 144
     b9c:	71 e0       	ldi	r23, 0x01	; 1
     b9e:	80 e0       	ldi	r24, 0x00	; 0
     ba0:	90 e0       	ldi	r25, 0x00	; 0
     ba2:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     ba6:	68 e5       	ldi	r22, 0x58	; 88
     ba8:	72 e0       	ldi	r23, 0x02	; 2
     baa:	80 e0       	ldi	r24, 0x00	; 0
     bac:	90 e0       	ldi	r25, 0x00	; 0
     bae:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     bb2:	60 e9       	ldi	r22, 0x90	; 144
     bb4:	71 e0       	ldi	r23, 0x01	; 1
     bb6:	80 e0       	ldi	r24, 0x00	; 0
     bb8:	90 e0       	ldi	r25, 0x00	; 0
     bba:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     bbe:	60 e9       	ldi	r22, 0x90	; 144
     bc0:	71 e0       	ldi	r23, 0x01	; 1
     bc2:	80 e0       	ldi	r24, 0x00	; 0
     bc4:	90 e0       	ldi	r25, 0x00	; 0
     bc6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     bca:	6c e2       	ldi	r22, 0x2C	; 44
     bcc:	71 e0       	ldi	r23, 0x01	; 1
     bce:	80 e0       	ldi	r24, 0x00	; 0
     bd0:	90 e0       	ldi	r25, 0x00	; 0
     bd2:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     bd6:	60 e9       	ldi	r22, 0x90	; 144
     bd8:	71 e0       	ldi	r23, 0x01	; 1
     bda:	80 e0       	ldi	r24, 0x00	; 0
     bdc:	90 e0       	ldi	r25, 0x00	; 0
     bde:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     be2:	60 e9       	ldi	r22, 0x90	; 144
     be4:	71 e0       	ldi	r23, 0x01	; 1
     be6:	80 e0       	ldi	r24, 0x00	; 0
     be8:	90 e0       	ldi	r25, 0x00	; 0
     bea:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     bee:	6c e2       	ldi	r22, 0x2C	; 44
     bf0:	71 e0       	ldi	r23, 0x01	; 1
     bf2:	80 e0       	ldi	r24, 0x00	; 0
     bf4:	90 e0       	ldi	r25, 0x00	; 0
     bf6:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     bfa:	60 e9       	ldi	r22, 0x90	; 144
     bfc:	71 e0       	ldi	r23, 0x01	; 1
     bfe:	80 e0       	ldi	r24, 0x00	; 0
     c00:	90 e0       	ldi	r25, 0x00	; 0
     c02:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     c06:	68 ee       	ldi	r22, 0xE8	; 232
     c08:	73 e0       	ldi	r23, 0x03	; 3
     c0a:	80 e0       	ldi	r24, 0x00	; 0
     c0c:	90 e0       	ldi	r25, 0x00	; 0
     c0e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     c12:	60 e9       	ldi	r22, 0x90	; 144
     c14:	71 e0       	ldi	r23, 0x01	; 1
     c16:	80 e0       	ldi	r24, 0x00	; 0
     c18:	90 e0       	ldi	r25, 0x00	; 0
     c1a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     c1e:	68 e5       	ldi	r22, 0x58	; 88
     c20:	72 e0       	ldi	r23, 0x02	; 2
     c22:	80 e0       	ldi	r24, 0x00	; 0
     c24:	90 e0       	ldi	r25, 0x00	; 0
     c26:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     c2a:	60 e9       	ldi	r22, 0x90	; 144
     c2c:	71 e0       	ldi	r23, 0x01	; 1
     c2e:	80 e0       	ldi	r24, 0x00	; 0
     c30:	90 e0       	ldi	r25, 0x00	; 0
     c32:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     c36:	60 e9       	ldi	r22, 0x90	; 144
     c38:	71 e0       	ldi	r23, 0x01	; 1
     c3a:	80 e0       	ldi	r24, 0x00	; 0
     c3c:	90 e0       	ldi	r25, 0x00	; 0
     c3e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     c42:	68 e5       	ldi	r22, 0x58	; 88
     c44:	72 e0       	ldi	r23, 0x02	; 2
     c46:	80 e0       	ldi	r24, 0x00	; 0
     c48:	90 e0       	ldi	r25, 0x00	; 0
     c4a:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     c4e:	60 e9       	ldi	r22, 0x90	; 144
     c50:	71 e0       	ldi	r23, 0x01	; 1
     c52:	80 e0       	ldi	r24, 0x00	; 0
     c54:	90 e0       	ldi	r25, 0x00	; 0
     c56:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     c5a:	60 e9       	ldi	r22, 0x90	; 144
     c5c:	71 e0       	ldi	r23, 0x01	; 1
     c5e:	80 e0       	ldi	r24, 0x00	; 0
     c60:	90 e0       	ldi	r25, 0x00	; 0
     c62:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     c66:	6c e2       	ldi	r22, 0x2C	; 44
     c68:	71 e0       	ldi	r23, 0x01	; 1
     c6a:	80 e0       	ldi	r24, 0x00	; 0
     c6c:	90 e0       	ldi	r25, 0x00	; 0
     c6e:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     c72:	60 e9       	ldi	r22, 0x90	; 144
     c74:	71 e0       	ldi	r23, 0x01	; 1
     c76:	80 e0       	ldi	r24, 0x00	; 0
     c78:	90 e0       	ldi	r25, 0x00	; 0
     c7a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     c7e:	60 e9       	ldi	r22, 0x90	; 144
     c80:	71 e0       	ldi	r23, 0x01	; 1
     c82:	80 e0       	ldi	r24, 0x00	; 0
     c84:	90 e0       	ldi	r25, 0x00	; 0
     c86:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     c8a:	6c e2       	ldi	r22, 0x2C	; 44
     c8c:	71 e0       	ldi	r23, 0x01	; 1
     c8e:	80 e0       	ldi	r24, 0x00	; 0
     c90:	90 e0       	ldi	r25, 0x00	; 0
     c92:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     c96:	60 e9       	ldi	r22, 0x90	; 144
     c98:	71 e0       	ldi	r23, 0x01	; 1
     c9a:	80 e0       	ldi	r24, 0x00	; 0
     c9c:	90 e0       	ldi	r25, 0x00	; 0
     c9e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     ca2:	68 ee       	ldi	r22, 0xE8	; 232
     ca4:	73 e0       	ldi	r23, 0x03	; 3
     ca6:	80 e0       	ldi	r24, 0x00	; 0
     ca8:	90 e0       	ldi	r25, 0x00	; 0
     caa:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     cae:	60 e9       	ldi	r22, 0x90	; 144
     cb0:	71 e0       	ldi	r23, 0x01	; 1
     cb2:	80 e0       	ldi	r24, 0x00	; 0
     cb4:	90 e0       	ldi	r25, 0x00	; 0
     cb6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     cba:	6c e2       	ldi	r22, 0x2C	; 44
     cbc:	71 e0       	ldi	r23, 0x01	; 1
     cbe:	80 e0       	ldi	r24, 0x00	; 0
     cc0:	90 e0       	ldi	r25, 0x00	; 0
     cc2:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     cc6:	60 e9       	ldi	r22, 0x90	; 144
     cc8:	71 e0       	ldi	r23, 0x01	; 1
     cca:	80 e0       	ldi	r24, 0x00	; 0
     ccc:	90 e0       	ldi	r25, 0x00	; 0
     cce:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     cd2:	68 ee       	ldi	r22, 0xE8	; 232
     cd4:	73 e0       	ldi	r23, 0x03	; 3
     cd6:	80 e0       	ldi	r24, 0x00	; 0
     cd8:	90 e0       	ldi	r25, 0x00	; 0
     cda:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     cde:	60 e9       	ldi	r22, 0x90	; 144
     ce0:	71 e0       	ldi	r23, 0x01	; 1
     ce2:	80 e0       	ldi	r24, 0x00	; 0
     ce4:	90 e0       	ldi	r25, 0x00	; 0
     ce6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     cea:	6c e2       	ldi	r22, 0x2C	; 44
     cec:	71 e0       	ldi	r23, 0x01	; 1
     cee:	80 e0       	ldi	r24, 0x00	; 0
     cf0:	90 e0       	ldi	r25, 0x00	; 0
     cf2:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     cf6:	60 e9       	ldi	r22, 0x90	; 144
     cf8:	71 e0       	ldi	r23, 0x01	; 1
     cfa:	80 e0       	ldi	r24, 0x00	; 0
     cfc:	90 e0       	ldi	r25, 0x00	; 0
     cfe:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     d02:	60 e9       	ldi	r22, 0x90	; 144
     d04:	71 e0       	ldi	r23, 0x01	; 1
     d06:	80 e0       	ldi	r24, 0x00	; 0
     d08:	90 e0       	ldi	r25, 0x00	; 0
     d0a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     d0e:	68 e5       	ldi	r22, 0x58	; 88
     d10:	72 e0       	ldi	r23, 0x02	; 2
     d12:	80 e0       	ldi	r24, 0x00	; 0
     d14:	90 e0       	ldi	r25, 0x00	; 0
     d16:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     d1a:	60 e9       	ldi	r22, 0x90	; 144
     d1c:	71 e0       	ldi	r23, 0x01	; 1
     d1e:	80 e0       	ldi	r24, 0x00	; 0
     d20:	90 e0       	ldi	r25, 0x00	; 0
     d22:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     d26:	60 e9       	ldi	r22, 0x90	; 144
     d28:	71 e0       	ldi	r23, 0x01	; 1
     d2a:	80 e0       	ldi	r24, 0x00	; 0
     d2c:	90 e0       	ldi	r25, 0x00	; 0
     d2e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     d32:	6c e2       	ldi	r22, 0x2C	; 44
     d34:	71 e0       	ldi	r23, 0x01	; 1
     d36:	80 e0       	ldi	r24, 0x00	; 0
     d38:	90 e0       	ldi	r25, 0x00	; 0
     d3a:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     d3e:	60 e9       	ldi	r22, 0x90	; 144
     d40:	71 e0       	ldi	r23, 0x01	; 1
     d42:	80 e0       	ldi	r24, 0x00	; 0
     d44:	90 e0       	ldi	r25, 0x00	; 0
     d46:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     d4a:	60 ed       	ldi	r22, 0xD0	; 208
     d4c:	77 e0       	ldi	r23, 0x07	; 7
     d4e:	80 e0       	ldi	r24, 0x00	; 0
     d50:	90 e0       	ldi	r25, 0x00	; 0
     d52:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     d56:	60 e9       	ldi	r22, 0x90	; 144
     d58:	71 e0       	ldi	r23, 0x01	; 1
     d5a:	80 e0       	ldi	r24, 0x00	; 0
     d5c:	90 e0       	ldi	r25, 0x00	; 0
     d5e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     d62:	68 e5       	ldi	r22, 0x58	; 88
     d64:	72 e0       	ldi	r23, 0x02	; 2
     d66:	80 e0       	ldi	r24, 0x00	; 0
     d68:	90 e0       	ldi	r25, 0x00	; 0
     d6a:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     d6e:	60 e9       	ldi	r22, 0x90	; 144
     d70:	71 e0       	ldi	r23, 0x01	; 1
     d72:	80 e0       	ldi	r24, 0x00	; 0
     d74:	90 e0       	ldi	r25, 0x00	; 0
     d76:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     d7a:	60 e9       	ldi	r22, 0x90	; 144
     d7c:	71 e0       	ldi	r23, 0x01	; 1
     d7e:	80 e0       	ldi	r24, 0x00	; 0
     d80:	90 e0       	ldi	r25, 0x00	; 0
     d82:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     d86:	6c e2       	ldi	r22, 0x2C	; 44
     d88:	71 e0       	ldi	r23, 0x01	; 1
     d8a:	80 e0       	ldi	r24, 0x00	; 0
     d8c:	90 e0       	ldi	r25, 0x00	; 0
     d8e:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     d92:	60 e9       	ldi	r22, 0x90	; 144
     d94:	71 e0       	ldi	r23, 0x01	; 1
     d96:	80 e0       	ldi	r24, 0x00	; 0
     d98:	90 e0       	ldi	r25, 0x00	; 0
     d9a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     d9e:	60 e9       	ldi	r22, 0x90	; 144
     da0:	71 e0       	ldi	r23, 0x01	; 1
     da2:	80 e0       	ldi	r24, 0x00	; 0
     da4:	90 e0       	ldi	r25, 0x00	; 0
     da6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     daa:	68 e5       	ldi	r22, 0x58	; 88
     dac:	72 e0       	ldi	r23, 0x02	; 2
     dae:	80 e0       	ldi	r24, 0x00	; 0
     db0:	90 e0       	ldi	r25, 0x00	; 0
     db2:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     db6:	60 e9       	ldi	r22, 0x90	; 144
     db8:	71 e0       	ldi	r23, 0x01	; 1
     dba:	80 e0       	ldi	r24, 0x00	; 0
     dbc:	90 e0       	ldi	r25, 0x00	; 0
     dbe:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     dc2:	60 e9       	ldi	r22, 0x90	; 144
     dc4:	71 e0       	ldi	r23, 0x01	; 1
     dc6:	80 e0       	ldi	r24, 0x00	; 0
     dc8:	90 e0       	ldi	r25, 0x00	; 0
     dca:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     dce:	6c e2       	ldi	r22, 0x2C	; 44
     dd0:	71 e0       	ldi	r23, 0x01	; 1
     dd2:	80 e0       	ldi	r24, 0x00	; 0
     dd4:	90 e0       	ldi	r25, 0x00	; 0
     dd6:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     dda:	60 e9       	ldi	r22, 0x90	; 144
     ddc:	71 e0       	ldi	r23, 0x01	; 1
     dde:	80 e0       	ldi	r24, 0x00	; 0
     de0:	90 e0       	ldi	r25, 0x00	; 0
     de2:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     de6:	68 ee       	ldi	r22, 0xE8	; 232
     de8:	73 e0       	ldi	r23, 0x03	; 3
     dea:	80 e0       	ldi	r24, 0x00	; 0
     dec:	90 e0       	ldi	r25, 0x00	; 0
     dee:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     df2:	60 e9       	ldi	r22, 0x90	; 144
     df4:	71 e0       	ldi	r23, 0x01	; 1
     df6:	80 e0       	ldi	r24, 0x00	; 0
     df8:	90 e0       	ldi	r25, 0x00	; 0
     dfa:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     dfe:	68 e5       	ldi	r22, 0x58	; 88
     e00:	72 e0       	ldi	r23, 0x02	; 2
     e02:	80 e0       	ldi	r24, 0x00	; 0
     e04:	90 e0       	ldi	r25, 0x00	; 0
     e06:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     e0a:	60 e9       	ldi	r22, 0x90	; 144
     e0c:	71 e0       	ldi	r23, 0x01	; 1
     e0e:	80 e0       	ldi	r24, 0x00	; 0
     e10:	90 e0       	ldi	r25, 0x00	; 0
     e12:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     e16:	60 e9       	ldi	r22, 0x90	; 144
     e18:	71 e0       	ldi	r23, 0x01	; 1
     e1a:	80 e0       	ldi	r24, 0x00	; 0
     e1c:	90 e0       	ldi	r25, 0x00	; 0
     e1e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     e22:	68 e5       	ldi	r22, 0x58	; 88
     e24:	72 e0       	ldi	r23, 0x02	; 2
     e26:	80 e0       	ldi	r24, 0x00	; 0
     e28:	90 e0       	ldi	r25, 0x00	; 0
     e2a:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     e2e:	60 e9       	ldi	r22, 0x90	; 144
     e30:	71 e0       	ldi	r23, 0x01	; 1
     e32:	80 e0       	ldi	r24, 0x00	; 0
     e34:	90 e0       	ldi	r25, 0x00	; 0
     e36:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     e3a:	60 e9       	ldi	r22, 0x90	; 144
     e3c:	71 e0       	ldi	r23, 0x01	; 1
     e3e:	80 e0       	ldi	r24, 0x00	; 0
     e40:	90 e0       	ldi	r25, 0x00	; 0
     e42:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     e46:	68 e5       	ldi	r22, 0x58	; 88
     e48:	72 e0       	ldi	r23, 0x02	; 2
     e4a:	80 e0       	ldi	r24, 0x00	; 0
     e4c:	90 e0       	ldi	r25, 0x00	; 0
     e4e:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     e52:	60 e9       	ldi	r22, 0x90	; 144
     e54:	71 e0       	ldi	r23, 0x01	; 1
     e56:	80 e0       	ldi	r24, 0x00	; 0
     e58:	90 e0       	ldi	r25, 0x00	; 0
     e5a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     e5e:	68 ee       	ldi	r22, 0xE8	; 232
     e60:	73 e0       	ldi	r23, 0x03	; 3
     e62:	80 e0       	ldi	r24, 0x00	; 0
     e64:	90 e0       	ldi	r25, 0x00	; 0
     e66:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     e6a:	60 e9       	ldi	r22, 0x90	; 144
     e6c:	71 e0       	ldi	r23, 0x01	; 1
     e6e:	80 e0       	ldi	r24, 0x00	; 0
     e70:	90 e0       	ldi	r25, 0x00	; 0
     e72:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     e76:	68 e5       	ldi	r22, 0x58	; 88
     e78:	72 e0       	ldi	r23, 0x02	; 2
     e7a:	80 e0       	ldi	r24, 0x00	; 0
     e7c:	90 e0       	ldi	r25, 0x00	; 0
     e7e:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     e82:	60 e9       	ldi	r22, 0x90	; 144
     e84:	71 e0       	ldi	r23, 0x01	; 1
     e86:	80 e0       	ldi	r24, 0x00	; 0
     e88:	90 e0       	ldi	r25, 0x00	; 0
     e8a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     e8e:	60 e9       	ldi	r22, 0x90	; 144
     e90:	71 e0       	ldi	r23, 0x01	; 1
     e92:	80 e0       	ldi	r24, 0x00	; 0
     e94:	90 e0       	ldi	r25, 0x00	; 0
     e96:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     e9a:	68 e5       	ldi	r22, 0x58	; 88
     e9c:	72 e0       	ldi	r23, 0x02	; 2
     e9e:	80 e0       	ldi	r24, 0x00	; 0
     ea0:	90 e0       	ldi	r25, 0x00	; 0
     ea2:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     ea6:	60 e9       	ldi	r22, 0x90	; 144
     ea8:	71 e0       	ldi	r23, 0x01	; 1
     eaa:	80 e0       	ldi	r24, 0x00	; 0
     eac:	90 e0       	ldi	r25, 0x00	; 0
     eae:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     eb2:	68 ee       	ldi	r22, 0xE8	; 232
     eb4:	73 e0       	ldi	r23, 0x03	; 3
     eb6:	80 e0       	ldi	r24, 0x00	; 0
     eb8:	90 e0       	ldi	r25, 0x00	; 0
     eba:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     ebe:	60 e9       	ldi	r22, 0x90	; 144
     ec0:	71 e0       	ldi	r23, 0x01	; 1
     ec2:	80 e0       	ldi	r24, 0x00	; 0
     ec4:	90 e0       	ldi	r25, 0x00	; 0
     ec6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     eca:	68 e5       	ldi	r22, 0x58	; 88
     ecc:	72 e0       	ldi	r23, 0x02	; 2
     ece:	80 e0       	ldi	r24, 0x00	; 0
     ed0:	90 e0       	ldi	r25, 0x00	; 0
     ed2:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     ed6:	60 e9       	ldi	r22, 0x90	; 144
     ed8:	71 e0       	ldi	r23, 0x01	; 1
     eda:	80 e0       	ldi	r24, 0x00	; 0
     edc:	90 e0       	ldi	r25, 0x00	; 0
     ede:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     ee2:	60 e9       	ldi	r22, 0x90	; 144
     ee4:	71 e0       	ldi	r23, 0x01	; 1
     ee6:	80 e0       	ldi	r24, 0x00	; 0
     ee8:	90 e0       	ldi	r25, 0x00	; 0
     eea:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     eee:	68 e5       	ldi	r22, 0x58	; 88
     ef0:	72 e0       	ldi	r23, 0x02	; 2
     ef2:	80 e0       	ldi	r24, 0x00	; 0
     ef4:	90 e0       	ldi	r25, 0x00	; 0
     ef6:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     efa:	60 e9       	ldi	r22, 0x90	; 144
     efc:	71 e0       	ldi	r23, 0x01	; 1
     efe:	80 e0       	ldi	r24, 0x00	; 0
     f00:	90 e0       	ldi	r25, 0x00	; 0
     f02:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     f06:	68 ee       	ldi	r22, 0xE8	; 232
     f08:	73 e0       	ldi	r23, 0x03	; 3
     f0a:	80 e0       	ldi	r24, 0x00	; 0
     f0c:	90 e0       	ldi	r25, 0x00	; 0
     f0e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     f12:	60 e9       	ldi	r22, 0x90	; 144
     f14:	71 e0       	ldi	r23, 0x01	; 1
     f16:	80 e0       	ldi	r24, 0x00	; 0
     f18:	90 e0       	ldi	r25, 0x00	; 0
     f1a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     f1e:	6c e2       	ldi	r22, 0x2C	; 44
     f20:	71 e0       	ldi	r23, 0x01	; 1
     f22:	80 e0       	ldi	r24, 0x00	; 0
     f24:	90 e0       	ldi	r25, 0x00	; 0
     f26:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     f2a:	60 e9       	ldi	r22, 0x90	; 144
     f2c:	71 e0       	ldi	r23, 0x01	; 1
     f2e:	80 e0       	ldi	r24, 0x00	; 0
     f30:	90 e0       	ldi	r25, 0x00	; 0
     f32:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     f36:	60 e9       	ldi	r22, 0x90	; 144
     f38:	71 e0       	ldi	r23, 0x01	; 1
     f3a:	80 e0       	ldi	r24, 0x00	; 0
     f3c:	90 e0       	ldi	r25, 0x00	; 0
     f3e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     f42:	68 e5       	ldi	r22, 0x58	; 88
     f44:	72 e0       	ldi	r23, 0x02	; 2
     f46:	80 e0       	ldi	r24, 0x00	; 0
     f48:	90 e0       	ldi	r25, 0x00	; 0
     f4a:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     f4e:	60 e9       	ldi	r22, 0x90	; 144
     f50:	71 e0       	ldi	r23, 0x01	; 1
     f52:	80 e0       	ldi	r24, 0x00	; 0
     f54:	90 e0       	ldi	r25, 0x00	; 0
     f56:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     f5a:	68 ee       	ldi	r22, 0xE8	; 232
     f5c:	73 e0       	ldi	r23, 0x03	; 3
     f5e:	80 e0       	ldi	r24, 0x00	; 0
     f60:	90 e0       	ldi	r25, 0x00	; 0
     f62:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     f66:	60 e9       	ldi	r22, 0x90	; 144
     f68:	71 e0       	ldi	r23, 0x01	; 1
     f6a:	80 e0       	ldi	r24, 0x00	; 0
     f6c:	90 e0       	ldi	r25, 0x00	; 0
     f6e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     f72:	68 e5       	ldi	r22, 0x58	; 88
     f74:	72 e0       	ldi	r23, 0x02	; 2
     f76:	80 e0       	ldi	r24, 0x00	; 0
     f78:	90 e0       	ldi	r25, 0x00	; 0
     f7a:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     f7e:	60 e9       	ldi	r22, 0x90	; 144
     f80:	71 e0       	ldi	r23, 0x01	; 1
     f82:	80 e0       	ldi	r24, 0x00	; 0
     f84:	90 e0       	ldi	r25, 0x00	; 0
     f86:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     f8a:	60 e9       	ldi	r22, 0x90	; 144
     f8c:	71 e0       	ldi	r23, 0x01	; 1
     f8e:	80 e0       	ldi	r24, 0x00	; 0
     f90:	90 e0       	ldi	r25, 0x00	; 0
     f92:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     f96:	6c e2       	ldi	r22, 0x2C	; 44
     f98:	71 e0       	ldi	r23, 0x01	; 1
     f9a:	80 e0       	ldi	r24, 0x00	; 0
     f9c:	90 e0       	ldi	r25, 0x00	; 0
     f9e:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     fa2:	60 e9       	ldi	r22, 0x90	; 144
     fa4:	71 e0       	ldi	r23, 0x01	; 1
     fa6:	80 e0       	ldi	r24, 0x00	; 0
     fa8:	90 e0       	ldi	r25, 0x00	; 0
     faa:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     fae:	68 ee       	ldi	r22, 0xE8	; 232
     fb0:	73 e0       	ldi	r23, 0x03	; 3
     fb2:	80 e0       	ldi	r24, 0x00	; 0
     fb4:	90 e0       	ldi	r25, 0x00	; 0
     fb6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     fba:	60 e9       	ldi	r22, 0x90	; 144
     fbc:	71 e0       	ldi	r23, 0x01	; 1
     fbe:	80 e0       	ldi	r24, 0x00	; 0
     fc0:	90 e0       	ldi	r25, 0x00	; 0
     fc2:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     fc6:	68 e5       	ldi	r22, 0x58	; 88
     fc8:	72 e0       	ldi	r23, 0x02	; 2
     fca:	80 e0       	ldi	r24, 0x00	; 0
     fcc:	90 e0       	ldi	r25, 0x00	; 0
     fce:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     fd2:	60 e9       	ldi	r22, 0x90	; 144
     fd4:	71 e0       	ldi	r23, 0x01	; 1
     fd6:	80 e0       	ldi	r24, 0x00	; 0
     fd8:	90 e0       	ldi	r25, 0x00	; 0
     fda:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     fde:	60 e9       	ldi	r22, 0x90	; 144
     fe0:	71 e0       	ldi	r23, 0x01	; 1
     fe2:	80 e0       	ldi	r24, 0x00	; 0
     fe4:	90 e0       	ldi	r25, 0x00	; 0
     fe6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
     fea:	6c e2       	ldi	r22, 0x2C	; 44
     fec:	71 e0       	ldi	r23, 0x01	; 1
     fee:	80 e0       	ldi	r24, 0x00	; 0
     ff0:	90 e0       	ldi	r25, 0x00	; 0
     ff2:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
     ff6:	60 e9       	ldi	r22, 0x90	; 144
     ff8:	71 e0       	ldi	r23, 0x01	; 1
     ffa:	80 e0       	ldi	r24, 0x00	; 0
     ffc:	90 e0       	ldi	r25, 0x00	; 0
     ffe:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1002:	60 e9       	ldi	r22, 0x90	; 144
    1004:	71 e0       	ldi	r23, 0x01	; 1
    1006:	80 e0       	ldi	r24, 0x00	; 0
    1008:	90 e0       	ldi	r25, 0x00	; 0
    100a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    100e:	6c e2       	ldi	r22, 0x2C	; 44
    1010:	71 e0       	ldi	r23, 0x01	; 1
    1012:	80 e0       	ldi	r24, 0x00	; 0
    1014:	90 e0       	ldi	r25, 0x00	; 0
    1016:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    101a:	60 e9       	ldi	r22, 0x90	; 144
    101c:	71 e0       	ldi	r23, 0x01	; 1
    101e:	80 e0       	ldi	r24, 0x00	; 0
    1020:	90 e0       	ldi	r25, 0x00	; 0
    1022:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1026:	68 ee       	ldi	r22, 0xE8	; 232
    1028:	73 e0       	ldi	r23, 0x03	; 3
    102a:	80 e0       	ldi	r24, 0x00	; 0
    102c:	90 e0       	ldi	r25, 0x00	; 0
    102e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1032:	60 e9       	ldi	r22, 0x90	; 144
    1034:	71 e0       	ldi	r23, 0x01	; 1
    1036:	80 e0       	ldi	r24, 0x00	; 0
    1038:	90 e0       	ldi	r25, 0x00	; 0
    103a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    103e:	6c e2       	ldi	r22, 0x2C	; 44
    1040:	71 e0       	ldi	r23, 0x01	; 1
    1042:	80 e0       	ldi	r24, 0x00	; 0
    1044:	90 e0       	ldi	r25, 0x00	; 0
    1046:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    104a:	60 e9       	ldi	r22, 0x90	; 144
    104c:	71 e0       	ldi	r23, 0x01	; 1
    104e:	80 e0       	ldi	r24, 0x00	; 0
    1050:	90 e0       	ldi	r25, 0x00	; 0
    1052:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1056:	60 e9       	ldi	r22, 0x90	; 144
    1058:	71 e0       	ldi	r23, 0x01	; 1
    105a:	80 e0       	ldi	r24, 0x00	; 0
    105c:	90 e0       	ldi	r25, 0x00	; 0
    105e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1062:	6c e2       	ldi	r22, 0x2C	; 44
    1064:	71 e0       	ldi	r23, 0x01	; 1
    1066:	80 e0       	ldi	r24, 0x00	; 0
    1068:	90 e0       	ldi	r25, 0x00	; 0
    106a:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    106e:	60 e9       	ldi	r22, 0x90	; 144
    1070:	71 e0       	ldi	r23, 0x01	; 1
    1072:	80 e0       	ldi	r24, 0x00	; 0
    1074:	90 e0       	ldi	r25, 0x00	; 0
    1076:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    107a:	60 e9       	ldi	r22, 0x90	; 144
    107c:	71 e0       	ldi	r23, 0x01	; 1
    107e:	80 e0       	ldi	r24, 0x00	; 0
    1080:	90 e0       	ldi	r25, 0x00	; 0
    1082:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1086:	6c e2       	ldi	r22, 0x2C	; 44
    1088:	71 e0       	ldi	r23, 0x01	; 1
    108a:	80 e0       	ldi	r24, 0x00	; 0
    108c:	90 e0       	ldi	r25, 0x00	; 0
    108e:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    1092:	60 e9       	ldi	r22, 0x90	; 144
    1094:	71 e0       	ldi	r23, 0x01	; 1
    1096:	80 e0       	ldi	r24, 0x00	; 0
    1098:	90 e0       	ldi	r25, 0x00	; 0
    109a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    109e:	60 ed       	ldi	r22, 0xD0	; 208
    10a0:	77 e0       	ldi	r23, 0x07	; 7
    10a2:	80 e0       	ldi	r24, 0x00	; 0
    10a4:	90 e0       	ldi	r25, 0x00	; 0
    10a6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    10aa:	60 e9       	ldi	r22, 0x90	; 144
    10ac:	71 e0       	ldi	r23, 0x01	; 1
    10ae:	80 e0       	ldi	r24, 0x00	; 0
    10b0:	90 e0       	ldi	r25, 0x00	; 0
    10b2:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    10b6:	6c e2       	ldi	r22, 0x2C	; 44
    10b8:	71 e0       	ldi	r23, 0x01	; 1
    10ba:	80 e0       	ldi	r24, 0x00	; 0
    10bc:	90 e0       	ldi	r25, 0x00	; 0
    10be:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    10c2:	60 e9       	ldi	r22, 0x90	; 144
    10c4:	71 e0       	ldi	r23, 0x01	; 1
    10c6:	80 e0       	ldi	r24, 0x00	; 0
    10c8:	90 e0       	ldi	r25, 0x00	; 0
    10ca:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    10ce:	60 e9       	ldi	r22, 0x90	; 144
    10d0:	71 e0       	ldi	r23, 0x01	; 1
    10d2:	80 e0       	ldi	r24, 0x00	; 0
    10d4:	90 e0       	ldi	r25, 0x00	; 0
    10d6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    10da:	68 e5       	ldi	r22, 0x58	; 88
    10dc:	72 e0       	ldi	r23, 0x02	; 2
    10de:	80 e0       	ldi	r24, 0x00	; 0
    10e0:	90 e0       	ldi	r25, 0x00	; 0
    10e2:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    10e6:	60 e9       	ldi	r22, 0x90	; 144
    10e8:	71 e0       	ldi	r23, 0x01	; 1
    10ea:	80 e0       	ldi	r24, 0x00	; 0
    10ec:	90 e0       	ldi	r25, 0x00	; 0
    10ee:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    10f2:	68 ee       	ldi	r22, 0xE8	; 232
    10f4:	73 e0       	ldi	r23, 0x03	; 3
    10f6:	80 e0       	ldi	r24, 0x00	; 0
    10f8:	90 e0       	ldi	r25, 0x00	; 0
    10fa:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    10fe:	60 e9       	ldi	r22, 0x90	; 144
    1100:	71 e0       	ldi	r23, 0x01	; 1
    1102:	80 e0       	ldi	r24, 0x00	; 0
    1104:	90 e0       	ldi	r25, 0x00	; 0
    1106:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    110a:	68 e5       	ldi	r22, 0x58	; 88
    110c:	72 e0       	ldi	r23, 0x02	; 2
    110e:	80 e0       	ldi	r24, 0x00	; 0
    1110:	90 e0       	ldi	r25, 0x00	; 0
    1112:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    1116:	60 e9       	ldi	r22, 0x90	; 144
    1118:	71 e0       	ldi	r23, 0x01	; 1
    111a:	80 e0       	ldi	r24, 0x00	; 0
    111c:	90 e0       	ldi	r25, 0x00	; 0
    111e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1122:	68 ee       	ldi	r22, 0xE8	; 232
    1124:	73 e0       	ldi	r23, 0x03	; 3
    1126:	80 e0       	ldi	r24, 0x00	; 0
    1128:	90 e0       	ldi	r25, 0x00	; 0
    112a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    112e:	60 e9       	ldi	r22, 0x90	; 144
    1130:	71 e0       	ldi	r23, 0x01	; 1
    1132:	80 e0       	ldi	r24, 0x00	; 0
    1134:	90 e0       	ldi	r25, 0x00	; 0
    1136:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    113a:	68 e5       	ldi	r22, 0x58	; 88
    113c:	72 e0       	ldi	r23, 0x02	; 2
    113e:	80 e0       	ldi	r24, 0x00	; 0
    1140:	90 e0       	ldi	r25, 0x00	; 0
    1142:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    1146:	60 e9       	ldi	r22, 0x90	; 144
    1148:	71 e0       	ldi	r23, 0x01	; 1
    114a:	80 e0       	ldi	r24, 0x00	; 0
    114c:	90 e0       	ldi	r25, 0x00	; 0
    114e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1152:	68 ee       	ldi	r22, 0xE8	; 232
    1154:	73 e0       	ldi	r23, 0x03	; 3
    1156:	80 e0       	ldi	r24, 0x00	; 0
    1158:	90 e0       	ldi	r25, 0x00	; 0
    115a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    115e:	60 e9       	ldi	r22, 0x90	; 144
    1160:	71 e0       	ldi	r23, 0x01	; 1
    1162:	80 e0       	ldi	r24, 0x00	; 0
    1164:	90 e0       	ldi	r25, 0x00	; 0
    1166:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    116a:	6c e2       	ldi	r22, 0x2C	; 44
    116c:	71 e0       	ldi	r23, 0x01	; 1
    116e:	80 e0       	ldi	r24, 0x00	; 0
    1170:	90 e0       	ldi	r25, 0x00	; 0
    1172:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    1176:	60 e9       	ldi	r22, 0x90	; 144
    1178:	71 e0       	ldi	r23, 0x01	; 1
    117a:	80 e0       	ldi	r24, 0x00	; 0
    117c:	90 e0       	ldi	r25, 0x00	; 0
    117e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1182:	68 ee       	ldi	r22, 0xE8	; 232
    1184:	73 e0       	ldi	r23, 0x03	; 3
    1186:	80 e0       	ldi	r24, 0x00	; 0
    1188:	90 e0       	ldi	r25, 0x00	; 0
    118a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    118e:	60 e9       	ldi	r22, 0x90	; 144
    1190:	71 e0       	ldi	r23, 0x01	; 1
    1192:	80 e0       	ldi	r24, 0x00	; 0
    1194:	90 e0       	ldi	r25, 0x00	; 0
    1196:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    119a:	68 e5       	ldi	r22, 0x58	; 88
    119c:	72 e0       	ldi	r23, 0x02	; 2
    119e:	80 e0       	ldi	r24, 0x00	; 0
    11a0:	90 e0       	ldi	r25, 0x00	; 0
    11a2:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    11a6:	60 e9       	ldi	r22, 0x90	; 144
    11a8:	71 e0       	ldi	r23, 0x01	; 1
    11aa:	80 e0       	ldi	r24, 0x00	; 0
    11ac:	90 e0       	ldi	r25, 0x00	; 0
    11ae:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    11b2:	60 e9       	ldi	r22, 0x90	; 144
    11b4:	71 e0       	ldi	r23, 0x01	; 1
    11b6:	80 e0       	ldi	r24, 0x00	; 0
    11b8:	90 e0       	ldi	r25, 0x00	; 0
    11ba:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    11be:	6c e2       	ldi	r22, 0x2C	; 44
    11c0:	71 e0       	ldi	r23, 0x01	; 1
    11c2:	80 e0       	ldi	r24, 0x00	; 0
    11c4:	90 e0       	ldi	r25, 0x00	; 0
    11c6:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    11ca:	60 e9       	ldi	r22, 0x90	; 144
    11cc:	71 e0       	ldi	r23, 0x01	; 1
    11ce:	80 e0       	ldi	r24, 0x00	; 0
    11d0:	90 e0       	ldi	r25, 0x00	; 0
    11d2:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    11d6:	68 ee       	ldi	r22, 0xE8	; 232
    11d8:	73 e0       	ldi	r23, 0x03	; 3
    11da:	80 e0       	ldi	r24, 0x00	; 0
    11dc:	90 e0       	ldi	r25, 0x00	; 0
    11de:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    11e2:	60 e9       	ldi	r22, 0x90	; 144
    11e4:	71 e0       	ldi	r23, 0x01	; 1
    11e6:	80 e0       	ldi	r24, 0x00	; 0
    11e8:	90 e0       	ldi	r25, 0x00	; 0
    11ea:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    11ee:	68 e5       	ldi	r22, 0x58	; 88
    11f0:	72 e0       	ldi	r23, 0x02	; 2
    11f2:	80 e0       	ldi	r24, 0x00	; 0
    11f4:	90 e0       	ldi	r25, 0x00	; 0
    11f6:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    11fa:	60 e9       	ldi	r22, 0x90	; 144
    11fc:	71 e0       	ldi	r23, 0x01	; 1
    11fe:	80 e0       	ldi	r24, 0x00	; 0
    1200:	90 e0       	ldi	r25, 0x00	; 0
    1202:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1206:	68 ee       	ldi	r22, 0xE8	; 232
    1208:	73 e0       	ldi	r23, 0x03	; 3
    120a:	80 e0       	ldi	r24, 0x00	; 0
    120c:	90 e0       	ldi	r25, 0x00	; 0
    120e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1212:	60 e9       	ldi	r22, 0x90	; 144
    1214:	71 e0       	ldi	r23, 0x01	; 1
    1216:	80 e0       	ldi	r24, 0x00	; 0
    1218:	90 e0       	ldi	r25, 0x00	; 0
    121a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    121e:	6c e2       	ldi	r22, 0x2C	; 44
    1220:	71 e0       	ldi	r23, 0x01	; 1
    1222:	80 e0       	ldi	r24, 0x00	; 0
    1224:	90 e0       	ldi	r25, 0x00	; 0
    1226:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    122a:	60 e9       	ldi	r22, 0x90	; 144
    122c:	71 e0       	ldi	r23, 0x01	; 1
    122e:	80 e0       	ldi	r24, 0x00	; 0
    1230:	90 e0       	ldi	r25, 0x00	; 0
    1232:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1236:	60 e9       	ldi	r22, 0x90	; 144
    1238:	71 e0       	ldi	r23, 0x01	; 1
    123a:	80 e0       	ldi	r24, 0x00	; 0
    123c:	90 e0       	ldi	r25, 0x00	; 0
    123e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1242:	6c e2       	ldi	r22, 0x2C	; 44
    1244:	71 e0       	ldi	r23, 0x01	; 1
    1246:	80 e0       	ldi	r24, 0x00	; 0
    1248:	90 e0       	ldi	r25, 0x00	; 0
    124a:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    124e:	60 e9       	ldi	r22, 0x90	; 144
    1250:	71 e0       	ldi	r23, 0x01	; 1
    1252:	80 e0       	ldi	r24, 0x00	; 0
    1254:	90 e0       	ldi	r25, 0x00	; 0
    1256:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    125a:	68 ee       	ldi	r22, 0xE8	; 232
    125c:	73 e0       	ldi	r23, 0x03	; 3
    125e:	80 e0       	ldi	r24, 0x00	; 0
    1260:	90 e0       	ldi	r25, 0x00	; 0
    1262:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1266:	60 e9       	ldi	r22, 0x90	; 144
    1268:	71 e0       	ldi	r23, 0x01	; 1
    126a:	80 e0       	ldi	r24, 0x00	; 0
    126c:	90 e0       	ldi	r25, 0x00	; 0
    126e:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1272:	68 e5       	ldi	r22, 0x58	; 88
    1274:	72 e0       	ldi	r23, 0x02	; 2
    1276:	80 e0       	ldi	r24, 0x00	; 0
    1278:	90 e0       	ldi	r25, 0x00	; 0
    127a:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    127e:	60 e9       	ldi	r22, 0x90	; 144
    1280:	71 e0       	ldi	r23, 0x01	; 1
    1282:	80 e0       	ldi	r24, 0x00	; 0
    1284:	90 e0       	ldi	r25, 0x00	; 0
    1286:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    128a:	60 e9       	ldi	r22, 0x90	; 144
    128c:	71 e0       	ldi	r23, 0x01	; 1
    128e:	80 e0       	ldi	r24, 0x00	; 0
    1290:	90 e0       	ldi	r25, 0x00	; 0
    1292:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1296:	68 e5       	ldi	r22, 0x58	; 88
    1298:	72 e0       	ldi	r23, 0x02	; 2
    129a:	80 e0       	ldi	r24, 0x00	; 0
    129c:	90 e0       	ldi	r25, 0x00	; 0
    129e:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    12a2:	60 e9       	ldi	r22, 0x90	; 144
    12a4:	71 e0       	ldi	r23, 0x01	; 1
    12a6:	80 e0       	ldi	r24, 0x00	; 0
    12a8:	90 e0       	ldi	r25, 0x00	; 0
    12aa:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    12ae:	60 e9       	ldi	r22, 0x90	; 144
    12b0:	71 e0       	ldi	r23, 0x01	; 1
    12b2:	80 e0       	ldi	r24, 0x00	; 0
    12b4:	90 e0       	ldi	r25, 0x00	; 0
    12b6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    12ba:	68 e5       	ldi	r22, 0x58	; 88
    12bc:	72 e0       	ldi	r23, 0x02	; 2
    12be:	80 e0       	ldi	r24, 0x00	; 0
    12c0:	90 e0       	ldi	r25, 0x00	; 0
    12c2:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    12c6:	60 e9       	ldi	r22, 0x90	; 144
    12c8:	71 e0       	ldi	r23, 0x01	; 1
    12ca:	80 e0       	ldi	r24, 0x00	; 0
    12cc:	90 e0       	ldi	r25, 0x00	; 0
    12ce:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    12d2:	68 ee       	ldi	r22, 0xE8	; 232
    12d4:	73 e0       	ldi	r23, 0x03	; 3
    12d6:	80 e0       	ldi	r24, 0x00	; 0
    12d8:	90 e0       	ldi	r25, 0x00	; 0
    12da:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    12de:	60 e9       	ldi	r22, 0x90	; 144
    12e0:	71 e0       	ldi	r23, 0x01	; 1
    12e2:	80 e0       	ldi	r24, 0x00	; 0
    12e4:	90 e0       	ldi	r25, 0x00	; 0
    12e6:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    12ea:	68 e5       	ldi	r22, 0x58	; 88
    12ec:	72 e0       	ldi	r23, 0x02	; 2
    12ee:	80 e0       	ldi	r24, 0x00	; 0
    12f0:	90 e0       	ldi	r25, 0x00	; 0
    12f2:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    12f6:	60 e9       	ldi	r22, 0x90	; 144
    12f8:	71 e0       	ldi	r23, 0x01	; 1
    12fa:	80 e0       	ldi	r24, 0x00	; 0
    12fc:	90 e0       	ldi	r25, 0x00	; 0
    12fe:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1302:	60 e9       	ldi	r22, 0x90	; 144
    1304:	71 e0       	ldi	r23, 0x01	; 1
    1306:	80 e0       	ldi	r24, 0x00	; 0
    1308:	90 e0       	ldi	r25, 0x00	; 0
    130a:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    130e:	6c e2       	ldi	r22, 0x2C	; 44
    1310:	71 e0       	ldi	r23, 0x01	; 1
    1312:	80 e0       	ldi	r24, 0x00	; 0
    1314:	90 e0       	ldi	r25, 0x00	; 0
    1316:	0e 94 98 00 	call	0x130	; 0x130 <_Z4tonehjm.constprop.1>
    131a:	60 e9       	ldi	r22, 0x90	; 144
    131c:	71 e0       	ldi	r23, 0x01	; 1
    131e:	80 e0       	ldi	r24, 0x00	; 0
    1320:	90 e0       	ldi	r25, 0x00	; 0
    1322:	0e 94 b5 01 	call	0x36a	; 0x36a <delay>
    1326:	ff cf       	rjmp	.-2      	; 0x1326 <__stack+0xa27>

00001328 <__udivmodsi4>:
    1328:	a1 e2       	ldi	r26, 0x21	; 33
    132a:	1a 2e       	mov	r1, r26
    132c:	aa 1b       	sub	r26, r26
    132e:	bb 1b       	sub	r27, r27
    1330:	fd 01       	movw	r30, r26
    1332:	0d c0       	rjmp	.+26     	; 0x134e <__udivmodsi4_ep>

00001334 <__udivmodsi4_loop>:
    1334:	aa 1f       	adc	r26, r26
    1336:	bb 1f       	adc	r27, r27
    1338:	ee 1f       	adc	r30, r30
    133a:	ff 1f       	adc	r31, r31
    133c:	a2 17       	cp	r26, r18
    133e:	b3 07       	cpc	r27, r19
    1340:	e4 07       	cpc	r30, r20
    1342:	f5 07       	cpc	r31, r21
    1344:	20 f0       	brcs	.+8      	; 0x134e <__udivmodsi4_ep>
    1346:	a2 1b       	sub	r26, r18
    1348:	b3 0b       	sbc	r27, r19
    134a:	e4 0b       	sbc	r30, r20
    134c:	f5 0b       	sbc	r31, r21

0000134e <__udivmodsi4_ep>:
    134e:	66 1f       	adc	r22, r22
    1350:	77 1f       	adc	r23, r23
    1352:	88 1f       	adc	r24, r24
    1354:	99 1f       	adc	r25, r25
    1356:	1a 94       	dec	r1
    1358:	69 f7       	brne	.-38     	; 0x1334 <__udivmodsi4_loop>
    135a:	60 95       	com	r22
    135c:	70 95       	com	r23
    135e:	80 95       	com	r24
    1360:	90 95       	com	r25
    1362:	9b 01       	movw	r18, r22
    1364:	ac 01       	movw	r20, r24
    1366:	bd 01       	movw	r22, r26
    1368:	cf 01       	movw	r24, r30
    136a:	08 95       	ret

0000136c <__muluhisi3>:
    136c:	0e 94 c1 09 	call	0x1382	; 0x1382 <__umulhisi3>
    1370:	a5 9f       	mul	r26, r21
    1372:	90 0d       	add	r25, r0
    1374:	b4 9f       	mul	r27, r20
    1376:	90 0d       	add	r25, r0
    1378:	a4 9f       	mul	r26, r20
    137a:	80 0d       	add	r24, r0
    137c:	91 1d       	adc	r25, r1
    137e:	11 24       	eor	r1, r1
    1380:	08 95       	ret

00001382 <__umulhisi3>:
    1382:	a2 9f       	mul	r26, r18
    1384:	b0 01       	movw	r22, r0
    1386:	b3 9f       	mul	r27, r19
    1388:	c0 01       	movw	r24, r0
    138a:	a3 9f       	mul	r26, r19
    138c:	70 0d       	add	r23, r0
    138e:	81 1d       	adc	r24, r1
    1390:	11 24       	eor	r1, r1
    1392:	91 1d       	adc	r25, r1
    1394:	b2 9f       	mul	r27, r18
    1396:	70 0d       	add	r23, r0
    1398:	81 1d       	adc	r24, r1
    139a:	11 24       	eor	r1, r1
    139c:	91 1d       	adc	r25, r1
    139e:	08 95       	ret

000013a0 <_exit>:
    13a0:	f8 94       	cli

000013a2 <__stop_program>:
    13a2:	ff cf       	rjmp	.-2      	; 0x13a2 <__stop_program>
