
disassembly/mid_section.bin:     file format binary


Disassembly of section .data:

00010000 <.data>:
   10000:	2003           	movel %d3,%d0
   10002:	c002           	andb %d2,%d0
   10004:	0000 0001      	orib #1,%d0
   10008:	4000           	negxb %d0
   1000a:	0001 0000      	orib #0,%d1
   1000e:	0000 0001      	orib #1,%d0
   10012:	c000           	andb %d0,%d0
   10014:	0000 f000      	orib #0,%d0
   10018:	0001 f800      	orib #0,%d1
   1001c:	0001 fc00      	orib #0,%d1
   10020:	0007 fc00      	orib #0,%d7
   10024:	000a           	.short 0x000a
   10026:	fe00 0000      	cp1nop #1
   1002a:	3e00           	movew %d0,%d7
   1002c:	0007 cf00      	orib #0,%d7
   10030:	000c           	.short 0x000c
   10032:	7700           	mvsb %d0,%d3
   10034:	001f ff00      	orib #0,%sp@+
   10038:	0038 8f00 007d 	orib #0,0x7d
   1003e:	8700           	sbcd %d0,%d3
   10040:	00bf 8300 005f 	oril #-2097151905,%d7
   10046:	0700           	btst %d3,%d0
   10048:	00ae 0e80 0018 	oril #243269656,%fp@(13840)
   1004e:	3610
   10050:	0467 cf00      	subiw #-12544,%sp@-
   10054:	0809           	.short 0x0809
   10056:	3c00           	movew %d0,%d6
   10058:	1001           	moveb %d1,%d0
   1005a:	f802 1003      	tblub %d2,%d3,%d1
   1005e:	f002           	.short 0xf002
   10060:	0001 c000      	orib #0,%d1
	...
   10070:	0007 c000      	orib #0,%d7
   10074:	001f f000      	orib #0,%sp@+
   10078:	003f           	.short 0x003f
   1007a:	f800           	.short 0xf800
   1007c:	007f           	.short 0x007f
   1007e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   10082:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   10086:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   1008a:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   1008e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10092:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10096:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1009a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1009e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   100a2:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   100a6:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   100aa:	ff80 0fff      	cp1stl %d0,%d0,#8,#511
   100ae:	fff0           	.short 0xfff0
   100b0:	1dff           	.short 0x1dff
   100b2:	ffd8           	.short 0xffd8
   100b4:	187f           	.short 0x187f
   100b6:	fc0c 303f      	cp0ldb %a4,%d3,#1,#63
   100ba:	f806           	.short 0xf806
   100bc:	301f           	movew %sp@+,%d0
   100be:	f006           	.short 0xf006
   100c0:	2007           	movel %d7,%d0
   100c2:	c002           	andb %d2,%d0
   100c4:	4000           	negxb %d0
   100c6:	0001 4000      	orib #0,%d1
   100ca:	0001 0000      	orib #0,%d1
   100ce:	0000 0007      	orib #7,%d0
   100d2:	c000           	andb %d0,%d0
   100d4:	001f f000      	orib #0,%sp@+
   100d8:	003f           	.short 0x003f
   100da:	f800           	.short 0xf800
   100dc:	007f           	.short 0x007f
   100de:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   100e2:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   100e6:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   100ea:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   100ee:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   100f2:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   100f6:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   100fa:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   100fe:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10102:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10106:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   1010a:	ff80 0fff      	cp1stl %d0,%d0,#8,#511
   1010e:	fff0           	.short 0xfff0
   10110:	1dff           	.short 0x1dff
   10112:	ffd8           	.short 0xffd8
   10114:	187f           	.short 0x187f
   10116:	fc0c 303f      	cp0ldb %a4,%d3,#1,#63
   1011a:	f806           	.short 0xf806
   1011c:	301f           	movew %sp@+,%d0
   1011e:	f006           	.short 0xf006
   10120:	2007           	movel %d7,%d0
   10122:	c002           	andb %d2,%d0
   10124:	4000           	negxb %d0
   10126:	0001 4000      	orib #0,%d1
   1012a:	0001 0000      	orib #0,%d1
   1012e:	0000 0003      	orib #3,%d0
   10132:	c000           	andb %d0,%d0
   10134:	0007 f000      	orib #0,%d7
   10138:	002b f800 001f 	orib #0,%a3@(31)
   1013e:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   10142:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   10146:	fe00 002f      	cp1ldb %d0,%d0,#1,#47
   1014a:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   1014e:	ff00 007d      	cp1stb %d0,%d0,#1,#125
   10152:	ff00 0031      	cp1stb %d0,%d0,#1,#49
   10156:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   1015a:	ff00 004e      	cp1stb %d0,%d0,#1,#78
   1015e:	8700           	sbcd %d0,%d3
   10160:	0c87 0318 2042 	cmpil #51912770,%d7
   10166:	0704           	btst %d3,%d4
   10168:	5360           	subqw #1,%a0@-
   1016a:	0fc2           	bset %d7,%d2
   1016c:	2338 3fc0      	movel 0x3fc0,%a1@-
   10170:	00bf ff81 c01f 	oril #-8273889,%d7
   10176:	fe01 800f      	cp1ldb %d1,%a0,#1,#15
   1017a:	f801 0003      	tblub %d1,%d3,%d0
   1017e:	f000           	.short 0xf000
   10180:	0003 c000      	orib #0,%d3
	...
   10190:	0001 c000      	orib #0,%d1
   10194:	0000 f000      	orib #0,%d0
   10198:	0001 f800      	orib #0,%d1
   1019c:	0001 fc00      	orib #0,%d1
   101a0:	0007 fc00      	orib #0,%d7
   101a4:	000a           	.short 0x000a
   101a6:	fe00 0000      	cp1nop #1
   101aa:	3e00           	movew %d0,%d7
   101ac:	0007 cf00      	orib #0,%d7
   101b0:	000c           	.short 0x000c
   101b2:	f700           	.short 0xf700
   101b4:	0010 3f00      	orib #0,%a0@
   101b8:	003f           	.short 0x003f
   101ba:	ff00 005e      	cp1stb %d0,%d0,#1,#94
   101be:	c700           	abcd %d0,%d3
   101c0:	009f c308 004f 	oril #-1022885809,%sp@+
   101c6:	8700           	sbcd %d0,%d3
   101c8:	5067           	addqw #8,%sp@-
   101ca:	0e02           	.short 0x0e02
   101cc:	2218           	movel %a0@+,%d1
   101ce:	3640           	moveaw %d0,%a3
   101d0:	0027 cf01      	orib #1,%sp@-
   101d4:	4009           	.short 0x4009
   101d6:	3e00           	movew %d0,%d7
   101d8:	0001 f800      	orib #0,%d1
   101dc:	0003 f000      	orib #0,%d3
   101e0:	0001 c000      	orib #0,%d1
	...
   101f0:	0007 c000      	orib #0,%d7
   101f4:	001f f000      	orib #0,%sp@+
   101f8:	003f           	.short 0x003f
   101fa:	f800           	.short 0xf800
   101fc:	007f           	.short 0x007f
   101fe:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   10202:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   10206:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   1020a:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   1020e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10212:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10216:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1021a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1021e:	ff00 1dff      	cp1stb %d1,%d0,#7,#511
   10222:	ff38           	.short 0xff38
   10224:	3fff           	.short 0x3fff
   10226:	ff7c           	.short 0xff7c
   10228:	73ff           	.short 0x73ff
   1022a:	ffc6           	.short 0xffc6
   1022c:	63ff ffc2 40ff 	blsl 0xffc3432d
   10232:	ff83 c07f      	cp1stl %a4,%d3,#1,#127
   10236:	fe01 803f      	cp1ldb %d1,%a0,#1,#63
   1023a:	f801           	.short 0xf801
   1023c:	001f f000      	orib #0,%sp@+
   10240:	0007 c000      	orib #0,%d7
	...
   10250:	0007 c000      	orib #0,%d7
   10254:	001f f000      	orib #0,%sp@+
   10258:	003f           	.short 0x003f
   1025a:	f800           	.short 0xf800
   1025c:	007f           	.short 0x007f
   1025e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   10262:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   10266:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   1026a:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   1026e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10272:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10276:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1027a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1027e:	ff00 1dff      	cp1stb %d1,%d0,#7,#511
   10282:	ff38           	.short 0xff38
   10284:	3fff           	.short 0x3fff
   10286:	ff7c           	.short 0xff7c
   10288:	73ff           	.short 0x73ff
   1028a:	ffc6           	.short 0xffc6
   1028c:	63ff ffc2 40ff 	blsl 0xffc3438d
   10292:	ff83 c07f      	cp1stl %a4,%d3,#1,#127
   10296:	fe01 803f      	cp1ldb %d1,%a0,#1,#63
   1029a:	f801           	.short 0xf801
   1029c:	001f f000      	orib #0,%sp@+
   102a0:	0007 c000      	orib #0,%d7
	...
   102b0:	0003 c000      	orib #0,%d3
   102b4:	0007 f000      	orib #0,%d7
   102b8:	002b f800 001f 	orib #0,%a3@(31)
   102be:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   102c2:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   102c6:	fe00 002f      	cp1ldb %d0,%d0,#1,#47
   102ca:	fe00 303f      	cp1ldb %d0,%d3,#1,#63
   102ce:	ff00 287d      	cp1stb %d2,%d0,#5,#125
   102d2:	ff06 f031      	cp1stb %sp,%d6,#1,#49
   102d6:	ff0f 4463      	cp1stb %d4,%sp,#3,#99
   102da:	ff31           	.short 0xff31
   102dc:	02ff           	.short 0x02ff
   102de:	ff11 8003      	cp1stb %a0,%a1@,#1,#3
   102e2:	8321           	orb %d1,%a1@-
   102e4:	0241 0760      	andiw #1888,%d1
   102e8:	0060 0fc0      	oriw #4032,%a0@-
   102ec:	0038 3f80 003f 	orib #-128,0x3f
   102f2:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   102f6:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   102fa:	f800 0003      	tblub %d0,%d3,%d0
   102fe:	f000           	.short 0xf000
   10300:	0003 c000      	orib #0,%d3
	...
   10310:	0001 c000      	orib #0,%d1
   10314:	0000 f000      	orib #0,%d0
   10318:	0001 f800      	orib #0,%d1
   1031c:	0001 fc00      	orib #0,%d1
   10320:	0007 fc00      	orib #0,%d7
   10324:	000a           	.short 0x000a
   10326:	fe00 0000      	cp1nop #1
   1032a:	3e00           	movew %d0,%d7
   1032c:	1007           	moveb %d7,%d0
   1032e:	cf00           	abcd %d0,%d7
   10330:	080c           	.short 0x080c
   10332:	7702           	mvsb %d2,%d3
   10334:	2010           	movel %a0@,%d0
   10336:	ff05 4400      	cp1stb %d4,%d5,#3,#0
   1033a:	0f00           	btst %d7,%d0
   1033c:	027f           	.short 0x027f
   1033e:	ff10 800f      	cp1stb %a0,%a0@,#1,#15
   10342:	e321           	aslb %d1,%d1
   10344:	0047 c720      	oriw #-14560,%d7
   10348:	0063 8ec0      	oriw #-28992,%a3@-
   1034c:	0018 3680      	orib #-128,%a0@+
   10350:	0027 cf00      	orib #0,%sp@-
   10354:	0009           	.short 0x0009
   10356:	3c00           	movew %d0,%d6
   10358:	0001 f800      	orib #0,%d1
   1035c:	0003 f000      	orib #0,%d3
   10360:	0001 c000      	orib #0,%d1
	...
   10370:	0007 c000      	orib #0,%d7
   10374:	001f f000      	orib #0,%sp@+
   10378:	003f           	.short 0x003f
   1037a:	f800           	.short 0xf800
   1037c:	007f           	.short 0x007f
   1037e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   10382:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   10386:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   1038a:	fe00 31ff      	cp1ldb %d0,%d3,#1,#511
   1038e:	ff00 79ff      	cp1stb %d7,%d0,#5,#511
   10392:	ff0e f9ff      	cp1stb %sp,%fp,#5,#511
   10396:	ff1f cdff      	cp1stb %a4,%sp@+,#7,#511
   1039a:	ff31           	.short 0xff31
   1039c:	8fff           	.short 0x8fff
   1039e:	ff31           	.short 0xff31
   103a0:	87ff           	.short 0x87ff
   103a2:	ff61 07ff      	cp1stw %d0,%a1@-,#4,#511
   103a6:	ffe0           	.short 0xffe0
   103a8:	03ff           	.short 0x03ff
   103aa:	ffc0           	.short 0xffc0
   103ac:	01ff           	.short 0x01ff
   103ae:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   103b2:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   103b6:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   103ba:	f800           	.short 0xf800
   103bc:	001f f000      	orib #0,%sp@+
   103c0:	0007 c000      	orib #0,%d7
	...
   103d0:	0007 c000      	orib #0,%d7
   103d4:	001f f000      	orib #0,%sp@+
   103d8:	003f           	.short 0x003f
   103da:	f800           	.short 0xf800
   103dc:	007f           	.short 0x007f
   103de:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   103e2:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   103e6:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   103ea:	fe00 31ff      	cp1ldb %d0,%d3,#1,#511
   103ee:	ff00 79ff      	cp1stb %d7,%d0,#5,#511
   103f2:	ff0e f9ff      	cp1stb %sp,%fp,#5,#511
   103f6:	ff1f cdff      	cp1stb %a4,%sp@+,#7,#511
   103fa:	ff31           	.short 0xff31
   103fc:	8fff           	.short 0x8fff
   103fe:	ff31           	.short 0xff31
   10400:	87ff           	.short 0x87ff
   10402:	ff61 07ff      	cp1stw %d0,%a1@-,#4,#511
   10406:	ffe0           	.short 0xffe0
   10408:	03ff           	.short 0x03ff
   1040a:	ffc0           	.short 0xffc0
   1040c:	01ff           	.short 0x01ff
   1040e:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   10412:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   10416:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   1041a:	f800           	.short 0xf800
   1041c:	001f f000      	orib #0,%sp@+
   10420:	0007 c000      	orib #0,%d7
	...
   10430:	0003 c000      	orib #0,%d3
   10434:	0007 f000      	orib #0,%d7
   10438:	002b f800 001f 	orib #0,%a3@(31)
   1043e:	fc00 401f      	cp0ldb %d0,%d4,#1,#31
   10442:	fc00 701f      	cp0ldb %d0,%d7,#1,#31
   10446:	fe07 902f      	cp1ldb %d7,%a1,#1,#47
   1044a:	fe0d 103f      	cp1ldb %a5,%d1,#1,#63
   1044e:	ff09 087f      	cp1stb %d0,%a1,#5,#127
   10452:	ff08 0831      	cp1stb %d0,%a0,#5,#49
   10456:	ff10 0463      	cp1stb %d0,%a0@,#3,#99
   1045a:	ff10 0641      	cp1stb %d0,%a0@,#4,#65
   1045e:	ff30           	.short 0xff30
   10460:	02ff           	.short 0x02ff
   10462:	ff20 0040      	cp1stb %d0,%a0@-,#1,#64
   10466:	8760           	orw %d3,%a0@-
   10468:	0060 0fc0      	oriw #4032,%a0@-
   1046c:	0038 3f80 003f 	orib #-128,0x3f
   10472:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   10476:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   1047a:	f800 0003      	tblub %d0,%d3,%d0
   1047e:	f000           	.short 0xf000
   10480:	0003 c000      	orib #0,%d3
	...
   10490:	0001 c000      	orib #0,%d1
   10494:	0000 f000      	orib #0,%d0
   10498:	0001 f800      	orib #0,%d1
   1049c:	0001 fc00      	orib #0,%d1
   104a0:	0007 fc00      	orib #0,%d7
   104a4:	100a           	.short 0x100a
   104a6:	fe01 0000      	cp1ldb %d1,%d0,#1,#0
   104aa:	3e04           	movew %d4,%d7
   104ac:	0007 cf00      	orib #0,%d7
   104b0:	080c           	.short 0x080c
   104b2:	7708           	mvsb %a0,%d3
   104b4:	0011 df00      	orib #0,%a1@
   104b8:	0400 ff00      	subib #0,%d0
   104bc:	0000 0710      	orib #16,%d0
   104c0:	007f           	.short 0x007f
   104c2:	ff00 0043      	cp1stb %d0,%d0,#1,#67
   104c6:	e720           	aslb %d3,%d0
   104c8:	0061 cec0      	oriw #-12608,%a1@-
   104cc:	0018 3680      	orib #-128,%a0@+
   104d0:	0027 cf00      	orib #0,%sp@-
   104d4:	0009           	.short 0x0009
   104d6:	3c00           	movew %d0,%d6
   104d8:	0001 f800      	orib #0,%d1
   104dc:	0003 f000      	orib #0,%d3
   104e0:	0001 c000      	orib #0,%d1
	...
   104f0:	0007 c000      	orib #0,%d7
   104f4:	001f f000      	orib #0,%sp@+
   104f8:	003f           	.short 0x003f
   104fa:	f800           	.short 0xf800
   104fc:	007f           	.short 0x007f
   104fe:	fc00 407f      	cp0ldb %d0,%d4,#1,#127
   10502:	fc00 f0ff      	cp0ldb %d0,%sp,#1,#255
   10506:	fe0f b0ff      	cp1ldb %sp,%a3,#1,#255
   1050a:	fe0d 91ff      	cp1ldb %a5,%a1,#1,#511
   1050e:	ff09 19ff      	cp1stb %d1,%a1,#5,#511
   10512:	ff18 09ff      	cp1stb %d0,%a0@+,#5,#511
   10516:	ff10 0dff      	cp1stb %d0,%a0@,#7,#511
   1051a:	ff30           	.short 0xff30
   1051c:	0fff           	.short 0x0fff
   1051e:	ff30           	.short 0xff30
   10520:	07ff           	.short 0x07ff
   10522:	ff60 07ff      	cp1stw %d0,%a0@-,#4,#511
   10526:	ffe0           	.short 0xffe0
   10528:	03ff           	.short 0x03ff
   1052a:	ffc0           	.short 0xffc0
   1052c:	01ff           	.short 0x01ff
   1052e:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   10532:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   10536:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   1053a:	f800           	.short 0xf800
   1053c:	001f f000      	orib #0,%sp@+
   10540:	0007 c000      	orib #0,%d7
	...
   10550:	0007 c000      	orib #0,%d7
   10554:	001f f000      	orib #0,%sp@+
   10558:	003f           	.short 0x003f
   1055a:	f800           	.short 0xf800
   1055c:	007f           	.short 0x007f
   1055e:	fc00 407f      	cp0ldb %d0,%d4,#1,#127
   10562:	fc00 f0ff      	cp0ldb %d0,%sp,#1,#255
   10566:	fe0f b0ff      	cp1ldb %sp,%a3,#1,#255
   1056a:	fe0d 91ff      	cp1ldb %a5,%a1,#1,#511
   1056e:	ff09 19ff      	cp1stb %d1,%a1,#5,#511
   10572:	ff18 09ff      	cp1stb %d0,%a0@+,#5,#511
   10576:	ff10 0dff      	cp1stb %d0,%a0@,#7,#511
   1057a:	ff30           	.short 0xff30
   1057c:	0fff           	.short 0x0fff
   1057e:	ff30           	.short 0xff30
   10580:	07ff           	.short 0x07ff
   10582:	ff60 07ff      	cp1stw %d0,%a0@-,#4,#511
   10586:	ffe0           	.short 0xffe0
   10588:	03ff           	.short 0x03ff
   1058a:	ffc0           	.short 0xffc0
   1058c:	01ff           	.short 0x01ff
   1058e:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   10592:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   10596:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   1059a:	f800           	.short 0xf800
   1059c:	001f f000      	orib #0,%sp@+
   105a0:	0007 c000      	orib #0,%d7
	...
   105b0:	0003 c000      	orib #0,%d3
   105b4:	0007 f000      	orib #0,%d7
   105b8:	002b f800 081f 	orib #0,%a3@(2079)
   105be:	fc18 101f      	cp0ldb %a0@+,%d1,#1,#31
   105c2:	fc0c 101f      	cp0ldb %a4,%d1,#1,#31
   105c6:	fe0c 102f      	cp1ldb %a4,%d1,#1,#47
   105ca:	fe0c 103f      	cp1ldb %a4,%d1,#1,#63
   105ce:	ff0c 207f      	cp1stb %d2,%a4,#1,#127
   105d2:	ff06 2031      	cp1stb %d2,%d6,#1,#49
   105d6:	ff06 2063      	cp1stb %d2,%d6,#1,#99
   105da:	ff06 3041      	cp1stb %d3,%d6,#1,#65
   105de:	ff06 1efb      	cp1stb %d1,%d6,#8,#251
   105e2:	ff0c 0e5f      	cp1stb %d0,%a4,#8,#95
   105e6:	f73c           	.short 0xf73c
   105e8:	0360           	bchg %d1,%a0@-
   105ea:	4ff0 0138 3fc0 	lea %a0@(3fc0003f,%d0:w),%sp
   105f0:	003f
   105f2:	ff80 001f      	cp1stl %d0,%d0,#1,#31
   105f6:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   105fa:	f800 0003      	tblub %d0,%d3,%d0
   105fe:	f000           	.short 0xf000
   10600:	0003 c000      	orib #0,%d3
	...
   10610:	0001 c000      	orib #0,%d1
   10614:	0000 f000      	orib #0,%d0
   10618:	0001 f800      	orib #0,%d1
   1061c:	0001 fc10      	orib #16,%d1
   10620:	1007           	moveb %d7,%d0
   10622:	fc04 100a      	cp0ldb %d4,%d1,#1,#10
   10626:	fe04 1000      	cp1ldb %d4,%d1,#1,#0
   1062a:	3e04           	movew %d4,%d7
   1062c:	1007           	moveb %d7,%d0
   1062e:	cf08           	abcd %a0@-,%sp@-
   10630:	200c           	movel %a4,%d0
   10632:	7702           	mvsb %d2,%d3
   10634:	2011           	movel %a1@,%d0
   10636:	1f02           	moveb %d2,%sp@-
   10638:	2000           	movel %d0,%d0
   1063a:	ef02           	aslb #7,%d2
   1063c:	1001           	moveb %d1,%d0
   1063e:	d702           	addxb %d2,%d3
   10640:	0ef8           	.short 0x0ef8
   10642:	3f00           	movew %d0,%sp@-
   10644:	025f f704      	andiw #-2300,%sp@+
   10648:	0060 ee10      	oriw #-4592,%a0@-
   1064c:	0018 3640      	orib #64,%a0@+
   10650:	0027 cf80      	orib #-128,%sp@-
   10654:	0009           	.short 0x0009
   10656:	3c00           	movew %d0,%d6
   10658:	0001 f800      	orib #0,%d1
   1065c:	0003 f000      	orib #0,%d3
   10660:	0001 c000      	orib #0,%d1
	...
   10670:	0007 c000      	orib #0,%d7
   10674:	001f f000      	orib #0,%sp@+
   10678:	003f           	.short 0x003f
   1067a:	f800           	.short 0xf800
   1067c:	187f           	.short 0x187f
   1067e:	fc18 307f      	cp0ldb %a0@+,%d3,#1,#127
   10682:	fc0c 30ff      	cp0ldb %a4,%d3,#1,#255
   10686:	fe0c 30ff      	cp1ldb %a4,%d3,#1,#255
   1068a:	fe0c 31ff      	cp1ldb %a4,%d3,#1,#511
   1068e:	ff0c 61ff      	cp1stb %d6,%a4,#1,#511
   10692:	ff06 61ff      	cp1stb %d6,%d6,#1,#511
   10696:	ff06 61ff      	cp1stb %d6,%d6,#1,#511
   1069a:	ff06 71ff      	cp1stb %d7,%d6,#1,#511
   1069e:	ff0e 3fff      	cp1stb %d3,%fp,#8,#511
   106a2:	ff1c 3fff      	cp1stb %d3,%a4@+,#8,#511
   106a6:	fffc           	.short 0xfffc
   106a8:	0fff           	.short 0x0fff
   106aa:	fff0           	.short 0xfff0
   106ac:	03ff           	.short 0x03ff
   106ae:	ffc0           	.short 0xffc0
   106b0:	007f           	.short 0x007f
   106b2:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   106b6:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   106ba:	f800           	.short 0xf800
   106bc:	001f f000      	orib #0,%sp@+
   106c0:	0007 c000      	orib #0,%d7
	...
   106d0:	0007 c000      	orib #0,%d7
   106d4:	001f f000      	orib #0,%sp@+
   106d8:	003f           	.short 0x003f
   106da:	f800           	.short 0xf800
   106dc:	187f           	.short 0x187f
   106de:	fc18 307f      	cp0ldb %a0@+,%d3,#1,#127
   106e2:	fc0c 30ff      	cp0ldb %a4,%d3,#1,#255
   106e6:	fe0c 30ff      	cp1ldb %a4,%d3,#1,#255
   106ea:	fe0c 31ff      	cp1ldb %a4,%d3,#1,#511
   106ee:	ff0c 61ff      	cp1stb %d6,%a4,#1,#511
   106f2:	ff06 61ff      	cp1stb %d6,%d6,#1,#511
   106f6:	ff06 61ff      	cp1stb %d6,%d6,#1,#511
   106fa:	ff06 71ff      	cp1stb %d7,%d6,#1,#511
   106fe:	ff0e 3fff      	cp1stb %d3,%fp,#8,#511
   10702:	ff1c 3fff      	cp1stb %d3,%a4@+,#8,#511
   10706:	fffc           	.short 0xfffc
   10708:	0fff           	.short 0x0fff
   1070a:	fff0           	.short 0xfff0
   1070c:	03ff           	.short 0x03ff
   1070e:	ffc0           	.short 0xffc0
   10710:	007f           	.short 0x007f
   10712:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   10716:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   1071a:	f800           	.short 0xf800
   1071c:	001f f000      	orib #0,%sp@+
   10720:	0007 c000      	orib #0,%d7
	...
   10730:	0003 c000      	orib #0,%d3
   10734:	0007 f000      	orib #0,%d7
   10738:	002b f800 001f 	orib #0,%a3@(31)
   1073e:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   10742:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   10746:	fe00 002f      	cp1ldb %d0,%d0,#1,#47
   1074a:	fe00 203f      	cp1ldb %d0,%d2,#1,#63
   1074e:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   10752:	ff02 4031      	cp1stb %d4,%d2,#1,#49
   10756:	ff00 4063      	cp1stb %d4,%d0,#1,#99
   1075a:	ff01 4041      	cp1stb %d4,%d1,#1,#65
   1075e:	ff00 40c3      	cp1stb %d4,%d0,#1,#195
   10762:	ff00 407b      	cp1stb %d4,%d0,#1,#123
   10766:	fec1 256f      	cp1bcbusy 0x12cd7
   1076a:	ef81           	asll #7,%d1
   1076c:	3b38 3fff      	movew 0x3fff,%a5@-
   10770:	593f           	.short 0x593f
   10772:	ff9e 001f      	cp1stl %d0,%fp@+,#1,#31
   10776:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   1077a:	f800 0003      	tblub %d0,%d3,%d0
   1077e:	f000           	.short 0xf000
   10780:	0003 c000      	orib #0,%d3
	...
   10790:	0001 c000      	orib #0,%d1
   10794:	0000 f000      	orib #0,%d0
   10798:	0001 f800      	orib #0,%d1
   1079c:	0001 fc00      	orib #0,%d1
   107a0:	0007 fc00      	orib #0,%d7
   107a4:	000a           	.short 0x000a
   107a6:	fe00 0000      	cp1nop #1
   107aa:	3e00           	movew %d0,%d7
   107ac:	2007           	movel %d7,%d0
   107ae:	cf00           	abcd %d0,%d7
   107b0:	000c           	.short 0x000c
   107b2:	7702           	mvsb %d2,%d3
   107b4:	4011           	negxb %a1@
   107b6:	1f00           	moveb %d0,%sp@-
   107b8:	4000           	negxb %d0
   107ba:	ef00           	aslb #7,%d0
   107bc:	4001           	negxb %d1
   107be:	f700           	.short 0xf700
   107c0:	40c1           	movew %sr,%d1
   107c2:	c700           	abcd %d0,%d3
   107c4:	4078 3e40      	negxw 0x3e40
   107c8:	216f ee80 0018 	movel %sp@(-4480),%a0@(24)
   107ce:	3601           	movew %d1,%d3
   107d0:	1927           	moveb %sp@-,%a4@-
   107d2:	cf9e           	andl %d7,%fp@+
   107d4:	0009           	.short 0x0009
   107d6:	3c00           	movew %d0,%d6
   107d8:	0001 f800      	orib #0,%d1
   107dc:	0003 f000      	orib #0,%d3
   107e0:	0001 c000      	orib #0,%d1
	...
   107f0:	0007 c000      	orib #0,%d7
   107f4:	001f f000      	orib #0,%sp@+
   107f8:	003f           	.short 0x003f
   107fa:	f800           	.short 0xf800
   107fc:	007f           	.short 0x007f
   107fe:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   10802:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   10806:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   1080a:	fe00 21ff      	cp1ldb %d0,%d2,#1,#511
   1080e:	ff00 41ff      	cp1stb %d4,%d0,#1,#511
   10812:	ff02 c1ff      	cp1stb %a4,%d2,#1,#511
   10816:	ff01 c1ff      	cp1stb %a4,%d1,#1,#511
   1081a:	ff01 c1ff      	cp1stb %a4,%d1,#1,#511
   1081e:	ff01 c1ff      	cp1stb %a4,%d1,#1,#511
   10822:	ff01 c3ff      	cp1stb %a4,%d1,#2,#511
   10826:	ffc1           	.short 0xffc1
   10828:	e7ff           	.short 0xe7ff
   1082a:	ffc3           	.short 0xffc3
   1082c:	7fff           	.short 0x7fff
   1082e:	ffff           	.short 0xffff
   10830:	797f           	.short 0x797f
   10832:	ff9e 007f      	cp1stl %d0,%fp@+,#1,#127
   10836:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   1083a:	f800           	.short 0xf800
   1083c:	001f f000      	orib #0,%sp@+
   10840:	0007 c000      	orib #0,%d7
	...
   10850:	0007 c000      	orib #0,%d7
   10854:	001f f000      	orib #0,%sp@+
   10858:	003f           	.short 0x003f
   1085a:	f800           	.short 0xf800
   1085c:	007f           	.short 0x007f
   1085e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   10862:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   10866:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   1086a:	fe00 21ff      	cp1ldb %d0,%d2,#1,#511
   1086e:	ff00 41ff      	cp1stb %d4,%d0,#1,#511
   10872:	ff02 c1ff      	cp1stb %a4,%d2,#1,#511
   10876:	ff01 c1ff      	cp1stb %a4,%d1,#1,#511
   1087a:	ff01 c1ff      	cp1stb %a4,%d1,#1,#511
   1087e:	ff01 c1ff      	cp1stb %a4,%d1,#1,#511
   10882:	ff01 c3ff      	cp1stb %a4,%d1,#2,#511
   10886:	ffc1           	.short 0xffc1
   10888:	e7ff           	.short 0xe7ff
   1088a:	ffc3           	.short 0xffc3
   1088c:	7fff           	.short 0x7fff
   1088e:	ffff           	.short 0xffff
   10890:	797f           	.short 0x797f
   10892:	ff9e 007f      	cp1stl %d0,%fp@+,#1,#127
   10896:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   1089a:	f800           	.short 0xf800
   1089c:	001f f000      	orib #0,%sp@+
   108a0:	0007 c000      	orib #0,%d7
	...
   108b0:	0003 c000      	orib #0,%d3
   108b4:	0007 f000      	orib #0,%d7
   108b8:	002b f800 001f 	orib #0,%a3@(31)
   108be:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   108c2:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   108c6:	fe00 002f      	cp1ldb %d0,%d0,#1,#47
   108ca:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   108ce:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   108d2:	ff00 0031      	cp1stb %d0,%d0,#1,#49
   108d6:	ff00 0063      	cp1stb %d0,%d0,#1,#99
   108da:	ff00 0041      	cp1stb %d0,%d0,#1,#65
   108de:	ff00 00c3      	cp1stb %d0,%d0,#1,#195
   108e2:	ff00 80e3      	cp1stb %a0,%d0,#1,#227
   108e6:	ff01 8071      	cp1stb %a0,%d1,#1,#113
   108ea:	ff81 807f      	cp1stl %a0,%d1,#1,#127
   108ee:	ffc0           	.short 0xffc0
   108f0:	c33f           	.short 0xc33f
   108f2:	ff61 461f      	cp1stw %d4,%a1@-,#4,#31
   108f6:	fc30           	.short 0xfc30
   108f8:	ac0f f819      	macl %sp,%d6
   108fc:	7803           	moveq #3,%d4
   108fe:	f00e           	.short 0xf00e
   10900:	3003           	movew %d3,%d0
   10902:	c00c           	.short 0xc00c
	...
   10910:	0001 c000      	orib #0,%d1
   10914:	0000 f000      	orib #0,%d0
   10918:	0001 f800      	orib #0,%d1
   1091c:	0001 fc00      	orib #0,%d1
   10920:	0007 fc00      	orib #0,%d7
   10924:	000a           	.short 0x000a
   10926:	fe00 0000      	cp1nop #1
   1092a:	3e00           	movew %d0,%d7
   1092c:	0007 cf00      	orib #0,%d7
   10930:	000c           	.short 0x000c
   10932:	7700           	mvsb %d0,%d3
   10934:	0011 1f00      	orib #0,%a1@
   10938:	0000 ef00      	orib #0,%d0
   1093c:	0000 f700      	orib #0,%d0
   10940:	00c1           	bitrev %d1
   10942:	7700           	mvsb %d0,%d3
   10944:	80e0           	divuw %a0@-,%d0
   10946:	ef01           	aslb #7,%d1
   10948:	8071 1e81      	orw %a1@(ffffffffffffff81,%d1:l:8),%d0
   1094c:	005c 7640      	oriw #30272,%a4@+
   10950:	4127           	chkl %sp@-,%d0
   10952:	df20           	addb %d7,%a0@-
   10954:	4209           	.short 0x4209
   10956:	7c10           	moveq #16,%d6
   10958:	2401           	movel %d1,%d2
   1095a:	f808           	.short 0xf808
   1095c:	0803 f000      	btst #0,%d3
   10960:	3001           	movew %d1,%d0
   10962:	c00c           	.short 0xc00c
	...
   10970:	0007 c000      	orib #0,%d7
   10974:	001f f000      	orib #0,%sp@+
   10978:	003f           	.short 0x003f
   1097a:	f800           	.short 0xf800
   1097c:	007f           	.short 0x007f
   1097e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   10982:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   10986:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   1098a:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   1098e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10992:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10996:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1099a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1099e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   109a2:	ff00 81ff      	cp1stb %a0,%d0,#1,#511
   109a6:	ff01 81ff      	cp1stb %a0,%d1,#1,#511
   109aa:	ff81 83ff      	cp1stl %a0,%d1,#2,#511
   109ae:	ffc1           	.short 0xffc1
   109b0:	c7ff           	.short 0xc7ff
   109b2:	ffe1           	.short 0xffe1
   109b4:	ce7f           	.short 0xce7f
   109b6:	fc71           	.short 0xfc71
   109b8:	fc3f           	.short 0xfc3f
   109ba:	f83b           	.short 0xf83b
   109bc:	781f           	moveq #31,%d4
   109be:	f01e           	.short 0xf01e
   109c0:	3007           	movew %d7,%d0
   109c2:	c00c           	.short 0xc00c
	...
   109d0:	0007 c000      	orib #0,%d7
   109d4:	001f f000      	orib #0,%sp@+
   109d8:	003f           	.short 0x003f
   109da:	f800           	.short 0xf800
   109dc:	007f           	.short 0x007f
   109de:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   109e2:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   109e6:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   109ea:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   109ee:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   109f2:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   109f6:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   109fa:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   109fe:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10a02:	ff00 81ff      	cp1stb %a0,%d0,#1,#511
   10a06:	ff01 81ff      	cp1stb %a0,%d1,#1,#511
   10a0a:	ff81 83ff      	cp1stl %a0,%d1,#2,#511
   10a0e:	ffc1           	.short 0xffc1
   10a10:	c7ff           	.short 0xc7ff
   10a12:	ffe1           	.short 0xffe1
   10a14:	ce7f           	.short 0xce7f
   10a16:	fc71           	.short 0xfc71
   10a18:	fc3f           	.short 0xfc3f
   10a1a:	f83b           	.short 0xf83b
   10a1c:	781f           	moveq #31,%d4
   10a1e:	f01e           	.short 0xf01e
   10a20:	3007           	movew %d7,%d0
   10a22:	c00c           	.short 0xc00c
	...
   10a30:	0003 c000      	orib #0,%d3
   10a34:	0007 f000      	orib #0,%d7
   10a38:	002b f800 001f 	orib #0,%a3@(31)
   10a3e:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   10a42:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   10a46:	fe00 002f      	cp1ldb %d0,%d0,#1,#47
   10a4a:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   10a4e:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   10a52:	ff00 0031      	cp1stb %d0,%d0,#1,#49
   10a56:	ff00 0063      	cp1stb %d0,%d0,#1,#99
   10a5a:	ff00 0041      	cp1stb %d0,%d0,#1,#65
   10a5e:	ff00 02c3      	cp1stb %d0,%d0,#2,#195
   10a62:	ff00 027b      	cp1stb %d0,%d0,#2,#123
   10a66:	ff00 00ef      	cp1stb %d0,%d0,#1,#239
   10a6a:	ef80           	asll #7,%d0
   10a6c:	01b8 3f90      	bclr %d0,0x3f90
   10a70:	0cbf ff88 181f 	cmpil #-7858145,%d7
   10a76:	fc04 100f      	cp0ldb %d4,%d1,#1,#15
   10a7a:	f802 1003      	tblub %d2,%d3,%d1
   10a7e:	f002           	.short 0xf002
   10a80:	2003           	movel %d3,%d0
   10a82:	c002           	andb %d2,%d0
   10a84:	0000 0001      	orib #1,%d0
   10a88:	4000           	negxb %d0
   10a8a:	0001 0000      	orib #0,%d1
   10a8e:	0000 0001      	orib #1,%d0
   10a92:	c000           	andb %d0,%d0
   10a94:	0000 f000      	orib #0,%d0
   10a98:	0001 f800      	orib #0,%d1
   10a9c:	0001 fc00      	orib #0,%d1
   10aa0:	0007 fc00      	orib #0,%d7
   10aa4:	000a           	.short 0x000a
   10aa6:	fe00 0000      	cp1nop #1
   10aaa:	3e00           	movew %d0,%d7
   10aac:	0007 cf00      	orib #0,%d7
   10ab0:	000c           	.short 0x000c
   10ab2:	7700           	mvsb %d0,%d3
   10ab4:	0011 1f00      	orib #0,%a1@
   10ab8:	0000 ef00      	orib #0,%d0
   10abc:	0001 f700      	orib #0,%d1
   10ac0:	02c1           	byterev %d1
   10ac2:	c700           	abcd %d0,%d3
   10ac4:	0278 3f00 00ef 	andiw #16128,0xef
   10aca:	ee80           	asrl #7,%d0
   10acc:	0018 3610      	orib #16,%a0@+
   10ad0:	0427 cf00      	subib #0,%sp@-
   10ad4:	0809           	.short 0x0809
   10ad6:	3c00           	movew %d0,%d6
   10ad8:	1001           	moveb %d1,%d0
   10ada:	f802 1003      	tblub %d2,%d3,%d1
   10ade:	f002           	.short 0xf002
   10ae0:	0001 c000      	orib #0,%d1
	...
   10af0:	0007 c000      	orib #0,%d7
   10af4:	001f f000      	orib #0,%sp@+
   10af8:	003f           	.short 0x003f
   10afa:	f800           	.short 0xf800
   10afc:	007f           	.short 0x007f
   10afe:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   10b02:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   10b06:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   10b0a:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   10b0e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10b12:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10b16:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10b1a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10b1e:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   10b22:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   10b26:	ff80 07ff      	cp1stl %d0,%d0,#4,#511
   10b2a:	ff80 0fff      	cp1stl %d0,%d0,#8,#511
   10b2e:	fff0           	.short 0xfff0
   10b30:	1dff           	.short 0x1dff
   10b32:	ffd8           	.short 0xffd8
   10b34:	187f           	.short 0x187f
   10b36:	fc0c 303f      	cp0ldb %a4,%d3,#1,#63
   10b3a:	f806           	.short 0xf806
   10b3c:	301f           	movew %sp@+,%d0
   10b3e:	f006           	.short 0xf006
   10b40:	2007           	movel %d7,%d0
   10b42:	c002           	andb %d2,%d0
   10b44:	4000           	negxb %d0
   10b46:	0001 4000      	orib #0,%d1
   10b4a:	0001 0000      	orib #0,%d1
   10b4e:	0000 0007      	orib #7,%d0
   10b52:	c000           	andb %d0,%d0
   10b54:	001f f000      	orib #0,%sp@+
   10b58:	003f           	.short 0x003f
   10b5a:	f800           	.short 0xf800
   10b5c:	007f           	.short 0x007f
   10b5e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   10b62:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   10b66:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   10b6a:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   10b6e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10b72:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10b76:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10b7a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10b7e:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   10b82:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   10b86:	ff80 07ff      	cp1stl %d0,%d0,#4,#511
   10b8a:	ff80 0fff      	cp1stl %d0,%d0,#8,#511
   10b8e:	fff0           	.short 0xfff0
   10b90:	1dff           	.short 0x1dff
   10b92:	ffd8           	.short 0xffd8
   10b94:	187f           	.short 0x187f
   10b96:	fc0c 303f      	cp0ldb %a4,%d3,#1,#63
   10b9a:	f806           	.short 0xf806
   10b9c:	301f           	movew %sp@+,%d0
   10b9e:	f006           	.short 0xf006
   10ba0:	2007           	movel %d7,%d0
   10ba2:	c002           	andb %d2,%d0
   10ba4:	4000           	negxb %d0
   10ba6:	0001 4000      	orib #0,%d1
   10baa:	0001 0000      	orib #0,%d1
   10bae:	0000 0003      	orib #3,%d0
   10bb2:	c000           	andb %d0,%d0
   10bb4:	0007 f000      	orib #0,%d7
   10bb8:	002b f800 001f 	orib #0,%a3@(31)
   10bbe:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   10bc2:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   10bc6:	fe00 002f      	cp1ldb %d0,%d0,#1,#47
   10bca:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   10bce:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   10bd2:	ff00 0031      	cp1stb %d0,%d0,#1,#49
   10bd6:	ff00 0063      	cp1stb %d0,%d0,#1,#99
   10bda:	ff00 0041      	cp1stb %d0,%d0,#1,#65
   10bde:	ff00 0cfb      	cp1stb %d0,%d0,#7,#251
   10be2:	ff18 205f      	cp1stb %d2,%a0@+,#1,#95
   10be6:	f704           	.short 0xf704
   10be8:	5360           	subqw #1,%a0@-
   10bea:	4fc2           	.short 0x4fc2
   10bec:	2338 3fc0      	movel 0x3fc0,%a1@-
   10bf0:	003f           	.short 0x003f
   10bf2:	ff81 c01f      	cp1stl %a4,%d1,#1,#31
   10bf6:	fe01 800f      	cp1ldb %d1,%a0,#1,#15
   10bfa:	f801 0003      	tblub %d1,%d3,%d0
   10bfe:	f000           	.short 0xf000
   10c00:	0003 c000      	orib #0,%d3
	...
   10c10:	0001 c000      	orib #0,%d1
   10c14:	0000 f000      	orib #0,%d0
   10c18:	0001 f800      	orib #0,%d1
   10c1c:	0001 fc00      	orib #0,%d1
   10c20:	0007 fc00      	orib #0,%d7
   10c24:	000a           	.short 0x000a
   10c26:	fe00 0000      	cp1nop #1
   10c2a:	3e00           	movew %d0,%d7
   10c2c:	0007 cf00      	orib #0,%d7
   10c30:	000c           	.short 0x000c
   10c32:	7700           	mvsb %d0,%d3
   10c34:	0011 1f00      	orib #0,%a1@
   10c38:	0000 ef00      	orib #0,%d0
   10c3c:	0001 d700      	orib #0,%d1
   10c40:	0078 3f08 005f 	oriw #16136,0x5f
   10c46:	f700           	.short 0xf700
   10c48:	5060           	addqw #8,%a0@-
   10c4a:	ee02           	asrb #7,%d2
   10c4c:	2218           	movel %a0@+,%d1
   10c4e:	3640           	moveaw %d0,%a3
   10c50:	0027 cf01      	orib #1,%sp@-
   10c54:	4009           	.short 0x4009
   10c56:	3e00           	movew %d0,%d7
   10c58:	0001 f800      	orib #0,%d1
   10c5c:	0003 f000      	orib #0,%d3
   10c60:	0001 c000      	orib #0,%d1
	...
   10c70:	0007 c000      	orib #0,%d7
   10c74:	001f f000      	orib #0,%sp@+
   10c78:	003f           	.short 0x003f
   10c7a:	f800           	.short 0xf800
   10c7c:	007f           	.short 0x007f
   10c7e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   10c82:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   10c86:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   10c8a:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   10c8e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10c92:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10c96:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10c9a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10c9e:	ff00 1dff      	cp1stb %d1,%d0,#7,#511
   10ca2:	ff38           	.short 0xff38
   10ca4:	3fff           	.short 0x3fff
   10ca6:	ff7c           	.short 0xff7c
   10ca8:	73ff           	.short 0x73ff
   10caa:	ffc6           	.short 0xffc6
   10cac:	63ff ffc2 407f 	blsl 0xffc34d2d
   10cb2:	ff83 c07f      	cp1stl %a4,%d3,#1,#127
   10cb6:	fe01 803f      	cp1ldb %d1,%a0,#1,#63
   10cba:	f801           	.short 0xf801
   10cbc:	001f f000      	orib #0,%sp@+
   10cc0:	0007 c000      	orib #0,%d7
	...
   10cd0:	0007 c000      	orib #0,%d7
   10cd4:	001f f000      	orib #0,%sp@+
   10cd8:	003f           	.short 0x003f
   10cda:	f800           	.short 0xf800
   10cdc:	007f           	.short 0x007f
   10cde:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   10ce2:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   10ce6:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   10cea:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   10cee:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10cf2:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10cf6:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10cfa:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   10cfe:	ff00 1dff      	cp1stb %d1,%d0,#7,#511
   10d02:	ff38           	.short 0xff38
   10d04:	3fff           	.short 0x3fff
   10d06:	ff7c           	.short 0xff7c
   10d08:	73ff           	.short 0x73ff
   10d0a:	ffc6           	.short 0xffc6
   10d0c:	63ff ffc2 407f 	blsl 0xffc34d8d
   10d12:	ff83 c07f      	cp1stl %a4,%d3,#1,#127
   10d16:	fe01 803f      	cp1ldb %d1,%a0,#1,#63
   10d1a:	f801           	.short 0xf801
   10d1c:	001f f000      	orib #0,%sp@+
   10d20:	0007 c000      	orib #0,%d7
	...
   10d30:	0003 c000      	orib #0,%d3
   10d34:	0007 f000      	orib #0,%d7
   10d38:	002b f800 001f 	orib #0,%a3@(31)
   10d3e:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   10d42:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   10d46:	fe00 002f      	cp1ldb %d0,%d0,#1,#47
   10d4a:	fe00 303f      	cp1ldb %d0,%d3,#1,#63
   10d4e:	ff00 287f      	cp1stb %d2,%d0,#5,#127
   10d52:	ff06 f031      	cp1stb %sp,%d6,#1,#49
   10d56:	ff0f 4463      	cp1stb %d4,%sp,#3,#99
   10d5a:	ff31           	.short 0xff31
   10d5c:	0241 ff11      	andiw #-239,%d1
   10d60:	80ff           	.short 0x80ff
   10d62:	ff21 0240      	cp1stb %d0,%a1@-,#2,#64
   10d66:	8760           	orw %d3,%a0@-
   10d68:	0060 0fc0      	oriw #4032,%a0@-
   10d6c:	0038 3f80 003f 	orib #-128,0x3f
   10d72:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   10d76:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   10d7a:	f800 0003      	tblub %d0,%d3,%d0
   10d7e:	f000           	.short 0xf000
   10d80:	0003 c000      	orib #0,%d3
	...
   10d90:	0001 c000      	orib #0,%d1
   10d94:	0000 f000      	orib #0,%d0
   10d98:	0001 f800      	orib #0,%d1
   10d9c:	0001 fc00      	orib #0,%d1
   10da0:	0007 fc00      	orib #0,%d7
   10da4:	000a           	.short 0x000a
   10da6:	fe00 0000      	cp1nop #1
   10daa:	3e00           	movew %d0,%d7
   10dac:	1007           	moveb %d7,%d0
   10dae:	cf00           	abcd %d0,%d7
   10db0:	080c           	.short 0x080c
   10db2:	7702           	mvsb %d2,%d3
   10db4:	2011           	movel %a1@,%d0
   10db6:	df05           	addxb %d5,%d7
   10db8:	4400           	negb %d0
   10dba:	ff00 0200      	cp1stb %d0,%d0,#2,#0
   10dbe:	0710           	btst %d3,%a0@
   10dc0:	807f           	.short 0x807f
   10dc2:	ff21 0043      	cp1stb %d0,%a1@-,#1,#67
   10dc6:	e720           	aslb %d3,%d0
   10dc8:	0061 cec0      	oriw #-12608,%a1@-
   10dcc:	0018 3680      	orib #-128,%a0@+
   10dd0:	0027 cf00      	orib #0,%sp@-
   10dd4:	0009           	.short 0x0009
   10dd6:	3c00           	movew %d0,%d6
   10dd8:	0001 f800      	orib #0,%d1
   10ddc:	0003 f000      	orib #0,%d3
   10de0:	0001 c000      	orib #0,%d1
	...
   10df0:	0007 c000      	orib #0,%d7
   10df4:	001f f000      	orib #0,%sp@+
   10df8:	003f           	.short 0x003f
   10dfa:	f800           	.short 0xf800
   10dfc:	007f           	.short 0x007f
   10dfe:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   10e02:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   10e06:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   10e0a:	fe00 31ff      	cp1ldb %d0,%d3,#1,#511
   10e0e:	ff00 79ff      	cp1stb %d7,%d0,#5,#511
   10e12:	ff0e f9ff      	cp1stb %sp,%fp,#5,#511
   10e16:	ff1f cdff      	cp1stb %a4,%sp@+,#7,#511
   10e1a:	ff31           	.short 0xff31
   10e1c:	8fff           	.short 0x8fff
   10e1e:	ff31           	.short 0xff31
   10e20:	87ff           	.short 0x87ff
   10e22:	ff61 07ff      	cp1stw %d0,%a1@-,#4,#511
   10e26:	ffe0           	.short 0xffe0
   10e28:	03ff           	.short 0x03ff
   10e2a:	ffc0           	.short 0xffc0
   10e2c:	01ff           	.short 0x01ff
   10e2e:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   10e32:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   10e36:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   10e3a:	f800           	.short 0xf800
   10e3c:	001f f000      	orib #0,%sp@+
   10e40:	0007 c000      	orib #0,%d7
	...
   10e50:	0007 c000      	orib #0,%d7
   10e54:	001f f000      	orib #0,%sp@+
   10e58:	003f           	.short 0x003f
   10e5a:	f800           	.short 0xf800
   10e5c:	007f           	.short 0x007f
   10e5e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   10e62:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   10e66:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   10e6a:	fe00 31ff      	cp1ldb %d0,%d3,#1,#511
   10e6e:	ff00 79ff      	cp1stb %d7,%d0,#5,#511
   10e72:	ff0e f9ff      	cp1stb %sp,%fp,#5,#511
   10e76:	ff1f cdff      	cp1stb %a4,%sp@+,#7,#511
   10e7a:	ff31           	.short 0xff31
   10e7c:	8fff           	.short 0x8fff
   10e7e:	ff31           	.short 0xff31
   10e80:	87ff           	.short 0x87ff
   10e82:	ff61 07ff      	cp1stw %d0,%a1@-,#4,#511
   10e86:	ffe0           	.short 0xffe0
   10e88:	03ff           	.short 0x03ff
   10e8a:	ffc0           	.short 0xffc0
   10e8c:	01ff           	.short 0x01ff
   10e8e:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   10e92:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   10e96:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   10e9a:	f800           	.short 0xf800
   10e9c:	001f f000      	orib #0,%sp@+
   10ea0:	0007 c000      	orib #0,%d7
	...
   10eb0:	0003 c000      	orib #0,%d3
   10eb4:	0007 f000      	orib #0,%d7
   10eb8:	002b f800 001f 	orib #0,%a3@(31)
   10ebe:	fc00 401f      	cp0ldb %d0,%d4,#1,#31
   10ec2:	fc00 701f      	cp0ldb %d0,%d7,#1,#31
   10ec6:	fe07 902f      	cp1ldb %d7,%a1,#1,#47
   10eca:	fe0d 103f      	cp1ldb %a5,%d1,#1,#63
   10ece:	ff09 087d      	cp1stb %d0,%a1,#5,#125
   10ed2:	ff08 0831      	cp1stb %d0,%a0,#5,#49
   10ed6:	ff10 0463      	cp1stb %d0,%a0@,#3,#99
   10eda:	ff10 06ff      	cp1stb %d0,%a0@,#4,#255
   10ede:	ff30           	.short 0xff30
   10ee0:	0203 8320      	andib #32,%d3
   10ee4:	0041 0760      	oriw #1888,%d1
   10ee8:	0060 0fc0      	oriw #4032,%a0@-
   10eec:	0238 3f80 00bf 	andib #-128,0xbf
   10ef2:	ff80 001f      	cp1stl %d0,%d0,#1,#31
   10ef6:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   10efa:	f800 0003      	tblub %d0,%d3,%d0
   10efe:	f000           	.short 0xf000
   10f00:	0003 c000      	orib #0,%d3
	...
   10f10:	0001 c000      	orib #0,%d1
   10f14:	0000 f000      	orib #0,%d0
   10f18:	0001 f800      	orib #0,%d1
   10f1c:	0001 fc00      	orib #0,%d1
   10f20:	0007 fc00      	orib #0,%d7
   10f24:	100a           	.short 0x100a
   10f26:	fe01 0000      	cp1ldb %d1,%d0,#1,#0
   10f2a:	3e04           	movew %d4,%d7
   10f2c:	0007 cf00      	orib #0,%d7
   10f30:	080c           	.short 0x080c
   10f32:	7708           	mvsb %a0,%d3
   10f34:	0010 ff00      	orib #0,%a0@
   10f38:	0400 0f00      	subib #0,%d0
   10f3c:	007f           	.short 0x007f
   10f3e:	ff10 000f      	cp1stb %d0,%a0@,#1,#15
   10f42:	e300           	aslb #1,%d0
   10f44:	0047 c720      	oriw #-14560,%d7
   10f48:	0063 8ec0      	oriw #-28992,%a3@-
   10f4c:	0218 3680      	andib #-128,%a0@+
   10f50:	0027 cf80      	orib #-128,%sp@-
   10f54:	0009           	.short 0x0009
   10f56:	3e00           	movew %d0,%d7
   10f58:	0001 f800      	orib #0,%d1
   10f5c:	0003 f000      	orib #0,%d3
   10f60:	0001 c000      	orib #0,%d1
	...
   10f70:	0007 c000      	orib #0,%d7
   10f74:	001f f000      	orib #0,%sp@+
   10f78:	003f           	.short 0x003f
   10f7a:	f800           	.short 0xf800
   10f7c:	007f           	.short 0x007f
   10f7e:	fc00 407f      	cp0ldb %d0,%d4,#1,#127
   10f82:	fc00 f0ff      	cp0ldb %d0,%sp,#1,#255
   10f86:	fe0f b0ff      	cp1ldb %sp,%a3,#1,#255
   10f8a:	fe0d 91ff      	cp1ldb %a5,%a1,#1,#511
   10f8e:	ff09 19ff      	cp1stb %d1,%a1,#5,#511
   10f92:	ff18 09ff      	cp1stb %d0,%a0@+,#5,#511
   10f96:	ff10 0dff      	cp1stb %d0,%a0@,#7,#511
   10f9a:	ff30           	.short 0xff30
   10f9c:	0fff           	.short 0x0fff
   10f9e:	ff30           	.short 0xff30
   10fa0:	07ff           	.short 0x07ff
   10fa2:	ff60 07ff      	cp1stw %d0,%a0@-,#4,#511
   10fa6:	ffe0           	.short 0xffe0
   10fa8:	03ff           	.short 0x03ff
   10faa:	ffc0           	.short 0xffc0
   10fac:	03ff           	.short 0x03ff
   10fae:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   10fb2:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   10fb6:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   10fba:	f800           	.short 0xf800
   10fbc:	001f f000      	orib #0,%sp@+
   10fc0:	0007 c000      	orib #0,%d7
	...
   10fd0:	0007 c000      	orib #0,%d7
   10fd4:	001f f000      	orib #0,%sp@+
   10fd8:	003f           	.short 0x003f
   10fda:	f800           	.short 0xf800
   10fdc:	007f           	.short 0x007f
   10fde:	fc00 407f      	cp0ldb %d0,%d4,#1,#127
   10fe2:	fc00 f0ff      	cp0ldb %d0,%sp,#1,#255
   10fe6:	fe0f b0ff      	cp1ldb %sp,%a3,#1,#255
   10fea:	fe0d 91ff      	cp1ldb %a5,%a1,#1,#511
   10fee:	ff09 19ff      	cp1stb %d1,%a1,#5,#511
   10ff2:	ff18 09ff      	cp1stb %d0,%a0@+,#5,#511
   10ff6:	ff10 0dff      	cp1stb %d0,%a0@,#7,#511
   10ffa:	ff30           	.short 0xff30
   10ffc:	0fff           	.short 0x0fff
   10ffe:	ff30           	.short 0xff30
   11000:	07ff           	.short 0x07ff
   11002:	ff60 07ff      	cp1stw %d0,%a0@-,#4,#511
   11006:	ffe0           	.short 0xffe0
   11008:	03ff           	.short 0x03ff
   1100a:	ffc0           	.short 0xffc0
   1100c:	03ff           	.short 0x03ff
   1100e:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   11012:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   11016:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   1101a:	f800           	.short 0xf800
   1101c:	001f f000      	orib #0,%sp@+
   11020:	0007 c000      	orib #0,%d7
	...
   11030:	0003 c000      	orib #0,%d3
   11034:	0007 f000      	orib #0,%d7
   11038:	002b f800 081f 	orib #0,%a3@(2079)
   1103e:	fc18 101f      	cp0ldb %a0@+,%d1,#1,#31
   11042:	fc0c 101f      	cp0ldb %a4,%d1,#1,#31
   11046:	fe0c 102f      	cp1ldb %a4,%d1,#1,#47
   1104a:	fe0c 103f      	cp1ldb %a4,%d1,#1,#63
   1104e:	ff0c 207d      	cp1stb %d2,%a4,#1,#125
   11052:	ff06 2031      	cp1stb %d2,%d6,#1,#49
   11056:	ff06 207f      	cp1stb %d2,%d6,#1,#127
   1105a:	ff06 304f      	cp1stb %d3,%d6,#1,#79
   1105e:	8706           	sbcd %d6,%d3
   11060:	1e87           	moveb %d7,%sp@
   11062:	030c 0e42      	movepw %a4@(3650),%d1
   11066:	073c 0360      	btst %d3,#96
   1106a:	0ff0 0138 3fc0 	bset %d7,%a0@(3fc000bf,%d0:w)
   11070:	00bf
   11072:	ff80 001f      	cp1stl %d0,%d0,#1,#31
   11076:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   1107a:	f800 0003      	tblub %d0,%d3,%d0
   1107e:	f000           	.short 0xf000
   11080:	0003 c000      	orib #0,%d3
	...
   11090:	0001 c000      	orib #0,%d1
   11094:	0000 f000      	orib #0,%d0
   11098:	0001 f800      	orib #0,%d1
   1109c:	0001 fc10      	orib #16,%d1
   110a0:	1007           	moveb %d7,%d0
   110a2:	fc04 100a      	cp0ldb %d4,%d1,#1,#10
   110a6:	fe04 1000      	cp1ldb %d4,%d1,#1,#0
   110aa:	3e04           	movew %d4,%d7
   110ac:	1007           	moveb %d7,%d0
   110ae:	cf08           	abcd %a0@-,%sp@-
   110b0:	200c           	movel %a4,%d0
   110b2:	f702           	.short 0xf702
   110b4:	2010           	movel %a0@,%d0
   110b6:	3f02           	movew %d2,%sp@-
   110b8:	203f           	.short 0x203f
   110ba:	ff02 105e      	cp1stb %d1,%d2,#1,#94
   110be:	c702           	abcd %d2,%d3
   110c0:	0e9f           	.short 0x0e9f
   110c2:	c300           	abcd %d0,%d1
   110c4:	024f           	.short 0x024f
   110c6:	8704           	sbcd %d4,%d3
   110c8:	0067 0e10      	oriw #3600,%sp@-
   110cc:	0018 3640      	orib #64,%a0@+
   110d0:	0027 cf80      	orib #-128,%sp@-
   110d4:	0009           	.short 0x0009
   110d6:	3e00           	movew %d0,%d7
   110d8:	0001 f800      	orib #0,%d1
   110dc:	0003 f000      	orib #0,%d3
   110e0:	0001 c000      	orib #0,%d1
	...
   110f0:	0007 c000      	orib #0,%d7
   110f4:	001f f000      	orib #0,%sp@+
   110f8:	003f           	.short 0x003f
   110fa:	f800           	.short 0xf800
   110fc:	187f           	.short 0x187f
   110fe:	fc18 307f      	cp0ldb %a0@+,%d3,#1,#127
   11102:	fc0c 30ff      	cp0ldb %a4,%d3,#1,#255
   11106:	fe0c 30ff      	cp1ldb %a4,%d3,#1,#255
   1110a:	fe0c 31ff      	cp1ldb %a4,%d3,#1,#511
   1110e:	ff0c 61ff      	cp1stb %d6,%a4,#1,#511
   11112:	ff06 61ff      	cp1stb %d6,%d6,#1,#511
   11116:	ff06 61ff      	cp1stb %d6,%d6,#1,#511
   1111a:	ff06 71ff      	cp1stb %d7,%d6,#1,#511
   1111e:	ff0e 3fff      	cp1stb %d3,%fp,#8,#511
   11122:	ff1c 3fff      	cp1stb %d3,%a4@+,#8,#511
   11126:	fffc           	.short 0xfffc
   11128:	0fff           	.short 0x0fff
   1112a:	fff0           	.short 0xfff0
   1112c:	03ff           	.short 0x03ff
   1112e:	ffc0           	.short 0xffc0
   11130:	01ff           	.short 0x01ff
   11132:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   11136:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   1113a:	f800           	.short 0xf800
   1113c:	001f f000      	orib #0,%sp@+
   11140:	0007 c000      	orib #0,%d7
	...
   11150:	0007 c000      	orib #0,%d7
   11154:	001f f000      	orib #0,%sp@+
   11158:	003f           	.short 0x003f
   1115a:	f800           	.short 0xf800
   1115c:	187f           	.short 0x187f
   1115e:	fc18 307f      	cp0ldb %a0@+,%d3,#1,#127
   11162:	fc0c 30ff      	cp0ldb %a4,%d3,#1,#255
   11166:	fe0c 30ff      	cp1ldb %a4,%d3,#1,#255
   1116a:	fe0c 31ff      	cp1ldb %a4,%d3,#1,#511
   1116e:	ff0c 61ff      	cp1stb %d6,%a4,#1,#511
   11172:	ff06 61ff      	cp1stb %d6,%d6,#1,#511
   11176:	ff06 61ff      	cp1stb %d6,%d6,#1,#511
   1117a:	ff06 71ff      	cp1stb %d7,%d6,#1,#511
   1117e:	ff0e 3fff      	cp1stb %d3,%fp,#8,#511
   11182:	ff1c 3fff      	cp1stb %d3,%a4@+,#8,#511
   11186:	fffc           	.short 0xfffc
   11188:	0fff           	.short 0x0fff
   1118a:	fff0           	.short 0xfff0
   1118c:	03ff           	.short 0x03ff
   1118e:	ffc0           	.short 0xffc0
   11190:	01ff           	.short 0x01ff
   11192:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   11196:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   1119a:	f800           	.short 0xf800
   1119c:	001f f000      	orib #0,%sp@+
   111a0:	0007 c000      	orib #0,%d7
	...
   111b0:	0003 c000      	orib #0,%d3
   111b4:	0007 f000      	orib #0,%d7
   111b8:	002b f800 001f 	orib #0,%a3@(31)
   111be:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   111c2:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   111c6:	fe00 002f      	cp1ldb %d0,%d0,#1,#47
   111ca:	fe00 203f      	cp1ldb %d0,%d2,#1,#63
   111ce:	ff00 007d      	cp1stb %d0,%d0,#1,#125
   111d2:	ff02 403f      	cp1stb %d4,%d2,#1,#63
   111d6:	ff00 406d      	cp1stb %d4,%d0,#1,#109
   111da:	0f01           	btst %d7,%d1
   111dc:	405f           	negxw %sp@+
   111de:	0700           	btst %d3,%d0
   111e0:	408e           	negxl %d6
   111e2:	0300           	btst %d1,%d0
   111e4:	4044           	negxw %d4
   111e6:	06c1           	rtm %d1
   111e8:	2560 0f81      	movel %a0@-,%a2@(3969)
   111ec:	3b78 3fff 59ff 	movew 0x3fff,%a5@(23039)
   111f2:	ff9e 001f      	cp1stl %d0,%fp@+,#1,#31
   111f6:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   111fa:	f800 0003      	tblub %d0,%d3,%d0
   111fe:	f000           	.short 0xf000
   11200:	0003 c000      	orib #0,%d3
	...
   11210:	0001 c000      	orib #0,%d1
   11214:	0000 f000      	orib #0,%d0
   11218:	0001 f800      	orib #0,%d1
   1121c:	0001 fc00      	orib #0,%d1
   11220:	0007 fc00      	orib #0,%d7
   11224:	000a           	.short 0x000a
   11226:	fe00 0000      	cp1nop #1
   1122a:	3e00           	movew %d0,%d7
   1122c:	2007           	movel %d7,%d0
   1122e:	cf00           	abcd %d0,%d7
   11230:	000c           	.short 0x000c
   11232:	7702           	mvsb %d2,%d3
   11234:	401f           	negxb %sp@+
   11236:	ff00 4038      	cp1stb %d4,%d0,#1,#56
   1123a:	8f00           	sbcd %d0,%d7
   1123c:	407d           	.short 0x407d
   1123e:	8700           	sbcd %d0,%d3
   11240:	40bf           	negxl %d7
   11242:	8300           	sbcd %d0,%d1
   11244:	405f           	negxw %sp@+
   11246:	0640 212e      	addiw #8494,%d0
   1124a:	0e80           	.short 0x0e80
   1124c:	0018 3601      	orib #1,%a0@+
   11250:	19e7           	.short 0x19e7
   11252:	cf9e           	andl %d7,%fp@+
   11254:	0009           	.short 0x0009
   11256:	3c00           	movew %d0,%d6
   11258:	0001 f800      	orib #0,%d1
   1125c:	0003 f000      	orib #0,%d3
   11260:	0001 c000      	orib #0,%d1
	...
   11270:	0007 c000      	orib #0,%d7
   11274:	001f f000      	orib #0,%sp@+
   11278:	003f           	.short 0x003f
   1127a:	f800           	.short 0xf800
   1127c:	007f           	.short 0x007f
   1127e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   11282:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   11286:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   1128a:	fe00 21ff      	cp1ldb %d0,%d2,#1,#511
   1128e:	ff00 41ff      	cp1stb %d4,%d0,#1,#511
   11292:	ff02 c1ff      	cp1stb %a4,%d2,#1,#511
   11296:	ff01 c1ff      	cp1stb %a4,%d1,#1,#511
   1129a:	ff01 c1ff      	cp1stb %a4,%d1,#1,#511
   1129e:	ff01 c1ff      	cp1stb %a4,%d1,#1,#511
   112a2:	ff01 c3ff      	cp1stb %a4,%d1,#2,#511
   112a6:	ffc1           	.short 0xffc1
   112a8:	e7ff           	.short 0xe7ff
   112aa:	ffc3           	.short 0xffc3
   112ac:	7fff           	.short 0x7fff
   112ae:	ffff           	.short 0xffff
   112b0:	79ff           	.short 0x79ff
   112b2:	ff9e 007f      	cp1stl %d0,%fp@+,#1,#127
   112b6:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   112ba:	f800           	.short 0xf800
   112bc:	001f f000      	orib #0,%sp@+
   112c0:	0007 c000      	orib #0,%d7
	...
   112d0:	0007 c000      	orib #0,%d7
   112d4:	001f f000      	orib #0,%sp@+
   112d8:	003f           	.short 0x003f
   112da:	f800           	.short 0xf800
   112dc:	007f           	.short 0x007f
   112de:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   112e2:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   112e6:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   112ea:	fe00 21ff      	cp1ldb %d0,%d2,#1,#511
   112ee:	ff00 41ff      	cp1stb %d4,%d0,#1,#511
   112f2:	ff02 c1ff      	cp1stb %a4,%d2,#1,#511
   112f6:	ff01 c1ff      	cp1stb %a4,%d1,#1,#511
   112fa:	ff01 c1ff      	cp1stb %a4,%d1,#1,#511
   112fe:	ff01 c1ff      	cp1stb %a4,%d1,#1,#511
   11302:	ff01 c3ff      	cp1stb %a4,%d1,#2,#511
   11306:	ffc1           	.short 0xffc1
   11308:	e7ff           	.short 0xe7ff
   1130a:	ffc3           	.short 0xffc3
   1130c:	7fff           	.short 0x7fff
   1130e:	ffff           	.short 0xffff
   11310:	79ff           	.short 0x79ff
   11312:	ff9e 007f      	cp1stl %d0,%fp@+,#1,#127
   11316:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   1131a:	f800           	.short 0xf800
   1131c:	001f f000      	orib #0,%sp@+
   11320:	0007 c000      	orib #0,%d7
	...
   11330:	0003 c000      	orib #0,%d3
   11334:	0007 f000      	orib #0,%d7
   11338:	002b f800 001f 	orib #0,%a3@(31)
   1133e:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   11342:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   11346:	fe00 002f      	cp1ldb %d0,%d0,#1,#47
   1134a:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   1134e:	ff00 0078      	cp1stb %d0,%d0,#1,#120
   11352:	3f00           	movew %d0,%sp@-
   11354:	00ac 0f00 005a 	oril #251658330,%a4@(1792)
   1135a:	0700
   1135c:	007e           	.short 0x007e
   1135e:	0700           	btst %d3,%d0
   11360:	009c 0300 8048 	oril #50364488,%a4@+
   11366:	0701           	btst %d3,%d1
   11368:	80e0           	divuw %a0@-,%d0
   1136a:	0f81           	bclr %d7,%d1
   1136c:	80b8 3fc0      	orl 0x3fc0,%d0
   11370:	c3bf           	.short 0xc3bf
   11372:	ff61 461f      	cp1stw %d4,%a1@-,#4,#31
   11376:	fc30           	.short 0xfc30
   11378:	ac0f f819      	macl %sp,%d6
   1137c:	7803           	moveq #3,%d4
   1137e:	f00e           	.short 0xf00e
   11380:	3003           	movew %d3,%d0
   11382:	c00c           	.short 0xc00c
	...
   11390:	0001 c000      	orib #0,%d1
   11394:	0000 f000      	orib #0,%d0
   11398:	0001 f800      	orib #0,%d1
   1139c:	0001 fc00      	orib #0,%d1
   113a0:	0007 fc00      	orib #0,%d7
   113a4:	000a           	.short 0x000a
   113a6:	fe00 0009      	cp1ldb %d0,%d0,#1,#9
   113aa:	3e00           	movew %d0,%d7
   113ac:	0027 cf00      	orib #0,%sp@-
   113b0:	001c 3700      	orib #0,%a4@+
   113b4:	00ba 0f00 0071 	oril #251658353,%d2
   113ba:	0700           	btst %d3,%d0
   113bc:	007b           	.short 0x007b
   113be:	0700           	btst %d3,%d0
   113c0:	00ff           	.short 0x00ff
   113c2:	0300           	btst %d1,%d0
   113c4:	807e           	.short 0x807e
   113c6:	0701           	btst %d3,%d1
   113c8:	807c 0e81      	orw #3713,%d0
   113cc:	0018 3640      	orib #64,%a0@+
   113d0:	41a7           	chkw %sp@-,%d0
   113d2:	cf20           	andb %d7,%a0@-
   113d4:	4209           	.short 0x4209
   113d6:	3c10           	movew %a0@,%d6
   113d8:	2401           	movel %d1,%d2
   113da:	f808           	.short 0xf808
   113dc:	0803 f000      	btst #0,%d3
   113e0:	3001           	movew %d1,%d0
   113e2:	c00c           	.short 0xc00c
	...
   113f0:	0007 c000      	orib #0,%d7
   113f4:	001f f000      	orib #0,%sp@+
   113f8:	003f           	.short 0x003f
   113fa:	f800           	.short 0xf800
   113fc:	007f           	.short 0x007f
   113fe:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   11402:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   11406:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   1140a:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   1140e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   11412:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   11416:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1141a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1141e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   11422:	ff00 81ff      	cp1stb %a0,%d0,#1,#511
   11426:	ff01 81ff      	cp1stb %a0,%d1,#1,#511
   1142a:	ff81 83ff      	cp1stl %a0,%d1,#2,#511
   1142e:	ffc1           	.short 0xffc1
   11430:	c7ff           	.short 0xc7ff
   11432:	ffe1           	.short 0xffe1
   11434:	ce7f           	.short 0xce7f
   11436:	fc71           	.short 0xfc71
   11438:	fc3f           	.short 0xfc3f
   1143a:	f83b           	.short 0xf83b
   1143c:	781f           	moveq #31,%d4
   1143e:	f01e           	.short 0xf01e
   11440:	3007           	movew %d7,%d0
   11442:	c00c           	.short 0xc00c
	...
   11450:	0007 c000      	orib #0,%d7
   11454:	001f f000      	orib #0,%sp@+
   11458:	003f           	.short 0x003f
   1145a:	f800           	.short 0xf800
   1145c:	007f           	.short 0x007f
   1145e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   11462:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   11466:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   1146a:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   1146e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   11472:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   11476:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1147a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1147e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   11482:	ff00 81ff      	cp1stb %a0,%d0,#1,#511
   11486:	ff01 81ff      	cp1stb %a0,%d1,#1,#511
   1148a:	ff81 83ff      	cp1stl %a0,%d1,#2,#511
   1148e:	ffc1           	.short 0xffc1
   11490:	c7ff           	.short 0xc7ff
   11492:	ffe1           	.short 0xffe1
   11494:	ce7f           	.short 0xce7f
   11496:	fc71           	.short 0xfc71
   11498:	fc3f           	.short 0xfc3f
   1149a:	f83b           	.short 0xf83b
   1149c:	781f           	moveq #31,%d4
   1149e:	f01e           	.short 0xf01e
   114a0:	3007           	movew %d7,%d0
   114a2:	c00c           	.short 0xc00c
	...
   114b0:	0021 0800      	orib #0,%a1@-
   114b4:	0000 0000      	orib #0,%d0
   114b8:	0010 0000      	orib #0,%a0@
   114bc:	010f e900      	movepw %sp@(-5888),%d0
   114c0:	0038 3800 0065 	orib #0,0x65
   114c6:	2c00           	movel %d0,%d6
   114c8:	08d8 5e20      	bset #32,%a0@+
   114cc:	02a0 2a80 01a0 	andil #713032096,%a0@-
   114d2:	1780 0140      	moveb %d0,%a3@(0)
   114d6:	0b00           	btst %d5,%d0
   114d8:	1140 0100      	moveb %d0,%a0@(256)
   114dc:	0940           	bchg %d4,%d0
   114de:	0520           	btst %d2,%a0@-
   114e0:	0140           	bchg %d0,%d0
   114e2:	0110           	btst %d0,%a0@
   114e4:	0140           	bchg %d0,%d0
   114e6:	0500           	btst %d2,%d0
   114e8:	01a0           	bclr %d0,%a0@-
   114ea:	0b00           	btst %d5,%d0
   114ec:	02a0 0a80 08d8 	andil #176163032,%a0@-
   114f2:	3620           	movew %a0@-,%d3
   114f4:	0067 cc00      	oriw #-13312,%sp@-
   114f8:	0038 3800 010f 	orib #0,0x10f
   114fe:	e100           	aslb #8,%d0
   11500:	0010 1000      	orib #0,%a0@
   11504:	0000 0000      	orib #0,%d0
   11508:	0021 0800      	orib #0,%a1@-
	...
   11520:	0007 c000      	orib #0,%d7
   11524:	001d a000      	orib #0,%a5@+
   11528:	0038 7800 0060 	orib #0,0x60
   1152e:	3800           	movew %d0,%d4
   11530:	0060 1c00      	oriw #7168,%a0@-
   11534:	00c0           	bitrev %d0
   11536:	0800 00c0      	btst #-64,%d0
   1153a:	0600 00c0      	addib #-64,%d0
   1153e:	0600 00c0      	addib #-64,%d0
   11542:	0200 00c0      	andib #-64,%d0
   11546:	0600 0060      	addib #96,%d0
   1154a:	0c00 0060      	cmpib #96,%d0
   1154e:	0c00 0038      	cmpib #56,%d0
   11552:	3800           	movew %d0,%d4
   11554:	001f f000      	orib #0,%sp@+
   11558:	0007 c000      	orib #0,%d7
	...
   11570:	0021 0800      	orib #0,%a1@-
   11574:	0011 1000      	orib #0,%a1@
   11578:	001f f000      	orib #0,%sp@+
   1157c:	013f           	.short 0x013f
   1157e:	f900           	.short 0xf900
   11580:	00ff           	.short 0x00ff
   11582:	fe00 00fd      	cp1ldb %d0,%d0,#1,#253
   11586:	de00           	addb %d0,%d7
   11588:	09f8 6720      	bset %d4,0x6720
   1158c:	07e0           	bset %d3,%a0@-
   1158e:	37c0           	.short 0x37c0
   11590:	03e0           	bset %d1,%a0@-
   11592:	1b80 03c0      	moveb %d0,@(0)
   11596:	0f80           	bclr %d7,%d0
   11598:	13c0 0780 0fc0 	moveb %d0,0x7800fc0
   1159e:	07e0           	bset %d3,%a0@-
   115a0:	03c0           	bset %d1,%d0
   115a2:	0390           	bclr %d1,%a0@
   115a4:	03c0           	bset %d1,%d0
   115a6:	0780           	bclr %d3,%d0
   115a8:	03e0           	bset %d1,%a0@-
   115aa:	0f80           	bclr %d7,%d0
   115ac:	07e0           	bset %d3,%a0@-
   115ae:	0fc0           	bset %d7,%d0
   115b0:	09f8 3f20      	bset %d4,0x3f20
   115b4:	00ff           	.short 0x00ff
   115b6:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   115ba:	fe00 013f      	cp1ldb %d0,%d0,#1,#319
   115be:	f900           	.short 0xf900
   115c0:	001f f000      	orib #0,%sp@+
   115c4:	0011 1000      	orib #0,%a1@
   115c8:	0021 0800      	orib #0,%a1@-
   115cc:	0000 0000      	orib #0,%d0
   115d0:	0021 0800      	orib #0,%a1@-
   115d4:	0011 1000      	orib #0,%a1@
   115d8:	001f f000      	orib #0,%sp@+
   115dc:	013f           	.short 0x013f
   115de:	f900           	.short 0xf900
   115e0:	00ff           	.short 0x00ff
   115e2:	fe00 00fd      	cp1ldb %d0,%d0,#1,#253
   115e6:	fe00 09f8      	cp1ldb %d0,%d0,#5,#504
   115ea:	7f20           	mvsb %a0@-,%d7
   115ec:	07e0           	bset %d3,%a0@-
   115ee:	3fc0           	.short 0x3fc0
   115f0:	03e0           	bset %d1,%a0@-
   115f2:	1f80 03c0      	moveb %d0,@(0)
   115f6:	0f80           	bclr %d7,%d0
   115f8:	13c0 0780 0fc0 	moveb %d0,0x7800fc0
   115fe:	07e0           	bset %d3,%a0@-
   11600:	03c0           	bset %d1,%d0
   11602:	0390           	bclr %d1,%a0@
   11604:	03c0           	bset %d1,%d0
   11606:	0780           	bclr %d3,%d0
   11608:	03e0           	bset %d1,%a0@-
   1160a:	0f80           	bclr %d7,%d0
   1160c:	07e0           	bset %d3,%a0@-
   1160e:	0fc0           	bset %d7,%d0
   11610:	09f8 3f20      	bset %d4,0x3f20
   11614:	00ff           	.short 0x00ff
   11616:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   1161a:	fe00 013f      	cp1ldb %d0,%d0,#1,#319
   1161e:	f900           	.short 0xf900
   11620:	001f f000      	orib #0,%sp@+
   11624:	0011 1000      	orib #0,%a1@
   11628:	0021 0800      	orib #0,%a1@-
   1162c:	0000 0000      	orib #0,%d0
   11630:	0002 1000      	orib #0,%d2
   11634:	0040 0000      	oriw #0,%d0
   11638:	0008           	.short 0x0008
   1163a:	0100           	btst %d0,%d0
   1163c:	020f           	.short 0x020f
   1163e:	e800           	asrb #4,%d0
   11640:	0038 3800 0065 	orib #0,0x65
   11646:	2c20           	movel %a0@-,%d6
   11648:	00d8           	.short 0x00d8
   1164a:	5e00           	addqb #7,%d0
   1164c:	10a0           	moveb %a0@-,%a0@
   1164e:	2a00           	movel %d0,%d5
   11650:	01a0           	bclr %d0,%a0@-
   11652:	1780 0140      	moveb %d0,%a3@(0)
   11656:	0b00           	btst %d5,%d0
   11658:	0140           	bchg %d0,%d0
   1165a:	0120           	btst %d0,%a0@-
   1165c:	1140 0510      	moveb %d0,%a0@(1296)
   11660:	0940           	bchg %d4,%d0
   11662:	0100           	btst %d0,%d0
   11664:	0140           	bchg %d0,%d0
   11666:	0500           	btst %d2,%d0
   11668:	01a0           	bclr %d0,%a0@-
   1166a:	0b00           	btst %d5,%d0
   1166c:	00a0 0a10 00d8 	oril #168820952,%a0@-
   11672:	3600           	movew %d0,%d3
   11674:	0867 cc00      	bchg #0,%sp@-
   11678:	0038 3800 000f 	orib #0,0xf
   1167e:	e080           	asrl #8,%d0
   11680:	0100           	btst %d0,%d0
   11682:	0000 0000      	orib #0,%d0
   11686:	0400 0010      	subib #16,%d0
   1168a:	8000           	orb %d0,%d0
	...
   116a0:	0007 c000      	orib #0,%d7
   116a4:	001d a000      	orib #0,%a5@+
   116a8:	0038 7800 0060 	orib #0,0x60
   116ae:	3800           	movew %d0,%d4
   116b0:	0060 1c00      	oriw #7168,%a0@-
   116b4:	00c0           	bitrev %d0
   116b6:	0800 00c0      	btst #-64,%d0
   116ba:	0600 00c0      	addib #-64,%d0
   116be:	0600 00c0      	addib #-64,%d0
   116c2:	0200 00c0      	andib #-64,%d0
   116c6:	0600 0060      	addib #96,%d0
   116ca:	0c00 0060      	cmpib #96,%d0
   116ce:	0c00 0038      	cmpib #56,%d0
   116d2:	3800           	movew %d0,%d4
   116d4:	001f f000      	orib #0,%sp@+
   116d8:	0007 c000      	orib #0,%d7
	...
   116f0:	0002 1000      	orib #0,%d2
   116f4:	0042 2000      	oriw #8192,%d2
   116f8:	002f e100 023f 	orib #0,%sp@(575)
   116fe:	fa00           	.short 0xfa00
   11700:	027f           	.short 0x027f
   11702:	fc00 01fd      	cp0ldb %d0,%d0,#1,#509
   11706:	de60           	addw %a0@-,%d7
   11708:	01f8 6780      	bset %d0,0x6780
   1170c:	11e0 3700      	moveb %a0@-,0x3700
   11710:	0fe0           	bset %d7,%a0@-
   11712:	1b80 03c0      	moveb %d0,@(0)
   11716:	0f80           	bclr %d7,%d0
   11718:	03c0           	bset %d1,%d0
   1171a:	07e0           	bset %d3,%a0@-
   1171c:	13c0 0790 0fc0 	moveb %d0,0x7900fc0
   11722:	0380           	bclr %d1,%d0
   11724:	03c0           	bset %d1,%d0
   11726:	0780           	bclr %d3,%d0
   11728:	03e0           	bset %d1,%a0@-
   1172a:	0fe0           	bset %d7,%a0@-
   1172c:	01e0           	bset %d0,%a0@-
   1172e:	0f10           	btst %d7,%a0@
   11730:	03f8 3f00      	bset %d1,0x3f00
   11734:	0cff           	.short 0x0cff
   11736:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   1173a:	fc80 00bf      	cp0ldl %d0,%d0,#1,#191
   1173e:	f880           	.short 0xf880
   11740:	010f e800      	movepw %sp@(-6144),%d0
   11744:	0008           	.short 0x0008
   11746:	8400           	orb %d0,%d2
   11748:	0010 8000      	orib #0,%a0@
   1174c:	0000 0000      	orib #0,%d0
   11750:	0002 1000      	orib #0,%d2
   11754:	0042 2000      	oriw #8192,%d2
   11758:	002f e100 023f 	orib #0,%sp@(575)
   1175e:	fa00           	.short 0xfa00
   11760:	027f           	.short 0x027f
   11762:	fc00 01fd      	cp0ldb %d0,%d0,#1,#509
   11766:	fe60 01f8      	cp1ldw %a0@-,%d0,#1,#504
   1176a:	7f80           	mvzb %d0,%d7
   1176c:	11e0 3f00      	moveb %a0@-,0x3f00
   11770:	0fe0           	bset %d7,%a0@-
   11772:	1f80 03c0      	moveb %d0,@(0)
   11776:	0f80           	bclr %d7,%d0
   11778:	03c0           	bset %d1,%d0
   1177a:	07e0           	bset %d3,%a0@-
   1177c:	13c0 0790 0fc0 	moveb %d0,0x7900fc0
   11782:	0380           	bclr %d1,%d0
   11784:	03c0           	bset %d1,%d0
   11786:	0780           	bclr %d3,%d0
   11788:	03e0           	bset %d1,%a0@-
   1178a:	0fe0           	bset %d7,%a0@-
   1178c:	01e0           	bset %d0,%a0@-
   1178e:	0f10           	btst %d7,%a0@
   11790:	03f8 3f00      	bset %d1,0x3f00
   11794:	0cff           	.short 0x0cff
   11796:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   1179a:	fc80 00bf      	cp0ldl %d0,%d0,#1,#191
   1179e:	f880           	.short 0xf880
   117a0:	010f e800      	movepw %sp@(-6144),%d0
   117a4:	0008           	.short 0x0008
   117a6:	8400           	orb %d0,%d2
   117a8:	0010 8000      	orib #0,%a0@
   117ac:	0000 0000      	orib #0,%d0
   117b0:	0004 4000      	orib #0,%d4
   117b4:	0080 0200 0008 	oril #33554440,%d0
   117ba:	0000 000f      	orib #15,%d0
   117be:	e800           	asrb #4,%d0
   117c0:	0038 3840 0165 	orib #64,0x165
   117c6:	2d00           	movel %d0,%fp@-
   117c8:	00d8           	.short 0x00d8
   117ca:	5e00           	addqb #7,%d0
   117cc:	00a0 2a00 11a0 	oril #704647584,%a0@-
   117d2:	1780 0940      	moveb %d0,%a3@(0)
   117d6:	0b20           	btst %d5,%a0@-
   117d8:	0140           	bchg %d0,%d0
   117da:	0110           	btst %d0,%a0@
   117dc:	0140           	bchg %d0,%d0
   117de:	0500           	btst %d2,%d0
   117e0:	1140 0100      	moveb %d0,%a0@(256)
   117e4:	0940           	bchg %d4,%d0
   117e6:	0520           	btst %d2,%a0@-
   117e8:	01a0           	bclr %d0,%a0@-
   117ea:	0b10           	btst %d5,%a0@
   117ec:	00a0 0a00 00d8 	oril #167772376,%a0@-
   117f2:	3600           	movew %d0,%d3
   117f4:	0167           	bchg %d0,%sp@-
   117f6:	cc00           	andb %d0,%d6
   117f8:	0438 3800 000f 	subib #0,0xf
   117fe:	e000           	asrb #8,%d0
   11800:	0000 0000      	orib #0,%d0
   11804:	0080 0200 0004 	oril #33554436,%d0
   1180a:	4000           	negxb %d0
	...
   11820:	0007 c000      	orib #0,%d7
   11824:	001d a000      	orib #0,%a5@+
   11828:	0038 7800 0060 	orib #0,0x60
   1182e:	3800           	movew %d0,%d4
   11830:	0060 1c00      	oriw #7168,%a0@-
   11834:	00c0           	bitrev %d0
   11836:	0800 00c0      	btst #-64,%d0
   1183a:	0600 00c0      	addib #-64,%d0
   1183e:	0600 00c0      	addib #-64,%d0
   11842:	0200 00c0      	andib #-64,%d0
   11846:	0600 0060      	addib #96,%d0
   1184a:	0c00 0060      	cmpib #96,%d0
   1184e:	0c00 0038      	cmpib #56,%d0
   11852:	3800           	movew %d0,%d4
   11854:	001f f000      	orib #0,%sp@+
   11858:	0007 c000      	orib #0,%d7
	...
   11870:	0004 4000      	orib #0,%d4
   11874:	0084 4200 008f 	oril #1107296399,%d4
   1187a:	e400           	asrb #2,%d0
   1187c:	007f           	.short 0x007f
   1187e:	f800           	.short 0xf800
   11880:	047f           	.short 0x047f
   11882:	fc40 03fd      	cp0ldw %d0,%d0,#2,#509
   11886:	df80           	addxl %d0,%d7
   11888:	01f8 6700      	bset %d0,0x6700
   1188c:	01e0           	bset %d0,%a0@-
   1188e:	3700           	movew %d0,%a3@-
   11890:	13e0 1b80 0fc0 	moveb %a0@-,0x1b800fc0
   11896:	0fe0           	bset %d7,%a0@-
   11898:	03c0           	bset %d1,%d0
   1189a:	0790           	bclr %d3,%a0@
   1189c:	03c0           	bset %d1,%d0
   1189e:	0780           	bclr %d3,%d0
   118a0:	13c0 0380 0fc0 	moveb %d0,0x3800fc0
   118a6:	07e0           	bset %d3,%a0@-
   118a8:	03e0           	bset %d1,%a0@-
   118aa:	0f90           	bclr %d7,%a0@
   118ac:	01e0           	bset %d0,%a0@-
   118ae:	0f00           	btst %d7,%d0
   118b0:	01f8 3f00      	bset %d0,0x3f00
   118b4:	03ff           	.short 0x03ff
   118b6:	ff80 047f      	cp1stl %d0,%d0,#3,#127
   118ba:	fc40 003f      	cp0ldw %d0,%d0,#1,#63
   118be:	fc00 004f      	cp0ldb %d0,%d0,#1,#79
   118c2:	e200           	asrb #1,%d0
   118c4:	0084 4200 0004 	oril #1107296260,%d4
   118ca:	4000           	negxb %d0
   118cc:	0000 0000      	orib #0,%d0
   118d0:	0004 4000      	orib #0,%d4
   118d4:	0084 4200 008f 	oril #1107296399,%d4
   118da:	e400           	asrb #2,%d0
   118dc:	007f           	.short 0x007f
   118de:	f800           	.short 0xf800
   118e0:	047f           	.short 0x047f
   118e2:	fc40 03fd      	cp0ldw %d0,%d0,#2,#509
   118e6:	ff80 01f8      	cp1stl %d0,%d0,#1,#504
   118ea:	7f00           	mvsb %d0,%d7
   118ec:	01e0           	bset %d0,%a0@-
   118ee:	3f00           	movew %d0,%sp@-
   118f0:	13e0 1f80 0fc0 	moveb %a0@-,0x1f800fc0
   118f6:	0fe0           	bset %d7,%a0@-
   118f8:	03c0           	bset %d1,%d0
   118fa:	0790           	bclr %d3,%a0@
   118fc:	03c0           	bset %d1,%d0
   118fe:	0780           	bclr %d3,%d0
   11900:	13c0 0380 0fc0 	moveb %d0,0x3800fc0
   11906:	07e0           	bset %d3,%a0@-
   11908:	03e0           	bset %d1,%a0@-
   1190a:	0f90           	bclr %d7,%a0@
   1190c:	01e0           	bset %d0,%a0@-
   1190e:	0f00           	btst %d7,%d0
   11910:	01f8 3f00      	bset %d0,0x3f00
   11914:	03ff           	.short 0x03ff
   11916:	ff80 047f      	cp1stl %d0,%d0,#3,#127
   1191a:	fc40 003f      	cp0ldw %d0,%d0,#1,#63
   1191e:	fc00 004f      	cp0ldb %d0,%d0,#1,#79
   11922:	e200           	asrb #1,%d0
   11924:	0084 4200 0004 	oril #1107296260,%d4
   1192a:	4000           	negxb %d0
   1192c:	0000 0000      	orib #0,%d0
   11930:	0008           	.short 0x0008
   11932:	8400           	orb %d0,%d2
   11934:	0000 0800      	orib #0,%d0
   11938:	0108 0000      	movepw %a0@(0),%d0
   1193c:	000f           	.short 0x000f
   1193e:	e880           	asrl #4,%d0
   11940:	0438 3800 0065 	subib #0,0x65
   11946:	2d00           	movel %d0,%fp@-
   11948:	00d8           	.short 0x00d8
   1194a:	5e00           	addqb #7,%d0
   1194c:	08a0 2a20      	bclr #32,%a0@-
   11950:	01a0           	bclr %d0,%a0@-
   11952:	1780 0140      	moveb %d0,%a3@(0)
   11956:	0b00           	btst %d5,%d0
   11958:	0940           	bchg %d4,%d0
   1195a:	0100           	btst %d0,%d0
   1195c:	1140 0510      	moveb %d0,%a0@(1296)
   11960:	0140           	bchg %d0,%d0
   11962:	0120           	btst %d0,%a0@-
   11964:	0140           	bchg %d0,%d0
   11966:	0500           	btst %d2,%d0
   11968:	01a0           	bclr %d0,%a0@-
   1196a:	0b00           	btst %d5,%d0
   1196c:	08a0 0a20      	bclr #32,%a0@-
   11970:	00d8           	.short 0x00d8
   11972:	3600           	movew %d0,%d3
   11974:	0167           	bchg %d0,%sp@-
   11976:	cc00           	andb %d0,%d6
   11978:	0038 3840 020f 	orib #64,0x20f
   1197e:	e000           	asrb #8,%d0
   11980:	0010 0100      	orib #0,%a0@
   11984:	0020 0000      	orib #0,%a0@-
   11988:	0042 2000      	oriw #8192,%d2
	...
   119a0:	0007 c000      	orib #0,%d7
   119a4:	001d a000      	orib #0,%a5@+
   119a8:	0038 7800 0060 	orib #0,0x60
   119ae:	3800           	movew %d0,%d4
   119b0:	0060 1c00      	oriw #7168,%a0@-
   119b4:	00c0           	bitrev %d0
   119b6:	0800 00c0      	btst #-64,%d0
   119ba:	0600 00c0      	addib #-64,%d0
   119be:	0600 00c0      	addib #-64,%d0
   119c2:	0200 00c0      	andib #-64,%d0
   119c6:	0600 0060      	addib #96,%d0
   119ca:	0c00 0060      	cmpib #96,%d0
   119ce:	0c00 0038      	cmpib #56,%d0
   119d2:	3800           	movew %d0,%d4
   119d4:	001f f000      	orib #0,%sp@+
   119d8:	0007 c000      	orib #0,%d7
	...
   119f0:	0008           	.short 0x0008
   119f2:	8400           	orb %d0,%d2
   119f4:	0008           	.short 0x0008
   119f6:	8800           	orb %d0,%d4
   119f8:	010f e800      	movepw %sp@(-6144),%d0
   119fc:	00bf f880 047f 	oril #-125827969,%d7
   11a02:	fd00 02fd      	cp0stb %d0,%d0,#2,#253
   11a06:	df00           	addxb %d0,%d7
   11a08:	01f8 6700      	bset %d0,0x6700
   11a0c:	09e0           	bset %d4,%a0@-
   11a0e:	3720           	movew %a0@-,%a3@-
   11a10:	07e0           	bset %d3,%a0@-
   11a12:	1bc0           	.short 0x1bc0
   11a14:	03c0           	bset %d1,%d0
   11a16:	0f80           	bclr %d7,%d0
   11a18:	0fc0           	bset %d7,%d0
   11a1a:	0780           	bclr %d3,%d0
   11a1c:	13c0 0790 03c0 	moveb %d0,0x79003c0
   11a22:	03e0           	bset %d1,%a0@-
   11a24:	03c0           	bset %d1,%d0
   11a26:	0780           	bclr %d3,%d0
   11a28:	07e0           	bset %d3,%a0@-
   11a2a:	0fc0           	bset %d7,%d0
   11a2c:	09e0           	bset %d4,%a0@-
   11a2e:	0f20           	btst %d7,%a0@-
   11a30:	01f8 3f00      	bset %d0,0x3f00
   11a34:	01ff           	.short 0x01ff
   11a36:	fe80 017f      	cp1ldl %d0,%d0,#1,#383
   11a3a:	fc40 023f      	cp0ldw %d0,%d0,#2,#63
   11a3e:	fa00           	.short 0xfa00
   11a40:	003f           	.short 0x003f
   11a42:	e100           	aslb #8,%d0
   11a44:	0022 2000      	orib #0,%a2@-
   11a48:	0042 2000      	oriw #8192,%d2
   11a4c:	0000 0000      	orib #0,%d0
   11a50:	0008           	.short 0x0008
   11a52:	8400           	orb %d0,%d2
   11a54:	0008           	.short 0x0008
   11a56:	8800           	orb %d0,%d4
   11a58:	010f e800      	movepw %sp@(-6144),%d0
   11a5c:	00bf f880 047f 	oril #-125827969,%d7
   11a62:	fd00 02fd      	cp0stb %d0,%d0,#2,#253
   11a66:	ff00 01f8      	cp1stb %d0,%d0,#1,#504
   11a6a:	7f00           	mvsb %d0,%d7
   11a6c:	09e0           	bset %d4,%a0@-
   11a6e:	3f20           	movew %a0@-,%sp@-
   11a70:	07e0           	bset %d3,%a0@-
   11a72:	1fc0           	.short 0x1fc0
   11a74:	03c0           	bset %d1,%d0
   11a76:	0f80           	bclr %d7,%d0
   11a78:	0fc0           	bset %d7,%d0
   11a7a:	0780           	bclr %d3,%d0
   11a7c:	13c0 0790 03c0 	moveb %d0,0x79003c0
   11a82:	03e0           	bset %d1,%a0@-
   11a84:	03c0           	bset %d1,%d0
   11a86:	0780           	bclr %d3,%d0
   11a88:	07e0           	bset %d3,%a0@-
   11a8a:	0fc0           	bset %d7,%d0
   11a8c:	09e0           	bset %d4,%a0@-
   11a8e:	0f20           	btst %d7,%a0@-
   11a90:	01f8 3f00      	bset %d0,0x3f00
   11a94:	01ff           	.short 0x01ff
   11a96:	fe80 017f      	cp1ldl %d0,%d0,#1,#383
   11a9a:	fc40 023f      	cp0ldw %d0,%d0,#2,#63
   11a9e:	fa00           	.short 0xfa00
   11aa0:	003f           	.short 0x003f
   11aa2:	e100           	aslb #8,%d0
   11aa4:	0022 2000      	orib #0,%a2@-
   11aa8:	0042 2000      	oriw #8192,%d2
   11aac:	0000 0000      	orib #0,%d0
   11ab0:	0360           	bchg %d1,%a0@-
   11ab2:	0000 0710      	orib #16,%d0
   11ab6:	0000 0470      	orib #112,%d0
   11aba:	0000 09b0      	orib #-80,%d0
   11abe:	0100           	btst %d0,%d0
   11ac0:	0a10 0000      	eorib #0,%a0@
   11ac4:	31b8 0400 d86c 	movew 0x400,%a0@(6c,%a5:l)
   11aca:	1800           	moveb %d0,%d4
   11acc:	aaff           	.short 0xaaff
   11ace:	d000           	addb %d0,%d0
   11ad0:	0667 e000      	addiw #-8192,%sp@-
   11ad4:	59f0 1e00      	svs %a0@(0,%d1:l:8)
   11ad8:	c0e8 2000      	muluw %a0@(8192),%d0
   11adc:	0bfc           	.short 0x0bfc
   11ade:	6100 a17f      	bsrw 0xbc5f
   11ae2:	c000           	andb %d0,%d0
   11ae4:	3a5f           	moveaw %sp@+,%a5
   11ae6:	8000           	orb %d0,%d0
   11ae8:	0463 0000      	subiw #0,%a3@-
   11aec:	db69 8000      	addw %d5,%a1@(-32768)
   11af0:	5ffc           	traple
   11af2:	c100           	abcd %d0,%d0
   11af4:	63f8           	blss 0x11aee
   11af6:	6000 1cf0      	braw 0x137e8
   11afa:	3c00           	movew %d0,%d6
   11afc:	3f70 0000 1880 	movew %a0@(0,%d0:w),%sp@(6272)
   11b02:	0000 0bb8      	orib #-72,%d0
   11b06:	0000 04d8      	orib #-40,%d0
   11b0a:	0000 0110      	orib #16,%d0
   11b0e:	0000 0360      	orib #96,%d0
   11b12:	0000 07f0      	orib #-16,%d0
   11b16:	0000 0670      	orib #112,%d0
   11b1a:	0000 19f0      	orib #-16,%d0
   11b1e:	0100           	btst %d0,%d0
   11b20:	0bb0 0200      	bclr %d5,%a0@(0,%d0:w:2)
   11b24:	73b0 0000      	mvzb %a0@(0,%d0:w),%d1
   11b28:	dcf0 1000      	addaw %a0@(0,%d1:w),%fp
   11b2c:	bbfc 2000 a767 	cmpal #536913767,%a5
   11b32:	e000           	asrb #8,%d0
   11b34:	5ff0 1000      	sle %a0@(0,%d1:w)
   11b38:	e3f0 1100      	lslw %a0@(0,%d1:w)
   11b3c:	7bf0 2100      	mvzw %a0@(0,%d2:w),%d5
   11b40:	f97c           	.short 0xf97c
   11b42:	4000           	negxb %d0
   11b44:	7eff           	moveq #-1,%d7
   11b46:	8000           	orb %d0,%d0
   11b48:	a467           	.short 0xa467
   11b4a:	0000 dbf7      	orib #-9,%d0
   11b4e:	0000 5fec      	orib #-20,%d0
   11b52:	8100           	sbcd %d0,%d0
   11b54:	6bf8           	bmis 0x11b4e
   11b56:	4200           	clrb %d0
   11b58:	1cf0 2000      	moveb %a0@(0,%d2:w),%fp@+
   11b5c:	3f70 0000 1880 	movew %a0@(0,%d0:w),%sp@(6272)
   11b62:	0000 0bf8      	orib #-8,%d0
   11b66:	0000 04d8      	orib #-40,%d0
   11b6a:	0000 0110      	orib #16,%d0
   11b6e:	0000 0280      	orib #-128,%d0
   11b72:	0000 00e0      	orib #-32,%d0
   11b76:	0000 0be0      	orib #-32,%d0
   11b7a:	0000 16d0      	orib #-48,%d0
   11b7e:	0100           	btst %d0,%d0
   11b80:	37f0           	.short 0x37f0
   11b82:	0200 5e78      	andib #120,%d0
   11b86:	0400 a7bc      	subib #-68,%d0
   11b8a:	1800           	moveb %d0,%d4
   11b8c:	777f           	.short 0x777f
   11b8e:	f000           	.short 0xf000
   11b90:	fde7           	.short 0xfde7
   11b92:	e000           	asrb #8,%d0
   11b94:	fe70           	.short 0xfe70
   11b96:	1e00           	moveb %d0,%d7
   11b98:	bf38 3100      	eorb %d7,0x3100
   11b9c:	ff9c 6100      	cp1stl %d6,%a4@+,#1,#256
   11ba0:	ffdf           	.short 0xffdf
   11ba2:	c000           	andb %d0,%d0
   11ba4:	ffbf           	.short 0xffbf
   11ba6:	8000           	orb %d0,%d0
   11ba8:	ffa7 0000      	cp1stl %d0,%sp@-,#1,#0
   11bac:	ffbf           	.short 0xffbf
   11bae:	8000           	orb %d0,%d0
   11bb0:	7fbc c100      	mvzb #0,%d7
   11bb4:	7fb8 6200      	mvzb 0x6200,%d7
   11bb8:	3f90 3c00      	movew %a0@,%sp@(0,%d3:l:4)
   11bbc:	3fc0           	.short 0x3fc0
   11bbe:	0000 1ff0      	orib #-16,%d0
   11bc2:	0000 0fd0      	orib #-48,%d0
   11bc6:	0000 07f0      	orib #-16,%d0
   11bca:	0000 01e0      	orib #-32,%d0
   11bce:	0000 03e0      	orib #-32,%d0
   11bd2:	0000 07f0      	orib #-16,%d0
   11bd6:	0000 0ff0      	orib #-16,%d0
   11bda:	0000 1ff0      	orib #-16,%d0
   11bde:	0100           	btst %d0,%d0
   11be0:	3ff0           	.short 0x3ff0
   11be2:	0200 7ff8      	andib #-8,%d0
   11be6:	0400 fffc      	subib #-4,%d0
   11bea:	1800           	moveb %d0,%d4
   11bec:	ffff           	.short 0xffff
   11bee:	f000           	.short 0xf000
   11bf0:	ffe7           	.short 0xffe7
   11bf2:	e000           	asrb #8,%d0
   11bf4:	fff0           	.short 0xfff0
   11bf6:	1e00           	moveb %d0,%d7
   11bf8:	fff8           	.short 0xfff8
   11bfa:	3100           	movew %d0,%a0@-
   11bfc:	fffc           	.short 0xfffc
   11bfe:	6100 ffff      	bsrw 0x11bff
   11c02:	c000           	andb %d0,%d0
   11c04:	ffff           	.short 0xffff
   11c06:	8000           	orb %d0,%d0
   11c08:	ffe7           	.short 0xffe7
   11c0a:	0000 ffff      	orib #-1,%d0
   11c0e:	8000           	orb %d0,%d0
   11c10:	7ffc c100      	mvzw #-16128,%d7
   11c14:	7ff8 6200      	mvzw 0x6200,%d7
   11c18:	3ff0           	.short 0x3ff0
   11c1a:	3c00           	movew %d0,%d6
   11c1c:	3ff0           	.short 0x3ff0
   11c1e:	0000 1ff0      	orib #-16,%d0
   11c22:	0000 0ff8      	orib #-8,%d0
   11c26:	0000 07f8      	orib #-8,%d0
   11c2a:	0000 01f0      	orib #-16,%d0
   11c2e:	0000 0360      	orib #96,%d0
   11c32:	0000 0710      	orib #16,%d0
   11c36:	0000 0470      	orib #112,%d0
   11c3a:	0000 09b0      	orib #-80,%d0
   11c3e:	0000 0a13      	orib #19,%d0
   11c42:	0000 31ba      	orib #-70,%d0
   11c46:	8000           	orb %d0,%d0
   11c48:	d874 c100      	addw %a4@(0,%a4:w),%d4
   11c4c:	aae8 6200 0670 	macw %d0l,%d6l,<<,%a0@(1648),%a5
   11c52:	3400           	movew %d0,%d2
   11c54:	59f0 0100      	svs %a0@(0,%d0:w)
   11c58:	c0f8 0000      	muluw 0x0,%d0
   11c5c:	0bf6 0400      	bset %d5,%fp@(0,%d0:w:4)
   11c60:	a179 0800 3a52 	mov3ql #-1,0x8003a52
   11c66:	e000           	asrb #8,%d0
   11c68:	0463 c000      	subiw #-16384,%a3@-
   11c6c:	db6e 2000      	addw %d5,%fp@(8192)
   11c70:	5ffc           	traple
   11c72:	0000 63f8      	orib #-8,%d0
   11c76:	0800 1cf0      	btst #-16,%d0
   11c7a:	0600 3f78      	addib #120,%d0
   11c7e:	0000 1888      	orib #-120,%d0
   11c82:	0000 0bb8      	orib #-72,%d0
   11c86:	0000 04d8      	orib #-40,%d0
   11c8a:	0000 0110      	orib #16,%d0
   11c8e:	0000 0360      	orib #96,%d0
   11c92:	0000 07f0      	orib #-16,%d0
   11c96:	0000 0670      	orib #112,%d0
   11c9a:	0000 19f0      	orib #-16,%d0
   11c9e:	0000 0bb4      	orib #-76,%d0
   11ca2:	0000 73b7      	orib #-73,%d0
   11ca6:	0000 dcec      	orib #-20,%d0
   11caa:	8100           	sbcd %d0,%d0
   11cac:	bbf8 4200      	cmpal 0x4200,%a5
   11cb0:	a770 2800      	mov3ql #3,%a0@(0,%d2:l)
   11cb4:	5ff0 0100      	sle %a0@(0,%d0:w)
   11cb8:	e3e0           	lslw %a0@-
   11cba:	0200 7bf8      	andib #-8,%d0
   11cbe:	0000 f97e      	orib #126,%d0
   11cc2:	0000 7ef3      	orib #-13,%d0
   11cc6:	1000           	moveb %d0,%d0
   11cc8:	a461           	.short 0xa461
   11cca:	c000           	andb %d0,%d0
   11ccc:	dbf2 0000      	addal %a2@(0,%d0:w),%a5
   11cd0:	5fec 1000      	sle %a4@(4096)
   11cd4:	6bf8           	bmis 0x11cce
   11cd6:	0800 1cf0      	btst #-16,%d0
   11cda:	0600 3f78      	addib #120,%d0
   11cde:	0000 1888      	orib #-120,%d0
   11ce2:	0000 0bf8      	orib #-8,%d0
   11ce6:	0000 04d8      	orib #-40,%d0
   11cea:	0000 0110      	orib #16,%d0
   11cee:	0000 0280      	orib #-128,%d0
   11cf2:	0000 00e0      	orib #-32,%d0
   11cf6:	0000 0be0      	orib #-32,%d0
   11cfa:	0000 16d0      	orib #-48,%d0
   11cfe:	0000 37f7      	orib #-9,%d0
   11d02:	0000 5e7f      	orib #127,%d0
   11d06:	8000           	orb %d0,%d0
   11d08:	a7bc           	.short 0xa7bc
   11d0a:	c100           	abcd %d0,%d0
   11d0c:	7778 6200      	mvsw 0x6200,%d3
   11d10:	fdf0           	.short 0xfdf0
   11d12:	3c00           	movew %d0,%d6
   11d14:	fe70           	.short 0xfe70
   11d16:	0100           	btst %d0,%d0
   11d18:	bf38 0200      	eorb %d7,0x200
   11d1c:	ff9e 0400      	cp1stl %d0,%fp@+,#3,#0
   11d20:	ffdf           	.short 0xffdf
   11d22:	0800 ffb3      	btst #-77,%d0
   11d26:	f000           	.short 0xf000
   11d28:	ffa3 c000      	cp1stl %a4,%a3@-,#1,#0
   11d2c:	ffbe           	.short 0xffbe
   11d2e:	2000           	movel %d0,%d0
   11d30:	7fbc 1000      	mvzb #0,%d7
   11d34:	7fb8 0800      	mvzb 0x800,%d7
   11d38:	3f90 0600      	movew %a0@,%sp@(0,%d0:w:8)
   11d3c:	3fc8           	.short 0x3fc8
   11d3e:	0000 1ff8      	orib #-8,%d0
   11d42:	0000 0fd0      	orib #-48,%d0
   11d46:	0000 07f0      	orib #-16,%d0
   11d4a:	0000 01e0      	orib #-32,%d0
   11d4e:	0000 03e0      	orib #-32,%d0
   11d52:	0000 07f0      	orib #-16,%d0
   11d56:	0000 0ff0      	orib #-16,%d0
   11d5a:	0000 1ff0      	orib #-16,%d0
   11d5e:	0000 3ff7      	orib #-9,%d0
   11d62:	0000 7fff      	orib #-1,%d0
   11d66:	8000           	orb %d0,%d0
   11d68:	fffc           	.short 0xfffc
   11d6a:	c100           	abcd %d0,%d0
   11d6c:	fff8           	.short 0xfff8
   11d6e:	6200 fff0      	bhiw 0x11d60
   11d72:	3c00           	movew %d0,%d6
   11d74:	fff0           	.short 0xfff0
   11d76:	0100           	btst %d0,%d0
   11d78:	fff8           	.short 0xfff8
   11d7a:	0200 fffe      	andib #-2,%d0
   11d7e:	0400 ffff      	subib #-1,%d0
   11d82:	0800 fff3      	btst #-13,%d0
   11d86:	f000           	.short 0xf000
   11d88:	ffe3           	.short 0xffe3
   11d8a:	c000           	andb %d0,%d0
   11d8c:	fffe           	.short 0xfffe
   11d8e:	2000           	movel %d0,%d0
   11d90:	7ffc 1000      	mvzw #4096,%d7
   11d94:	7ff8 0800      	mvzw 0x800,%d7
   11d98:	3ff0           	.short 0x3ff0
   11d9a:	0600 3ff8      	addib #-8,%d0
   11d9e:	0000 1ff8      	orib #-8,%d0
   11da2:	0000 0ff8      	orib #-8,%d0
   11da6:	0000 07f8      	orib #-8,%d0
   11daa:	0000 01f0      	orib #-16,%d0
   11dae:	0000 0360      	orib #96,%d0
   11db2:	0000 0710      	orib #16,%d0
   11db6:	0000 0470      	orib #112,%d0
   11dba:	0000 09b0      	orib #-80,%d0
   11dbe:	0000 0a13      	orib #19,%d0
   11dc2:	c000           	andb %d0,%d0
   11dc4:	31bc a000 d876 	movew #-24576,%a0@(76,%a5:l)
   11dca:	1000           	moveb %d0,%d0
   11dcc:	aac8           	.short 0xaac8
   11dce:	0800 0660      	btst #96,%d0
   11dd2:	0200 59f3      	andib #-13,%d0
   11dd6:	8000           	orb %d0,%d0
   11dd8:	c0fc c000      	muluw #-16384,%d0
   11ddc:	0bf6 0000      	bset %d5,%fp@(0,%d0:w)
   11de0:	a174 2100      	mov3ql #-1,%a4@(0,%d2:w)
   11de4:	3a50           	moveaw %a0@,%a5
   11de6:	1c00           	moveb %d0,%d6
   11de8:	0460 3c00      	subiw #15360,%a0@-
   11dec:	db70 6000      	addw %d5,%a0@(0,%d6:w)
   11df0:	5ff8 8200      	sle 0xffff8200
   11df4:	63f3           	blss 0x11de9
   11df6:	4000           	negxb %d0
   11df8:	1cff           	.short 0x1cff
   11dfa:	8000           	orb %d0,%d0
   11dfc:	3f78 0000 1888 	movew 0x0,%sp@(6280)
   11e02:	0000 0bb8      	orib #-72,%d0
   11e06:	0000 04d8      	orib #-40,%d0
   11e0a:	0000 0110      	orib #16,%d0
   11e0e:	0000 0360      	orib #96,%d0
   11e12:	0000 07f0      	orib #-16,%d0
   11e16:	0000 0670      	orib #112,%d0
   11e1a:	0000 19f0      	orib #-16,%d0
   11e1e:	0000 0bb0      	orib #-80,%d0
   11e22:	0000 73b3      	orib #-77,%d0
   11e26:	c000           	andb %d0,%d0
   11e28:	dcee 2000      	addaw %fp@(8192),%fp
   11e2c:	bbf8 0000      	cmpal 0x0,%a5
   11e30:	a760           	mov3ql #3,%a0@-
   11e32:	0600 5fe0      	addib #-32,%d0
   11e36:	0000 e3e3      	orib #-29,%d0
   11e3a:	8000           	orb %d0,%d0
   11e3c:	7bfe           	.short 0x7bfe
   11e3e:	c000           	andb %d0,%d0
   11e40:	f97c           	.short 0xf97c
   11e42:	4100           	chkl %d0,%d0
   11e44:	7ef0           	moveq #-16,%d7
   11e46:	0200 a460      	andib #96,%d0
   11e4a:	1c00           	moveb %d0,%d6
   11e4c:	dbe0           	addal %a0@-,%a5
   11e4e:	2200           	movel %d0,%d1
   11e50:	5fe0           	sle %a0@-
   11e52:	4200           	clrb %d0
   11e54:	6bfc           	bmis 0x11e52
   11e56:	c000           	andb %d0,%d0
   11e58:	1cff           	.short 0x1cff
   11e5a:	8000           	orb %d0,%d0
   11e5c:	3f78 0000 1888 	movew 0x0,%sp@(6280)
   11e62:	0000 0bf8      	orib #-8,%d0
   11e66:	0000 04d8      	orib #-40,%d0
   11e6a:	0000 0110      	orib #16,%d0
   11e6e:	0000 0280      	orib #-128,%d0
   11e72:	0000 00e0      	orib #-32,%d0
   11e76:	0000 0be0      	orib #-32,%d0
   11e7a:	0000 16d0      	orib #-48,%d0
   11e7e:	0000 37f3      	orib #-13,%d0
   11e82:	c000           	andb %d0,%d0
   11e84:	5e7f           	.short 0x5e7f
   11e86:	e000           	asrb #8,%d0
   11e88:	a7be           	.short 0xa7be
   11e8a:	3000           	movew %d0,%d0
   11e8c:	7778 0800      	mvsw 0x800,%d3
   11e90:	fde0           	.short 0xfde0
   11e92:	0600 fe73      	addib #115,%d0
   11e96:	8000           	orb %d0,%d0
   11e98:	bf3f           	.short 0xbf3f
   11e9a:	c000           	andb %d0,%d0
   11e9c:	ff9e c000      	cp1stl %a4,%fp@+,#1,#0
   11ea0:	ffdc           	.short 0xffdc
   11ea2:	6100 ffb0      	bsrw 0x11e54
   11ea6:	1e00           	moveb %d0,%d7
   11ea8:	ffa0 3c00      	cp1stl %d3,%a0@-,#7,#0
   11eac:	ffb0           	.short 0xffb0
   11eae:	6200 7fb8      	bhiw 0x19e68
   11eb2:	c200           	andb %d0,%d1
   11eb4:	7fbf           	.short 0x7fbf
   11eb6:	c000           	andb %d0,%d0
   11eb8:	3f9f 8000      	movew %sp@+,%sp@(0,%a0:w)
   11ebc:	3fc8           	.short 0x3fc8
   11ebe:	0000 1ff8      	orib #-8,%d0
   11ec2:	0000 0fd0      	orib #-48,%d0
   11ec6:	0000 07f0      	orib #-16,%d0
   11eca:	0000 01e0      	orib #-32,%d0
   11ece:	0000 03e0      	orib #-32,%d0
   11ed2:	0000 07f0      	orib #-16,%d0
   11ed6:	0000 0ff0      	orib #-16,%d0
   11eda:	0000 1ff0      	orib #-16,%d0
   11ede:	0000 3ff3      	orib #-13,%d0
   11ee2:	c000           	andb %d0,%d0
   11ee4:	7fff           	.short 0x7fff
   11ee6:	e000           	asrb #8,%d0
   11ee8:	fffe           	.short 0xfffe
   11eea:	3000           	movew %d0,%d0
   11eec:	fff8           	.short 0xfff8
   11eee:	0800 ffe0      	btst #-32,%d0
   11ef2:	0600 fff3      	addib #-13,%d0
   11ef6:	8000           	orb %d0,%d0
   11ef8:	ffff           	.short 0xffff
   11efa:	c000           	andb %d0,%d0
   11efc:	fffe           	.short 0xfffe
   11efe:	c000           	andb %d0,%d0
   11f00:	fffc           	.short 0xfffc
   11f02:	6100 fff0      	bsrw 0x11ef4
   11f06:	1e00           	moveb %d0,%d7
   11f08:	ffe0           	.short 0xffe0
   11f0a:	3c00           	movew %d0,%d6
   11f0c:	fff0           	.short 0xfff0
   11f0e:	6200 7ff8      	bhiw 0x19f08
   11f12:	c200           	andb %d0,%d1
   11f14:	7fff           	.short 0x7fff
   11f16:	c000           	andb %d0,%d0
   11f18:	3fff           	.short 0x3fff
   11f1a:	8000           	orb %d0,%d0
   11f1c:	3ff8           	.short 0x3ff8
   11f1e:	0000 1ff8      	orib #-8,%d0
   11f22:	0000 0ff8      	orib #-8,%d0
   11f26:	0000 07f8      	orib #-8,%d0
   11f2a:	0000 01f0      	orib #-16,%d0
   11f2e:	0000 0360      	orib #96,%d0
   11f32:	0000 0710      	orib #16,%d0
   11f36:	0000 0470      	orib #112,%d0
   11f3a:	0000 09b0      	orib #-80,%d0
   11f3e:	0000 0a10      	orib #16,%d0
   11f42:	1800           	moveb %d0,%d4
   11f44:	31b0 2000 d870 	movew %a0@(0,%d2:w),%a0@(70,%a5:l)
   11f4a:	8200           	orb %d0,%d1
   11f4c:	aaef 0000 0671 	macw %d0l,%d0l,%sp@(1649),%a5
   11f52:	0000 59f9      	orib #-7,%d0
   11f56:	e000           	asrb #8,%d0
   11f58:	c0ff           	.short 0xc0ff
   11f5a:	7000           	moveq #0,%d0
   11f5c:	0be2           	bset %d5,%a2@-
   11f5e:	0800 a16c      	btst #108,%d0
   11f62:	0000 3a50      	orib #80,%d0
   11f66:	0200 0460      	andib #96,%d0
   11f6a:	0200 db70      	andib #112,%d0
   11f6e:	0400 5fe8      	subib #-24,%d0
   11f72:	0800 63f2      	btst #-14,%d0
   11f76:	1000           	moveb %d0,%d0
   11f78:	1cfb c000      	moveb %pc@(0x11f7a,%a4:w),%fp@+
   11f7c:	3f7a 2000 1888 	movew %pc@(0x13f7e),%sp@(6280)
   11f82:	0000 0bb8      	orib #-72,%d0
   11f86:	0000 04d8      	orib #-40,%d0
   11f8a:	0000 0110      	orib #16,%d0
   11f8e:	0000 0360      	orib #96,%d0
   11f92:	0000 07f0      	orib #-16,%d0
   11f96:	0000 0670      	orib #112,%d0
   11f9a:	0000 19f0      	orib #-16,%d0
   11f9e:	0000 0bb0      	orib #-80,%d0
   11fa2:	2400           	movel %d0,%d2
   11fa4:	73b0 4200      	mvzb %a0@(0,%d4:w:2),%d1
   11fa8:	dce0           	addaw %a0@-,%fp
   11faa:	4200           	clrb %d0
   11fac:	bbf0 8000      	cmpal %a0@(0,%a0:w),%a5
   11fb0:	a77f           	.short 0xa77f
   11fb2:	0000 5ff8      	orib #-8,%d0
   11fb6:	0000 e3e1      	orib #-31,%d0
   11fba:	e000           	asrb #8,%d0
   11fbc:	7bfe           	.short 0x7bfe
   11fbe:	0000 f97c      	orib #124,%d0
   11fc2:	0400 7ef0      	subib #-16,%d0
   11fc6:	0200 a460      	andib #96,%d0
   11fca:	0200 dbe0      	andib #-32,%d0
   11fce:	0000 5ff4      	orib #-12,%d0
   11fd2:	0000 6bfc      	orib #-4,%d0
   11fd6:	0800 1cfc      	btst #-4,%d0
   11fda:	3000           	movew %d0,%d0
   11fdc:	3f7b e000 1888 	movew %pc@(0x11fde,%fp:w),%sp@(6280)
   11fe2:	0000 0bf8      	orib #-8,%d0
   11fe6:	0000 04d8      	orib #-40,%d0
   11fea:	0000 0110      	orib #16,%d0
   11fee:	0000 0280      	orib #-128,%d0
   11ff2:	0000 00e0      	orib #-32,%d0
   11ff6:	0000 0be0      	orib #-32,%d0
   11ffa:	0000 16d0      	orib #-48,%d0
   11ffe:	0000 37f0      	orib #-16,%d0
   12002:	3c00           	movew %d0,%d6
   12004:	5e70 6200      	addqw #7,%a0@(0,%d6:w:2)
   12008:	a7b0           	.short 0xa7b0
   1200a:	c200           	andb %d0,%d1
   1200c:	777f           	.short 0x777f
   1200e:	8000           	orb %d0,%d0
   12010:	fdff           	.short 0xfdff
   12012:	0000 fe79      	orib #121,%d0
   12016:	e000           	asrb #8,%d0
   12018:	bf3f           	.short 0xbf3f
   1201a:	f000           	.short 0xf000
   1201c:	ff9e 0800      	cp1stl %d0,%fp@+,#5,#0
   12020:	ffdc           	.short 0xffdc
   12022:	0400 ffb0      	subib #-80,%d0
   12026:	0200 ffa0      	andib #-96,%d0
   1202a:	0200 ffb0      	andib #-80,%d0
   1202e:	0400 7fbc      	subib #-68,%d0
   12032:	0800 7fbe      	btst #-66,%d0
   12036:	1800           	moveb %d0,%d4
   12038:	3f9f f000      	movew %sp@+,%sp@(0,%sp:w)
   1203c:	3fcb           	.short 0x3fcb
   1203e:	e000           	asrb #8,%d0
   12040:	1ff8           	.short 0x1ff8
   12042:	0000 0fd0      	orib #-48,%d0
   12046:	0000 07f0      	orib #-16,%d0
   1204a:	0000 01e0      	orib #-32,%d0
   1204e:	0000 03e0      	orib #-32,%d0
   12052:	0000 07f0      	orib #-16,%d0
   12056:	0000 0ff0      	orib #-16,%d0
   1205a:	0000 1ff0      	orib #-16,%d0
   1205e:	0000 3ff0      	orib #-16,%d0
   12062:	3c00           	movew %d0,%d6
   12064:	7ff0 6200      	mvzw %a0@(0,%d6:w:2),%d7
   12068:	fff0           	.short 0xfff0
   1206a:	c200           	andb %d0,%d1
   1206c:	ffff           	.short 0xffff
   1206e:	8000           	orb %d0,%d0
   12070:	ffff           	.short 0xffff
   12072:	0000 fff9      	orib #-7,%d0
   12076:	e000           	asrb #8,%d0
   12078:	ffff           	.short 0xffff
   1207a:	f000           	.short 0xf000
   1207c:	fffe           	.short 0xfffe
   1207e:	0800 fffc      	btst #-4,%d0
   12082:	0400 fff0      	subib #-16,%d0
   12086:	0200 ffe0      	andib #-32,%d0
   1208a:	0200 fff0      	andib #-16,%d0
   1208e:	0400 7ffc      	subib #-4,%d0
   12092:	0800 7ffe      	btst #-2,%d0
   12096:	1800           	moveb %d0,%d4
   12098:	3fff           	.short 0x3fff
   1209a:	f000           	.short 0xf000
   1209c:	3ffb           	.short 0x3ffb
   1209e:	e000           	asrb #8,%d0
   120a0:	1ff8           	.short 0x1ff8
   120a2:	0000 0ff8      	orib #-8,%d0
   120a6:	0000 07f8      	orib #-8,%d0
   120aa:	0000 01f0      	orib #-16,%d0
   120ae:	0000 0094      	orib #-108,%d0
   120b2:	c000           	andb %d0,%d0
   120b4:	0386           	bclr %d1,%d6
   120b6:	4000           	negxb %d0
   120b8:	0a30 a000 1da2 	eorib #0,@(6000,%d1:l:4)@(3daa)
   120be:	6000 3daa
   120c2:	d800           	addb %d0,%d4
   120c4:	4d41           	.short 0x4d41
   120c6:	0600 2ba9      	addib #-87,%d0
   120ca:	9300           	subxb %d0,%d1
   120cc:	ab9a           	.short 0xab9a
   120ce:	2b00           	movel %d0,%a5@-
   120d0:	770e           	mvsb %fp,%d3
   120d2:	a800 4fff      	msacl %d0,%d4,>>
   120d6:	c500           	abcd %d0,%d2
   120d8:	2fdf           	.short 0x2fdf
   120da:	ed00           	aslb #6,%d0
   120dc:	ef3a           	rolb %d7,%d2
   120de:	be00           	cmpb %d0,%d7
   120e0:	63bc           	blss 0x1209e
   120e2:	e000           	asrb #8,%d0
   120e4:	0139 c000 0071 	btst %d0,0xc0000071
   120ea:	8000           	orb %d0,%d0
   120ec:	00f1 8000 01b1 	cmp2b @(ffffffff80000319,%d0:w)@(0),%a0
   120f2:	8000 0319
   120f6:	8000           	orb %d0,%d0
   120f8:	060d           	.short 0x060d
   120fa:	0000 0402      	orib #2,%d0
   120fe:	c000           	andb %d0,%d0
   12100:	0402 4000      	subib #0,%d2
   12104:	0402 2000      	subib #0,%d2
   12108:	0002 0000      	orib #0,%d2
   1210c:	0108 0800      	movepw %a0@(2048),%d0
   12110:	00d5 c000      	cmp2b %a5@,%a4
   12114:	03be           	.short 0x03be
   12116:	6000 0a7d      	braw 0x12b95
   1211a:	a000 1dba      	msacl %d0,%d0
   1211e:	e800           	asrb #4,%d0
   12120:	3fba d800 4d63 	movew %pc@(0xf922),%sp@(4600)@(2bafb700)
   12126:	4600 2baf b700
   1212c:	ab9f           	.short 0xab9f
   1212e:	bb00           	eorb %d5,%d0
   12130:	77ae fa00      	mvzb %fp@(-1536),%d3
   12134:	6fff cf00 2fff 	blel 0xcf015135
   1213a:	ff00 eebe      	cp1stb %fp,%d0,#8,#190
   1213e:	fe00 6330      	cp1ldb %d0,%d6,#2,#304
   12142:	8000           	orb %d0,%d0
   12144:	01f1 8000      	bset %d0,%a1@(0,%a0:w)
   12148:	00e1           	.short 0x00e1
   1214a:	0000 00e1      	orib #-31,%d0
   1214e:	0000 0121      	orib #33,%d0
   12152:	0000 0211      	orib #17,%d0
   12156:	0000 0409      	orib #9,%d0
   1215a:	8000           	orb %d0,%d0
   1215c:	0006 4000      	orib #0,%d6
	...
   12168:	0200 1000      	andib #0,%d0
   1216c:	010c 0800      	movepw %a4@(2048),%d0
   12170:	00ff           	.short 0x00ff
   12172:	4000           	negxb %d0
   12174:	03fb           	.short 0x03fb
   12176:	a000 0fff      	msacl %d0,%d0,>>
   1217a:	d000           	addb %d0,%d0
   1217c:	1fff           	.short 0x1fff
   1217e:	b800           	cmpb %d0,%d4
   12180:	3fff           	.short 0x3fff
   12182:	2400           	movel %d0,%d2
   12184:	7fff           	.short 0x7fff
   12186:	f800           	.short 0xf800
   12188:	7ffe           	.short 0x7ffe
   1218a:	fd00 fffd      	cp0stb %sp,%d0,#8,#509
   1218e:	d400           	addb %d0,%d2
   12190:	fff9           	.short 0xfff9
   12192:	5f00           	subqb #7,%d0
   12194:	f813           	.short 0xf813
   12196:	be00           	cmpb %d0,%d7
   12198:	d3e7           	addal %sp@-,%a1
   1219a:	f600 77be f800 	move16 %a0@+,0x77bef800
   121a0:	03bc           	.short 0x03bc
   121a2:	e000           	asrb #8,%d0
   121a4:	01f9 c000 00f1 	bset %d0,0xc00000f1
   121aa:	8000           	orb %d0,%d0
   121ac:	00f1 8000 01b1 	cmp2b @(ffffffff80000319,%d0:w)@(0),%a0
   121b2:	8000 0319
   121b6:	8000           	orb %d0,%d0
   121b8:	060d           	.short 0x060d
   121ba:	8000           	orb %d0,%d0
   121bc:	0406 c000      	subib #0,%d6
   121c0:	0402 4000      	subib #0,%d2
   121c4:	0402 2000      	subib #0,%d2
   121c8:	0202 1000      	andib #0,%d2
   121cc:	010c 0800      	movepw %a4@(2048),%d0
   121d0:	00ff           	.short 0x00ff
   121d2:	c000           	andb %d0,%d0
   121d4:	03ff           	.short 0x03ff
   121d6:	e000           	asrb #8,%d0
   121d8:	0fff           	.short 0x0fff
   121da:	f000           	.short 0xf000
   121dc:	1fff           	.short 0x1fff
   121de:	f800           	.short 0xf800
   121e0:	3fff           	.short 0x3fff
   121e2:	fc00 7fff      	cp0ldb %d0,%d7,#8,#511
   121e6:	fe00 7fff      	cp1ldb %d0,%d7,#8,#511
   121ea:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   121ee:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   121f2:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   121f6:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   121fa:	ff00 ffbe      	cp1stb %sp,%d0,#8,#446
   121fe:	fe00 63bc      	cp1ldb %d0,%d6,#2,#444
   12202:	e000           	asrb #8,%d0
   12204:	01f9 c000 00f1 	bset %d0,0xc00000f1
   1220a:	8000           	orb %d0,%d0
   1220c:	00f1 8000 01b1 	cmp2b @(ffffffff80000319,%d0:w)@(0),%a0
   12212:	8000 0319
   12216:	8000           	orb %d0,%d0
   12218:	060d           	.short 0x060d
   1221a:	8000           	orb %d0,%d0
   1221c:	0406 c000      	subib #0,%d6
   12220:	0402 4000      	subib #0,%d2
   12224:	0402 2000      	subib #0,%d2
   12228:	0202 1000      	andib #0,%d2
   1222c:	010c 0800      	movepw %a4@(2048),%d0
   12230:	0094 c000 0386 	oril #-1073740922,%a4@
   12236:	4000           	negxb %d0
   12238:	0a30 a000 1da2 	eorib #0,@(6000,%d1:l:4)@(3daa)
   1223e:	6000 3daa
   12242:	d800           	addb %d0,%d4
   12244:	4d41           	.short 0x4d41
   12246:	0600 2ba9      	addib #-87,%d0
   1224a:	9300           	subxb %d0,%d1
   1224c:	ab9a           	.short 0xab9a
   1224e:	2b00           	movel %d0,%a5@-
   12250:	770e           	mvsb %fp,%d3
   12252:	a800 4fff      	msacl %d0,%d4,>>
   12256:	c500           	abcd %d0,%d2
   12258:	2fdf           	.short 0x2fdf
   1225a:	ed00           	aslb #6,%d0
   1225c:	ef3f           	rolb %d7,%d7
   1225e:	7e00           	moveq #0,%d7
   12260:	7b94           	mvzb %a4@,%d5
   12262:	a000 0188      	msacw %d0l,%d0u
   12266:	4000           	negxb %d0
   12268:	00e8 3000 0050 	cmp2b %a0@(80),%d3
   1226e:	1000           	moveb %d0,%d0
   12270:	0060 6000      	oriw #24576,%a0@-
   12274:	0060 c000      	oriw #-16384,%a0@-
   12278:	00a1 8000 0001 	oril #-2147483647,%a1@-
   1227e:	0000 0210      	orib #16,%d0
   12282:	0000 0409      	orib #9,%d0
   12286:	0000 0400      	orib #0,%d0
   1228a:	8000           	orb %d0,%d0
   1228c:	0002 4000      	orib #0,%d2
   12290:	00d5 c000      	cmp2b %a5@,%a4
   12294:	03be           	.short 0x03be
   12296:	6000 0a7d      	braw 0x12d15
   1229a:	a000 1dba      	msacl %d0,%d0
   1229e:	e800           	asrb #4,%d0
   122a0:	3fba d800 4d63 	movew %pc@(0xfaa2),%sp@(4600)@(2bafb700)
   122a6:	4600 2baf b700
   122ac:	ab9f           	.short 0xab9f
   122ae:	bb00           	eorb %d5,%d0
   122b0:	77ae fa00      	mvzb %fp@(-1536),%d3
   122b4:	6fff cf00 2fff 	blel 0xcf0152b5
   122ba:	ff00 eebb      	cp1stb %fp,%d0,#8,#187
   122be:	be00           	cmpb %d0,%d7
   122c0:	7b18           	mvsb %a0@+,%d5
   122c2:	c000           	andb %d0,%d0
   122c4:	0110           	btst %d0,%a0@
   122c6:	7000           	moveq #0,%d0
   122c8:	00b0 2000 0060 	oril #536871008,%a0@(0,%d2:w)
   122ce:	2000
   122d0:	0040 4000      	oriw #16384,%d0
   122d4:	0040 8000      	oriw #-32768,%d0
   122d8:	0001 0000      	orib #0,%d1
   122dc:	0120           	btst %d0,%a0@-
   122de:	0000 0201      	orib #1,%d0
   122e2:	0000 0400      	orib #0,%d0
   122e6:	0000 0404      	orib #4,%d0
   122ea:	8000           	orb %d0,%d0
   122ec:	0002 4000      	orib #0,%d2
   122f0:	00ff           	.short 0x00ff
   122f2:	4000           	negxb %d0
   122f4:	03fb           	.short 0x03fb
   122f6:	a000 0fff      	msacl %d0,%d0,>>
   122fa:	d000           	addb %d0,%d0
   122fc:	1fff           	.short 0x1fff
   122fe:	b800           	cmpb %d0,%d4
   12300:	3fff           	.short 0x3fff
   12302:	2400           	movel %d0,%d2
   12304:	7fff           	.short 0x7fff
   12306:	f800           	.short 0xf800
   12308:	7ffe           	.short 0x7ffe
   1230a:	fd00 fffd      	cp0stb %sp,%d0,#8,#509
   1230e:	d400           	addb %d0,%d2
   12310:	fff9           	.short 0xfff9
   12312:	5f00           	subqb #7,%d0
   12314:	f813           	.short 0xf813
   12316:	be00           	cmpb %d0,%d7
   12318:	d3e7           	addal %sp@-,%a1
   1231a:	f600 77bf f800 	move16 %a0@+,0x77bff800
   12320:	1b9c e000      	moveb %a4@+,%a5@(0,%fp:w)
   12324:	0198           	bclr %d0,%a0@+
   12326:	7000           	moveq #0,%d0
   12328:	00f8 3000 0070 	cmp2b 0x70,%d3
   1232e:	3000           	movew %d0,%d0
   12330:	0060 6000      	oriw #24576,%a0@-
   12334:	0060 c000      	oriw #-16384,%a0@-
   12338:	00a1 8000 0121 	oril #-2147483359,%a1@-
   1233e:	0000 0211      	orib #17,%d0
   12342:	0000 0409      	orib #9,%d0
   12346:	0000 0404      	orib #4,%d0
   1234a:	8000           	orb %d0,%d0
   1234c:	0002 4000      	orib #0,%d2
   12350:	00ff           	.short 0x00ff
   12352:	c000           	andb %d0,%d0
   12354:	03ff           	.short 0x03ff
   12356:	e000           	asrb #8,%d0
   12358:	0fff           	.short 0x0fff
   1235a:	f000           	.short 0xf000
   1235c:	1fff           	.short 0x1fff
   1235e:	f800           	.short 0xf800
   12360:	3fff           	.short 0x3fff
   12362:	fc00 7fff      	cp0ldb %d0,%d7,#8,#511
   12366:	fe00 7fff      	cp1ldb %d0,%d7,#8,#511
   1236a:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   1236e:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   12372:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   12376:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   1237a:	ff00 ffbf      	cp1stb %sp,%d0,#8,#447
   1237e:	fe00 7b9c      	cp1ldb %d0,%d7,#6,#412
   12382:	e000           	asrb #8,%d0
   12384:	0198           	bclr %d0,%a0@+
   12386:	7000           	moveq #0,%d0
   12388:	00f8 3000 0070 	cmp2b 0x70,%d3
   1238e:	3000           	movew %d0,%d0
   12390:	0060 6000      	oriw #24576,%a0@-
   12394:	0060 c000      	oriw #-16384,%a0@-
   12398:	00a1 8000 0121 	oril #-2147483359,%a1@-
   1239e:	0000 0211      	orib #17,%d0
   123a2:	0000 0409      	orib #9,%d0
   123a6:	0000 0404      	orib #4,%d0
   123aa:	8000           	orb %d0,%d0
   123ac:	0002 4000      	orib #0,%d2
   123b0:	0094 c000 0386 	oril #-1073740922,%a4@
   123b6:	4000           	negxb %d0
   123b8:	0a30 a000 1da2 	eorib #0,@(6000,%d1:l:4)@(3daa)
   123be:	6000 3daa
   123c2:	d800           	addb %d0,%d4
   123c4:	4d41           	.short 0x4d41
   123c6:	0600 2ba9      	addib #-87,%d0
   123ca:	9300           	subxb %d0,%d1
   123cc:	ab9a           	.short 0xab9a
   123ce:	2b00           	movel %d0,%a5@-
   123d0:	770e           	mvsb %fp,%d3
   123d2:	a800 4fff      	msacl %d0,%d4,>>
   123d6:	c500           	abcd %d0,%d2
   123d8:	2fdf           	.short 0x2fdf
   123da:	6d00 efbe      	bltw 0x1139a
   123de:	7e00           	moveq #0,%d7
   123e0:	7d04           	mvsb %d4,%d6
   123e2:	a000           	.short 0xa000
   123e4:	041c 6000      	subib #0,%a4@+
   123e8:	060a           	.short 0x060a
   123ea:	5000           	addqb #8,%d0
   123ec:	0602 1000      	addib #0,%d2
   123f0:	0506           	btst %d2,%d6
   123f2:	3000           	movew %d0,%d0
   123f4:	0284 1000 00d0 	andil #268435664,%d4
   123fa:	2000           	movel %d0,%d0
   123fc:	0060 4000      	oriw #16384,%a0@-
   12400:	0060 8000      	oriw #-32768,%a0@-
   12404:	0060 0000      	oriw #0,%a0@-
   12408:	0101           	btst %d0,%d1
   1240a:	0000 0010      	orib #16,%d0
   1240e:	0000 00d5      	orib #-43,%d0
   12412:	c000           	andb %d0,%d0
   12414:	03be           	.short 0x03be
   12416:	6000 0a7d      	braw 0x12e95
   1241a:	a000 1dba      	msacl %d0,%d0
   1241e:	e800           	asrb #4,%d0
   12420:	3fba d800 4d63 	movew %pc@(0xfc22),%sp@(4600)@(2bafb700)
   12426:	4600 2baf b700
   1242c:	ab9f           	.short 0xab9f
   1242e:	bb00           	eorb %d5,%d0
   12430:	77ae fa00      	mvzb %fp@(-1536),%d3
   12434:	6fff cf00 2fff 	blel 0xcf015435
   1243a:	ff00 ee38      	cp1stb %fp,%d0,#8,#56
   1243e:	be00           	cmpb %d0,%d7
   12440:	7e18           	moveq #24,%d7
   12442:	c000           	andb %d0,%d0
   12444:	0618 4000      	addib #0,%a0@+
   12448:	040c           	.short 0x040c
   1244a:	6000 0404      	braw 0x12850
   1244e:	2000           	movel %d0,%d0
   12450:	060c           	.short 0x060c
   12452:	2000           	movel %d0,%d0
   12454:	0318           	btst %d1,%a0@+
   12456:	2000           	movel %d0,%d0
   12458:	0080 4000 0040 	oril #1073741888,%d0
   1245e:	0000 0040      	orib #64,%d0
   12462:	0000 0041      	orib #65,%d0
   12466:	0000 01a1      	orib #-95,%d0
   1246a:	0000 0010      	orib #16,%d0
   1246e:	0000 00ff      	orib #-1,%d0
   12472:	4000           	negxb %d0
   12474:	03fb           	.short 0x03fb
   12476:	a000 0fff      	msacl %d0,%d0,>>
   1247a:	d000           	addb %d0,%d0
   1247c:	1fff           	.short 0x1fff
   1247e:	b800           	cmpb %d0,%d4
   12480:	3fff           	.short 0x3fff
   12482:	2400           	movel %d0,%d2
   12484:	7fff           	.short 0x7fff
   12486:	f800           	.short 0xf800
   12488:	7ffe           	.short 0x7ffe
   1248a:	fd00 fffd      	cp0stb %sp,%d0,#8,#509
   1248e:	d400           	addb %d0,%d2
   12490:	fff9           	.short 0xfff9
   12492:	5f00           	subqb #7,%d0
   12494:	f813           	.short 0xf813
   12496:	be00           	cmpb %d0,%d7
   12498:	d3e7           	addal %sp@-,%a1
   1249a:	f600 77be f800 	move16 %a0@+,0x77bef800
   124a0:	1f1c           	moveb %a4@+,%sp@-
   124a2:	e000           	asrb #8,%d0
   124a4:	061c 6000      	addib #0,%a4@+
   124a8:	060e           	.short 0x060e
   124aa:	7000           	moveq #0,%d0
   124ac:	0606 3000      	addib #0,%d6
   124b0:	070e 3000      	movepw %fp@(12288),%d3
   124b4:	039c           	bclr %d1,%a4@+
   124b6:	3000           	movew %d0,%d0
   124b8:	00d0 6000      	cmp2b %a0@,%d6
   124bc:	0060 4000      	oriw #16384,%a0@-
   124c0:	0060 8000      	oriw #-32768,%a0@-
   124c4:	0061 0000      	oriw #0,%a1@-
   124c8:	01a1           	bclr %d0,%a1@-
   124ca:	0000 0010      	orib #16,%d0
   124ce:	0000 00ff      	orib #-1,%d0
   124d2:	c000           	andb %d0,%d0
   124d4:	03ff           	.short 0x03ff
   124d6:	e000           	asrb #8,%d0
   124d8:	0fff           	.short 0x0fff
   124da:	f000           	.short 0xf000
   124dc:	1fff           	.short 0x1fff
   124de:	f800           	.short 0xf800
   124e0:	3fff           	.short 0x3fff
   124e2:	fc00 7fff      	cp0ldb %d0,%d7,#8,#511
   124e6:	fe00 7fff      	cp1ldb %d0,%d7,#8,#511
   124ea:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   124ee:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   124f2:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   124f6:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   124fa:	ff00 ffbe      	cp1stb %sp,%d0,#8,#446
   124fe:	fe00 7f1c      	cp1ldb %d0,%d7,#8,#284
   12502:	e000           	asrb #8,%d0
   12504:	061c 6000      	addib #0,%a4@+
   12508:	060e           	.short 0x060e
   1250a:	7000           	moveq #0,%d0
   1250c:	0606 3000      	addib #0,%d6
   12510:	070e 3000      	movepw %fp@(12288),%d3
   12514:	039c           	bclr %d1,%a4@+
   12516:	3000           	movew %d0,%d0
   12518:	00d0 6000      	cmp2b %a0@,%d6
   1251c:	0060 4000      	oriw #16384,%a0@-
   12520:	0060 8000      	oriw #-32768,%a0@-
   12524:	0061 0000      	oriw #0,%a1@-
   12528:	01a1           	bclr %d0,%a1@-
   1252a:	0000 0010      	orib #16,%d0
   1252e:	0000 0094      	orib #-108,%d0
   12532:	c000           	andb %d0,%d0
   12534:	0386           	bclr %d1,%d6
   12536:	4000           	negxb %d0
   12538:	0a30 a000 1da2 	eorib #0,@(6000,%d1:l:4)@(3daa)
   1253e:	6000 3daa
   12542:	d800           	addb %d0,%d4
   12544:	4d41           	.short 0x4d41
   12546:	0600 2ba9      	addib #-87,%d0
   1254a:	9300           	subxb %d0,%d1
   1254c:	ab9a           	.short 0xab9a
   1254e:	2b00           	movel %d0,%a5@-
   12550:	770e           	mvsb %fp,%d3
   12552:	a800 4fff      	msacl %d0,%d4,>>
   12556:	c500           	abcd %d0,%d2
   12558:	2fdf           	.short 0x2fdf
   1255a:	ed00           	aslb #6,%d0
   1255c:	eea7           	asrl %d7,%d7
   1255e:	7e00           	moveq #0,%d7
   12560:	7d16           	mvsb %fp@,%d6
   12562:	8000           	orb %d0,%d0
   12564:	0014 8000      	orib #0,%a4@
   12568:	0e0c           	.short 0x0e0c
   1256a:	8000           	orb %d0,%d0
   1256c:	0407 8000      	subib #0,%d7
   12570:	0402 4000      	subib #0,%d2
   12574:	0406 0000      	subib #0,%d6
   12578:	0806 2000      	btst #0,%d6
   1257c:	0204 1000      	andib #0,%d4
   12580:	0108 1000      	movepw %a0@(4096),%d0
   12584:	0080 0000 0060 	oril #96,%d0
   1258a:	4000           	negxb %d0
   1258c:	0000 0000      	orib #0,%d0
   12590:	00d5 c000      	cmp2b %a5@,%a4
   12594:	03be           	.short 0x03be
   12596:	6000 0a7d      	braw 0x13015
   1259a:	a000 1dba      	msacl %d0,%d0
   1259e:	e800           	asrb #4,%d0
   125a0:	3fba d800 4d63 	movew %pc@(0xfda2),%sp@(4600)@(2bafb700)
   125a6:	4600 2baf b700
   125ac:	ab9f           	.short 0xab9f
   125ae:	bb00           	eorb %d5,%d0
   125b0:	77ae fa00      	mvzb %fp@(-1536),%d3
   125b4:	6fff cf00 2fff 	blel 0xcf0155b5
   125ba:	ff00 ef3b      	cp1stb %fp,%d0,#8,#315
   125be:	be00           	cmpb %d0,%d7
   125c0:	7e1b           	moveq #27,%d7
   125c2:	0000 0719      	orib #25,%d0
   125c6:	0000 0809      	orib #9,%d0
   125ca:	0000 0805      	orib #5,%d0
   125ce:	0000 0804      	orib #4,%d0
   125d2:	8000           	orb %d0,%d0
   125d4:	0804 6000      	btst #0,%d4
   125d8:	0c04 1000      	cmpib #0,%d4
   125dc:	0400 0000      	subib #0,%d0
   125e0:	0200 0000      	andib #0,%d0
   125e4:	0010 1000      	orib #0,%a0@
   125e8:	0060 6000      	oriw #24576,%a0@-
   125ec:	0000 0000      	orib #0,%d0
   125f0:	00ff           	.short 0x00ff
   125f2:	4000           	negxb %d0
   125f4:	03fb           	.short 0x03fb
   125f6:	a000 0fff      	msacl %d0,%d0,>>
   125fa:	d000           	addb %d0,%d0
   125fc:	1fff           	.short 0x1fff
   125fe:	b800           	cmpb %d0,%d4
   12600:	3fff           	.short 0x3fff
   12602:	2400           	movel %d0,%d2
   12604:	7fff           	.short 0x7fff
   12606:	f800           	.short 0xf800
   12608:	7ffe           	.short 0x7ffe
   1260a:	fd00 fffd      	cp0stb %sp,%d0,#8,#509
   1260e:	d400           	addb %d0,%d2
   12610:	fff9           	.short 0xfff9
   12612:	5f00           	subqb #7,%d0
   12614:	f813           	.short 0xf813
   12616:	be00           	cmpb %d0,%d7
   12618:	d3e7           	addal %sp@-,%a1
   1261a:	f600 77bf f800 	move16 %a0@+,0x77bff800
   12620:	1f1f           	moveb %sp@+,%sp@-
   12622:	8000           	orb %d0,%d0
   12624:	071d           	btst %d3,%a5@+
   12626:	8000           	orb %d0,%d0
   12628:	0e0d           	.short 0x0e0d
   1262a:	8000           	orb %d0,%d0
   1262c:	0c07 8000      	cmpib #0,%d7
   12630:	0c06 c000      	cmpib #0,%d6
   12634:	0c06 6000      	cmpib #0,%d6
   12638:	0c06 3000      	cmpib #0,%d6
   1263c:	0604 1000      	addib #0,%d4
   12640:	0308 1000      	movepw %a0@(4096),%d1
   12644:	0090 1000 0060 	oril #268435552,%a0@
   1264a:	6000 0000      	braw 0x1264c
   1264e:	0000 00ff      	orib #-1,%d0
   12652:	c000           	andb %d0,%d0
   12654:	03ff           	.short 0x03ff
   12656:	e000           	asrb #8,%d0
   12658:	0fff           	.short 0x0fff
   1265a:	f000           	.short 0xf000
   1265c:	1fff           	.short 0x1fff
   1265e:	f800           	.short 0xf800
   12660:	3fff           	.short 0x3fff
   12662:	fc00 7fff      	cp0ldb %d0,%d7,#8,#511
   12666:	fe00 7fff      	cp1ldb %d0,%d7,#8,#511
   1266a:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   1266e:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   12672:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   12676:	ff00 ffff      	cp1stb %sp,%d0,#8,#511
   1267a:	ff00 ffbf      	cp1stb %sp,%d0,#8,#447
   1267e:	fe00 7f1f      	cp1ldb %d0,%d7,#8,#287
   12682:	8000           	orb %d0,%d0
   12684:	071d           	btst %d3,%a5@+
   12686:	8000           	orb %d0,%d0
   12688:	0e0d           	.short 0x0e0d
   1268a:	8000           	orb %d0,%d0
   1268c:	0c07 8000      	cmpib #0,%d7
   12690:	0c06 c000      	cmpib #0,%d6
   12694:	0c06 6000      	cmpib #0,%d6
   12698:	0c06 3000      	cmpib #0,%d6
   1269c:	0604 1000      	addib #0,%d4
   126a0:	0308 1000      	movepw %a0@(4096),%d1
   126a4:	0090 1000 0060 	oril #268435552,%a0@
   126aa:	6000 0000      	braw 0x126ac
   126ae:	0000 0000      	orib #0,%d0
   126b2:	0300           	btst %d1,%d0
   126b4:	0000 1c00      	orib #0,%d0
   126b8:	0000 2000      	orib #0,%d0
   126bc:	0000 6000      	orib #0,%d0
   126c0:	0000 6000      	orib #0,%d0
   126c4:	0000 7000      	orib #0,%d0
   126c8:	0000 2003      	orib #3,%d0
   126cc:	0000 3004      	orib #4,%d0
   126d0:	0000 183f      	orib #63,%d0
   126d4:	0000 3050      	orib #80,%d0
   126d8:	0000 e1fa      	orib #-6,%d0
   126dc:	0000 760e      	orib #14,%d0
   126e0:	0003 8543      	orib #67,%d3
   126e4:	0003 a4c1      	orib #-63,%d3
   126e8:	0004 f536      	orib #54,%d4
   126ec:	0008           	.short 0x0008
   126ee:	420d           	.short 0x420d
   126f0:	0034 cf4a 0110 	orib #74,%a4@(0,%d0:w)
   126f6:	c499           	andl %a1@+,%d2
   126f8:	03f0 ac74      	bset %d1,%a0@(74,%a2:l:4)
   126fc:	03d1           	bset %d1,%a1@
   126fe:	987a 1f53      	subw %pc@(0x14653),%d4
   12702:	16c7           	moveb %d7,%a3@+
   12704:	1fd3           	.short 0x1fd3
   12706:	71a5           	mvzb %a5@-,%d0
   12708:	3d89 a153 1b89 	movew %a1,%fp@(0)@(1b89772e)
   1270e:	772e
   12710:	0000 06c0      	orib #-64,%d0
   12714:	0000 0c00      	orib #0,%d0
   12718:	0000 3000      	orib #0,%d0
   1271c:	0000 8000      	orib #0,%d0
   12720:	0000 2000      	orib #0,%d0
   12724:	0000 5000      	orib #0,%d0
   12728:	0000 1001      	orib #1,%d0
   1272c:	0000 3801      	orib #1,%d0
   12730:	0000 483f      	orib #63,%d0
   12734:	0000 0845      	orib #69,%d0
   12738:	0000 f1f9      	orib #-7,%d0
   1273c:	0001 b4f7      	orib #-9,%d1
   12740:	0002 5efd      	orib #-3,%d2
   12744:	0001 e16e      	orib #110,%d1
   12748:	0002 eb89      	orib #-119,%d2
   1274c:	000c           	.short 0x000c
   1274e:	d7fe           	.short 0xd7fe
   12750:	000f           	.short 0x000f
   12752:	f63d           	.short 0xf63d
   12754:	002c 9e7e 039b 	orib #126,%a4@(923)
   1275a:	dfbb           	.short 0xdfbb
   1275c:	00f4           	.short 0x00f4
   1275e:	ade5           	.short 0xade5
   12760:	00ff           	.short 0x00ff
   12762:	f979           	.short 0xf979
   12764:	1eb7 3fdb 03cb 	moveb @(0)@(3cb7bae),%sp@
   1276a:	7bae
   1276c:	059f           	bclr %d2,%sp@+
   1276e:	abd7           	.short 0xabd7
   12770:	0000 07c0      	orib #-64,%d0
   12774:	0000 1c00      	orib #0,%d0
   12778:	0000 7000      	orib #0,%d0
   1277c:	0000 e000      	orib #0,%d0
   12780:	0000 e000      	orib #0,%d0
   12784:	0000 7000      	orib #0,%d0
   12788:	0000 7003      	orib #3,%d0
   1278c:	0000 380f      	orib #15,%d0
   12790:	0000 783f      	orib #63,%d0
   12794:	0000 78ff      	orib #-1,%d0
   12798:	0000 f1ff      	orib #-1,%d0
   1279c:	0001 ffff      	orib #-1,%d1
   127a0:	0003 ffff      	orib #-1,%d3
   127a4:	0007 ffff      	orib #-1,%d7
   127a8:	000f           	.short 0x000f
   127aa:	ffff           	.short 0xffff
   127ac:	001f ffff      	orib #-1,%sp@+
   127b0:	003f           	.short 0x003f
   127b2:	ffff           	.short 0xffff
   127b4:	01ff           	.short 0x01ff
   127b6:	ffff           	.short 0xffff
   127b8:	03ff           	.short 0x03ff
   127ba:	ffff           	.short 0xffff
   127bc:	0fff           	.short 0x0fff
   127be:	ffff           	.short 0xffff
   127c0:	1fff           	.short 0x1fff
   127c2:	ffff           	.short 0xffff
   127c4:	1fff           	.short 0x1fff
   127c6:	ffff           	.short 0xffff
   127c8:	3fff           	.short 0x3fff
   127ca:	ffff           	.short 0xffff
   127cc:	3fff           	.short 0x3fff
   127ce:	ffff           	.short 0xffff
   127d0:	0000 07c0      	orib #-64,%d0
   127d4:	0000 1c00      	orib #0,%d0
   127d8:	0000 7000      	orib #0,%d0
   127dc:	0000 e000      	orib #0,%d0
   127e0:	0000 e000      	orib #0,%d0
   127e4:	0000 7000      	orib #0,%d0
   127e8:	0000 7003      	orib #3,%d0
   127ec:	0000 380f      	orib #15,%d0
   127f0:	0000 783f      	orib #63,%d0
   127f4:	0000 78ff      	orib #-1,%d0
   127f8:	0000 f1ff      	orib #-1,%d0
   127fc:	0001 ffff      	orib #-1,%d1
   12800:	0003 ffff      	orib #-1,%d3
   12804:	0007 ffff      	orib #-1,%d7
   12808:	000f           	.short 0x000f
   1280a:	ffff           	.short 0xffff
   1280c:	001f ffff      	orib #-1,%sp@+
   12810:	003f           	.short 0x003f
   12812:	ffff           	.short 0xffff
   12814:	01ff           	.short 0x01ff
   12816:	ffff           	.short 0xffff
   12818:	03ff           	.short 0x03ff
   1281a:	ffff           	.short 0xffff
   1281c:	0fff           	.short 0x0fff
   1281e:	ffff           	.short 0xffff
   12820:	1fff           	.short 0x1fff
   12822:	ffff           	.short 0xffff
   12824:	1fff           	.short 0x1fff
   12826:	ffff           	.short 0xffff
   12828:	3fff           	.short 0x3fff
   1282a:	ffff           	.short 0xffff
   1282c:	3fff           	.short 0x3fff
   1282e:	ffff           	.short 0xffff
	...
   12838:	0003 0000      	orib #0,%d3
   1283c:	0000 6000      	orib #0,%d0
   12840:	0000 2000      	orib #0,%d0
   12844:	0000 2000      	orib #0,%d0
   12848:	0000 1803      	orib #3,%d0
   1284c:	0000 1004      	orib #4,%d0
   12850:	0000 303f      	orib #63,%d0
   12854:	0000 3050      	orib #80,%d0
   12858:	0000 29fa      	orib #-6,%d0
   1285c:	0000 460e      	orib #14,%d0
   12860:	0000 6543      	orib #67,%d0
   12864:	0001 e4c1      	orib #-63,%d1
   12868:	0000 f536      	orib #54,%d0
   1286c:	0008           	.short 0x0008
   1286e:	420d           	.short 0x420d
   12870:	0034 cf4a 0110 	orib #74,%a4@(0,%d0:w)
   12876:	c499           	andl %a1@+,%d2
   12878:	03f0 ac74      	bset %d1,%a0@(74,%a2:l:4)
   1287c:	03d1           	bset %d1,%a1@
   1287e:	987a 1f53      	subw %pc@(0x147d3),%d4
   12882:	16c7           	moveb %d7,%a3@+
   12884:	1fd3           	.short 0x1fd3
   12886:	71a5           	mvzb %a5@-,%d0
   12888:	3d89 a153 1b89 	movew %a1,%fp@(0)@(1b89772e)
   1288e:	772e
	...
   12898:	0005 c000      	orib #0,%d5
   1289c:	0000 2000      	orib #0,%d0
   128a0:	0000 3000      	orib #0,%d0
   128a4:	0000 1000      	orib #0,%d0
   128a8:	0000 1801      	orib #1,%d0
   128ac:	0000 0801      	orib #1,%d0
   128b0:	0000 283f      	orib #63,%d0
   128b4:	0000 1845      	orib #69,%d0
   128b8:	0000 19f9      	orib #-7,%d0
   128bc:	0000 74f7      	orib #-9,%d0
   128c0:	0000 3efd      	orib #-3,%d0
   128c4:	0001 216e      	orib #110,%d1
   128c8:	0002 eb89      	orib #-119,%d2
   128cc:	000c           	.short 0x000c
   128ce:	d7fe           	.short 0xd7fe
   128d0:	000f           	.short 0x000f
   128d2:	f63d           	.short 0xf63d
   128d4:	002c 9e7e 039b 	orib #126,%a4@(923)
   128da:	dfbb           	.short 0xdfbb
   128dc:	00f4           	.short 0x00f4
   128de:	ade5           	.short 0xade5
   128e0:	00ff           	.short 0x00ff
   128e2:	f979           	.short 0xf979
   128e4:	1eb7 3fdb 03cb 	moveb @(0)@(3cb7bae),%sp@
   128ea:	7bae
   128ec:	059f           	bclr %d2,%sp@+
   128ee:	abd7           	.short 0xabd7
	...
   128f8:	0007 c000      	orib #0,%d7
   128fc:	0000 6000      	orib #0,%d0
   12900:	0000 3000      	orib #0,%d0
   12904:	0000 3000      	orib #0,%d0
   12908:	0000 1803      	orib #3,%d0
   1290c:	0000 180f      	orib #15,%d0
   12910:	0000 383f      	orib #63,%d0
   12914:	0000 38ff      	orib #-1,%d0
   12918:	0000 39ff      	orib #-1,%d0
   1291c:	0000 7fff      	orib #-1,%d0
   12920:	0000 ffff      	orib #-1,%d0
   12924:	0001 ffff      	orib #-1,%d1
   12928:	0003 ffff      	orib #-1,%d3
   1292c:	000f           	.short 0x000f
   1292e:	ffff           	.short 0xffff
   12930:	003f           	.short 0x003f
   12932:	ffff           	.short 0xffff
   12934:	01ff           	.short 0x01ff
   12936:	ffff           	.short 0xffff
   12938:	03ff           	.short 0x03ff
   1293a:	ffff           	.short 0xffff
   1293c:	0fff           	.short 0x0fff
   1293e:	ffff           	.short 0xffff
   12940:	1fff           	.short 0x1fff
   12942:	ffff           	.short 0xffff
   12944:	1fff           	.short 0x1fff
   12946:	ffff           	.short 0xffff
   12948:	3fff           	.short 0x3fff
   1294a:	ffff           	.short 0xffff
   1294c:	3fff           	.short 0x3fff
   1294e:	ffff           	.short 0xffff
	...
   12958:	0007 c000      	orib #0,%d7
   1295c:	0000 6000      	orib #0,%d0
   12960:	0000 3000      	orib #0,%d0
   12964:	0000 3000      	orib #0,%d0
   12968:	0000 1803      	orib #3,%d0
   1296c:	0000 180f      	orib #15,%d0
   12970:	0000 383f      	orib #63,%d0
   12974:	0000 38ff      	orib #-1,%d0
   12978:	0000 39ff      	orib #-1,%d0
   1297c:	0000 7fff      	orib #-1,%d0
   12980:	0000 ffff      	orib #-1,%d0
   12984:	0001 ffff      	orib #-1,%d1
   12988:	0003 ffff      	orib #-1,%d3
   1298c:	000f           	.short 0x000f
   1298e:	ffff           	.short 0xffff
   12990:	003f           	.short 0x003f
   12992:	ffff           	.short 0xffff
   12994:	01ff           	.short 0x01ff
   12996:	ffff           	.short 0xffff
   12998:	03ff           	.short 0x03ff
   1299a:	ffff           	.short 0xffff
   1299c:	0fff           	.short 0x0fff
   1299e:	ffff           	.short 0xffff
   129a0:	1fff           	.short 0x1fff
   129a2:	ffff           	.short 0xffff
   129a4:	1fff           	.short 0x1fff
   129a6:	ffff           	.short 0xffff
   129a8:	3fff           	.short 0x3fff
   129aa:	ffff           	.short 0xffff
   129ac:	3fff           	.short 0x3fff
   129ae:	ffff           	.short 0xffff
	...
   129c0:	0000 0001      	orib #1,%d0
   129c4:	0000 0000      	orib #0,%d0
   129c8:	0000 000f      	orib #15,%d0
   129cc:	0000 00f4      	orib #-12,%d0
   129d0:	0000 079f      	orib #-97,%d0
   129d4:	0000 7150      	orib #80,%d0
   129d8:	0001 01fa      	orib #-6,%d1
   129dc:	0002 060e      	orib #14,%d2
   129e0:	0007 0543      	orib #67,%d7
   129e4:	000d           	.short 0x000d
   129e6:	a4c1           	.short 0xa4c1
   129e8:	0018 f536      	orib #54,%a0@+
   129ec:	0008           	.short 0x0008
   129ee:	420d           	.short 0x420d
   129f0:	0034 cf4a 0110 	orib #74,%a4@(0,%d0:w)
   129f6:	c499           	andl %a1@+,%d2
   129f8:	03f0 ac74      	bset %d1,%a0@(74,%a2:l:4)
   129fc:	03d1           	bset %d1,%a1@
   129fe:	987a 1f53      	subw %pc@(0x14953),%d4
   12a02:	16c7           	moveb %d7,%a3@+
   12a04:	1fd3           	.short 0x1fd3
   12a06:	71a5           	mvzb %a5@-,%d0
   12a08:	3d89 a153 1b89 	movew %a1,%fp@(0)@(1b89772e)
   12a0e:	772e
	...
   12a20:	0000 0001      	orib #1,%d0
   12a24:	0000 0003      	orib #3,%d0
   12a28:	0000 0001      	orib #1,%d0
   12a2c:	0000 0021      	orib #33,%d0
   12a30:	0000 027f      	orib #127,%d0
   12a34:	0000 7fc5      	orib #-59,%d0
   12a38:	0000 73f9      	orib #-7,%d0
   12a3c:	0003 c4f7      	orib #-9,%d3
   12a40:	0001 9efd      	orib #-3,%d1
   12a44:	0003 e16e      	orib #110,%d3
   12a48:	0006 eb89      	orib #-119,%d6
   12a4c:	001c d7fe      	orib #-2,%a4@+
   12a50:	000f           	.short 0x000f
   12a52:	f63d           	.short 0xf63d
   12a54:	002c 9e7e 039b 	orib #126,%a4@(923)
   12a5a:	dfbb           	.short 0xdfbb
   12a5c:	00f4           	.short 0x00f4
   12a5e:	ade5           	.short 0xade5
   12a60:	00ff           	.short 0x00ff
   12a62:	f979           	.short 0xf979
   12a64:	1eb7 3fdb 03cb 	moveb @(0)@(3cb7bae),%sp@
   12a6a:	7bae
   12a6c:	059f           	bclr %d2,%sp@+
   12a6e:	abd7           	.short 0xabd7
   12a70:	0000 0001      	orib #1,%d0
	...
   12a80:	0000 0001      	orib #1,%d0
   12a84:	0000 0003      	orib #3,%d0
   12a88:	0000 000f      	orib #15,%d0
   12a8c:	0000 00ff      	orib #-1,%d0
   12a90:	0000 0fff      	orib #-1,%d0
   12a94:	0000 7fff      	orib #-1,%d0
   12a98:	0001 f3ff      	orib #-1,%d1
   12a9c:	0003 c7ff      	orib #-1,%d3
   12aa0:	0007 9fff      	orib #-1,%d7
   12aa4:	000f           	.short 0x000f
   12aa6:	ffff           	.short 0xffff
   12aa8:	001f ffff      	orib #-1,%sp@+
   12aac:	001f ffff      	orib #-1,%sp@+
   12ab0:	003f           	.short 0x003f
   12ab2:	ffff           	.short 0xffff
   12ab4:	01ff           	.short 0x01ff
   12ab6:	ffff           	.short 0xffff
   12ab8:	03ff           	.short 0x03ff
   12aba:	ffff           	.short 0xffff
   12abc:	0fff           	.short 0x0fff
   12abe:	ffff           	.short 0xffff
   12ac0:	1fff           	.short 0x1fff
   12ac2:	ffff           	.short 0xffff
   12ac4:	1fff           	.short 0x1fff
   12ac6:	ffff           	.short 0xffff
   12ac8:	3fff           	.short 0x3fff
   12aca:	ffff           	.short 0xffff
   12acc:	3fff           	.short 0x3fff
   12ace:	ffff           	.short 0xffff
   12ad0:	0000 0001      	orib #1,%d0
	...
   12ae0:	0000 0001      	orib #1,%d0
   12ae4:	0000 0003      	orib #3,%d0
   12ae8:	0000 000f      	orib #15,%d0
   12aec:	0000 00ff      	orib #-1,%d0
   12af0:	0000 0fff      	orib #-1,%d0
   12af4:	0000 7fff      	orib #-1,%d0
   12af8:	0001 f3ff      	orib #-1,%d1
   12afc:	0003 c7ff      	orib #-1,%d3
   12b00:	0007 9fff      	orib #-1,%d7
   12b04:	000f           	.short 0x000f
   12b06:	ffff           	.short 0xffff
   12b08:	001f ffff      	orib #-1,%sp@+
   12b0c:	001f ffff      	orib #-1,%sp@+
   12b10:	003f           	.short 0x003f
   12b12:	ffff           	.short 0xffff
   12b14:	01ff           	.short 0x01ff
   12b16:	ffff           	.short 0xffff
   12b18:	03ff           	.short 0x03ff
   12b1a:	ffff           	.short 0xffff
   12b1c:	0fff           	.short 0x0fff
   12b1e:	ffff           	.short 0xffff
   12b20:	1fff           	.short 0x1fff
   12b22:	ffff           	.short 0xffff
   12b24:	1fff           	.short 0x1fff
   12b26:	ffff           	.short 0xffff
   12b28:	3fff           	.short 0x3fff
   12b2a:	ffff           	.short 0xffff
   12b2c:	3fff           	.short 0x3fff
   12b2e:	ffff           	.short 0xffff
	...
   12b40:	0000 0002      	orib #2,%d0
   12b44:	0000 0000      	orib #0,%d0
   12b48:	0000 0123      	orib #35,%d0
   12b4c:	0000 0104      	orib #4,%d0
   12b50:	0000 043f      	orib #63,%d0
   12b54:	0000 0650      	orib #80,%d0
   12b58:	0000 09fa      	orib #-6,%d0
   12b5c:	0000 1a0e      	orib #14,%d0
   12b60:	0000 3543      	orib #67,%d0
   12b64:	0000 44c1      	orib #-63,%d0
   12b68:	0001 f536      	orib #54,%d1
   12b6c:	0007 420d      	orib #13,%d7
   12b70:	000c           	.short 0x000c
   12b72:	cf4a           	exg %sp,%a2
   12b74:	0110           	btst %d0,%a0@
   12b76:	c499           	andl %a1@+,%d2
   12b78:	03f0 ac74      	bset %d1,%a0@(74,%a2:l:4)
   12b7c:	03d1           	bset %d1,%a1@
   12b7e:	987a 1f53      	subw %pc@(0x14ad3),%d4
   12b82:	16c7           	moveb %d7,%a3@+
   12b84:	1fd3           	.short 0x1fd3
   12b86:	71a5           	mvzb %a5@-,%d0
   12b88:	3d89 a153 1b89 	movew %a1,%fp@(0)@(1b89772e)
   12b8e:	772e
	...
   12ba0:	0000 0005      	orib #5,%d0
   12ba4:	0000 001c      	orib #28,%d0
   12ba8:	0000 00e1      	orib #-31,%d0
   12bac:	0000 0101      	orib #1,%d0
   12bb0:	0000 063f      	orib #63,%d0
   12bb4:	0000 0245      	orib #69,%d0
   12bb8:	0000 05f9      	orib #-7,%d0
   12bbc:	0000 1cf7      	orib #-9,%d0
   12bc0:	0000 0efd      	orib #-3,%d0
   12bc4:	0000 216e      	orib #110,%d0
   12bc8:	0001 6b89      	orib #-119,%d1
   12bcc:	0000 d7fe      	orib #-2,%d0
   12bd0:	000f           	.short 0x000f
   12bd2:	f63d           	.short 0xf63d
   12bd4:	002c 9e7e 039b 	orib #126,%a4@(923)
   12bda:	dfbb           	.short 0xdfbb
   12bdc:	00f4           	.short 0x00f4
   12bde:	ade5           	.short 0xade5
   12be0:	00ff           	.short 0x00ff
   12be2:	f979           	.short 0xf979
   12be4:	1eb7 3fdb 03cb 	moveb @(0)@(3cb7bae),%sp@
   12bea:	7bae
   12bec:	059f           	bclr %d2,%sp@+
   12bee:	abd7           	.short 0xabd7
	...
   12c00:	0000 0007      	orib #7,%d0
   12c04:	0000 003c      	orib #60,%d0
   12c08:	0000 01e3      	orib #-29,%d0
   12c0c:	0000 030f      	orib #15,%d0
   12c10:	0000 063f      	orib #63,%d0
   12c14:	0000 0eff      	orib #-1,%d0
   12c18:	0000 1dff      	orib #-1,%d0
   12c1c:	0000 1fff      	orib #-1,%d0
   12c20:	0000 3fff      	orib #-1,%d0
   12c24:	0000 7fff      	orib #-1,%d0
   12c28:	0001 ffff      	orib #-1,%d1
   12c2c:	0007 ffff      	orib #-1,%d7
   12c30:	000f           	.short 0x000f
   12c32:	ffff           	.short 0xffff
   12c34:	01ff           	.short 0x01ff
   12c36:	ffff           	.short 0xffff
   12c38:	03ff           	.short 0x03ff
   12c3a:	ffff           	.short 0xffff
   12c3c:	0fff           	.short 0x0fff
   12c3e:	ffff           	.short 0xffff
   12c40:	1fff           	.short 0x1fff
   12c42:	ffff           	.short 0xffff
   12c44:	1fff           	.short 0x1fff
   12c46:	ffff           	.short 0xffff
   12c48:	3fff           	.short 0x3fff
   12c4a:	ffff           	.short 0xffff
   12c4c:	3fff           	.short 0x3fff
   12c4e:	ffff           	.short 0xffff
	...
   12c60:	0000 0007      	orib #7,%d0
   12c64:	0000 003c      	orib #60,%d0
   12c68:	0000 01e3      	orib #-29,%d0
   12c6c:	0000 030f      	orib #15,%d0
   12c70:	0000 063f      	orib #63,%d0
   12c74:	0000 0eff      	orib #-1,%d0
   12c78:	0000 1dff      	orib #-1,%d0
   12c7c:	0000 1fff      	orib #-1,%d0
   12c80:	0000 3fff      	orib #-1,%d0
   12c84:	0000 7fff      	orib #-1,%d0
   12c88:	0001 ffff      	orib #-1,%d1
   12c8c:	0007 ffff      	orib #-1,%d7
   12c90:	000f           	.short 0x000f
   12c92:	ffff           	.short 0xffff
   12c94:	01ff           	.short 0x01ff
   12c96:	ffff           	.short 0xffff
   12c98:	03ff           	.short 0x03ff
   12c9a:	ffff           	.short 0xffff
   12c9c:	0fff           	.short 0x0fff
   12c9e:	ffff           	.short 0xffff
   12ca0:	1fff           	.short 0x1fff
   12ca2:	ffff           	.short 0xffff
   12ca4:	1fff           	.short 0x1fff
   12ca6:	ffff           	.short 0xffff
   12ca8:	3fff           	.short 0x3fff
   12caa:	ffff           	.short 0xffff
   12cac:	3fff           	.short 0x3fff
   12cae:	ffff           	.short 0xffff
   12cb0:	0000 0300      	orib #0,%d0
   12cb4:	0000 1c00      	orib #0,%d0
   12cb8:	0000 2000      	orib #0,%d0
   12cbc:	0000 6000      	orib #0,%d0
   12cc0:	0000 6000      	orib #0,%d0
   12cc4:	0000 7000      	orib #0,%d0
   12cc8:	0000 2003      	orib #3,%d0
   12ccc:	0000 3004      	orib #4,%d0
   12cd0:	0000 183f      	orib #63,%d0
   12cd4:	0000 3050      	orib #80,%d0
   12cd8:	0000 e1fa      	orib #-6,%d0
   12cdc:	0000 760e      	orib #14,%d0
   12ce0:	0003 8543      	orib #67,%d3
   12ce4:	0003 a4c1      	orib #-63,%d3
   12ce8:	0004 f536      	orib #54,%d4
   12cec:	0008           	.short 0x0008
   12cee:	420d           	.short 0x420d
   12cf0:	0034 cf4a 0110 	orib #74,%a4@(0,%d0:w)
   12cf6:	c499           	andl %a1@+,%d2
   12cf8:	03f0 ac74      	bset %d1,%a0@(74,%a2:l:4)
   12cfc:	03d1           	bset %d1,%a1@
   12cfe:	987a 1f53      	subw %pc@(0x14c53),%d4
   12d02:	16c7           	moveb %d7,%a3@+
   12d04:	1fd3           	.short 0x1fd3
   12d06:	71a5           	mvzb %a5@-,%d0
   12d08:	3d89 a153 1b89 	movew %a1,%fp@(0)@(1b89772e)
   12d0e:	772e
   12d10:	0000 06c0      	orib #-64,%d0
   12d14:	0000 0c00      	orib #0,%d0
   12d18:	0000 3000      	orib #0,%d0
   12d1c:	0000 8000      	orib #0,%d0
   12d20:	0000 2000      	orib #0,%d0
   12d24:	0000 5000      	orib #0,%d0
   12d28:	0000 1001      	orib #1,%d0
   12d2c:	0000 3801      	orib #1,%d0
   12d30:	0000 483f      	orib #63,%d0
   12d34:	0000 0845      	orib #69,%d0
   12d38:	0000 f1f9      	orib #-7,%d0
   12d3c:	0001 b4f7      	orib #-9,%d1
   12d40:	0002 5efd      	orib #-3,%d2
   12d44:	0001 e16e      	orib #110,%d1
   12d48:	0002 eb89      	orib #-119,%d2
   12d4c:	000c           	.short 0x000c
   12d4e:	d7fe           	.short 0xd7fe
   12d50:	000f           	.short 0x000f
   12d52:	f63d           	.short 0xf63d
   12d54:	002c 9e7e 039b 	orib #126,%a4@(923)
   12d5a:	dfbb           	.short 0xdfbb
   12d5c:	00f4           	.short 0x00f4
   12d5e:	ade5           	.short 0xade5
   12d60:	00ff           	.short 0x00ff
   12d62:	f979           	.short 0xf979
   12d64:	1eb7 3fdb 03cb 	moveb @(0)@(3cb7bae),%sp@
   12d6a:	7bae
   12d6c:	059f           	bclr %d2,%sp@+
   12d6e:	abd7           	.short 0xabd7
   12d70:	0000 07c0      	orib #-64,%d0
   12d74:	0000 1c00      	orib #0,%d0
   12d78:	0000 7000      	orib #0,%d0
   12d7c:	0000 e000      	orib #0,%d0
   12d80:	0000 e000      	orib #0,%d0
   12d84:	0000 7000      	orib #0,%d0
   12d88:	0000 7003      	orib #3,%d0
   12d8c:	0000 380f      	orib #15,%d0
   12d90:	0000 783f      	orib #63,%d0
   12d94:	0000 78ff      	orib #-1,%d0
   12d98:	0000 f1ff      	orib #-1,%d0
   12d9c:	0001 ffff      	orib #-1,%d1
   12da0:	0003 ffff      	orib #-1,%d3
   12da4:	0007 ffff      	orib #-1,%d7
   12da8:	000f           	.short 0x000f
   12daa:	ffff           	.short 0xffff
   12dac:	001f ffff      	orib #-1,%sp@+
   12db0:	003f           	.short 0x003f
   12db2:	ffff           	.short 0xffff
   12db4:	01ff           	.short 0x01ff
   12db6:	ffff           	.short 0xffff
   12db8:	03ff           	.short 0x03ff
   12dba:	ffff           	.short 0xffff
   12dbc:	0fff           	.short 0x0fff
   12dbe:	ffff           	.short 0xffff
   12dc0:	1fff           	.short 0x1fff
   12dc2:	ffff           	.short 0xffff
   12dc4:	1fff           	.short 0x1fff
   12dc6:	ffff           	.short 0xffff
   12dc8:	3fff           	.short 0x3fff
   12dca:	ffff           	.short 0xffff
   12dcc:	3fff           	.short 0x3fff
   12dce:	ffff           	.short 0xffff
   12dd0:	0000 07c0      	orib #-64,%d0
   12dd4:	0000 1c00      	orib #0,%d0
   12dd8:	0000 7000      	orib #0,%d0
   12ddc:	0000 e000      	orib #0,%d0
   12de0:	0000 e000      	orib #0,%d0
   12de4:	0000 7000      	orib #0,%d0
   12de8:	0000 7003      	orib #3,%d0
   12dec:	0000 380f      	orib #15,%d0
   12df0:	0000 783f      	orib #63,%d0
   12df4:	0000 78ff      	orib #-1,%d0
   12df8:	0000 f1ff      	orib #-1,%d0
   12dfc:	0001 ffff      	orib #-1,%d1
   12e00:	0003 ffff      	orib #-1,%d3
   12e04:	0007 ffff      	orib #-1,%d7
   12e08:	000f           	.short 0x000f
   12e0a:	ffff           	.short 0xffff
   12e0c:	001f ffff      	orib #-1,%sp@+
   12e10:	003f           	.short 0x003f
   12e12:	ffff           	.short 0xffff
   12e14:	01ff           	.short 0x01ff
   12e16:	ffff           	.short 0xffff
   12e18:	03ff           	.short 0x03ff
   12e1a:	ffff           	.short 0xffff
   12e1c:	0fff           	.short 0x0fff
   12e1e:	ffff           	.short 0xffff
   12e20:	1fff           	.short 0x1fff
   12e22:	ffff           	.short 0xffff
   12e24:	1fff           	.short 0x1fff
   12e26:	ffff           	.short 0xffff
   12e28:	3fff           	.short 0x3fff
   12e2a:	ffff           	.short 0xffff
   12e2c:	3fff           	.short 0x3fff
   12e2e:	ffff           	.short 0xffff
	...
   12e38:	0003 0000      	orib #0,%d3
   12e3c:	0000 6000      	orib #0,%d0
   12e40:	0000 2000      	orib #0,%d0
   12e44:	0000 2000      	orib #0,%d0
   12e48:	0000 1803      	orib #3,%d0
   12e4c:	0000 1004      	orib #4,%d0
   12e50:	0000 303f      	orib #63,%d0
   12e54:	0000 3050      	orib #80,%d0
   12e58:	0000 29fa      	orib #-6,%d0
   12e5c:	0000 460e      	orib #14,%d0
   12e60:	0000 6543      	orib #67,%d0
   12e64:	0001 e4c1      	orib #-63,%d1
   12e68:	0000 f536      	orib #54,%d0
   12e6c:	0008           	.short 0x0008
   12e6e:	420d           	.short 0x420d
   12e70:	0034 cf4a 0110 	orib #74,%a4@(0,%d0:w)
   12e76:	c499           	andl %a1@+,%d2
   12e78:	03f0 ac74      	bset %d1,%a0@(74,%a2:l:4)
   12e7c:	03d1           	bset %d1,%a1@
   12e7e:	987a 1f53      	subw %pc@(0x14dd3),%d4
   12e82:	16c7           	moveb %d7,%a3@+
   12e84:	1fd3           	.short 0x1fd3
   12e86:	71a5           	mvzb %a5@-,%d0
   12e88:	3d89 a153 1b89 	movew %a1,%fp@(0)@(1b89772e)
   12e8e:	772e
	...
   12e98:	0005 c000      	orib #0,%d5
   12e9c:	0000 2000      	orib #0,%d0
   12ea0:	0000 3000      	orib #0,%d0
   12ea4:	0000 1000      	orib #0,%d0
   12ea8:	0000 1801      	orib #1,%d0
   12eac:	0000 0801      	orib #1,%d0
   12eb0:	0000 283f      	orib #63,%d0
   12eb4:	0000 1845      	orib #69,%d0
   12eb8:	0000 19f9      	orib #-7,%d0
   12ebc:	0000 74f7      	orib #-9,%d0
   12ec0:	0000 3efd      	orib #-3,%d0
   12ec4:	0001 216e      	orib #110,%d1
   12ec8:	0002 eb89      	orib #-119,%d2
   12ecc:	000c           	.short 0x000c
   12ece:	d7fe           	.short 0xd7fe
   12ed0:	000f           	.short 0x000f
   12ed2:	f63d           	.short 0xf63d
   12ed4:	002c 9e7e 039b 	orib #126,%a4@(923)
   12eda:	dfbb           	.short 0xdfbb
   12edc:	00f4           	.short 0x00f4
   12ede:	ade5           	.short 0xade5
   12ee0:	00ff           	.short 0x00ff
   12ee2:	f979           	.short 0xf979
   12ee4:	1eb7 3fdb 03cb 	moveb @(0)@(3cb7bae),%sp@
   12eea:	7bae
   12eec:	059f           	bclr %d2,%sp@+
   12eee:	abd7           	.short 0xabd7
	...
   12ef8:	0007 c000      	orib #0,%d7
   12efc:	0000 6000      	orib #0,%d0
   12f00:	0000 3000      	orib #0,%d0
   12f04:	0000 3000      	orib #0,%d0
   12f08:	0000 1803      	orib #3,%d0
   12f0c:	0000 180f      	orib #15,%d0
   12f10:	0000 383f      	orib #63,%d0
   12f14:	0000 38ff      	orib #-1,%d0
   12f18:	0000 79ff      	orib #-1,%d0
   12f1c:	0000 7fff      	orib #-1,%d0
   12f20:	0000 ffff      	orib #-1,%d0
   12f24:	0001 ffff      	orib #-1,%d1
   12f28:	0003 ffff      	orib #-1,%d3
   12f2c:	000f           	.short 0x000f
   12f2e:	ffff           	.short 0xffff
   12f30:	003f           	.short 0x003f
   12f32:	ffff           	.short 0xffff
   12f34:	01ff           	.short 0x01ff
   12f36:	ffff           	.short 0xffff
   12f38:	03ff           	.short 0x03ff
   12f3a:	ffff           	.short 0xffff
   12f3c:	0fff           	.short 0x0fff
   12f3e:	ffff           	.short 0xffff
   12f40:	1fff           	.short 0x1fff
   12f42:	ffff           	.short 0xffff
   12f44:	1fff           	.short 0x1fff
   12f46:	ffff           	.short 0xffff
   12f48:	3fff           	.short 0x3fff
   12f4a:	ffff           	.short 0xffff
   12f4c:	3fff           	.short 0x3fff
   12f4e:	ffff           	.short 0xffff
	...
   12f58:	0007 c000      	orib #0,%d7
   12f5c:	0000 6000      	orib #0,%d0
   12f60:	0000 3000      	orib #0,%d0
   12f64:	0000 3000      	orib #0,%d0
   12f68:	0000 1803      	orib #3,%d0
   12f6c:	0000 180f      	orib #15,%d0
   12f70:	0000 383f      	orib #63,%d0
   12f74:	0000 38ff      	orib #-1,%d0
   12f78:	0000 79ff      	orib #-1,%d0
   12f7c:	0000 7fff      	orib #-1,%d0
   12f80:	0000 ffff      	orib #-1,%d0
   12f84:	0001 ffff      	orib #-1,%d1
   12f88:	0003 ffff      	orib #-1,%d3
   12f8c:	000f           	.short 0x000f
   12f8e:	ffff           	.short 0xffff
   12f90:	003f           	.short 0x003f
   12f92:	ffff           	.short 0xffff
   12f94:	01ff           	.short 0x01ff
   12f96:	ffff           	.short 0xffff
   12f98:	03ff           	.short 0x03ff
   12f9a:	ffff           	.short 0xffff
   12f9c:	0fff           	.short 0x0fff
   12f9e:	ffff           	.short 0xffff
   12fa0:	1fff           	.short 0x1fff
   12fa2:	ffff           	.short 0xffff
   12fa4:	1fff           	.short 0x1fff
   12fa6:	ffff           	.short 0xffff
   12fa8:	3fff           	.short 0x3fff
   12faa:	ffff           	.short 0xffff
   12fac:	3fff           	.short 0x3fff
   12fae:	ffff           	.short 0xffff
   12fb0:	3cea 421d      	movew %a2@(16925),%fp@+
   12fb4:	22fe           	.short 0x22fe
   12fb6:	c35d           	andw %d1,%a5@+
   12fb8:	03fa           	.short 0x03fa
   12fba:	7632           	moveq #50,%d3
   12fbc:	0cff           	.short 0x0cff
   12fbe:	885a           	orw %a2@+,%d4
   12fc0:	06bd f943 0bfc 	addil #-113046532,%d5
   12fc6:	9486           	subl %d6,%d2
   12fc8:	1ffd           	.short 0x1ffd
   12fca:	911b           	subb %d0,%a3@+
   12fcc:	1fd4           	.short 0x1fd4
   12fce:	930f           	subxb %sp@-,%a1@-
   12fd0:	0ed4           	.short 0x0ed4
   12fd2:	990f           	subxb %sp@-,%a4@-
   12fd4:	0ddc           	bset %d6,%a4@+
   12fd6:	b306           	eorb %d1,%d6
   12fd8:	0159           	bchg %d0,%a1@+
   12fda:	523d           	.short 0x523d
   12fdc:	02d5           	.short 0x02d5
   12fde:	1b11           	moveb %a1@,%a5@-
   12fe0:	07eb 9d10      	bset %d3,%a3@(-25328)
   12fe4:	026b 0d1e 03d9 	andiw #3358,%a3@(985)
   12fea:	9983           	subxl %d3,%d4
   12fec:	017d           	.short 0x017d
   12fee:	a445 01ad      	msacw %d5l,%a2u
   12ff2:	3332 00ed      	movew %a2@(ffffffffffffffed,%d0:w),%a1@-
   12ff6:	0798           	bclr %d3,%a0@+
   12ff8:	003c a908      	orib #8,%ccr
   12ffc:	0069 8ac8 0029 	oriw #-30008,%a1@(41)
   13002:	acc0           	.short 0xacc0
   13004:	001a e4c0      	orib #-64,%a2@+
   13008:	000e           	.short 0x000e
   1300a:	4e80           	.short 0x4e80
   1300c:	0002 5a00      	orib #0,%d2
   13010:	3dcf           	.short 0x3dcf
   13012:	ffee           	.short 0xffee
   13014:	3e52           	moveaw %a2@,%sp
   13016:	7eba           	moveq #-70,%d7
   13018:	3a56           	moveaw %fp@,%a5
   1301a:	cdfd           	.short 0xcdfd
   1301c:	3494           	movew %a4@,%a2@
   1301e:	ffe5           	.short 0xffe5
   13020:	1496           	moveb %fp@,%a2@
   13022:	8eff           	.short 0x8eff
   13024:	0a85 fbfd 1e96 	eoril #-67297642,%d5
   1302a:	ffef           	.short 0xffef
   1302c:	1eb7 fdff 0c5f 	moveb @(c5ff7fe)@(77defd),%sp@
   13032:	f7fe 0077 defd
   13038:	0273 bfc2 059f 	andiw #-16446,@(0)@(fffffffff6fe072d,%d0:w:4)
   1303e:	f6fe 072d
   13042:	73ef 004d      	mvzw %sp@(77),%d1
   13046:	fbef           	.short 0xfbef
   13048:	018d 6fff      	movepw %d0,%a5@(28671)
   1304c:	010b 7ffb      	movepw %a3@(32763),%d0
   13050:	0037 eefc 0027 	orib #-4,%sp@(27,%d0:w)
   13056:	f95e           	.short 0xf95e
   13058:	0065 dffc      	oriw #-8196,%a5@-
   1305c:	006e fdb8 001c 	oriw #-584,%fp@(28)
   13062:	dbb0 001b      	addl %d5,%a0@(1b,%d0:w)
   13066:	5f60           	subqw #7,%a0@-
   13068:	0003 fb00      	orib #0,%d3
   1306c:	0003 ef00      	orib #0,%d3
   13070:	3fff           	.short 0x3fff
   13072:	ffff           	.short 0xffff
   13074:	3fff           	.short 0x3fff
   13076:	ffff           	.short 0xffff
   13078:	3fff           	.short 0x3fff
   1307a:	ffff           	.short 0xffff
   1307c:	3fff           	.short 0x3fff
   1307e:	ffff           	.short 0xffff
   13080:	1fff           	.short 0x1fff
   13082:	ffff           	.short 0xffff
   13084:	1fff           	.short 0x1fff
   13086:	ffff           	.short 0xffff
   13088:	17ff           	.short 0x17ff
   1308a:	fffd           	.short 0xfffd
   1308c:	07ff           	.short 0x07ff
   1308e:	fffc           	.short 0xfffc
   13090:	1fff           	.short 0x1fff
   13092:	ffff           	.short 0xffff
   13094:	0fff           	.short 0x0fff
   13096:	ffff           	.short 0xffff
   13098:	07ff           	.short 0x07ff
   1309a:	ffff           	.short 0xffff
   1309c:	07ff           	.short 0x07ff
   1309e:	ffff           	.short 0xffff
   130a0:	07ff           	.short 0x07ff
   130a2:	ffff           	.short 0xffff
   130a4:	03ff           	.short 0x03ff
   130a6:	ffff           	.short 0xffff
   130a8:	03ff           	.short 0x03ff
   130aa:	ffff           	.short 0xffff
   130ac:	01ff           	.short 0x01ff
   130ae:	ffff           	.short 0xffff
   130b0:	01ff           	.short 0x01ff
   130b2:	fffe           	.short 0xfffe
   130b4:	00ff           	.short 0x00ff
   130b6:	fffe           	.short 0xfffe
   130b8:	007f           	.short 0x007f
   130ba:	fffc           	.short 0xfffc
   130bc:	007f           	.short 0x007f
   130be:	fff8           	.short 0xfff8
   130c0:	003f           	.short 0x003f
   130c2:	fff0           	.short 0xfff0
   130c4:	001f ffe0      	orib #-32,%sp@+
   130c8:	000f           	.short 0x000f
   130ca:	ff80 0003      	cp1stl %d0,%d0,#1,#3
   130ce:	ff00 3fff      	cp1stb %d3,%d0,#8,#511
   130d2:	ffff           	.short 0xffff
   130d4:	3fff           	.short 0x3fff
   130d6:	ffff           	.short 0xffff
   130d8:	3fff           	.short 0x3fff
   130da:	ffff           	.short 0xffff
   130dc:	3fff           	.short 0x3fff
   130de:	ffff           	.short 0xffff
   130e0:	1fff           	.short 0x1fff
   130e2:	ffff           	.short 0xffff
   130e4:	1fff           	.short 0x1fff
   130e6:	ffff           	.short 0xffff
   130e8:	1fff           	.short 0x1fff
   130ea:	ffff           	.short 0xffff
   130ec:	1fff           	.short 0x1fff
   130ee:	ffff           	.short 0xffff
   130f0:	1fff           	.short 0x1fff
   130f2:	ffff           	.short 0xffff
   130f4:	0fff           	.short 0x0fff
   130f6:	ffff           	.short 0xffff
   130f8:	07ff           	.short 0x07ff
   130fa:	ffff           	.short 0xffff
   130fc:	07ff           	.short 0x07ff
   130fe:	ffff           	.short 0xffff
   13100:	07ff           	.short 0x07ff
   13102:	ffff           	.short 0xffff
   13104:	03ff           	.short 0x03ff
   13106:	ffff           	.short 0xffff
   13108:	03ff           	.short 0x03ff
   1310a:	ffff           	.short 0xffff
   1310c:	01ff           	.short 0x01ff
   1310e:	ffff           	.short 0xffff
   13110:	01ff           	.short 0x01ff
   13112:	fffe           	.short 0xfffe
   13114:	00ff           	.short 0x00ff
   13116:	fffe           	.short 0xfffe
   13118:	007f           	.short 0x007f
   1311a:	fffc           	.short 0xfffc
   1311c:	007f           	.short 0x007f
   1311e:	fff8           	.short 0xfff8
   13120:	003f           	.short 0x003f
   13122:	fff0           	.short 0xfff0
   13124:	001f ffe0      	orib #-32,%sp@+
   13128:	000f           	.short 0x000f
   1312a:	ff80 0003      	cp1stl %d0,%d0,#1,#3
   1312e:	ff00 3cca      	cp1stb %d3,%d0,#7,#202
   13132:	421d           	clrb %a5@+
   13134:	22fe           	.short 0x22fe
   13136:	c35d           	andw %d1,%a5@+
   13138:	03fa           	.short 0x03fa
   1313a:	7632           	moveq #50,%d3
   1313c:	0cff           	.short 0x0cff
   1313e:	885a           	orw %a2@+,%d4
   13140:	06bd f943 0bfc 	addil #-113046532,%d5
   13146:	9486           	subl %d6,%d2
   13148:	1ffd           	.short 0x1ffd
   1314a:	911b           	subb %d0,%a3@+
   1314c:	1d6d ee07 0f6d 	moveb %a5@(-4601),%fp@(3949)
   13152:	eecb           	.short 0xeecb
   13154:	0cfd           	.short 0x0cfd
   13156:	eeee 01fd effd 	bfset %fp@(-4099),7,%d5
   1315c:	02ff           	.short 0x02ff
   1315e:	ffd1           	.short 0xffd1
   13160:	06ff           	.short 0x06ff
   13162:	ff10 026f      	cp1stb %d0,%a0@,#2,#111
   13166:	fd1e 02d9      	cp0stb %d0,%fp@+,#2,#217
   1316a:	9983           	subxl %d3,%d4
   1316c:	017d           	.short 0x017d
   1316e:	a445 01ad      	msacw %d5l,%a2u
   13172:	3332 00ed      	movew %a2@(ffffffffffffffed,%d0:w),%a1@-
   13176:	0798           	bclr %d3,%a0@+
   13178:	003c a908      	orib #8,%ccr
   1317c:	0069 8ac8 0029 	oriw #-30008,%a1@(41)
   13182:	acc0           	.short 0xacc0
   13184:	001a e4c0      	orib #-64,%a2@+
   13188:	000e           	.short 0x000e
   1318a:	4e80           	.short 0x4e80
   1318c:	0002 5a00      	orib #0,%d2
   13190:	3def           	.short 0x3def
   13192:	ffee           	.short 0xffee
   13194:	3e52           	moveaw %a2@,%sp
   13196:	7eba           	moveq #-70,%d7
   13198:	3a56           	moveaw %fp@,%a5
   1319a:	cdfd           	.short 0xcdfd
   1319c:	3494           	movew %a4@,%a2@
   1319e:	ffe5           	.short 0xffe5
   131a0:	1496           	moveb %fp@,%a2@
   131a2:	8eff           	.short 0x8eff
   131a4:	0a85 fbfd 1e96 	eoril #-67297642,%d5
   131aa:	ffef           	.short 0xffef
   131ac:	1eff           	.short 0x1eff
   131ae:	fdff           	.short 0xfdff
   131b0:	0dff           	.short 0x0dff
   131b2:	fffe           	.short 0xfffe
   131b4:	01ff           	.short 0x01ff
   131b6:	fffd           	.short 0xfffd
   131b8:	02ff           	.short 0x02ff
   131ba:	ffe2           	.short 0xffe2
   131bc:	05ff           	.short 0x05ff
   131be:	fffe           	.short 0xfffe
   131c0:	073f           	.short 0x073f
   131c2:	ffef           	.short 0xffef
   131c4:	004f           	.short 0x004f
   131c6:	fbef           	.short 0xfbef
   131c8:	01cd 6fff      	movepl %d0,%a5@(28671)
   131cc:	011b           	btst %d0,%a3@+
   131ce:	7ffb 0037      	mvzw %pc@(0x13207,%d0:w),%d7
   131d2:	eefc           	.short 0xeefc
   131d4:	0027 f95e      	orib #94,%sp@-
   131d8:	0065 dffc      	oriw #-8196,%a5@-
   131dc:	006e fdb8 001c 	oriw #-584,%fp@(28)
   131e2:	dbb0 001b      	addl %d5,%a0@(1b,%d0:w)
   131e6:	5f60           	subqw #7,%a0@-
   131e8:	0003 fb00      	orib #0,%d3
   131ec:	0003 ef00      	orib #0,%d3
   131f0:	3fff           	.short 0x3fff
   131f2:	ffff           	.short 0xffff
   131f4:	3fff           	.short 0x3fff
   131f6:	ffff           	.short 0xffff
   131f8:	3fff           	.short 0x3fff
   131fa:	ffff           	.short 0xffff
   131fc:	3fff           	.short 0x3fff
   131fe:	ffff           	.short 0xffff
   13200:	1fff           	.short 0x1fff
   13202:	ffff           	.short 0xffff
   13204:	1fff           	.short 0x1fff
   13206:	ffff           	.short 0xffff
   13208:	17ff           	.short 0x17ff
   1320a:	fffd           	.short 0xfffd
   1320c:	07db           	bset %d3,%a3@+
   1320e:	dffc 1edb ddff 	addal #517725695,%sp
   13214:	0fdb           	bset %d7,%a3@+
   13216:	dddf           	addal %sp@+,%fp
   13218:	07fb           	.short 0x07fb
   1321a:	ddff           	.short 0xddff
   1321c:	07fb           	.short 0x07fb
   1321e:	dfff           	.short 0xdfff
   13220:	07df           	bset %d3,%sp@+
   13222:	fdff           	.short 0xfdff
   13224:	03fb           	.short 0x03fb
   13226:	dfff           	.short 0xdfff
   13228:	03ff           	.short 0x03ff
   1322a:	ffff           	.short 0xffff
   1322c:	01ff           	.short 0x01ff
   1322e:	ffff           	.short 0xffff
   13230:	01ff           	.short 0x01ff
   13232:	fffe           	.short 0xfffe
   13234:	00ff           	.short 0x00ff
   13236:	fffe           	.short 0xfffe
   13238:	007f           	.short 0x007f
   1323a:	fffc           	.short 0xfffc
   1323c:	007f           	.short 0x007f
   1323e:	fff8           	.short 0xfff8
   13240:	003f           	.short 0x003f
   13242:	fff0           	.short 0xfff0
   13244:	001f ffe0      	orib #-32,%sp@+
   13248:	000f           	.short 0x000f
   1324a:	ff80 0003      	cp1stl %d0,%d0,#1,#3
   1324e:	ff00 3fff      	cp1stb %d3,%d0,#8,#511
   13252:	ffff           	.short 0xffff
   13254:	3fff           	.short 0x3fff
   13256:	ffff           	.short 0xffff
   13258:	3fff           	.short 0x3fff
   1325a:	ffff           	.short 0xffff
   1325c:	3fff           	.short 0x3fff
   1325e:	ffff           	.short 0xffff
   13260:	1fff           	.short 0x1fff
   13262:	ffff           	.short 0xffff
   13264:	1fff           	.short 0x1fff
   13266:	ffff           	.short 0xffff
   13268:	1fff           	.short 0x1fff
   1326a:	ffff           	.short 0xffff
   1326c:	1fff           	.short 0x1fff
   1326e:	ffff           	.short 0xffff
   13270:	1fff           	.short 0x1fff
   13272:	ffff           	.short 0xffff
   13274:	0fff           	.short 0x0fff
   13276:	ffff           	.short 0xffff
   13278:	07ff           	.short 0x07ff
   1327a:	ffff           	.short 0xffff
   1327c:	07ff           	.short 0x07ff
   1327e:	ffff           	.short 0xffff
   13280:	07ff           	.short 0x07ff
   13282:	ffff           	.short 0xffff
   13284:	03ff           	.short 0x03ff
   13286:	ffff           	.short 0xffff
   13288:	03ff           	.short 0x03ff
   1328a:	ffff           	.short 0xffff
   1328c:	01ff           	.short 0x01ff
   1328e:	ffff           	.short 0xffff
   13290:	01ff           	.short 0x01ff
   13292:	fffe           	.short 0xfffe
   13294:	00ff           	.short 0x00ff
   13296:	fffe           	.short 0xfffe
   13298:	007f           	.short 0x007f
   1329a:	fffc           	.short 0xfffc
   1329c:	007f           	.short 0x007f
   1329e:	fff8           	.short 0xfff8
   132a0:	003f           	.short 0x003f
   132a2:	fff0           	.short 0xfff0
   132a4:	001f ffe0      	orib #-32,%sp@+
   132a8:	000f           	.short 0x000f
   132aa:	ff80 0003      	cp1stl %d0,%d0,#1,#3
   132ae:	ff00 3cc8      	cp1stb %d3,%d0,#7,#200
   132b2:	021d 224e      	andib #78,%a5@+
   132b6:	f35d           	frestore %a5@+
   132b8:	030e f732      	movepw %fp@(-2254),%d1
   132bc:	096e f71a      	bchg %d4,%fp@(-2278)
   132c0:	006e f741 0d2e 	oriw #-2239,%fp@(3374)
   132c6:	f772           	.short 0xf772
   132c8:	1d6d ef77 1d6d 	moveb %a5@(-4233),%fp@(7533)
   132ce:	eef7 0d6d eeeb 	bfset %sp@(ffffffffffffffeb,%fp:l:8),%d5,%d5
   132d4:	0cfd           	.short 0x0cfd
   132d6:	eeee 04fd effd 	bfset %fp@(-4099),19,%d5
   132dc:	02ff           	.short 0x02ff
   132de:	fff9           	.short 0xfff9
   132e0:	02ff           	.short 0x02ff
   132e2:	ffe0           	.short 0xffe0
   132e4:	027f           	.short 0x027f
   132e6:	ffee           	.short 0xffee
   132e8:	02bf ffa3 01af 	andil #-6094417,%d7
   132ee:	fd85 01ad      	cp0stl %d0,%d5,#1,#429
   132f2:	edb2           	roxll %d6,%d2
   132f4:	00ad ed98 002d 	oril #-308805587,%a5@(-5112)
   132fa:	ec08
   132fc:	006e eed8 002e 	oriw #-4392,%fp@(46)
   13302:	ecd0 000e      	bfclr %a0@,0,14
   13306:	e4c0           	.short 0xe4c0
   13308:	000e           	.short 0x000e
   1330a:	4e80           	.short 0x4e80
   1330c:	0002 5a00      	orib #0,%d2
   13310:	3def           	.short 0x3def
   13312:	ffee           	.short 0xffee
   13314:	3eff           	.short 0x3eff
   13316:	feba           	.short 0xfeba
   13318:	3aff           	.short 0x3aff
   1331a:	fffd           	.short 0xfffd
   1331c:	35ff           	.short 0x35ff
   1331e:	ffe5           	.short 0xffe5
   13320:	17ff           	.short 0x17ff
   13322:	ffff           	.short 0xffff
   13324:	0bff           	.short 0x0bff
   13326:	fffd           	.short 0xfffd
   13328:	1fff           	.short 0x1fff
   1332a:	ffff           	.short 0xffff
   1332c:	1fff           	.short 0x1fff
   1332e:	ffff           	.short 0xffff
   13330:	0bff           	.short 0x0bff
   13332:	fffe           	.short 0xfffe
   13334:	03ff           	.short 0x03ff
   13336:	fffd           	.short 0xfffd
   13338:	03ff           	.short 0x03ff
   1333a:	fffa           	.short 0xfffa
   1333c:	03ff           	.short 0x03ff
   1333e:	fffe           	.short 0xfffe
   13340:	03ff           	.short 0x03ff
   13342:	ffeb           	.short 0xffeb
   13344:	01ff           	.short 0x01ff
   13346:	ffff           	.short 0xffff
   13348:	01ff           	.short 0x01ff
   1334a:	fff7           	.short 0xfff7
   1334c:	01ff           	.short 0x01ff
   1334e:	fffb           	.short 0xfffb
   13350:	00ff           	.short 0x00ff
   13352:	fffc           	.short 0xfffc
   13354:	007f           	.short 0x007f
   13356:	ffde           	.short 0xffde
   13358:	007f           	.short 0x007f
   1335a:	fffc           	.short 0xfffc
   1335c:	003f           	.short 0x003f
   1335e:	ffa8 001f ffa0 	cp1stl %d0,%a0@(-96),#1,#31
   13364:	000f           	.short 0x000f
   13366:	fe60 0003      	cp1ldw %a0@-,%d0,#1,#3
   1336a:	fb00           	.short 0xfb00
   1336c:	0002 ef00      	orib #0,%d2
   13370:	3fff           	.short 0x3fff
   13372:	ffff           	.short 0xffff
   13374:	3ffb           	.short 0x3ffb
   13376:	dfff           	.short 0xdfff
   13378:	3ff1           	.short 0x3ff1
   1337a:	8dff           	.short 0x8dff
   1337c:	3fd1           	.short 0x3fd1
   1337e:	8cff           	.short 0x8cff
   13380:	1f91 8cff      	moveb %a1@,%sp@(ffffffffffffffff,%a0:l:4)
   13384:	1ed1           	moveb %a1@,%sp@+
   13386:	8cdf           	divuw %sp@+,%d6
   13388:	16db           	moveb %a3@+,%a3@+
   1338a:	dccd           	addaw %a5,%fp
   1338c:	06db           	.short 0x06db
   1338e:	ddcc           	addal %a4,%fp
   13390:	1edb           	moveb %a3@+,%sp@+
   13392:	dddf           	addal %sp@+,%fp
   13394:	0ffb           	.short 0x0ffb
   13396:	dddf           	addal %sp@+,%fp
   13398:	07fb           	.short 0x07fb
   1339a:	dff7 01ff fff7 	addal @(fffffffffff701ff)@(ffffffffffdf03ff),%sp
   133a0:	01ff ffdf 03ff
   133a6:	ffdf           	.short 0xffdf
   133a8:	037f           	.short 0x037f
   133aa:	ff5f 015f      	cp1stw %d0,%sp@+,#1,#351
   133ae:	fb7f           	.short 0xfb7f
   133b0:	015b           	bchg %d0,%a3@+
   133b2:	db7e           	.short 0xdb7e
   133b4:	00db           	.short 0x00db
   133b6:	db7e           	.short 0xdb7e
   133b8:	005b dbfc      	oriw #-9220,%a3@+
   133bc:	0059 99f8      	oriw #-26120,%a1@+
   133c0:	0039 9bf0 001d 	orib #-16,0x1dbfe0
   133c6:	bfe0
   133c8:	000f           	.short 0x000f
   133ca:	ff80 0003      	cp1stl %d0,%d0,#1,#3
   133ce:	ff00 3fff      	cp1stb %d3,%d0,#8,#511
   133d2:	ffff           	.short 0xffff
   133d4:	3fff           	.short 0x3fff
   133d6:	ffff           	.short 0xffff
   133d8:	3fff           	.short 0x3fff
   133da:	ffff           	.short 0xffff
   133dc:	3fff           	.short 0x3fff
   133de:	ffff           	.short 0xffff
   133e0:	1fff           	.short 0x1fff
   133e2:	ffff           	.short 0xffff
   133e4:	1fff           	.short 0x1fff
   133e6:	ffff           	.short 0xffff
   133e8:	1fff           	.short 0x1fff
   133ea:	ffff           	.short 0xffff
   133ec:	1fff           	.short 0x1fff
   133ee:	ffff           	.short 0xffff
   133f0:	1fff           	.short 0x1fff
   133f2:	ffff           	.short 0xffff
   133f4:	0fff           	.short 0x0fff
   133f6:	ffff           	.short 0xffff
   133f8:	07ff           	.short 0x07ff
   133fa:	ffff           	.short 0xffff
   133fc:	03ff           	.short 0x03ff
   133fe:	ffff           	.short 0xffff
   13400:	03ff           	.short 0x03ff
   13402:	ffff           	.short 0xffff
   13404:	03ff           	.short 0x03ff
   13406:	ffff           	.short 0xffff
   13408:	03ff           	.short 0x03ff
   1340a:	ffff           	.short 0xffff
   1340c:	01ff           	.short 0x01ff
   1340e:	ffff           	.short 0xffff
   13410:	01ff           	.short 0x01ff
   13412:	fffe           	.short 0xfffe
   13414:	00ff           	.short 0x00ff
   13416:	fffe           	.short 0xfffe
   13418:	007f           	.short 0x007f
   1341a:	fffc           	.short 0xfffc
   1341c:	007f           	.short 0x007f
   1341e:	fff8           	.short 0xfff8
   13420:	003f           	.short 0x003f
   13422:	fff0           	.short 0xfff0
   13424:	001f ffe0      	orib #-32,%sp@+
   13428:	000f           	.short 0x000f
   1342a:	ff80 0003      	cp1stl %d0,%d0,#1,#3
   1342e:	ff00 3cc8      	cp1stb %d3,%d0,#7,#200
   13432:	021d 224e      	andib #78,%a5@+
   13436:	f35d           	frestore %a5@+
   13438:	030e f732      	movepw %fp@(-2254),%d1
   1343c:	096e f71a      	bchg %d4,%fp@(-2278)
   13440:	006e f741 0d2e 	oriw #-2239,%fp@(3374)
   13446:	f772           	.short 0xf772
   13448:	1d6d ef77 1d6d 	moveb %a5@(-4233),%fp@(7533)
   1344e:	eef7 0d6d eeeb 	bfset %sp@(ffffffffffffffeb,%fp:l:8),%d5,%d5
   13454:	0cfd           	.short 0x0cfd
   13456:	eeee 04fd effd 	bfset %fp@(-4099),19,%d5
   1345c:	02ff           	.short 0x02ff
   1345e:	fff9           	.short 0xfff9
   13460:	02ff           	.short 0x02ff
   13462:	ffe0           	.short 0xffe0
   13464:	027f           	.short 0x027f
   13466:	ffee           	.short 0xffee
   13468:	02bf ffa3 01af 	andil #-6094417,%d7
   1346e:	fd85 01ad      	cp0stl %d0,%d5,#1,#429
   13472:	edb2           	roxll %d6,%d2
   13474:	00ad ed98 002d 	oril #-308805587,%a5@(-5112)
   1347a:	ec08
   1347c:	006e eed8 002e 	oriw #-4392,%fp@(46)
   13482:	ecd0 000e      	bfclr %a0@,0,14
   13486:	e4c0           	.short 0xe4c0
   13488:	000e           	.short 0x000e
   1348a:	4e80           	.short 0x4e80
   1348c:	0002 5a00      	orib #0,%d2
   13490:	3def           	.short 0x3def
   13492:	ffee           	.short 0xffee
   13494:	3eff           	.short 0x3eff
   13496:	feba           	.short 0xfeba
   13498:	3aff           	.short 0x3aff
   1349a:	fffd           	.short 0xfffd
   1349c:	35ff           	.short 0x35ff
   1349e:	ffe5           	.short 0xffe5
   134a0:	17ff           	.short 0x17ff
   134a2:	ffff           	.short 0xffff
   134a4:	0bff           	.short 0x0bff
   134a6:	fffd           	.short 0xfffd
   134a8:	1fff           	.short 0x1fff
   134aa:	ffff           	.short 0xffff
   134ac:	1fff           	.short 0x1fff
   134ae:	ffff           	.short 0xffff
   134b0:	0bff           	.short 0x0bff
   134b2:	fffe           	.short 0xfffe
   134b4:	03ff           	.short 0x03ff
   134b6:	fffd           	.short 0xfffd
   134b8:	03ff           	.short 0x03ff
   134ba:	fffa           	.short 0xfffa
   134bc:	03ff           	.short 0x03ff
   134be:	fffe           	.short 0xfffe
   134c0:	03ff           	.short 0x03ff
   134c2:	ffeb           	.short 0xffeb
   134c4:	01ff           	.short 0x01ff
   134c6:	ffff           	.short 0xffff
   134c8:	01ff           	.short 0x01ff
   134ca:	fff7           	.short 0xfff7
   134cc:	01ff           	.short 0x01ff
   134ce:	fffb           	.short 0xfffb
   134d0:	00ff           	.short 0x00ff
   134d2:	fffc           	.short 0xfffc
   134d4:	007f           	.short 0x007f
   134d6:	ffde           	.short 0xffde
   134d8:	007f           	.short 0x007f
   134da:	fffc           	.short 0xfffc
   134dc:	003f           	.short 0x003f
   134de:	ffa8 001f ffa0 	cp1stl %d0,%a0@(-96),#1,#31
   134e4:	000f           	.short 0x000f
   134e6:	fe60 0003      	cp1ldw %a0@-,%d0,#1,#3
   134ea:	fb00           	.short 0xfb00
   134ec:	0002 ef00      	orib #0,%d2
   134f0:	3fff           	.short 0x3fff
   134f2:	ffff           	.short 0xffff
   134f4:	3ffb           	.short 0x3ffb
   134f6:	dfff           	.short 0xdfff
   134f8:	3ff1           	.short 0x3ff1
   134fa:	8dff           	.short 0x8dff
   134fc:	3fd1           	.short 0x3fd1
   134fe:	8cff           	.short 0x8cff
   13500:	1f91 8cff      	moveb %a1@,%sp@(ffffffffffffffff,%a0:l:4)
   13504:	1ed1           	moveb %a1@,%sp@+
   13506:	8cdf           	divuw %sp@+,%d6
   13508:	16db           	moveb %a3@+,%a3@+
   1350a:	dccd           	addaw %a5,%fp
   1350c:	06db           	.short 0x06db
   1350e:	ddcc           	addal %a4,%fp
   13510:	1edb           	moveb %a3@+,%sp@+
   13512:	dddf           	addal %sp@+,%fp
   13514:	0ffb           	.short 0x0ffb
   13516:	dddf           	addal %sp@+,%fp
   13518:	07fb           	.short 0x07fb
   1351a:	dff7 01ff fff7 	addal @(fffffffffff701ff)@(ffffffffffdf03ff),%sp
   13520:	01ff ffdf 03ff
   13526:	ffdf           	.short 0xffdf
   13528:	037f           	.short 0x037f
   1352a:	ff5f 015f      	cp1stw %d0,%sp@+,#1,#351
   1352e:	fb7f           	.short 0xfb7f
   13530:	015b           	bchg %d0,%a3@+
   13532:	db7e           	.short 0xdb7e
   13534:	00db           	.short 0x00db
   13536:	db7e           	.short 0xdb7e
   13538:	005b dbfc      	oriw #-9220,%a3@+
   1353c:	0059 99f8      	oriw #-26120,%a1@+
   13540:	0039 9bf0 001d 	orib #-16,0x1dbfe0
   13546:	bfe0
   13548:	000f           	.short 0x000f
   1354a:	ff80 0003      	cp1stl %d0,%d0,#1,#3
   1354e:	ff00 3fff      	cp1stb %d3,%d0,#8,#511
   13552:	ffff           	.short 0xffff
   13554:	3fff           	.short 0x3fff
   13556:	ffff           	.short 0xffff
   13558:	3fff           	.short 0x3fff
   1355a:	ffff           	.short 0xffff
   1355c:	3fff           	.short 0x3fff
   1355e:	ffff           	.short 0xffff
   13560:	1fff           	.short 0x1fff
   13562:	ffff           	.short 0xffff
   13564:	1fff           	.short 0x1fff
   13566:	ffff           	.short 0xffff
   13568:	1fff           	.short 0x1fff
   1356a:	ffff           	.short 0xffff
   1356c:	1fff           	.short 0x1fff
   1356e:	ffff           	.short 0xffff
   13570:	1fff           	.short 0x1fff
   13572:	ffff           	.short 0xffff
   13574:	0fff           	.short 0x0fff
   13576:	ffff           	.short 0xffff
   13578:	07ff           	.short 0x07ff
   1357a:	ffff           	.short 0xffff
   1357c:	03ff           	.short 0x03ff
   1357e:	ffff           	.short 0xffff
   13580:	03ff           	.short 0x03ff
   13582:	ffff           	.short 0xffff
   13584:	03ff           	.short 0x03ff
   13586:	ffff           	.short 0xffff
   13588:	03ff           	.short 0x03ff
   1358a:	ffff           	.short 0xffff
   1358c:	01ff           	.short 0x01ff
   1358e:	ffff           	.short 0xffff
   13590:	01ff           	.short 0x01ff
   13592:	fffe           	.short 0xfffe
   13594:	00ff           	.short 0x00ff
   13596:	fffe           	.short 0xfffe
   13598:	007f           	.short 0x007f
   1359a:	fffc           	.short 0xfffc
   1359c:	007f           	.short 0x007f
   1359e:	fff8           	.short 0xfff8
   135a0:	003f           	.short 0x003f
   135a2:	fff0           	.short 0xfff0
   135a4:	001f ffe0      	orib #-32,%sp@+
   135a8:	000f           	.short 0x000f
   135aa:	ff80 0003      	cp1stl %d0,%d0,#1,#3
   135ae:	ff00 3cc8      	cp1stb %d3,%d0,#7,#200
   135b2:	021d 224e      	andib #78,%a5@+
   135b6:	f35d           	frestore %a5@+
   135b8:	030e f732      	movepw %fp@(-2254),%d1
   135bc:	096e f71a      	bchg %d4,%fp@(-2278)
   135c0:	006e f741 0d2e 	oriw #-2239,%fp@(3374)
   135c6:	f772           	.short 0xf772
   135c8:	1d6d ef77 1d6d 	moveb %a5@(-4233),%fp@(7533)
   135ce:	eef7 0d6d eeeb 	bfset %sp@(ffffffffffffffeb,%fp:l:8),%d5,%d5
   135d4:	0cfd           	.short 0x0cfd
   135d6:	eeee 04fd effd 	bfset %fp@(-4099),19,%d5
   135dc:	02ff           	.short 0x02ff
   135de:	fff9           	.short 0xfff9
   135e0:	02ff           	.short 0x02ff
   135e2:	ffe0           	.short 0xffe0
   135e4:	027f           	.short 0x027f
   135e6:	ffee           	.short 0xffee
   135e8:	02bf ffa3 01af 	andil #-6094417,%d7
   135ee:	fd85 01ad      	cp0stl %d0,%d5,#1,#429
   135f2:	edb2           	roxll %d6,%d2
   135f4:	00ad ed98 002d 	oril #-308805587,%a5@(-5112)
   135fa:	ec08
   135fc:	006e eed8 002e 	oriw #-4392,%fp@(46)
   13602:	ecd0 000e      	bfclr %a0@,0,14
   13606:	e4c0           	.short 0xe4c0
   13608:	000e           	.short 0x000e
   1360a:	4e80           	.short 0x4e80
   1360c:	0002 5a00      	orib #0,%d2
   13610:	3def           	.short 0x3def
   13612:	ffee           	.short 0xffee
   13614:	3eff           	.short 0x3eff
   13616:	feba           	.short 0xfeba
   13618:	3aff           	.short 0x3aff
   1361a:	fffd           	.short 0xfffd
   1361c:	35ff           	.short 0x35ff
   1361e:	ffe5           	.short 0xffe5
   13620:	17ff           	.short 0x17ff
   13622:	ffff           	.short 0xffff
   13624:	0bff           	.short 0x0bff
   13626:	fffd           	.short 0xfffd
   13628:	1fff           	.short 0x1fff
   1362a:	ffff           	.short 0xffff
   1362c:	1fff           	.short 0x1fff
   1362e:	ffff           	.short 0xffff
   13630:	0bff           	.short 0x0bff
   13632:	fffe           	.short 0xfffe
   13634:	03ff           	.short 0x03ff
   13636:	fffd           	.short 0xfffd
   13638:	03ff           	.short 0x03ff
   1363a:	fffa           	.short 0xfffa
   1363c:	03ff           	.short 0x03ff
   1363e:	fffe           	.short 0xfffe
   13640:	03ff           	.short 0x03ff
   13642:	ffeb           	.short 0xffeb
   13644:	01ff           	.short 0x01ff
   13646:	ffff           	.short 0xffff
   13648:	01ff           	.short 0x01ff
   1364a:	fff7           	.short 0xfff7
   1364c:	01ff           	.short 0x01ff
   1364e:	fffb           	.short 0xfffb
   13650:	00ff           	.short 0x00ff
   13652:	fffc           	.short 0xfffc
   13654:	007f           	.short 0x007f
   13656:	ffde           	.short 0xffde
   13658:	007f           	.short 0x007f
   1365a:	fffc           	.short 0xfffc
   1365c:	003f           	.short 0x003f
   1365e:	ffa8 001f ffa0 	cp1stl %d0,%a0@(-96),#1,#31
   13664:	000f           	.short 0x000f
   13666:	fe60 0003      	cp1ldw %a0@-,%d0,#1,#3
   1366a:	fb00           	.short 0xfb00
   1366c:	0002 ef00      	orib #0,%d2
   13670:	3fff           	.short 0x3fff
   13672:	ffff           	.short 0xffff
   13674:	3ffb           	.short 0x3ffb
   13676:	dfff           	.short 0xdfff
   13678:	3ff1           	.short 0x3ff1
   1367a:	8dff           	.short 0x8dff
   1367c:	3fd1           	.short 0x3fd1
   1367e:	8cff           	.short 0x8cff
   13680:	1f91 8cff      	moveb %a1@,%sp@(ffffffffffffffff,%a0:l:4)
   13684:	1ed1           	moveb %a1@,%sp@+
   13686:	8cdf           	divuw %sp@+,%d6
   13688:	16db           	moveb %a3@+,%a3@+
   1368a:	dccd           	addaw %a5,%fp
   1368c:	06db           	.short 0x06db
   1368e:	ddcc           	addal %a4,%fp
   13690:	1edb           	moveb %a3@+,%sp@+
   13692:	dddf           	addal %sp@+,%fp
   13694:	0ffb           	.short 0x0ffb
   13696:	dddf           	addal %sp@+,%fp
   13698:	07fb           	.short 0x07fb
   1369a:	dff7 01ff fff7 	addal @(fffffffffff701ff)@(ffffffffffdf03ff),%sp
   136a0:	01ff ffdf 03ff
   136a6:	ffdf           	.short 0xffdf
   136a8:	037f           	.short 0x037f
   136aa:	ff5f 015f      	cp1stw %d0,%sp@+,#1,#351
   136ae:	fb7f           	.short 0xfb7f
   136b0:	015b           	bchg %d0,%a3@+
   136b2:	db7e           	.short 0xdb7e
   136b4:	00db           	.short 0x00db
   136b6:	db7e           	.short 0xdb7e
   136b8:	005b dbfc      	oriw #-9220,%a3@+
   136bc:	0059 99f8      	oriw #-26120,%a1@+
   136c0:	0039 9bf0 001d 	orib #-16,0x1dbfe0
   136c6:	bfe0
   136c8:	000f           	.short 0x000f
   136ca:	ff80 0003      	cp1stl %d0,%d0,#1,#3
   136ce:	ff00 3fff      	cp1stb %d3,%d0,#8,#511
   136d2:	ffff           	.short 0xffff
   136d4:	3fff           	.short 0x3fff
   136d6:	ffff           	.short 0xffff
   136d8:	3fff           	.short 0x3fff
   136da:	ffff           	.short 0xffff
   136dc:	3fff           	.short 0x3fff
   136de:	ffff           	.short 0xffff
   136e0:	1fff           	.short 0x1fff
   136e2:	ffff           	.short 0xffff
   136e4:	1fff           	.short 0x1fff
   136e6:	ffff           	.short 0xffff
   136e8:	1fff           	.short 0x1fff
   136ea:	ffff           	.short 0xffff
   136ec:	1fff           	.short 0x1fff
   136ee:	ffff           	.short 0xffff
   136f0:	1fff           	.short 0x1fff
   136f2:	ffff           	.short 0xffff
   136f4:	0fff           	.short 0x0fff
   136f6:	ffff           	.short 0xffff
   136f8:	07ff           	.short 0x07ff
   136fa:	ffff           	.short 0xffff
   136fc:	03ff           	.short 0x03ff
   136fe:	ffff           	.short 0xffff
   13700:	03ff           	.short 0x03ff
   13702:	ffff           	.short 0xffff
   13704:	03ff           	.short 0x03ff
   13706:	ffff           	.short 0xffff
   13708:	03ff           	.short 0x03ff
   1370a:	ffff           	.short 0xffff
   1370c:	01ff           	.short 0x01ff
   1370e:	ffff           	.short 0xffff
   13710:	01ff           	.short 0x01ff
   13712:	fffe           	.short 0xfffe
   13714:	00ff           	.short 0x00ff
   13716:	fffe           	.short 0xfffe
   13718:	007f           	.short 0x007f
   1371a:	fffc           	.short 0xfffc
   1371c:	007f           	.short 0x007f
   1371e:	fff8           	.short 0xfff8
   13720:	003f           	.short 0x003f
   13722:	fff0           	.short 0xfff0
   13724:	001f ffe0      	orib #-32,%sp@+
   13728:	000f           	.short 0x000f
   1372a:	ff80 0003      	cp1stl %d0,%d0,#1,#3
   1372e:	ff00 3cc8      	cp1stb %d3,%d0,#7,#200
   13732:	021d 224e      	andib #78,%a5@+
   13736:	f35d           	frestore %a5@+
   13738:	030e f732      	movepw %fp@(-2254),%d1
   1373c:	096e f71a      	bchg %d4,%fp@(-2278)
   13740:	006e f741 0d2e 	oriw #-2239,%fp@(3374)
   13746:	f772           	.short 0xf772
   13748:	1d6d ef77 1d6d 	moveb %a5@(-4233),%fp@(7533)
   1374e:	eef7 0d6d eeeb 	bfset %sp@(ffffffffffffffeb,%fp:l:8),%d5,%d5
   13754:	0cfd           	.short 0x0cfd
   13756:	eeee 04fd effd 	bfset %fp@(-4099),19,%d5
   1375c:	02ff           	.short 0x02ff
   1375e:	fff9           	.short 0xfff9
   13760:	02ff           	.short 0x02ff
   13762:	ffe0           	.short 0xffe0
   13764:	027f           	.short 0x027f
   13766:	ffee           	.short 0xffee
   13768:	02bf ffa3 01af 	andil #-6094417,%d7
   1376e:	fd85 01ad      	cp0stl %d0,%d5,#1,#429
   13772:	edb2           	roxll %d6,%d2
   13774:	00ad ed98 002d 	oril #-308805587,%a5@(-5112)
   1377a:	ec08
   1377c:	006e eed8 002e 	oriw #-4392,%fp@(46)
   13782:	ecd0 000e      	bfclr %a0@,0,14
   13786:	e4c0           	.short 0xe4c0
   13788:	000e           	.short 0x000e
   1378a:	4e80           	.short 0x4e80
   1378c:	0002 5a00      	orib #0,%d2
   13790:	3def           	.short 0x3def
   13792:	ffee           	.short 0xffee
   13794:	3eff           	.short 0x3eff
   13796:	feba           	.short 0xfeba
   13798:	3aff           	.short 0x3aff
   1379a:	fffd           	.short 0xfffd
   1379c:	35ff           	.short 0x35ff
   1379e:	ffe5           	.short 0xffe5
   137a0:	17ff           	.short 0x17ff
   137a2:	ffff           	.short 0xffff
   137a4:	0bff           	.short 0x0bff
   137a6:	fffd           	.short 0xfffd
   137a8:	1fff           	.short 0x1fff
   137aa:	ffff           	.short 0xffff
   137ac:	1fff           	.short 0x1fff
   137ae:	ffff           	.short 0xffff
   137b0:	0bff           	.short 0x0bff
   137b2:	fffe           	.short 0xfffe
   137b4:	03ff           	.short 0x03ff
   137b6:	fffd           	.short 0xfffd
   137b8:	03ff           	.short 0x03ff
   137ba:	fffa           	.short 0xfffa
   137bc:	03ff           	.short 0x03ff
   137be:	fffe           	.short 0xfffe
   137c0:	03ff           	.short 0x03ff
   137c2:	ffeb           	.short 0xffeb
   137c4:	01ff           	.short 0x01ff
   137c6:	ffff           	.short 0xffff
   137c8:	01ff           	.short 0x01ff
   137ca:	fff7           	.short 0xfff7
   137cc:	01ff           	.short 0x01ff
   137ce:	fffb           	.short 0xfffb
   137d0:	00ff           	.short 0x00ff
   137d2:	fffc           	.short 0xfffc
   137d4:	007f           	.short 0x007f
   137d6:	ffde           	.short 0xffde
   137d8:	007f           	.short 0x007f
   137da:	fffc           	.short 0xfffc
   137dc:	003f           	.short 0x003f
   137de:	ffa8 001f ffa0 	cp1stl %d0,%a0@(-96),#1,#31
   137e4:	000f           	.short 0x000f
   137e6:	fe60 0003      	cp1ldw %a0@-,%d0,#1,#3
   137ea:	fb00           	.short 0xfb00
   137ec:	0002 ef00      	orib #0,%d2
   137f0:	3fff           	.short 0x3fff
   137f2:	ffff           	.short 0xffff
   137f4:	3ffb           	.short 0x3ffb
   137f6:	dfff           	.short 0xdfff
   137f8:	3ff1           	.short 0x3ff1
   137fa:	8dff           	.short 0x8dff
   137fc:	3fd1           	.short 0x3fd1
   137fe:	8cff           	.short 0x8cff
   13800:	1f91 8cff      	moveb %a1@,%sp@(ffffffffffffffff,%a0:l:4)
   13804:	1ed1           	moveb %a1@,%sp@+
   13806:	8cdf           	divuw %sp@+,%d6
   13808:	16db           	moveb %a3@+,%a3@+
   1380a:	dccd           	addaw %a5,%fp
   1380c:	06db           	.short 0x06db
   1380e:	ddcc           	addal %a4,%fp
   13810:	1edb           	moveb %a3@+,%sp@+
   13812:	dddf           	addal %sp@+,%fp
   13814:	0ffb           	.short 0x0ffb
   13816:	dddf           	addal %sp@+,%fp
   13818:	07fb           	.short 0x07fb
   1381a:	dff7 01ff fff7 	addal @(fffffffffff701ff)@(ffffffffffdf03ff),%sp
   13820:	01ff ffdf 03ff
   13826:	ffdf           	.short 0xffdf
   13828:	037f           	.short 0x037f
   1382a:	ff5f 015f      	cp1stw %d0,%sp@+,#1,#351
   1382e:	fb7f           	.short 0xfb7f
   13830:	015b           	bchg %d0,%a3@+
   13832:	db7e           	.short 0xdb7e
   13834:	00db           	.short 0x00db
   13836:	db7e           	.short 0xdb7e
   13838:	005b dbfc      	oriw #-9220,%a3@+
   1383c:	0059 99f8      	oriw #-26120,%a1@+
   13840:	0039 9bf0 001d 	orib #-16,0x1dbfe0
   13846:	bfe0
   13848:	000f           	.short 0x000f
   1384a:	ff80 0003      	cp1stl %d0,%d0,#1,#3
   1384e:	ff00 3fff      	cp1stb %d3,%d0,#8,#511
   13852:	ffff           	.short 0xffff
   13854:	3fff           	.short 0x3fff
   13856:	ffff           	.short 0xffff
   13858:	3fff           	.short 0x3fff
   1385a:	ffff           	.short 0xffff
   1385c:	3fff           	.short 0x3fff
   1385e:	ffff           	.short 0xffff
   13860:	1fff           	.short 0x1fff
   13862:	ffff           	.short 0xffff
   13864:	1fff           	.short 0x1fff
   13866:	ffff           	.short 0xffff
   13868:	1fff           	.short 0x1fff
   1386a:	ffff           	.short 0xffff
   1386c:	1fff           	.short 0x1fff
   1386e:	ffff           	.short 0xffff
   13870:	1fff           	.short 0x1fff
   13872:	ffff           	.short 0xffff
   13874:	0fff           	.short 0x0fff
   13876:	ffff           	.short 0xffff
   13878:	07ff           	.short 0x07ff
   1387a:	ffff           	.short 0xffff
   1387c:	03ff           	.short 0x03ff
   1387e:	ffff           	.short 0xffff
   13880:	03ff           	.short 0x03ff
   13882:	ffff           	.short 0xffff
   13884:	03ff           	.short 0x03ff
   13886:	ffff           	.short 0xffff
   13888:	03ff           	.short 0x03ff
   1388a:	ffff           	.short 0xffff
   1388c:	01ff           	.short 0x01ff
   1388e:	ffff           	.short 0xffff
   13890:	01ff           	.short 0x01ff
   13892:	fffe           	.short 0xfffe
   13894:	00ff           	.short 0x00ff
   13896:	fffe           	.short 0xfffe
   13898:	007f           	.short 0x007f
   1389a:	fffc           	.short 0xfffc
   1389c:	007f           	.short 0x007f
   1389e:	fff8           	.short 0xfff8
   138a0:	003f           	.short 0x003f
   138a2:	fff0           	.short 0xfff0
   138a4:	001f ffe0      	orib #-32,%sp@+
   138a8:	000f           	.short 0x000f
   138aa:	ff80 0003      	cp1stl %d0,%d0,#1,#3
   138ae:	ff00 0000      	cp1stb %d0,%d0,#1,#0
   138b2:	0000 01f0      	orib #-16,%d0
   138b6:	0000 0520      	orib #32,%d0
   138ba:	0200 1f60      	andib #96,%d0
   138be:	0200 42a0      	andib #-96,%d0
   138c2:	0100           	btst %d0,%d0
   138c4:	f940           	.short 0xf940
   138c6:	0180           	bclr %d0,%d0
   138c8:	1d60 0000      	moveb %a0@-,%fp@(0)
   138cc:	86c0           	divuw %d0,%d3
   138ce:	0500           	btst %d2,%d0
   138d0:	b3c0           	cmpal %d0,%a1
   138d2:	0200 e900      	andib #0,%d0
   138d6:	7d00           	mvsb %d0,%d6
   138d8:	3485           	movew %d5,%a2@
   138da:	e000           	asrb #8,%d0
   138dc:	0a8e b000 af97 	eoril #-1342132329,%d6
   138e2:	2000           	movel %d0,%d0
   138e4:	d57d           	.short 0xd57d
   138e6:	0000 3c70      	orib #112,%d0
   138ea:	0000 3ea8      	orib #-88,%d0
   138ee:	0000 8a88      	orib #-120,%d0
   138f2:	0000 7f80      	orib #-128,%d0
   138f6:	0000 edc0      	orib #-64,%d0
   138fa:	0000 eb20      	orib #32,%d0
   138fe:	0000 9390      	orib #-112,%d0
   13902:	0000 c680      	orib #-128,%d0
   13906:	0000 1fc0      	orib #-64,%d0
   1390a:	0000 b7e0      	orib #-32,%d0
   1390e:	0000 0000      	orib #0,%d0
   13912:	0000 01e0      	orib #-32,%d0
   13916:	0400 00f0      	subib #-16,%d0
   1391a:	0200 1fa0      	andib #-96,%d0
   1391e:	0100           	btst %d0,%d0
   13920:	15c0           	.short 0x15c0
   13922:	0000 fee0      	orib #-32,%d0
   13926:	0180           	bclr %d0,%d0
   13928:	66c0           	bnes 0x138ea
   1392a:	0080 3b40 0480 	oril #994051200,%d0
   13930:	4d40           	.short 0x4d40
   13932:	0300           	btst %d1,%d0
   13934:	d780           	addxl %d0,%d3
   13936:	4300           	chkl %d0,%d1
   13938:	fb84           	.short 0xfb84
   1393a:	3e00           	movew %d0,%d7
   1393c:	fd82 7c00      	cp0stl %d7,%d2,#7,#0
   13940:	5881           	addql #4,%d1
   13942:	f000           	.short 0xf000
   13944:	ee63           	asrw %d7,%d3
   13946:	8000           	orb %d0,%d0
   13948:	e71e           	rolb #3,%d6
   1394a:	0000 d21c      	orib #28,%d0
   1394e:	0000 7e38      	orib #56,%d0
   13952:	0000 bbf8      	orib #-8,%d0
   13956:	0000 7470      	orib #112,%d0
   1395a:	0000 d0f0      	orib #-16,%d0
   1395e:	0000 e870      	orib #112,%d0
   13962:	0000 2070      	orib #112,%d0
   13966:	0000 dff8      	orib #-8,%d0
   1396a:	0000 6078      	orib #120,%d0
   1396e:	0000 0000      	orib #0,%d0
   13972:	0000 01f0      	orib #-16,%d0
   13976:	0400 07f0      	subib #-16,%d0
   1397a:	0200 1fe0      	andib #-32,%d0
   1397e:	0300           	btst %d1,%d0
   13980:	7fe0           	mvzw %a0@-,%d7
   13982:	0100           	btst %d0,%d0
   13984:	ffe0           	.short 0xffe0
   13986:	0180           	bclr %d0,%d0
   13988:	ffe0           	.short 0xffe0
   1398a:	0180           	bclr %d0,%d0
   1398c:	ffc0           	.short 0xffc0
   1398e:	0780           	bclr %d3,%d0
   13990:	ffc0           	.short 0xffc0
   13992:	1f00           	moveb %d0,%sp@-
   13994:	ff81 ff00      	cp1stl %sp,%d1,#8,#256
   13998:	ff87 fe00      	cp1stl %sp,%d7,#8,#0
   1399c:	ff9f fc00      	cp1stl %sp,%sp@+,#7,#0
   139a0:	ffbf           	.short 0xffbf
   139a2:	f000           	.short 0xf000
   139a4:	ff7f           	.short 0xff7f
   139a6:	8000           	orb %d0,%d0
   139a8:	fffe           	.short 0xfffe
   139aa:	0000 fffc      	orib #-4,%d0
   139ae:	0000 fff8      	orib #-8,%d0
   139b2:	0000 fff8      	orib #-8,%d0
   139b6:	0000 fff0      	orib #-16,%d0
   139ba:	0000 fff0      	orib #-16,%d0
   139be:	0000 fff0      	orib #-16,%d0
   139c2:	0000 fff0      	orib #-16,%d0
   139c6:	0000 fff8      	orib #-8,%d0
   139ca:	0000 fff8      	orib #-8,%d0
   139ce:	0000 0000      	orib #0,%d0
   139d2:	0000 01f0      	orib #-16,%d0
   139d6:	0400 07f0      	subib #-16,%d0
   139da:	0200 1fe0      	andib #-32,%d0
   139de:	0300           	btst %d1,%d0
   139e0:	7fe0           	mvzw %a0@-,%d7
   139e2:	0100           	btst %d0,%d0
   139e4:	ffe0           	.short 0xffe0
   139e6:	0180           	bclr %d0,%d0
   139e8:	ffe0           	.short 0xffe0
   139ea:	0180           	bclr %d0,%d0
   139ec:	ffc0           	.short 0xffc0
   139ee:	0780           	bclr %d3,%d0
   139f0:	ffc0           	.short 0xffc0
   139f2:	1f00           	moveb %d0,%sp@-
   139f4:	ff81 ff00      	cp1stl %sp,%d1,#8,#256
   139f8:	ff87 fe00      	cp1stl %sp,%d7,#8,#0
   139fc:	ff9f fc00      	cp1stl %sp,%sp@+,#7,#0
   13a00:	ffbf           	.short 0xffbf
   13a02:	f000           	.short 0xf000
   13a04:	ff7f           	.short 0xff7f
   13a06:	8000           	orb %d0,%d0
   13a08:	fffe           	.short 0xfffe
   13a0a:	0000 fffc      	orib #-4,%d0
   13a0e:	0000 fff8      	orib #-8,%d0
   13a12:	0000 fff8      	orib #-8,%d0
   13a16:	0000 fff0      	orib #-16,%d0
   13a1a:	0000 fff0      	orib #-16,%d0
   13a1e:	0000 fff0      	orib #-16,%d0
   13a22:	0000 fff0      	orib #-16,%d0
   13a26:	0000 fff8      	orib #-8,%d0
   13a2a:	0000 fff8      	orib #-8,%d0
   13a2e:	0000 0000      	orib #0,%d0
   13a32:	0000 01f0      	orib #-16,%d0
   13a36:	0000 0520      	orib #32,%d0
   13a3a:	0000 1f60      	orib #96,%d0
   13a3e:	0000 42a0      	orib #-96,%d0
   13a42:	1f00           	moveb %d0,%sp@-
   13a44:	f940           	.short 0xf940
   13a46:	c880           	andl %d0,%d4
   13a48:	1d62 0000      	moveb %a2@-,%fp@(0)
   13a4c:	86c5           	divuw %d5,%d3
   13a4e:	0000 b3c8      	orib #-56,%d0
   13a52:	0000 e930      	orib #48,%d0
   13a56:	0000 34b0      	orib #-80,%d0
   13a5a:	0000 0ab8      	orib #-72,%d0
   13a5e:	0000 afa0      	orib #-96,%d0
   13a62:	0000 d540      	orib #64,%d0
   13a66:	0000 3ce0      	orib #-32,%d0
   13a6a:	0000 3e50      	orib #80,%d0
   13a6e:	0000 8a80      	orib #-128,%d0
   13a72:	0000 7e00      	orib #0,%d0
   13a76:	0000 ede0      	orib #-32,%d0
   13a7a:	0000 eb90      	orib #-112,%d0
   13a7e:	0000 9780      	orib #-128,%d0
   13a82:	0000 c200      	orib #0,%d0
   13a86:	0000 1f80      	orib #-128,%d0
   13a8a:	0000 b760      	orib #96,%d0
   13a8e:	0000 0000      	orib #0,%d0
   13a92:	0000 01e0      	orib #-32,%d0
   13a96:	0000 00f0      	orib #-16,%d0
   13a9a:	0000 1fa0      	orib #-96,%d0
   13a9e:	0000 15c0      	orib #-64,%d0
   13aa2:	0800 fee0      	btst #-32,%d0
   13aa6:	3fc0           	.short 0x3fc0
   13aa8:	66c3           	bnes 0x13a6d
   13aaa:	c000           	andb %d0,%d0
   13aac:	3b43 0000      	movew %d3,%a5@(0)
   13ab0:	4d46           	.short 0x4d46
   13ab2:	0000 d7ac      	orib #-84,%d0
   13ab6:	0000 fb98      	orib #-104,%d0
   13aba:	0000 fd88      	orib #-120,%d0
   13abe:	0000 5898      	orib #-104,%d0
   13ac2:	0000 ee30      	orib #48,%d0
   13ac6:	0000 e7f0      	orib #-16,%d0
   13aca:	0000 d330      	orib #48,%d0
   13ace:	0000 7e70      	orib #112,%d0
   13ad2:	0000 baf0      	orib #-16,%d0
   13ad6:	0000 75f0      	orib #-16,%d0
   13ada:	0000 d070      	orib #112,%d0
   13ade:	0000 e870      	orib #112,%d0
   13ae2:	0000 25f0      	orib #-16,%d0
   13ae6:	0000 dff8      	orib #-8,%d0
   13aea:	0000 60f8      	orib #-8,%d0
   13aee:	0000 0000      	orib #0,%d0
   13af2:	0000 01f0      	orib #-16,%d0
   13af6:	0000 07f0      	orib #-16,%d0
   13afa:	0000 1fe0      	orib #-32,%d0
   13afe:	0000 7fe0      	orib #-32,%d0
   13b02:	3f00           	movew %d0,%sp@-
   13b04:	ffe1           	.short 0xffe1
   13b06:	ffc0           	.short 0xffc0
   13b08:	ffe7           	.short 0xffe7
   13b0a:	c000           	andb %d0,%d0
   13b0c:	ffcf           	.short 0xffcf
   13b0e:	0000 ffde      	orib #-34,%d0
   13b12:	0000 ffbc      	orib #-68,%d0
   13b16:	0000 ffb8      	orib #-72,%d0
   13b1a:	0000 ffb8      	orib #-72,%d0
   13b1e:	0000 fff8      	orib #-8,%d0
   13b22:	0000 ff70      	orib #112,%d0
   13b26:	0000 fff0      	orib #-16,%d0
   13b2a:	0000 fff0      	orib #-16,%d0
   13b2e:	0000 fff0      	orib #-16,%d0
   13b32:	0000 fff0      	orib #-16,%d0
   13b36:	0000 fff0      	orib #-16,%d0
   13b3a:	0000 fff0      	orib #-16,%d0
   13b3e:	0000 fff0      	orib #-16,%d0
   13b42:	0000 fff0      	orib #-16,%d0
   13b46:	0000 fff8      	orib #-8,%d0
   13b4a:	0000 fff8      	orib #-8,%d0
   13b4e:	0000 0000      	orib #0,%d0
   13b52:	0000 01f0      	orib #-16,%d0
   13b56:	0000 07f0      	orib #-16,%d0
   13b5a:	0000 1fe0      	orib #-32,%d0
   13b5e:	0000 7fe0      	orib #-32,%d0
   13b62:	3f00           	movew %d0,%sp@-
   13b64:	ffe1           	.short 0xffe1
   13b66:	ffc0           	.short 0xffc0
   13b68:	ffe7           	.short 0xffe7
   13b6a:	c000           	andb %d0,%d0
   13b6c:	ffcf           	.short 0xffcf
   13b6e:	0000 ffde      	orib #-34,%d0
   13b72:	0000 ffbc      	orib #-68,%d0
   13b76:	0000 ffb8      	orib #-72,%d0
   13b7a:	0000 ffb8      	orib #-72,%d0
   13b7e:	0000 fff8      	orib #-8,%d0
   13b82:	0000 ff70      	orib #112,%d0
   13b86:	0000 fff0      	orib #-16,%d0
   13b8a:	0000 fff0      	orib #-16,%d0
   13b8e:	0000 fff0      	orib #-16,%d0
   13b92:	0000 fff0      	orib #-16,%d0
   13b96:	0000 fff0      	orib #-16,%d0
   13b9a:	0000 fff0      	orib #-16,%d0
   13b9e:	0000 fff0      	orib #-16,%d0
   13ba2:	0000 fff0      	orib #-16,%d0
   13ba6:	0000 fff8      	orib #-8,%d0
   13baa:	0000 fff8      	orib #-8,%d0
   13bae:	0000 c000      	orib #0,%d0
   13bb2:	0000 21f1      	orib #-15,%d0
   13bb6:	6000 0524      	braw 0x140dc
   13bba:	0000 1f66      	orib #102,%d0
   13bbe:	0000 4290      	orib #-112,%d0
   13bc2:	0000 f958      	orib #88,%d0
   13bc6:	0000 1d20      	orib #32,%d0
   13bca:	0000 8600      	orib #0,%d0
   13bce:	0000 b350      	orib #80,%d0
   13bd2:	0000 e960      	orib #96,%d0
   13bd6:	0000 34a0      	orib #-96,%d0
   13bda:	0000 0a80      	orib #-128,%d0
   13bde:	0000 afb0      	orib #-80,%d0
   13be2:	0000 d530      	orib #48,%d0
   13be6:	0000 3c18      	orib #24,%d0
   13bea:	0000 3e08      	orib #8,%d0
   13bee:	0000 8a1c      	orib #28,%d0
   13bf2:	0000 7e1a      	orib #26,%d0
   13bf6:	0000 ec3a      	orib #58,%d0
   13bfa:	0000 e8e0      	orib #-32,%d0
   13bfe:	0000 93f0      	orib #-16,%d0
   13c02:	0000 c710      	orib #16,%d0
   13c06:	0000 1f80      	orib #-128,%d0
   13c0a:	0000 b760      	orib #96,%d0
   13c0e:	0000 8000      	orib #0,%d0
   13c12:	c000           	andb %d0,%d0
   13c14:	41e1           	.short 0x41e1
   13c16:	c000           	andb %d0,%d0
   13c18:	20f7 1000      	movel %sp@(0,%d1:w),%a0@+
   13c1c:	7fa2           	mvzb %a2@-,%d7
   13c1e:	0000 95dc      	orib #-36,%d0
   13c22:	0000 fed8      	orib #-40,%d0
   13c26:	0000 6690      	orib #-112,%d0
   13c2a:	0000 3bb0      	orib #-80,%d0
   13c2e:	0000 4db0      	orib #-80,%d0
   13c32:	0000 d7f0      	orib #-16,%d0
   13c36:	0000 fb90      	orib #-112,%d0
   13c3a:	0000 fd90      	orib #-112,%d0
   13c3e:	0000 5898      	orib #-104,%d0
   13c42:	0000 ee2c      	orib #44,%d0
   13c46:	0000 e704      	orib #4,%d0
   13c4a:	0000 d204      	orib #4,%d0
   13c4e:	0000 7e0e      	orib #14,%d0
   13c52:	0000 ba1e      	orib #30,%d0
   13c56:	0000 7406      	orib #6,%d0
   13c5a:	0000 d06c      	orib #108,%d0
   13c5e:	0000 eb1c      	orib #28,%d0
   13c62:	0000 2178      	orib #120,%d0
   13c66:	0000 dff8      	orib #-8,%d0
   13c6a:	0000 60f8      	orib #-8,%d0
   13c6e:	0000 c000      	orib #0,%d0
   13c72:	c000           	andb %d0,%d0
   13c74:	61f3           	bsrs 0x13c69
   13c76:	e000           	asrb #8,%d0
   13c78:	27f7           	.short 0x27f7
   13c7a:	1000           	moveb %d0,%d0
   13c7c:	ffee           	.short 0xffee
   13c7e:	0000 ffdc      	orib #-36,%d0
   13c82:	0000 fff8      	orib #-8,%d0
   13c86:	0000 ffb0      	orib #-80,%d0
   13c8a:	0000 fff0      	orib #-16,%d0
   13c8e:	0000 fff0      	orib #-16,%d0
   13c92:	0000 fff0      	orib #-16,%d0
   13c96:	0000 fff0      	orib #-16,%d0
   13c9a:	0000 ffb0      	orib #-80,%d0
   13c9e:	0000 ffb8      	orib #-72,%d0
   13ca2:	0000 ff3c      	orib #60,%d0
   13ca6:	0000 ff1c      	orib #28,%d0
   13caa:	0000 ff1c      	orib #28,%d0
   13cae:	0000 fe1e      	orib #30,%d0
   13cb2:	0000 fe1e      	orib #30,%d0
   13cb6:	0000 fc3e      	orib #62,%d0
   13cba:	0000 f9fc      	orib #-4,%d0
   13cbe:	0000 fffc      	orib #-4,%d0
   13cc2:	0000 fff8      	orib #-8,%d0
   13cc6:	0000 fff8      	orib #-8,%d0
   13cca:	0000 fff8      	orib #-8,%d0
   13cce:	0000 c000      	orib #0,%d0
   13cd2:	c000           	andb %d0,%d0
   13cd4:	61f3           	bsrs 0x13cc9
   13cd6:	e000           	asrb #8,%d0
   13cd8:	27f7           	.short 0x27f7
   13cda:	1000           	moveb %d0,%d0
   13cdc:	ffee           	.short 0xffee
   13cde:	0000 ffdc      	orib #-36,%d0
   13ce2:	0000 fff8      	orib #-8,%d0
   13ce6:	0000 ffb0      	orib #-80,%d0
   13cea:	0000 fff0      	orib #-16,%d0
   13cee:	0000 fff0      	orib #-16,%d0
   13cf2:	0000 fff0      	orib #-16,%d0
   13cf6:	0000 fff0      	orib #-16,%d0
   13cfa:	0000 ffb0      	orib #-80,%d0
   13cfe:	0000 ffb8      	orib #-72,%d0
   13d02:	0000 ff3c      	orib #60,%d0
   13d06:	0000 ff1c      	orib #28,%d0
   13d0a:	0000 ff1c      	orib #28,%d0
   13d0e:	0000 fe1e      	orib #30,%d0
   13d12:	0000 fe1e      	orib #30,%d0
   13d16:	0000 fc3e      	orib #62,%d0
   13d1a:	0000 f9fc      	orib #-4,%d0
   13d1e:	0000 fffc      	orib #-4,%d0
   13d22:	0000 fff8      	orib #-8,%d0
   13d26:	0000 fff8      	orib #-8,%d0
   13d2a:	0000 fff8      	orib #-8,%d0
   13d2e:	0000 0000      	orib #0,%d0
   13d32:	0000 01f0      	orib #-16,%d0
   13d36:	0000 0530      	orib #48,%d0
   13d3a:	0000 bf78      	orib #120,%d0
   13d3e:	0000 42b0      	orib #-80,%d0
   13d42:	0000 f948      	orib #72,%d0
   13d46:	0000 1d66      	orib #102,%d0
   13d4a:	0000 86c4      	orib #-60,%d0
   13d4e:	0000 b3c0      	orib #-64,%d0
   13d52:	0000 e907      	orib #7,%d0
   13d56:	0000 3482      	orib #-126,%d0
   13d5a:	0000 0a02      	orib #2,%d0
   13d5e:	0000 af02      	orib #2,%d0
   13d62:	0000 d503      	orib #3,%d0
   13d66:	0000 3c04      	orib #4,%d0
   13d6a:	0000 3e0c      	orib #12,%d0
   13d6e:	0000 887c      	orib #124,%d0
   13d72:	0000 78e4      	orib #-28,%d0
   13d76:	0000 ef10      	orib #16,%d0
   13d7a:	0000 ee90      	orib #-112,%d0
   13d7e:	0000 9000      	orib #0,%d0
   13d82:	0000 c680      	orib #-128,%d0
   13d86:	0000 1fc0      	orib #-64,%d0
   13d8a:	0000 b7e0      	orib #-32,%d0
   13d8e:	0000 0050      	orib #80,%d0
   13d92:	0000 01f0      	orib #-16,%d0
   13d96:	0000 00e8      	orib #-24,%d0
   13d9a:	0000 5fa8      	orib #-88,%d0
   13d9e:	0000 95d8      	orib #-40,%d0
   13da2:	0000 fee4      	orib #-28,%d0
   13da6:	0000 66c6      	orib #-58,%d0
   13daa:	0000 3b42      	orib #66,%d0
   13dae:	0000 4d42      	orib #66,%d0
   13db2:	0000 d787      	orib #-121,%d0
   13db6:	0000 fb81      	orib #-127,%d0
   13dba:	0000 fd01      	orib #1,%d0
   13dbe:	0000 5803      	orib #3,%d0
   13dc2:	0000 ee01      	orib #1,%d0
   13dc6:	0000 e603      	orib #3,%d0
   13dca:	0000 d20b      	orib #11,%d0
   13dce:	0000 7c46      	orib #70,%d0
   13dd2:	0000 bc7e      	orib #126,%d0
   13dd6:	0000 737c      	orib #124,%d0
   13dda:	0000 d0f8      	orib #-8,%d0
   13dde:	0000 e8f0      	orib #-16,%d0
   13de2:	0000 2070      	orib #112,%d0
   13de6:	0000 dff8      	orib #-8,%d0
   13dea:	0000 6078      	orib #120,%d0
   13dee:	0000 0050      	orib #80,%d0
   13df2:	0000 01f0      	orib #-16,%d0
   13df6:	0000 07f8      	orib #-8,%d0
   13dfa:	0000 fff8      	orib #-8,%d0
   13dfe:	0000 fff8      	orib #-8,%d0
   13e02:	0000 ffec      	orib #-20,%d0
   13e06:	0000 ffee      	orib #-18,%d0
   13e0a:	0000 ffc6      	orib #-58,%d0
   13e0e:	0000 ffc6      	orib #-58,%d0
   13e12:	0000 ff87      	orib #-121,%d0
   13e16:	0000 ff83      	orib #-125,%d0
   13e1a:	0000 ff03      	orib #3,%d0
   13e1e:	0000 ff03      	orib #3,%d0
   13e22:	0000 ff07      	orib #7,%d0
   13e26:	0000 fe07      	orib #7,%d0
   13e2a:	0000 fe1f      	orib #31,%d0
   13e2e:	0000 fc7e      	orib #126,%d0
   13e32:	0000 fcfe      	orib #-2,%d0
   13e36:	0000 fffc      	orib #-4,%d0
   13e3a:	0000 fff8      	orib #-8,%d0
   13e3e:	0000 fff0      	orib #-16,%d0
   13e42:	0000 fff0      	orib #-16,%d0
   13e46:	0000 fff8      	orib #-8,%d0
   13e4a:	0000 fff8      	orib #-8,%d0
   13e4e:	0000 0050      	orib #80,%d0
   13e52:	0000 01f0      	orib #-16,%d0
   13e56:	0000 07f8      	orib #-8,%d0
   13e5a:	0000 fff8      	orib #-8,%d0
   13e5e:	0000 fff8      	orib #-8,%d0
   13e62:	0000 ffec      	orib #-20,%d0
   13e66:	0000 ffee      	orib #-18,%d0
   13e6a:	0000 ffc6      	orib #-58,%d0
   13e6e:	0000 ffc6      	orib #-58,%d0
   13e72:	0000 ff87      	orib #-121,%d0
   13e76:	0000 ff83      	orib #-125,%d0
   13e7a:	0000 ff03      	orib #3,%d0
   13e7e:	0000 ff03      	orib #3,%d0
   13e82:	0000 ff07      	orib #7,%d0
   13e86:	0000 fe07      	orib #7,%d0
   13e8a:	0000 fe1f      	orib #31,%d0
   13e8e:	0000 fc7e      	orib #126,%d0
   13e92:	0000 fcfe      	orib #-2,%d0
   13e96:	0000 fffc      	orib #-4,%d0
   13e9a:	0000 fff8      	orib #-8,%d0
   13e9e:	0000 fff0      	orib #-16,%d0
   13ea2:	0000 fff0      	orib #-16,%d0
   13ea6:	0000 fff8      	orib #-8,%d0
   13eaa:	0000 fff8      	orib #-8,%d0
   13eae:	0000 0000      	orib #0,%d0
   13eb2:	0000 01f0      	orib #-16,%d0
   13eb6:	0000 0520      	orib #32,%d0
   13eba:	0200 1f60      	andib #96,%d0
   13ebe:	0200 42a0      	andib #-96,%d0
   13ec2:	0100           	btst %d0,%d0
   13ec4:	f940           	.short 0xf940
   13ec6:	0180           	bclr %d0,%d0
   13ec8:	1d60 0000      	moveb %a0@-,%fp@(0)
   13ecc:	86c0           	divuw %d0,%d3
   13ece:	0500           	btst %d2,%d0
   13ed0:	b3c0           	cmpal %d0,%a1
   13ed2:	0200 e900      	andib #0,%d0
   13ed6:	7d00           	mvsb %d0,%d6
   13ed8:	3485           	movew %d5,%a2@
   13eda:	e000           	asrb #8,%d0
   13edc:	0a8e b000 af97 	eoril #-1342132329,%d6
   13ee2:	2000           	movel %d0,%d0
   13ee4:	d57d           	.short 0xd57d
   13ee6:	0000 3c70      	orib #112,%d0
   13eea:	0000 3ea8      	orib #-88,%d0
   13eee:	0000 8a88      	orib #-120,%d0
   13ef2:	0000 7f80      	orib #-128,%d0
   13ef6:	0000 edc0      	orib #-64,%d0
   13efa:	0000 eb20      	orib #32,%d0
   13efe:	0000 9390      	orib #-112,%d0
   13f02:	0000 c680      	orib #-128,%d0
   13f06:	0000 1fc0      	orib #-64,%d0
   13f0a:	0000 b7e0      	orib #-32,%d0
   13f0e:	0000 0000      	orib #0,%d0
   13f12:	0000 01e0      	orib #-32,%d0
   13f16:	0400 00f0      	subib #-16,%d0
   13f1a:	0200 1fa0      	andib #-96,%d0
   13f1e:	0100           	btst %d0,%d0
   13f20:	15c0           	.short 0x15c0
   13f22:	0000 fee0      	orib #-32,%d0
   13f26:	0180           	bclr %d0,%d0
   13f28:	66c0           	bnes 0x13eea
   13f2a:	0080 3b40 0480 	oril #994051200,%d0
   13f30:	4d40           	.short 0x4d40
   13f32:	0300           	btst %d1,%d0
   13f34:	d780           	addxl %d0,%d3
   13f36:	4300           	chkl %d0,%d1
   13f38:	fb84           	.short 0xfb84
   13f3a:	3e00           	movew %d0,%d7
   13f3c:	fd82 7c00      	cp0stl %d7,%d2,#7,#0
   13f40:	5881           	addql #4,%d1
   13f42:	f000           	.short 0xf000
   13f44:	ee63           	asrw %d7,%d3
   13f46:	8000           	orb %d0,%d0
   13f48:	e71e           	rolb #3,%d6
   13f4a:	0000 d21c      	orib #28,%d0
   13f4e:	0000 7e38      	orib #56,%d0
   13f52:	0000 bbf8      	orib #-8,%d0
   13f56:	0000 7470      	orib #112,%d0
   13f5a:	0000 d0f0      	orib #-16,%d0
   13f5e:	0000 e870      	orib #112,%d0
   13f62:	0000 2070      	orib #112,%d0
   13f66:	0000 dff8      	orib #-8,%d0
   13f6a:	0000 6078      	orib #120,%d0
   13f6e:	0000 0000      	orib #0,%d0
   13f72:	0000 01f0      	orib #-16,%d0
   13f76:	0400 07f0      	subib #-16,%d0
   13f7a:	0200 1fe0      	andib #-32,%d0
   13f7e:	0300           	btst %d1,%d0
   13f80:	7fe0           	mvzw %a0@-,%d7
   13f82:	0100           	btst %d0,%d0
   13f84:	ffe0           	.short 0xffe0
   13f86:	0180           	bclr %d0,%d0
   13f88:	ffe0           	.short 0xffe0
   13f8a:	0180           	bclr %d0,%d0
   13f8c:	ffc0           	.short 0xffc0
   13f8e:	0780           	bclr %d3,%d0
   13f90:	ffc0           	.short 0xffc0
   13f92:	1f00           	moveb %d0,%sp@-
   13f94:	ff81 ff00      	cp1stl %sp,%d1,#8,#256
   13f98:	ff87 fe00      	cp1stl %sp,%d7,#8,#0
   13f9c:	ff9f fc00      	cp1stl %sp,%sp@+,#7,#0
   13fa0:	ffbf           	.short 0xffbf
   13fa2:	f000           	.short 0xf000
   13fa4:	ff7f           	.short 0xff7f
   13fa6:	8000           	orb %d0,%d0
   13fa8:	fffe           	.short 0xfffe
   13faa:	0000 fffc      	orib #-4,%d0
   13fae:	0000 fff8      	orib #-8,%d0
   13fb2:	0000 fff8      	orib #-8,%d0
   13fb6:	0000 fff0      	orib #-16,%d0
   13fba:	0000 fff0      	orib #-16,%d0
   13fbe:	0000 fff0      	orib #-16,%d0
   13fc2:	0000 fff0      	orib #-16,%d0
   13fc6:	0000 fff8      	orib #-8,%d0
   13fca:	0000 fff8      	orib #-8,%d0
   13fce:	0000 0000      	orib #0,%d0
   13fd2:	0000 01f0      	orib #-16,%d0
   13fd6:	0400 07f0      	subib #-16,%d0
   13fda:	0200 1fe0      	andib #-32,%d0
   13fde:	0300           	btst %d1,%d0
   13fe0:	7fe0           	mvzw %a0@-,%d7
   13fe2:	0100           	btst %d0,%d0
   13fe4:	ffe0           	.short 0xffe0
   13fe6:	0180           	bclr %d0,%d0
   13fe8:	ffe0           	.short 0xffe0
   13fea:	0180           	bclr %d0,%d0
   13fec:	ffc0           	.short 0xffc0
   13fee:	0780           	bclr %d3,%d0
   13ff0:	ffc0           	.short 0xffc0
   13ff2:	1f00           	moveb %d0,%sp@-
   13ff4:	ff81 ff00      	cp1stl %sp,%d1,#8,#256
   13ff8:	ff87 fe00      	cp1stl %sp,%d7,#8,#0
   13ffc:	ff9f fc00      	cp1stl %sp,%sp@+,#7,#0
   14000:	ffbf           	.short 0xffbf
   14002:	f000           	.short 0xf000
   14004:	ff7f           	.short 0xff7f
   14006:	8000           	orb %d0,%d0
   14008:	fffe           	.short 0xfffe
   1400a:	0000 fffc      	orib #-4,%d0
   1400e:	0000 fff8      	orib #-8,%d0
   14012:	0000 fff8      	orib #-8,%d0
   14016:	0000 fff0      	orib #-16,%d0
   1401a:	0000 fff0      	orib #-16,%d0
   1401e:	0000 fff0      	orib #-16,%d0
   14022:	0000 fff0      	orib #-16,%d0
   14026:	0000 fff8      	orib #-8,%d0
   1402a:	0000 fff8      	orib #-8,%d0
   1402e:	0000 0000      	orib #0,%d0
   14032:	0000 01f0      	orib #-16,%d0
   14036:	0000 0520      	orib #32,%d0
   1403a:	0000 1f60      	orib #96,%d0
   1403e:	0000 42a0      	orib #-96,%d0
   14042:	1f00           	moveb %d0,%sp@-
   14044:	f940           	.short 0xf940
   14046:	c880           	andl %d0,%d4
   14048:	1d62 0000      	moveb %a2@-,%fp@(0)
   1404c:	86c5           	divuw %d5,%d3
   1404e:	0000 b3c8      	orib #-56,%d0
   14052:	0000 e930      	orib #48,%d0
   14056:	0000 34b0      	orib #-80,%d0
   1405a:	0000 0ab8      	orib #-72,%d0
   1405e:	0000 afe0      	orib #-32,%d0
   14062:	0000 d540      	orib #64,%d0
   14066:	0000 3ce0      	orib #-32,%d0
   1406a:	0000 3ed0      	orib #-48,%d0
   1406e:	0000 8a80      	orib #-128,%d0
   14072:	0000 7e00      	orib #0,%d0
   14076:	0000 ede0      	orib #-32,%d0
   1407a:	0000 eb90      	orib #-112,%d0
   1407e:	0000 9780      	orib #-128,%d0
   14082:	0000 c200      	orib #0,%d0
   14086:	0000 1fc0      	orib #-64,%d0
   1408a:	0000 b7e0      	orib #-32,%d0
   1408e:	0000 0000      	orib #0,%d0
   14092:	0000 01e0      	orib #-32,%d0
   14096:	0000 00f0      	orib #-16,%d0
   1409a:	0000 1fa0      	orib #-96,%d0
   1409e:	0000 15c0      	orib #-64,%d0
   140a2:	0800 fee0      	btst #-32,%d0
   140a6:	3fc0           	.short 0x3fc0
   140a8:	66c3           	bnes 0x1406d
   140aa:	c000           	andb %d0,%d0
   140ac:	3b43 0000      	movew %d3,%a5@(0)
   140b0:	4d46           	.short 0x4d46
   140b2:	0000 d7ac      	orib #-84,%d0
   140b6:	0000 fb98      	orib #-104,%d0
   140ba:	0000 fd88      	orib #-120,%d0
   140be:	0000 5898      	orib #-104,%d0
   140c2:	0000 ee30      	orib #48,%d0
   140c6:	0000 e7f0      	orib #-16,%d0
   140ca:	0000 d230      	orib #48,%d0
   140ce:	0000 7e70      	orib #112,%d0
   140d2:	0000 baf0      	orib #-16,%d0
   140d6:	0000 75f0      	orib #-16,%d0
   140da:	0000 d070      	orib #112,%d0
   140de:	0000 e870      	orib #112,%d0
   140e2:	0000 25f0      	orib #-16,%d0
   140e6:	0000 dfb8      	orib #-72,%d0
   140ea:	0000 6078      	orib #120,%d0
   140ee:	0000 0000      	orib #0,%d0
   140f2:	0000 01f0      	orib #-16,%d0
   140f6:	0000 07f0      	orib #-16,%d0
   140fa:	0000 1fe0      	orib #-32,%d0
   140fe:	0000 7fe0      	orib #-32,%d0
   14102:	3f00           	movew %d0,%sp@-
   14104:	ffe1           	.short 0xffe1
   14106:	ffc0           	.short 0xffc0
   14108:	ffe7           	.short 0xffe7
   1410a:	c000           	andb %d0,%d0
   1410c:	ffcf           	.short 0xffcf
   1410e:	0000 ffde      	orib #-34,%d0
   14112:	0000 ffbc      	orib #-68,%d0
   14116:	0000 ffb8      	orib #-72,%d0
   1411a:	0000 fff8      	orib #-8,%d0
   1411e:	0000 fff8      	orib #-8,%d0
   14122:	0000 ff70      	orib #112,%d0
   14126:	0000 fff0      	orib #-16,%d0
   1412a:	0000 fff0      	orib #-16,%d0
   1412e:	0000 fff0      	orib #-16,%d0
   14132:	0000 fff0      	orib #-16,%d0
   14136:	0000 fff0      	orib #-16,%d0
   1413a:	0000 fff0      	orib #-16,%d0
   1413e:	0000 fff0      	orib #-16,%d0
   14142:	0000 fff0      	orib #-16,%d0
   14146:	0000 fff8      	orib #-8,%d0
   1414a:	0000 fff8      	orib #-8,%d0
   1414e:	0000 0000      	orib #0,%d0
   14152:	0000 01f0      	orib #-16,%d0
   14156:	0000 07f0      	orib #-16,%d0
   1415a:	0000 1fe0      	orib #-32,%d0
   1415e:	0000 7fe0      	orib #-32,%d0
   14162:	3f00           	movew %d0,%sp@-
   14164:	ffe1           	.short 0xffe1
   14166:	ffc0           	.short 0xffc0
   14168:	ffe7           	.short 0xffe7
   1416a:	c000           	andb %d0,%d0
   1416c:	ffcf           	.short 0xffcf
   1416e:	0000 ffde      	orib #-34,%d0
   14172:	0000 ffbc      	orib #-68,%d0
   14176:	0000 ffb8      	orib #-72,%d0
   1417a:	0000 fff8      	orib #-8,%d0
   1417e:	0000 fff8      	orib #-8,%d0
   14182:	0000 ff70      	orib #112,%d0
   14186:	0000 fff0      	orib #-16,%d0
   1418a:	0000 fff0      	orib #-16,%d0
   1418e:	0000 fff0      	orib #-16,%d0
   14192:	0000 fff0      	orib #-16,%d0
   14196:	0000 fff0      	orib #-16,%d0
   1419a:	0000 fff0      	orib #-16,%d0
   1419e:	0000 fff0      	orib #-16,%d0
   141a2:	0000 fff0      	orib #-16,%d0
   141a6:	0000 fff8      	orib #-8,%d0
   141aa:	0000 fff8      	orib #-8,%d0
   141ae:	0000 7ef0      	orib #-16,%d0
   141b2:	0000 97c8      	orib #-56,%d0
   141b6:	0000 ffcc      	orib #-52,%d0
   141ba:	0000 bfc4      	orib #-60,%d0
   141be:	0000 cac0      	orib #-64,%d0
   141c2:	0000 5640      	orib #64,%d0
   141c6:	0000 ec20      	orib #32,%d0
   141ca:	0000 c220      	orib #32,%d0
   141ce:	0000 0220      	orib #32,%d0
   141d2:	0000 a240      	orib #64,%d0
   141d6:	0000 8400      	orib #0,%d0
   141da:	0000 c000      	orib #0,%d0
   141de:	0000 c000      	orib #0,%d0
   141e2:	0000 c000      	orib #0,%d0
   141e6:	0000 8000      	orib #0,%d0
	...
   1420e:	0000 801c      	orib #28,%d0
   14212:	0000 603c      	orib #60,%d0
   14216:	0000 7fbc      	orib #-68,%d0
   1421a:	0000 c0fc      	orib #-4,%d0
   1421e:	0000 b57c      	orib #124,%d0
   14222:	0000 b9fc      	orib #-4,%d0
   14226:	0000 7ff8      	orib #-8,%d0
   1422a:	0000 3ff8      	orib #-8,%d0
   1422e:	0000 fff0      	orib #-16,%d0
   14232:	0000 dfc0      	orib #-64,%d0
   14236:	0000 fc00      	orib #0,%d0
   1423a:	0000 e000      	orib #0,%d0
   1423e:	0000 6000      	orib #0,%d0
   14242:	0000 4000      	orib #0,%d0
	...
   1426e:	0000 fffc      	orib #-4,%d0
   14272:	0000 fffc      	orib #-4,%d0
   14276:	0000 fffc      	orib #-4,%d0
   1427a:	0000 fffc      	orib #-4,%d0
   1427e:	0000 fffc      	orib #-4,%d0
   14282:	0000 fffc      	orib #-4,%d0
   14286:	0000 fff8      	orib #-8,%d0
   1428a:	0000 fff8      	orib #-8,%d0
   1428e:	0000 fff0      	orib #-16,%d0
   14292:	0000 ffc0      	orib #-64,%d0
   14296:	0000 fc00      	orib #0,%d0
   1429a:	0000 e000      	orib #0,%d0
   1429e:	0000 e000      	orib #0,%d0
   142a2:	0000 c000      	orib #0,%d0
   142a6:	0000 8000      	orib #0,%d0
	...
   142ce:	0000 fffc      	orib #-4,%d0
   142d2:	0000 fffc      	orib #-4,%d0
   142d6:	0000 fffc      	orib #-4,%d0
   142da:	0000 fffc      	orib #-4,%d0
   142de:	0000 fffc      	orib #-4,%d0
   142e2:	0000 fffc      	orib #-4,%d0
   142e6:	0000 fff8      	orib #-8,%d0
   142ea:	0000 fff8      	orib #-8,%d0
   142ee:	0000 fff0      	orib #-16,%d0
   142f2:	0000 ffc0      	orib #-64,%d0
   142f6:	0000 fc00      	orib #0,%d0
   142fa:	0000 e000      	orib #0,%d0
   142fe:	0000 e000      	orib #0,%d0
   14302:	0000 c000      	orib #0,%d0
   14306:	0000 8000      	orib #0,%d0
	...
   1432e:	0000 7ef0      	orib #-16,%d0
   14332:	0000 97c8      	orib #-56,%d0
   14336:	0000 ffcc      	orib #-52,%d0
   1433a:	0000 bfc4      	orib #-60,%d0
   1433e:	0000 cac0      	orib #-64,%d0
   14342:	0000 5640      	orib #64,%d0
   14346:	0000 ec20      	orib #32,%d0
   1434a:	0000 c220      	orib #32,%d0
   1434e:	0000 0220      	orib #32,%d0
   14352:	0000 a240      	orib #64,%d0
   14356:	0000 8400      	orib #0,%d0
   1435a:	0000 c000      	orib #0,%d0
   1435e:	0000 c000      	orib #0,%d0
   14362:	0000 c000      	orib #0,%d0
   14366:	0000 8000      	orib #0,%d0
	...
   1438e:	0000 801c      	orib #28,%d0
   14392:	0000 603c      	orib #60,%d0
   14396:	0000 7fbc      	orib #-68,%d0
   1439a:	0000 c0fc      	orib #-4,%d0
   1439e:	0000 b57c      	orib #124,%d0
   143a2:	0000 b9fc      	orib #-4,%d0
   143a6:	0000 7ff8      	orib #-8,%d0
   143aa:	0000 3ff8      	orib #-8,%d0
   143ae:	0000 fff0      	orib #-16,%d0
   143b2:	0000 dfc0      	orib #-64,%d0
   143b6:	0000 fc00      	orib #0,%d0
   143ba:	0000 e000      	orib #0,%d0
   143be:	0000 6000      	orib #0,%d0
   143c2:	0000 4000      	orib #0,%d0
	...
   143ee:	0000 fffc      	orib #-4,%d0
   143f2:	0000 fffc      	orib #-4,%d0
   143f6:	0000 fffc      	orib #-4,%d0
   143fa:	0000 fffc      	orib #-4,%d0
   143fe:	0000 fffc      	orib #-4,%d0
   14402:	0000 fffc      	orib #-4,%d0
   14406:	0000 fff8      	orib #-8,%d0
   1440a:	0000 fff8      	orib #-8,%d0
   1440e:	0000 fff0      	orib #-16,%d0
   14412:	0000 ffc0      	orib #-64,%d0
   14416:	0000 fc00      	orib #0,%d0
   1441a:	0000 e000      	orib #0,%d0
   1441e:	0000 e000      	orib #0,%d0
   14422:	0000 c000      	orib #0,%d0
   14426:	0000 8000      	orib #0,%d0
	...
   1444e:	0000 fffc      	orib #-4,%d0
   14452:	0000 fffc      	orib #-4,%d0
   14456:	0000 fffc      	orib #-4,%d0
   1445a:	0000 fffc      	orib #-4,%d0
   1445e:	0000 fffc      	orib #-4,%d0
   14462:	0000 fffc      	orib #-4,%d0
   14466:	0000 fff8      	orib #-8,%d0
   1446a:	0000 fff8      	orib #-8,%d0
   1446e:	0000 fff0      	orib #-16,%d0
   14472:	0000 ffc0      	orib #-64,%d0
   14476:	0000 fc00      	orib #0,%d0
   1447a:	0000 e000      	orib #0,%d0
   1447e:	0000 e000      	orib #0,%d0
   14482:	0000 c000      	orib #0,%d0
   14486:	0000 8000      	orib #0,%d0
	...
   144ae:	0000 7ef0      	orib #-16,%d0
   144b2:	0000 97c8      	orib #-56,%d0
   144b6:	0000 ffcc      	orib #-52,%d0
   144ba:	0000 bfc4      	orib #-60,%d0
   144be:	0000 cac0      	orib #-64,%d0
   144c2:	0000 5640      	orib #64,%d0
   144c6:	0000 ec20      	orib #32,%d0
   144ca:	0000 c220      	orib #32,%d0
   144ce:	0000 0220      	orib #32,%d0
   144d2:	0000 a240      	orib #64,%d0
   144d6:	0000 8400      	orib #0,%d0
   144da:	0000 c000      	orib #0,%d0
   144de:	0000 c000      	orib #0,%d0
   144e2:	0000 c000      	orib #0,%d0
   144e6:	0000 8000      	orib #0,%d0
	...
   1450e:	0000 801c      	orib #28,%d0
   14512:	0000 603c      	orib #60,%d0
   14516:	0000 7fbc      	orib #-68,%d0
   1451a:	0000 c0fc      	orib #-4,%d0
   1451e:	0000 b57c      	orib #124,%d0
   14522:	0000 b9fc      	orib #-4,%d0
   14526:	0000 7ff8      	orib #-8,%d0
   1452a:	0000 3ff8      	orib #-8,%d0
   1452e:	0000 fff0      	orib #-16,%d0
   14532:	0000 dfc0      	orib #-64,%d0
   14536:	0000 fc00      	orib #0,%d0
   1453a:	0000 e000      	orib #0,%d0
   1453e:	0000 6000      	orib #0,%d0
   14542:	0000 4000      	orib #0,%d0
	...
   1456e:	0000 fffc      	orib #-4,%d0
   14572:	0000 fffc      	orib #-4,%d0
   14576:	0000 fffc      	orib #-4,%d0
   1457a:	0000 fffc      	orib #-4,%d0
   1457e:	0000 fffc      	orib #-4,%d0
   14582:	0000 fffc      	orib #-4,%d0
   14586:	0000 fff8      	orib #-8,%d0
   1458a:	0000 fff8      	orib #-8,%d0
   1458e:	0000 fff0      	orib #-16,%d0
   14592:	0000 ffc0      	orib #-64,%d0
   14596:	0000 fc00      	orib #0,%d0
   1459a:	0000 e000      	orib #0,%d0
   1459e:	0000 e000      	orib #0,%d0
   145a2:	0000 c000      	orib #0,%d0
   145a6:	0000 8000      	orib #0,%d0
	...
   145ce:	0000 fffc      	orib #-4,%d0
   145d2:	0000 fffc      	orib #-4,%d0
   145d6:	0000 fffc      	orib #-4,%d0
   145da:	0000 fffc      	orib #-4,%d0
   145de:	0000 fffc      	orib #-4,%d0
   145e2:	0000 fffc      	orib #-4,%d0
   145e6:	0000 fff8      	orib #-8,%d0
   145ea:	0000 fff8      	orib #-8,%d0
   145ee:	0000 fff0      	orib #-16,%d0
   145f2:	0000 ffc0      	orib #-64,%d0
   145f6:	0000 fc00      	orib #0,%d0
   145fa:	0000 e000      	orib #0,%d0
   145fe:	0000 e000      	orib #0,%d0
   14602:	0000 c000      	orib #0,%d0
   14606:	0000 8000      	orib #0,%d0
	...
   1462e:	0000 7ef0      	orib #-16,%d0
   14632:	0000 97c8      	orib #-56,%d0
   14636:	0000 ffcc      	orib #-52,%d0
   1463a:	0000 bfc4      	orib #-60,%d0
   1463e:	0000 cac0      	orib #-64,%d0
   14642:	0000 5640      	orib #64,%d0
   14646:	0000 ec20      	orib #32,%d0
   1464a:	0000 c220      	orib #32,%d0
   1464e:	0000 0220      	orib #32,%d0
   14652:	0000 a240      	orib #64,%d0
   14656:	0000 8400      	orib #0,%d0
   1465a:	0000 c000      	orib #0,%d0
   1465e:	0000 c000      	orib #0,%d0
   14662:	0000 c000      	orib #0,%d0
   14666:	0000 8000      	orib #0,%d0
	...
   1468e:	0000 801c      	orib #28,%d0
   14692:	0000 603c      	orib #60,%d0
   14696:	0000 7fbc      	orib #-68,%d0
   1469a:	0000 c0fc      	orib #-4,%d0
   1469e:	0000 b57c      	orib #124,%d0
   146a2:	0000 b9fc      	orib #-4,%d0
   146a6:	0000 7ff8      	orib #-8,%d0
   146aa:	0000 3ff8      	orib #-8,%d0
   146ae:	0000 fff0      	orib #-16,%d0
   146b2:	0000 dfc0      	orib #-64,%d0
   146b6:	0000 fc00      	orib #0,%d0
   146ba:	0000 e000      	orib #0,%d0
   146be:	0000 6000      	orib #0,%d0
   146c2:	0000 4000      	orib #0,%d0
	...
   146ee:	0000 fffc      	orib #-4,%d0
   146f2:	0000 fffc      	orib #-4,%d0
   146f6:	0000 fffc      	orib #-4,%d0
   146fa:	0000 fffc      	orib #-4,%d0
   146fe:	0000 fffc      	orib #-4,%d0
   14702:	0000 fffc      	orib #-4,%d0
   14706:	0000 fff8      	orib #-8,%d0
   1470a:	0000 fff8      	orib #-8,%d0
   1470e:	0000 fff0      	orib #-16,%d0
   14712:	0000 ffc0      	orib #-64,%d0
   14716:	0000 fc00      	orib #0,%d0
   1471a:	0000 e000      	orib #0,%d0
   1471e:	0000 e000      	orib #0,%d0
   14722:	0000 c000      	orib #0,%d0
   14726:	0000 8000      	orib #0,%d0
	...
   1474e:	0000 fffc      	orib #-4,%d0
   14752:	0000 fffc      	orib #-4,%d0
   14756:	0000 fffc      	orib #-4,%d0
   1475a:	0000 fffc      	orib #-4,%d0
   1475e:	0000 fffc      	orib #-4,%d0
   14762:	0000 fffc      	orib #-4,%d0
   14766:	0000 fff8      	orib #-8,%d0
   1476a:	0000 fff8      	orib #-8,%d0
   1476e:	0000 fff0      	orib #-16,%d0
   14772:	0000 ffc0      	orib #-64,%d0
   14776:	0000 fc00      	orib #0,%d0
   1477a:	0000 e000      	orib #0,%d0
   1477e:	0000 e000      	orib #0,%d0
   14782:	0000 c000      	orib #0,%d0
   14786:	0000 8000      	orib #0,%d0
	...
   147ae:	0000 7ef0      	orib #-16,%d0
   147b2:	0000 97c8      	orib #-56,%d0
   147b6:	0000 ffcc      	orib #-52,%d0
   147ba:	0000 bfc4      	orib #-60,%d0
   147be:	0000 cac0      	orib #-64,%d0
   147c2:	0000 5640      	orib #64,%d0
   147c6:	0000 ec20      	orib #32,%d0
   147ca:	0000 c220      	orib #32,%d0
   147ce:	0000 0220      	orib #32,%d0
   147d2:	0000 a240      	orib #64,%d0
   147d6:	0000 8400      	orib #0,%d0
   147da:	0000 c000      	orib #0,%d0
   147de:	0000 c000      	orib #0,%d0
   147e2:	0000 c000      	orib #0,%d0
   147e6:	0000 8000      	orib #0,%d0
	...
   1480e:	0000 801c      	orib #28,%d0
   14812:	0000 603c      	orib #60,%d0
   14816:	0000 7fbc      	orib #-68,%d0
   1481a:	0000 c0fc      	orib #-4,%d0
   1481e:	0000 b57c      	orib #124,%d0
   14822:	0000 b9fc      	orib #-4,%d0
   14826:	0000 7ff8      	orib #-8,%d0
   1482a:	0000 3ff8      	orib #-8,%d0
   1482e:	0000 fff0      	orib #-16,%d0
   14832:	0000 dfc0      	orib #-64,%d0
   14836:	0000 fc00      	orib #0,%d0
   1483a:	0000 e000      	orib #0,%d0
   1483e:	0000 6000      	orib #0,%d0
   14842:	0000 4000      	orib #0,%d0
	...
   1486e:	0000 fffc      	orib #-4,%d0
   14872:	0000 fffc      	orib #-4,%d0
   14876:	0000 fffc      	orib #-4,%d0
   1487a:	0000 fffc      	orib #-4,%d0
   1487e:	0000 fffc      	orib #-4,%d0
   14882:	0000 fffc      	orib #-4,%d0
   14886:	0000 fff8      	orib #-8,%d0
   1488a:	0000 fff8      	orib #-8,%d0
   1488e:	0000 fff0      	orib #-16,%d0
   14892:	0000 ffc0      	orib #-64,%d0
   14896:	0000 fc00      	orib #0,%d0
   1489a:	0000 e000      	orib #0,%d0
   1489e:	0000 e000      	orib #0,%d0
   148a2:	0000 c000      	orib #0,%d0
   148a6:	0000 8000      	orib #0,%d0
	...
   148ce:	0000 fffc      	orib #-4,%d0
   148d2:	0000 fffc      	orib #-4,%d0
   148d6:	0000 fffc      	orib #-4,%d0
   148da:	0000 fffc      	orib #-4,%d0
   148de:	0000 fffc      	orib #-4,%d0
   148e2:	0000 fffc      	orib #-4,%d0
   148e6:	0000 fff8      	orib #-8,%d0
   148ea:	0000 fff8      	orib #-8,%d0
   148ee:	0000 fff0      	orib #-16,%d0
   148f2:	0000 ffc0      	orib #-64,%d0
   148f6:	0000 fc00      	orib #0,%d0
   148fa:	0000 e000      	orib #0,%d0
   148fe:	0000 e000      	orib #0,%d0
   14902:	0000 c000      	orib #0,%d0
   14906:	0000 8000      	orib #0,%d0
	...
   1492e:	0000 7ef0      	orib #-16,%d0
   14932:	0000 97c8      	orib #-56,%d0
   14936:	0000 ffcc      	orib #-52,%d0
   1493a:	0000 bfc4      	orib #-60,%d0
   1493e:	0000 cac0      	orib #-64,%d0
   14942:	0000 5640      	orib #64,%d0
   14946:	0000 ec20      	orib #32,%d0
   1494a:	0000 c220      	orib #32,%d0
   1494e:	0000 0220      	orib #32,%d0
   14952:	0000 a240      	orib #64,%d0
   14956:	0000 8400      	orib #0,%d0
   1495a:	0000 c000      	orib #0,%d0
   1495e:	0000 c000      	orib #0,%d0
   14962:	0000 c000      	orib #0,%d0
   14966:	0000 8000      	orib #0,%d0
	...
   1498e:	0000 801c      	orib #28,%d0
   14992:	0000 603c      	orib #60,%d0
   14996:	0000 7fbc      	orib #-68,%d0
   1499a:	0000 c0fc      	orib #-4,%d0
   1499e:	0000 b57c      	orib #124,%d0
   149a2:	0000 b9fc      	orib #-4,%d0
   149a6:	0000 7ff8      	orib #-8,%d0
   149aa:	0000 3ff8      	orib #-8,%d0
   149ae:	0000 fff0      	orib #-16,%d0
   149b2:	0000 dfc0      	orib #-64,%d0
   149b6:	0000 fc00      	orib #0,%d0
   149ba:	0000 e000      	orib #0,%d0
   149be:	0000 6000      	orib #0,%d0
   149c2:	0000 4000      	orib #0,%d0
	...
   149ee:	0000 fffc      	orib #-4,%d0
   149f2:	0000 fffc      	orib #-4,%d0
   149f6:	0000 fffc      	orib #-4,%d0
   149fa:	0000 fffc      	orib #-4,%d0
   149fe:	0000 fffc      	orib #-4,%d0
   14a02:	0000 fffc      	orib #-4,%d0
   14a06:	0000 fff8      	orib #-8,%d0
   14a0a:	0000 fff8      	orib #-8,%d0
   14a0e:	0000 fff0      	orib #-16,%d0
   14a12:	0000 ffc0      	orib #-64,%d0
   14a16:	0000 fc00      	orib #0,%d0
   14a1a:	0000 e000      	orib #0,%d0
   14a1e:	0000 e000      	orib #0,%d0
   14a22:	0000 c000      	orib #0,%d0
   14a26:	0000 8000      	orib #0,%d0
	...
   14a4e:	0000 fffc      	orib #-4,%d0
   14a52:	0000 fffc      	orib #-4,%d0
   14a56:	0000 fffc      	orib #-4,%d0
   14a5a:	0000 fffc      	orib #-4,%d0
   14a5e:	0000 fffc      	orib #-4,%d0
   14a62:	0000 fffc      	orib #-4,%d0
   14a66:	0000 fff8      	orib #-8,%d0
   14a6a:	0000 fff8      	orib #-8,%d0
   14a6e:	0000 fff0      	orib #-16,%d0
   14a72:	0000 ffc0      	orib #-64,%d0
   14a76:	0000 fc00      	orib #0,%d0
   14a7a:	0000 e000      	orib #0,%d0
   14a7e:	0000 e000      	orib #0,%d0
   14a82:	0000 c000      	orib #0,%d0
   14a86:	0000 8000      	orib #0,%d0
	...
   14aae:	0000 0060      	orib #96,%d0
   14ab2:	0c00 00c0      	cmpib #-64,%d0
   14ab6:	3c00           	movew %d0,%d6
   14ab8:	01c0           	bset %d0,%d0
   14aba:	7c00           	moveq #0,%d6
   14abc:	01c0           	bset %d0,%d0
   14abe:	fc00 01c0      	cp0ldb %d0,%d0,#1,#448
   14ac2:	fc00 01c0      	cp0ldb %d0,%d0,#1,#448
   14ac6:	0000 072d      	orib #45,%d0
   14aca:	b000           	cmpb %d0,%d0
   14acc:	1cc0           	moveb %d0,%fp@+
   14ace:	0600 301e      	addib #30,%d0
   14ad2:	0000 0ffc      	orib #-4,%d0
   14ad6:	0000 007f      	orib #127,%d0
	...
   14b0e:	0000 00e0      	orib #-32,%d0
   14b12:	0e00           	.short 0x0e00
   14b14:	01f8 3f00      	bset %d0,0x3f00
   14b18:	01fc           	.short 0x01fc
   14b1a:	7f00           	mvsb %d0,%d7
   14b1c:	01ff           	.short 0x01ff
   14b1e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   14b22:	ff00 03c0      	cp1stb %d0,%d0,#2,#448
   14b26:	0780           	bclr %d3,%d0
   14b28:	0f2d b1e0      	btst %d7,%a5@(-20000)
   14b2c:	1cc0           	moveb %d0,%fp@+
   14b2e:	0670 303f f818 	addiw #12351,%a0@(18,%sp:l)
   14b34:	1fff           	.short 0x1fff
   14b36:	fff0           	.short 0xfff0
   14b38:	007f           	.short 0x007f
   14b3a:	fc00 0000      	cp0nop #1
	...
   14b6e:	0000 0080      	orib #-128,%d0
   14b72:	0200 0138      	andib #56,%d0
   14b76:	0300           	btst %d1,%d0
   14b78:	003c 0300      	orib #0,%ccr
   14b7c:	003f           	.short 0x003f
   14b7e:	0300           	btst %d1,%d0
   14b80:	003f           	.short 0x003f
   14b82:	0300           	btst %d1,%d0
   14b84:	023f           	.short 0x023f
   14b86:	ff80 08ff      	cp1stl %d0,%d0,#5,#255
   14b8a:	ffe0           	.short 0xffe0
   14b8c:	03ff           	.short 0x03ff
   14b8e:	fff0           	.short 0xfff0
   14b90:	0fe1           	bset %d7,%a1@-
   14b92:	fff8           	.short 0xfff8
   14b94:	1003           	moveb %d3,%d0
   14b96:	fff0           	.short 0xfff0
   14b98:	0000 fc00      	orib #0,%d0
	...
   14bd0:	00e0           	.short 0x00e0
   14bd2:	0e00           	.short 0x0e00
   14bd4:	01f8 3f00      	bset %d0,0x3f00
   14bd8:	01fc           	.short 0x01fc
   14bda:	7f00           	mvsb %d0,%d7
   14bdc:	01ff           	.short 0x01ff
   14bde:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   14be2:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   14be6:	ff80 0fff      	cp1stl %d0,%d0,#8,#511
   14bea:	ffe0           	.short 0xffe0
   14bec:	1fff           	.short 0x1fff
   14bee:	fff0           	.short 0xfff0
   14bf0:	3fff           	.short 0x3fff
   14bf2:	fff8           	.short 0xfff8
   14bf4:	1fff           	.short 0x1fff
   14bf6:	fff0           	.short 0xfff0
   14bf8:	007f           	.short 0x007f
   14bfa:	fc00 0000      	cp0nop #1
	...
   14c2e:	0000 0060      	orib #96,%d0
   14c32:	0c00 00c0      	cmpib #-64,%d0
   14c36:	3c00           	movew %d0,%d6
   14c38:	01c0           	bset %d0,%d0
   14c3a:	7c00           	moveq #0,%d6
   14c3c:	01c1           	bset %d0,%d1
   14c3e:	fc00 01e1      	cp0ldb %d0,%d0,#1,#481
   14c42:	fe00 07c0      	cp1ldb %d0,%d0,#4,#448
   14c46:	0000 0b00      	orib #0,%d0
   14c4a:	0000 186d      	orib #109,%d0
   14c4e:	b600           	cmpb %d0,%d3
   14c50:	236d b680 1800 	movel %a5@(-18816),%a1@(6144)
   14c56:	0000 07fe      	orib #-2,%d0
   14c5a:	0000 00ff      	orib #-1,%d0
	...
   14c8e:	0000 00e0      	orib #-32,%d0
   14c92:	0e00           	.short 0x0e00
   14c94:	01f8 3f00      	bset %d0,0x3f00
   14c98:	01fc           	.short 0x01fc
   14c9a:	7f00           	mvsb %d0,%d7
   14c9c:	01ff           	.short 0x01ff
   14c9e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   14ca2:	ff00 07c0      	cp1stb %d0,%d0,#4,#448
   14ca6:	07c0           	bset %d3,%d0
   14ca8:	1f00           	moveb %d0,%sp@-
   14caa:	01f0 386d      	bset %d0,%a0@(6d,%d3:l)
   14cae:	b638 236d      	cmpb 0x236d,%d3
   14cb2:	b688           	cmpl %a0,%d3
   14cb4:	1800           	moveb %d0,%d4
   14cb6:	0030 07ff ffc0 	orib #-1,@(0)
   14cbc:	00ff           	.short 0x00ff
   14cbe:	fe00 0000      	cp1nop #1
	...
   14cee:	0000 0080      	orib #-128,%d0
   14cf2:	0200 0138      	andib #56,%d0
   14cf6:	0300           	btst %d1,%d0
   14cf8:	003c 0300      	orib #0,%ccr
   14cfc:	003e           	.short 0x003e
   14cfe:	0300           	btst %d1,%d0
   14d00:	00fe           	.short 0x00fe
   14d02:	0f00           	btst %d7,%d0
   14d04:	003f           	.short 0x003f
   14d06:	ffc0           	.short 0xffc0
   14d08:	14ff           	.short 0x14ff
   14d0a:	fff0           	.short 0xfff0
   14d0c:	27ff           	.short 0x27ff
   14d0e:	fff8           	.short 0xfff8
   14d10:	1fff           	.short 0x1fff
   14d12:	fff8           	.short 0xfff8
   14d14:	07ff           	.short 0x07ff
   14d16:	fff0           	.short 0xfff0
   14d18:	0001 ffc0      	orib #-64,%d1
   14d1c:	0000 fe00      	orib #0,%d0
	...
   14d50:	00e0           	.short 0x00e0
   14d52:	0e00           	.short 0x0e00
   14d54:	01f8 3f00      	bset %d0,0x3f00
   14d58:	01fc           	.short 0x01fc
   14d5a:	7f00           	mvsb %d0,%d7
   14d5c:	01ff           	.short 0x01ff
   14d5e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   14d62:	ff00 07ff      	cp1stb %d0,%d0,#4,#511
   14d66:	ffc0           	.short 0xffc0
   14d68:	1fff           	.short 0x1fff
   14d6a:	fff0           	.short 0xfff0
   14d6c:	3fff           	.short 0x3fff
   14d6e:	fff8           	.short 0xfff8
   14d70:	3fff           	.short 0x3fff
   14d72:	fff8           	.short 0xfff8
   14d74:	1fff           	.short 0x1fff
   14d76:	fff0           	.short 0xfff0
   14d78:	07ff           	.short 0x07ff
   14d7a:	ffc0           	.short 0xffc0
   14d7c:	00ff           	.short 0x00ff
   14d7e:	fe00 0000      	cp1nop #1
	...
   14dae:	0000 00e0      	orib #-32,%d0
   14db2:	0c00 01c0      	cmpib #-64,%d0
   14db6:	3c00           	movew %d0,%d6
   14db8:	01c0           	bset %d0,%d0
   14dba:	7800           	moveq #0,%d4
   14dbc:	01f1 ff00      	bset %d0,%a1@(0,%sp:l:8)
   14dc0:	01e1           	bset %d0,%a1@-
   14dc2:	fe00 01c0      	cp1ldb %d0,%d0,#1,#448
   14dc6:	0000 0f00      	orib #0,%d0
   14dca:	0000 106d      	orib #109,%d0
   14dce:	b600           	cmpb %d0,%d3
   14dd0:	2b6d b6c0 2fff 	movel %a5@(-18752),%a5@(12287)
   14dd6:	ffc0           	.short 0xffc0
   14dd8:	2b6d b6c0 106d 	movel %a5@(-18752),%a5@(4205)
   14dde:	b600           	cmpb %d0,%d3
   14de0:	0f00           	btst %d7,%d0
   14de2:	0000 01fe      	orib #-2,%d0
	...
   14e0e:	0000 00e0      	orib #-32,%d0
   14e12:	0e00           	.short 0x0e00
   14e14:	01f8 3f00      	bset %d0,0x3f00
   14e18:	01fc           	.short 0x01fc
   14e1a:	7f00           	mvsb %d0,%d7
   14e1c:	011f           	btst %d0,%sp@+
   14e1e:	f100           	.short 0xf100
   14e20:	01ff           	.short 0x01ff
   14e22:	ff00 01c0      	cp1stb %d0,%d0,#1,#448
   14e26:	0700           	btst %d3,%d0
   14e28:	0f00           	btst %d7,%d0
   14e2a:	01e0           	bset %d0,%a0@-
   14e2c:	106d           	.short 0x106d
   14e2e:	b610           	cmpb %a0@,%d3
   14e30:	2b6d b6c8 2fff 	movel %a5@(-18744),%a5@(12287)
   14e36:	ffc8           	.short 0xffc8
   14e38:	2b65 96c8      	movel %a5@-,%a5@(-26936)
   14e3c:	1001           	moveb %d1,%d0
   14e3e:	0010 0f00      	orib #0,%a0@
   14e42:	01e0           	bset %d0,%a0@-
   14e44:	01ff           	.short 0x01ff
   14e46:	ff00 0000      	cp1stb %d0,%d0,#1,#0
	...
   14e72:	0200 0038      	andib #56,%d0
   14e76:	0300           	btst %d1,%d0
   14e78:	003c 0700      	orib #0,%ccr
   14e7c:	01fe           	.short 0x01fe
   14e7e:	1f00           	moveb %d0,%sp@-
   14e80:	00fe           	.short 0x00fe
   14e82:	0f00           	btst %d7,%d0
   14e84:	003f           	.short 0x003f
   14e86:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   14e8a:	ffe0           	.short 0xffe0
   14e8c:	0fff           	.short 0x0fff
   14e8e:	fff0           	.short 0xfff0
   14e90:	1fff           	.short 0x1fff
   14e92:	fff8           	.short 0xfff8
   14e94:	1fff           	.short 0x1fff
   14e96:	fff8           	.short 0xfff8
   14e98:	1fff           	.short 0x1fff
   14e9a:	fff8           	.short 0xfff8
   14e9c:	0fff           	.short 0x0fff
   14e9e:	fff0           	.short 0xfff0
   14ea0:	00ff           	.short 0x00ff
   14ea2:	ffe0           	.short 0xffe0
   14ea4:	0001 ff00      	orib #0,%d1
	...
   14ed0:	00e0           	.short 0x00e0
   14ed2:	0e00           	.short 0x0e00
   14ed4:	01f8 3f00      	bset %d0,0x3f00
   14ed8:	01fc           	.short 0x01fc
   14eda:	7f00           	mvsb %d0,%d7
   14edc:	01ff           	.short 0x01ff
   14ede:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   14ee2:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   14ee6:	ff00 0fff      	cp1stb %d0,%d0,#8,#511
   14eea:	ffe0           	.short 0xffe0
   14eec:	1fff           	.short 0x1fff
   14eee:	fff0           	.short 0xfff0
   14ef0:	3fff           	.short 0x3fff
   14ef2:	fff8           	.short 0xfff8
   14ef4:	3fff           	.short 0x3fff
   14ef6:	fff8           	.short 0xfff8
   14ef8:	3fff           	.short 0x3fff
   14efa:	fff8           	.short 0xfff8
   14efc:	1fff           	.short 0x1fff
   14efe:	fff0           	.short 0xfff0
   14f00:	0fff           	.short 0x0fff
   14f02:	ffe0           	.short 0xffe0
   14f04:	01ff           	.short 0x01ff
   14f06:	ff00 0000      	cp1stb %d0,%d0,#1,#0
	...
   14f2e:	0000 00c0      	orib #-64,%d0
   14f32:	0c00 01e0      	cmpib #-32,%d0
   14f36:	3800           	movew %d0,%d4
   14f38:	01f0 7f00      	bset %d0,%a0@(0,%d7:l:8)
   14f3c:	01f1 ff00      	bset %d0,%a1@(0,%sp:l:8)
   14f40:	01e1           	bset %d0,%a1@-
   14f42:	fe00 03c0      	cp1ldb %d0,%d0,#2,#448
   14f46:	0000 0e00      	orib #0,%d0
   14f4a:	0000 1c2d      	orib #45,%d0
   14f4e:	b000           	cmpb %d0,%d0
   14f50:	136d b680 2b7f 	moveb %a5@(-18816),%a1@(11135)
   14f56:	fec0 2fff      	cp1bcbusy 0x17f57
   14f5a:	ffe0           	.short 0xffe0
   14f5c:	2b7f           	.short 0x2b7f
   14f5e:	fec0 136d      	cp1bcbusy 0x162cd
   14f62:	b680           	cmpl %d0,%d3
   14f64:	0c2d b000 03c0 	cmpib #0,%a5@(960)
   14f6a:	0000 003f      	orib #63,%d0
	...
   14f8e:	0000 00e0      	orib #-32,%d0
   14f92:	0e00           	.short 0x0e00
   14f94:	01f8 3f00      	bset %d0,0x3f00
   14f98:	011c           	btst %d0,%a4@+
   14f9a:	7100           	mvsb %d0,%d0
   14f9c:	011f           	btst %d0,%sp@+
   14f9e:	f100           	.short 0xf100
   14fa0:	01ff           	.short 0x01ff
   14fa2:	ff00 03c0      	cp1stb %d0,%d0,#2,#448
   14fa6:	0780           	bclr %d3,%d0
   14fa8:	0e00           	.short 0x0e00
   14faa:	00e0           	.short 0x00e0
   14fac:	1c2d b070      	moveb %a5@(-20368),%d6
   14fb0:	136d b690 2b7f 	moveb %a5@(-18800),%a1@(11135)
   14fb6:	fec8           	.short 0xfec8
   14fb8:	2fff           	.short 0x2fff
   14fba:	ffe8           	.short 0xffe8
   14fbc:	2b71 9ec8 1001 	movel %a1@(ffffffffffffffc8,%a1:l:8),%a5@(4097)
   14fc2:	0010 0c21      	orib #33,%a0@
   14fc6:	8060           	orw %a0@-,%d0
   14fc8:	03c0           	bset %d1,%d0
   14fca:	0780           	bclr %d3,%d0
   14fcc:	003f           	.short 0x003f
   14fce:	fc00 0000      	cp0nop #1
	...
   14fee:	0000 0020      	orib #32,%d0
   14ff2:	0200 0018      	andib #24,%d0
   14ff6:	0700           	btst %d3,%d0
   14ff8:	01fc           	.short 0x01fc
   14ffa:	1f00           	moveb %d0,%sp@-
   14ffc:	01fe           	.short 0x01fe
   14ffe:	1f00           	moveb %d0,%sp@-
   15000:	00fe           	.short 0x00fe
   15002:	0f00           	btst %d7,%d0
   15004:	003f           	.short 0x003f
   15006:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   1500a:	ffe0           	.short 0xffe0
   1500c:	03ff           	.short 0x03ff
   1500e:	fff0           	.short 0xfff0
   15010:	0fff           	.short 0x0fff
   15012:	fff0           	.short 0xfff0
   15014:	1fff           	.short 0x1fff
   15016:	fff8           	.short 0xfff8
   15018:	1fff           	.short 0x1fff
   1501a:	fff8           	.short 0xfff8
   1501c:	1fff           	.short 0x1fff
   1501e:	fff8           	.short 0xfff8
   15020:	0fff           	.short 0x0fff
   15022:	fff0           	.short 0xfff0
   15024:	03ff           	.short 0x03ff
   15026:	ffe0           	.short 0xffe0
   15028:	003f           	.short 0x003f
   1502a:	ff80 0000      	cp1stl %d0,%d0,#1,#0
   1502e:	fc00 0000      	cp0nop #1
	...
   1504e:	0000 00e0      	orib #-32,%d0
   15052:	0e00           	.short 0x0e00
   15054:	01f8 3f00      	bset %d0,0x3f00
   15058:	01fc           	.short 0x01fc
   1505a:	7f00           	mvsb %d0,%d7
   1505c:	01ff           	.short 0x01ff
   1505e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   15062:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   15066:	ff80 0fff      	cp1stl %d0,%d0,#8,#511
   1506a:	ffe0           	.short 0xffe0
   1506c:	1fff           	.short 0x1fff
   1506e:	fff0           	.short 0xfff0
   15070:	1fff           	.short 0x1fff
   15072:	fff0           	.short 0xfff0
   15074:	3fff           	.short 0x3fff
   15076:	fff8           	.short 0xfff8
   15078:	3fff           	.short 0x3fff
   1507a:	fff8           	.short 0xfff8
   1507c:	3fff           	.short 0x3fff
   1507e:	fff8           	.short 0xfff8
   15080:	1fff           	.short 0x1fff
   15082:	fff0           	.short 0xfff0
   15084:	0fff           	.short 0x0fff
   15086:	ffe0           	.short 0xffe0
   15088:	03ff           	.short 0x03ff
   1508a:	ff80 003f      	cp1stl %d0,%d0,#1,#63
   1508e:	fc00 0000      	cp0nop #1
	...
   150ae:	0000 00c0      	orib #-64,%d0
   150b2:	0c00 01c0      	cmpib #-64,%d0
   150b6:	3c00           	movew %d0,%d6
   150b8:	01f0 7f00      	bset %d0,%a0@(0,%d7:l:8)
   150bc:	01f1 ff00      	bset %d0,%a1@(0,%sp:l:8)
   150c0:	01e1           	bset %d0,%a1@-
   150c2:	fe00 01c0      	cp1ldb %d0,%d0,#1,#448
   150c6:	0000 0200      	orib #0,%d0
   150ca:	0000 0c2d      	orib #45,%d0
   150ce:	b400           	cmpb %d0,%d2
   150d0:	116d b680 137f 	moveb %a5@(-18816),%a0@(4991)
   150d6:	fec0 2bff      	cp1bcbusy 0x17cd7
   150da:	ffc0           	.short 0xffc0
   150dc:	2fff           	.short 0x2fff
   150de:	ffe0           	.short 0xffe0
   150e0:	2bff           	.short 0x2bff
   150e2:	ffc0           	.short 0xffc0
   150e4:	137f           	.short 0x137f
   150e6:	fec0 116d      	cp1bcbusy 0x16255
   150ea:	b680           	cmpl %d0,%d3
   150ec:	0c2d b400 0200 	cmpib #0,%a5@(512)
   150f2:	0000 01e0      	orib #-32,%d0
   150f6:	0000 001f      	orib #31,%d0
	...
   1510e:	0000 00e0      	orib #-32,%d0
   15112:	0e00           	.short 0x0e00
   15114:	01f8 3f00      	bset %d0,0x3f00
   15118:	011c           	btst %d0,%a4@+
   1511a:	7100           	mvsb %d0,%d0
   1511c:	011f           	btst %d0,%sp@+
   1511e:	f100           	.short 0xf100
   15120:	01ff           	.short 0x01ff
   15122:	ff00 01e0      	cp1stb %d0,%d0,#1,#480
   15126:	0f00           	btst %d7,%d0
   15128:	0200 0080      	andib #-128,%d0
   1512c:	0c2d b460 116d 	cmpib #96,%a5@(4461)
   15132:	b690           	cmpl %a0@,%d3
   15134:	137f           	.short 0x137f
   15136:	fed0           	.short 0xfed0
   15138:	2bff           	.short 0x2bff
   1513a:	ffc8           	.short 0xffc8
   1513c:	2fff           	.short 0x2fff
   1513e:	ffe8           	.short 0xffe8
   15140:	2bf1           	.short 0x2bf1
   15142:	9fc8           	subal %a0,%sp
   15144:	1001           	moveb %d1,%d0
   15146:	0010 1161      	orib #97,%a0@
   1514a:	8690           	orl %a0@,%d3
   1514c:	0c2d b060 0200 	cmpib #96,%a5@(512)
   15152:	0080 01e0 0f00 	oril #31461120,%d0
   15158:	001f f000      	orib #0,%sp@+
	...
   15170:	0020 0200      	orib #0,%a0@-
   15174:	0038 0300 01fc 	orib #0,0x1fc
   1517a:	1f00           	moveb %d0,%sp@-
   1517c:	01fe           	.short 0x01fe
   1517e:	1f00           	moveb %d0,%sp@-
   15180:	00fe           	.short 0x00fe
   15182:	0f00           	btst %d7,%d0
   15184:	003f           	.short 0x003f
   15186:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1518a:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   1518e:	ffe0           	.short 0xffe0
   15190:	0fff           	.short 0x0fff
   15192:	fff0           	.short 0xfff0
   15194:	0fff           	.short 0x0fff
   15196:	fff0           	.short 0xfff0
   15198:	1fff           	.short 0x1fff
   1519a:	fff8           	.short 0xfff8
   1519c:	1fff           	.short 0x1fff
   1519e:	fff8           	.short 0xfff8
   151a0:	1fff           	.short 0x1fff
   151a2:	fff8           	.short 0xfff8
   151a4:	0fff           	.short 0x0fff
   151a6:	fff0           	.short 0xfff0
   151a8:	0fff           	.short 0x0fff
   151aa:	fff0           	.short 0xfff0
   151ac:	03ff           	.short 0x03ff
   151ae:	ffe0           	.short 0xffe0
   151b0:	01ff           	.short 0x01ff
   151b2:	ff80 001f      	cp1stl %d0,%d0,#1,#31
   151b6:	ff00 0000      	cp1stb %d0,%d0,#1,#0
   151ba:	f000           	.short 0xf000
	...
   151d0:	00e0           	.short 0x00e0
   151d2:	0e00           	.short 0x0e00
   151d4:	01f8 3f00      	bset %d0,0x3f00
   151d8:	01fc           	.short 0x01fc
   151da:	7f00           	mvsb %d0,%d7
   151dc:	01ff           	.short 0x01ff
   151de:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   151e2:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   151e6:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   151ea:	ff80 0fff      	cp1stl %d0,%d0,#8,#511
   151ee:	ffe0           	.short 0xffe0
   151f0:	1fff           	.short 0x1fff
   151f2:	fff0           	.short 0xfff0
   151f4:	1fff           	.short 0x1fff
   151f6:	fff0           	.short 0xfff0
   151f8:	3fff           	.short 0x3fff
   151fa:	fff8           	.short 0xfff8
   151fc:	3fff           	.short 0x3fff
   151fe:	fff8           	.short 0xfff8
   15200:	3fff           	.short 0x3fff
   15202:	fff8           	.short 0xfff8
   15204:	1fff           	.short 0x1fff
   15206:	fff0           	.short 0xfff0
   15208:	1fff           	.short 0x1fff
   1520a:	fff0           	.short 0xfff0
   1520c:	0fff           	.short 0x0fff
   1520e:	ffe0           	.short 0xffe0
   15210:	03ff           	.short 0x03ff
   15212:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   15216:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   1521a:	f000           	.short 0xf000
	...
   15230:	00c0           	bitrev %d0
   15232:	0c00 0170      	cmpib #112,%d0
   15236:	3700           	movew %d0,%a3@-
   15238:	01f0 7f00      	bset %d0,%a0@(0,%d7:l:8)
   1523c:	01f1 ff00      	bset %d0,%a1@(0,%sp:l:8)
   15240:	01e0           	bset %d0,%a0@-
   15242:	0e00           	.short 0x0e00
   15244:	0180           	bclr %d0,%d0
   15246:	0000 012d      	orib #45,%d0
   1524a:	b400           	cmpb %d0,%d2
   1524c:	026d b600 057f 	andiw #-18944,%a5@(1407)
   15252:	fe00 0bff      	cp1ldb %d0,%d0,#6,#511
   15256:	ff80 0bff      	cp1stl %d0,%d0,#6,#511
   1525a:	ff80 0bff      	cp1stl %d0,%d0,#6,#511
   1525e:	ff80 0bff      	cp1stl %d0,%d0,#6,#511
   15262:	ff80 0bff      	cp1stl %d0,%d0,#6,#511
   15266:	fe80 057f      	cp1ldl %d0,%d0,#3,#383
   1526a:	fe00 022d      	cp1ldb %d0,%d0,#2,#45
   1526e:	b400           	cmpb %d0,%d2
   15270:	012d b400      	btst %d0,%a5@(-19456)
   15274:	0080 0000 0070 	oril #112,%d0
   1527a:	0000 000f      	orib #15,%d0
	...
   1528e:	0000 00e0      	orib #-32,%d0
   15292:	0e00           	.short 0x0e00
   15294:	0118           	btst %d0,%a0@+
   15296:	3100           	movew %d0,%a0@-
   15298:	011c           	btst %d0,%a4@+
   1529a:	7100           	mvsb %d0,%d0
   1529c:	011f           	btst %d0,%sp@+
   1529e:	f100           	.short 0xf100
   152a0:	01f0 1f00      	bset %d0,%a0@(0,%d1:l:8)
   152a4:	0180           	bclr %d0,%d0
   152a6:	0300           	btst %d1,%d0
   152a8:	012d b500      	btst %d0,%a5@(-19200)
   152ac:	026d b680 057f 	andiw #-18816,%a5@(1407)
   152b2:	fe40 0bff      	cp1ldw %d0,%d0,#6,#511
   152b6:	ffa0 0bff      	cp1stl %d0,%a0@-,#6,#511
   152ba:	ffa0 0bff      	cp1stl %d0,%a0@-,#6,#511
   152be:	ffa0 0bf1      	cp1stl %d0,%a0@-,#6,#497
   152c2:	1fa0 0881      	moveb %a0@-,%sp@(ffffffffffffff81,%d0:l)
   152c6:	0020 0560      	orib #96,%a0@-
   152ca:	4a40           	tstw %d0
   152cc:	0224 b080      	andib #-128,%a4@-
   152d0:	012d b500      	btst %d0,%a5@(-19200)
   152d4:	0080 0600 0070 	oril #100663408,%d0
   152da:	1800           	moveb %d0,%d4
   152dc:	000f           	.short 0x000f
   152de:	e000           	asrb #8,%d0
	...
   152f0:	0020 0200      	orib #0,%a0@-
   152f4:	01f8 1f00      	bset %d0,0x1f00
   152f8:	01fc           	.short 0x01fc
   152fa:	1f00           	moveb %d0,%sp@-
   152fc:	01fe           	.short 0x01fe
   152fe:	1f00           	moveb %d0,%sp@-
   15300:	00ff           	.short 0x00ff
   15302:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   15306:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   1530a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1530e:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   15312:	ffc0           	.short 0xffc0
   15314:	07ff           	.short 0x07ff
   15316:	ffe0           	.short 0xffe0
   15318:	07ff           	.short 0x07ff
   1531a:	ffe0           	.short 0xffe0
   1531c:	07ff           	.short 0x07ff
   1531e:	ffe0           	.short 0xffe0
   15320:	07ff           	.short 0x07ff
   15322:	ffe0           	.short 0xffe0
   15324:	07ff           	.short 0x07ff
   15326:	ffe0           	.short 0xffe0
   15328:	03ff           	.short 0x03ff
   1532a:	ffc0           	.short 0xffc0
   1532c:	01ff           	.short 0x01ff
   1532e:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   15332:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   15336:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   1533a:	f800 0000      	tblub %d0,%d0,%d0
   1533e:	e000           	asrb #8,%d0
	...
   15350:	00e0           	.short 0x00e0
   15352:	0e00           	.short 0x0e00
   15354:	01f8 3f00      	bset %d0,0x3f00
   15358:	01fc           	.short 0x01fc
   1535a:	7f00           	mvsb %d0,%d7
   1535c:	01ff           	.short 0x01ff
   1535e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   15362:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   15366:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1536a:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   1536e:	ff80 07ff      	cp1stl %d0,%d0,#4,#511
   15372:	ffc0           	.short 0xffc0
   15374:	0fff           	.short 0x0fff
   15376:	ffe0           	.short 0xffe0
   15378:	0fff           	.short 0x0fff
   1537a:	ffe0           	.short 0xffe0
   1537c:	0fff           	.short 0x0fff
   1537e:	ffe0           	.short 0xffe0
   15380:	0fff           	.short 0x0fff
   15382:	ffe0           	.short 0xffe0
   15384:	0fff           	.short 0x0fff
   15386:	ffe0           	.short 0xffe0
   15388:	07ff           	.short 0x07ff
   1538a:	ffc0           	.short 0xffc0
   1538c:	03ff           	.short 0x03ff
   1538e:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   15392:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   15396:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   1539a:	f800           	.short 0xf800
   1539c:	000f           	.short 0x000f
   1539e:	e000           	asrb #8,%d0
	...
   153b0:	00e0           	.short 0x00e0
   153b2:	0e00           	.short 0x0e00
   153b4:	0170 3700      	bchg %d0,%a0@(0,%d3:w:8)
   153b8:	01f0 7f00      	bset %d0,%a0@(0,%d7:l:8)
   153bc:	01f0 1f00      	bset %d0,%a0@(0,%d1:l:8)
   153c0:	01c0           	bset %d0,%d0
   153c2:	0600 01ad      	addib #-83,%d0
   153c6:	b000           	cmpb %d0,%d0
   153c8:	012d b000      	btst %d0,%a5@(-20480)
   153cc:	027f           	.short 0x027f
   153ce:	fe00 04ff      	cp1ldb %d0,%d0,#3,#255
   153d2:	ff00 05ff      	cp1stb %d0,%d0,#3,#511
   153d6:	ff00 05ff      	cp1stb %d0,%d0,#3,#511
   153da:	ff00 05ff      	cp1stb %d0,%d0,#3,#511
   153de:	ff00 05ff      	cp1stb %d0,%d0,#3,#511
   153e2:	ff00 05ff      	cp1stb %d0,%d0,#3,#511
   153e6:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   153ea:	fe00 027f      	cp1ldb %d0,%d0,#2,#127
   153ee:	fc00 012d      	cp0ldb %d0,%d0,#1,#301
   153f2:	b400           	cmpb %d0,%d2
   153f4:	00ad b400 0040 	oril #-1275068352,%a5@(0)
   153fa:	0000
   153fc:	0030 0000 000f 	orib #0,%a0@(f,%d0:w)
	...
   15412:	0000 0018      	orib #24,%d0
   15416:	3000           	movew %d0,%d0
   15418:	001c 7000      	orib #0,%a4@+
   1541c:	0010 1000      	orib #0,%a0@
   15420:	01c0           	bset %d0,%d0
   15422:	0700           	btst %d3,%d0
   15424:	01ad b300      	bclr %d0,%a5@(-19712)
   15428:	012d b100      	btst %d0,%a5@(-20224)
   1542c:	027f           	.short 0x027f
   1542e:	fe80 04ff      	cp1ldl %d0,%d0,#3,#255
   15432:	ff80 05ff      	cp1stl %d0,%d0,#3,#511
   15436:	ff40 05ff      	cp1stw %d0,%d0,#3,#511
   1543a:	ff40 05ff      	cp1stw %d0,%d0,#3,#511
   1543e:	ff40 05f1      	cp1stw %d0,%d0,#3,#497
   15442:	1f40 0481      	moveb %d0,%sp@(1153)
   15446:	0140           	bchg %d0,%d0
   15448:	0082 0680 0269 	oril #109052521,%d2
   1544e:	1880           	moveb %d0,%a4@
   15450:	012c 0500      	btst %d0,%a4@(1280)
   15454:	00ad b600 0040 	oril #-1241513920,%a5@(1024)
   1545a:	0400
   1545c:	0030 1800 000f 	orib #0,%a0@(f,%d0:w)
   15462:	e000           	asrb #8,%d0
	...
   15470:	00e0           	.short 0x00e0
   15472:	0e00           	.short 0x0e00
   15474:	01f8 1f00      	bset %d0,0x1f00
   15478:	01fc           	.short 0x01fc
   1547a:	1f00           	moveb %d0,%sp@-
   1547c:	01ff           	.short 0x01ff
   1547e:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   15482:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   15486:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   1548a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1548e:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   15492:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   15496:	ffc0           	.short 0xffc0
   15498:	03ff           	.short 0x03ff
   1549a:	ffc0           	.short 0xffc0
   1549c:	03ff           	.short 0x03ff
   1549e:	ffc0           	.short 0xffc0
   154a0:	03ff           	.short 0x03ff
   154a2:	ffc0           	.short 0xffc0
   154a4:	03ff           	.short 0x03ff
   154a6:	ffc0           	.short 0xffc0
   154a8:	03ff           	.short 0x03ff
   154aa:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   154ae:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   154b2:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   154b6:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   154ba:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   154be:	f800 0000      	tblub %d0,%d0,%d0
   154c2:	e000           	asrb #8,%d0
	...
   154d0:	00e0           	.short 0x00e0
   154d2:	0e00           	.short 0x0e00
   154d4:	01f8 3f00      	bset %d0,0x3f00
   154d8:	01fc           	.short 0x01fc
   154da:	7f00           	mvsb %d0,%d7
   154dc:	01ff           	.short 0x01ff
   154de:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   154e2:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   154e6:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   154ea:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   154ee:	ff80 07ff      	cp1stl %d0,%d0,#4,#511
   154f2:	ff80 07ff      	cp1stl %d0,%d0,#4,#511
   154f6:	ffc0           	.short 0xffc0
   154f8:	07ff           	.short 0x07ff
   154fa:	ffc0           	.short 0xffc0
   154fc:	07ff           	.short 0x07ff
   154fe:	ffc0           	.short 0xffc0
   15500:	07ff           	.short 0x07ff
   15502:	ffc0           	.short 0xffc0
   15504:	07ff           	.short 0x07ff
   15506:	ffc0           	.short 0xffc0
   15508:	03ff           	.short 0x03ff
   1550a:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   1550e:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   15512:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   15516:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   1551a:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   1551e:	f800           	.short 0xf800
   15520:	000f           	.short 0x000f
   15522:	e000           	asrb #8,%d0
	...
   15530:	00e0           	.short 0x00e0
   15532:	0e00           	.short 0x0e00
   15534:	0170 3700      	bchg %d0,%a0@(0,%d3:w:8)
   15538:	01e0           	bset %d0,%a0@-
   1553a:	0700           	btst %d3,%d0
   1553c:	018d b300      	movepw %d0,%a5@(-19712)
   15540:	018d b200      	movepw %d0,%a5@(-19968)
   15544:	01bf           	.short 0x01bf
   15546:	f800           	.short 0xf800
   15548:	017f           	.short 0x017f
   1554a:	fc00 027f      	cp0ldb %d0,%d0,#2,#127
   1554e:	fc00 02ff      	cp0ldb %d0,%d0,#2,#255
   15552:	fe00 02ff      	cp1ldb %d0,%d0,#2,#255
   15556:	fe00 02ff      	cp1ldb %d0,%d0,#2,#255
   1555a:	fe00 02ff      	cp1ldb %d0,%d0,#2,#255
   1555e:	fe00 02ff      	cp1ldb %d0,%d0,#2,#255
   15562:	fe00 02ff      	cp1ldb %d0,%d0,#2,#255
   15566:	fe00 02ff      	cp1ldb %d0,%d0,#2,#255
   1556a:	fe00 037f      	cp1ldb %d0,%d0,#2,#383
   1556e:	fc00 013f      	cp0ldb %d0,%d0,#1,#319
   15572:	fc00 00bf      	cp0ldb %d0,%d0,#1,#191
   15576:	fc00 002d      	cp0ldb %d0,%d0,#1,#45
   1557a:	b000           	cmpb %d0,%d0
   1557c:	000d           	.short 0x000d
   1557e:	b000           	cmpb %d0,%d0
	...
   15594:	0018 3000      	orib #0,%a0@+
   15598:	0000 0800      	orib #0,%d0
   1559c:	004d           	.short 0x004d
   1559e:	b400           	cmpb %d0,%d2
   155a0:	018d b300      	movepw %d0,%a5@(-19712)
   155a4:	01bf           	.short 0x01bf
   155a6:	fb00           	.short 0xfb00
   155a8:	017f           	.short 0x017f
   155aa:	fd00 037f      	cp0stb %d0,%d0,#2,#383
   155ae:	fd80 02ff      	cp0stl %d0,%d0,#2,#255
   155b2:	fe80 02ff      	cp1ldl %d0,%d0,#2,#255
   155b6:	fe80 02ff      	cp1ldl %d0,%d0,#2,#255
   155ba:	fe80 02ff      	cp1ldl %d0,%d0,#2,#255
   155be:	fe80 02f1      	cp1ldl %d0,%d0,#2,#241
   155c2:	1e80           	moveb %d0,%sp@
   155c4:	0281 0080 02c2 	andil #8389314,%d1
   155ca:	0680 0361 1980 	addil #56695168,%d0
   155d0:	0121           	btst %d0,%a1@-
   155d2:	0500           	btst %d2,%d0
   155d4:	00b9 4600 0029 	oril #1174405161,0x2000000d
   155da:	2000 000d
   155de:	b000           	cmpb %d0,%d0
	...
   155f0:	00e0           	.short 0x00e0
   155f2:	0e00           	.short 0x0e00
   155f4:	01ff           	.short 0x01ff
   155f6:	df00           	addxb %d0,%d7
   155f8:	01ff           	.short 0x01ff
   155fa:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   155fe:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   15602:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   15606:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   1560a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1560e:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   15612:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   15616:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   1561a:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   1561e:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   15622:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   15626:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   1562a:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   1562e:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   15632:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   15636:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   1563a:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   1563e:	f800           	.short 0xf800
   15640:	001f f000      	orib #0,%sp@+
   15644:	0007 c000      	orib #0,%d7
	...
   15650:	00e0           	.short 0x00e0
   15652:	0e00           	.short 0x0e00
   15654:	01ff           	.short 0x01ff
   15656:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1565a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1565e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   15662:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   15666:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   1566a:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   1566e:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   15672:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   15676:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   1567a:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   1567e:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   15682:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   15686:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   1568a:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   1568e:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   15692:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   15696:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   1569a:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   1569e:	f800           	.short 0xf800
   156a0:	001f f000      	orib #0,%sp@+
   156a4:	0007 c000      	orib #0,%d7
	...
   156b0:	0040 0000      	oriw #0,%d0
   156b4:	00e0           	.short 0x00e0
   156b6:	0000 01f0      	orib #-16,%d0
   156ba:	0000 01bf      	orib #-65,%d0
   156be:	8000           	orb %d0,%d0
   156c0:	018f c000      	movepw %d0,%sp@(-16384)
   156c4:	0185           	bclr %d0,%d5
   156c6:	e000           	asrb #8,%d0
   156c8:	0380           	bclr %d1,%d0
   156ca:	7000           	moveq #0,%d0
   156cc:	3f80 3800      	movew %d0,%sp@(0,%d3:l)
   156d0:	7f00           	mvsb %d0,%d7
   156d2:	1e00           	moveb %d0,%d7
   156d4:	700e           	moveq #14,%d0
   156d6:	0f00           	btst %d7,%d0
   156d8:	381e           	movew %fp@+,%d4
   156da:	0780           	bclr %d3,%d0
   156dc:	1c3f           	.short 0x1c3f
   156de:	0180           	bclr %d0,%d0
   156e0:	1e3f           	.short 0x1e3f
   156e2:	83c0           	divsw %d0,%d1
   156e4:	0e01           	.short 0x0e01
   156e6:	81e0           	divsw %a0@-,%d0
   156e8:	0e00           	.short 0x0e00
   156ea:	00f0           	.short 0x00f0
   156ec:	0c40 00f0      	cmpiw #240,%d0
   156f0:	1cfc 1fe0      	moveb #-32,%fp@+
   156f4:	18fe           	.short 0x18fe
   156f6:	3fc0           	.short 0x3fc0
   156f8:	1b87 b800      	moveb %d7,%a5@(0,%a3:l)
   156fc:	1f03           	moveb %d3,%sp@-
   156fe:	f000 0e00      	pmove %tt1,%d0
   15702:	e000           	asrb #8,%d0
	...
   15714:	0040 0000      	oriw #0,%d0
   15718:	00e0           	.short 0x00e0
   1571a:	0000 00b0      	orib #-80,%d0
   1571e:	0000 008f      	orib #-113,%d0
   15722:	8000           	orb %d0,%d0
   15724:	0085 c000 00b0 	oril #-1073741648,%d5
   1572a:	6000 01b8      	braw 0x158e4
   1572e:	2000           	movel %d0,%d0
   15730:	3f1f           	movew %sp@+,%sp@-
   15732:	1800           	moveb %d0,%d4
   15734:	303f           	.short 0x303f
   15736:	0e00           	.short 0x0e00
   15738:	19ff           	.short 0x19ff
   1573a:	e700           	aslb #3,%d0
   1573c:	0cff           	.short 0x0cff
   1573e:	c100           	abcd %d0,%d0
   15740:	0e7f           	.short 0x0e7f
   15742:	f380           	.short 0xf380
   15744:	06ff           	.short 0x06ff
   15746:	f9c0           	.short 0xf9c0
   15748:	0603 cce0      	addib #-32,%d3
   1574c:	0440 80e0      	subiw #-32544,%d0
   15750:	0cfc           	.short 0x0cfc
   15752:	1fc0           	.short 0x1fc0
   15754:	0886 3000      	bclr #0,%d6
   15758:	0b03           	btst %d5,%d3
   1575a:	b000           	cmpb %d0,%d0
   1575c:	0e00           	.short 0x0e00
   1575e:	e000           	asrb #8,%d0
	...
   15770:	0040 0000      	oriw #0,%d0
   15774:	00a0 0000 0110 	oril #272,%a0@-
   1577a:	0000 014f      	orib #79,%d0
   1577e:	8000           	orb %d0,%d0
   15780:	0170 4000      	bchg %d0,%a0@(0,%d4:w)
   15784:	017a           	.short 0x017a
   15786:	2000           	movel %d0,%d0
   15788:	037f           	.short 0x037f
   1578a:	9000           	subb %d0,%d0
   1578c:	3e7f           	.short 0x3e7f
   1578e:	d800           	addb %d0,%d4
   15790:	40ff           	.short 0x40ff
   15792:	e600           	asrb #3,%d0
   15794:	4fff           	.short 0x4fff
   15796:	f100           	.short 0xf100
   15798:	27ff           	.short 0x27ff
   1579a:	f880           	.short 0xf880
   1579c:	13ff           	.short 0x13ff
   1579e:	fe80 11ff      	cp1ldl %d0,%d1,#1,#511
   157a2:	fc40 09ff      	cp0ldw %d0,%d0,#5,#511
   157a6:	fe20 09ff      	cp1ldb %a0@-,%d0,#5,#511
   157aa:	ff10 0bbf      	cp1stb %d0,%a0@,#6,#447
   157ae:	ff10 1303      	cp1stb %d1,%a0@,#2,#259
   157b2:	e020           	asrb %d0,%d0
   157b4:	1779 cfc0 1484 	moveb 0xcfc01484,%a3@(18432)
   157ba:	4800
   157bc:	1103           	moveb %d3,%a0@-
   157be:	1000           	moveb %d0,%d0
   157c0:	0e00           	.short 0x0e00
   157c2:	e000           	asrb #8,%d0
	...
   157d0:	0040 0000      	oriw #0,%d0
   157d4:	00e0           	.short 0x00e0
   157d6:	0000 01f0      	orib #-16,%d0
   157da:	0000 01ff      	orib #-1,%d0
   157de:	8000           	orb %d0,%d0
   157e0:	01ff           	.short 0x01ff
   157e2:	c000           	andb %d0,%d0
   157e4:	01ff           	.short 0x01ff
   157e6:	e000           	asrb #8,%d0
   157e8:	03ff           	.short 0x03ff
   157ea:	f000           	.short 0xf000
   157ec:	3fff           	.short 0x3fff
   157ee:	f800           	.short 0xf800
   157f0:	7fff           	.short 0x7fff
   157f2:	fe00 7fff      	cp1ldb %d0,%d7,#8,#511
   157f6:	ff00 3fff      	cp1stb %d3,%d0,#8,#511
   157fa:	ff80 1fff      	cp1stl %d1,%d0,#8,#511
   157fe:	ff80 1fff      	cp1stl %d1,%d0,#8,#511
   15802:	ffc0           	.short 0xffc0
   15804:	0fff           	.short 0x0fff
   15806:	ffe0           	.short 0xffe0
   15808:	0fff           	.short 0x0fff
   1580a:	fff0           	.short 0xfff0
   1580c:	0fff           	.short 0x0fff
   1580e:	fff0           	.short 0xfff0
   15810:	1fff           	.short 0x1fff
   15812:	ffe0           	.short 0xffe0
   15814:	1fff           	.short 0x1fff
   15816:	ffc0           	.short 0xffc0
   15818:	1f87 f800      	moveb %d7,%sp@(0,%sp:l)
   1581c:	1f03           	moveb %d3,%sp@-
   1581e:	f000 0e00      	pmove %tt1,%d0
   15822:	e000           	asrb #8,%d0
	...
   15834:	00e0           	.short 0x00e0
   15836:	0000 01f0      	orib #-16,%d0
   1583a:	0000 01ff      	orib #-1,%d0
   1583e:	8000           	orb %d0,%d0
   15840:	01bf           	.short 0x01bf
   15842:	c000           	andb %d0,%d0
   15844:	0198           	bclr %d0,%a0@+
   15846:	e000           	asrb #8,%d0
   15848:	01c0           	bset %d0,%d0
   1584a:	7c00           	moveq #0,%d6
   1584c:	0780           	bclr %d3,%d0
   1584e:	3f00           	movew %d0,%sp@-
   15850:	1f80 0780      	moveb %d0,@(0,%d0:w:8)
   15854:	3e0e           	movew %fp,%d7
   15856:	03c0           	bset %d1,%d0
   15858:	700f           	moveq #15,%d0
   1585a:	03c0           	bset %d1,%d0
   1585c:	383f           	.short 0x383f
   1585e:	c3c0           	mulsw %d0,%d1
   15860:	1c3f           	.short 0x1c3f
   15862:	e1c0           	.short 0xe1c0
   15864:	0e00           	.short 0x0e00
   15866:	c0e0           	muluw %a0@-,%d0
   15868:	0e00           	.short 0x0e00
   1586a:	0070 0c00 0030 	oriw #3072,%a0@(30,%d0:w)
   15870:	1c7c 0ff0      	moveb #-16,%fp
   15874:	18ff           	.short 0x18ff
   15876:	1fe0           	.short 0x1fe0
   15878:	39ff           	.short 0x39ff
   1587a:	98c0           	subaw %d0,%a4
   1587c:	3f03           	movew %d3,%sp@-
   1587e:	f000           	.short 0xf000
   15880:	1e01           	moveb %d1,%d7
   15882:	f000 0c00      	pmove %d0,%tt1
   15886:	e000           	asrb #8,%d0
	...
   15898:	00e0           	.short 0x00e0
   1589a:	0000 00f0      	orib #-16,%d0
   1589e:	0000 00bf      	orib #-65,%d0
   158a2:	8000           	orb %d0,%d0
   158a4:	0098 c000 00c0 	oril #-1073741632,%a0@+
   158aa:	6000 0193      	braw 0x15a3f
   158ae:	3c00           	movew %d0,%d6
   158b0:	079f           	bclr %d3,%sp@+
   158b2:	0700           	btst %d3,%d0
   158b4:	1e1f           	moveb %sp@+,%d7
   158b6:	8380 307f      	unpk %d0,%d1,#12415
   158ba:	f380           	.short 0xf380
   158bc:	19ff           	.short 0x19ff
   158be:	f380           	.short 0xf380
   158c0:	0dff           	.short 0x0dff
   158c2:	f180           	.short 0xf180
   158c4:	067f           	.short 0x067f
   158c6:	fcc0 06e1      	cp0bcbusy 0x15fa9
   158ca:	e060           	asrw %d0,%d0
   158cc:	0500           	btst %d2,%d0
   158ce:	c020           	andb %a0@-,%d0
   158d0:	0c7c 4fe0      	cmpiw #20448,%d4
   158d4:	08ff           	.short 0x08ff
   158d6:	18c0           	moveb %d0,%a4@+
   158d8:	1903           	moveb %d3,%a4@-
   158da:	9000           	subb %d0,%d0
   158dc:	1e00           	moveb %d0,%d7
   158de:	e000           	asrb #8,%d0
   158e0:	0c00 e000      	cmpib #0,%d0
	...
   158f4:	00e0           	.short 0x00e0
   158f6:	0000 0110      	orib #16,%d0
   158fa:	0000 010f      	orib #15,%d0
   158fe:	8000           	orb %d0,%d0
   15900:	0140           	bchg %d0,%d0
   15902:	4000           	negxb %d0
   15904:	0167           	bchg %d0,%sp@-
   15906:	2000           	movel %d0,%d0
   15908:	013f           	.short 0x013f
   1590a:	9c00           	subb %d0,%d6
   1590c:	067f           	.short 0x067f
   1590e:	c300           	abcd %d0,%d1
   15910:	187f           	.short 0x187f
   15912:	f880           	.short 0xf880
   15914:	21ff           	.short 0x21ff
   15916:	fc40 4fff      	cp0ldw %d0,%d4,#8,#511
   1591a:	fc40 27ff      	cp0ldw %d0,%d2,#4,#511
   1591e:	fc40 13ff      	cp0ldw %d0,%d1,#2,#511
   15922:	fe40 09ff      	cp1ldw %d0,%d0,#5,#511
   15926:	ff20 09ff      	cp1stb %d0,%a0@-,#5,#511
   1592a:	ff90 0bff      	cp1stl %d0,%a0@,#6,#511
   1592e:	ffd0           	.short 0xffd0
   15930:	1383 f010      	moveb %d3,%a1@(10,%sp:w)
   15934:	1700           	moveb %d0,%a3@-
   15936:	e720           	aslb %d3,%d0
   15938:	26fc 68c0 2103 	movel #1757421827,%a3@+
   1593e:	1000           	moveb %d0,%d0
   15940:	1201           	moveb %d1,%d1
   15942:	1000           	moveb %d0,%d0
   15944:	0c00 e000      	cmpib #0,%d0
	...
   15954:	00e0           	.short 0x00e0
   15956:	0000 01f0      	orib #-16,%d0
   1595a:	0000 01ff      	orib #-1,%d0
   1595e:	8000           	orb %d0,%d0
   15960:	01ff           	.short 0x01ff
   15962:	c000           	andb %d0,%d0
   15964:	01ff           	.short 0x01ff
   15966:	e000           	asrb #8,%d0
   15968:	01ff           	.short 0x01ff
   1596a:	fc00 07ff      	cp0ldb %d0,%d0,#4,#511
   1596e:	ff00 1fff      	cp1stb %d1,%d0,#8,#511
   15972:	ff80 3fff      	cp1stl %d3,%d0,#8,#511
   15976:	ffc0           	.short 0xffc0
   15978:	7fff           	.short 0x7fff
   1597a:	ffc0           	.short 0xffc0
   1597c:	3fff           	.short 0x3fff
   1597e:	ffc0           	.short 0xffc0
   15980:	1fff           	.short 0x1fff
   15982:	ffc0           	.short 0xffc0
   15984:	0fff           	.short 0x0fff
   15986:	ffe0           	.short 0xffe0
   15988:	0fff           	.short 0x0fff
   1598a:	fff0           	.short 0xfff0
   1598c:	0fff           	.short 0x0fff
   1598e:	fff0           	.short 0xfff0
   15990:	1fff           	.short 0x1fff
   15992:	fff0           	.short 0xfff0
   15994:	1fff           	.short 0x1fff
   15996:	ffe0           	.short 0xffe0
   15998:	3fff           	.short 0x3fff
   1599a:	f8c0           	.short 0xf8c0
   1599c:	3f03           	movew %d3,%sp@-
   1599e:	f000           	.short 0xf000
   159a0:	1e01           	moveb %d1,%d7
   159a2:	f000 0c00      	pmove %d0,%tt1
   159a6:	e000           	asrb #8,%d0
	...
   159b4:	0060 0000      	oriw #0,%a0@-
   159b8:	00f0 0000 01ff 	cmp2b @(ffffffff8000019f)@(ffffffffc000018f),%d0
   159be:	8000 019f c000
   159c4:	018f
   159c6:	e000           	asrb #8,%d0
   159c8:	01c0           	bset %d0,%d0
   159ca:	ff00 07c0      	cp1stb %d0,%d0,#4,#448
   159ce:	ff80 1f80      	cp1stl %d1,%d0,#8,#384
   159d2:	1fc0           	.short 0x1fc0
   159d4:	3f0c           	movew %a4,%sp@-
   159d6:	01c0           	bset %d0,%d0
   159d8:	3c1e           	movew %fp@+,%d6
   159da:	01c0           	bset %d0,%d0
   159dc:	183f           	.short 0x183f
   159de:	61c0           	bsrs 0x159a0
   159e0:	1c3f           	.short 0x1c3f
   159e2:	f1c0           	.short 0xf1c0
   159e4:	0e03           	.short 0x0e03
   159e6:	c0e0           	muluw %a0@-,%d0
   159e8:	0c00 8030      	cmpib #48,%d0
   159ec:	0c00 07b0      	cmpib #-80,%d0
   159f0:	1cf0 0ff8 19fa 	moveb @(19fa1ff8),%fp@+
   159f6:	1ff8
   159f8:	3bff           	.short 0x3bff
   159fa:	3878 3f0f      	moveaw 0x3f0f,%a4
   159fe:	f030           	.short 0xf030
   15a00:	3e01           	movew %d1,%d7
   15a02:	f000           	.short 0xf000
   15a04:	1c00           	moveb %d0,%d6
   15a06:	e000           	asrb #8,%d0
   15a08:	0000 4000      	orib #0,%d0
	...
   15a18:	0060 0000      	oriw #0,%a0@-
   15a1c:	00f0 0000 009f 	cmp2b %a0@(ffffffffffffff9f,%d0:w),%d0
   15a22:	8000           	orb %d0,%d0
   15a24:	008f c000 00c0 	oril #-1073741632,%d7
   15a2a:	e000           	asrb #8,%d0
   15a2c:	01d0           	bset %d0,%a0@
   15a2e:	ff00 079e      	cp1stb %d0,%d0,#4,#414
   15a32:	1f80 1f3f 0180 	moveb %d0,%sp@(1801c7f)@(fffffffff18008ff,%d1:l:8)
   15a38:	1c7f f180 08ff
   15a3e:	f980           	.short 0xf980
   15a40:	0c7f f980      	cmpiw #-1664,%d7
   15a44:	06ff           	.short 0x06ff
   15a46:	fcc0 04c7      	cp0bcbusy 0x15f0f
   15a4a:	e020           	asrb %d0,%d0
   15a4c:	0401 c7a0      	subib #-96,%d1
   15a50:	0cf0           	.short 0x0cf0
   15a52:	8ff0 09fa 1870 	divsw @(18701b0f)@(3030),%d7
   15a58:	1b0f 3030
   15a5c:	1e01           	moveb %d1,%d7
   15a5e:	e000           	asrb #8,%d0
   15a60:	1c00           	moveb %d0,%d6
   15a62:	e000           	asrb #8,%d0
   15a64:	0000 4000      	orib #0,%d0
	...
   15a74:	0060 0000      	oriw #0,%a0@-
   15a78:	0090 0000 010f 	oril #271,%a0@
   15a7e:	8000           	orb %d0,%d0
   15a80:	0160           	bchg %d0,%a0@-
   15a82:	4000           	negxb %d0
   15a84:	0170 2000      	bchg %d0,%a0@(0,%d2:w)
   15a88:	013f           	.short 0x013f
   15a8a:	1f00           	moveb %d0,%sp@-
   15a8c:	063f           	.short 0x063f
   15a8e:	0080 187f e040 	oril #411033664,%d0
   15a94:	20ff           	.short 0x20ff
   15a96:	fe40 23ff      	cp1ldw %d0,%d2,#2,#511
   15a9a:	fe40 17ff      	cp1ldw %d0,%d1,#4,#511
   15a9e:	fe40 13ff      	cp1ldw %d0,%d1,#2,#511
   15aa2:	fe40 09ff      	cp1ldw %d0,%d0,#5,#511
   15aa6:	ff20 0bff      	cp1stb %d0,%a0@-,#6,#511
   15aaa:	ffd0           	.short 0xffd0
   15aac:	0bff           	.short 0x0bff
   15aae:	f850           	.short 0xf850
   15ab0:	130f           	.short 0x130f
   15ab2:	f008           	.short 0xf008
   15ab4:	1605           	moveb %d5,%d3
   15ab6:	e788           	lsll #3,%d0
   15ab8:	24f0 c848      	movel %a0@(48,%a4:l),%a2@+
   15abc:	210e           	movel %fp,%a0@-
   15abe:	1030 2201      	moveb %a0@(1,%d2:w:2),%d0
   15ac2:	1000           	moveb %d0,%d0
   15ac4:	1c00           	moveb %d0,%d6
   15ac6:	a000 0000      	macw %d0l,%d0l
   15aca:	4000           	negxb %d0
	...
   15ad4:	0060 0000      	oriw #0,%a0@-
   15ad8:	00f0 0000 01ff 	cmp2b @(ffffffff800001ff)@(ffffffffc00001ff),%d0
   15ade:	8000 01ff c000
   15ae4:	01ff
   15ae6:	e000           	asrb #8,%d0
   15ae8:	01ff           	.short 0x01ff
   15aea:	ff00 07ff      	cp1stb %d0,%d0,#4,#511
   15aee:	ff80 1fff      	cp1stl %d1,%d0,#8,#511
   15af2:	ffc0           	.short 0xffc0
   15af4:	3fff           	.short 0x3fff
   15af6:	ffc0           	.short 0xffc0
   15af8:	3fff           	.short 0x3fff
   15afa:	ffc0           	.short 0xffc0
   15afc:	1fff           	.short 0x1fff
   15afe:	ffc0           	.short 0xffc0
   15b00:	1fff           	.short 0x1fff
   15b02:	ffc0           	.short 0xffc0
   15b04:	0fff           	.short 0x0fff
   15b06:	ffe0           	.short 0xffe0
   15b08:	0fff           	.short 0x0fff
   15b0a:	fff0           	.short 0xfff0
   15b0c:	0fff           	.short 0x0fff
   15b0e:	fff0           	.short 0xfff0
   15b10:	1fff           	.short 0x1fff
   15b12:	fff8           	.short 0xfff8
   15b14:	1fff           	.short 0x1fff
   15b16:	fff8           	.short 0xfff8
   15b18:	3fff           	.short 0x3fff
   15b1a:	f878           	.short 0xf878
   15b1c:	3f0f           	movew %sp,%sp@-
   15b1e:	f030           	.short 0xf030
   15b20:	3e01           	movew %d1,%d7
   15b22:	f000           	.short 0xf000
   15b24:	1c00           	moveb %d0,%d6
   15b26:	e000           	asrb #8,%d0
   15b28:	0000 4000      	orib #0,%d0
	...
   15b38:	0070 0000 00ff 	oriw #0,%a0@(ffffffffffffffff,%d0:w)
   15b3e:	8000           	orb %d0,%d0
   15b40:	0fff           	.short 0x0fff
   15b42:	c000           	andb %d0,%d0
   15b44:	1fe3           	.short 0x1fe3
   15b46:	e1c0           	.short 0xe1c0
   15b48:	3b00           	movew %d0,%a5@-
   15b4a:	ffe0           	.short 0xffe0
   15b4c:	3800           	movew %d0,%d4
   15b4e:	7fe0           	mvzw %a0@-,%d7
   15b50:	1800           	moveb %d0,%d4
   15b52:	7dc0           	mvzw %d0,%d6
   15b54:	1838 21c0      	moveb 0x21c0,%d4
   15b58:	187c 01c0      	moveb #-64,%a4
   15b5c:	1c3e           	.short 0x1c3e
   15b5e:	01c0           	bset %d0,%d0
   15b60:	1c3f           	.short 0x1c3f
   15b62:	11c0 0e1f      	moveb %d0,0xe1f
   15b66:	c0e0           	muluw %a0@-,%d0
   15b68:	0e00           	.short 0x0e00
   15b6a:	4030 0e00      	negxb %a0@(0,%d0:l:8)
   15b6e:	0718           	btst %d3,%a0@+
   15b70:	1e00           	moveb %d0,%d7
   15b72:	0fd8           	bset %d7,%a0@+
   15b74:	1cfe           	.short 0x1cfe
   15b76:	1ffc           	.short 0x1ffc
   15b78:	3fff           	.short 0x3fff
   15b7a:	b87c 7fe3      	cmpw #32739,%d4
   15b7e:	b07c 7c01      	cmpw #31745,%d0
   15b82:	f03c           	.short 0xf03c
   15b84:	3800           	movew %d0,%d4
   15b86:	f000           	.short 0xf000
   15b88:	0000 e000      	orib #0,%d0
   15b8c:	0000 4000      	orib #0,%d0
	...
   15b9c:	0070 0000 00ff 	oriw #0,%a0@(ffffffffffffffff,%d0:w)
   15ba2:	8000           	orb %d0,%d0
   15ba4:	0fe3           	bset %d7,%a3@-
   15ba6:	c000           	andb %d0,%d0
   15ba8:	1b00           	moveb %d0,%a5@-
   15baa:	e1c0           	.short 0xe1c0
   15bac:	1808           	.short 0x1808
   15bae:	7fc0           	mvzw %d0,%d7
   15bb0:	0afe           	.short 0x0afe
   15bb2:	7d80           	mvzb %d0,%d6
   15bb4:	0bff           	.short 0x0bff
   15bb6:	2180 09ff 0580 	movel %d0,@(5800cff)@(ffffffffbd800cff)
   15bbc:	0cff bd80 0cff
   15bc2:	f980           	.short 0xf980
   15bc4:	067f           	.short 0x067f
   15bc6:	fcc0 067f      	cp0bcbusy 0x16247
   15bca:	e020           	asrb %d0,%d0
   15bcc:	0680 e710 0e00 	addil #-418378240,%d0
   15bd2:	4fd0           	lea %a0@,%sp
   15bd4:	0cfe           	.short 0x0cfe
   15bd6:	1878           	.short 0x1878
   15bd8:	1fe3           	.short 0x1fe3
   15bda:	b038 3c01      	cmpb 0x3c01,%d0
   15bde:	a038           	.short 0xa038
   15be0:	3800           	movew %d0,%d4
   15be2:	e000           	asrb #8,%d0
   15be4:	0000 6000      	orib #0,%d0
   15be8:	0000 4000      	orib #0,%d0
	...
   15bf8:	0070 0000 008f 	oriw #0,%a0@(ffffffffffffff8f,%d0:w)
   15bfe:	8000           	orb %d0,%d0
   15c00:	0f00           	btst %d7,%d0
   15c02:	4000           	negxb %d0
   15c04:	101c           	moveb %a4@+,%d0
   15c06:	21c0 24ff      	movel %d0,0x24ff
   15c0a:	1e20           	moveb %a0@-,%d7
   15c0c:	27ff           	.short 0x27ff
   15c0e:	8020           	orb %a0@-,%d0
   15c10:	17ff           	.short 0x17ff
   15c12:	8240           	orw %d0,%d1
   15c14:	17ff           	.short 0x17ff
   15c16:	de40           	addw %d0,%d7
   15c18:	17ff           	.short 0x17ff
   15c1a:	fe40 13ff      	cp1ldw %d0,%d1,#2,#511
   15c1e:	fe40 13ff      	cp1ldw %d0,%d1,#2,#511
   15c22:	fe40 09ff      	cp1ldw %d0,%d0,#5,#511
   15c26:	ff20 09ff      	cp1stb %d0,%a0@-,#5,#511
   15c2a:	ffd0           	.short 0xffd0
   15c2c:	09ff           	.short 0x09ff
   15c2e:	f8e8           	.short 0xf8e8
   15c30:	11ff           	.short 0x11ff
   15c32:	f028           	.short 0xf028
   15c34:	1301           	moveb %d1,%a1@-
   15c36:	e784           	asll #3,%d4
   15c38:	201c           	movel %a4@+,%d0
   15c3a:	4844           	swap %d4
   15c3c:	43e2           	.short 0x43e2
   15c3e:	5044           	addqw #8,%d4
   15c40:	4401           	negb %d1
   15c42:	103c 3800      	moveb #0,%d0
   15c46:	9000           	subb %d0,%d0
   15c48:	0000 a000      	orib #0,%d0
   15c4c:	0000 4000      	orib #0,%d0
	...
   15c58:	0070 0000 00ff 	oriw #0,%a0@(ffffffffffffffff,%d0:w)
   15c5e:	8000           	orb %d0,%d0
   15c60:	0fff           	.short 0x0fff
   15c62:	c000           	andb %d0,%d0
   15c64:	1fff           	.short 0x1fff
   15c66:	e1c0           	.short 0xe1c0
   15c68:	3fff           	.short 0x3fff
   15c6a:	ffe0           	.short 0xffe0
   15c6c:	3fff           	.short 0x3fff
   15c6e:	ffe0           	.short 0xffe0
   15c70:	1fff           	.short 0x1fff
   15c72:	ffc0           	.short 0xffc0
   15c74:	1fff           	.short 0x1fff
   15c76:	ffc0           	.short 0xffc0
   15c78:	1fff           	.short 0x1fff
   15c7a:	ffc0           	.short 0xffc0
   15c7c:	1fff           	.short 0x1fff
   15c7e:	ffc0           	.short 0xffc0
   15c80:	1fff           	.short 0x1fff
   15c82:	ffc0           	.short 0xffc0
   15c84:	0fff           	.short 0x0fff
   15c86:	ffe0           	.short 0xffe0
   15c88:	0fff           	.short 0x0fff
   15c8a:	fff0           	.short 0xfff0
   15c8c:	0fff           	.short 0x0fff
   15c8e:	fff8           	.short 0xfff8
   15c90:	1fff           	.short 0x1fff
   15c92:	fff8           	.short 0xfff8
   15c94:	1fff           	.short 0x1fff
   15c96:	fffc           	.short 0xfffc
   15c98:	3fff           	.short 0x3fff
   15c9a:	f87c           	.short 0xf87c
   15c9c:	7fe3           	mvzw %a3@-,%d7
   15c9e:	f07c           	.short 0xf07c
   15ca0:	7c01           	moveq #1,%d6
   15ca2:	f03c           	.short 0xf03c
   15ca4:	3800           	movew %d0,%d4
   15ca6:	f000           	.short 0xf000
   15ca8:	0000 e000      	orib #0,%d0
   15cac:	0000 4000      	orib #0,%d0
	...
   15cb8:	1e00           	moveb %d0,%d7
   15cba:	0020 3ff8      	orib #-8,%a0@-
   15cbe:	00f0           	.short 0x00f0
   15cc0:	33fe           	.short 0x33fe
   15cc2:	c1f0 31ff e1f0 	mulsw @(ffffffffe1f0301f)@(fffffffffff03803),%d0
   15cc8:	301f fff0 3803
   15cce:	7e60           	moveq #96,%d7
   15cd0:	1e00           	moveb %d0,%d7
   15cd2:	1ee0           	moveb %a0@-,%sp@+
   15cd4:	0e00           	.short 0x0e00
   15cd6:	00c0           	bitrev %d0
   15cd8:	0e70           	.short 0x0e70
   15cda:	00c0           	bitrev %d0
   15cdc:	0e7f           	.short 0x0e7f
   15cde:	c1c0           	mulsw %d0,%d0
   15ce0:	0e7f           	.short 0x0e7f
   15ce2:	f0c0 0c3d e060 	pbbs 0xc3f3d44
   15ce8:	0c00 6070      	cmpib #112,%d0
   15cec:	0c00 4038      	cmpib #56,%d0
   15cf0:	1c00           	moveb %d0,%d6
   15cf2:	0fb8 18fe      	bclr %d7,0x18fe
   15cf6:	1fdc           	.short 0x1fdc
   15cf8:	33ff           	.short 0x33ff
   15cfa:	18ee 67ff      	moveb %fp@(26623),%a4@+
   15cfe:	987f           	.short 0x987f
   15d00:	fc03 d83f      	cp0ldb %d3,%a5,#5,#63
   15d04:	f800           	.short 0xf800
   15d06:	f81c           	.short 0xf81c
   15d08:	7000           	moveq #0,%d0
   15d0a:	f000           	.short 0xf000
   15d0c:	0000 6000      	orib #0,%d0
	...
   15d1c:	1e00           	moveb %d0,%d7
   15d1e:	0020 13f8      	orib #-8,%a0@-
   15d22:	00e0           	.short 0x00e0
   15d24:	11fe           	.short 0x11fe
   15d26:	c0e0           	muluw %a0@-,%d0
   15d28:	141f           	moveb %sp@+,%d2
   15d2a:	e1e0           	aslw %a0@-
   15d2c:	1bc3           	.short 0x1bc3
   15d2e:	7e40           	moveq #64,%d7
   15d30:	0e50           	.short 0x0e50
   15d32:	1ec0           	moveb %d0,%sp@+
   15d34:	06f9 0080 06ff 	callm #-128,0x6ffe480
   15d3a:	e480
   15d3c:	06ff           	.short 0x06ff
   15d3e:	fd80 06ff      	cp0stl %d0,%d0,#4,#255
   15d42:	f880           	.short 0xf880
   15d44:	04ff           	.short 0x04ff
   15d46:	fe40 04ff      	cp1ldw %d0,%d0,#3,#255
   15d4a:	f260           	.short 0xf260
   15d4c:	0540           	bchg %d2,%d0
   15d4e:	e030           	roxrb %d0,%d0
   15d50:	0c00 cfb0      	cmpib #-80,%d0
   15d54:	08fe           	.short 0x08fe
   15d56:	18d8           	moveb %a0@+,%a4@+
   15d58:	13ff           	.short 0x13ff
   15d5a:	106c           	.short 0x106c
   15d5c:	2403           	movel %d3,%d2
   15d5e:	903e           	.short 0x903e
   15d60:	7800           	moveq #0,%d4
   15d62:	d01c           	addb %a4@+,%d0
   15d64:	7000           	moveq #0,%d0
   15d66:	7000           	moveq #0,%d0
   15d68:	0000 6000      	orib #0,%d0
	...
   15d78:	1e00           	moveb %d0,%d7
   15d7a:	0020 21f8      	orib #-8,%a0@-
   15d7e:	00d0           	.short 0x00d0
   15d80:	2c06           	movel %d6,%d6
   15d82:	c110           	andb %d0,%a0@
   15d84:	2e01           	movel %d1,%d7
   15d86:	2110           	movel %a0@,%a0@-
   15d88:	2fe0           	.short 0x2fe0
   15d8a:	1e10           	moveb %a0@,%d7
   15d8c:	27fc           	.short 0x27fc
   15d8e:	81a0           	orl %d0,%a0@-
   15d90:	11ff           	.short 0x11ff
   15d92:	e120           	aslb %d0,%d0
   15d94:	09ff           	.short 0x09ff
   15d96:	ff40 09ff      	cp1stw %d0,%d0,#5,#511
   15d9a:	ff40 09ff      	cp1stw %d0,%d0,#5,#511
   15d9e:	fe40 09ff      	cp1ldw %d0,%d0,#5,#511
   15da2:	ff40 0bff      	cp1stw %d0,%d0,#6,#511
   15da6:	ffa0 0bff      	cp1stl %d0,%a0@-,#6,#511
   15daa:	ff90 0bff      	cp1stl %d0,%a0@,#6,#511
   15dae:	ffc8           	.short 0xffc8
   15db0:	13ff           	.short 0x13ff
   15db2:	f048           	.short 0xf048
   15db4:	1701           	moveb %d1,%a3@-
   15db6:	e724           	aslb %d3,%d4
   15db8:	2c00           	movel %d0,%d6
   15dba:	e892           	roxrl #4,%d2
   15dbc:	5bfc           	trapmi
   15dbe:	6841           	bvcs 0x15e01
   15dc0:	8403           	orb %d3,%d2
   15dc2:	2823           	movel %a3@-,%d4
   15dc4:	8800           	orb %d0,%d4
   15dc6:	881c           	orb %a4@+,%d4
   15dc8:	7000           	moveq #0,%d0
   15dca:	9000           	subb %d0,%d0
   15dcc:	0000 6000      	orib #0,%d0
	...
   15dd8:	1e00           	moveb %d0,%d7
   15dda:	0020 3ff8      	orib #-8,%a0@-
   15dde:	00f0           	.short 0x00f0
   15de0:	3ffe           	.short 0x3ffe
   15de2:	c1f0 3fff e1f0 	mulsw @(ffffffffe1f03fff)@(fffffffffff03fff),%d0
   15de8:	3fff fff0 3fff
   15dee:	ffe0           	.short 0xffe0
   15df0:	1fff           	.short 0x1fff
   15df2:	ffe0           	.short 0xffe0
   15df4:	0fff           	.short 0x0fff
   15df6:	ffc0           	.short 0xffc0
   15df8:	0fff           	.short 0x0fff
   15dfa:	ffc0           	.short 0xffc0
   15dfc:	0fff           	.short 0x0fff
   15dfe:	ffc0           	.short 0xffc0
   15e00:	0fff           	.short 0x0fff
   15e02:	ffc0           	.short 0xffc0
   15e04:	0fff           	.short 0x0fff
   15e06:	ffe0           	.short 0xffe0
   15e08:	0fff           	.short 0x0fff
   15e0a:	fff0           	.short 0xfff0
   15e0c:	0fff           	.short 0x0fff
   15e0e:	fff8           	.short 0xfff8
   15e10:	1fff           	.short 0x1fff
   15e12:	fff8           	.short 0xfff8
   15e14:	1fff           	.short 0x1fff
   15e16:	fffc           	.short 0xfffc
   15e18:	3fff           	.short 0x3fff
   15e1a:	f8fe           	.short 0xf8fe
   15e1c:	7fff           	.short 0x7fff
   15e1e:	f87f           	.short 0xf87f
   15e20:	fc03 f83f      	cp0ldb %d3,%sp,#5,#63
   15e24:	f800           	.short 0xf800
   15e26:	f81c           	.short 0xf81c
   15e28:	7000           	moveq #0,%d0
   15e2a:	f000           	.short 0xf000
   15e2c:	0000 6000      	orib #0,%d0
   15e30:	1800           	moveb %d0,%d4
   15e32:	0000 3c00      	orib #0,%d0
   15e36:	0000 7600      	orib #0,%d0
   15e3a:	0038 6638 00fc 	orib #56,0xfc
   15e40:	c6fc 01f8      	muluw #504,%d3
   15e44:	73ff           	.short 0x73ff
   15e46:	01b0 3bff cf30 	bclr %d0,@(ffffffffcf301803)@(ffffffffff601c01)
   15e4c:	1803 ff60 1c01
   15e52:	fee0           	.short 0xfee0
   15e54:	0c00 18c0      	cmpib #-64,%d0
   15e58:	0c30 01c0 0638 	cmpib #-64,%a0@(38,%d0:w:8)
   15e5e:	01c0           	bset %d0,%d0
   15e60:	063d           	.short 0x063d
   15e62:	18c0           	moveb %d0,%a4@+
   15e64:	063f           	.short 0x063f
   15e66:	e060           	asrw %d0,%d0
   15e68:	0e1f           	.short 0x0e1f
   15e6a:	8030 0e00      	orb %a0@(0,%d0:l:8),%d0
   15e6e:	0038 1c00 0f98 	orib #0,0xf98
   15e74:	1800           	moveb %d0,%d4
   15e76:	1fde           	.short 0x1fde
   15e78:	33ff           	.short 0x33ff
   15e7a:	18cf           	.short 0x18cf
   15e7c:	67ff 9877 ee71 	beql 0x98794cef
   15e82:	b87f           	.short 0xb87f
   15e84:	fc01 f83e      	cp0ldb %d1,%sp,#5,#62
   15e88:	7c00           	moveq #0,%d6
   15e8a:	f81c           	.short 0xf81c
   15e8c:	3800           	movew %d0,%d4
   15e8e:	3000           	movew %d0,%d0
   15e90:	0000 0000      	orib #0,%d0
   15e94:	1800           	moveb %d0,%d4
   15e96:	0000 3400      	orib #0,%d0
   15e9a:	0000 3400      	orib #0,%d0
   15e9e:	0038 4438 00f0 	orib #56,0xf0
   15ea4:	32fc 00a0      	movew #160,%a1@+
   15ea8:	1bff           	.short 0x1bff
   15eaa:	0120           	btst %d0,%a0@-
   15eac:	0803 cf40      	btst #64,%d3
   15eb0:	0d81           	bclr %d6,%d1
   15eb2:	fec0 04fc      	cp1bcbusy 0x163b0
   15eb6:	1880           	moveb %d0,%a4@
   15eb8:	047d           	.short 0x047d
   15eba:	0180           	bclr %d0,%d0
   15ebc:	02ff           	.short 0x02ff
   15ebe:	bd80           	eorl %d6,%d0
   15ec0:	027f           	.short 0x027f
   15ec2:	fc80 02ff      	cp0ldl %d0,%d0,#2,#255
   15ec6:	fc40 067f      	cp0ldw %d0,%d0,#4,#127
   15eca:	f720           	.short 0xf720
   15ecc:	067f           	.short 0x067f
   15ece:	c030 0cb0      	andb %a0@(ffffffffffffffb0,%d0:l:4),%d0
   15ed2:	cf90           	andl %d7,%a0@
   15ed4:	0800 58d8      	btst #-40,%d0
   15ed8:	13ff           	.short 0x13ff
   15eda:	104e           	.short 0x104e
   15edc:	2671 9036      	moveal %a1@(36,%a1:w),%a3
   15ee0:	6800 b01e      	bvcw 0x10f00
   15ee4:	7800           	moveq #0,%d4
   15ee6:	f01c           	.short 0xf01c
   15ee8:	3800           	movew %d0,%d4
   15eea:	3000           	movew %d0,%d0
   15eec:	0000 0000      	orib #0,%d0
   15ef0:	1800           	moveb %d0,%d4
   15ef2:	0000 2400      	orib #0,%d0
   15ef6:	0000 4a00      	orib #0,%d0
   15efa:	0038 5a38 00c4 	orib #56,0xc4
   15f00:	bac4           	cmpaw %d4,%a5
   15f02:	0108 4d03      	movepw %a0@(19715),%d0
   15f06:	0150           	bchg %d0,%a0@
   15f08:	2400           	movel %d0,%d2
   15f0a:	ced0           	muluw %a0@,%d7
   15f0c:	17fc           	.short 0x17fc
   15f0e:	30a0           	movew %a0@-,%a0@
   15f10:	13fe           	.short 0x13fe
   15f12:	0120           	btst %d0,%a0@-
   15f14:	0bff           	.short 0x0bff
   15f16:	e740           	aslw #3,%d0
   15f18:	0bff           	.short 0x0bff
   15f1a:	fe40 05ff      	cp1ldw %d0,%d0,#3,#511
   15f1e:	fe40 05ff      	cp1ldw %d0,%d0,#3,#511
   15f22:	ff40 05ff      	cp1stw %d0,%d0,#3,#511
   15f26:	ffa0 09ff      	cp1stl %d0,%a0@-,#5,#511
   15f2a:	ffd0           	.short 0xffd0
   15f2c:	09ff           	.short 0x09ff
   15f2e:	ffc8           	.short 0xffc8
   15f30:	13ff           	.short 0x13ff
   15f32:	f068           	.short 0xf068
   15f34:	17ff           	.short 0x17ff
   15f36:	e726           	aslb %d3,%d6
   15f38:	2c00           	movel %d0,%d6
   15f3a:	e8b1           	roxrl %d4,%d1
   15f3c:	598e           	subql #4,%fp
   15f3e:	6849           	bvcs 0x15f89
   15f40:	9671 4861      	subw %a1@(61,%d4:l),%d3
   15f44:	8401           	orb %d1,%d2
   15f46:	0822 4400      	btst #0,%a2@-
   15f4a:	c81c           	andb %a4@+,%d4
   15f4c:	3800           	movew %d0,%d4
   15f4e:	3000           	movew %d0,%d0
   15f50:	1800           	moveb %d0,%d4
   15f52:	0000 3c00      	orib #0,%d0
   15f56:	0000 7e00      	orib #0,%d0
   15f5a:	0038 7e38 00fc 	orib #56,0xfc
   15f60:	fefc           	.short 0xfefc
   15f62:	01f8 7fff      	bset %d0,0x7fff
   15f66:	01f0 3fff cff0 	bset %d0,@(ffffffffcff01fff)@(ffffffffffe01fff)
   15f6c:	1fff ffe0 1fff
   15f72:	ffe0           	.short 0xffe0
   15f74:	0fff           	.short 0x0fff
   15f76:	ffc0           	.short 0xffc0
   15f78:	0fff           	.short 0x0fff
   15f7a:	ffc0           	.short 0xffc0
   15f7c:	07ff           	.short 0x07ff
   15f7e:	ffc0           	.short 0xffc0
   15f80:	07ff           	.short 0x07ff
   15f82:	ffc0           	.short 0xffc0
   15f84:	07ff           	.short 0x07ff
   15f86:	ffe0           	.short 0xffe0
   15f88:	0fff           	.short 0x0fff
   15f8a:	fff0           	.short 0xfff0
   15f8c:	0fff           	.short 0x0fff
   15f8e:	fff8           	.short 0xfff8
   15f90:	1fff           	.short 0x1fff
   15f92:	fff8           	.short 0xfff8
   15f94:	1fff           	.short 0x1fff
   15f96:	fffe           	.short 0xfffe
   15f98:	3fff           	.short 0x3fff
   15f9a:	f8ff           	.short 0xf8ff
   15f9c:	7fff           	.short 0x7fff
   15f9e:	f87f           	.short 0xf87f
   15fa0:	fe71           	.short 0xfe71
   15fa2:	f87f           	.short 0xf87f
   15fa4:	fc01 f83e      	cp0ldb %d1,%sp,#5,#62
   15fa8:	7c00           	moveq #0,%d6
   15faa:	f81c           	.short 0xf81c
   15fac:	3800           	movew %d0,%d4
   15fae:	3000           	movew %d0,%d0
   15fb0:	0000 0000      	orib #0,%d0
   15fb4:	0000 007c      	orib #124,%d0
   15fb8:	0000 00fe      	orib #-2,%d0
   15fbc:	1800           	moveb %d0,%d4
   15fbe:	00fe           	.short 0x00fe
   15fc0:	3cfc 01de      	movew #478,%fp@+
   15fc4:	37ff           	.short 0x37ff
   15fc6:	01bc           	.short 0x01bc
   15fc8:	33c7 8770 3001 	movew %d7,0x87703001
   15fce:	fe60 1800      	cp1ldw %a0@-,%d1,#5,#0
   15fd2:	3ce0           	movew %a0@-,%fp@+
   15fd4:	1c10           	moveb %a0@,%d6
   15fd6:	30c0           	movew %d0,%a0@+
   15fd8:	0e1e           	.short 0x0e1e
   15fda:	01c0           	bset %d0,%d0
   15fdc:	061e 01c0      	addib #-64,%fp@+
   15fe0:	071f           	btst %d3,%sp@+
   15fe2:	11e0 0603      	moveb %a0@-,0x603
   15fe6:	f070           	.short 0xf070
   15fe8:	0e00           	.short 0x0e00
   15fea:	c070 0c00      	andw %a0@(0,%d0:l:4),%d0
   15fee:	0038 1868 0f18 	orib #104,0xf18
   15ff4:	79fe           	.short 0x79fe
   15ff6:	1fce           	.short 0x1fce
   15ff8:	f7ff           	.short 0xf7ff
   15ffa:	18ef e6e3      	moveb %sp@(-6429),%a4@+
   15ffe:	9877 c601      	subw %sp@(1,%a4:w:8),%d4
   16002:	9837 ce03      	subb %sp@(3,%a4:l:8),%d4
   16006:	b83e           	.short 0xb83e
   16008:	7c03           	moveq #3,%d6
   1600a:	f03e           	.short 0xf03e
   1600c:	3801           	movew %d1,%d4
   1600e:	e01c           	rorb #8,%d4
	...
   16018:	0000 007c      	orib #124,%d0
   1601c:	0000 007c      	orib #124,%d0
   16020:	1800           	moveb %d0,%d4
   16022:	00dc           	.short 0x00dc
   16024:	14fc 00b0      	moveb #-80,%a2@+
   16028:	13c7 0160 1201 	moveb %d7,0x1601201
   1602e:	8640           	orw %d0,%d3
   16030:	0938 3cc0      	btst %d4,0x3cc0
   16034:	0dff           	.short 0x0dff
   16036:	3080           	movew %d0,%a0@
   16038:	067f           	.short 0x067f
   1603a:	8580 023f      	unpk %d0,%d2,#575
   1603e:	b980           	eorl %d4,%d0
   16040:	037f           	.short 0x037f
   16042:	f980           	.short 0xf980
   16044:	027f           	.short 0x027f
   16046:	fe40 06c7      	cp1ldw %d0,%d0,#4,#199
   1604a:	ff60 0501      	cp1stw %d0,%a0@-,#3,#257
   1604e:	e030           	roxrb %d0,%d0
   16050:	0868 cf10 09fe 	bchg #16,%a0@(2558)
   16056:	58c8 76e3      	dbvc %d0,0x1d73b
   1605a:	106e           	.short 0x106e
   1605c:	6401           	bccs 0x1605f
   1605e:	9036 4400      	subb %fp@(0,%d4:w:4),%d0
   16062:	9016           	subb %fp@,%d0
   16064:	4c01           	.short 0x4c01
   16066:	b01c           	cmpb %a4@+,%d0
   16068:	3801           	movew %d1,%d4
   1606a:	e01c           	rorb #8,%d4
	...
   16074:	0000 007c      	orib #124,%d0
   16078:	0000 0082      	orib #-126,%d0
   1607c:	1800           	moveb %d0,%d4
   1607e:	0082 24fc 0122 	oril #620495138,%d2
   16084:	2b03           	movel %d3,%a5@-
   16086:	014c 2c38      	movepl %a4@(11320),%d0
   1608a:	8690           	orl %a0@,%d3
   1608c:	2ffe           	.short 0x2ffe
   1608e:	79a0           	mvzb %a0@-,%d4
   16090:	17ff           	.short 0x17ff
   16092:	c320           	andb %d1,%a0@-
   16094:	13ff           	.short 0x13ff
   16096:	cf40           	exg %d7,%d0
   16098:	09ff           	.short 0x09ff
   1609a:	fe40 05ff      	cp1ldw %d0,%d0,#3,#511
   1609e:	fe40 04ff      	cp1ldw %d0,%d0,#3,#255
   160a2:	fe60 05ff      	cp1ldw %a0@-,%d0,#3,#511
   160a6:	ffb0           	.short 0xffb0
   160a8:	09ff           	.short 0x09ff
   160aa:	ff90 0bff      	cp1stl %d0,%a0@,#6,#511
   160ae:	ffc8           	.short 0xffc8
   160b0:	1797 f0e8      	moveb %sp@,%a3@(ffffffffffffffe8,%sp:w)
   160b4:	7601           	moveq #1,%d3
   160b6:	e736           	roxlb %d3,%d6
   160b8:	891c           	orb %d4,%a4@+
   160ba:	e891           	roxrl #4,%d1
   160bc:	9ae2           	subaw %a2@-,%a5
   160be:	6849           	bvcs 0x16109
   160c0:	ba01           	cmpb %d1,%d5
   160c2:	6829           	bvcs 0x160ed
   160c4:	b202           	cmpb %d2,%d1
   160c6:	4822           	nbcd %a2@-
   160c8:	4402           	negb %d2
   160ca:	1022           	moveb %a2@-,%d0
   160cc:	3801           	movew %d1,%d4
   160ce:	e01c           	rorb #8,%d4
   160d0:	0000 0000      	orib #0,%d0
   160d4:	0000 007c      	orib #124,%d0
   160d8:	0000 00fe      	orib #-2,%d0
   160dc:	1800           	moveb %d0,%d4
   160de:	00fe           	.short 0x00fe
   160e0:	3cfc 01fe      	movew #510,%fp@+
   160e4:	3fff           	.short 0x3fff
   160e6:	01fc           	.short 0x01fc
   160e8:	3fff           	.short 0x3fff
   160ea:	87f0 3fff ffe0 	divsw @(ffffffffffe01fff)@(ffffffffffe01fff),%d3
   160f0:	1fff ffe0 1fff
   160f6:	ffc0           	.short 0xffc0
   160f8:	0fff           	.short 0x0fff
   160fa:	ffc0           	.short 0xffc0
   160fc:	07ff           	.short 0x07ff
   160fe:	ffc0           	.short 0xffc0
   16100:	07ff           	.short 0x07ff
   16102:	ffe0           	.short 0xffe0
   16104:	07ff           	.short 0x07ff
   16106:	fff0           	.short 0xfff0
   16108:	0fff           	.short 0x0fff
   1610a:	fff0           	.short 0xfff0
   1610c:	0fff           	.short 0x0fff
   1610e:	fff8           	.short 0xfff8
   16110:	1fff           	.short 0x1fff
   16112:	fff8           	.short 0xfff8
   16114:	7fff           	.short 0x7fff
   16116:	fffe           	.short 0xfffe
   16118:	ffff           	.short 0xffff
   1611a:	f8ff           	.short 0xf8ff
   1611c:	fee3           	.short 0xfee3
   1611e:	f87f           	.short 0xf87f
   16120:	fe01 f83f      	cp1ldb %d1,%sp,#5,#63
   16124:	fe03 f83e      	cp1ldb %d3,%sp,#5,#62
   16128:	7c03           	moveq #3,%d6
   1612a:	f03e           	.short 0xf03e
   1612c:	3801           	movew %d1,%d4
   1612e:	e01c           	rorb #8,%d4
   16130:	0000 0018      	orib #24,%d0
   16134:	0000 007c      	orib #124,%d0
   16138:	0000 00fe      	orib #-2,%d0
   1613c:	0600 00e6      	addib #-26,%d0
   16140:	0f0c 01c6      	movepw %a4@(454),%d7
   16144:	1dff           	.short 0x1dff
   16146:	01cc 19ff      	movepl %d0,%a4@(6655)
   1614a:	879c           	orl %d3,%a4@+
   1614c:	18c7           	moveb %d7,%a4@+
   1614e:	fe38           	.short 0xfe38
   16150:	1801           	moveb %d1,%d4
   16152:	fc70           	.short 0xfc70
   16154:	0c00 f860      	cmpib #96,%d0
   16158:	0e70           	.short 0x0e70
   1615a:	00c0           	bitrev %d0
   1615c:	063c           	.short 0x063c
   1615e:	01c0           	bset %d0,%d0
   16160:	063f           	.short 0x063f
   16162:	f8c0           	.short 0xf8c0
   16164:	0603 fce0      	addib #-32,%d3
   16168:	0e01           	.short 0x0e01
   1616a:	f020 0e00      	pmove %tt1,%a0@-
   1616e:	c030 3c70      	andb %a0@(70,%d3:l:4),%d0
   16172:	8018           	orb %a0@+,%d0
   16174:	79fc 0f0e      	mvzw #3854,%d4
   16178:	e3fc           	.short 0xe3fc
   1617a:	1f8f           	.short 0x1f8f
   1617c:	c30e           	abcd %fp@-,%a1@-
   1617e:	19c3           	.short 0x19c3
   16180:	c706           	abcd %d6,%d3
   16182:	3867           	moveaw %sp@-,%a4
   16184:	7e07           	moveq #7,%d7
   16186:	f866           	.short 0xf866
   16188:	3803           	movew %d3,%d4
   1618a:	f07e           	.short 0xf07e
   1618c:	0001 e03c      	orib #60,%d1
   16190:	0000 0000      	orib #0,%d0
   16194:	0000 0018      	orib #24,%d0
   16198:	0000 007c      	orib #124,%d0
   1619c:	0000 0064      	orib #100,%d0
   161a0:	0600 00c4      	addib #-60,%d0
   161a4:	0d0c 00c8      	movepw %a4@(200),%d6
   161a8:	09ff           	.short 0x09ff
   161aa:	0198           	bclr %d0,%a0@+
   161ac:	0ac7           	.short 0x0ac7
   161ae:	8630 0a11      	orb %a0@(11,%d0:l:2),%d3
   161b2:	fd60 05f8      	cp0stw %d0,%a0@-,#3,#504
   161b6:	fb40           	.short 0xfb40
   161b8:	06fe           	.short 0x06fe
   161ba:	0280 02ff fd80 	andil #50331008,%d0
   161c0:	02ff           	.short 0x02ff
   161c2:	fe80 027f      	cp1ldl %d0,%d0,#2,#127
   161c6:	fec0 06c7      	cp1bcbusy 0x1688f
   161ca:	ff20 0603      	cp1stb %d0,%a0@-,#4,#3
   161ce:	f1a0           	.short 0xf1a0
   161d0:	0c71 e0d0 39fd 	cmpiw #-7984,@(ffffffffcf286b04)@(0)
   161d6:	cf28 6b04
   161da:	d98e           	addxl %fp@-,%a4@-
   161dc:	5206           	addqb #1,%d6
   161de:	9042           	subw %d2,%d0
   161e0:	4602           	notb %d2
   161e2:	3026           	movew %fp@-,%d0
   161e4:	3803           	movew %d3,%d4
   161e6:	f024           	.short 0xf024
   161e8:	0001 e03c      	orib #60,%d1
   161ec:	0000 0000      	orib #0,%d0
   161f0:	0000 0018      	orib #24,%d0
   161f4:	0000 0064      	orib #100,%d0
   161f8:	0000 0082      	orib #-126,%d0
   161fc:	0600 009a      	addib #-102,%d0
   16200:	090c 013a      	movepw %a4@(314),%d4
   16204:	12f3 0134 1600 	moveb %a3@(16008664)@(0,%d0:w),%a1@+
   1620a:	8664
   1620c:	1738 79c8      	moveb 0x79c8,%a3@-
   16210:	17fe           	.short 0x17fe
   16212:	0390           	bclr %d1,%a0@
   16214:	0bff           	.short 0x0bff
   16216:	07a0           	bclr %d3,%a0@-
   16218:	09ff           	.short 0x09ff
   1621a:	ff40 05ff      	cp1stw %d0,%d0,#3,#511
   1621e:	fe40 05ff      	cp1ldw %d0,%d0,#3,#511
   16222:	ff40 05ff      	cp1stw %d0,%d0,#3,#511
   16226:	ff20 09ff      	cp1stb %d0,%a0@-,#5,#511
   1622a:	ffc0           	.short 0xffc0
   1622c:	09ff           	.short 0x09ff
   1622e:	ffd0           	.short 0xffd0
   16230:	338f ffe8 4603 	movew %sp,@(4603)
   16236:	f0f6           	.short 0xf0f6
   16238:	9cfb e671      	subaw %pc@(0x162ab,%fp:w:8),%fp
   1623c:	bd09           	cmpmb %a1@+,%fp@+
   1623e:	e9bd           	roll %d4,%d5
   16240:	b905           	eorb %d4,%d5
   16242:	c859           	andw %a1@+,%d4
   16244:	4604           	notb %d4
   16246:	085a 3802      	bchg #2,%a2@+
   1624a:	1042           	.short 0x1042
   1624c:	0001 e03c      	orib #60,%d1
   16250:	0000 0018      	orib #24,%d0
   16254:	0000 007c      	orib #124,%d0
   16258:	0000 00fe      	orib #-2,%d0
   1625c:	0600 00fe      	addib #-2,%d0
   16260:	0f0c 01fe      	movepw %a4@(510),%d7
   16264:	1fff           	.short 0x1fff
   16266:	01fc           	.short 0x01fc
   16268:	1fff           	.short 0x1fff
   1626a:	87fc 1fff      	divsw #8191,%d3
   1626e:	fff8           	.short 0xfff8
   16270:	1fff           	.short 0x1fff
   16272:	fff0           	.short 0xfff0
   16274:	0fff           	.short 0x0fff
   16276:	ffe0           	.short 0xffe0
   16278:	0fff           	.short 0x0fff
   1627a:	ffc0           	.short 0xffc0
   1627c:	07ff           	.short 0x07ff
   1627e:	ffc0           	.short 0xffc0
   16280:	07ff           	.short 0x07ff
   16282:	ffc0           	.short 0xffc0
   16284:	07ff           	.short 0x07ff
   16286:	ffe0           	.short 0xffe0
   16288:	0fff           	.short 0x0fff
   1628a:	ffe0           	.short 0xffe0
   1628c:	0fff           	.short 0x0fff
   1628e:	fff0           	.short 0xfff0
   16290:	3fff           	.short 0x3fff
   16292:	fff8           	.short 0xfff8
   16294:	7fff           	.short 0x7fff
   16296:	fffe           	.short 0xfffe
   16298:	ffff           	.short 0xffff
   1629a:	ffff           	.short 0xffff
   1629c:	ff0f f9ff      	cp1stb %sp,%sp,#5,#511
   162a0:	ff07 f87f      	cp1stb %sp,%d7,#5,#127
   162a4:	7e07           	moveq #7,%d7
   162a6:	f87e           	.short 0xf87e
   162a8:	3803           	movew %d3,%d4
   162aa:	f07e           	.short 0xf07e
   162ac:	0001 e03c      	orib #60,%d1
   162b0:	0000 0000      	orib #0,%d0
   162b4:	0000 001c      	orib #28,%d0
   162b8:	0000 003e      	orib #62,%d0
   162bc:	0000 00e6      	orib #-26,%d0
   162c0:	0600 01c3      	addib #-61,%d0
   162c4:	0ffe           	.short 0x0ffe
   162c6:	01c7           	bset %d0,%d7
   162c8:	0fff           	.short 0x0fff
   162ca:	878e 1c07      	unpk %fp@-,%a3@-,#7175
   162ce:	fe38           	.short 0xfe38
   162d0:	1801           	moveb %d1,%d4
   162d2:	fc70           	.short 0xfc70
   162d4:	1c60           	.short 0x1c60
   162d6:	f860           	.short 0xf860
   162d8:	0e78           	.short 0x0e78
   162da:	00c0           	bitrev %d0
   162dc:	067c           	.short 0x067c
   162de:	01c0           	bset %d0,%d0
   162e0:	063f           	.short 0x063f
   162e2:	f8c0           	.short 0xf8c0
   162e4:	0607 fce0      	addib #-32,%d7
   162e8:	0e01           	.short 0x0e01
   162ea:	f830           	.short 0xf830
   162ec:	0e00           	.short 0x0e00
   162ee:	e038           	rorb %d0,%d0
   162f0:	3c70 601c      	moveaw %a0@(1c,%d6:w),%fp
   162f4:	79f8 070e      	mvzw 0x70e,%d4
   162f8:	f3fe           	.short 0xf3fe
   162fa:	078f c30e      	movepw %d3,%sp@(-15602)
   162fe:	1dc7           	.short 0x1dc7
   16300:	c307           	abcd %d7,%d1
   16302:	18f7 e703 38fe 	moveb %sp@(0,%fp:w:8)@(38fe7e03),%a4@+
   16308:	7e03
   1630a:	f07e           	.short 0xf07e
   1630c:	3c01           	movew %d1,%d6
   1630e:	e01c           	rorb #8,%d4
	...
   16318:	0000 001c      	orib #28,%d0
   1631c:	0000 0024      	orib #36,%d0
   16320:	0000 00da      	orib #-38,%d0
   16324:	0600 00d6      	addib #-42,%d0
   16328:	07fe           	.short 0x07fe
   1632a:	0188 0c07      	movepw %d0,%a0@(3079)
   1632e:	8630 09f1 fd60 	orb @(fffffffffd600cfc)@(0),%d3
   16334:	0cfc
   16336:	fb40           	.short 0xfb40
   16338:	06fe           	.short 0x06fe
   1633a:	0280 02ff fd80 	andil #50331008,%d0
   16340:	02ff           	.short 0x02ff
   16342:	fe80 02ff      	cp1ldl %d0,%d0,#2,#255
   16346:	fec0 06cf      	cp1bcbusy 0x16a17
   1634a:	ff20 0607      	cp1stb %d0,%a0@-,#4,#7
   1634e:	f9b0           	.short 0xf9b0
   16350:	0c71 f0d8 39f8 	cmpiw #-3880,@(fffffffff70c730e)
   16356:	f70c 730e
   1635a:	c5ae 4a06      	andl %d2,%fp@(18950)
   1635e:	58c6           	svc %d6
   16360:	5203           	addqb #1,%d3
   16362:	1076           	.short 0x1076
   16364:	6601           	bnes 0x16367
   16366:	307c 3c01      	moveaw #15361,%a0
   1636a:	e01c           	rorb #8,%d4
	...
   16374:	0000 001c      	orib #28,%d0
   16378:	0000 0022      	orib #34,%d0
   1637c:	0000 00da      	orib #-38,%d0
   16380:	0600 013d      	addib #61,%d0
   16384:	09fe           	.short 0x09fe
   16386:	0139 0801 8676 	btst %d0,0x8018676
   1638c:	13f8 79c8 17fe 	moveb 0x79c8,0x17fe0390
   16392:	0390
   16394:	13ff           	.short 0x13ff
   16396:	07a0           	bclr %d3,%a0@-
   16398:	09ff           	.short 0x09ff
   1639a:	ff40 05ff      	cp1stw %d0,%d0,#3,#511
   1639e:	fe40 05ff      	cp1ldw %d0,%d0,#3,#511
   163a2:	ff40 05ff      	cp1stw %d0,%d0,#3,#511
   163a6:	ff20 09ff      	cp1stb %d0,%a0@-,#5,#511
   163aa:	ffd0           	.short 0xffd0
   163ac:	09ff           	.short 0x09ff
   163ae:	ffc8           	.short 0xffc8
   163b0:	338f ffe4 4607 	movew %sp,@(4607)@(0)
   163b6:	f8f2           	.short 0xf8f2
   163b8:	8cf1 fa71      	divuw %a1@(71,%sp:l:2),%d6
   163bc:	bd09           	cmpmb %a1@+,%fp@+
   163be:	e539           	rolb %d2,%d1
   163c0:	bd04           	eorb %d6,%d4
   163c2:	e889           	lsrl #4,%d1
   163c4:	9902           	subxb %d2,%d4
   163c6:	c882           	andl %d2,%d4
   163c8:	4202           	clrb %d2
   163ca:	1062           	.short 0x1062
   163cc:	3c01           	movew %d1,%d6
   163ce:	e01c           	rorb #8,%d4
   163d0:	0000 0000      	orib #0,%d0
   163d4:	0000 001c      	orib #28,%d0
   163d8:	0000 003e      	orib #62,%d0
   163dc:	0000 00fe      	orib #-2,%d0
   163e0:	0600 01ff      	addib #-1,%d0
   163e4:	0ffe           	.short 0x0ffe
   163e6:	01ff           	.short 0x01ff
   163e8:	0fff           	.short 0x0fff
   163ea:	87fe           	.short 0x87fe
   163ec:	1fff           	.short 0x1fff
   163ee:	fff8           	.short 0xfff8
   163f0:	1fff           	.short 0x1fff
   163f2:	fff0           	.short 0xfff0
   163f4:	1fff           	.short 0x1fff
   163f6:	ffe0           	.short 0xffe0
   163f8:	0fff           	.short 0x0fff
   163fa:	ffc0           	.short 0xffc0
   163fc:	07ff           	.short 0x07ff
   163fe:	ffc0           	.short 0xffc0
   16400:	07ff           	.short 0x07ff
   16402:	ffc0           	.short 0xffc0
   16404:	07ff           	.short 0x07ff
   16406:	ffe0           	.short 0xffe0
   16408:	0fff           	.short 0x0fff
   1640a:	fff0           	.short 0xfff0
   1640c:	0fff           	.short 0x0fff
   1640e:	fff8           	.short 0xfff8
   16410:	3fff           	.short 0x3fff
   16412:	fffc           	.short 0xfffc
   16414:	7fff           	.short 0x7fff
   16416:	fffe           	.short 0xfffe
   16418:	ffff           	.short 0xffff
   1641a:	ffff           	.short 0xffff
   1641c:	ff0f fdff      	cp1stb %sp,%sp,#7,#511
   16420:	ff07 f8ff      	cp1stb %sp,%d7,#5,#255
   16424:	ff03 f8fe      	cp1stb %sp,%d3,#5,#254
   16428:	7e03           	moveq #3,%d7
   1642a:	f07e           	.short 0xf07e
   1642c:	3c01           	movew %d1,%d6
   1642e:	e01c           	rorb #8,%d4
	...
   16438:	00fe           	.short 0x00fe
   1643a:	0000 03ab      	orib #-85,%d0
   1643e:	8000           	orb %d0,%d0
   16440:	077d           	.short 0x077d
   16442:	c000           	andb %d0,%d0
   16444:	0ebc           	.short 0x0ebc
   16446:	e000           	asrb #8,%d0
   16448:	1d6d 7000 1fbb 	moveb %a5@(28672),%fp@(8123)
   1644e:	f000           	.short 0xf000
   16450:	3b5d b800      	movew %a5@+,%a5@(-18432)
   16454:	3b29 b800      	movew %a1@(-18432),%a5@-
   16458:	3dff           	.short 0x3dff
   1645a:	7800           	moveq #0,%d4
   1645c:	3bab b800 3555 	movew %a3@(-18432),%a5@(0)@(0)
   16462:	5800           	addqb #4,%d0
   16464:	2038 0800      	movel 0x800,%d0
   16468:	2282           	movel %d2,%a1@
   1646a:	8800           	orb %d0,%d4
   1646c:	167c d000      	moveb #0,%a3
   16470:	1183 1000      	moveb %d3,%a0@(0,%d1:w)
   16474:	0a7c a000      	eoriw #-24576,%sr
   16478:	0583           	bclr %d2,%d3
   1647a:	4000           	negxb %d0
   1647c:	027c 8000      	andiw #-32768,%sr
   16480:	00ee 0000 0000 	cmp2b %fp@(0),%d0
	...
   16496:	0000 00fe      	orib #-2,%d0
   1649a:	0000 03ff      	orib #-1,%d0
   1649e:	8000           	orb %d0,%d0
   164a0:	07ff           	.short 0x07ff
   164a2:	c000           	andb %d0,%d0
   164a4:	0fff           	.short 0x0fff
   164a6:	e000           	asrb #8,%d0
   164a8:	1fff           	.short 0x1fff
   164aa:	f000           	.short 0xf000
   164ac:	1fff           	.short 0x1fff
   164ae:	f000           	.short 0xf000
   164b0:	3fff           	.short 0x3fff
   164b2:	f800           	.short 0xf800
   164b4:	3fff           	.short 0x3fff
   164b6:	f800           	.short 0xf800
   164b8:	3fab f800 3f01 	movew %a3@(-2048),%sp@(0,%d3:l:8)@(0)
   164be:	f800           	.short 0xf800
   164c0:	3e00           	movew %d0,%d7
   164c2:	f800 3c82      	tblsnl %d0,%d2,%d3
   164c6:	7800           	moveq #0,%d4
   164c8:	3c00           	movew %d0,%d6
   164ca:	7800           	moveq #0,%d4
   164cc:	1800           	moveb %d0,%d4
   164ce:	3000           	movew %d0,%d0
   164d0:	1c00           	moveb %d0,%d6
   164d2:	7000           	moveq #0,%d0
   164d4:	0c00 6000      	cmpib #0,%d0
   164d8:	0600 c000      	addib #0,%d0
   164dc:	0383           	bclr %d1,%d3
   164de:	8000           	orb %d0,%d0
   164e0:	00fe           	.short 0x00fe
	...
   164f6:	0000 00de      	orib #-34,%d0
   164fa:	0000 03ff      	orib #-1,%d0
   164fe:	8000           	orb %d0,%d0
   16500:	05fb           	.short 0x05fb
   16502:	4000           	negxb %d0
   16504:	0f6f e000      	bchg %d7,%sp@(-8192)
   16508:	1fff           	.short 0x1fff
   1650a:	f000           	.short 0xf000
   1650c:	16fe           	.short 0x16fe
   1650e:	d000           	addb %d0,%d0
   16510:	3fb7 f800 37ff 	movew %sp@(0,%sp:l),@(ffffffffd8003ed6)@(fffffffff8003fff)
   16516:	d800 3ed6 f800
   1651c:	3fff
   1651e:	f800           	.short 0xf800
   16520:	2fff           	.short 0x2fff
   16522:	e800           	asrb #4,%d0
   16524:	3fff           	.short 0x3fff
   16526:	f800           	.short 0xf800
   16528:	3fff           	.short 0x3fff
   1652a:	f800           	.short 0xf800
   1652c:	1fff           	.short 0x1fff
   1652e:	f000           	.short 0xf000
   16530:	1fff           	.short 0x1fff
   16532:	f000           	.short 0xf000
   16534:	0fff           	.short 0x0fff
   16536:	e000           	asrb #8,%d0
   16538:	07ff           	.short 0x07ff
   1653a:	c000           	andb %d0,%d0
   1653c:	03ff           	.short 0x03ff
   1653e:	8000           	orb %d0,%d0
   16540:	00fe           	.short 0x00fe
	...
   16556:	0000 00fe      	orib #-2,%d0
   1655a:	0000 03ff      	orib #-1,%d0
   1655e:	8000           	orb %d0,%d0
   16560:	07ff           	.short 0x07ff
   16562:	c000           	andb %d0,%d0
   16564:	0fff           	.short 0x0fff
   16566:	e000           	asrb #8,%d0
   16568:	1fff           	.short 0x1fff
   1656a:	f000           	.short 0xf000
   1656c:	1fff           	.short 0x1fff
   1656e:	f000           	.short 0xf000
   16570:	3fff           	.short 0x3fff
   16572:	f800           	.short 0xf800
   16574:	3fff           	.short 0x3fff
   16576:	f800           	.short 0xf800
   16578:	3fff           	.short 0x3fff
   1657a:	f800           	.short 0xf800
   1657c:	3fff           	.short 0x3fff
   1657e:	f800           	.short 0xf800
   16580:	3fff           	.short 0x3fff
   16582:	f800           	.short 0xf800
   16584:	3fff           	.short 0x3fff
   16586:	f800           	.short 0xf800
   16588:	3fff           	.short 0x3fff
   1658a:	f800           	.short 0xf800
   1658c:	1fff           	.short 0x1fff
   1658e:	f000           	.short 0xf000
   16590:	1fff           	.short 0x1fff
   16592:	f000           	.short 0xf000
   16594:	0fff           	.short 0x0fff
   16596:	e000           	asrb #8,%d0
   16598:	07ff           	.short 0x07ff
   1659a:	c000           	andb %d0,%d0
   1659c:	03ff           	.short 0x03ff
   1659e:	8000           	orb %d0,%d0
   165a0:	00fe           	.short 0x00fe
	...
   165ae:	0000 071f      	orib #31,%d0
   165b2:	ec70           	roxrw %d6,%d0
   165b4:	19f6           	.short 0x19f6
   165b6:	b7dc           	cmpal %a4@+,%a3
   165b8:	1efb efbc 0177 	moveb %zpc@(177f640)@(0,%fp:l:8),%sp@+
   165be:	f640
   165c0:	0e5f           	.short 0x0e5f
   165c2:	fd38           	.short 0xfd38
   165c4:	08f6 b688 16ef 	bset #-120,%fp@(ffffffffffffffef,%d1:w:8)
   165ca:	dfb4 2a5f      	addl %d7,%a4@(5f,%d2:l:2)
   165ce:	fd2a 3cc7 7196 	cp0stb %d3,%a2@(29078),#7,#199
   165d4:	05b1 c6d0      	bclr %d2,%a1@(ffffffffffffffd0,%a4:w:8)
   165d8:	0b6f 7b68      	bchg %d5,%sp@(31592)
   165dc:	0a11 c468      	eorib #104,%a1@
   165e0:	0e88           	.short 0x0e88
   165e2:	88b8 00e0      	orl 0xe0,%d4
   165e6:	0380           	bclr %d1,%d0
   165e8:	00c2           	bitrev %d2
   165ea:	2180 0082      	movel %d0,%a0@(ffffffffffffff82,%d0:w)
   165ee:	2080           	movel %d0,%a0@
   165f0:	0087 f080 009f 	oril #-260046689,%d7
   165f6:	7c80           	moveq #-128,%d6
   165f8:	009f 7c80 00db 	oril #2088763611,%sp@+
   165fe:	6d00 0049      	bltw 0x16649
   16602:	4900           	chkl %d0,%d4
   16604:	0068 0a00 0034 	oriw #2560,%a0@(52)
   1660a:	1600           	moveb %d0,%d3
   1660c:	001c 1c00      	orib #0,%a4@+
   16610:	071f           	btst %d3,%sp@+
   16612:	fc70           	.short 0xfc70
   16614:	11ff           	.short 0x11ff
   16616:	ffc4           	.short 0xffc4
   16618:	0eff           	.short 0x0eff
   1661a:	ffb8           	.short 0xffb8
   1661c:	217f           	.short 0x217f
   1661e:	ff42 0f7f      	cp1stw %d0,%d2,#8,#383
   16622:	ff78           	.short 0xff78
   16624:	08ff           	.short 0x08ff
   16626:	ff88 16ff      	cp1stl %d1,%a0,#4,#255
   1662a:	ffb4           	.short 0xffb4
   1662c:	2bff           	.short 0x2bff
   1662e:	ffea           	.short 0xffea
   16630:	2c7f           	.short 0x2c7f
   16632:	ff12 257f      	cp1stb %d2,%a2@,#3,#383
   16636:	ff52 0b9f      	cp1stw %d0,%a2@,#6,#415
   1663a:	fce8           	.short 0xfce8
   1663c:	0aa5 d2e8 0ae4 	eoril #-756544796,%a5@-
   16642:	93a8 049e      	subl %d1,%a0@(1182)
   16646:	3c90           	movew %a0@,%fp@
   16648:	0085 5080 0087 	oril #1350566023,%d5
   1664e:	7080           	moveq #-128,%d0
   16650:	008f 7880 008f 	oril #2021654671,%d7
   16656:	f880           	.short 0xf880
   16658:	008f 7880 008b 	oril #2021654667,%d7
   1665e:	6800 0049      	bvcw 0x166a9
   16662:	4900           	chkl %d0,%d4
   16664:	0048           	.short 0x0048
   16666:	0800 0024      	btst #36,%d0
   1666a:	1200           	moveb %d0,%d1
   1666c:	0018 0c00      	orib #0,%a0@+
   16670:	0717           	btst %d3,%sp@
   16672:	7470           	moveq #112,%d2
   16674:	1fbd           	.short 0x1fbd
   16676:	defc 1fef      	addaw #8175,%sp
   1667a:	7bfc 21bd      	mvzw #8637,%d5
   1667e:	dfc2           	addal %d2,%sp
   16680:	0fef 7bf8      	bset %d7,%sp@(31736)
   16684:	0fff           	.short 0x0fff
   16686:	fff8           	.short 0xfff8
   16688:	1fbb eefc 3bfe 	moveb %pc@(0x16686,%fp:l:8),@(ffffffffbfee3fff)@(fffffffffffffff6)
   1668e:	bfee 3fff fff6
   16694:	27ff           	.short 0x27ff
   16696:	fff2           	.short 0xfff2
   16698:	0fff           	.short 0x0fff
   1669a:	fff8           	.short 0xfff8
   1669c:	0eff           	.short 0x0eff
   1669e:	fff8           	.short 0xfff8
   166a0:	0eff           	.short 0x0eff
   166a2:	ffb8           	.short 0xffb8
   166a4:	04ff           	.short 0x04ff
   166a6:	ff90 00ff      	cp1stl %d0,%a0@,#1,#255
   166aa:	ff80 00fd      	cp1stl %d0,%d0,#1,#253
   166ae:	df80           	addxl %d0,%d7
   166b0:	00fd           	.short 0x00fd
   166b2:	df80           	addxl %d0,%d7
   166b4:	00fd           	.short 0x00fd
   166b6:	df80           	addxl %d0,%d7
   166b8:	00fd           	.short 0x00fd
   166ba:	5f80           	subql #7,%d0
   166bc:	00fa           	.short 0x00fa
   166be:	2f00           	movel %d0,%sp@-
   166c0:	0079 4f00 0078 	oriw #20224,0x780e00
   166c6:	0e00
   166c8:	003c 1e00      	orib #0,%ccr
   166cc:	001c 1c00      	orib #0,%a4@+
   166d0:	071f           	btst %d3,%sp@+
   166d2:	fc70           	.short 0xfc70
   166d4:	1fff           	.short 0x1fff
   166d6:	fffc           	.short 0xfffc
   166d8:	1fff           	.short 0x1fff
   166da:	fffc           	.short 0xfffc
   166dc:	21ff           	.short 0x21ff
   166de:	ffc2           	.short 0xffc2
   166e0:	0fff           	.short 0x0fff
   166e2:	fff8           	.short 0xfff8
   166e4:	0fff           	.short 0x0fff
   166e6:	fff8           	.short 0xfff8
   166e8:	1fff           	.short 0x1fff
   166ea:	fffc           	.short 0xfffc
   166ec:	3bff           	.short 0x3bff
   166ee:	ffee           	.short 0xffee
   166f0:	3fff           	.short 0x3fff
   166f2:	fff6           	.short 0xfff6
   166f4:	27ff           	.short 0x27ff
   166f6:	fff2           	.short 0xfff2
   166f8:	0fff           	.short 0x0fff
   166fa:	fff8           	.short 0xfff8
   166fc:	0eff           	.short 0x0eff
   166fe:	fff8           	.short 0xfff8
   16700:	0eff           	.short 0x0eff
   16702:	ffb8           	.short 0xffb8
   16704:	04ff           	.short 0x04ff
   16706:	ff90 00ff      	cp1stl %d0,%a0@,#1,#255
   1670a:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   1670e:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   16712:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   16716:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   1671a:	7f80           	mvzb %d0,%d7
   1671c:	00fb           	.short 0x00fb
   1671e:	6f00 0079      	blew 0x16799
   16722:	4f00           	chkl %d0,%d7
   16724:	0078 0e00 003c 	oriw #3584,0x3c
   1672a:	1e00           	moveb %d0,%d7
   1672c:	001c 1c00      	orib #0,%a4@+
   16730:	071f           	btst %d3,%sp@+
   16732:	ec70           	roxrw %d6,%d0
   16734:	19f6           	.short 0x19f6
   16736:	b7dc           	cmpal %a4@+,%a3
   16738:	1efb efbc 0177 	moveb %zpc@(177f640)@(0,%fp:l:8),%sp@+
   1673e:	f640
   16740:	0e5f           	.short 0x0e5f
   16742:	fd38           	.short 0xfd38
   16744:	08f6 b788 16eb 	bset #-120,%fp@(ffffffffffffffeb,%d1:w:8)
   1674a:	ebb4           	roxll %d5,%d4
   1674c:	2a77 f72a 3cfd 	moveal %sp@(3cfd,%sp:w:8)@(5f96),%a5
   16752:	5f96
   16754:	05bf           	.short 0x05bf
   16756:	fed0           	.short 0xfed0
   16758:	0b6f 7b68      	bchg %d5,%sp@(31592)
   1675c:	0a11 c468      	eorib #104,%a1@
   16760:	0e88           	.short 0x0e88
   16762:	88b8 00e0      	orl 0xe0,%d4
   16766:	0380           	bclr %d1,%d0
   16768:	00c2           	bitrev %d2
   1676a:	2180 0082      	movel %d0,%a0@(ffffffffffffff82,%d0:w)
   1676e:	2080           	movel %d0,%a0@
   16770:	0087 f080 009f 	oril #-260046689,%d7
   16776:	7c80           	moveq #-128,%d6
   16778:	009f 7c80 00db 	oril #2088763611,%sp@+
   1677e:	6d00 0049      	bltw 0x167c9
   16782:	4900           	chkl %d0,%d4
   16784:	0068 0a00 0034 	oriw #2560,%a0@(52)
   1678a:	1600           	moveb %d0,%d3
   1678c:	001c 1c00      	orib #0,%a4@+
   16790:	071f           	btst %d3,%sp@+
   16792:	fc70           	.short 0xfc70
   16794:	11ff           	.short 0x11ff
   16796:	ffc4           	.short 0xffc4
   16798:	0eff           	.short 0x0eff
   1679a:	ffb8           	.short 0xffb8
   1679c:	217f           	.short 0x217f
   1679e:	ff42 0f7f      	cp1stw %d0,%d2,#8,#383
   167a2:	ff78           	.short 0xff78
   167a4:	08ff           	.short 0x08ff
   167a6:	ff88 16ff      	cp1stl %d1,%a0,#4,#255
   167aa:	ffb4           	.short 0xffb4
   167ac:	2bff           	.short 0x2bff
   167ae:	ffea           	.short 0xffea
   167b0:	2c7f           	.short 0x2c7f
   167b2:	ff12 257f      	cp1stb %d2,%a2@,#3,#383
   167b6:	ff52 0b9f      	cp1stw %d0,%a2@,#6,#415
   167ba:	fce8           	.short 0xfce8
   167bc:	0aa5 d2e8 0ae4 	eoril #-756544796,%a5@-
   167c2:	93a8 049e      	subl %d1,%a0@(1182)
   167c6:	3c90           	movew %a0@,%fp@
   167c8:	0085 5080 0087 	oril #1350566023,%d5
   167ce:	7080           	moveq #-128,%d0
   167d0:	008f 7880 008f 	oril #2021654671,%d7
   167d6:	f880           	.short 0xf880
   167d8:	008f 7880 008b 	oril #2021654667,%d7
   167de:	6800 0049      	bvcw 0x16829
   167e2:	4900           	chkl %d0,%d4
   167e4:	0048           	.short 0x0048
   167e6:	0800 0024      	btst #36,%d0
   167ea:	1200           	moveb %d0,%d1
   167ec:	0018 0c00      	orib #0,%a0@+
   167f0:	0717           	btst %d3,%sp@
   167f2:	7470           	moveq #112,%d2
   167f4:	1fbd           	.short 0x1fbd
   167f6:	defc 1fef      	addaw #8175,%sp
   167fa:	7bfc 21bd      	mvzw #8637,%d5
   167fe:	dfc2           	addal %d2,%sp
   16800:	0fef 7bf8      	bset %d7,%sp@(31736)
   16804:	0fbb           	.short 0x0fbb
   16806:	eef8           	.short 0xeef8
   16808:	1ffe           	.short 0x1ffe
   1680a:	bffc 3bdf fdee 	cmpal #1004535278,%sp
   16810:	3fe3           	.short 0x3fe3
   16812:	e3f6 27f9 cff2 	lslw @(ffffffffcff20fff)@(0)
   16818:	0fff
   1681a:	fff8           	.short 0xfff8
   1681c:	0eff           	.short 0x0eff
   1681e:	fff8           	.short 0xfff8
   16820:	0eff           	.short 0x0eff
   16822:	ffb8           	.short 0xffb8
   16824:	04ff           	.short 0x04ff
   16826:	ff90 00ff      	cp1stl %d0,%a0@,#1,#255
   1682a:	ff80 00fd      	cp1stl %d0,%d0,#1,#253
   1682e:	df80           	addxl %d0,%d7
   16830:	00fd           	.short 0x00fd
   16832:	df80           	addxl %d0,%d7
   16834:	00fd           	.short 0x00fd
   16836:	df80           	addxl %d0,%d7
   16838:	00fd           	.short 0x00fd
   1683a:	5f80           	subql #7,%d0
   1683c:	00fa           	.short 0x00fa
   1683e:	2f00           	movel %d0,%sp@-
   16840:	0079 4f00 0078 	oriw #20224,0x780e00
   16846:	0e00
   16848:	003c 1e00      	orib #0,%ccr
   1684c:	001c 1c00      	orib #0,%a4@+
   16850:	071f           	btst %d3,%sp@+
   16852:	fc70           	.short 0xfc70
   16854:	1fff           	.short 0x1fff
   16856:	fffc           	.short 0xfffc
   16858:	1fff           	.short 0x1fff
   1685a:	fffc           	.short 0xfffc
   1685c:	21ff           	.short 0x21ff
   1685e:	ffc2           	.short 0xffc2
   16860:	0fff           	.short 0x0fff
   16862:	fff8           	.short 0xfff8
   16864:	0fff           	.short 0x0fff
   16866:	fff8           	.short 0xfff8
   16868:	1fff           	.short 0x1fff
   1686a:	fffc           	.short 0xfffc
   1686c:	3bff           	.short 0x3bff
   1686e:	ffee           	.short 0xffee
   16870:	3fff           	.short 0x3fff
   16872:	fff6           	.short 0xfff6
   16874:	27ff           	.short 0x27ff
   16876:	fff2           	.short 0xfff2
   16878:	0fff           	.short 0x0fff
   1687a:	fff8           	.short 0xfff8
   1687c:	0eff           	.short 0x0eff
   1687e:	fff8           	.short 0xfff8
   16880:	0eff           	.short 0x0eff
   16882:	ffb8           	.short 0xffb8
   16884:	04ff           	.short 0x04ff
   16886:	ff90 00ff      	cp1stl %d0,%a0@,#1,#255
   1688a:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   1688e:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   16892:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   16896:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   1689a:	7f80           	mvzb %d0,%d7
   1689c:	00fb           	.short 0x00fb
   1689e:	6f00 0079      	blew 0x16919
   168a2:	4f00           	chkl %d0,%d7
   168a4:	0078 0e00 003c 	oriw #3584,0x3c
   168aa:	1e00           	moveb %d0,%d7
   168ac:	001c 1c00      	orib #0,%a4@+
   168b0:	071f           	btst %d3,%sp@+
   168b2:	ec70           	roxrw %d6,%d0
   168b4:	19f6           	.short 0x19f6
   168b6:	b7dc           	cmpal %a4@+,%a3
   168b8:	1efb efbc 0177 	moveb %zpc@(177f640)@(0,%fp:l:8),%sp@+
   168be:	f640
   168c0:	0e5f           	.short 0x0e5f
   168c2:	fd38           	.short 0xfd38
   168c4:	08f6 b788 16eb 	bset #-120,%fp@(ffffffffffffffeb,%d1:w:8)
   168ca:	ebb4           	roxll %d5,%d4
   168cc:	2a77 f72a 3cfd 	moveal %sp@(3cfd,%sp:w:8)@(5f96),%a5
   168d2:	5f96
   168d4:	05bf           	.short 0x05bf
   168d6:	fed0           	.short 0xfed0
   168d8:	0b6f 7b68      	bchg %d5,%sp@(31592)
   168dc:	0a11 c468      	eorib #104,%a1@
   168e0:	0ec8           	.short 0x0ec8
   168e2:	89b8 00c8      	orl %d4,0xc8
   168e6:	0980           	bclr %d4,%d0
   168e8:	0102           	btst %d0,%d2
   168ea:	2040           	moveal %d0,%a0
   168ec:	010a 2840      	movepw %a2@(10304),%d0
   168f0:	030f f860      	movepw %sp@(-1952),%d1
   168f4:	0227 7220      	andib #32,%sp@-
   168f8:	0367           	bchg %d1,%sp@-
   168fa:	7360           	mvsw %a0@-,%d1
   168fc:	0203 6020      	andib #32,%d3
   16900:	0341           	bchg %d1,%d1
   16902:	4160           	.short 0x4160
   16904:	0340           	bchg %d1,%d0
   16906:	0160           	bchg %d0,%a0@-
   16908:	01c0           	bset %d0,%d0
   1690a:	01c0           	bset %d0,%d0
   1690c:	00e0           	.short 0x00e0
   1690e:	0380           	bclr %d1,%d0
   16910:	071f           	btst %d3,%sp@+
   16912:	fc70           	.short 0xfc70
   16914:	11ff           	.short 0x11ff
   16916:	ffc4           	.short 0xffc4
   16918:	0eff           	.short 0x0eff
   1691a:	ffb8           	.short 0xffb8
   1691c:	217f           	.short 0x217f
   1691e:	ff42 0f7f      	cp1stw %d0,%d2,#8,#383
   16922:	ff78           	.short 0xff78
   16924:	08ff           	.short 0x08ff
   16926:	ff88 16ff      	cp1stl %d1,%a0,#4,#255
   1692a:	ffb4           	.short 0xffb4
   1692c:	2bff           	.short 0x2bff
   1692e:	ffea           	.short 0xffea
   16930:	2c7f           	.short 0x2c7f
   16932:	ff12 257f      	cp1stb %d2,%a2@,#3,#383
   16936:	ff52 0b9f      	cp1stw %d0,%a2@,#6,#415
   1693a:	fce8           	.short 0xfce8
   1693c:	0aa5 d2e8 0aa4 	eoril #-756544860,%a5@-
   16942:	92a8 049e      	subl %a0@(1182),%d1
   16946:	3c90           	movew %a0@,%fp@
   16948:	0105           	btst %d0,%d5
   1694a:	5040           	addqw #8,%d0
   1694c:	0107           	btst %d0,%d7
   1694e:	7040           	moveq #64,%d0
   16950:	021f 7c20      	andib #32,%sp@+
   16954:	0227 f220      	andib #32,%sp@-
   16958:	0227 7220      	andib #32,%sp@-
   1695c:	0243 6120      	andiw #24864,%d3
   16960:	0241 4120      	andiw #16672,%d1
   16964:	0240 0120      	andiw #288,%d0
   16968:	0140           	bchg %d0,%d0
   1696a:	0140           	bchg %d0,%d0
   1696c:	00a0 0280 0717 	oril #41944855,%a0@-
   16972:	7470           	moveq #112,%d2
   16974:	1fbd           	.short 0x1fbd
   16976:	defc 1fef      	addaw #8175,%sp
   1697a:	7bfc 21bd      	mvzw #8637,%d5
   1697e:	dfc2           	addal %d2,%sp
   16980:	0fef 7bf8      	bset %d7,%sp@(31736)
   16984:	0fbb           	.short 0x0fbb
   16986:	eef8           	.short 0xeef8
   16988:	1ffe           	.short 0x1ffe
   1698a:	bffc 3bdf fdee 	cmpal #1004535278,%sp
   16990:	3fe3           	.short 0x3fe3
   16992:	e3f6 27f9 cff2 	lslw @(ffffffffcff20fff)@(0)
   16998:	0fff
   1699a:	fff8           	.short 0xfff8
   1699c:	0eff           	.short 0x0eff
   1699e:	fff8           	.short 0xfff8
   169a0:	0eff           	.short 0x0eff
   169a2:	ffb8           	.short 0xffb8
   169a4:	04ff           	.short 0x04ff
   169a6:	ff90 01ff      	cp1stl %d0,%a0@,#1,#511
   169aa:	ffc0           	.short 0xffc0
   169ac:	01fd           	.short 0x01fd
   169ae:	dfc0           	addal %d0,%sp
   169b0:	03fd           	.short 0x03fd
   169b2:	dfe0           	addal %a0@-,%sp
   169b4:	03e5           	bset %d1,%a5@-
   169b6:	d3e0           	addal %a0@-,%a1
   169b8:	03e5           	bset %d1,%a5@-
   169ba:	53e0           	sls %a0@-
   169bc:	03c2           	bset %d1,%d2
   169be:	21e0 03c1      	movel %a0@-,0x3c1
   169c2:	41e0           	.short 0x41e0
   169c4:	03c0           	bset %d1,%d0
   169c6:	01e0           	bset %d0,%a0@-
   169c8:	01c0           	bset %d0,%d0
   169ca:	01c0           	bset %d0,%d0
   169cc:	00e0           	.short 0x00e0
   169ce:	0380           	bclr %d1,%d0
   169d0:	071f           	btst %d3,%sp@+
   169d2:	fc70           	.short 0xfc70
   169d4:	1fff           	.short 0x1fff
   169d6:	fffc           	.short 0xfffc
   169d8:	1fff           	.short 0x1fff
   169da:	fffc           	.short 0xfffc
   169dc:	21ff           	.short 0x21ff
   169de:	ffc2           	.short 0xffc2
   169e0:	0fff           	.short 0x0fff
   169e2:	fff8           	.short 0xfff8
   169e4:	0fff           	.short 0x0fff
   169e6:	fff8           	.short 0xfff8
   169e8:	1fff           	.short 0x1fff
   169ea:	fffc           	.short 0xfffc
   169ec:	3bff           	.short 0x3bff
   169ee:	ffee           	.short 0xffee
   169f0:	3fff           	.short 0x3fff
   169f2:	fff6           	.short 0xfff6
   169f4:	27ff           	.short 0x27ff
   169f6:	fff2           	.short 0xfff2
   169f8:	0fff           	.short 0x0fff
   169fa:	fff8           	.short 0xfff8
   169fc:	0eff           	.short 0x0eff
   169fe:	fff8           	.short 0xfff8
   16a00:	0eff           	.short 0x0eff
   16a02:	ffb8           	.short 0xffb8
   16a04:	04ff           	.short 0x04ff
   16a06:	ff90 01ff      	cp1stl %d0,%a0@,#1,#511
   16a0a:	ffc0           	.short 0xffc0
   16a0c:	01ff           	.short 0x01ff
   16a0e:	ffc0           	.short 0xffc0
   16a10:	03ff           	.short 0x03ff
   16a12:	ffe0           	.short 0xffe0
   16a14:	03e7           	bset %d1,%sp@-
   16a16:	f3e0           	.short 0xf3e0
   16a18:	03e7           	bset %d1,%sp@-
   16a1a:	73e0           	mvzw %a0@-,%d1
   16a1c:	03c3           	bset %d1,%d3
   16a1e:	61e0           	bsrs 0x16a00
   16a20:	03c1           	bset %d1,%d1
   16a22:	41e0           	.short 0x41e0
   16a24:	03c0           	bset %d1,%d0
   16a26:	01e0           	bset %d0,%a0@-
   16a28:	01c0           	bset %d0,%d0
   16a2a:	01c0           	bset %d0,%d0
   16a2c:	00e0           	.short 0x00e0
   16a2e:	0380           	bclr %d1,%d0
   16a30:	071f           	btst %d3,%sp@+
   16a32:	ec70           	roxrw %d6,%d0
   16a34:	19f6           	.short 0x19f6
   16a36:	b7dc           	cmpal %a4@+,%a3
   16a38:	1efb efbc 0177 	moveb %zpc@(177f640)@(0,%fp:l:8),%sp@+
   16a3e:	f640
   16a40:	0e5f           	.short 0x0e5f
   16a42:	fd38           	.short 0xfd38
   16a44:	08f6 b788 16eb 	bset #-120,%fp@(ffffffffffffffeb,%d1:w:8)
   16a4a:	ebb4           	roxll %d5,%d4
   16a4c:	2a77 f72a 3cfd 	moveal %sp@(3cfd,%sp:w:8)@(5f96),%a5
   16a52:	5f96
   16a54:	05bf           	.short 0x05bf
   16a56:	fed0           	.short 0xfed0
   16a58:	0b6f 7b68      	bchg %d5,%sp@(31592)
   16a5c:	0a31 c668 0fd8 	eorib #104,@(0)
   16a62:	8df8 0300      	divsw 0x300,%d6
   16a66:	0060 020a      	oriw #522,%a0@-
   16a6a:	2820           	movel %a0@-,%d4
   16a6c:	062a 2a30 04e7 	addib #48,%a2@(1255)
   16a72:	f390           	.short 0xf390
   16a74:	0d87           	bclr %d6,%d7
   16a76:	70d8           	moveq #-40,%d0
   16a78:	0d07           	btst %d6,%d7
   16a7a:	7058           	moveq #88,%d0
   16a7c:	0d03           	btst %d6,%d3
   16a7e:	6058           	bras 0x16ad8
   16a80:	0701           	btst %d3,%d1
   16a82:	4070 0100      	negxw %a0@(0,%d0:w)
   16a86:	0040 0000      	oriw #0,%d0
   16a8a:	0000 0000      	orib #0,%d0
   16a8e:	0000 071f      	orib #31,%d0
   16a92:	fc70           	.short 0xfc70
   16a94:	11ff           	.short 0x11ff
   16a96:	ffc4           	.short 0xffc4
   16a98:	0eff           	.short 0x0eff
   16a9a:	ffb8           	.short 0xffb8
   16a9c:	217f           	.short 0x217f
   16a9e:	ff42 0f7f      	cp1stw %d0,%d2,#8,#383
   16aa2:	ff78           	.short 0xff78
   16aa4:	08ff           	.short 0x08ff
   16aa6:	ff88 16ff      	cp1stl %d1,%a0,#4,#255
   16aaa:	ffb4           	.short 0xffb4
   16aac:	2bff           	.short 0x2bff
   16aae:	ffea           	.short 0xffea
   16ab0:	2c7f           	.short 0x2c7f
   16ab2:	ff12 257f      	cp1stb %d2,%a2@,#3,#383
   16ab6:	ff52 0b9f      	cp1stw %d0,%a2@,#6,#415
   16aba:	fce8           	.short 0xfce8
   16abc:	0aa5 d2e8 0b84 	eoril #-756544636,%a5@-
   16ac2:	90e8 033e      	subaw %a0@(830),%a0
   16ac6:	3e60           	moveaw %a0@-,%sp
   16ac8:	0205 5020      	andib #32,%d5
   16acc:	041f 7c10      	subib #16,%sp@+
   16ad0:	0467 7310      	subiw #29456,%sp@-
   16ad4:	0887 f088      	bclr #-120,%d7
   16ad8:	0907           	btst %d4,%d7
   16ada:	7048           	moveq #72,%d0
   16adc:	0903           	btst %d4,%d3
   16ade:	6048           	bras 0x16b28
   16ae0:	0501           	btst %d2,%d1
   16ae2:	4050           	negxw %a0@
   16ae4:	0300           	btst %d1,%d0
   16ae6:	0060 0000      	oriw #0,%a0@-
   16aea:	0000 0000      	orib #0,%d0
   16aee:	0000 0717      	orib #23,%d0
   16af2:	7470           	moveq #112,%d2
   16af4:	1fbd           	.short 0x1fbd
   16af6:	defc 1fef      	addaw #8175,%sp
   16afa:	7bfc 21bd      	mvzw #8637,%d5
   16afe:	dfc2           	addal %d2,%sp
   16b00:	0fef 7bf8      	bset %d7,%sp@(31736)
   16b04:	0fbb           	.short 0x0fbb
   16b06:	eef8           	.short 0xeef8
   16b08:	1ffe           	.short 0x1ffe
   16b0a:	bffc 3bdf fdee 	cmpal #1004535278,%sp
   16b10:	3fe3           	.short 0x3fe3
   16b12:	e3f6 27f9 cff2 	lslw @(ffffffffcff20fff)@(0)
   16b18:	0fff
   16b1a:	fff8           	.short 0xfff8
   16b1c:	0eff           	.short 0x0eff
   16b1e:	fff8           	.short 0xfff8
   16b20:	0fff           	.short 0x0fff
   16b22:	fff8           	.short 0xfff8
   16b24:	03ff           	.short 0x03ff
   16b26:	ffe0           	.short 0xffe0
   16b28:	03ff           	.short 0x03ff
   16b2a:	ffe0           	.short 0xffe0
   16b2c:	07fd           	.short 0x07fd
   16b2e:	dff0 07e5 d3f0 	addal @(ffffffffffffd3f0)@(0),%sp
   16b34:	0f85           	bclr %d7,%d5
   16b36:	d0f8 0f05      	addaw 0xf05,%a0
   16b3a:	5078 0f02      	addqw #8,0xf02
   16b3e:	2078 0701      	moveal 0x701,%a0
   16b42:	4070 0300      	negxw %a0@(0,%d0:w:2)
   16b46:	0060 0000      	oriw #0,%a0@-
   16b4a:	0000 0000      	orib #0,%d0
   16b4e:	0000 071f      	orib #31,%d0
   16b52:	fc70           	.short 0xfc70
   16b54:	1fff           	.short 0x1fff
   16b56:	fffc           	.short 0xfffc
   16b58:	1fff           	.short 0x1fff
   16b5a:	fffc           	.short 0xfffc
   16b5c:	21ff           	.short 0x21ff
   16b5e:	ffc2           	.short 0xffc2
   16b60:	0fff           	.short 0x0fff
   16b62:	fff8           	.short 0xfff8
   16b64:	0fff           	.short 0x0fff
   16b66:	fff8           	.short 0xfff8
   16b68:	1fff           	.short 0x1fff
   16b6a:	fffc           	.short 0xfffc
   16b6c:	3bff           	.short 0x3bff
   16b6e:	ffee           	.short 0xffee
   16b70:	3fff           	.short 0x3fff
   16b72:	fff6           	.short 0xfff6
   16b74:	27ff           	.short 0x27ff
   16b76:	fff2           	.short 0xfff2
   16b78:	0fff           	.short 0x0fff
   16b7a:	fff8           	.short 0xfff8
   16b7c:	0eff           	.short 0x0eff
   16b7e:	fff8           	.short 0xfff8
   16b80:	0fff           	.short 0x0fff
   16b82:	fff8           	.short 0xfff8
   16b84:	03ff           	.short 0x03ff
   16b86:	ffe0           	.short 0xffe0
   16b88:	03ff           	.short 0x03ff
   16b8a:	ffe0           	.short 0xffe0
   16b8c:	07ff           	.short 0x07ff
   16b8e:	fff0           	.short 0xfff0
   16b90:	07e7           	bset %d3,%sp@-
   16b92:	f3f0           	.short 0xf3f0
   16b94:	0f87           	bclr %d7,%d7
   16b96:	f0f8           	.short 0xf0f8
   16b98:	0f07           	btst %d7,%d7
   16b9a:	7078           	moveq #120,%d0
   16b9c:	0f03           	btst %d7,%d3
   16b9e:	6078           	bras 0x16c18
   16ba0:	0701           	btst %d3,%d1
   16ba2:	4070 0300      	negxw %a0@(0,%d0:w:2)
   16ba6:	0060 0000      	oriw #0,%a0@-
   16baa:	0000 0000      	orib #0,%d0
   16bae:	0000 071f      	orib #31,%d0
   16bb2:	ec70           	roxrw %d6,%d0
   16bb4:	19f6           	.short 0x19f6
   16bb6:	b7dc           	cmpal %a4@+,%a3
   16bb8:	1efb efbc 0177 	moveb %zpc@(177f640)@(0,%fp:l:8),%sp@+
   16bbe:	f640
   16bc0:	0e5f           	.short 0x0e5f
   16bc2:	fd38           	.short 0xfd38
   16bc4:	08f6 b788 16eb 	bset #-120,%fp@(ffffffffffffffeb,%d1:w:8)
   16bca:	ebb4           	roxll %d5,%d4
   16bcc:	2a77 f72a 3cfd 	moveal %sp@(3cfd,%sp:w:8)@(5f96),%a5
   16bd2:	5f96
   16bd4:	05bf           	.short 0x05bf
   16bd6:	fed0           	.short 0xfed0
   16bd8:	0b6f 7b68      	bchg %d5,%sp@(31592)
   16bdc:	0a31 c668 0fd8 	eorib #104,@(0)
   16be2:	8df8 0300      	divsw 0x300,%d6
   16be6:	0060 020a      	oriw #522,%a0@-
   16bea:	2820           	movel %a0@-,%d4
   16bec:	062a 3a30 04e7 	addib #48,%a2@(1255)
   16bf2:	f390           	.short 0xf390
   16bf4:	0d87           	bclr %d6,%d7
   16bf6:	70d8           	moveq #-40,%d0
   16bf8:	0d07           	btst %d6,%d7
   16bfa:	7058           	moveq #88,%d0
   16bfc:	0d07           	btst %d6,%d7
   16bfe:	7058           	moveq #88,%d0
   16c00:	0707           	btst %d3,%d7
   16c02:	7070           	moveq #112,%d0
   16c04:	0107           	btst %d0,%d7
   16c06:	7040           	moveq #64,%d0
   16c08:	0003 6000      	orib #0,%d3
   16c0c:	0001 4000      	orib #0,%d1
   16c10:	071f           	btst %d3,%sp@+
   16c12:	fc70           	.short 0xfc70
   16c14:	11ff           	.short 0x11ff
   16c16:	ffc4           	.short 0xffc4
   16c18:	0eff           	.short 0x0eff
   16c1a:	ffb8           	.short 0xffb8
   16c1c:	217f           	.short 0x217f
   16c1e:	ff42 0f7f      	cp1stw %d0,%d2,#8,#383
   16c22:	ff78           	.short 0xff78
   16c24:	08ff           	.short 0x08ff
   16c26:	ff88 16ff      	cp1stl %d1,%a0,#4,#255
   16c2a:	ffb4           	.short 0xffb4
   16c2c:	2bff           	.short 0x2bff
   16c2e:	ffea           	.short 0xffea
   16c30:	2c7f           	.short 0x2c7f
   16c32:	ff12 257f      	cp1stb %d2,%a2@,#3,#383
   16c36:	ff52 0b9f      	cp1stw %d0,%a2@,#6,#415
   16c3a:	fce8           	.short 0xfce8
   16c3c:	0aa5 d2e8 0b84 	eoril #-756544636,%a5@-
   16c42:	90e8 033e      	subaw %a0@(830),%a0
   16c46:	3e60           	moveaw %a0@-,%sp
   16c48:	0205 5020      	andib #32,%d5
   16c4c:	041f 7c10      	subib #16,%sp@+
   16c50:	0467 7310      	subiw #29456,%sp@-
   16c54:	0887 f088      	bclr #-120,%d7
   16c58:	0907           	btst %d4,%d7
   16c5a:	7048           	moveq #72,%d0
   16c5c:	0907           	btst %d4,%d7
   16c5e:	7048           	moveq #72,%d0
   16c60:	0507           	btst %d2,%d7
   16c62:	7050           	moveq #80,%d0
   16c64:	0307           	btst %d1,%d7
   16c66:	7060           	moveq #96,%d0
   16c68:	0003 6000      	orib #0,%d3
   16c6c:	0001 4000      	orib #0,%d1
   16c70:	0717           	btst %d3,%sp@
   16c72:	7470           	moveq #112,%d2
   16c74:	1fbd           	.short 0x1fbd
   16c76:	defc 1fef      	addaw #8175,%sp
   16c7a:	7bfc 21bd      	mvzw #8637,%d5
   16c7e:	dfc2           	addal %d2,%sp
   16c80:	0fef 7bf8      	bset %d7,%sp@(31736)
   16c84:	0fbb           	.short 0x0fbb
   16c86:	eef8           	.short 0xeef8
   16c88:	1ffe           	.short 0x1ffe
   16c8a:	bffc 3bdf fdee 	cmpal #1004535278,%sp
   16c90:	3fe3           	.short 0x3fe3
   16c92:	e3f6 27f9 cff2 	lslw @(ffffffffcff20fff)@(0)
   16c98:	0fff
   16c9a:	fff8           	.short 0xfff8
   16c9c:	0eff           	.short 0x0eff
   16c9e:	fff8           	.short 0xfff8
   16ca0:	0fff           	.short 0x0fff
   16ca2:	fff8           	.short 0xfff8
   16ca4:	03ff           	.short 0x03ff
   16ca6:	ffe0           	.short 0xffe0
   16ca8:	03ff           	.short 0x03ff
   16caa:	ffe0           	.short 0xffe0
   16cac:	07fd           	.short 0x07fd
   16cae:	dff0 07e5 d3f0 	addal @(ffffffffffffd3f0)@(0),%sp
   16cb4:	0f85           	bclr %d7,%d5
   16cb6:	d0f8 0f05      	addaw 0xf05,%a0
   16cba:	5078 0f05      	addqw #8,0xf05
   16cbe:	5078 0705      	addqw #8,0x705
   16cc2:	5070 0305      	addqw #8,%a0@(0)@(0,%d0:w:2)
   16cc6:	5060           	addqw #8,%a0@-
   16cc8:	0002 2000      	orib #0,%d2
   16ccc:	0001 4000      	orib #0,%d1
   16cd0:	071f           	btst %d3,%sp@+
   16cd2:	fc70           	.short 0xfc70
   16cd4:	1fff           	.short 0x1fff
   16cd6:	fffc           	.short 0xfffc
   16cd8:	1fff           	.short 0x1fff
   16cda:	fffc           	.short 0xfffc
   16cdc:	21ff           	.short 0x21ff
   16cde:	ffc2           	.short 0xffc2
   16ce0:	0fff           	.short 0x0fff
   16ce2:	fff8           	.short 0xfff8
   16ce4:	0fff           	.short 0x0fff
   16ce6:	fff8           	.short 0xfff8
   16ce8:	1fff           	.short 0x1fff
   16cea:	fffc           	.short 0xfffc
   16cec:	3bff           	.short 0x3bff
   16cee:	ffee           	.short 0xffee
   16cf0:	3fff           	.short 0x3fff
   16cf2:	fff6           	.short 0xfff6
   16cf4:	27ff           	.short 0x27ff
   16cf6:	fff2           	.short 0xfff2
   16cf8:	0fff           	.short 0x0fff
   16cfa:	fff8           	.short 0xfff8
   16cfc:	0eff           	.short 0x0eff
   16cfe:	fff8           	.short 0xfff8
   16d00:	0fff           	.short 0x0fff
   16d02:	fff8           	.short 0xfff8
   16d04:	03ff           	.short 0x03ff
   16d06:	ffe0           	.short 0xffe0
   16d08:	03ff           	.short 0x03ff
   16d0a:	ffe0           	.short 0xffe0
   16d0c:	07ff           	.short 0x07ff
   16d0e:	fff0           	.short 0xfff0
   16d10:	07e7           	bset %d3,%sp@-
   16d12:	f3f0           	.short 0xf3f0
   16d14:	0f87           	bclr %d7,%d7
   16d16:	f0f8           	.short 0xf0f8
   16d18:	0f07           	btst %d7,%d7
   16d1a:	7078           	moveq #120,%d0
   16d1c:	0f07           	btst %d7,%d7
   16d1e:	7078           	moveq #120,%d0
   16d20:	0707           	btst %d3,%d7
   16d22:	7070           	moveq #112,%d0
   16d24:	0307           	btst %d1,%d7
   16d26:	7060           	moveq #96,%d0
   16d28:	0003 6000      	orib #0,%d3
   16d2c:	0001 4000      	orib #0,%d1
	...
   17600:	0080 0000 0000 	oril #0,%d0
	...
   17622:	eece           	.short 0xeece
	...
   17644:	2156 fc00      	movel %fp@,%a0@(-1024)
	...
   17664:	0000 5ec5      	orib #-59,%d0
   17668:	3de0           	.short 0x3de0
	...
   17686:	0000 ef7f      	orib #127,%d0
   1768a:	03e8 0000      	bset %d1,%a0@(0)
	...
   176aa:	0b79 2c0f 0000 	bchg %d5,0x2c0f0000
	...
   176cc:	2bb4 5c36 e800 	movel %a4@(36,%d5:l:4),%a5@(0,%fp:l)
	...
   176ee:	264a           	moveal %a2,%a3
   176f0:	f98c           	.short 0xf98c
   176f2:	2200           	movel %d0,%d1
	...
   17710:	839e           	orl %d1,%fp@+
   17712:	77d8           	mvzw %a0@+,%d3
   17714:	6500 0000      	bcsw 0x17716
	...
   17730:	0000 4082      	orib #-126,%d0
   17734:	93be           	.short 0x93be
   17736:	01c0           	bset %d0,%d0
	...
   17754:	0881 f910      	bclr #16,%d1
   17758:	873c           	.short 0x873c
   1775a:	8000           	orb %d0,%d0
	...
   17774:	0000 9844      	orib #68,%d0
   17778:	568f           	addql #3,%sp
   1777a:	3a0b           	movew %a3,%d5
   1777c:	c000           	andb %d0,%d0
	...
   17796:	0000 4501      	orib #1,%d0
   1779a:	22b8 2682      	movel 0x2682,%a1@
   1779e:	9000           	subb %d0,%d0
	...
   177b8:	0000 4ba0      	orib #-96,%d0
   177bc:	0ca1 07e2 0c00 	cmpil #132254720,%a1@-
	...
   177da:	0000 01ed      	orib #-19,%d0
   177de:	0000 3400      	orib #0,%d0
   177e2:	0500           	btst %d2,%d0
	...
   177fc:	0000 1418      	orib #24,%d0
   17800:	923f           	.short 0x923f
   17802:	027b           	.short 0x027b
   17804:	ace0 0000      	macw %d0l,%d0l,%a0@-,%fp
	...
   17820:	080f           	.short 0x080f
   17822:	e888           	lsrl #4,%d0
   17824:	f27b           	.short 0xf27b
   17826:	7832           	moveq #50,%d4
	...
   17840:	0000 da19      	orib #25,%d0
   17844:	a63b           	.short 0xa63b
   17846:	970d           	subxb %a5@-,%a3@-
   17848:	0010 0000      	orib #0,%a0@
	...
   17864:	7eb5           	moveq #-75,%d7
   17866:	120a           	.short 0x120a
   17868:	7da0           	mvzb %a0@-,%d6
   1786a:	db22           	addb %d5,%a2@-
	...
   17884:	0000 f395      	orib #-107,%d0
   17888:	aae0           	.short 0xaae0
   1788a:	5dc2           	slt %d2
   1788c:	cac1           	muluw %d1,%d5
   1788e:	2000           	movel %d0,%d0
   17890:	0000 000f      	orib #15,%d0
   17894:	c3ff           	.short 0xc3ff
   17896:	c7ff           	.short 0xc7ff
   17898:	a000 0000      	macw %d0l,%d0l
	...
   178a8:	e521           	aslb %d2,%d1
   178aa:	3918           	movew %a0@+,%a4@-
   178ac:	00df           	.short 0x00df
   178ae:	8bc2           	divsw %d2,%d5
   178b0:	79ff           	.short 0x79ff
   178b2:	ffff           	.short 0xffff
   178b4:	fff8           	.short 0xfff8
   178b6:	7802           	moveq #2,%d4
   178b8:	1a77           	.short 0x1a77
   178ba:	ffc0           	.short 0xffc0
	...
   178c8:	0000 eff0      	orib #-16,%d0
   178cc:	1c06           	moveb %d6,%d6
   178ce:	05d8           	bset %d2,%a0@+
   178d0:	4284           	clrl %d4
   178d2:	1000           	moveb %d0,%d0
   178d4:	0000 03cf      	orib #-49,%d0
   178d8:	31f8 1403 ea3e 	movew 0x1403,0xffffea3e
	...
   178ea:	0000 e7b7      	orib #-73,%d0
   178ee:	047a           	.short 0x047a
   178f0:	9878 df13      	subw 0xffffdf13,%d4
   178f4:	7fff           	.short 0x7fff
   178f6:	ffff           	.short 0xffff
   178f8:	fe5c 583d      	cp1ldw %a4@+,%d5,#5,#61
   178fc:	e588           	lsll #2,%d0
   178fe:	6c80           	bges 0x17880
   17900:	7000           	moveq #0,%d0
	...
   1790e:	77f3 2a09      	mvzw %a3@(9,%d2:l:2),%d3
   17912:	f823           	.short 0xf823
   17914:	f68f           	.short 0xf68f
   17916:	5015           	addqb #8,%a5@
   17918:	542a 71f0      	addqb #2,%a2@(29168)
   1791c:	0d8f 00d9      	movepw %d6,%sp@(217)
   17920:	9ffc 0700 0000 	subal #117440512,%sp
	...
   1792e:	0000 a996      	orib #-106,%d0
   17932:	b741           	eorw %d3,%d1
   17934:	580e           	.short 0x580e
   17936:	e084           	asrl #8,%d4
   17938:	0000 0001      	orib #1,%d0
   1793c:	ebc4           	.short 0xebc4
   1793e:	a45a           	.short 0xa45a
   17940:	f213           	.short 0xf213
   17942:	30c6           	movew %d6,%a0@+
   17944:	d078 0000      	addw 0x0,%d0
	...
   17950:	0000 fd26      	orib #38,%d0
   17954:	fac1           	.short 0xfac1
   17956:	0c13 a31f      	cmpib #31,%a3@
   1795a:	ffff           	.short 0xffff
   1795c:	ffff           	.short 0xffff
   1795e:	3f1b           	movew %a3@+,%sp@-
   17960:	0c91 53ce cc53 	cmpil #1406061651,%a1@
   17966:	ce07           	andb %d7,%d7
   17968:	8000           	orb %d0,%d0
	...
   17972:	0000 0c6d      	orib #109,%d0
   17976:	2f24           	movel %a4@-,%sp@-
   17978:	1d20           	moveb %a0@-,%fp@-
   1797a:	ce00           	andb %d0,%d7
   1797c:	0000 0008      	orib #8,%d0
   17980:	f855           	.short 0xf855
   17982:	044a           	.short 0x044a
   17984:	ac9d b00e      	macw %a6l,%a3l,%a5@+,%d6
   17988:	33e8 7000 0000 	movew %a0@(28672),0x0
   1798e:	0000
   17990:	0000 0000      	orib #0,%d0
   17994:	0000 08b7      	orib #-73,%d0
   17998:	9a6a 93c0      	subw %a2@(-27712),%d5
   1799c:	5f55           	subqw #7,%a5@
   1799e:	0a81 5435 f038 	eoril #1412821048,%d1
   179a4:	7c0d           	moveq #13,%d6
   179a6:	7c18           	moveq #24,%d6
   179a8:	b3cf           	cmpal %sp,%a1
   179aa:	a207 0700      	msacw %d7l,%d1l,>>
	...
   179b6:	0000 01aa      	orib #-86,%d0
   179ba:	c017           	andb %sp@,%d0
   179bc:	d900           	addxb %d0,%d4
   179be:	3800           	movew %d0,%d4
   179c0:	0000 00d7      	orib #-41,%d0
   179c4:	c182           	.short 0xc182
   179c6:	6808           	bvcs 0x179d0
   179c8:	a633           	.short 0xa633
   179ca:	cf91           	andl %d7,%a1@
   179cc:	9ae5           	subaw %a5@-,%a5
   179ce:	c980           	.short 0xc980
	...
   179d8:	0000 0016      	orib #22,%d0
   179dc:	cdb8 30b0      	andl %d6,0x30b0
   179e0:	1000           	moveb %d0,%d0
   179e2:	0000 01df      	orib #-33,%d0
   179e6:	b269 34a9      	cmpw %a1@(13481),%d1
   179ea:	f8a4           	.short 0xf8a4
   179ec:	aa89           	.short 0xaa89
   179ee:	46ec 6088      	movew %a4@(24712),%sr
	...
   179fa:	0000 149c      	orib #-100,%d0
   179fe:	1fdc           	.short 0x1fdc
   17a00:	1b38 0000      	moveb 0x0,%a5@-
   17a04:	0000 023e      	orib #62,%d0
   17a08:	37a4 9a64      	movew %a4@-,%a3@(64,%a1:l:2)
   17a0c:	f8ce           	.short 0xf8ce
   17a0e:	e98b           	lsll #4,%d3
   17a10:	8bce           	.short 0x8bce
   17a12:	80c6           	divuw %d6,%d0
   17a14:	c000           	andb %d0,%d0
	...
   17a1e:	01c8 feba      	movepl %d0,%a0@(-326)
   17a22:	4f20           	chkl %a0@-,%d7
   17a24:	0000 0000      	orib #0,%d0
   17a28:	0e7c           	.short 0x0e7c
   17a2a:	7ec7           	moveq #-57,%d7
   17a2c:	d6f3 dd95      	addaw @(0)@(0,%a5:l:4),%a3
   17a30:	2a92           	movel %a2@,%a5@
   17a32:	6e7a           	bgts 0x17aae
   17a34:	6480           	bccs 0x179b6
   17a36:	9800           	subb %d0,%d4
	...
   17a40:	006d d157 a01e 	oriw #-11945,%a5@(-24546)
   17a46:	0000 0000      	orib #0,%d0
   17a4a:	1978 e9fc ae71 	moveb 0xffffe9fc,%a4@(-20879)
   17a50:	9b3f           	.short 0x9b3f
   17a52:	effc           	.short 0xeffc
   17a54:	aa74           	.short 0xaa74
   17a56:	30a0           	movew %a0@-,%a0@
   17a58:	0700           	btst %d3,%d0
	...
   17a62:	1046           	.short 0x1046
   17a64:	e7b1           	roxll %d3,%d1
   17a66:	811c           	orb %d0,%a4@+
   17a68:	16a0           	moveb %a0@-,%a3@
   17a6a:	2aa8 2bf0      	movel %a0@(11248),%a5@
   17a6e:	0812 0f10      	btst #16,%a2@
   17a72:	0a7d           	.short 0x0a7d
   17a74:	c90d           	abcd %a5@-,%a4@-
   17a76:	bbd1           	cmpal %a1@,%a5
   17a78:	8e99           	orl %a1@+,%d7
   17a7a:	00e0           	.short 0x00e0
	...
   17a84:	88c4           	divuw %d4,%d4
   17a86:	76db           	moveq #-37,%d3
   17a88:	531f           	subqb #1,%sp@+
   17a8a:	ffff           	.short 0xffff
   17a8c:	ffff           	.short 0xffff
   17a8e:	f7e2           	.short 0xf7e2
   17a90:	0444 040e      	subiw #1038,%d4
   17a94:	14ca           	.short 0x14ca
   17a96:	f63a           	.short 0xf63a
   17a98:	8742 aab7      	pack %d2,%d3,#-21833
   17a9c:	9418           	subb %a0@+,%d2
	...
   17aa6:	c582           	.short 0xc582
   17aa8:	53dd           	sls %a5@+
   17aaa:	7d80           	mvzb %d0,%d6
   17aac:	0000 0000      	orib #0,%d0
   17ab0:	8f82 0018      	unpk %d2,%d7,#24
   17ab4:	0844 382d      	bchg #45,%d4
   17ab8:	fb2d 5b95      	wddatab %a5@(23445)
   17abc:	d5b9 c40f 0000 	addl %d2,0xc40f0000
   17ac2:	0000 0000      	orib #0,%d0
   17ac6:	0000 ffc0      	orib #-64,%d0
   17aca:	047d           	.short 0x047d
   17acc:	f800 0000      	tblub %d0,%d0,%d0
   17ad0:	0001 df48      	orib #72,%d1
   17ad4:	8538 10d7      	orb %d2,0x10d7
   17ad8:	23fc f7ad eb23 	movel #-139597021,0xdd88a701
   17ade:	dd88 a701
   17ae2:	c000           	andb %d0,%d0
   17ae4:	0000 0000      	orib #0,%d0
   17ae8:	0000 bbc4      	orib #-60,%d0
   17aec:	0761           	bchg %d3,%a1@-
   17aee:	fc7f           	.short 0xfc7f
   17af0:	ffff           	.short 0xffff
   17af2:	fffe           	.short 0xfffe
   17af4:	3e9c           	movew %a4@+,%sp@
   17af6:	8204           	orb %d4,%d1
   17af8:	517e           	.short 0x517e
   17afa:	4ca3           	.short 0x4ca3
   17afc:	69e0           	bvss 0x17ade
   17afe:	c40b           	.short 0xc40b
   17b00:	e8a4           	asrl %d4,%d4
   17b02:	b3c0           	cmpal %d0,%a1
   17b04:	7000           	moveq #0,%d0
   17b06:	0000 0000      	orib #0,%d0
   17b0a:	0000 f50e      	orib #14,%d0
   17b0e:	06ef 3900 0000 	callm #0,%sp@(0)
   17b14:	0005 7dae      	orib #-82,%d5
   17b18:	e6ec 0454      	rorw %a4@(1108)
   17b1c:	bb67           	eorw %d5,%sp@-
   17b1e:	eef0           	.short 0xeef0
   17b20:	69d0           	bvss 0x17af2
   17b22:	4b9a           	chkw %a2@+,%d5
   17b24:	a0f0           	.short 0xa0f0
   17b26:	1c00           	moveb %d0,%d6
   17b28:	0000 0000      	orib #0,%d0
   17b2c:	0000 f10c      	orib #12,%d0
   17b30:	190f           	.short 0x190f
   17b32:	3e00           	movew %d0,%d7
   17b34:	0000 000e      	orib #14,%d0
   17b38:	fbf7           	.short 0xfbf7
   17b3a:	73db           	mvzw %a3@+,%d1
   17b3c:	a8e2 5642      	macw %d2u,%d5l,>>,%a2@-,%a4
   17b40:	cfbc           	.short 0xcfbc
   17b42:	5392           	subql #1,%a2@
   17b44:	be9d           	cmpl %a5@+,%d7
   17b46:	109c           	moveb %a4@+,%a0@
   17b48:	0700           	btst %d3,%d0
   17b4a:	0000 0000      	orib #0,%d0
   17b4e:	0000 a9f0      	orib #-16,%d0
   17b52:	0001 7d50      	orib #80,%d1
   17b56:	02aa 1511 f632 	andil #353498674,%a2@(29421)
   17b5c:	72ed
   17b5e:	d38f           	addxl %sp@-,%a1@-
   17b60:	8606           	orb %d6,%d3
   17b62:	a7df           	.short 0xa7df
   17b64:	2631 2fe5 ba76 	movel @(ffffffffffffba76)@(0),%d3
   17b6a:	8f80 0000      	unpk %d0,%d7,#0
   17b6e:	0000 0000      	orib #0,%d0
   17b72:	cfbb           	.short 0xcfbb
   17b74:	403c           	.short 0x403c
   17b76:	7fff           	.short 0x7fff
   17b78:	ffff           	.short 0xffff
   17b7a:	ffeb           	.short 0xffeb
   17b7c:	e143           	aslw #8,%d3
   17b7e:	7fdf           	mvzw %sp@+,%d7
   17b80:	a2ff           	.short 0xa2ff
   17b82:	0093 1843 4a9a 	oril #407063194,%a3@
   17b88:	b481           	cmpl %d1,%d2
   17b8a:	47dd           	.short 0x47dd
   17b8c:	fc80 0000      	cp0nop #1
   17b90:	0000 0000      	orib #0,%d0
   17b94:	dfd4           	addal %a4@,%sp
   17b96:	9027           	subb %sp@-,%d0
   17b98:	e000           	asrb #8,%d0
   17b9a:	0000 0077      	orib #119,%d0
   17b9e:	c453           	andw %a3@,%d2
   17ba0:	7bff           	.short 0x7bff
   17ba2:	45ff           	.short 0x45ff
   17ba4:	0890 7c0e      	bclr #14,%a0@
   17ba8:	9e34 d690      	subb %a4@(ffffffffffffff90,%a5:w:8),%d7
   17bac:	f738           	.short 0xf738
   17bae:	70e0           	moveq #-32,%d0
   17bb0:	0000 0000      	orib #0,%d0
   17bb4:	0000 d59d      	orib #-99,%d0
   17bb8:	c76d 7fff      	andw %d3,%a5@(32767)
   17bbc:	ffff           	.short 0xffff
   17bbe:	ff8f 9360      	cp1stl %a1,%sp,#2,#352
   17bc2:	3eee 93eb      	movew %fp@(-27669),%sp@+
   17bc6:	1c9e           	moveb %fp@+,%fp@
   17bc8:	2c01           	movel %d1,%d6
   17bca:	3d7f           	.short 0x3d7f
   17bcc:	ac9c           	.short 0xac9c
   17bce:	e7fc           	.short 0xe7fc
   17bd0:	9a18           	subb %a0@+,%d5
   17bd2:	0000 0000      	orib #0,%d0
   17bd6:	0000 deaf      	orib #-81,%d0
   17bda:	7c01           	moveq #1,%d6
   17bdc:	8000           	orb %d0,%d0
   17bde:	0000 01e7      	orib #-25,%d0
   17be2:	33c8 845d 3f9f 	movew %a0,0x845d3f9f
   17be8:	014d 0807      	movepl %a5@(2055),%d0
   17bec:	3f10           	movew %a0@,%sp@-
   17bee:	5aba           	.short 0x5aba
   17bf0:	80fb 7906 0000 	divuw %pc@(0x17bf2)@(0,%d7:l),%d0
   17bf6:	0000 0000      	orib #0,%d0
   17bfa:	dfa6           	addl %d7,%fp@-
   17bfc:	0817 8000      	btst #0,%sp@
   17c00:	0000 019f      	orib #-97,%d0
   17c04:	e2c1           	.short 0xe2c1
   17c06:	8002           	orb %d2,%d0
   17c08:	0cbf 3d17 9809 	cmpil #1024956425,%d7
   17c0e:	ba13           	cmpb %a3@,%d5
   17c10:	c6cf           	.short 0xc6cf
   17c12:	35f5           	.short 0x35f5
   17c14:	9f81           	subxl %d1,%d7
   17c16:	8000           	orb %d0,%d0
   17c18:	0000 0000      	orib #0,%d0
   17c1c:	efba           	roll %d7,%d2
   17c1e:	a147           	mov3ql #-1,%d7
   17c20:	ffff           	.short 0xffff
   17c22:	ffff           	.short 0xffff
   17c24:	fe3f           	.short 0xfe3f
   17c26:	c3fb 0084      	mulsw %pc@(0x17bac,%d0:w),%d1
   17c2a:	ab08           	.short 0xab08
   17c2c:	9efc 3437      	subaw #13367,%sp
   17c30:	b4c5           	cmpaw %d5,%a2
   17c32:	9e4b           	subw %a3,%d7
   17c34:	be2b 02e0      	cmpb %a3@(736),%d7
   17c38:	4000           	negxb %d0
   17c3a:	0000 0000      	orib #0,%d0
   17c3e:	a7bb           	.short 0xa7bb
   17c40:	a1de           	.short 0xa1de
   17c42:	0000 0000      	orib #0,%d0
   17c46:	077d           	.short 0x077d
   17c48:	d6fb 0504      	addaw %pc@(0x17c4a)@(0,%d0:w:4),%a3
   17c4c:	5144           	subqw #8,%d4
   17c4e:	e87c           	rorw %d4,%d4
   17c50:	6fde           	bles 0x17c30
   17c52:	1381 b256      	moveb %d1,%a1@(56,%a3:w:2)
   17c56:	eb17           	roxlb #5,%d7
   17c58:	e5f2 3000      	roxlw %a2@(0,%d3:w)
   17c5c:	0000 0000      	orib #0,%d0
   17c60:	0633 e580 0000 	addib #-128,%a3@(0,%d0:w)
   17c66:	0000 0c3d      	orib #61,%d0
   17c6a:	d5fe           	.short 0xd5fe
   17c6c:	e008           	lsrb #8,%d0
   17c6e:	5258           	addqw #1,%a0@+
   17c70:	f9ff           	.short 0xf9ff
   17c72:	dfed f57a      	addal %a5@(-2694),%sp
   17c76:	56c9 442b      	dbne %d1,0x1c0a3
   17c7a:	ea76           	roxrw %d5,%d6
   17c7c:	8c00           	orb %d0,%d6
   17c7e:	0000 0000      	orib #0,%d0
   17c82:	1068           	.short 0x1068
   17c84:	df22           	addb %d7,%a2@-
   17c86:	aaea afaa befd 	msacl %a2,%a2,>>,%a2@(-16643)&,%a5
   17c8c:	effd           	.short 0xeffd
   17c8e:	e091           	roxrl #8,%d1
   17c90:	75f2 9f8e bf6b 	mvzw @(0)@(ffffffffffffbf6b,%a1:l:8),%d2
   17c96:	eef3           	.short 0xeef3
   17c98:	9347           	subxw %d7,%d1
   17c9a:	7072           	moveq #114,%d0
   17c9c:	ffbf           	.short 0xffbf
   17c9e:	8200           	orb %d0,%d1
   17ca0:	0000 0000      	orib #0,%d0
   17ca4:	00f1           	.short 0x00f1
   17ca6:	d893           	addl %a3@,%d4
   17ca8:	ffff           	.short 0xffff
   17caa:	ffff           	.short 0xffff
   17cac:	f8f5           	.short 0xf8f5
   17cae:	52fb f70f ada0 	traphil #-149967456
   17cb4:	e80d           	lsrb #4,%d5
   17cb6:	7d48           	mvsw %a0,%d6
   17cb8:	bc9d           	cmpl %a5@+,%d6
   17cba:	b35e           	eorw %d1,%fp@+
   17cbc:	90df           	subaw %sp@+,%a0
   17cbe:	1ec2           	moveb %d2,%sp@+
   17cc0:	4100           	chkl %d0,%d0
   17cc2:	0000 0000      	orib #0,%d0
   17cc6:	2077 2b30 0000 	moveal %sp@(0,%d2:l:2),%a0
   17ccc:	0000
   17cce:	15e4           	.short 0x15e4
   17cd0:	83f6 b735 6fe0 	divsw %fp@(6fe02b1a)@(0,%a3:w:8),%d1
   17cd6:	2b1a
   17cd8:	baac 42b2      	cmpl %a4@(17074),%d5
   17cdc:	abdb           	.short 0xabdb
   17cde:	9185           	subxl %d5,%d0
   17ce0:	82c1           	divuw %d1,%d1
   17ce2:	70c0           	moveq #-64,%d0
   17ce4:	0000 0000      	orib #0,%d0
   17ce8:	1bf7           	.short 0x1bf7
   17cea:	cf7f           	.short 0xcf7f
   17cec:	ffff           	.short 0xffff
   17cee:	ffff           	.short 0xffff
   17cf0:	fbca           	.short 0xfbca
   17cf2:	40ec 0b9e      	movew %sr,%a4@(2974)
   17cf6:	e732           	roxlb %d3,%d2
   17cf8:	0035 3d8a 1a86 	orib #-118,%a5@(ffffffffffffff86,%d1:l:2)
   17cfe:	1a28 a300      	moveb %a0@(-23808),%d5
   17d02:	d0b1 7800      	addl %a1@(0,%d7:l),%d0
   17d06:	0000 0000      	orib #0,%d0
   17d0a:	0903           	btst %d4,%d3
   17d0c:	fec0 0000      	cp1bcbusy 0x17d0e
   17d10:	0000 61c2      	orib #-62,%d0
   17d14:	9051           	subw %a1@,%d0
   17d16:	837f           	.short 0x837f
   17d18:	aaf6           	.short 0xaaf6
   17d1a:	000a           	.short 0x000a
   17d1c:	426c 1d06      	clrw %a4@(7430)
   17d20:	1c62           	.short 0x1c62
   17d22:	c594           	andl %d2,%a4@
   17d24:	e87e           	rorw %d4,%d6
   17d26:	7c10           	moveq #16,%d6
   17d28:	0000 0000      	orib #0,%d0
   17d2c:	9007           	subb %d7,%d0
   17d2e:	deff           	.short 0xdeff
   17d30:	ffff           	.short 0xffff
   17d32:	ffff           	.short 0xffff
   17d34:	f7f2           	.short 0xf7f2
   17d36:	a8a6           	.short 0xa8a6
   17d38:	442e dfea      	negb %fp@(-8214)
   17d3c:	4a14           	tstb %a4@
   17d3e:	40a9 cd18      	negxl %a1@(-13032)
   17d42:	5bea 0bca      	smi %a2@(3018)
   17d46:	fe7c           	.short 0xfe7c
   17d48:	1e38 0000      	moveb 0x0,%d7
   17d4c:	0000 9043      	orib #67,%d0
   17d50:	7cc0           	moveq #-64,%d6
   17d52:	0000 0000      	orib #0,%d0
   17d56:	c3de           	mulsw %fp@+,%d1
   17d58:	50e5           	st %a5@-
   17d5a:	a0b2           	.short 0xa0b2
   17d5c:	bea6           	cmpl %fp@-,%d7
   17d5e:	d12a 12af      	addb %d0,%a2@(4783)
   17d62:	33b5 8425 d47d 	movew %a5@(25,%a0:w:4),%a1@(7d,%a5:w:4)
   17d68:	0f0f 91e4      	movepw %sp@(-28188),%d7
   17d6c:	0000 0000      	orib #0,%d0
   17d70:	910b           	subxb %a3@-,%a0@-
   17d72:	fbff           	.short 0xfbff
   17d74:	ffff           	.short 0xffff
   17d76:	ffff           	.short 0xffff
   17d78:	aff6           	.short 0xaff6
   17d7a:	d1d6           	addal %fp@,%a0
   17d7c:	601f           	bras 0x17d9d
   17d7e:	c9ce           	.short 0xc9ce
   17d80:	645a           	bccs 0x17ddc
   17d82:	456d           	.short 0x456d
   17d84:	f43b           	cpusha nc
   17d86:	e060           	asrw %d0,%d0
   17d88:	9819           	subb %a1@+,%d4
   17d8a:	c347           	exg %d1,%d7
   17d8c:	4708           	.short 0x4708
   17d8e:	0000 0000      	orib #0,%d0
   17d92:	d82f 0300      	addb %sp@(768),%d4
   17d96:	0000 0001      	orib #1,%d0
   17d9a:	c7a6           	andl %d3,%fp@-
   17d9c:	fa8f           	.short 0xfa8f
   17d9e:	f61d 77bc 52a0 	move16 0x77bc52a0,%a5@
   17da4:	8a61           	orw %a1@-,%d5
   17da6:	0ad3           	.short 0x0ad3
   17da8:	84a0           	orl %a0@-,%d2
   17daa:	3005           	movew %d5,%d0
   17dac:	48b1 98c4 0000 	movemw %d2/%d6-%d7/%a3-%a4/%sp,%a1@(0,%d0:w)
   17db2:	0000 d500      	orib #0,%d0
   17db6:	3e00           	movew %d0,%d7
   17db8:	0000 0001      	orib #1,%d0
   17dbc:	2fd3           	.short 0x2fd3
   17dbe:	7586           	mvzb %d6,%d2
   17dc0:	f64e           	.short 0xf64e
   17dc2:	617a           	bsrs 0x17e3e
   17dc4:	7d68 b06b      	mvsw %a0@(-20373),%d6
   17dc8:	1d57 b530      	moveb %sp@,%fp@(-19152)
   17dcc:	60a1           	bras 0x17d6f
   17dce:	6038           	bras 0x17e08
   17dd0:	6772           	beqs 0x17e44
   17dd2:	0000 0000      	orib #0,%d0
   17dd6:	f51c           	pflusha
   17dd8:	5f55           	subqw #7,%a5@
   17dda:	5fea aaaf      	sle %a2@(-21841)
   17dde:	de06           	addb %d6,%d7
   17de0:	2ba9 fb4c 5ce5 	movel %a1@(-1204),%a5@(ffffffffffffffe5,%d5:l:4)
   17de6:	a2c7           	.short 0xa2c7
   17de8:	06e8 0dc7 76f8 	callm #-57,%a0@(30456)
   17dee:	b900           	eorb %d4,%d0
   17df0:	e439           	rorb %d2,%d1
   17df2:	9879 0000 0000 	subw 0x0,%d4
   17df8:	cc10           	andb %a0@,%d6
   17dfa:	3e00           	movew %d0,%d7
   17dfc:	0000 0003      	orib #3,%d0
   17e00:	0c7c f5b7      	cmpiw #-2633,%d4
   17e04:	7be8 d068      	mvzw %a0@(-12184),%d5
   17e08:	ecbb           	rorl %d6,%d3
   17e0a:	e8a8           	lsrl %d4,%d0
   17e0c:	0422 edf8      	subib #-8,%a2@-
   17e10:	7d10           	mvsb %a0@,%d6
   17e12:	bf26           	eorb %d7,%fp@-
   17e14:	6784           	beqs 0x17d9a
   17e16:	8000           	orb %d0,%d0
   17e18:	0000 fe10      	orib #16,%d0
   17e1c:	37ff           	.short 0x37ff
   17e1e:	ffff           	.short 0xffff
   17e20:	ffff           	.short 0xffff
   17e22:	bc39 ec13 c3e0 	cmpb 0xec13c3e0,%d6
   17e28:	4050           	negxw %a0@
   17e2a:	71bd           	.short 0x71bd
   17e2c:	9ff0 0101      	subal %a0@(0,%d0:w)@(0),%sp
   17e30:	fb8e           	.short 0xfb8e
   17e32:	ff40 1f09      	cp1stw %d1,%d0,#8,#265
   17e36:	9336 4000      	subb %d1,%fp@(0,%d4:w)
   17e3a:	0000 fab0      	orib #-80,%d0
   17e3e:	0000 0000      	orib #0,%d0
   17e42:	0006 1831      	orib #49,%d6
   17e46:	ef81           	asll #7,%d1
   17e48:	5f60           	subqw #7,%a0@-
   17e4a:	4020           	negxb %a0@-
   17e4c:	42f5 6570 0013 	movew %ccr,%a5@(13e005)
   17e52:	e005
   17e54:	efc0 06b7      	bfins %d0,%d0,26,%d7
   17e58:	d28f           	addl %sp,%d1
   17e5a:	2000           	movel %d0,%d0
   17e5c:	0000 fbf0      	orib #-16,%d0
   17e60:	0fff           	.short 0x0fff
   17e62:	ffff           	.short 0xffff
   17e64:	ffff           	.short 0xffff
   17e66:	ba61           	cmpw %a1@-,%d5
   17e68:	8de4           	divsw %a4@-,%d6
   17e6a:	74f2           	moveq #-14,%d2
   17e6c:	0056 295e      	oriw #10590,%fp@
   17e70:	5dd2           	slt %a2@
   17e72:	8001           	orb %d1,%d0
   17e74:	c105           	abcd %d5,%d0
   17e76:	fff2           	.short 0xfff2
   17e78:	0248           	.short 0x0248
   17e7a:	9967           	subw %d4,%sp@-
   17e7c:	9000           	subb %d0,%d0
   17e7e:	0000 ff87      	orib #-121,%d0
   17e82:	2000           	movel %d0,%d0
   17e84:	0000 0004      	orib #4,%d0
   17e88:	7ed2           	moveq #-46,%d7
   17e8a:	ba9d           	cmpl %a5@+,%d5
   17e8c:	4cf0 8a8a 29dd 	moveml @(0)@(0),%d1/%d3/%d7/%a1/%a3/%sp
   17e92:	fff0           	.short 0xfff0
   17e94:	2802           	movel %d2,%d4
   17e96:	a48b           	.short 0xa48b
   17e98:	cff4 01b8 70f3 	mulsw @(70f3c800,%d0:w),%d7
   17e9e:	c800
   17ea0:	0000 ff9f      	orib #-97,%d0
   17ea4:	ffff           	.short 0xffff
   17ea6:	ffff           	.short 0xffff
   17ea8:	fffb           	.short 0xfffb
   17eaa:	3fa2 c050      	movew %a2@-,%sp@(50,%a4:w)
   17eae:	01f9 389b 68fe 	bset %d0,0x389b68fe
   17eb4:	b9f2 e64b      	cmpal %a2@(4b,%fp:w:8),%a4
   17eb8:	1616           	moveb %fp@,%d3
   17eba:	0fee 027c      	bset %d7,%fp@(636)
   17ebe:	507c           	.short 0x507c
   17ec0:	e400           	asrb #2,%d0
   17ec2:	0000 ffff      	orib #-1,%d0
   17ec6:	8000           	orb %d0,%d0
   17ec8:	0000 000c      	orib #12,%d0
   17ecc:	7f4b           	mvsw %a3,%d7
   17ece:	7208           	moveq #8,%d1
   17ed0:	47f3 5933 ea57 	lea %a3@(ffffffffea57afb7,%d5:l)@(542caf14),%a3
   17ed6:	afb7 542c af14
   17edc:	1ffd           	.short 0x1ffd
   17ede:	057f           	.short 0x057f
   17ee0:	9d50           	subw %d6,%a0@
   17ee2:	3400           	movew %d0,%d2
   17ee4:	0000 ffff      	orib #-1,%d0
   17ee8:	ffff           	.short 0xffff
   17eea:	ffff           	.short 0xffff
   17eec:	fffa           	.short 0xfffa
   17eee:	fe93 f100      	cp1ldl %a3@,%sp,#1,#256
   17ef2:	2ded           	.short 0x2ded
   17ef4:	9d9d           	subl %d6,%a5@+
   17ef6:	74d5           	moveq #-43,%d2
   17ef8:	fff8           	.short 0xfff8
   17efa:	fddb           	.short 0xfddb
   17efc:	cd2c 0bfb      	andb %d6,%a4@(3067)
   17f00:	8b0b           	sbcd %a3@-,%a5@-
   17f02:	5c3e           	.short 0x5c3e
   17f04:	5c00           	addqb #6,%d0
   17f06:	0000 ffe0      	orib #-32,%d0
   17f0a:	0000 0000      	orib #0,%d0
   17f0e:	001c 7d5f      	orib #95,%a4@+
   17f12:	ee20           	asrb %d7,%d0
   17f14:	00e5           	.short 0x00e5
   17f16:	fa34           	.short 0xfa34
   17f18:	a409 6fff      	msacl %a1,%d2,>>
   17f1c:	5d63           	subqw #6,%a3@-
   17f1e:	3a28 03df      	movew %a0@(991),%d5
   17f22:	b602           	cmpb %d2,%d3
   17f24:	8e08           	.short 0x8e08
   17f26:	e400           	asrb #2,%d0
   17f28:	0000 ff00      	orib #0,%d0
   17f2c:	0000 0000      	orib #0,%d0
   17f30:	0012 f0bd      	orib #-67,%a2@
   17f34:	fb89           	.short 0xfb89
   17f36:	00c1           	bitrev %d1
   17f38:	b5ff           	.short 0xb5ff
   17f3a:	aa01 b7f7      	msacw %d1u,%d5u,>>
   17f3e:	fdd5           	.short 0xfdd5
   17f40:	febc           	.short 0xfebc
   17f42:	017f           	.short 0x017f
   17f44:	4c05           	.short 0x4c05
   17f46:	0347           	bchg %d1,%d7
   17f48:	8200           	orb %d0,%d1
   17f4a:	0000 ffff      	orib #-1,%d0
   17f4e:	aaaf           	.short 0xaaaf
   17f50:	ad55           	mov3ql #6,%a5@
   17f52:	7ffc c257      	mvzw #-15785,%d7
   17f56:	be5a           	cmpw %a2@+,%d7
   17f58:	01aa f563      	bclr %d0,%a2@(-2717)
   17f5c:	3200           	movew %d0,%d1
   17f5e:	5fff           	sle %d7
   17f60:	ff00 efd0      	cp1stb %fp,%d0,#8,#464
   17f64:	007e           	.short 0x007e
   17f66:	ae0b e03c      	macw %a3l,%d7l
   17f6a:	6100 0000      	bsrw 0x17f6c
   17f6e:	0000 0000      	orib #0,%d0
   17f72:	0000 0011      	orib #17,%d0
   17f76:	ee67           	asrw %d7,%d7
   17f78:	7ef5           	moveq #-11,%d7
   17f7a:	2b5a ec54      	movel %a2@+,%a5@(-5036)
   17f7e:	caa1           	andl %a1@-,%d5
   17f80:	97ff           	.short 0x97ff
   17f82:	fe20 71d6      	cp1ldb %a0@-,%d7,#1,#470
   17f86:	019d           	bclr %d0,%a5@+
   17f88:	5d05           	subqb #6,%d5
   17f8a:	f16e 7880      	prestore %fp@(30848)
   17f8e:	0000 ffff      	orib #-1,%d0
   17f92:	ffff           	.short 0xffff
   17f94:	ffff           	.short 0xffff
   17f96:	ffec           	.short 0xffec
   17f98:	f6bb           	.short 0xf6bb
   17f9a:	6dfe           	blts 0x17f9a
   17f9c:	fe93 5499      	cp1ldl %a3@,%d5,#3,#153
   17fa0:	320a           	movew %a2,%d1
   17fa2:	30b3 fbf5 27d8 	movew @(27d80042)@(0),%a0@
   17fa8:	0042
   17faa:	bf17           	eorb %d7,%sp@
   17fac:	c5c7           	mulsw %d7,%d2
   17fae:	3880           	movew %d0,%a4@
	...
   17fb8:	0031 6f6b 8bbb 	orib #107,@(fffffffffdcfa241,%a0:l:2)@(e0001d8)
   17fbe:	fdcf a241 0e00
   17fc4:	01d8
   17fc6:	ebbc           	roll %d5,%d4
   17fc8:	87be           	.short 0x87be
   17fca:	8005           	orb %d5,%d0
   17fcc:	3d82 1ea3      	movew %d2,%fp@(ffffffffffffffa3,%d1:l:8)
   17fd0:	9c40           	subw %d0,%d6
   17fd2:	0000 ffff      	orib #-1,%d0
   17fd6:	ffff           	.short 0xffff
   17fd8:	ffff           	.short 0xffff
   17fda:	ffed           	.short 0xffed
   17fdc:	7f2a 0e1f      	mvsb %a2@(3615),%d7
   17fe0:	f9d7           	.short 0xf9d7
   17fe2:	d244           	addw %d4,%d1
   17fe4:	1220           	moveb %a0@-,%d1
   17fe6:	0283 14fe 63bf 	andil #352215999,%d3
   17fec:	900a           	.short 0x900a
   17fee:	3e80           	movew %d0,%sp@
   17ff0:	bea3           	cmpl %a3@-,%d7
   17ff2:	9a20           	subb %a0@-,%d5
	...
   17ffc:	0031           	Address 0x18000 is out of bounds.
.short 0x0031
   17ffe:	7b42           	mvsw %d2,%d5