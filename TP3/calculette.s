
calculette:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000100002e18 <_main>:
100002e18: ff c3 00 d1 	sub	sp, sp, #48
100002e1c: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002e20: fd 83 00 91 	add	x29, sp, #32
100002e24: bf c3 1f b8 	stur	wzr, [x29, #-4]
100002e28: a0 83 1f b8 	stur	w0, [x29, #-8]
100002e2c: e1 0b 00 f9 	str	x1, [sp, #16]
100002e30: 28 00 80 52 	mov	w8, #1
100002e34: e8 0b 00 b9 	str	w8, [sp, #8]
100002e38: a8 83 5f b8 	ldur	w8, [x29, #-8]
100002e3c: 08 09 00 71 	subs	w8, w8, #2
100002e40: 60 01 00 54 	b.eq	0x100002e6c <_main+0x54>
100002e44: 01 00 00 14 	b	0x100002e48 <_main+0x30>
100002e48: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002e4c: 08 01 40 f9 	ldr	x8, [x8]
100002e50: e9 03 00 91 	mov	x9, sp
100002e54: 28 01 00 f9 	str	x8, [x9]
100002e58: 00 00 00 b0 	adrp	x0, 0x100003000 <_main+0x44>
100002e5c: 00 90 38 91 	add	x0, x0, #3620
100002e60: eb 03 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100002e64: 20 00 80 52 	mov	w0, #1
100002e68: d7 03 00 94 	bl	0x100003dc4 <_strlen+0x100003dc4>
100002e6c: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002e70: 00 05 40 f9 	ldr	x0, [x8, #8]
100002e74: e1 33 00 91 	add	x1, sp, #12
100002e78: e2 23 00 91 	add	x2, sp, #8
100002e7c: b8 02 00 94 	bl	0x10000395c <_analyser>
100002e80: e9 0f 40 b9 	ldr	w9, [sp, #12]
100002e84: e8 03 09 aa 	mov	x8, x9
100002e88: e9 03 00 91 	mov	x9, sp
100002e8c: 28 01 00 f9 	str	x8, [x9]
100002e90: 00 00 00 b0 	adrp	x0, 0x100003000 <_main+0x7c>
100002e94: 00 e4 38 91 	add	x0, x0, #3641
100002e98: dd 03 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100002e9c: 00 00 80 52 	mov	w0, #0
100002ea0: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100002ea4: ff c3 00 91 	add	sp, sp, #48
100002ea8: c0 03 5f d6 	ret

0000000100002eac <_demarrer>:
100002eac: ff 83 00 d1 	sub	sp, sp, #32
100002eb0: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002eb4: fd 43 00 91 	add	x29, sp, #16
100002eb8: e0 07 00 f9 	str	x0, [sp, #8]
100002ebc: e0 07 40 f9 	ldr	x0, [sp, #8]
100002ec0: e7 01 00 94 	bl	0x10000365c <_demarrer_car>
100002ec4: 04 00 00 94 	bl	0x100002ed4 <_avancer>
100002ec8: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002ecc: ff 83 00 91 	add	sp, sp, #32
100002ed0: c0 03 5f d6 	ret

0000000100002ed4 <_avancer>:
100002ed4: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100002ed8: fd 03 00 91 	mov	x29, sp
100002edc: 18 00 00 94 	bl	0x100002f3c <_reconnaitre_lexeme>
100002ee0: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100002ee4: c0 03 5f d6 	ret

0000000100002ee8 <_lexeme_courant>:
100002ee8: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100002eec: fd 03 00 91 	mov	x29, sp
100002ef0: e0 03 08 aa 	mov	x0, x8
100002ef4: 21 00 00 d0 	adrp	x1, 0x100008000 <_fin_de_sequence>
100002ef8: 21 00 00 91 	add	x1, x1, #0
100002efc: 02 22 80 d2 	mov	x2, #272
100002f00: c0 03 00 94 	bl	0x100003e00 <_strlen+0x100003e00>
100002f04: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100002f08: c0 03 5f d6 	ret

0000000100002f0c <_fin_de_sequence>:
100002f0c: 28 00 00 d0 	adrp	x8, 0x100008000 <_fin_de_sequence+0x18>
100002f10: 08 01 00 91 	add	x8, x8, #0
100002f14: 08 01 40 b9 	ldr	w8, [x8]
100002f18: 08 15 00 71 	subs	w8, w8, #5
100002f1c: e8 17 9f 1a 	cset	w8, eq
100002f20: 00 01 00 12 	and	w0, w8, #0x1
100002f24: c0 03 5f d6 	ret

0000000100002f28 <_arreter>:
100002f28: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100002f2c: fd 03 00 91 	mov	x29, sp
100002f30: 30 02 00 94 	bl	0x1000037f0 <_arreter_car>
100002f34: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100002f38: c0 03 5f d6 	ret

0000000100002f3c <_reconnaitre_lexeme>:
100002f3c: ff 83 01 d1 	sub	sp, sp, #96
100002f40: fd 7b 05 a9 	stp	x29, x30, [sp, #80]
100002f44: fd 43 01 91 	add	x29, sp, #80
100002f48: 28 00 00 d0 	adrp	x8, 0x100008000 <_reconnaitre_lexeme+0x24>
100002f4c: 08 01 00 91 	add	x8, x8, #0
100002f50: a8 83 1e f8 	stur	x8, [x29, #-24]
100002f54: 08 31 00 91 	add	x8, x8, #12
100002f58: a8 03 1f f8 	stur	x8, [x29, #-16]
100002f5c: bf c3 1f b8 	stur	wzr, [x29, #-4]
100002f60: 01 00 00 14 	b	0x100002f64 <_reconnaitre_lexeme+0x28>
100002f64: 0f 02 00 94 	bl	0x1000037a0 <_caractere_courant>
100002f68: 00 1c 00 13 	sxtb	w0, w0
100002f6c: ca 00 00 94 	bl	0x100003294 <_est_separateur>
100002f70: 80 00 00 34 	cbz	w0, 0x100002f80 <_reconnaitre_lexeme+0x44>
100002f74: 01 00 00 14 	b	0x100002f78 <_reconnaitre_lexeme+0x3c>
100002f78: db 01 00 94 	bl	0x1000036e4 <_avancer_car>
100002f7c: fa ff ff 17 	b	0x100002f64 <_reconnaitre_lexeme+0x28>
100002f80: a8 83 5e f8 	ldur	x8, [x29, #-24]
100002f84: 1f 31 00 39 	strb	wzr, [x8, #12]
100002f88: 01 00 00 14 	b	0x100002f8c <_reconnaitre_lexeme+0x50>
100002f8c: a8 c3 5f b8 	ldur	w8, [x29, #-4]
100002f90: 08 09 00 71 	subs	w8, w8, #2
100002f94: 20 16 00 54 	b.eq	0x100003258 <_reconnaitre_lexeme+0x31c>
100002f98: 01 00 00 14 	b	0x100002f9c <_reconnaitre_lexeme+0x60>
100002f9c: a8 c3 5f b8 	ldur	w8, [x29, #-4]
100002fa0: a8 43 1e b8 	stur	w8, [x29, #-28]
100002fa4: 48 01 00 34 	cbz	w8, 0x100002fcc <_reconnaitre_lexeme+0x90>
100002fa8: 01 00 00 14 	b	0x100002fac <_reconnaitre_lexeme+0x70>
100002fac: a8 43 5e b8 	ldur	w8, [x29, #-28]
100002fb0: 08 05 00 71 	subs	w8, w8, #1
100002fb4: 20 11 00 54 	b.eq	0x1000031d8 <_reconnaitre_lexeme+0x29c>
100002fb8: 01 00 00 14 	b	0x100002fbc <_reconnaitre_lexeme+0x80>
100002fbc: a8 43 5e b8 	ldur	w8, [x29, #-28]
100002fc0: 08 09 00 71 	subs	w8, w8, #2
100002fc4: 60 14 00 54 	b.eq	0x100003250 <_reconnaitre_lexeme+0x314>
100002fc8: a3 00 00 14 	b	0x100003254 <_reconnaitre_lexeme+0x318>
100002fcc: f5 01 00 94 	bl	0x1000037a0 <_caractere_courant>
100002fd0: 00 1c 00 13 	sxtb	w0, w0
100002fd4: c7 00 00 94 	bl	0x1000032f0 <_nature_caractere>
100002fd8: 08 00 00 71 	subs	w8, w0, #0
100002fdc: e8 17 00 f9 	str	x8, [sp, #40]
100002fe0: 08 0d 00 f1 	subs	x8, x8, #3
100002fe4: e8 0e 00 54 	b.hi	0x1000031c0 <_reconnaitre_lexeme+0x284>
100002fe8: eb 17 40 f9 	ldr	x11, [sp, #40]
100002fec: 0a 00 00 b0 	adrp	x10, 0x100003000 <_reconnaitre_lexeme+0xb4>
100002ff0: 4a 91 09 91 	add	x10, x10, #612
100002ff4: 08 00 00 10 	adr	x8, #0
100002ff8: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
100002ffc: 08 01 09 8b 	add	x8, x8, x9
100003000: 00 01 1f d6 	br	x8
100003004: a9 83 5e f8 	ldur	x9, [x29, #-24]
100003008: a8 00 80 52 	mov	w8, #5
10000300c: 28 01 00 b9 	str	w8, [x9]
100003010: 48 00 80 52 	mov	w8, #2
100003014: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003018: 6f 00 00 14 	b	0x1000031d4 <_reconnaitre_lexeme+0x298>
10000301c: a8 83 5e f8 	ldur	x8, [x29, #-24]
100003020: 1f 01 00 b9 	str	wzr, [x8]
100003024: eb 01 00 94 	bl	0x1000037d0 <_numero_ligne>
100003028: a8 83 5e f8 	ldur	x8, [x29, #-24]
10000302c: 00 05 00 b9 	str	w0, [x8, #4]
100003030: ec 01 00 94 	bl	0x1000037e0 <_numero_colonne>
100003034: a8 83 5e f8 	ldur	x8, [x29, #-24]
100003038: 00 09 00 b9 	str	w0, [x8, #8]
10000303c: d9 01 00 94 	bl	0x1000037a0 <_caractere_courant>
100003040: e8 03 00 aa 	mov	x8, x0
100003044: a0 03 5f f8 	ldur	x0, [x29, #-16]
100003048: 01 1d 00 13 	sxtb	w1, w8
10000304c: c8 00 00 94 	bl	0x10000336c <_ajouter_caractere>
100003050: d4 01 00 94 	bl	0x1000037a0 <_caractere_courant>
100003054: a9 83 5e f8 	ldur	x9, [x29, #-24]
100003058: 08 1c 00 13 	sxtb	w8, w0
10000305c: 08 c1 00 71 	subs	w8, w8, #48
100003060: 28 0d 01 b9 	str	w8, [x9, #268]
100003064: 28 00 80 52 	mov	w8, #1
100003068: a8 c3 1f b8 	stur	w8, [x29, #-4]
10000306c: 9e 01 00 94 	bl	0x1000036e4 <_avancer_car>
100003070: 59 00 00 14 	b	0x1000031d4 <_reconnaitre_lexeme+0x298>
100003074: d7 01 00 94 	bl	0x1000037d0 <_numero_ligne>
100003078: a8 83 5e f8 	ldur	x8, [x29, #-24]
10000307c: 00 05 00 b9 	str	w0, [x8, #4]
100003080: d8 01 00 94 	bl	0x1000037e0 <_numero_colonne>
100003084: a8 83 5e f8 	ldur	x8, [x29, #-24]
100003088: 00 09 00 b9 	str	w0, [x8, #8]
10000308c: c5 01 00 94 	bl	0x1000037a0 <_caractere_courant>
100003090: e8 03 00 aa 	mov	x8, x0
100003094: a0 03 5f f8 	ldur	x0, [x29, #-16]
100003098: 01 1d 00 13 	sxtb	w1, w8
10000309c: b4 00 00 94 	bl	0x10000336c <_ajouter_caractere>
1000030a0: c0 01 00 94 	bl	0x1000037a0 <_caractere_courant>
1000030a4: 08 1c 00 13 	sxtb	w8, w0
1000030a8: 08 a1 00 71 	subs	w8, w8, #40
1000030ac: e8 13 00 f9 	str	x8, [sp, #32]
1000030b0: 08 1d 00 f1 	subs	x8, x8, #7
1000030b4: 68 05 00 54 	b.hi	0x100003160 <_reconnaitre_lexeme+0x224>
1000030b8: eb 13 40 f9 	ldr	x11, [sp, #32]
1000030bc: 0a 00 00 90 	adrp	x10, 0x100003000 <_reconnaitre_lexeme+0x180>
1000030c0: 4a d1 09 91 	add	x10, x10, #628
1000030c4: 08 00 00 10 	adr	x8, #0
1000030c8: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
1000030cc: 08 01 09 8b 	add	x8, x8, x9
1000030d0: 00 01 1f d6 	br	x8
1000030d4: a9 83 5e f8 	ldur	x9, [x29, #-24]
1000030d8: 28 00 80 52 	mov	w8, #1
1000030dc: 28 01 00 b9 	str	w8, [x9]
1000030e0: 48 00 80 52 	mov	w8, #2
1000030e4: a8 c3 1f b8 	stur	w8, [x29, #-4]
1000030e8: 23 00 00 14 	b	0x100003174 <_reconnaitre_lexeme+0x238>
1000030ec: a9 83 5e f8 	ldur	x9, [x29, #-24]
1000030f0: 48 00 80 52 	mov	w8, #2
1000030f4: 28 01 00 b9 	str	w8, [x9]
1000030f8: a8 c3 1f b8 	stur	w8, [x29, #-4]
1000030fc: 1e 00 00 14 	b	0x100003174 <_reconnaitre_lexeme+0x238>
100003100: a9 83 5e f8 	ldur	x9, [x29, #-24]
100003104: 68 00 80 52 	mov	w8, #3
100003108: 28 01 00 b9 	str	w8, [x9]
10000310c: 48 00 80 52 	mov	w8, #2
100003110: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003114: 18 00 00 14 	b	0x100003174 <_reconnaitre_lexeme+0x238>
100003118: a9 83 5e f8 	ldur	x9, [x29, #-24]
10000311c: 88 00 80 52 	mov	w8, #4
100003120: 28 01 00 b9 	str	w8, [x9]
100003124: 48 00 80 52 	mov	w8, #2
100003128: a8 c3 1f b8 	stur	w8, [x29, #-4]
10000312c: 12 00 00 14 	b	0x100003174 <_reconnaitre_lexeme+0x238>
100003130: a9 83 5e f8 	ldur	x9, [x29, #-24]
100003134: c8 00 80 52 	mov	w8, #6
100003138: 28 01 00 b9 	str	w8, [x9]
10000313c: 48 00 80 52 	mov	w8, #2
100003140: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003144: 0c 00 00 14 	b	0x100003174 <_reconnaitre_lexeme+0x238>
100003148: a9 83 5e f8 	ldur	x9, [x29, #-24]
10000314c: e8 00 80 52 	mov	w8, #7
100003150: 28 01 00 b9 	str	w8, [x9]
100003154: 48 00 80 52 	mov	w8, #2
100003158: a8 c3 1f b8 	stur	w8, [x29, #-4]
10000315c: 06 00 00 14 	b	0x100003174 <_reconnaitre_lexeme+0x238>
100003160: 00 00 00 90 	adrp	x0, 0x100003000 <_reconnaitre_lexeme+0x224>
100003164: 00 24 39 91 	add	x0, x0, #3657
100003168: 29 03 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
10000316c: 00 00 80 52 	mov	w0, #0
100003170: 15 03 00 94 	bl	0x100003dc4 <_strlen+0x100003dc4>
100003174: 5c 01 00 94 	bl	0x1000036e4 <_avancer_car>
100003178: 17 00 00 14 	b	0x1000031d4 <_reconnaitre_lexeme+0x298>
10000317c: 00 00 00 90 	adrp	x0, 0x100003000 <_reconnaitre_lexeme+0x240>
100003180: 00 6c 39 91 	add	x0, x0, #3675
100003184: 22 03 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100003188: 92 01 00 94 	bl	0x1000037d0 <_numero_ligne>
10000318c: e0 1f 00 b9 	str	w0, [sp, #28]
100003190: 94 01 00 94 	bl	0x1000037e0 <_numero_colonne>
100003194: ea 1f 40 b9 	ldr	w10, [sp, #28]
100003198: e9 03 00 91 	mov	x9, sp
10000319c: e8 03 0a aa 	mov	x8, x10
1000031a0: 28 01 00 f9 	str	x8, [x9]
1000031a4: e8 03 00 aa 	mov	x8, x0
1000031a8: 28 05 00 f9 	str	x8, [x9, #8]
1000031ac: 00 00 00 90 	adrp	x0, 0x100003000 <_reconnaitre_lexeme+0x270>
1000031b0: 00 b4 39 91 	add	x0, x0, #3693
1000031b4: 16 03 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
1000031b8: 00 00 80 52 	mov	w0, #0
1000031bc: 02 03 00 94 	bl	0x100003dc4 <_strlen+0x100003dc4>
1000031c0: 00 00 00 90 	adrp	x0, 0x100003000 <_reconnaitre_lexeme+0x284>
1000031c4: 00 0c 3a 91 	add	x0, x0, #3715
1000031c8: 11 03 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
1000031cc: 00 00 80 52 	mov	w0, #0
1000031d0: fd 02 00 94 	bl	0x100003dc4 <_strlen+0x100003dc4>
1000031d4: 20 00 00 14 	b	0x100003254 <_reconnaitre_lexeme+0x318>
1000031d8: 72 01 00 94 	bl	0x1000037a0 <_caractere_courant>
1000031dc: 00 1c 00 13 	sxtb	w0, w0
1000031e0: 44 00 00 94 	bl	0x1000032f0 <_nature_caractere>
1000031e4: 08 04 00 71 	subs	w8, w0, #1
1000031e8: c1 02 00 54 	b.ne	0x100003240 <_reconnaitre_lexeme+0x304>
1000031ec: 01 00 00 14 	b	0x1000031f0 <_reconnaitre_lexeme+0x2b4>
1000031f0: 6c 01 00 94 	bl	0x1000037a0 <_caractere_courant>
1000031f4: e8 03 00 aa 	mov	x8, x0
1000031f8: a0 03 5f f8 	ldur	x0, [x29, #-16]
1000031fc: 01 1d 00 13 	sxtb	w1, w8
100003200: 5b 00 00 94 	bl	0x10000336c <_ajouter_caractere>
100003204: a8 83 5e f8 	ldur	x8, [x29, #-24]
100003208: 08 0d 41 b9 	ldr	w8, [x8, #268]
10000320c: 49 01 80 52 	mov	w9, #10
100003210: 08 7d 09 1b 	mul	w8, w8, w9
100003214: e8 1b 00 b9 	str	w8, [sp, #24]
100003218: 62 01 00 94 	bl	0x1000037a0 <_caractere_courant>
10000321c: e8 1b 40 b9 	ldr	w8, [sp, #24]
100003220: a9 83 5e f8 	ldur	x9, [x29, #-24]
100003224: 08 81 20 0b 	add	w8, w8, w0, sxtb
100003228: 08 c1 00 71 	subs	w8, w8, #48
10000322c: 28 0d 01 b9 	str	w8, [x9, #268]
100003230: 28 00 80 52 	mov	w8, #1
100003234: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003238: 2b 01 00 94 	bl	0x1000036e4 <_avancer_car>
10000323c: 04 00 00 14 	b	0x10000324c <_reconnaitre_lexeme+0x310>
100003240: 48 00 80 52 	mov	w8, #2
100003244: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003248: 01 00 00 14 	b	0x10000324c <_reconnaitre_lexeme+0x310>
10000324c: 01 00 00 14 	b	0x100003250 <_reconnaitre_lexeme+0x314>
100003250: 01 00 00 14 	b	0x100003254 <_reconnaitre_lexeme+0x318>
100003254: 4e ff ff 17 	b	0x100002f8c <_reconnaitre_lexeme+0x50>
100003258: fd 7b 45 a9 	ldp	x29, x30, [sp, #80]
10000325c: ff 83 01 91 	add	sp, sp, #96
100003260: c0 03 5f d6 	ret
100003264: 88 01 00 00 	udf	#392
100003268: 28 00 00 00 	udf	#40
10000326c: 80 00 00 00 	udf	#128
100003270: 10 00 00 00 	udf	#16
100003274: 6c 00 00 00 	udf	#108
100003278: 84 00 00 00 	udf	#132
10000327c: 3c 00 00 00 	udf	#60
100003280: 10 00 00 00 	udf	#16
100003284: 9c 00 00 00 	udf	#156
100003288: 28 00 00 00 	udf	#40
10000328c: 9c 00 00 00 	udf	#156
100003290: 54 00 00 00 	udf	#84

0000000100003294 <_est_separateur>:
100003294: ff 43 00 d1 	sub	sp, sp, #16
100003298: e0 3f 00 39 	strb	w0, [sp, #15]
10000329c: e9 3f c0 39 	ldrsb	w9, [sp, #15]
1000032a0: 28 00 80 52 	mov	w8, #1
1000032a4: 29 81 00 71 	subs	w9, w9, #32
1000032a8: e8 0b 00 b9 	str	w8, [sp, #8]
1000032ac: a0 01 00 54 	b.eq	0x1000032e0 <_est_separateur+0x4c>
1000032b0: 01 00 00 14 	b	0x1000032b4 <_est_separateur+0x20>
1000032b4: e9 3f c0 39 	ldrsb	w9, [sp, #15]
1000032b8: 28 00 80 52 	mov	w8, #1
1000032bc: 29 25 00 71 	subs	w9, w9, #9
1000032c0: e8 0b 00 b9 	str	w8, [sp, #8]
1000032c4: e0 00 00 54 	b.eq	0x1000032e0 <_est_separateur+0x4c>
1000032c8: 01 00 00 14 	b	0x1000032cc <_est_separateur+0x38>
1000032cc: e8 3f c0 39 	ldrsb	w8, [sp, #15]
1000032d0: 08 29 00 71 	subs	w8, w8, #10
1000032d4: e8 17 9f 1a 	cset	w8, eq
1000032d8: e8 0b 00 b9 	str	w8, [sp, #8]
1000032dc: 01 00 00 14 	b	0x1000032e0 <_est_separateur+0x4c>
1000032e0: e8 0b 40 b9 	ldr	w8, [sp, #8]
1000032e4: 00 01 00 12 	and	w0, w8, #0x1
1000032e8: ff 43 00 91 	add	sp, sp, #16
1000032ec: c0 03 5f d6 	ret

00000001000032f0 <_nature_caractere>:
1000032f0: ff 83 00 d1 	sub	sp, sp, #32
1000032f4: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000032f8: fd 43 00 91 	add	x29, sp, #16
1000032fc: a0 b3 1f 38 	sturb	w0, [x29, #-5]
100003300: a0 b3 df 38 	ldursb	w0, [x29, #-5]
100003304: 2c 01 00 94 	bl	0x1000037b4 <_fin_de_sequence_car>
100003308: a0 00 00 34 	cbz	w0, 0x10000331c <_nature_caractere+0x2c>
10000330c: 01 00 00 14 	b	0x100003310 <_nature_caractere+0x20>
100003310: 68 00 80 52 	mov	w8, #3
100003314: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003318: 11 00 00 14 	b	0x10000335c <_nature_caractere+0x6c>
10000331c: a0 b3 df 38 	ldursb	w0, [x29, #-5]
100003320: 29 00 00 94 	bl	0x1000033c4 <_est_chiffre>
100003324: a0 00 00 34 	cbz	w0, 0x100003338 <_nature_caractere+0x48>
100003328: 01 00 00 14 	b	0x10000332c <_nature_caractere+0x3c>
10000332c: 28 00 80 52 	mov	w8, #1
100003330: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003334: 0a 00 00 14 	b	0x10000335c <_nature_caractere+0x6c>
100003338: a0 b3 df 38 	ldursb	w0, [x29, #-5]
10000333c: 33 00 00 94 	bl	0x100003408 <_est_symbole>
100003340: a0 00 00 34 	cbz	w0, 0x100003354 <_nature_caractere+0x64>
100003344: 01 00 00 14 	b	0x100003348 <_nature_caractere+0x58>
100003348: 48 00 80 52 	mov	w8, #2
10000334c: a8 c3 1f b8 	stur	w8, [x29, #-4]
100003350: 03 00 00 14 	b	0x10000335c <_nature_caractere+0x6c>
100003354: bf c3 1f b8 	stur	wzr, [x29, #-4]
100003358: 01 00 00 14 	b	0x10000335c <_nature_caractere+0x6c>
10000335c: a0 c3 5f b8 	ldur	w0, [x29, #-4]
100003360: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003364: ff 83 00 91 	add	sp, sp, #32
100003368: c0 03 5f d6 	ret

000000010000336c <_ajouter_caractere>:
10000336c: ff 83 00 d1 	sub	sp, sp, #32
100003370: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003374: fd 43 00 91 	add	x29, sp, #16
100003378: e0 07 00 f9 	str	x0, [sp, #8]
10000337c: e1 1f 00 39 	strb	w1, [sp, #7]
100003380: e0 07 40 f9 	ldr	x0, [sp, #8]
100003384: a5 02 00 94 	bl	0x100003e18 <_strlen+0x100003e18>
100003388: e8 03 00 aa 	mov	x8, x0
10000338c: e8 03 00 b9 	str	w8, [sp]
100003390: e8 1f 40 39 	ldrb	w8, [sp, #7]
100003394: e9 07 40 f9 	ldr	x9, [sp, #8]
100003398: ea 03 80 b9 	ldrsw	x10, [sp]
10000339c: 29 01 0a 8b 	add	x9, x9, x10
1000033a0: 28 01 00 39 	strb	w8, [x9]
1000033a4: e8 07 40 f9 	ldr	x8, [sp, #8]
1000033a8: e9 03 40 b9 	ldr	w9, [sp]
1000033ac: 29 05 00 11 	add	w9, w9, #1
1000033b0: 08 c1 29 8b 	add	x8, x8, w9, sxtw
1000033b4: 1f 01 00 39 	strb	wzr, [x8]
1000033b8: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000033bc: ff 83 00 91 	add	sp, sp, #32
1000033c0: c0 03 5f d6 	ret

00000001000033c4 <_est_chiffre>:
1000033c4: ff 43 00 d1 	sub	sp, sp, #16
1000033c8: e0 3f 00 39 	strb	w0, [sp, #15]
1000033cc: e9 3f c0 39 	ldrsb	w9, [sp, #15]
1000033d0: 08 00 80 52 	mov	w8, #0
1000033d4: 29 c1 00 71 	subs	w9, w9, #48
1000033d8: e8 0b 00 b9 	str	w8, [sp, #8]
1000033dc: eb 00 00 54 	b.lt	0x1000033f8 <_est_chiffre+0x34>
1000033e0: 01 00 00 14 	b	0x1000033e4 <_est_chiffre+0x20>
1000033e4: e8 3f c0 39 	ldrsb	w8, [sp, #15]
1000033e8: 08 e5 00 71 	subs	w8, w8, #57
1000033ec: e8 c7 9f 1a 	cset	w8, le
1000033f0: e8 0b 00 b9 	str	w8, [sp, #8]
1000033f4: 01 00 00 14 	b	0x1000033f8 <_est_chiffre+0x34>
1000033f8: e8 0b 40 b9 	ldr	w8, [sp, #8]
1000033fc: 00 01 00 12 	and	w0, w8, #0x1
100003400: ff 43 00 91 	add	sp, sp, #16
100003404: c0 03 5f d6 	ret

0000000100003408 <_est_symbole>:
100003408: ff 43 00 d1 	sub	sp, sp, #16
10000340c: e0 2f 00 39 	strb	w0, [sp, #11]
100003410: e8 2f c0 39 	ldrsb	w8, [sp, #11]
100003414: e8 07 00 b9 	str	w8, [sp, #4]
100003418: 08 a1 00 71 	subs	w8, w8, #40
10000341c: 08 0d 00 71 	subs	w8, w8, #3
100003420: 49 01 00 54 	b.ls	0x100003448 <_est_symbole+0x40>
100003424: 01 00 00 14 	b	0x100003428 <_est_symbole+0x20>
100003428: e8 07 40 b9 	ldr	w8, [sp, #4]
10000342c: 08 b5 00 71 	subs	w8, w8, #45
100003430: c0 00 00 54 	b.eq	0x100003448 <_est_symbole+0x40>
100003434: 01 00 00 14 	b	0x100003438 <_est_symbole+0x30>
100003438: e8 07 40 b9 	ldr	w8, [sp, #4]
10000343c: 08 bd 00 71 	subs	w8, w8, #47
100003440: a1 00 00 54 	b.ne	0x100003454 <_est_symbole+0x4c>
100003444: 01 00 00 14 	b	0x100003448 <_est_symbole+0x40>
100003448: 28 00 80 52 	mov	w8, #1
10000344c: e8 0f 00 b9 	str	w8, [sp, #12]
100003450: 03 00 00 14 	b	0x10000345c <_est_symbole+0x54>
100003454: ff 0f 00 b9 	str	wzr, [sp, #12]
100003458: 01 00 00 14 	b	0x10000345c <_est_symbole+0x54>
10000345c: e0 0f 40 b9 	ldr	w0, [sp, #12]
100003460: ff 43 00 91 	add	sp, sp, #16
100003464: c0 03 5f d6 	ret

0000000100003468 <_Nature_vers_Chaine>:
100003468: ff 83 00 d1 	sub	sp, sp, #32
10000346c: e0 17 00 b9 	str	w0, [sp, #20]
100003470: e8 17 40 b9 	ldr	w8, [sp, #20]
100003474: 08 01 00 71 	subs	w8, w8, #0
100003478: e8 07 00 f9 	str	x8, [sp, #8]
10000347c: 08 1d 00 f1 	subs	x8, x8, #7
100003480: 08 05 00 54 	b.hi	0x100003520 <_Nature_vers_Chaine+0xb8>
100003484: eb 07 40 f9 	ldr	x11, [sp, #8]
100003488: 0a 00 00 90 	adrp	x10, 0x100003000 <_Nature_vers_Chaine+0x20>
10000348c: 4a f1 14 91 	add	x10, x10, #1340
100003490: 08 00 00 10 	adr	x8, #0
100003494: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
100003498: 08 01 09 8b 	add	x8, x8, x9
10000349c: 00 01 1f d6 	br	x8
1000034a0: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0x38>
1000034a4: 08 55 3a 91 	add	x8, x8, #3733
1000034a8: e8 0f 00 f9 	str	x8, [sp, #24]
1000034ac: 21 00 00 14 	b	0x100003530 <_Nature_vers_Chaine+0xc8>
1000034b0: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0x48>
1000034b4: 08 71 3a 91 	add	x8, x8, #3740
1000034b8: e8 0f 00 f9 	str	x8, [sp, #24]
1000034bc: 1d 00 00 14 	b	0x100003530 <_Nature_vers_Chaine+0xc8>
1000034c0: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0x58>
1000034c4: 08 85 3a 91 	add	x8, x8, #3745
1000034c8: e8 0f 00 f9 	str	x8, [sp, #24]
1000034cc: 19 00 00 14 	b	0x100003530 <_Nature_vers_Chaine+0xc8>
1000034d0: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0x68>
1000034d4: 08 9d 3a 91 	add	x8, x8, #3751
1000034d8: e8 0f 00 f9 	str	x8, [sp, #24]
1000034dc: 15 00 00 14 	b	0x100003530 <_Nature_vers_Chaine+0xc8>
1000034e0: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0x78>
1000034e4: 08 ad 3a 91 	add	x8, x8, #3755
1000034e8: e8 0f 00 f9 	str	x8, [sp, #24]
1000034ec: 11 00 00 14 	b	0x100003530 <_Nature_vers_Chaine+0xc8>
1000034f0: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0x88>
1000034f4: 08 d1 3a 91 	add	x8, x8, #3764
1000034f8: e8 0f 00 f9 	str	x8, [sp, #24]
1000034fc: 0d 00 00 14 	b	0x100003530 <_Nature_vers_Chaine+0xc8>
100003500: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0x98>
100003504: 08 e5 3a 91 	add	x8, x8, #3769
100003508: e8 0f 00 f9 	str	x8, [sp, #24]
10000350c: 09 00 00 14 	b	0x100003530 <_Nature_vers_Chaine+0xc8>
100003510: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0xa8>
100003514: 08 f9 3a 91 	add	x8, x8, #3774
100003518: e8 0f 00 f9 	str	x8, [sp, #24]
10000351c: 05 00 00 14 	b	0x100003530 <_Nature_vers_Chaine+0xc8>
100003520: 08 00 00 90 	adrp	x8, 0x100003000 <_Nature_vers_Chaine+0xb8>
100003524: 08 2d 3b 91 	add	x8, x8, #3787
100003528: e8 0f 00 f9 	str	x8, [sp, #24]
10000352c: 01 00 00 14 	b	0x100003530 <_Nature_vers_Chaine+0xc8>
100003530: e0 0f 40 f9 	ldr	x0, [sp, #24]
100003534: ff 83 00 91 	add	sp, sp, #32
100003538: c0 03 5f d6 	ret
10000353c: 10 00 00 00 	udf	#16
100003540: 20 00 00 00 	udf	#32
100003544: 30 00 00 00 	udf	#48
100003548: 40 00 00 00 	udf	#64
10000354c: 50 00 00 00 	udf	#80
100003550: 80 00 00 00 	udf	#128
100003554: 60 00 00 00 	udf	#96
100003558: 70 00 00 00 	udf	#112

000000010000355c <_afficher>:
10000355c: ff 83 00 d1 	sub	sp, sp, #32
100003560: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003564: fd 43 00 91 	add	x29, sp, #16
100003568: e0 07 00 f9 	str	x0, [sp, #8]
10000356c: 08 00 40 b9 	ldr	w8, [x0]
100003570: 08 15 00 71 	subs	w8, w8, #5
100003574: 61 00 00 54 	b.ne	0x100003580 <_afficher+0x24>
100003578: 01 00 00 14 	b	0x10000357c <_afficher+0x20>
10000357c: 35 00 00 14 	b	0x100003650 <_afficher+0xf4>
100003580: e8 07 40 f9 	ldr	x8, [sp, #8]
100003584: 09 05 40 b9 	ldr	w9, [x8, #4]
100003588: e8 03 09 aa 	mov	x8, x9
10000358c: e9 03 00 91 	mov	x9, sp
100003590: 28 01 00 f9 	str	x8, [x9]
100003594: 00 00 00 90 	adrp	x0, 0x100003000 <_afficher+0x38>
100003598: 00 48 3b 91 	add	x0, x0, #3794
10000359c: 1c 02 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
1000035a0: e8 07 40 f9 	ldr	x8, [sp, #8]
1000035a4: 09 09 40 b9 	ldr	w9, [x8, #8]
1000035a8: e8 03 09 aa 	mov	x8, x9
1000035ac: e9 03 00 91 	mov	x9, sp
1000035b0: 28 01 00 f9 	str	x8, [x9]
1000035b4: 00 00 00 90 	adrp	x0, 0x100003000 <_afficher+0x58>
1000035b8: 00 78 3b 91 	add	x0, x0, #3806
1000035bc: 14 02 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
1000035c0: 00 00 00 90 	adrp	x0, 0x100003000 <_afficher+0x64>
1000035c4: 00 b4 3b 91 	add	x0, x0, #3821
1000035c8: 11 02 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
1000035cc: e8 07 40 f9 	ldr	x8, [sp, #8]
1000035d0: 00 01 40 b9 	ldr	w0, [x8]
1000035d4: a5 ff ff 97 	bl	0x100003468 <_Nature_vers_Chaine>
1000035d8: e8 03 00 91 	mov	x8, sp
1000035dc: 00 01 00 f9 	str	x0, [x8]
1000035e0: 00 00 00 90 	adrp	x0, 0x100003000 <_afficher+0x84>
1000035e4: 00 bc 3b 91 	add	x0, x0, #3823
1000035e8: 09 02 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
1000035ec: e8 07 40 f9 	ldr	x8, [sp, #8]
1000035f0: 08 31 00 91 	add	x8, x8, #12
1000035f4: e9 03 00 91 	mov	x9, sp
1000035f8: 28 01 00 f9 	str	x8, [x9]
1000035fc: 00 00 00 90 	adrp	x0, 0x100003000 <_afficher+0xa0>
100003600: 00 ec 3b 91 	add	x0, x0, #3835
100003604: 02 02 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100003608: e8 07 40 f9 	ldr	x8, [sp, #8]
10000360c: 08 01 40 b9 	ldr	w8, [x8]
100003610: 68 01 00 35 	cbnz	w8, 0x10000363c <_afficher+0xe0>
100003614: 01 00 00 14 	b	0x100003618 <_afficher+0xbc>
100003618: e8 07 40 f9 	ldr	x8, [sp, #8]
10000361c: 09 0d 41 b9 	ldr	w9, [x8, #268]
100003620: e8 03 09 aa 	mov	x8, x9
100003624: e9 03 00 91 	mov	x9, sp
100003628: 28 01 00 f9 	str	x8, [x9]
10000362c: 00 00 00 90 	adrp	x0, 0x100003000 <_afficher+0xd0>
100003630: 00 24 3c 91 	add	x0, x0, #3849
100003634: f6 01 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100003638: 01 00 00 14 	b	0x10000363c <_afficher+0xe0>
10000363c: 01 00 00 14 	b	0x100003640 <_afficher+0xe4>
100003640: 00 00 00 90 	adrp	x0, 0x100003000 <_afficher+0xe4>
100003644: 00 54 3c 91 	add	x0, x0, #3861
100003648: f1 01 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
10000364c: 01 00 00 14 	b	0x100003650 <_afficher+0xf4>
100003650: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003654: ff 83 00 91 	add	sp, sp, #32
100003658: c0 03 5f d6 	ret

000000010000365c <_demarrer_car>:
10000365c: ff 83 00 d1 	sub	sp, sp, #32
100003660: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003664: fd 43 00 91 	add	x29, sp, #16
100003668: e0 07 00 f9 	str	x0, [sp, #8]
10000366c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003670: ea 01 00 94 	bl	0x100003e18 <_strlen+0x100003e18>
100003674: 20 01 00 b5 	cbnz	x0, 0x100003698 <_demarrer_car+0x3c>
100003678: 01 00 00 14 	b	0x10000367c <_demarrer_car+0x20>
10000367c: 08 00 00 b0 	adrp	x8, 0x100004000 <_demarrer_car+0x24>
100003680: 08 09 40 f9 	ldr	x8, [x8, #16]
100003684: 08 01 40 f9 	ldr	x8, [x8]
100003688: 29 00 00 b0 	adrp	x9, 0x100008000 <_demarrer_car+0x40>
10000368c: 29 61 04 91 	add	x9, x9, #280
100003690: 28 01 00 f9 	str	x8, [x9]
100003694: 09 00 00 14 	b	0x1000036b8 <_demarrer_car+0x5c>
100003698: e0 07 40 f9 	ldr	x0, [sp, #8]
10000369c: 01 00 00 90 	adrp	x1, 0x100003000 <_demarrer_car+0x40>
1000036a0: 21 5c 3c 91 	add	x1, x1, #3863
1000036a4: d4 01 00 94 	bl	0x100003df4 <_strlen+0x100003df4>
1000036a8: 28 00 00 b0 	adrp	x8, 0x100008000 <_demarrer_car+0x60>
1000036ac: 08 61 04 91 	add	x8, x8, #280
1000036b0: 00 01 00 f9 	str	x0, [x8]
1000036b4: 01 00 00 14 	b	0x1000036b8 <_demarrer_car+0x5c>
1000036b8: 29 00 00 b0 	adrp	x9, 0x100008000 <_demarrer_car+0x70>
1000036bc: 29 81 04 91 	add	x9, x9, #288
1000036c0: 28 00 80 52 	mov	w8, #1
1000036c4: 28 01 00 b9 	str	w8, [x9]
1000036c8: 28 00 00 b0 	adrp	x8, 0x100008000 <_demarrer_car+0x80>
1000036cc: 08 51 04 91 	add	x8, x8, #276
1000036d0: 1f 01 00 b9 	str	wzr, [x8]
1000036d4: 04 00 00 94 	bl	0x1000036e4 <_avancer_car>
1000036d8: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000036dc: ff 83 00 91 	add	sp, sp, #32
1000036e0: c0 03 5f d6 	ret

00000001000036e4 <_avancer_car>:
1000036e4: ff 83 00 d1 	sub	sp, sp, #32
1000036e8: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000036ec: fd 43 00 91 	add	x29, sp, #16
1000036f0: 28 00 00 b0 	adrp	x8, 0x100008000 <_avancer_car+0x20>
1000036f4: 08 41 04 91 	add	x8, x8, #272
1000036f8: e8 03 00 f9 	str	x8, [sp]
1000036fc: 28 00 00 b0 	adrp	x8, 0x100008000 <_avancer_car+0x2c>
100003700: 08 51 04 91 	add	x8, x8, #276
100003704: e8 07 00 f9 	str	x8, [sp, #8]
100003708: 28 00 00 b0 	adrp	x8, 0x100008000 <_avancer_car+0x38>
10000370c: 08 61 04 91 	add	x8, x8, #280
100003710: 00 01 40 f9 	ldr	x0, [x8]
100003714: b2 01 00 94 	bl	0x100003ddc <_strlen+0x100003ddc>
100003718: 60 03 00 35 	cbnz	w0, 0x100003784 <_avancer_car+0xa0>
10000371c: 01 00 00 14 	b	0x100003720 <_avancer_car+0x3c>
100003720: 28 00 00 b0 	adrp	x8, 0x100008000 <_avancer_car+0x50>
100003724: 08 61 04 91 	add	x8, x8, #280
100003728: 00 01 40 f9 	ldr	x0, [x8]
10000372c: af 01 00 94 	bl	0x100003de8 <_strlen+0x100003de8>
100003730: e8 03 40 f9 	ldr	x8, [sp]
100003734: 00 01 00 b9 	str	w0, [x8]
100003738: 08 01 40 b9 	ldr	w8, [x8]
10000373c: 08 29 00 71 	subs	w8, w8, #10
100003740: e0 00 00 54 	b.eq	0x10000375c <_avancer_car+0x78>
100003744: 01 00 00 14 	b	0x100003748 <_avancer_car+0x64>
100003748: e9 07 40 f9 	ldr	x9, [sp, #8]
10000374c: 28 01 40 b9 	ldr	w8, [x9]
100003750: 08 05 00 11 	add	w8, w8, #1
100003754: 28 01 00 b9 	str	w8, [x9]
100003758: 0a 00 00 14 	b	0x100003780 <_avancer_car+0x9c>
10000375c: e9 07 40 f9 	ldr	x9, [sp, #8]
100003760: 28 00 80 52 	mov	w8, #1
100003764: 28 01 00 b9 	str	w8, [x9]
100003768: 29 00 00 b0 	adrp	x9, 0x100008000 <_avancer_car+0x98>
10000376c: 29 81 04 91 	add	x9, x9, #288
100003770: 28 01 40 b9 	ldr	w8, [x9]
100003774: 08 05 00 11 	add	w8, w8, #1
100003778: 28 01 00 b9 	str	w8, [x9]
10000377c: 01 00 00 14 	b	0x100003780 <_avancer_car+0x9c>
100003780: 05 00 00 14 	b	0x100003794 <_avancer_car+0xb0>
100003784: e9 03 40 f9 	ldr	x9, [sp]
100003788: 08 00 80 12 	mov	w8, #-1
10000378c: 28 01 00 b9 	str	w8, [x9]
100003790: 01 00 00 14 	b	0x100003794 <_avancer_car+0xb0>
100003794: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003798: ff 83 00 91 	add	sp, sp, #32
10000379c: c0 03 5f d6 	ret

00000001000037a0 <_caractere_courant>:
1000037a0: 28 00 00 b0 	adrp	x8, 0x100008000 <_fin_de_sequence_car>
1000037a4: 08 41 04 91 	add	x8, x8, #272
1000037a8: 08 01 40 b9 	ldr	w8, [x8]
1000037ac: 00 1d 00 13 	sxtb	w0, w8
1000037b0: c0 03 5f d6 	ret

00000001000037b4 <_fin_de_sequence_car>:
1000037b4: 28 00 00 b0 	adrp	x8, 0x100008000 <_fin_de_sequence_car+0x14>
1000037b8: 08 41 04 91 	add	x8, x8, #272
1000037bc: 08 01 40 b9 	ldr	w8, [x8]
1000037c0: 08 05 00 31 	adds	w8, w8, #1
1000037c4: e8 17 9f 1a 	cset	w8, eq
1000037c8: 00 01 00 12 	and	w0, w8, #0x1
1000037cc: c0 03 5f d6 	ret

00000001000037d0 <_numero_ligne>:
1000037d0: 28 00 00 b0 	adrp	x8, 0x100008000 <_numero_colonne+0x4>
1000037d4: 08 81 04 91 	add	x8, x8, #288
1000037d8: 00 01 40 b9 	ldr	w0, [x8]
1000037dc: c0 03 5f d6 	ret

00000001000037e0 <_numero_colonne>:
1000037e0: 28 00 00 b0 	adrp	x8, 0x100008000 <_arreter_car+0x4>
1000037e4: 08 51 04 91 	add	x8, x8, #276
1000037e8: 00 01 40 b9 	ldr	w0, [x8]
1000037ec: c0 03 5f d6 	ret

00000001000037f0 <_arreter_car>:
1000037f0: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
1000037f4: fd 03 00 91 	mov	x29, sp
1000037f8: 28 00 00 b0 	adrp	x8, 0x100008000 <_arreter_car+0x1c>
1000037fc: 08 61 04 91 	add	x8, x8, #280
100003800: 00 01 40 f9 	ldr	x0, [x8]
100003804: 73 01 00 94 	bl	0x100003dd0 <_strlen+0x100003dd0>
100003808: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
10000380c: c0 03 5f d6 	ret

0000000100003810 <_rank>:
100003810: ff 43 00 d1 	sub	sp, sp, #16
100003814: e0 0b 00 b9 	str	w0, [sp, #8]
100003818: e8 0b 40 b9 	ldr	w8, [sp, #8]
10000381c: 08 05 00 71 	subs	w8, w8, #1
100003820: e8 03 00 f9 	str	x8, [sp]
100003824: 08 19 00 f1 	subs	x8, x8, #6
100003828: 88 02 00 54 	b.hi	0x100003878 <_rank+0x68>
10000382c: eb 03 40 f9 	ldr	x11, [sp]
100003830: 0a 00 00 90 	adrp	x10, 0x100003000 <_rank+0x20>
100003834: 4a 31 22 91 	add	x10, x10, #2188
100003838: 08 00 00 10 	adr	x8, #0
10000383c: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
100003840: 08 01 09 8b 	add	x8, x8, x9
100003844: 00 01 1f d6 	br	x8
100003848: 48 00 80 52 	mov	w8, #2
10000384c: e8 0f 00 b9 	str	w8, [sp, #12]
100003850: 0c 00 00 14 	b	0x100003880 <_rank+0x70>
100003854: 68 00 80 52 	mov	w8, #3
100003858: e8 0f 00 b9 	str	w8, [sp, #12]
10000385c: 09 00 00 14 	b	0x100003880 <_rank+0x70>
100003860: 28 00 80 52 	mov	w8, #1
100003864: e8 0f 00 b9 	str	w8, [sp, #12]
100003868: 06 00 00 14 	b	0x100003880 <_rank+0x70>
10000386c: 88 00 80 52 	mov	w8, #4
100003870: e8 0f 00 b9 	str	w8, [sp, #12]
100003874: 03 00 00 14 	b	0x100003880 <_rank+0x70>
100003878: ff 0f 00 b9 	str	wzr, [sp, #12]
10000387c: 01 00 00 14 	b	0x100003880 <_rank+0x70>
100003880: e0 0f 40 b9 	ldr	w0, [sp, #12]
100003884: ff 43 00 91 	add	sp, sp, #16
100003888: c0 03 5f d6 	ret
10000388c: 10 00 00 00 	udf	#16
100003890: 10 00 00 00 	udf	#16
100003894: 1c 00 00 00 	udf	#28
100003898: 1c 00 00 00 	udf	#28
10000389c: 40 00 00 00 	udf	#64
1000038a0: 28 00 00 00 	udf	#40
1000038a4: 34 00 00 00 	udf	#52

00000001000038a8 <_math>:
1000038a8: ff 83 00 d1 	sub	sp, sp, #32
1000038ac: e0 1b 00 b9 	str	w0, [sp, #24]
1000038b0: e1 17 00 b9 	str	w1, [sp, #20]
1000038b4: e2 13 00 b9 	str	w2, [sp, #16]
1000038b8: e8 13 40 b9 	ldr	w8, [sp, #16]
1000038bc: 08 05 00 71 	subs	w8, w8, #1
1000038c0: e8 07 00 f9 	str	x8, [sp, #8]
1000038c4: 08 0d 00 f1 	subs	x8, x8, #3
1000038c8: 88 03 00 54 	b.hi	0x100003938 <_math+0x90>
1000038cc: eb 07 40 f9 	ldr	x11, [sp, #8]
1000038d0: 0a 00 00 90 	adrp	x10, 0x100003000 <_math+0x28>
1000038d4: 4a 31 25 91 	add	x10, x10, #2380
1000038d8: 08 00 00 10 	adr	x8, #0
1000038dc: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
1000038e0: 08 01 09 8b 	add	x8, x8, x9
1000038e4: 00 01 1f d6 	br	x8
1000038e8: e8 1b 40 b9 	ldr	w8, [sp, #24]
1000038ec: e9 17 40 b9 	ldr	w9, [sp, #20]
1000038f0: 08 01 09 0b 	add	w8, w8, w9
1000038f4: e8 1f 00 b9 	str	w8, [sp, #28]
1000038f8: 12 00 00 14 	b	0x100003940 <_math+0x98>
1000038fc: e8 1b 40 b9 	ldr	w8, [sp, #24]
100003900: e9 17 40 b9 	ldr	w9, [sp, #20]
100003904: 08 01 09 6b 	subs	w8, w8, w9
100003908: e8 1f 00 b9 	str	w8, [sp, #28]
10000390c: 0d 00 00 14 	b	0x100003940 <_math+0x98>
100003910: e8 1b 40 b9 	ldr	w8, [sp, #24]
100003914: e9 17 40 b9 	ldr	w9, [sp, #20]
100003918: 08 7d 09 1b 	mul	w8, w8, w9
10000391c: e8 1f 00 b9 	str	w8, [sp, #28]
100003920: 08 00 00 14 	b	0x100003940 <_math+0x98>
100003924: e8 1b 40 b9 	ldr	w8, [sp, #24]
100003928: e9 17 40 b9 	ldr	w9, [sp, #20]
10000392c: 08 0d c9 1a 	sdiv	w8, w8, w9
100003930: e8 1f 00 b9 	str	w8, [sp, #28]
100003934: 03 00 00 14 	b	0x100003940 <_math+0x98>
100003938: ff 1f 00 b9 	str	wzr, [sp, #28]
10000393c: 01 00 00 14 	b	0x100003940 <_math+0x98>
100003940: e0 1f 40 b9 	ldr	w0, [sp, #28]
100003944: ff 83 00 91 	add	sp, sp, #32
100003948: c0 03 5f d6 	ret
10000394c: 10 00 00 00 	udf	#16
100003950: 24 00 00 00 	udf	#36
100003954: 38 00 00 00 	udf	#56
100003958: 4c 00 00 00 	udf	#76

000000010000395c <_analyser>:
10000395c: fc 6f be a9 	stp	x28, x27, [sp, #-32]!
100003960: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003964: fd 43 00 91 	add	x29, sp, #16
100003968: ff 43 1b d1 	sub	sp, sp, #1744
10000396c: 08 00 00 b0 	adrp	x8, 0x100004000 <_analyser+0x14>
100003970: 08 05 40 f9 	ldr	x8, [x8, #8]
100003974: 08 01 40 f9 	ldr	x8, [x8]
100003978: a8 83 1e f8 	stur	x8, [x29, #-24]
10000397c: e0 33 00 f9 	str	x0, [sp, #96]
100003980: e1 2f 00 f9 	str	x1, [sp, #88]
100003984: e2 2b 00 f9 	str	x2, [sp, #80]
100003988: e8 2b 40 f9 	ldr	x8, [sp, #80]
10000398c: 08 01 40 b9 	ldr	w8, [x8]
100003990: 08 05 00 71 	subs	w8, w8, #1
100003994: e1 00 00 54 	b.ne	0x1000039b0 <_analyser+0x54>
100003998: 01 00 00 14 	b	0x10000399c <_analyser+0x40>
10000399c: e0 33 40 f9 	ldr	x0, [sp, #96]
1000039a0: 43 fd ff 97 	bl	0x100002eac <_demarrer>
1000039a4: e8 2b 40 f9 	ldr	x8, [sp, #80]
1000039a8: 1f 01 00 b9 	str	wzr, [x8]
1000039ac: 01 00 00 14 	b	0x1000039b0 <_analyser+0x54>
1000039b0: e8 e3 16 91 	add	x8, sp, #1464
1000039b4: 4d fd ff 97 	bl	0x100002ee8 <_lexeme_courant>
1000039b8: e8 bb 45 b9 	ldr	w8, [sp, #1464]
1000039bc: e8 00 00 35 	cbnz	w8, 0x1000039d8 <_analyser+0x7c>
1000039c0: 01 00 00 14 	b	0x1000039c4 <_analyser+0x68>
1000039c4: e8 c7 46 b9 	ldr	w8, [sp, #1732]
1000039c8: e9 2f 40 f9 	ldr	x9, [sp, #88]
1000039cc: 28 01 00 b9 	str	w8, [x9]
1000039d0: 41 fd ff 97 	bl	0x100002ed4 <_avancer>
1000039d4: 11 00 00 14 	b	0x100003a18 <_analyser+0xbc>
1000039d8: e8 bb 45 b9 	ldr	w8, [sp, #1464]
1000039dc: 08 19 00 71 	subs	w8, w8, #6
1000039e0: 01 01 00 54 	b.ne	0x100003a00 <_analyser+0xa4>
1000039e4: 01 00 00 14 	b	0x1000039e8 <_analyser+0x8c>
1000039e8: 3b fd ff 97 	bl	0x100002ed4 <_avancer>
1000039ec: e0 33 40 f9 	ldr	x0, [sp, #96]
1000039f0: e1 2f 40 f9 	ldr	x1, [sp, #88]
1000039f4: e2 2b 40 f9 	ldr	x2, [sp, #80]
1000039f8: d9 ff ff 97 	bl	0x10000395c <_analyser>
1000039fc: 06 00 00 14 	b	0x100003a14 <_analyser+0xb8>
100003a00: 00 00 00 90 	adrp	x0, 0x100003000 <_analyser+0xa4>
100003a04: 00 64 3c 91 	add	x0, x0, #3865
100003a08: 01 01 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100003a0c: 20 00 80 52 	mov	w0, #1
100003a10: ed 00 00 94 	bl	0x100003dc4 <_strlen+0x100003dc4>
100003a14: 01 00 00 14 	b	0x100003a18 <_analyser+0xbc>
100003a18: 01 00 00 14 	b	0x100003a1c <_analyser+0xc0>
100003a1c: 3c fd ff 97 	bl	0x100002f0c <_fin_de_sequence>
100003a20: 60 1a 00 35 	cbnz	w0, 0x100003d6c <_analyser+0x410>
100003a24: 01 00 00 14 	b	0x100003a28 <_analyser+0xcc>
100003a28: e8 a3 12 91 	add	x8, sp, #1192
100003a2c: e8 1b 00 f9 	str	x8, [sp, #48]
100003a30: 2e fd ff 97 	bl	0x100002ee8 <_lexeme_courant>
100003a34: e1 1b 40 f9 	ldr	x1, [sp, #48]
100003a38: e0 e3 16 91 	add	x0, sp, #1464
100003a3c: 02 22 80 d2 	mov	x2, #272
100003a40: f0 00 00 94 	bl	0x100003e00 <_strlen+0x100003e00>
100003a44: e9 c7 46 b9 	ldr	w9, [sp, #1732]
100003a48: e8 03 09 aa 	mov	x8, x9
100003a4c: e9 03 00 91 	mov	x9, sp
100003a50: 28 01 00 f9 	str	x8, [x9]
100003a54: 00 00 00 90 	adrp	x0, 0x100003000 <_analyser+0xf8>
100003a58: 00 d0 3c 91 	add	x0, x0, #3892
100003a5c: ec 00 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100003a60: e0 bb 45 b9 	ldr	w0, [sp, #1464]
100003a64: 81 fe ff 97 	bl	0x100003468 <_Nature_vers_Chaine>
100003a68: e8 03 00 91 	mov	x8, sp
100003a6c: 00 01 00 f9 	str	x0, [x8]
100003a70: 00 00 00 90 	adrp	x0, 0x100003000 <_analyser+0x114>
100003a74: 00 00 3d 91 	add	x0, x0, #3904
100003a78: e5 00 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100003a7c: e8 bb 45 b9 	ldr	w8, [sp, #1464]
100003a80: 08 05 00 71 	subs	w8, w8, #1
100003a84: e8 1f 00 f9 	str	x8, [sp, #56]
100003a88: 08 19 00 f1 	subs	x8, x8, #6
100003a8c: 48 16 00 54 	b.hi	0x100003d54 <_analyser+0x3f8>
100003a90: eb 1f 40 f9 	ldr	x11, [sp, #56]
100003a94: 0a 00 00 90 	adrp	x10, 0x100003000 <_analyser+0x138>
100003a98: 4a 71 36 91 	add	x10, x10, #3484
100003a9c: 08 00 00 10 	adr	x8, #0
100003aa0: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
100003aa4: 08 01 09 8b 	add	x8, x8, x9
100003aa8: 00 01 1f d6 	br	x8
100003aac: 0a fd ff 97 	bl	0x100002ed4 <_avancer>
100003ab0: e8 63 0e 91 	add	x8, sp, #920
100003ab4: e8 17 00 f9 	str	x8, [sp, #40]
100003ab8: 0c fd ff 97 	bl	0x100002ee8 <_lexeme_courant>
100003abc: e1 17 40 f9 	ldr	x1, [sp, #40]
100003ac0: e0 e3 16 91 	add	x0, sp, #1464
100003ac4: 02 22 80 d2 	mov	x2, #272
100003ac8: ce 00 00 94 	bl	0x100003e00 <_strlen+0x100003e00>
100003acc: e8 bb 45 b9 	ldr	w8, [sp, #1464]
100003ad0: 48 01 00 35 	cbnz	w8, 0x100003af8 <_analyser+0x19c>
100003ad4: 01 00 00 14 	b	0x100003ad8 <_analyser+0x17c>
100003ad8: e8 2f 40 f9 	ldr	x8, [sp, #88]
100003adc: 08 01 40 b9 	ldr	w8, [x8]
100003ae0: e9 c7 46 b9 	ldr	w9, [sp, #1732]
100003ae4: 08 01 09 0b 	add	w8, w8, w9
100003ae8: e9 2f 40 f9 	ldr	x9, [sp, #88]
100003aec: 28 01 00 b9 	str	w8, [x9]
100003af0: f9 fc ff 97 	bl	0x100002ed4 <_avancer>
100003af4: 17 00 00 14 	b	0x100003b50 <_analyser+0x1f4>
100003af8: e8 bb 45 b9 	ldr	w8, [sp, #1464]
100003afc: 08 19 00 71 	subs	w8, w8, #6
100003b00: c1 01 00 54 	b.ne	0x100003b38 <_analyser+0x1dc>
100003b04: 01 00 00 14 	b	0x100003b08 <_analyser+0x1ac>
100003b08: e1 33 01 91 	add	x1, sp, #76
100003b0c: ff 4f 00 b9 	str	wzr, [sp, #76]
100003b10: e0 33 40 f9 	ldr	x0, [sp, #96]
100003b14: e2 2b 40 f9 	ldr	x2, [sp, #80]
100003b18: 91 ff ff 97 	bl	0x10000395c <_analyser>
100003b1c: e8 2f 40 f9 	ldr	x8, [sp, #88]
100003b20: 08 01 40 b9 	ldr	w8, [x8]
100003b24: e9 4f 40 b9 	ldr	w9, [sp, #76]
100003b28: 08 01 09 0b 	add	w8, w8, w9
100003b2c: e9 2f 40 f9 	ldr	x9, [sp, #88]
100003b30: 28 01 00 b9 	str	w8, [x9]
100003b34: 06 00 00 14 	b	0x100003b4c <_analyser+0x1f0>
100003b38: 00 00 00 90 	adrp	x0, 0x100003000 <_analyser+0x1dc>
100003b3c: 00 64 3c 91 	add	x0, x0, #3865
100003b40: b3 00 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100003b44: 20 00 80 52 	mov	w0, #1
100003b48: 9f 00 00 94 	bl	0x100003dc4 <_strlen+0x100003dc4>
100003b4c: 01 00 00 14 	b	0x100003b50 <_analyser+0x1f4>
100003b50: 86 00 00 14 	b	0x100003d68 <_analyser+0x40c>
100003b54: e0 fc ff 97 	bl	0x100002ed4 <_avancer>
100003b58: e8 23 0a 91 	add	x8, sp, #648
100003b5c: e8 13 00 f9 	str	x8, [sp, #32]
100003b60: e2 fc ff 97 	bl	0x100002ee8 <_lexeme_courant>
100003b64: e1 13 40 f9 	ldr	x1, [sp, #32]
100003b68: e0 e3 16 91 	add	x0, sp, #1464
100003b6c: 02 22 80 d2 	mov	x2, #272
100003b70: a4 00 00 94 	bl	0x100003e00 <_strlen+0x100003e00>
100003b74: e8 bb 45 b9 	ldr	w8, [sp, #1464]
100003b78: 48 01 00 35 	cbnz	w8, 0x100003ba0 <_analyser+0x244>
100003b7c: 01 00 00 14 	b	0x100003b80 <_analyser+0x224>
100003b80: e8 2f 40 f9 	ldr	x8, [sp, #88]
100003b84: 08 01 40 b9 	ldr	w8, [x8]
100003b88: e9 c7 46 b9 	ldr	w9, [sp, #1732]
100003b8c: 08 01 09 6b 	subs	w8, w8, w9
100003b90: e9 2f 40 f9 	ldr	x9, [sp, #88]
100003b94: 28 01 00 b9 	str	w8, [x9]
100003b98: cf fc ff 97 	bl	0x100002ed4 <_avancer>
100003b9c: 17 00 00 14 	b	0x100003bf8 <_analyser+0x29c>
100003ba0: e8 bb 45 b9 	ldr	w8, [sp, #1464]
100003ba4: 08 19 00 71 	subs	w8, w8, #6
100003ba8: c1 01 00 54 	b.ne	0x100003be0 <_analyser+0x284>
100003bac: 01 00 00 14 	b	0x100003bb0 <_analyser+0x254>
100003bb0: e1 23 01 91 	add	x1, sp, #72
100003bb4: ff 4b 00 b9 	str	wzr, [sp, #72]
100003bb8: e0 33 40 f9 	ldr	x0, [sp, #96]
100003bbc: e2 2b 40 f9 	ldr	x2, [sp, #80]
100003bc0: 67 ff ff 97 	bl	0x10000395c <_analyser>
100003bc4: e8 2f 40 f9 	ldr	x8, [sp, #88]
100003bc8: 08 01 40 b9 	ldr	w8, [x8]
100003bcc: e9 4b 40 b9 	ldr	w9, [sp, #72]
100003bd0: 08 01 09 6b 	subs	w8, w8, w9
100003bd4: e9 2f 40 f9 	ldr	x9, [sp, #88]
100003bd8: 28 01 00 b9 	str	w8, [x9]
100003bdc: 06 00 00 14 	b	0x100003bf4 <_analyser+0x298>
100003be0: 00 00 00 90 	adrp	x0, 0x100003000 <_analyser+0x284>
100003be4: 00 64 3c 91 	add	x0, x0, #3865
100003be8: 89 00 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100003bec: 20 00 80 52 	mov	w0, #1
100003bf0: 75 00 00 94 	bl	0x100003dc4 <_strlen+0x100003dc4>
100003bf4: 01 00 00 14 	b	0x100003bf8 <_analyser+0x29c>
100003bf8: 5c 00 00 14 	b	0x100003d68 <_analyser+0x40c>
100003bfc: b6 fc ff 97 	bl	0x100002ed4 <_avancer>
100003c00: e8 e3 05 91 	add	x8, sp, #376
100003c04: e8 0f 00 f9 	str	x8, [sp, #24]
100003c08: b8 fc ff 97 	bl	0x100002ee8 <_lexeme_courant>
100003c0c: e1 0f 40 f9 	ldr	x1, [sp, #24]
100003c10: e0 e3 16 91 	add	x0, sp, #1464
100003c14: 02 22 80 d2 	mov	x2, #272
100003c18: 7a 00 00 94 	bl	0x100003e00 <_strlen+0x100003e00>
100003c1c: e8 bb 45 b9 	ldr	w8, [sp, #1464]
100003c20: 48 01 00 35 	cbnz	w8, 0x100003c48 <_analyser+0x2ec>
100003c24: 01 00 00 14 	b	0x100003c28 <_analyser+0x2cc>
100003c28: e8 2f 40 f9 	ldr	x8, [sp, #88]
100003c2c: 08 01 40 b9 	ldr	w8, [x8]
100003c30: e9 c7 46 b9 	ldr	w9, [sp, #1732]
100003c34: 08 7d 09 1b 	mul	w8, w8, w9
100003c38: e9 2f 40 f9 	ldr	x9, [sp, #88]
100003c3c: 28 01 00 b9 	str	w8, [x9]
100003c40: a5 fc ff 97 	bl	0x100002ed4 <_avancer>
100003c44: 17 00 00 14 	b	0x100003ca0 <_analyser+0x344>
100003c48: e8 bb 45 b9 	ldr	w8, [sp, #1464]
100003c4c: 08 19 00 71 	subs	w8, w8, #6
100003c50: c1 01 00 54 	b.ne	0x100003c88 <_analyser+0x32c>
100003c54: 01 00 00 14 	b	0x100003c58 <_analyser+0x2fc>
100003c58: e1 13 01 91 	add	x1, sp, #68
100003c5c: ff 47 00 b9 	str	wzr, [sp, #68]
100003c60: e0 33 40 f9 	ldr	x0, [sp, #96]
100003c64: e2 2b 40 f9 	ldr	x2, [sp, #80]
100003c68: 3d ff ff 97 	bl	0x10000395c <_analyser>
100003c6c: e8 2f 40 f9 	ldr	x8, [sp, #88]
100003c70: 08 01 40 b9 	ldr	w8, [x8]
100003c74: e9 47 40 b9 	ldr	w9, [sp, #68]
100003c78: 08 7d 09 1b 	mul	w8, w8, w9
100003c7c: e9 2f 40 f9 	ldr	x9, [sp, #88]
100003c80: 28 01 00 b9 	str	w8, [x9]
100003c84: 06 00 00 14 	b	0x100003c9c <_analyser+0x340>
100003c88: 00 00 00 90 	adrp	x0, 0x100003000 <_analyser+0x32c>
100003c8c: 00 64 3c 91 	add	x0, x0, #3865
100003c90: 5f 00 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100003c94: 20 00 80 52 	mov	w0, #1
100003c98: 4b 00 00 94 	bl	0x100003dc4 <_strlen+0x100003dc4>
100003c9c: 01 00 00 14 	b	0x100003ca0 <_analyser+0x344>
100003ca0: 32 00 00 14 	b	0x100003d68 <_analyser+0x40c>
100003ca4: 8c fc ff 97 	bl	0x100002ed4 <_avancer>
100003ca8: e8 a3 01 91 	add	x8, sp, #104
100003cac: e8 0b 00 f9 	str	x8, [sp, #16]
100003cb0: 8e fc ff 97 	bl	0x100002ee8 <_lexeme_courant>
100003cb4: e1 0b 40 f9 	ldr	x1, [sp, #16]
100003cb8: e0 e3 16 91 	add	x0, sp, #1464
100003cbc: 02 22 80 d2 	mov	x2, #272
100003cc0: 50 00 00 94 	bl	0x100003e00 <_strlen+0x100003e00>
100003cc4: e8 bb 45 b9 	ldr	w8, [sp, #1464]
100003cc8: 48 01 00 35 	cbnz	w8, 0x100003cf0 <_analyser+0x394>
100003ccc: 01 00 00 14 	b	0x100003cd0 <_analyser+0x374>
100003cd0: e8 2f 40 f9 	ldr	x8, [sp, #88]
100003cd4: 08 01 40 b9 	ldr	w8, [x8]
100003cd8: e9 c7 46 b9 	ldr	w9, [sp, #1732]
100003cdc: 08 0d c9 1a 	sdiv	w8, w8, w9
100003ce0: e9 2f 40 f9 	ldr	x9, [sp, #88]
100003ce4: 28 01 00 b9 	str	w8, [x9]
100003ce8: 7b fc ff 97 	bl	0x100002ed4 <_avancer>
100003cec: 17 00 00 14 	b	0x100003d48 <_analyser+0x3ec>
100003cf0: e8 bb 45 b9 	ldr	w8, [sp, #1464]
100003cf4: 08 19 00 71 	subs	w8, w8, #6
100003cf8: c1 01 00 54 	b.ne	0x100003d30 <_analyser+0x3d4>
100003cfc: 01 00 00 14 	b	0x100003d00 <_analyser+0x3a4>
100003d00: e1 03 01 91 	add	x1, sp, #64
100003d04: ff 43 00 b9 	str	wzr, [sp, #64]
100003d08: e0 33 40 f9 	ldr	x0, [sp, #96]
100003d0c: e2 2b 40 f9 	ldr	x2, [sp, #80]
100003d10: 13 ff ff 97 	bl	0x10000395c <_analyser>
100003d14: e8 2f 40 f9 	ldr	x8, [sp, #88]
100003d18: 08 01 40 b9 	ldr	w8, [x8]
100003d1c: e9 43 40 b9 	ldr	w9, [sp, #64]
100003d20: 08 0d c9 1a 	sdiv	w8, w8, w9
100003d24: e9 2f 40 f9 	ldr	x9, [sp, #88]
100003d28: 28 01 00 b9 	str	w8, [x9]
100003d2c: 06 00 00 14 	b	0x100003d44 <_analyser+0x3e8>
100003d30: 00 00 00 90 	adrp	x0, 0x100003000 <_analyser+0x3d4>
100003d34: 00 64 3c 91 	add	x0, x0, #3865
100003d38: 35 00 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100003d3c: 20 00 80 52 	mov	w0, #1
100003d40: 21 00 00 94 	bl	0x100003dc4 <_strlen+0x100003dc4>
100003d44: 01 00 00 14 	b	0x100003d48 <_analyser+0x3ec>
100003d48: 08 00 00 14 	b	0x100003d68 <_analyser+0x40c>
100003d4c: 62 fc ff 97 	bl	0x100002ed4 <_avancer>
100003d50: 06 00 00 14 	b	0x100003d68 <_analyser+0x40c>
100003d54: 00 00 00 90 	adrp	x0, 0x100003000 <_analyser+0x3f8>
100003d58: 00 30 3d 91 	add	x0, x0, #3916
100003d5c: 2c 00 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100003d60: 20 00 80 52 	mov	w0, #1
100003d64: 18 00 00 94 	bl	0x100003dc4 <_strlen+0x100003dc4>
100003d68: 2d ff ff 17 	b	0x100003a1c <_analyser+0xc0>
100003d6c: a9 83 5e f8 	ldur	x9, [x29, #-24]
100003d70: 08 00 00 b0 	adrp	x8, 0x100004000 <_analyser+0x418>
100003d74: 08 05 40 f9 	ldr	x8, [x8, #8]
100003d78: 08 01 40 f9 	ldr	x8, [x8]
100003d7c: 08 01 09 eb 	subs	x8, x8, x9
100003d80: 60 00 00 54 	b.eq	0x100003d8c <_analyser+0x430>
100003d84: 01 00 00 14 	b	0x100003d88 <_analyser+0x42c>
100003d88: 0c 00 00 94 	bl	0x100003db8 <_strlen+0x100003db8>
100003d8c: ff 43 1b 91 	add	sp, sp, #1744
100003d90: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003d94: fc 6f c2 a8 	ldp	x28, x27, [sp], #32
100003d98: c0 03 5f d6 	ret
100003d9c: 10 00 00 00 	udf	#16
100003da0: b8 00 00 00 	udf	#184
100003da4: 60 01 00 00 	udf	#352
100003da8: 08 02 00 00 	udf	#520
100003dac: b8 02 00 00 	udf	#696
100003db0: b8 02 00 00 	udf	#696
100003db4: b0 02 00 00 	udf	#688

Disassembly of section __TEXT,__stubs:

0000000100003db8 <__stubs>:
100003db8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4>
100003dbc: 10 02 40 f9 	ldr	x16, [x16]
100003dc0: 00 02 1f d6 	br	x16
100003dc4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x10>
100003dc8: 10 0e 40 f9 	ldr	x16, [x16, #24]
100003dcc: 00 02 1f d6 	br	x16
100003dd0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x1c>
100003dd4: 10 12 40 f9 	ldr	x16, [x16, #32]
100003dd8: 00 02 1f d6 	br	x16
100003ddc: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x28>
100003de0: 10 16 40 f9 	ldr	x16, [x16, #40]
100003de4: 00 02 1f d6 	br	x16
100003de8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x34>
100003dec: 10 1a 40 f9 	ldr	x16, [x16, #48]
100003df0: 00 02 1f d6 	br	x16
100003df4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x40>
100003df8: 10 1e 40 f9 	ldr	x16, [x16, #56]
100003dfc: 00 02 1f d6 	br	x16
100003e00: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4c>
100003e04: 10 22 40 f9 	ldr	x16, [x16, #64]
100003e08: 00 02 1f d6 	br	x16
100003e0c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x58>
100003e10: 10 26 40 f9 	ldr	x16, [x16, #72]
100003e14: 00 02 1f d6 	br	x16
100003e18: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x64>
100003e1c: 10 2a 40 f9 	ldr	x16, [x16, #80]
100003e20: 00 02 1f d6 	br	x16
