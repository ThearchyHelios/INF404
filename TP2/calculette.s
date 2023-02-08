
calculette:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000100003184 <_main>:
100003184: ff c3 00 d1 	sub	sp, sp, #48
100003188: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
10000318c: fd 83 00 91 	add	x29, sp, #32
100003190: bf c3 1f b8 	stur	wzr, [x29, #-4]
100003194: a0 83 1f b8 	stur	w0, [x29, #-8]
100003198: e1 0b 00 f9 	str	x1, [sp, #16]
10000319c: a8 83 5f b8 	ldur	w8, [x29, #-8]
1000031a0: 08 09 00 71 	subs	w8, w8, #2
1000031a4: 60 01 00 54 	b.eq	0x1000031d0 <_main+0x4c>
1000031a8: 01 00 00 14 	b	0x1000031ac <_main+0x28>
1000031ac: e8 0b 40 f9 	ldr	x8, [sp, #16]
1000031b0: 08 01 40 f9 	ldr	x8, [x8]
1000031b4: e9 03 00 91 	mov	x9, sp
1000031b8: 28 01 00 f9 	str	x8, [x9]
1000031bc: 00 00 00 90 	adrp	x0, 0x100003000 <_main+0x38>
1000031c0: 00 b0 39 91 	add	x0, x0, #3692
1000031c4: 24 03 00 94 	bl	0x100003e54 <_strlen+0x100003e54>
1000031c8: 20 00 80 52 	mov	w0, #1
1000031cc: 10 03 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
1000031d0: e8 0b 40 f9 	ldr	x8, [sp, #16]
1000031d4: 00 05 40 f9 	ldr	x0, [x8, #8]
1000031d8: e1 33 00 91 	add	x1, sp, #12
1000031dc: a4 02 00 94 	bl	0x100003c6c <_analyser>
1000031e0: e9 0f 40 b9 	ldr	w9, [sp, #12]
1000031e4: e8 03 09 aa 	mov	x8, x9
1000031e8: e9 03 00 91 	mov	x9, sp
1000031ec: 28 01 00 f9 	str	x8, [x9]
1000031f0: 00 00 00 90 	adrp	x0, 0x100003000 <_main+0x6c>
1000031f4: 00 04 3a 91 	add	x0, x0, #3713
1000031f8: 17 03 00 94 	bl	0x100003e54 <_strlen+0x100003e54>
1000031fc: 00 00 80 52 	mov	w0, #0
100003200: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003204: ff c3 00 91 	add	sp, sp, #48
100003208: c0 03 5f d6 	ret

000000010000320c <_demarrer>:
10000320c: ff 83 00 d1 	sub	sp, sp, #32
100003210: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003214: fd 43 00 91 	add	x29, sp, #16
100003218: e0 07 00 f9 	str	x0, [sp, #8]
10000321c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003220: d3 01 00 94 	bl	0x10000396c <_demarrer_car>
100003224: 04 00 00 94 	bl	0x100003234 <_avancer>
100003228: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
10000322c: ff 83 00 91 	add	sp, sp, #32
100003230: c0 03 5f d6 	ret

0000000100003234 <_avancer>:
100003234: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100003238: fd 03 00 91 	mov	x29, sp
10000323c: 18 00 00 94 	bl	0x10000329c <_reconnaitre_lexeme>
100003240: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100003244: c0 03 5f d6 	ret

0000000100003248 <_lexeme_courant>:
100003248: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
10000324c: fd 03 00 91 	mov	x29, sp
100003250: e0 03 08 aa 	mov	x0, x8
100003254: 21 00 00 b0 	adrp	x1, 0x100008000 <_lexeme_courant+0x20>
100003258: 21 00 00 91 	add	x1, x1, #0
10000325c: 02 22 80 d2 	mov	x2, #272
100003260: fa 02 00 94 	bl	0x100003e48 <_strlen+0x100003e48>
100003264: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100003268: c0 03 5f d6 	ret

000000010000326c <_fin_de_sequence>:
10000326c: 28 00 00 b0 	adrp	x8, 0x100008000 <_fin_de_sequence+0x14>
100003270: 08 01 00 91 	add	x8, x8, #0
100003274: 08 01 40 b9 	ldr	w8, [x8]
100003278: 08 15 00 71 	subs	w8, w8, #5
10000327c: e8 17 9f 1a 	cset	w8, eq
100003280: 00 01 00 12 	and	w0, w8, #0x1
100003284: c0 03 5f d6 	ret

0000000100003288 <_arreter>:
100003288: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
10000328c: fd 03 00 91 	mov	x29, sp
100003290: 1c 02 00 94 	bl	0x100003b00 <_arreter_car>
100003294: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100003298: c0 03 5f d6 	ret

000000010000329c <_reconnaitre_lexeme>:
10000329c: ff 03 01 d1 	sub	sp, sp, #64
1000032a0: fd 7b 03 a9 	stp	x29, x30, [sp, #48]
1000032a4: fd c3 00 91 	add	x29, sp, #48
1000032a8: 28 00 00 b0 	adrp	x8, 0x100008000 <_reconnaitre_lexeme+0x20>
1000032ac: 08 01 00 91 	add	x8, x8, #0
1000032b0: e8 0f 00 f9 	str	x8, [sp, #24]
1000032b4: 08 31 00 91 	add	x8, x8, #12
1000032b8: a8 03 1f f8 	stur	x8, [x29, #-16]
1000032bc: bf c3 1f b8 	stur	wzr, [x29, #-4]
1000032c0: 01 00 00 14 	b	0x1000032c4 <_reconnaitre_lexeme+0x28>
1000032c4: fb 01 00 94 	bl	0x100003ab0 <_caractere_courant>
1000032c8: 00 1c 00 13 	sxtb	w0, w0
1000032cc: b6 00 00 94 	bl	0x1000035a4 <_est_separateur>
1000032d0: 80 00 00 34 	cbz	w0, 0x1000032e0 <_reconnaitre_lexeme+0x44>
1000032d4: 01 00 00 14 	b	0x1000032d8 <_reconnaitre_lexeme+0x3c>
1000032d8: c7 01 00 94 	bl	0x1000039f4 <_avancer_car>
1000032dc: fa ff ff 17 	b	0x1000032c4 <_reconnaitre_lexeme+0x28>
1000032e0: e8 0f 40 f9 	ldr	x8, [sp, #24]
1000032e4: 1f 31 00 39 	strb	wzr, [x8, #12]
1000032e8: 01 00 00 14 	b	0x1000032ec <_reconnaitre_lexeme+0x50>
1000032ec: a8 c3 5f b8 	ldur	w8, [x29, #-4]
1000032f0: 08 09 00 71 	subs	w8, w8, #2
1000032f4: 20 14 00 54 	b.eq	0x100003578 <_reconnaitre_lexeme+0x2dc>
1000032f8: 01 00 00 14 	b	0x1000032fc <_reconnaitre_lexeme+0x60>
1000032fc: a8 c3 5f b8 	ldur	w8, [x29, #-4]
100003300: e8 17 00 b9 	str	w8, [sp, #20]
100003304: 48 01 00 34 	cbz	w8, 0x10000332c <_reconnaitre_lexeme+0x90>
100003308: 01 00 00 14 	b	0x10000330c <_reconnaitre_lexeme+0x70>
10000330c: e8 17 40 b9 	ldr	w8, [sp, #20]
100003310: 08 05 00 71 	subs	w8, w8, #1
100003314: 20 0f 00 54 	b.eq	0x1000034f8 <_reconnaitre_lexeme+0x25c>
100003318: 01 00 00 14 	b	0x10000331c <_reconnaitre_lexeme+0x80>
10000331c: e8 17 40 b9 	ldr	w8, [sp, #20]
100003320: 08 09 00 71 	subs	w8, w8, #2
100003324: 60 12 00 54 	b.eq	0x100003570 <_reconnaitre_lexeme+0x2d4>
100003328: 93 00 00 14 	b	0x100003574 <_reconnaitre_lexeme+0x2d8>
10000332c: e1 01 00 94 	bl	0x100003ab0 <_caractere_courant>
100003330: 00 1c 00 13 	sxtb	w0, w0
100003334: b3 00 00 94 	bl	0x100003600 <_nature_caractere>
100003338: e0 13 00 b9 	str	w0, [sp, #16]
10000333c: 08 04 00 71 	subs	w8, w0, #1
100003340: 00 02 00 54 	b.eq	0x100003380 <_reconnaitre_lexeme+0xe4>
100003344: 01 00 00 14 	b	0x100003348 <_reconnaitre_lexeme+0xac>
100003348: e8 13 40 b9 	ldr	w8, [sp, #16]
10000334c: 08 09 00 71 	subs	w8, w8, #2
100003350: 40 04 00 54 	b.eq	0x1000033d8 <_reconnaitre_lexeme+0x13c>
100003354: 01 00 00 14 	b	0x100003358 <_reconnaitre_lexeme+0xbc>
100003358: e8 13 40 b9 	ldr	w8, [sp, #16]
10000335c: 08 0d 00 71 	subs	w8, w8, #3
100003360: 01 0c 00 54 	b.ne	0x1000034e0 <_reconnaitre_lexeme+0x244>
100003364: 01 00 00 14 	b	0x100003368 <_reconnaitre_lexeme+0xcc>
100003368: e9 0f 40 f9 	ldr	x9, [sp, #24]
10000336c: a8 00 80 52 	mov	w8, #5
100003370: 28 01 00 b9 	str	w8, [x9]
100003374: 48 00 80 52 	mov	w8, #2
100003378: a8 c3 1f b8 	stur	w8, [x29, #-4]
10000337c: 5e 00 00 14 	b	0x1000034f4 <_reconnaitre_lexeme+0x258>
100003380: e8 0f 40 f9 	ldr	x8, [sp, #24]
100003384: 1f 01 00 b9 	str	wzr, [x8]
100003388: d6 01 00 94 	bl	0x100003ae0 <_numero_ligne>
10000338c: e8 0f 40 f9 	ldr	x8, [sp, #24]
100003390: 00 05 00 b9 	str	w0, [x8, #4]
100003394: d7 01 00 94 	bl	0x100003af0 <_numero_colonne>
100003398: e8 0f 40 f9 	ldr	x8, [sp, #24]
10000339c: 00 09 00 b9 	str	w0, [x8, #8]
1000033a0: c4 01 00 94 	bl	0x100003ab0 <_caractere_courant>
1000033a4: e8 03 00 aa 	mov	x8, x0
1000033a8: a0 03 5f f8 	ldur	x0, [x29, #-16]
1000033ac: 01 1d 00 13 	sxtb	w1, w8
1000033b0: b3 00 00 94 	bl	0x10000367c <_ajouter_caractere>
1000033b4: bf 01 00 94 	bl	0x100003ab0 <_caractere_courant>
1000033b8: e9 0f 40 f9 	ldr	x9, [sp, #24]
1000033bc: 08 1c 00 13 	sxtb	w8, w0
1000033c0: 08 c1 00 71 	subs	w8, w8, #48
1000033c4: 28 0d 01 b9 	str	w8, [x9, #268]
1000033c8: 28 00 80 52 	mov	w8, #1
1000033cc: a8 c3 1f b8 	stur	w8, [x29, #-4]
1000033d0: 89 01 00 94 	bl	0x1000039f4 <_avancer_car>
1000033d4: 48 00 00 14 	b	0x1000034f4 <_reconnaitre_lexeme+0x258>
1000033d8: c2 01 00 94 	bl	0x100003ae0 <_numero_ligne>
1000033dc: e8 0f 40 f9 	ldr	x8, [sp, #24]
1000033e0: 00 05 00 b9 	str	w0, [x8, #4]
1000033e4: c3 01 00 94 	bl	0x100003af0 <_numero_colonne>
1000033e8: e8 0f 40 f9 	ldr	x8, [sp, #24]
1000033ec: 00 09 00 b9 	str	w0, [x8, #8]
1000033f0: b0 01 00 94 	bl	0x100003ab0 <_caractere_courant>
1000033f4: e8 03 00 aa 	mov	x8, x0
1000033f8: a0 03 5f f8 	ldur	x0, [x29, #-16]
1000033fc: 01 1d 00 13 	sxtb	w1, w8
100003400: 9f 00 00 94 	bl	0x10000367c <_ajouter_caractere>
100003404: ab 01 00 94 	bl	0x100003ab0 <_caractere_courant>
100003408: 08 1c 00 13 	sxtb	w8, w0
10000340c: 08 a1 00 71 	subs	w8, w8, #40
100003410: e8 07 00 f9 	str	x8, [sp, #8]
100003414: 08 1d 00 f1 	subs	x8, x8, #7
100003418: 68 05 00 54 	b.hi	0x1000034c4 <_reconnaitre_lexeme+0x228>
10000341c: eb 07 40 f9 	ldr	x11, [sp, #8]
100003420: 0a 00 00 90 	adrp	x10, 0x100003000 <_reconnaitre_lexeme+0x184>
100003424: 4a 11 16 91 	add	x10, x10, #1412
100003428: 08 00 00 10 	adr	x8, #0
10000342c: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
100003430: 08 01 09 8b 	add	x8, x8, x9
100003434: 00 01 1f d6 	br	x8
100003438: e9 0f 40 f9 	ldr	x9, [sp, #24]
10000343c: 28 00 80 52 	mov	w8, #1
100003440: 28 01 00 b9 	str	w8, [x9]
100003444: 48 00 80 52 	mov	w8, #2
100003448: a8 c3 1f b8 	stur	w8, [x29, #-4]
10000344c: 23 00 00 14 	b	0x1000034d8 <_reconnaitre_lexeme+0x23c>
100003450: e9 0f 40 f9 	ldr	x9, [sp, #24]
100003454: 48 00 80 52 	mov	w8, #2
100003458: 28 01 00 b9 	str	w8, [x9]
10000345c: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003460: 1e 00 00 14 	b	0x1000034d8 <_reconnaitre_lexeme+0x23c>
100003464: e9 0f 40 f9 	ldr	x9, [sp, #24]
100003468: 68 00 80 52 	mov	w8, #3
10000346c: 28 01 00 b9 	str	w8, [x9]
100003470: 48 00 80 52 	mov	w8, #2
100003474: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003478: 18 00 00 14 	b	0x1000034d8 <_reconnaitre_lexeme+0x23c>
10000347c: e9 0f 40 f9 	ldr	x9, [sp, #24]
100003480: 88 00 80 52 	mov	w8, #4
100003484: 28 01 00 b9 	str	w8, [x9]
100003488: 48 00 80 52 	mov	w8, #2
10000348c: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003490: 12 00 00 14 	b	0x1000034d8 <_reconnaitre_lexeme+0x23c>
100003494: e9 0f 40 f9 	ldr	x9, [sp, #24]
100003498: c8 00 80 52 	mov	w8, #6
10000349c: 28 01 00 b9 	str	w8, [x9]
1000034a0: 48 00 80 52 	mov	w8, #2
1000034a4: a8 c3 1f b8 	stur	w8, [x29, #-4]
1000034a8: 0c 00 00 14 	b	0x1000034d8 <_reconnaitre_lexeme+0x23c>
1000034ac: e9 0f 40 f9 	ldr	x9, [sp, #24]
1000034b0: e8 00 80 52 	mov	w8, #7
1000034b4: 28 01 00 b9 	str	w8, [x9]
1000034b8: 48 00 80 52 	mov	w8, #2
1000034bc: a8 c3 1f b8 	stur	w8, [x29, #-4]
1000034c0: 06 00 00 14 	b	0x1000034d8 <_reconnaitre_lexeme+0x23c>
1000034c4: 00 00 00 90 	adrp	x0, 0x100003000 <_reconnaitre_lexeme+0x228>
1000034c8: 00 44 3a 91 	add	x0, x0, #3729
1000034cc: 62 02 00 94 	bl	0x100003e54 <_strlen+0x100003e54>
1000034d0: 00 00 80 52 	mov	w0, #0
1000034d4: 4e 02 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
1000034d8: 47 01 00 94 	bl	0x1000039f4 <_avancer_car>
1000034dc: 06 00 00 14 	b	0x1000034f4 <_reconnaitre_lexeme+0x258>
1000034e0: 00 00 00 90 	adrp	x0, 0x100003000 <_reconnaitre_lexeme+0x244>
1000034e4: 00 84 3a 91 	add	x0, x0, #3745
1000034e8: 5b 02 00 94 	bl	0x100003e54 <_strlen+0x100003e54>
1000034ec: 00 00 80 52 	mov	w0, #0
1000034f0: 47 02 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
1000034f4: 20 00 00 14 	b	0x100003574 <_reconnaitre_lexeme+0x2d8>
1000034f8: 6e 01 00 94 	bl	0x100003ab0 <_caractere_courant>
1000034fc: 00 1c 00 13 	sxtb	w0, w0
100003500: 40 00 00 94 	bl	0x100003600 <_nature_caractere>
100003504: 08 04 00 71 	subs	w8, w0, #1
100003508: c1 02 00 54 	b.ne	0x100003560 <_reconnaitre_lexeme+0x2c4>
10000350c: 01 00 00 14 	b	0x100003510 <_reconnaitre_lexeme+0x274>
100003510: 68 01 00 94 	bl	0x100003ab0 <_caractere_courant>
100003514: e8 03 00 aa 	mov	x8, x0
100003518: a0 03 5f f8 	ldur	x0, [x29, #-16]
10000351c: 01 1d 00 13 	sxtb	w1, w8
100003520: 57 00 00 94 	bl	0x10000367c <_ajouter_caractere>
100003524: e8 0f 40 f9 	ldr	x8, [sp, #24]
100003528: 08 0d 41 b9 	ldr	w8, [x8, #268]
10000352c: 49 01 80 52 	mov	w9, #10
100003530: 08 7d 09 1b 	mul	w8, w8, w9
100003534: e8 07 00 b9 	str	w8, [sp, #4]
100003538: 5e 01 00 94 	bl	0x100003ab0 <_caractere_courant>
10000353c: e8 07 40 b9 	ldr	w8, [sp, #4]
100003540: e9 0f 40 f9 	ldr	x9, [sp, #24]
100003544: 08 81 20 0b 	add	w8, w8, w0, sxtb
100003548: 08 c1 00 71 	subs	w8, w8, #48
10000354c: 28 0d 01 b9 	str	w8, [x9, #268]
100003550: 28 00 80 52 	mov	w8, #1
100003554: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003558: 27 01 00 94 	bl	0x1000039f4 <_avancer_car>
10000355c: 04 00 00 14 	b	0x10000356c <_reconnaitre_lexeme+0x2d0>
100003560: 48 00 80 52 	mov	w8, #2
100003564: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003568: 01 00 00 14 	b	0x10000356c <_reconnaitre_lexeme+0x2d0>
10000356c: 01 00 00 14 	b	0x100003570 <_reconnaitre_lexeme+0x2d4>
100003570: 01 00 00 14 	b	0x100003574 <_reconnaitre_lexeme+0x2d8>
100003574: 5e ff ff 17 	b	0x1000032ec <_reconnaitre_lexeme+0x50>
100003578: fd 7b 43 a9 	ldp	x29, x30, [sp, #48]
10000357c: ff 03 01 91 	add	sp, sp, #64
100003580: c0 03 5f d6 	ret
100003584: 6c 00 00 00 	udf	#108
100003588: 84 00 00 00 	udf	#132
10000358c: 3c 00 00 00 	udf	#60
100003590: 10 00 00 00 	udf	#16
100003594: 9c 00 00 00 	udf	#156
100003598: 28 00 00 00 	udf	#40
10000359c: 9c 00 00 00 	udf	#156
1000035a0: 54 00 00 00 	udf	#84

00000001000035a4 <_est_separateur>:
1000035a4: ff 43 00 d1 	sub	sp, sp, #16
1000035a8: e0 3f 00 39 	strb	w0, [sp, #15]
1000035ac: e9 3f c0 39 	ldrsb	w9, [sp, #15]
1000035b0: 28 00 80 52 	mov	w8, #1
1000035b4: 29 81 00 71 	subs	w9, w9, #32
1000035b8: e8 0b 00 b9 	str	w8, [sp, #8]
1000035bc: a0 01 00 54 	b.eq	0x1000035f0 <_est_separateur+0x4c>
1000035c0: 01 00 00 14 	b	0x1000035c4 <_est_separateur+0x20>
1000035c4: e9 3f c0 39 	ldrsb	w9, [sp, #15]
1000035c8: 28 00 80 52 	mov	w8, #1
1000035cc: 29 25 00 71 	subs	w9, w9, #9
1000035d0: e8 0b 00 b9 	str	w8, [sp, #8]
1000035d4: e0 00 00 54 	b.eq	0x1000035f0 <_est_separateur+0x4c>
1000035d8: 01 00 00 14 	b	0x1000035dc <_est_separateur+0x38>
1000035dc: e8 3f c0 39 	ldrsb	w8, [sp, #15]
1000035e0: 08 29 00 71 	subs	w8, w8, #10
1000035e4: e8 17 9f 1a 	cset	w8, eq
1000035e8: e8 0b 00 b9 	str	w8, [sp, #8]
1000035ec: 01 00 00 14 	b	0x1000035f0 <_est_separateur+0x4c>
1000035f0: e8 0b 40 b9 	ldr	w8, [sp, #8]
1000035f4: 00 01 00 12 	and	w0, w8, #0x1
1000035f8: ff 43 00 91 	add	sp, sp, #16
1000035fc: c0 03 5f d6 	ret

0000000100003600 <_nature_caractere>:
100003600: ff 83 00 d1 	sub	sp, sp, #32
100003604: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003608: fd 43 00 91 	add	x29, sp, #16
10000360c: a0 b3 1f 38 	sturb	w0, [x29, #-5]
100003610: a0 b3 df 38 	ldursb	w0, [x29, #-5]
100003614: 2c 01 00 94 	bl	0x100003ac4 <_fin_de_sequence_car>
100003618: a0 00 00 34 	cbz	w0, 0x10000362c <_nature_caractere+0x2c>
10000361c: 01 00 00 14 	b	0x100003620 <_nature_caractere+0x20>
100003620: 68 00 80 52 	mov	w8, #3
100003624: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003628: 11 00 00 14 	b	0x10000366c <_nature_caractere+0x6c>
10000362c: a0 b3 df 38 	ldursb	w0, [x29, #-5]
100003630: 29 00 00 94 	bl	0x1000036d4 <_est_chiffre>
100003634: a0 00 00 34 	cbz	w0, 0x100003648 <_nature_caractere+0x48>
100003638: 01 00 00 14 	b	0x10000363c <_nature_caractere+0x3c>
10000363c: 28 00 80 52 	mov	w8, #1
100003640: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003644: 0a 00 00 14 	b	0x10000366c <_nature_caractere+0x6c>
100003648: a0 b3 df 38 	ldursb	w0, [x29, #-5]
10000364c: 33 00 00 94 	bl	0x100003718 <_est_symbole>
100003650: a0 00 00 34 	cbz	w0, 0x100003664 <_nature_caractere+0x64>
100003654: 01 00 00 14 	b	0x100003658 <_nature_caractere+0x58>
100003658: 48 00 80 52 	mov	w8, #2
10000365c: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003660: 03 00 00 14 	b	0x10000366c <_nature_caractere+0x6c>
100003664: bf c3 1f b8 	stur	wzr, [x29, #-4]
100003668: 01 00 00 14 	b	0x10000366c <_nature_caractere+0x6c>
10000366c: a0 c3 5f b8 	ldur	w0, [x29, #-4]
100003670: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003674: ff 83 00 91 	add	sp, sp, #32
100003678: c0 03 5f d6 	ret

000000010000367c <_ajouter_caractere>:
10000367c: ff 83 00 d1 	sub	sp, sp, #32
100003680: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003684: fd 43 00 91 	add	x29, sp, #16
100003688: e0 07 00 f9 	str	x0, [sp, #8]
10000368c: e1 1f 00 39 	strb	w1, [sp, #7]
100003690: e0 07 40 f9 	ldr	x0, [sp, #8]
100003694: f3 01 00 94 	bl	0x100003e60 <_strlen+0x100003e60>
100003698: e8 03 00 aa 	mov	x8, x0
10000369c: e8 03 00 b9 	str	w8, [sp]
1000036a0: e8 1f 40 39 	ldrb	w8, [sp, #7]
1000036a4: e9 07 40 f9 	ldr	x9, [sp, #8]
1000036a8: ea 03 80 b9 	ldrsw	x10, [sp]
1000036ac: 29 01 0a 8b 	add	x9, x9, x10
1000036b0: 28 01 00 39 	strb	w8, [x9]
1000036b4: e8 07 40 f9 	ldr	x8, [sp, #8]
1000036b8: e9 03 40 b9 	ldr	w9, [sp]
1000036bc: 29 05 00 11 	add	w9, w9, #1
1000036c0: 08 c1 29 8b 	add	x8, x8, w9, sxtw
1000036c4: 1f 01 00 39 	strb	wzr, [x8]
1000036c8: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000036cc: ff 83 00 91 	add	sp, sp, #32
1000036d0: c0 03 5f d6 	ret

00000001000036d4 <_est_chiffre>:
1000036d4: ff 43 00 d1 	sub	sp, sp, #16
1000036d8: e0 3f 00 39 	strb	w0, [sp, #15]
1000036dc: e9 3f c0 39 	ldrsb	w9, [sp, #15]
1000036e0: 08 00 80 52 	mov	w8, #0
1000036e4: 29 c1 00 71 	subs	w9, w9, #48
1000036e8: e8 0b 00 b9 	str	w8, [sp, #8]
1000036ec: eb 00 00 54 	b.lt	0x100003708 <_est_chiffre+0x34>
1000036f0: 01 00 00 14 	b	0x1000036f4 <_est_chiffre+0x20>
1000036f4: e8 3f c0 39 	ldrsb	w8, [sp, #15]
1000036f8: 08 e5 00 71 	subs	w8, w8, #57
1000036fc: e8 c7 9f 1a 	cset	w8, le
100003700: e8 0b 00 b9 	str	w8, [sp, #8]
100003704: 01 00 00 14 	b	0x100003708 <_est_chiffre+0x34>
100003708: e8 0b 40 b9 	ldr	w8, [sp, #8]
10000370c: 00 01 00 12 	and	w0, w8, #0x1
100003710: ff 43 00 91 	add	sp, sp, #16
100003714: c0 03 5f d6 	ret

0000000100003718 <_est_symbole>:
100003718: ff 43 00 d1 	sub	sp, sp, #16
10000371c: e0 2f 00 39 	strb	w0, [sp, #11]
100003720: e8 2f c0 39 	ldrsb	w8, [sp, #11]
100003724: e8 07 00 b9 	str	w8, [sp, #4]
100003728: 08 a1 00 71 	subs	w8, w8, #40
10000372c: 08 0d 00 71 	subs	w8, w8, #3
100003730: 49 01 00 54 	b.ls	0x100003758 <_est_symbole+0x40>
100003734: 01 00 00 14 	b	0x100003738 <_est_symbole+0x20>
100003738: e8 07 40 b9 	ldr	w8, [sp, #4]
10000373c: 08 b5 00 71 	subs	w8, w8, #45
100003740: c0 00 00 54 	b.eq	0x100003758 <_est_symbole+0x40>
100003744: 01 00 00 14 	b	0x100003748 <_est_symbole+0x30>
100003748: e8 07 40 b9 	ldr	w8, [sp, #4]
10000374c: 08 bd 00 71 	subs	w8, w8, #47
100003750: a1 00 00 54 	b.ne	0x100003764 <_est_symbole+0x4c>
100003754: 01 00 00 14 	b	0x100003758 <_est_symbole+0x40>
100003758: 28 00 80 52 	mov	w8, #1
10000375c: e8 0f 00 b9 	str	w8, [sp, #12]
100003760: 03 00 00 14 	b	0x10000376c <_est_symbole+0x54>
100003764: ff 0f 00 b9 	str	wzr, [sp, #12]
100003768: 01 00 00 14 	b	0x10000376c <_est_symbole+0x54>
10000376c: e0 0f 40 b9 	ldr	w0, [sp, #12]
100003770: ff 43 00 91 	add	sp, sp, #16
100003774: c0 03 5f d6 	ret

0000000100003778 <_Nature_vers_Chaine>:
100003778: ff 83 00 d1 	sub	sp, sp, #32
10000377c: e0 17 00 b9 	str	w0, [sp, #20]
100003780: e8 17 40 b9 	ldr	w8, [sp, #20]
100003784: 08 01 00 71 	subs	w8, w8, #0
100003788: e8 07 00 f9 	str	x8, [sp, #8]
10000378c: 08 1d 00 f1 	subs	x8, x8, #7
100003790: 08 05 00 54 	b.hi	0x100003830 <_Nature_vers_Chaine+0xb8>
100003794: eb 07 40 f9 	ldr	x11, [sp, #8]
100003798: 0a 00 00 90 	adrp	x10, 0x100003000 <_Nature_vers_Chaine+0x20>
10000379c: 4a 31 21 91 	add	x10, x10, #2124
1000037a0: 08 00 00 10 	adr	x8, #0
1000037a4: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
1000037a8: 08 01 09 8b 	add	x8, x8, x9
1000037ac: 00 01 1f d6 	br	x8
1000037b0: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0x38>
1000037b4: 08 c9 3a 91 	add	x8, x8, #3762
1000037b8: e8 0f 00 f9 	str	x8, [sp, #24]
1000037bc: 21 00 00 14 	b	0x100003840 <_Nature_vers_Chaine+0xc8>
1000037c0: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0x48>
1000037c4: 08 e5 3a 91 	add	x8, x8, #3769
1000037c8: e8 0f 00 f9 	str	x8, [sp, #24]
1000037cc: 1d 00 00 14 	b	0x100003840 <_Nature_vers_Chaine+0xc8>
1000037d0: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0x58>
1000037d4: 08 f9 3a 91 	add	x8, x8, #3774
1000037d8: e8 0f 00 f9 	str	x8, [sp, #24]
1000037dc: 19 00 00 14 	b	0x100003840 <_Nature_vers_Chaine+0xc8>
1000037e0: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0x68>
1000037e4: 08 11 3b 91 	add	x8, x8, #3780
1000037e8: e8 0f 00 f9 	str	x8, [sp, #24]
1000037ec: 15 00 00 14 	b	0x100003840 <_Nature_vers_Chaine+0xc8>
1000037f0: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0x78>
1000037f4: 08 21 3b 91 	add	x8, x8, #3784
1000037f8: e8 0f 00 f9 	str	x8, [sp, #24]
1000037fc: 11 00 00 14 	b	0x100003840 <_Nature_vers_Chaine+0xc8>
100003800: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0x88>
100003804: 08 45 3b 91 	add	x8, x8, #3793
100003808: e8 0f 00 f9 	str	x8, [sp, #24]
10000380c: 0d 00 00 14 	b	0x100003840 <_Nature_vers_Chaine+0xc8>
100003810: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0x98>
100003814: 08 59 3b 91 	add	x8, x8, #3798
100003818: e8 0f 00 f9 	str	x8, [sp, #24]
10000381c: 09 00 00 14 	b	0x100003840 <_Nature_vers_Chaine+0xc8>
100003820: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0xa8>
100003824: 08 6d 3b 91 	add	x8, x8, #3803
100003828: e8 0f 00 f9 	str	x8, [sp, #24]
10000382c: 05 00 00 14 	b	0x100003840 <_Nature_vers_Chaine+0xc8>
100003830: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0xb8>
100003834: 08 a1 3b 91 	add	x8, x8, #3816
100003838: e8 0f 00 f9 	str	x8, [sp, #24]
10000383c: 01 00 00 14 	b	0x100003840 <_Nature_vers_Chaine+0xc8>
100003840: e0 0f 40 f9 	ldr	x0, [sp, #24]
100003844: ff 83 00 91 	add	sp, sp, #32
100003848: c0 03 5f d6 	ret
10000384c: 10 00 00 00 	udf	#16
100003850: 20 00 00 00 	udf	#32
100003854: 30 00 00 00 	udf	#48
100003858: 40 00 00 00 	udf	#64
10000385c: 50 00 00 00 	udf	#80
100003860: 80 00 00 00 	udf	#128
100003864: 60 00 00 00 	udf	#96
100003868: 70 00 00 00 	udf	#112

000000010000386c <_afficher>:
10000386c: ff 83 00 d1 	sub	sp, sp, #32
100003870: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003874: fd 43 00 91 	add	x29, sp, #16
100003878: e0 07 00 f9 	str	x0, [sp, #8]
10000387c: 08 00 40 b9 	ldr	w8, [x0]
100003880: 08 15 00 71 	subs	w8, w8, #5
100003884: 61 00 00 54 	b.ne	0x100003890 <_afficher+0x24>
100003888: 01 00 00 14 	b	0x10000388c <_afficher+0x20>
10000388c: 35 00 00 14 	b	0x100003960 <_afficher+0xf4>
100003890: e8 07 40 f9 	ldr	x8, [sp, #8]
100003894: 09 05 40 b9 	ldr	w9, [x8, #4]
100003898: e8 03 09 aa 	mov	x8, x9
10000389c: e9 03 00 91 	mov	x9, sp
1000038a0: 28 01 00 f9 	str	x8, [x9]
1000038a4: 00 00 00 90 	adrp	x0, 0x100003000 <_afficher+0x38>
1000038a8: 00 bc 3b 91 	add	x0, x0, #3823
1000038ac: 6a 01 00 94 	bl	0x100003e54 <_strlen+0x100003e54>
1000038b0: e8 07 40 f9 	ldr	x8, [sp, #8]
1000038b4: 09 09 40 b9 	ldr	w9, [x8, #8]
1000038b8: e8 03 09 aa 	mov	x8, x9
1000038bc: e9 03 00 91 	mov	x9, sp
1000038c0: 28 01 00 f9 	str	x8, [x9]
1000038c4: 00 00 00 90 	adrp	x0, 0x100003000 <_afficher+0x58>
1000038c8: 00 ec 3b 91 	add	x0, x0, #3835
1000038cc: 62 01 00 94 	bl	0x100003e54 <_strlen+0x100003e54>
1000038d0: 00 00 00 90 	adrp	x0, 0x100003000 <_afficher+0x64>
1000038d4: 00 28 3c 91 	add	x0, x0, #3850
1000038d8: 5f 01 00 94 	bl	0x100003e54 <_strlen+0x100003e54>
1000038dc: e8 07 40 f9 	ldr	x8, [sp, #8]
1000038e0: 00 01 40 b9 	ldr	w0, [x8]
1000038e4: a5 ff ff 97 	bl	0x100003778 <_Nature_vers_Chaine>
1000038e8: e8 03 00 91 	mov	x8, sp
1000038ec: 00 01 00 f9 	str	x0, [x8]
1000038f0: 00 00 00 90 	adrp	x0, 0x100003000 <_afficher+0x84>
1000038f4: 00 30 3c 91 	add	x0, x0, #3852
1000038f8: 57 01 00 94 	bl	0x100003e54 <_strlen+0x100003e54>
1000038fc: e8 07 40 f9 	ldr	x8, [sp, #8]
100003900: 08 31 00 91 	add	x8, x8, #12
100003904: e9 03 00 91 	mov	x9, sp
100003908: 28 01 00 f9 	str	x8, [x9]
10000390c: 00 00 00 90 	adrp	x0, 0x100003000 <_afficher+0xa0>
100003910: 00 60 3c 91 	add	x0, x0, #3864
100003914: 50 01 00 94 	bl	0x100003e54 <_strlen+0x100003e54>
100003918: e8 07 40 f9 	ldr	x8, [sp, #8]
10000391c: 08 01 40 b9 	ldr	w8, [x8]
100003920: 68 01 00 35 	cbnz	w8, 0x10000394c <_afficher+0xe0>
100003924: 01 00 00 14 	b	0x100003928 <_afficher+0xbc>
100003928: e8 07 40 f9 	ldr	x8, [sp, #8]
10000392c: 09 0d 41 b9 	ldr	w9, [x8, #268]
100003930: e8 03 09 aa 	mov	x8, x9
100003934: e9 03 00 91 	mov	x9, sp
100003938: 28 01 00 f9 	str	x8, [x9]
10000393c: 00 00 00 90 	adrp	x0, 0x100003000 <_afficher+0xd0>
100003940: 00 a0 3c 91 	add	x0, x0, #3880
100003944: 44 01 00 94 	bl	0x100003e54 <_strlen+0x100003e54>
100003948: 01 00 00 14 	b	0x10000394c <_afficher+0xe0>
10000394c: 01 00 00 14 	b	0x100003950 <_afficher+0xe4>
100003950: 00 00 00 90 	adrp	x0, 0x100003000 <_afficher+0xe4>
100003954: 00 d0 3c 91 	add	x0, x0, #3892
100003958: 3f 01 00 94 	bl	0x100003e54 <_strlen+0x100003e54>
10000395c: 01 00 00 14 	b	0x100003960 <_afficher+0xf4>
100003960: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003964: ff 83 00 91 	add	sp, sp, #32
100003968: c0 03 5f d6 	ret

000000010000396c <_demarrer_car>:
10000396c: ff 83 00 d1 	sub	sp, sp, #32
100003970: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003974: fd 43 00 91 	add	x29, sp, #16
100003978: e0 07 00 f9 	str	x0, [sp, #8]
10000397c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003980: 38 01 00 94 	bl	0x100003e60 <_strlen+0x100003e60>
100003984: 20 01 00 b5 	cbnz	x0, 0x1000039a8 <_demarrer_car+0x3c>
100003988: 01 00 00 14 	b	0x10000398c <_demarrer_car+0x20>
10000398c: 08 00 00 b0 	adrp	x8, 0x100004000 <_demarrer_car+0x24>
100003990: 08 09 40 f9 	ldr	x8, [x8, #16]
100003994: 08 01 40 f9 	ldr	x8, [x8]
100003998: 29 00 00 b0 	adrp	x9, 0x100008000 <_demarrer_car+0x40>
10000399c: 29 61 04 91 	add	x9, x9, #280
1000039a0: 28 01 00 f9 	str	x8, [x9]
1000039a4: 09 00 00 14 	b	0x1000039c8 <_demarrer_car+0x5c>
1000039a8: e0 07 40 f9 	ldr	x0, [sp, #8]
1000039ac: 01 00 00 90 	adrp	x1, 0x100003000 <_demarrer_car+0x40>
1000039b0: 21 d8 3c 91 	add	x1, x1, #3894
1000039b4: 22 01 00 94 	bl	0x100003e3c <_strlen+0x100003e3c>
1000039b8: 28 00 00 b0 	adrp	x8, 0x100008000 <_demarrer_car+0x60>
1000039bc: 08 61 04 91 	add	x8, x8, #280
1000039c0: 00 01 00 f9 	str	x0, [x8]
1000039c4: 01 00 00 14 	b	0x1000039c8 <_demarrer_car+0x5c>
1000039c8: 29 00 00 b0 	adrp	x9, 0x100008000 <_demarrer_car+0x70>
1000039cc: 29 81 04 91 	add	x9, x9, #288
1000039d0: 28 00 80 52 	mov	w8, #1
1000039d4: 28 01 00 b9 	str	w8, [x9]
1000039d8: 28 00 00 b0 	adrp	x8, 0x100008000 <_demarrer_car+0x80>
1000039dc: 08 51 04 91 	add	x8, x8, #276
1000039e0: 1f 01 00 b9 	str	wzr, [x8]
1000039e4: 04 00 00 94 	bl	0x1000039f4 <_avancer_car>
1000039e8: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000039ec: ff 83 00 91 	add	sp, sp, #32
1000039f0: c0 03 5f d6 	ret

00000001000039f4 <_avancer_car>:
1000039f4: ff 83 00 d1 	sub	sp, sp, #32
1000039f8: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000039fc: fd 43 00 91 	add	x29, sp, #16
100003a00: 28 00 00 b0 	adrp	x8, 0x100008000 <_avancer_car+0x20>
100003a04: 08 41 04 91 	add	x8, x8, #272
100003a08: e8 03 00 f9 	str	x8, [sp]
100003a0c: 28 00 00 b0 	adrp	x8, 0x100008000 <_avancer_car+0x2c>
100003a10: 08 51 04 91 	add	x8, x8, #276
100003a14: e8 07 00 f9 	str	x8, [sp, #8]
100003a18: 28 00 00 b0 	adrp	x8, 0x100008000 <_avancer_car+0x38>
100003a1c: 08 61 04 91 	add	x8, x8, #280
100003a20: 00 01 40 f9 	ldr	x0, [x8]
100003a24: 00 01 00 94 	bl	0x100003e24 <_strlen+0x100003e24>
100003a28: 60 03 00 35 	cbnz	w0, 0x100003a94 <_avancer_car+0xa0>
100003a2c: 01 00 00 14 	b	0x100003a30 <_avancer_car+0x3c>
100003a30: 28 00 00 b0 	adrp	x8, 0x100008000 <_avancer_car+0x50>
100003a34: 08 61 04 91 	add	x8, x8, #280
100003a38: 00 01 40 f9 	ldr	x0, [x8]
100003a3c: fd 00 00 94 	bl	0x100003e30 <_strlen+0x100003e30>
100003a40: e8 03 40 f9 	ldr	x8, [sp]
100003a44: 00 01 00 b9 	str	w0, [x8]
100003a48: 08 01 40 b9 	ldr	w8, [x8]
100003a4c: 08 29 00 71 	subs	w8, w8, #10
100003a50: e0 00 00 54 	b.eq	0x100003a6c <_avancer_car+0x78>
100003a54: 01 00 00 14 	b	0x100003a58 <_avancer_car+0x64>
100003a58: e9 07 40 f9 	ldr	x9, [sp, #8]
100003a5c: 28 01 40 b9 	ldr	w8, [x9]
100003a60: 08 05 00 11 	add	w8, w8, #1
100003a64: 28 01 00 b9 	str	w8, [x9]
100003a68: 0a 00 00 14 	b	0x100003a90 <_avancer_car+0x9c>
100003a6c: e9 07 40 f9 	ldr	x9, [sp, #8]
100003a70: 28 00 80 52 	mov	w8, #1
100003a74: 28 01 00 b9 	str	w8, [x9]
100003a78: 29 00 00 b0 	adrp	x9, 0x100008000 <_avancer_car+0x98>
100003a7c: 29 81 04 91 	add	x9, x9, #288
100003a80: 28 01 40 b9 	ldr	w8, [x9]
100003a84: 08 05 00 11 	add	w8, w8, #1
100003a88: 28 01 00 b9 	str	w8, [x9]
100003a8c: 01 00 00 14 	b	0x100003a90 <_avancer_car+0x9c>
100003a90: 05 00 00 14 	b	0x100003aa4 <_avancer_car+0xb0>
100003a94: e9 03 40 f9 	ldr	x9, [sp]
100003a98: 08 00 80 12 	mov	w8, #-1
100003a9c: 28 01 00 b9 	str	w8, [x9]
100003aa0: 01 00 00 14 	b	0x100003aa4 <_avancer_car+0xb0>
100003aa4: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003aa8: ff 83 00 91 	add	sp, sp, #32
100003aac: c0 03 5f d6 	ret

0000000100003ab0 <_caractere_courant>:
100003ab0: 28 00 00 b0 	adrp	x8, 0x100008000 <_fin_de_sequence_car>
100003ab4: 08 41 04 91 	add	x8, x8, #272
100003ab8: 08 01 40 b9 	ldr	w8, [x8]
100003abc: 00 1d 00 13 	sxtb	w0, w8
100003ac0: c0 03 5f d6 	ret

0000000100003ac4 <_fin_de_sequence_car>:
100003ac4: 28 00 00 b0 	adrp	x8, 0x100008000 <_fin_de_sequence_car+0x14>
100003ac8: 08 41 04 91 	add	x8, x8, #272
100003acc: 08 01 40 b9 	ldr	w8, [x8]
100003ad0: 08 05 00 31 	adds	w8, w8, #1
100003ad4: e8 17 9f 1a 	cset	w8, eq
100003ad8: 00 01 00 12 	and	w0, w8, #0x1
100003adc: c0 03 5f d6 	ret

0000000100003ae0 <_numero_ligne>:
100003ae0: 28 00 00 b0 	adrp	x8, 0x100008000 <_numero_colonne+0x4>
100003ae4: 08 81 04 91 	add	x8, x8, #288
100003ae8: 00 01 40 b9 	ldr	w0, [x8]
100003aec: c0 03 5f d6 	ret

0000000100003af0 <_numero_colonne>:
100003af0: 28 00 00 b0 	adrp	x8, 0x100008000 <_arreter_car+0x4>
100003af4: 08 51 04 91 	add	x8, x8, #276
100003af8: 00 01 40 b9 	ldr	w0, [x8]
100003afc: c0 03 5f d6 	ret

0000000100003b00 <_arreter_car>:
100003b00: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100003b04: fd 03 00 91 	mov	x29, sp
100003b08: 28 00 00 b0 	adrp	x8, 0x100008000 <_arreter_car+0x1c>
100003b0c: 08 61 04 91 	add	x8, x8, #280
100003b10: 00 01 40 f9 	ldr	x0, [x8]
100003b14: c1 00 00 94 	bl	0x100003e18 <_strlen+0x100003e18>
100003b18: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100003b1c: c0 03 5f d6 	ret

0000000100003b20 <_rank>:
100003b20: ff 43 00 d1 	sub	sp, sp, #16
100003b24: e0 0b 00 b9 	str	w0, [sp, #8]
100003b28: e8 0b 40 b9 	ldr	w8, [sp, #8]
100003b2c: 08 05 00 71 	subs	w8, w8, #1
100003b30: e8 03 00 f9 	str	x8, [sp]
100003b34: 08 19 00 f1 	subs	x8, x8, #6
100003b38: 88 02 00 54 	b.hi	0x100003b88 <_rank+0x68>
100003b3c: eb 03 40 f9 	ldr	x11, [sp]
100003b40: 0a 00 00 90 	adrp	x10, 0x100003000 <_rank+0x20>
100003b44: 4a 71 2e 91 	add	x10, x10, #2972
100003b48: 08 00 00 10 	adr	x8, #0
100003b4c: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
100003b50: 08 01 09 8b 	add	x8, x8, x9
100003b54: 00 01 1f d6 	br	x8
100003b58: 48 00 80 52 	mov	w8, #2
100003b5c: e8 0f 00 b9 	str	w8, [sp, #12]
100003b60: 0c 00 00 14 	b	0x100003b90 <_rank+0x70>
100003b64: 68 00 80 52 	mov	w8, #3
100003b68: e8 0f 00 b9 	str	w8, [sp, #12]
100003b6c: 09 00 00 14 	b	0x100003b90 <_rank+0x70>
100003b70: 28 00 80 52 	mov	w8, #1
100003b74: e8 0f 00 b9 	str	w8, [sp, #12]
100003b78: 06 00 00 14 	b	0x100003b90 <_rank+0x70>
100003b7c: 88 00 80 52 	mov	w8, #4
100003b80: e8 0f 00 b9 	str	w8, [sp, #12]
100003b84: 03 00 00 14 	b	0x100003b90 <_rank+0x70>
100003b88: ff 0f 00 b9 	str	wzr, [sp, #12]
100003b8c: 01 00 00 14 	b	0x100003b90 <_rank+0x70>
100003b90: e0 0f 40 b9 	ldr	w0, [sp, #12]
100003b94: ff 43 00 91 	add	sp, sp, #16
100003b98: c0 03 5f d6 	ret
100003b9c: 10 00 00 00 	udf	#16
100003ba0: 10 00 00 00 	udf	#16
100003ba4: 1c 00 00 00 	udf	#28
100003ba8: 1c 00 00 00 	udf	#28
100003bac: 40 00 00 00 	udf	#64
100003bb0: 28 00 00 00 	udf	#40
100003bb4: 34 00 00 00 	udf	#52

0000000100003bb8 <_math>:
100003bb8: ff 83 00 d1 	sub	sp, sp, #32
100003bbc: e0 1b 00 b9 	str	w0, [sp, #24]
100003bc0: e1 17 00 b9 	str	w1, [sp, #20]
100003bc4: e2 13 00 b9 	str	w2, [sp, #16]
100003bc8: e8 13 40 b9 	ldr	w8, [sp, #16]
100003bcc: 08 05 00 71 	subs	w8, w8, #1
100003bd0: e8 07 00 f9 	str	x8, [sp, #8]
100003bd4: 08 0d 00 f1 	subs	x8, x8, #3
100003bd8: 88 03 00 54 	b.hi	0x100003c48 <_math+0x90>
100003bdc: eb 07 40 f9 	ldr	x11, [sp, #8]
100003be0: 0a 00 00 90 	adrp	x10, 0x100003000 <_math+0x28>
100003be4: 4a 71 31 91 	add	x10, x10, #3164
100003be8: 08 00 00 10 	adr	x8, #0
100003bec: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
100003bf0: 08 01 09 8b 	add	x8, x8, x9
100003bf4: 00 01 1f d6 	br	x8
100003bf8: e8 1b 40 b9 	ldr	w8, [sp, #24]
100003bfc: e9 17 40 b9 	ldr	w9, [sp, #20]
100003c00: 08 01 09 0b 	add	w8, w8, w9
100003c04: e8 1f 00 b9 	str	w8, [sp, #28]
100003c08: 12 00 00 14 	b	0x100003c50 <_math+0x98>
100003c0c: e8 1b 40 b9 	ldr	w8, [sp, #24]
100003c10: e9 17 40 b9 	ldr	w9, [sp, #20]
100003c14: 08 01 09 6b 	subs	w8, w8, w9
100003c18: e8 1f 00 b9 	str	w8, [sp, #28]
100003c1c: 0d 00 00 14 	b	0x100003c50 <_math+0x98>
100003c20: e8 1b 40 b9 	ldr	w8, [sp, #24]
100003c24: e9 17 40 b9 	ldr	w9, [sp, #20]
100003c28: 08 7d 09 1b 	mul	w8, w8, w9
100003c2c: e8 1f 00 b9 	str	w8, [sp, #28]
100003c30: 08 00 00 14 	b	0x100003c50 <_math+0x98>
100003c34: e8 1b 40 b9 	ldr	w8, [sp, #24]
100003c38: e9 17 40 b9 	ldr	w9, [sp, #20]
100003c3c: 08 0d c9 1a 	sdiv	w8, w8, w9
100003c40: e8 1f 00 b9 	str	w8, [sp, #28]
100003c44: 03 00 00 14 	b	0x100003c50 <_math+0x98>
100003c48: ff 1f 00 b9 	str	wzr, [sp, #28]
100003c4c: 01 00 00 14 	b	0x100003c50 <_math+0x98>
100003c50: e0 1f 40 b9 	ldr	w0, [sp, #28]
100003c54: ff 83 00 91 	add	sp, sp, #32
100003c58: c0 03 5f d6 	ret
100003c5c: 10 00 00 00 	udf	#16
100003c60: 24 00 00 00 	udf	#36
100003c64: 38 00 00 00 	udf	#56
100003c68: 4c 00 00 00 	udf	#76

0000000100003c6c <_analyser>:
100003c6c: fc 6f be a9 	stp	x28, x27, [sp, #-32]!
100003c70: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003c74: fd 43 00 91 	add	x29, sp, #16
100003c78: ff 43 09 d1 	sub	sp, sp, #592
100003c7c: 08 00 00 b0 	adrp	x8, 0x100004000 <_analyser+0x14>
100003c80: 08 05 40 f9 	ldr	x8, [x8, #8]
100003c84: 08 01 40 f9 	ldr	x8, [x8]
100003c88: a8 83 1e f8 	stur	x8, [x29, #-24]
100003c8c: e0 13 00 f9 	str	x0, [sp, #32]
100003c90: e1 0f 00 f9 	str	x1, [sp, #24]
100003c94: e0 13 40 f9 	ldr	x0, [sp, #32]
100003c98: 5d fd ff 97 	bl	0x10000320c <_demarrer>
100003c9c: e8 0f 40 f9 	ldr	x8, [sp, #24]
100003ca0: 1f 01 00 b9 	str	wzr, [x8]
100003ca4: e8 e3 04 91 	add	x8, sp, #312
100003ca8: 68 fd ff 97 	bl	0x100003248 <_lexeme_courant>
100003cac: e8 3b 41 b9 	ldr	w8, [sp, #312]
100003cb0: 08 19 00 71 	subs	w8, w8, #6
100003cb4: e1 00 00 54 	b.ne	0x100003cd0 <_analyser+0x64>
100003cb8: 01 00 00 14 	b	0x100003cbc <_analyser+0x50>
100003cbc: 5e fd ff 97 	bl	0x100003234 <_avancer>
100003cc0: e0 13 40 f9 	ldr	x0, [sp, #32]
100003cc4: e1 0f 40 f9 	ldr	x1, [sp, #24]
100003cc8: e9 ff ff 97 	bl	0x100003c6c <_analyser>
100003ccc: 0f 00 00 14 	b	0x100003d08 <_analyser+0x9c>
100003cd0: e8 3b 41 b9 	ldr	w8, [sp, #312]
100003cd4: e8 00 00 35 	cbnz	w8, 0x100003cf0 <_analyser+0x84>
100003cd8: 01 00 00 14 	b	0x100003cdc <_analyser+0x70>
100003cdc: e8 47 42 b9 	ldr	w8, [sp, #580]
100003ce0: e9 0f 40 f9 	ldr	x9, [sp, #24]
100003ce4: 28 01 00 b9 	str	w8, [x9]
100003ce8: 53 fd ff 97 	bl	0x100003234 <_avancer>
100003cec: 06 00 00 14 	b	0x100003d04 <_analyser+0x98>
100003cf0: 00 00 00 90 	adrp	x0, 0x100003000 <_analyser+0x84>
100003cf4: 00 e0 3c 91 	add	x0, x0, #3896
100003cf8: 57 00 00 94 	bl	0x100003e54 <_strlen+0x100003e54>
100003cfc: 20 00 80 52 	mov	w0, #1
100003d00: 43 00 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100003d04: 01 00 00 14 	b	0x100003d08 <_analyser+0x9c>
100003d08: 01 00 00 14 	b	0x100003d0c <_analyser+0xa0>
100003d0c: 58 fd ff 97 	bl	0x10000326c <_fin_de_sequence>
100003d10: 00 06 00 35 	cbnz	w0, 0x100003dd0 <_analyser+0x164>
100003d14: 01 00 00 14 	b	0x100003d18 <_analyser+0xac>
100003d18: e8 a3 00 91 	add	x8, sp, #40
100003d1c: e8 07 00 f9 	str	x8, [sp, #8]
100003d20: 4a fd ff 97 	bl	0x100003248 <_lexeme_courant>
100003d24: e1 07 40 f9 	ldr	x1, [sp, #8]
100003d28: e0 e3 04 91 	add	x0, sp, #312
100003d2c: 02 22 80 d2 	mov	x2, #272
100003d30: 46 00 00 94 	bl	0x100003e48 <_strlen+0x100003e48>
100003d34: e0 3b 41 b9 	ldr	w0, [sp, #312]
100003d38: 7a ff ff 97 	bl	0x100003b20 <_rank>
100003d3c: e0 17 00 b9 	str	w0, [sp, #20]
100003d40: 08 08 00 71 	subs	w8, w0, #2
100003d44: 08 05 00 71 	subs	w8, w8, #1
100003d48: c9 00 00 54 	b.ls	0x100003d60 <_analyser+0xf4>
100003d4c: 01 00 00 14 	b	0x100003d50 <_analyser+0xe4>
100003d50: e8 17 40 b9 	ldr	w8, [sp, #20]
100003d54: 08 11 00 71 	subs	w8, w8, #4
100003d58: c0 02 00 54 	b.eq	0x100003db0 <_analyser+0x144>
100003d5c: 17 00 00 14 	b	0x100003db8 <_analyser+0x14c>
100003d60: 35 fd ff 97 	bl	0x100003234 <_avancer>
100003d64: e0 13 40 f9 	ldr	x0, [sp, #32]
100003d68: e1 0f 40 f9 	ldr	x1, [sp, #24]
100003d6c: c0 ff ff 97 	bl	0x100003c6c <_analyser>
100003d70: e8 0f 40 f9 	ldr	x8, [sp, #24]
100003d74: 00 01 40 b9 	ldr	w0, [x8]
100003d78: e1 47 42 b9 	ldr	w1, [sp, #580]
100003d7c: e2 3b 41 b9 	ldr	w2, [sp, #312]
100003d80: 8e ff ff 97 	bl	0x100003bb8 <_math>
100003d84: e8 0f 40 f9 	ldr	x8, [sp, #24]
100003d88: 00 01 00 b9 	str	w0, [x8]
100003d8c: e8 0f 40 f9 	ldr	x8, [sp, #24]
100003d90: 09 01 40 b9 	ldr	w9, [x8]
100003d94: e8 03 09 aa 	mov	x8, x9
100003d98: e9 03 00 91 	mov	x9, sp
100003d9c: 28 01 00 f9 	str	x8, [x9]
100003da0: 00 00 00 90 	adrp	x0, 0x100003000 <_analyser+0x134>
100003da4: 00 30 3d 91 	add	x0, x0, #3916
100003da8: 2b 00 00 94 	bl	0x100003e54 <_strlen+0x100003e54>
100003dac: 08 00 00 14 	b	0x100003dcc <_analyser+0x160>
100003db0: 21 fd ff 97 	bl	0x100003234 <_avancer>
100003db4: 06 00 00 14 	b	0x100003dcc <_analyser+0x160>
100003db8: 00 00 00 90 	adrp	x0, 0x100003000 <_analyser+0x14c>
100003dbc: 00 e0 3c 91 	add	x0, x0, #3896
100003dc0: 25 00 00 94 	bl	0x100003e54 <_strlen+0x100003e54>
100003dc4: 20 00 80 52 	mov	w0, #1
100003dc8: 11 00 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100003dcc: d0 ff ff 17 	b	0x100003d0c <_analyser+0xa0>
100003dd0: a9 83 5e f8 	ldur	x9, [x29, #-24]
100003dd4: 08 00 00 b0 	adrp	x8, 0x100004000 <_analyser+0x16c>
100003dd8: 08 05 40 f9 	ldr	x8, [x8, #8]
100003ddc: 08 01 40 f9 	ldr	x8, [x8]
100003de0: 08 01 09 eb 	subs	x8, x8, x9
100003de4: 60 00 00 54 	b.eq	0x100003df0 <_analyser+0x184>
100003de8: 01 00 00 14 	b	0x100003dec <_analyser+0x180>
100003dec: 05 00 00 94 	bl	0x100003e00 <_strlen+0x100003e00>
100003df0: ff 43 09 91 	add	sp, sp, #592
100003df4: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003df8: fc 6f c2 a8 	ldp	x28, x27, [sp], #32
100003dfc: c0 03 5f d6 	ret

Disassembly of section __TEXT,__stubs:

0000000100003e00 <__stubs>:
100003e00: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4>
100003e04: 10 02 40 f9 	ldr	x16, [x16]
100003e08: 00 02 1f d6 	br	x16
100003e0c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x10>
100003e10: 10 0e 40 f9 	ldr	x16, [x16, #24]
100003e14: 00 02 1f d6 	br	x16
100003e18: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x1c>
100003e1c: 10 12 40 f9 	ldr	x16, [x16, #32]
100003e20: 00 02 1f d6 	br	x16
100003e24: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x28>
100003e28: 10 16 40 f9 	ldr	x16, [x16, #40]
100003e2c: 00 02 1f d6 	br	x16
100003e30: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x34>
100003e34: 10 1a 40 f9 	ldr	x16, [x16, #48]
100003e38: 00 02 1f d6 	br	x16
100003e3c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x40>
100003e40: 10 1e 40 f9 	ldr	x16, [x16, #56]
100003e44: 00 02 1f d6 	br	x16
100003e48: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4c>
100003e4c: 10 22 40 f9 	ldr	x16, [x16, #64]
100003e50: 00 02 1f d6 	br	x16
100003e54: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x58>
100003e58: 10 26 40 f9 	ldr	x16, [x16, #72]
100003e5c: 00 02 1f d6 	br	x16
100003e60: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x64>
100003e64: 10 2a 40 f9 	ldr	x16, [x16, #80]
100003e68: 00 02 1f d6 	br	x16
