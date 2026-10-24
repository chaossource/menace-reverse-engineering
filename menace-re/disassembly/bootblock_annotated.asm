
disassembly/bootblock.bin:     file format binary


Disassembly of section .data:

00000000 <.data>:
   0:	444f           	.short 0x444f
   2:	5300           	subqb #1,%d0
   4:	d1f3 7ee3      	addal %a3@(ffffffffffffffe3,%d7:l:8),%a0
   8:	4348           	.short 0x4348
   a:	5721           	subqb #3,%a1@-
   c:	337c 0002 001c 	movew #2,%a1@(28)
  12:	237c 0002 0800 	movel #133120,%a1@(36)
  18:	0024
  1a:	237c 0003 ff00 	movel #261888,%a1@(40)
  20:	0028
  22:	237c 000b 9400 	movel #758784,%a1@(44)
  28:	002c
  2a:	4eae fe38      	jsr %fp@(-456)
  2e:	33fc 8380 00df 	movew #-31872,0xdff096
                     ; >>> DMACON - DMA Control Write
  34:	f096
  36:	4ef9 0003 ff00 	jmp 0x3ff00
	...