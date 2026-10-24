
disassembly/main_code.bin:     file format binary


Disassembly of section .data:

0003ff00 <.data>:
   3ff00:	0002 0800      	orib #0,%d2
   3ff04:	0100           	btst %d0,%d0
   3ff06:	e001           	asrb #8,%d1
   3ff08:	e600           	asrb #3,%d0
   3ff0a:	0110           	btst %d0,%a0@
   3ff0c:	1810           	moveb %a0@,%d4
   3ff0e:	e0a0           	asrl %d0,%d0
   3ff10:	e530           	roxlb %d2,%d0
   3ff12:	0000 0100      	orib #0,%d0
   3ff16:	0000 002a      	orib #42,%d0
   3ff1a:	0002 0000      	orib #0,%d2
   3ff1e:	0000 0016      	orib #22,%d0
   3ff22:	0b01           	btst %d5,%d1
   3ff24:	0202 0300      	andib #0,%d2
   3ff28:	0800 0002      	btst #2,%d0
   3ff2c:	0800 0100      	btst #0,%d0
   3ff30:	e010           	roxrb #8,%d0
   3ff32:	e600           	asrb #3,%d0
   3ff34:	a054           	.short 0xa054
   3ff36:	a044 e0a0      	macw %d4l,%a0u
   3ff3a:	e530           	roxlb %d2,%d0
   3ff3c:	0000 b854      	orib #84,%d0
   3ff40:	0000 002a      	orib #42,%d0
   3ff44:	0002 0000      	orib #0,%d2
   3ff48:	0000 0016      	orib #22,%d0
   3ff4c:	0b02           	btst %d5,%d2
   3ff4e:	0202 0300      	andib #0,%d2
   3ff52:	0800 0002      	btst #2,%d0
   3ff56:	0800 0100      	btst #0,%d0
   3ff5a:	e020           	asrb %d0,%d0
   3ff5c:	e600           	asrb #3,%d0
   3ff5e:	b820           	cmpb %a0@-,%d4
   3ff60:	a020           	.short 0xa020
   3ff62:	e0a0           	asrl %d0,%d0
   3ff64:	e530           	roxlb %d2,%d0
   3ff66:	0000 b800      	orib #0,%d0
   3ff6a:	0000 002a      	orib #42,%d0
   3ff6e:	0002 0000      	orib #0,%d2
   3ff72:	0000 0016      	orib #22,%d0
   3ff76:	0b03           	btst %d5,%d3
   3ff78:	0202 0300      	andib #0,%d2
   3ff7c:	0800 0002      	btst #2,%d0
   3ff80:	0800 0100      	btst #0,%d0
   3ff84:	e030           	roxrb %d0,%d0
   3ff86:	e600           	asrb #3,%d0
   3ff88:	5000           	addqb #8,%d0
   3ff8a:	5010           	addqb #8,%a0@
   3ff8c:	e0a0           	asrl %d0,%d0
   3ff8e:	e530           	roxlb %d2,%d0
   3ff90:	0000 b800      	orib #0,%d0
   3ff94:	0000 002a      	orib #42,%d0
   3ff98:	0002 0000      	orib #0,%d2
   3ff9c:	0000 0016      	orib #22,%d0
   3ffa0:	0b04           	btst %d5,%d4
   3ffa2:	0202 0300      	andib #0,%d2
   3ffa6:	0800 0002      	btst #2,%d0
   3ffaa:	0800 0100      	btst #0,%d0
   3ffae:	e040           	asrw #8,%d0
   3ffb0:	e600           	asrb #3,%d0
   3ffb2:	0144           	bchg %d0,%d4
   3ffb4:	1844           	.short 0x1844
   3ffb6:	e0a0           	asrl %d0,%d0
   3ffb8:	e530           	roxlb %d2,%d0
   3ffba:	0000 0154      	orib #84,%d0
   3ffbe:	0000 002a      	orib #42,%d0
   3ffc2:	0002 0000      	orib #0,%d2
   3ffc6:	0000 0016      	orib #22,%d0
   3ffca:	0b05           	btst %d5,%d5
   3ffcc:	0202 0300      	andib #0,%d2
   3ffd0:	0800 0002      	btst #2,%d0
   3ffd4:	0800 0100      	btst #0,%d0
   3ffd8:	e050           	roxrw #8,%d0
   3ffda:	e600           	asrb #3,%d0
   3ffdc:	b830 a030      	cmpb %a0@(30,%a2:w),%d4
   3ffe0:	e0a0           	asrl %d0,%d0
   3ffe2:	e530           	roxlb %d2,%d0
   3ffe4:	0000 b854      	orib #84,%d0
   3ffe8:	0000 002a      	orib #42,%d0
   3ffec:	0002 0000      	orib #0,%d2
   3fff0:	0000 0016      	orib #22,%d0
   3fff4:	0b06           	btst %d5,%d6
   3fff6:	0202 0300      	andib #0,%d2
   3fffa:	0800 0002      	btst #2,%d0
   3fffe:	0800 0100      	btst #0,%d0
   40002:	e060           	asrw %d0,%d0
   40004:	e600           	asrb #3,%d0
   40006:	7054           	moveq #84,%d0
   40008:	7044           	moveq #68,%d0
   4000a:	e0a0           	asrl %d0,%d0
   4000c:	e530           	roxlb %d2,%d0
   4000e:	0000 b854      	orib #84,%d0
   40012:	0000 002a      	orib #42,%d0
   40016:	0002 0000      	orib #0,%d2
   4001a:	0000 0016      	orib #22,%d0
   4001e:	0b07           	btst %d5,%d7
   40020:	0202 0300      	andib #0,%d2
   40024:	0800 0002      	btst #2,%d0
   40028:	0800 0100      	btst #0,%d0
   4002c:	e070           	roxrw %d0,%d0
   4002e:	e600           	asrb #3,%d0
   40030:	0300           	btst %d1,%d0
   40032:	0310           	btst %d1,%a0@
   40034:	e0a0           	asrl %d0,%d0
   40036:	e530           	roxlb %d2,%d0
   40038:	0000 0100      	orib #0,%d0
   4003c:	0000 002a      	orib #42,%d0
   40040:	0002 0000      	orib #0,%d2
   40044:	0000 0016      	orib #22,%d0
   40048:	0b00           	btst %d5,%d0
   4004a:	0202 0300      	andib #0,%d2
   4004e:	0800 0002      	btst #2,%d0
   40052:	0800 0100      	btst #0,%d0
   40056:	e080           	asrl #8,%d0
   40058:	e600           	asrb #3,%d0
   4005a:	2054           	moveal %a4@,%a0
   4005c:	2044           	moveal %d4,%a0
   4005e:	e0a0           	asrl %d0,%d0
   40060:	e530           	roxlb %d2,%d0
   40062:	0000 0154      	orib #84,%d0
   40066:	0000 002a      	orib #42,%d0
   4006a:	0002 0000      	orib #0,%d2
   4006e:	0000 0016      	orib #22,%d0
   40072:	0b01           	btst %d5,%d1
   40074:	0202 0300      	andib #0,%d2
   40078:	0800 0002      	btst #2,%d0
   4007c:	0800 0100      	btst #0,%d0
   40080:	e090           	roxrl #8,%d0
   40082:	e600           	asrb #3,%d0
   40084:	0120           	btst %d0,%a0@-
   40086:	1820           	moveb %a0@-,%d4
   40088:	e0a0           	asrl %d0,%d0
   4008a:	e530           	roxlb %d2,%d0
   4008c:	0000 0100      	orib #0,%d0
   40090:	0000 002a      	orib #42,%d0
   40094:	0002 0000      	orib #0,%d2
   40098:	0000 0016      	orib #22,%d0
   4009c:	0b02           	btst %d5,%d2
   4009e:	0202 0300      	andib #0,%d2
   400a2:	0800 0002      	btst #2,%d0
   400a6:	0800 0100      	btst #0,%d0
   400aa:	e0a0           	asrl %d0,%d0
   400ac:	e600           	asrb #3,%d0
   400ae:	9054           	subw %a4@,%d0
   400b0:	9044           	subw %d4,%d0
   400b2:	e0a0           	asrl %d0,%d0
   400b4:	e530           	roxlb %d2,%d0
   400b6:	0000 b854      	orib #84,%d0
   400ba:	0000 0000      	orib #0,%d0
   400be:	0002 0000      	orib #0,%d2
   400c2:	0000 0016      	orib #22,%d0
   400c6:	0b03           	btst %d5,%d3
   400c8:	0202 0300      	andib #0,%d2
   400cc:	0800 0002      	btst #2,%d0
   400d0:	0800 0100      	btst #0,%d0
   400d4:	e0b0           	roxrl %d0,%d0
   400d6:	e600           	asrb #3,%d0
   400d8:	a000 a010      	macw %d0l,%d0l
   400dc:	e0a0           	asrl %d0,%d0
   400de:	e530           	roxlb %d2,%d0
   400e0:	0000 b800      	orib #0,%d0
   400e4:	0000 01e2      	orib #-30,%d0
   400e8:	0028 0002 0000 	orib #2,%a0@(0)
   400ee:	0000 0016      	orib #22,%d0
   400f2:	0d00           	btst %d6,%d0
   400f4:	0202 0200      	andib #0,%d2
   400f8:	0000 0001      	orib #1,%d0
   400fc:	0700           	btst %d3,%d0
   400fe:	0100           	btst %d0,%d0
   40100:	e013           	roxrb #8,%d3
   40102:	e600           	asrb #3,%d0
   40104:	b810           	cmpb %a0@,%d4
   40106:	9810           	subb %a0@,%d4
   40108:	e006           	asrb #8,%d6
   4010a:	e305           	aslb #1,%d5
   4010c:	0110           	btst %d0,%a0@
   4010e:	0000 0028      	orib #40,%d0
   40112:	0002 0000      	orib #0,%d2
   40116:	0000 0016      	orib #22,%d0
   4011a:	0d01           	btst %d6,%d1
   4011c:	0202 0200      	andib #0,%d2
   40120:	0000 0001      	orib #1,%d0
   40124:	0700           	btst %d3,%d0
   40126:	0100           	btst %d0,%d0
   40128:	e021           	asrb %d0,%d1
   4012a:	e600           	asrb #3,%d0
   4012c:	b834 9334 e006 	cmpb %a4@(ffffffffe006e305)@(0,%a1:w:2),%d4
   40132:	e305 
   40134:	0134 0000      	btst %d0,%a4@(0,%d0:w)
   40138:	0028 0002 0000 	orib #2,%a0@(0)
   4013e:	0000 0016      	orib #22,%d0
   40142:	0d02           	btst %d6,%d2
   40144:	0202 0200      	andib #0,%d2
   40148:	0000 0001      	orib #1,%d0
   4014c:	0700           	btst %d3,%d0
   4014e:	0100           	btst %d0,%d0
   40150:	e028           	lsrb %d0,%d0
   40152:	e600           	asrb #3,%d0
   40154:	b829 9829      	cmpb %a1@(-26583),%d4
   40158:	e006           	asrb #8,%d6
   4015a:	e305           	aslb #1,%d5
   4015c:	0129 0000      	btst %d0,%a1@(0)
   40160:	0028 0002 0000 	orib #2,%a0@(0)
   40166:	0000 0016      	orib #22,%d0
   4016a:	0d04           	btst %d6,%d4
   4016c:	0202 0200      	andib #0,%d2
   40170:	0000 0001      	orib #1,%d0
   40174:	0700           	btst %d3,%d0
   40176:	0100           	btst %d0,%d0
   40178:	e011           	roxrb #8,%d1
   4017a:	e600           	asrb #3,%d0
   4017c:	b850           	cmpw %a0@,%d4
   4017e:	9450           	subw %a0@,%d2
   40180:	e006           	asrb #8,%d6
   40182:	e305           	aslb #1,%d5
   40184:	0150           	bchg %d0,%a0@
   40186:	0000 0028      	orib #40,%d0
   4018a:	0002 0000      	orib #0,%d2
   4018e:	0000 0016      	orib #22,%d0
   40192:	0d06           	btst %d6,%d6
   40194:	0202 0200      	andib #0,%d2
   40198:	0000 0001      	orib #1,%d0
   4019c:	0700           	btst %d3,%d0
   4019e:	0100           	btst %d0,%d0
   401a0:	e030           	roxrb %d0,%d0
   401a2:	e600           	asrb #3,%d0
   401a4:	b81f           	cmpb %sp@+,%d4
   401a6:	9e1f           	subb %sp@+,%d7
   401a8:	e006           	asrb #8,%d6
   401aa:	e305           	aslb #1,%d5
   401ac:	011f           	btst %d0,%sp@+
   401ae:	0000 0028      	orib #40,%d0
   401b2:	0002 0000      	orib #0,%d2
   401b6:	0000 0016      	orib #22,%d0
   401ba:	0d02           	btst %d6,%d2
   401bc:	0202 0200      	andib #0,%d2
   401c0:	0000 0001      	orib #1,%d0
   401c4:	0700           	btst %d3,%d0
   401c6:	0100           	btst %d0,%d0
   401c8:	e02d           	lsrb %d0,%d5
   401ca:	e600           	asrb #3,%d0
   401cc:	b844           	cmpw %d4,%d4
   401ce:	8d44 e006      	pack %d4,%d6,#-8186
   401d2:	e305           	aslb #1,%d5
   401d4:	0144           	bchg %d0,%d4
   401d6:	0000 0028      	orib #40,%d0
   401da:	0002 0000      	orib #0,%d2
   401de:	0000 0016      	orib #22,%d0
   401e2:	0d04           	btst %d6,%d4
   401e4:	0202 0200      	andib #0,%d2
   401e8:	0000 0001      	orib #1,%d0
   401ec:	0700           	btst %d3,%d0
   401ee:	0100           	btst %d0,%d0
   401f0:	e01f           	rorb #8,%d7
   401f2:	e600           	asrb #3,%d0
   401f4:	b83e           	.short 0xb83e
   401f6:	863e           	.short 0x863e
   401f8:	e006           	asrb #8,%d6
   401fa:	e305           	aslb #1,%d5
   401fc:	013e           	.short 0x013e
   401fe:	0000 0028      	orib #40,%d0
   40202:	0002 0000      	orib #0,%d2
   40206:	0000 0016      	orib #22,%d0
   4020a:	0d03           	btst %d6,%d3
   4020c:	0202 0200      	andib #0,%d2
   40210:	0000 0001      	orib #1,%d0
   40214:	0700           	btst %d3,%d0
   40216:	0100           	btst %d0,%d0
   40218:	e035           	roxrb %d0,%d5
   4021a:	e600           	asrb #3,%d0
   4021c:	b830 9f30 e006 	cmpb %a0@(ffffffffe006e305,%a1:l:8),%d4
   40222:	e305 
   40224:	0130 0000      	btst %d0,%a0@(0,%d0:w)
   40228:	0028 0002 0000 	orib #2,%a0@(0)
   4022e:	0000 0016      	orib #22,%d0
   40232:	0d05           	btst %d6,%d5
   40234:	0202 0200      	andib #0,%d2
   40238:	0000 0001      	orib #1,%d0
   4023c:	0700           	btst %d3,%d0
   4023e:	0100           	btst %d0,%d0
   40240:	e029           	lsrb %d0,%d1
   40242:	e600           	asrb #3,%d0
   40244:	b838 9738      	cmpb 0xffff9738,%d4
   40248:	e006           	asrb #8,%d6
   4024a:	e305           	aslb #1,%d5
   4024c:	0138 0000      	btst %d0,0x0
   40250:	0028 0002 0000 	orib #2,%a0@(0)
   40256:	0000 0016      	orib #22,%d0
   4025a:	0d03           	btst %d6,%d3
   4025c:	0202 0200      	andib #0,%d2
   40260:	0000 0001      	orib #1,%d0
   40264:	0700           	btst %d3,%d0
   40266:	0100           	btst %d0,%d0
   40268:	e004           	asrb #8,%d4
   4026a:	e600           	asrb #3,%d0
   4026c:	b822           	cmpb %a2@-,%d4
   4026e:	8822           	orb %a2@-,%d4
   40270:	e006           	asrb #8,%d6
   40272:	e305           	aslb #1,%d5
   40274:	0122           	btst %d0,%a2@-
   40276:	0000 0028      	orib #40,%d0
   4027a:	0002 0000      	orib #0,%d2
   4027e:	0000 0016      	orib #22,%d0
   40282:	0d02           	btst %d6,%d2
   40284:	0202 0200      	andib #0,%d2
   40288:	0000 0001      	orib #1,%d0
   4028c:	0700           	btst %d3,%d0
   4028e:	0100           	btst %d0,%d0
   40290:	e039           	rorb %d0,%d1
   40292:	e600           	asrb #3,%d0
   40294:	b813           	cmpb %a3@,%d4
   40296:	8413           	orb %a3@,%d2
   40298:	e006           	asrb #8,%d6
   4029a:	e305           	aslb #1,%d5
   4029c:	0113           	btst %d0,%a3@
   4029e:	0000 0000      	orib #0,%d0
   402a2:	0002 0000      	orib #0,%d2
   402a6:	0000 0016      	orib #22,%d0
   402aa:	0d00           	btst %d6,%d0
   402ac:	0202 0200      	andib #0,%d2
   402b0:	0000 0001      	orib #1,%d0
   402b4:	0700           	btst %d3,%d0
   402b6:	0100           	btst %d0,%d0
   402b8:	e041           	asrw #8,%d1
   402ba:	e600           	asrb #3,%d0
   402bc:	b830 8b30 e006 	cmpb %a0@(ffffffffe006e305,%a0:l:2),%d4
   402c2:	e305 
   402c4:	0130 0000      	btst %d0,%a0@(0,%d0:w)
   402c8:	0234 001c 0138 	andib #28,%a4@(420fff,%d0:w)
   402ce:	0042 0fff 
   402d2:	0016 0300      	orib #0,%fp@
   402d6:	0404 0100      	subib #0,%d4
   402da:	0c00 0023      	cmpib #35,%d0
   402de:	0400 9c21      	subib #33,%d0
   402e2:	e0ff           	.short 0xe0ff
   402e4:	0000 0022      	orib #34,%d0
   402e8:	010e 001e      	movepw %fp@(30),%d0
   402ec:	0000 0016      	orib #22,%d0
   402f0:	0f00           	btst %d7,%d0
   402f2:	0202 0400      	andib #0,%d2
   402f6:	0004 6380      	orib #-128,%d4
   402fa:	0000 010f      	orib #15,%d0
   402fe:	e600           	asrb #3,%d0
   40300:	870f           	sbcd %sp@-,%a3@-
   40302:	e007           	asrb #8,%d7
   40304:	e100           	aslb #8,%d0
   40306:	0000 0028      	orib #40,%d0
   4030a:	010e 001e      	movepw %fp@(30),%d0
   4030e:	0000 0016      	orib #22,%d0
   40312:	0f01           	btst %d7,%d1
   40314:	0202 0400      	andib #0,%d2
   40318:	0007 6380      	orib #-128,%d7
   4031c:	0000 3654      	orib #84,%d0
   40320:	ea00           	asrb #5,%d0
   40322:	0154           	bchg %d0,%a4@
   40324:	ea01           	asrb #5,%d1
   40326:	e600           	asrb #3,%d0
   40328:	870f           	sbcd %sp@-,%a3@-
   4032a:	e003           	asrb #8,%d3
   4032c:	e100           	aslb #8,%d0
   4032e:	0000 002c      	orib #44,%d0
   40332:	010e 001e      	movepw %fp@(30),%d0
   40336:	0000 0016      	orib #22,%d0
   4033a:	0f02           	btst %d7,%d2
   4033c:	0202 0400      	andib #0,%d2
   40340:	0009           	.short 0x0009
   40342:	6380           	blss 0x402c4
   40344:	0000 7b3f      	orib #63,%d0
   40348:	ea01           	asrb #5,%d1
   4034a:	6a50           	bpls 0x4039c
   4034c:	ea00           	asrb #5,%d0
   4034e:	0150           	bchg %d0,%a0@
   40350:	ea02           	asrb #5,%d2
   40352:	e600           	asrb #3,%d0
   40354:	870f           	sbcd %sp@-,%a3@-
   40356:	e009           	lsrb #8,%d1
   40358:	e100           	aslb #8,%d0
   4035a:	0000 002c      	orib #44,%d0
   4035e:	010e 001e      	movepw %fp@(30),%d0
   40362:	0000 0016      	orib #22,%d0
   40366:	0f00           	btst %d7,%d0
   40368:	0202 0400      	andib #0,%d2
   4036c:	0009           	.short 0x0009
   4036e:	6380           	blss 0x402f0
   40370:	0000 4f0f      	orib #15,%d0
   40374:	ea07           	asrb #5,%d7
   40376:	4101           	chkl %d1,%d0
   40378:	ea00           	asrb #5,%d0
   4037a:	0101           	btst %d0,%d1
   4037c:	ea00           	asrb #5,%d0
   4037e:	e600           	asrb #3,%d0
   40380:	870f           	sbcd %sp@-,%a3@-
   40382:	e00c           	lsrb #8,%d4
   40384:	e100           	aslb #8,%d0
   40386:	0000 0028      	orib #40,%d0
   4038a:	010e 001e      	movepw %fp@(30),%d0
   4038e:	0000 0016      	orib #22,%d0
   40392:	0f01           	btst %d7,%d1
   40394:	0202 0400      	andib #0,%d2
   40398:	0007 6380      	orib #-128,%d7
   4039c:	0000 4d3d      	orib #61,%d0
   403a0:	ea00           	asrb #5,%d0
   403a2:	013d           	.short 0x013d
   403a4:	ea01           	asrb #5,%d1
   403a6:	e600           	asrb #3,%d0
   403a8:	870f           	sbcd %sp@-,%a3@-
   403aa:	e001           	asrb #8,%d1
   403ac:	e100           	aslb #8,%d0
   403ae:	0000 0028      	orib #40,%d0
   403b2:	010e 001e      	movepw %fp@(30),%d0
   403b6:	0000 0016      	orib #22,%d0
   403ba:	0f01           	btst %d7,%d1
   403bc:	0202 0400      	andib #0,%d2
   403c0:	0007 6380      	orib #-128,%d7
   403c4:	0000 5f2b      	orib #43,%d0
   403c8:	ea00           	asrb #5,%d0
   403ca:	012b ea01      	btst %d0,%a3@(-5631)
   403ce:	e600           	asrb #3,%d0
   403d0:	870f           	sbcd %sp@-,%a3@-
   403d2:	e00d           	lsrb #8,%d5
   403d4:	e100           	aslb #8,%d0
   403d6:	0000 0040      	orib #64,%d0
   403da:	010e 001e      	movepw %fp@(30),%d0
   403de:	0000 0016      	orib #22,%d0
   403e2:	0f01           	btst %d7,%d1
   403e4:	0202 0300      	andib #0,%d2
   403e8:	0013 6380      	orib #-128,%a3@
   403ec:	0000 4d3d      	orib #61,%d0
   403f0:	ea00           	asrb #5,%d0
   403f2:	2e3d           	.short 0x2e3d
   403f4:	ea07           	asrb #5,%d7
   403f6:	1a29 ea05      	moveb %a1@(-5627),%d5
   403fa:	3112           	movew %a2@,%a0@-
   403fc:	ea04           	asrb #5,%d4
   403fe:	5112           	subqb #8,%a2@
   40400:	ea03           	asrb #5,%d3
   40402:	6728           	beqs 0x4042c
   40404:	ea01           	asrb #5,%d1
   40406:	523d           	.short 0x523d
   40408:	ea00           	asrb #5,%d0
   4040a:	013d           	.short 0x013d
   4040c:	ea01           	asrb #5,%d1
   4040e:	e600           	asrb #3,%d0
   40410:	870f           	sbcd %sp@-,%a3@-
   40412:	e003           	asrb #8,%d3
   40414:	e100           	aslb #8,%d0
   40416:	0000 0040      	orib #64,%d0
   4041a:	010e 001e      	movepw %fp@(30),%d0
   4041e:	0000 0016      	orib #22,%d0
   40422:	0f01           	btst %d7,%d1
   40424:	0202 0300      	andib #0,%d2
   40428:	0013 6380      	orib #-128,%a3@
   4042c:	0000 5733      	orib #51,%d0
   40430:	ea02           	asrb #5,%d2
   40432:	573d           	.short 0x573d
   40434:	ea03           	asrb #5,%d3
   40436:	6147           	bsrs 0x4047f
   40438:	ea04           	asrb #5,%d4
   4043a:	6b47           	bmis 0x40483
   4043c:	ea05           	asrb #5,%d5
   4043e:	753d           	.short 0x753d
   40440:	ea06           	asrb #5,%d6
   40442:	7533 ea07      	mvsb %a3@(7,%fp:l:2),%d2
   40446:	6b29           	bmis 0x40471
   40448:	ea00           	asrb #5,%d0
   4044a:	0129 ea01      	btst %d0,%a1@(-5631)
   4044e:	e600           	asrb #3,%d0
   40450:	870f           	sbcd %sp@-,%a3@-
   40452:	e004           	asrb #8,%d4
   40454:	e100           	aslb #8,%d0
   40456:	0000 003e      	orib #62,%d0
   4045a:	010e 001e      	movepw %fp@(30),%d0
   4045e:	0000 0016      	orib #22,%d0
   40462:	0f02           	btst %d7,%d2
   40464:	0202 0300      	andib #0,%d2
   40468:	0010 6380      	orib #-128,%a0@
   4046c:	0000 8932      	orib #50,%d0
   40470:	ea04           	asrb #5,%d4
   40472:	a332           	.short 0xa332
   40474:	ea05           	asrb #5,%d5
   40476:	ad28           	.short 0xad28
   40478:	ea06           	asrb #5,%d6
   4047a:	ad1e           	.short 0xad1e
   4047c:	ea07           	asrb #5,%d7
   4047e:	a314           	.short 0xa314
   40480:	ea00           	asrb #5,%d0
   40482:	9914           	subb %d4,%a4@
   40484:	ea01           	asrb #5,%d1
   40486:	901e           	subb %fp@+,%d0
   40488:	ea02           	asrb #5,%d2
   4048a:	9028 ea03      	subb %a0@(-5629),%d0
   4048e:	9932 ea04      	subb %d4,%a2@(4,%fp:l:2)
   40492:	e100           	aslb #8,%d0
   40494:	0000 003e      	orib #62,%d0
   40498:	010e 001e      	movepw %fp@(30),%d0
   4049c:	0000 0016      	orib #22,%d0
   404a0:	0f04           	btst %d7,%d4
   404a2:	0202 0300      	andib #0,%d2
   404a6:	0010 6380      	orib #-128,%a0@
   404aa:	0000 a314      	orib #20,%d0
   404ae:	ea03           	asrb #5,%d3
   404b0:	ad1e           	.short 0xad1e
   404b2:	ea02           	asrb #5,%d2
   404b4:	ae28           	.short 0xae28
   404b6:	ea01           	asrb #5,%d1
   404b8:	a332           	.short 0xa332
   404ba:	ea00           	asrb #5,%d0
   404bc:	9932 ea07      	subb %d4,%a2@(7,%fp:l:2)
   404c0:	9028 ea06      	subb %a0@(-5626),%d0
   404c4:	901e           	subb %fp@+,%d0
   404c6:	ea05           	asrb #5,%d5
   404c8:	9914           	subb %d4,%a4@
   404ca:	ea04           	asrb #5,%d4
   404cc:	a314           	.short 0xa314
   404ce:	ea03           	asrb #5,%d3
   404d0:	e100           	aslb #8,%d0
   404d2:	0000 fe5c      	orib #92,%d0
   404d6:	010e 001e      	movepw %fp@(30),%d0
   404da:	0000 0016      	orib #22,%d0
   404de:	0f01           	btst %d7,%d1
   404e0:	0202 0400      	andib #0,%d2
   404e4:	0007 6380      	orib #-128,%d7
   404e8:	0000 7c1e      	orib #30,%d0
   404ec:	ea00           	asrb #5,%d0
   404ee:	011e           	btst %d0,%fp@+
   404f0:	ea01           	asrb #5,%d1
   404f2:	e600           	asrb #3,%d0
   404f4:	870f           	sbcd %sp@-,%a3@-
   404f6:	e003           	asrb #8,%d3
   404f8:	e100           	aslb #8,%d0
   404fa:	0000 02a2      	orib #-94,%d0
   404fe:	0038 0002 0000 	orib #2,0x0
   40504:	0000 0016      	orib #22,%d0
   40508:	0400 0202      	subib #2,%d0
   4050c:	0100           	btst %d0,%d0
   4050e:	000f           	.short 0x000f
   40510:	0380           	bclr %d1,%d0
   40512:	0800 0100      	btst #0,%d0
   40516:	e003           	asrb #8,%d3
   40518:	e400           	asrb #2,%d0
   4051a:	0407 e600      	subib #0,%d7
   4051e:	781b           	moveq #27,%d4
   40520:	e010           	roxrb #8,%d0
   40522:	e600           	asrb #3,%d0
   40524:	8f10           	orb %d7,%a0@
   40526:	e010           	roxrb #8,%d0
   40528:	e600           	asrb #3,%d0
   4052a:	811f           	orb %d0,%sp@+
   4052c:	e010           	roxrb #8,%d0
   4052e:	e600           	asrb #3,%d0
   40530:	0100           	btst %d0,%d0
   40532:	e100           	aslb #8,%d0
   40534:	0000 0038      	orib #56,%d0
   40538:	0002 0000      	orib #0,%d2
   4053c:	0000 0016      	orib #22,%d0
   40540:	0400 0202      	subib #2,%d0
   40544:	0100           	btst %d0,%d0
   40546:	000f           	.short 0x000f
   40548:	0380           	bclr %d1,%d0
   4054a:	0800 0100      	btst #0,%d0
   4054e:	e005           	asrb #8,%d5
   40550:	e400           	asrb #2,%d0
   40552:	0407 e600      	subib #0,%d7
   40556:	9913           	subb %d4,%a3@
   40558:	e010           	roxrb #8,%d0
   4055a:	e600           	asrb #3,%d0
   4055c:	a812           	.short 0xa812
   4055e:	e010           	roxrb #8,%d0
   40560:	e600           	asrb #3,%d0
   40562:	a425           	.short 0xa425
   40564:	e010           	roxrb #8,%d0
   40566:	e600           	asrb #3,%d0
   40568:	0100           	btst %d0,%d0
   4056a:	e100           	aslb #8,%d0
   4056c:	0000 0038      	orib #56,%d0
   40570:	0002 0000      	orib #0,%d2
   40574:	0000 0016      	orib #22,%d0
   40578:	0400 0202      	subib #2,%d0
   4057c:	0100           	btst %d0,%d0
   4057e:	000f           	.short 0x000f
   40580:	0380           	bclr %d1,%d0
   40582:	0800 0100      	btst #0,%d0
   40586:	e007           	asrb #8,%d7
   40588:	e400           	asrb #2,%d0
   4058a:	0407 e600      	subib #0,%d7
   4058e:	7b13           	mvsb %a3@,%d5
   40590:	e010           	roxrb #8,%d0
   40592:	e600           	asrb #3,%d0
   40594:	8514           	orb %d2,%a4@
   40596:	e010           	roxrb #8,%d0
   40598:	e600           	asrb #3,%d0
   4059a:	891d           	orb %d4,%a5@+
   4059c:	e010           	roxrb #8,%d0
   4059e:	e600           	asrb #3,%d0
   405a0:	0100           	btst %d0,%d0
   405a2:	e100           	aslb #8,%d0
   405a4:	0000 0038      	orib #56,%d0
   405a8:	0002 0000      	orib #0,%d2
   405ac:	0000 0016      	orib #22,%d0
   405b0:	0400 0202      	subib #2,%d0
   405b4:	0100           	btst %d0,%d0
   405b6:	000f           	.short 0x000f
   405b8:	0380           	bclr %d1,%d0
   405ba:	0800 0100      	btst #0,%d0
   405be:	e009           	lsrb #8,%d1
   405c0:	e400           	asrb #2,%d0
   405c2:	0407 e600      	subib #0,%d7
   405c6:	931f           	subb %d1,%sp@+
   405c8:	e010           	roxrb #8,%d0
   405ca:	e600           	asrb #3,%d0
   405cc:	a31b           	.short 0xa31b
   405ce:	e010           	roxrb #8,%d0
   405d0:	e600           	asrb #3,%d0
   405d2:	9b26           	subb %d5,%fp@-
   405d4:	e010           	roxrb #8,%d0
   405d6:	e600           	asrb #3,%d0
   405d8:	0100           	btst %d0,%d0
   405da:	e100           	aslb #8,%d0
   405dc:	0000 0038      	orib #56,%d0
   405e0:	0002 0000      	orib #0,%d2
   405e4:	0000 0016      	orib #22,%d0
   405e8:	0400 0202      	subib #2,%d0
   405ec:	0100           	btst %d0,%d0
   405ee:	000f           	.short 0x000f
   405f0:	0380           	bclr %d1,%d0
   405f2:	0800 0100      	btst #0,%d0
   405f6:	e00b           	lsrb #8,%d3
   405f8:	e400           	asrb #2,%d0
   405fa:	0407 e600      	subib #0,%d7
   405fe:	a72e           	.short 0xa72e
   40600:	e010           	roxrb #8,%d0
   40602:	e600           	asrb #3,%d0
   40604:	ae3a           	.short 0xae3a
   40606:	e010           	roxrb #8,%d0
   40608:	e600           	asrb #3,%d0
   4060a:	a03d           	.short 0xa03d
   4060c:	e010           	roxrb #8,%d0
   4060e:	e600           	asrb #3,%d0
   40610:	0100           	btst %d0,%d0
   40612:	e100           	aslb #8,%d0
   40614:	0000 0038      	orib #56,%d0
   40618:	0002 0000      	orib #0,%d2
   4061c:	0000 0016      	orib #22,%d0
   40620:	0400 0202      	subib #2,%d0
   40624:	0100           	btst %d0,%d0
   40626:	000f           	.short 0x000f
   40628:	0380           	bclr %d1,%d0
   4062a:	0800 0100      	btst #0,%d0
   4062e:	e00c           	lsrb #8,%d4
   40630:	e400           	asrb #2,%d0
   40632:	0407 e600      	subib #0,%d7
   40636:	a14c           	mov3ql #-1,%a4
   40638:	e010           	roxrb #8,%d0
   4063a:	e600           	asrb #3,%d0
   4063c:	7a4c           	moveq #76,%d5
   4063e:	e010           	roxrb #8,%d0
   40640:	e600           	asrb #3,%d0
   40642:	8c41           	orw %d1,%d6
   40644:	e010           	roxrb #8,%d0
   40646:	e600           	asrb #3,%d0
   40648:	0100           	btst %d0,%d0
   4064a:	e100           	aslb #8,%d0
   4064c:	0000 0038      	orib #56,%d0
   40650:	0002 0000      	orib #0,%d2
   40654:	0000 0016      	orib #22,%d0
   40658:	0400 0202      	subib #2,%d0
   4065c:	0100           	btst %d0,%d0
   4065e:	000f           	.short 0x000f
   40660:	0380           	bclr %d1,%d0
   40662:	0800 0100      	btst #0,%d0
   40666:	e00d           	lsrb #8,%d5
   40668:	e400           	asrb #2,%d0
   4066a:	0407 e600      	subib #0,%d7
   4066e:	800d           	.short 0x800d
   40670:	e010           	roxrb #8,%d0
   40672:	e600           	asrb #3,%d0
   40674:	8a19           	orb %a1@+,%d5
   40676:	e010           	roxrb #8,%d0
   40678:	e600           	asrb #3,%d0
   4067a:	9216           	subb %fp@,%d1
   4067c:	e010           	roxrb #8,%d0
   4067e:	e600           	asrb #3,%d0
   40680:	0100           	btst %d0,%d0
   40682:	e100           	aslb #8,%d0
   40684:	0000 0038      	orib #56,%d0
   40688:	0002 0000      	orib #0,%d2
   4068c:	0000 0016      	orib #22,%d0
   40690:	0400 0202      	subib #2,%d0
   40694:	0100           	btst %d0,%d0
   40696:	000f           	.short 0x000f
   40698:	0380           	bclr %d1,%d0
   4069a:	0800 0100      	btst #0,%d0
   4069e:	e00e           	lsrb #8,%d6
   406a0:	e400           	asrb #2,%d0
   406a2:	0407 e600      	subib #0,%d7
   406a6:	9b1c           	subb %d5,%a4@+
   406a8:	e010           	roxrb #8,%d0
   406aa:	e600           	asrb #3,%d0
   406ac:	ac1b           	.short 0xac1b
   406ae:	e010           	roxrb #8,%d0
   406b0:	e600           	asrb #3,%d0
   406b2:	932a e010      	subb %d1,%a2@(-8176)
   406b6:	e600           	asrb #3,%d0
   406b8:	0100           	btst %d0,%d0
   406ba:	e100           	aslb #8,%d0
   406bc:	0000 0038      	orib #56,%d0
   406c0:	0002 0000      	orib #0,%d2
   406c4:	0000 0016      	orib #22,%d0
   406c8:	0400 0202      	subib #2,%d0
   406cc:	0100           	btst %d0,%d0
   406ce:	000f           	.short 0x000f
   406d0:	0380           	bclr %d1,%d0
   406d2:	0800 0100      	btst #0,%d0
   406d6:	e002           	asrb #8,%d2
   406d8:	e400           	asrb #2,%d0
   406da:	0407 e600      	subib #0,%d7
   406de:	880c           	.short 0x880c
   406e0:	e010           	roxrb #8,%d0
   406e2:	e600           	asrb #3,%d0
   406e4:	7f19           	mvsb %a1@+,%d7
   406e6:	e010           	roxrb #8,%d0
   406e8:	e600           	asrb #3,%d0
   406ea:	970a           	subxb %a2@-,%a3@-
   406ec:	e010           	roxrb #8,%d0
   406ee:	e600           	asrb #3,%d0
   406f0:	0100           	btst %d0,%d0
   406f2:	e100           	aslb #8,%d0
   406f4:	0000 0038      	orib #56,%d0
   406f8:	0002 0000      	orib #0,%d2
   406fc:	0000 0016      	orib #22,%d0
   40700:	0400 0202      	subib #2,%d0
   40704:	0100           	btst %d0,%d0
   40706:	000f           	.short 0x000f
   40708:	0380           	bclr %d1,%d0
   4070a:	0800 0100      	btst #0,%d0
   4070e:	e004           	asrb #8,%d4
   40710:	e400           	asrb #2,%d0
   40712:	0407 e600      	subib #0,%d7
   40716:	a00c e010      	macw %a4l,%d0l
   4071a:	e600           	asrb #3,%d0
   4071c:	ae23           	.short 0xae23
   4071e:	e010           	roxrb #8,%d0
   40720:	e600           	asrb #3,%d0
   40722:	9d2e e010      	subb %d6,%fp@(-8176)
   40726:	e600           	asrb #3,%d0
   40728:	0100           	btst %d0,%d0
   4072a:	e100           	aslb #8,%d0
   4072c:	0000 0038      	orib #56,%d0
   40730:	0002 0000      	orib #0,%d2
   40734:	0000 0016      	orib #22,%d0
   40738:	0400 0202      	subib #2,%d0
   4073c:	0100           	btst %d0,%d0
   4073e:	000f           	.short 0x000f
   40740:	0380           	bclr %d1,%d0
   40742:	0800 0100      	btst #0,%d0
   40746:	e006           	asrb #8,%d6
   40748:	e400           	asrb #2,%d0
   4074a:	0407 e600      	subib #0,%d7
   4074e:	a538           	.short 0xa538
   40750:	e010           	roxrb #8,%d0
   40752:	e600           	asrb #3,%d0
   40754:	9936 e010      	subb %d4,%fp@(10,%fp:w)
   40758:	e600           	asrb #3,%d0
   4075a:	a744           	mov3ql #3,%d4
   4075c:	e010           	roxrb #8,%d0
   4075e:	e600           	asrb #3,%d0
   40760:	0100           	btst %d0,%d0
   40762:	e100           	aslb #8,%d0
   40764:	0000 0000      	orib #0,%d0
   40768:	0002 0000      	orib #0,%d2
   4076c:	0000 0016      	orib #22,%d0
   40770:	0400 0202      	subib #2,%d0
   40774:	0100           	btst %d0,%d0
   40776:	000f           	.short 0x000f
   40778:	0380           	bclr %d1,%d0
   4077a:	0800 0100      	btst #0,%d0
   4077e:	e008           	lsrb #8,%d0
   40780:	e400           	asrb #2,%d0
   40782:	0407 e600      	subib #0,%d7
   40786:	984c           	subw %a4,%d4
   40788:	e010           	roxrb #8,%d0
   4078a:	e600           	asrb #3,%d0
   4078c:	864a           	.short 0x864a
   4078e:	e010           	roxrb #8,%d0
   40790:	e600           	asrb #3,%d0
   40792:	9137 e010      	subb %d0,%sp@(10,%fp:w)
   40796:	e600           	asrb #3,%d0
   40798:	0100           	btst %d0,%d0
   4079a:	e100           	aslb #8,%d0
   4079c:	0000 0252      	orib #82,%d0
   407a0:	0054 0002      	oriw #2,%a4@
   407a4:	0000 000f      	orib #15,%d0
   407a8:	0016 0600      	orib #0,%fp@
   407ac:	0303           	btst %d1,%d3
   407ae:	0200 0000      	andib #0,%d0
   407b2:	0028 0000 0100 	orib #0,%a0@(256)
   407b8:	e001           	asrb #8,%d1
   407ba:	e600           	asrb #3,%d0
   407bc:	c044           	andw %d4,%d0
   407be:	9644           	subw %d4,%d3
   407c0:	9634 e400      	subb %a4@(0,%fp:w:4),%d3
   407c4:	0605 e018      	addib #24,%d5
   407c8:	e400           	asrb #2,%d0
   407ca:	0600 9624      	addib #36,%d0
   407ce:	e400           	asrb #2,%d0
   407d0:	0605 e018      	addib #24,%d5
   407d4:	e400           	asrb #2,%d0
   407d6:	0600 9614      	addib #20,%d0
   407da:	e400           	asrb #2,%d0
   407dc:	0605 e018      	addib #24,%d5
   407e0:	e400           	asrb #2,%d0
   407e2:	0600 9604      	addib #4,%d0
   407e6:	e400           	asrb #2,%d0
   407e8:	0605 e018      	addib #24,%d5
   407ec:	e400           	asrb #2,%d0
   407ee:	0600 c004      	addib #4,%d0
   407f2:	0000 0054      	orib #84,%d0
   407f6:	0002 0000      	orib #0,%d2
   407fa:	000f           	.short 0x000f
   407fc:	0016 0700      	orib #0,%fp@
   40800:	0303           	btst %d1,%d3
   40802:	0200 0000      	andib #0,%d0
   40806:	0028 0000 0100 	orib #0,%a0@(256)
   4080c:	e011           	roxrb #8,%d1
   4080e:	e600           	asrb #3,%d0
   40810:	c044           	andw %d4,%d0
   40812:	a644 a634      	macw %d4l,%a3l,>>
   40816:	e400           	asrb #2,%d0
   40818:	0705           	btst %d3,%d5
   4081a:	e018           	rorb #8,%d0
   4081c:	e400           	asrb #2,%d0
   4081e:	0700           	btst %d3,%d0
   40820:	a624           	.short 0xa624
   40822:	e400           	asrb #2,%d0
   40824:	0705           	btst %d3,%d5
   40826:	e018           	rorb #8,%d0
   40828:	e400           	asrb #2,%d0
   4082a:	0700           	btst %d3,%d0
   4082c:	a614           	.short 0xa614
   4082e:	e400           	asrb #2,%d0
   40830:	0705           	btst %d3,%d5
   40832:	e018           	rorb #8,%d0
   40834:	e400           	asrb #2,%d0
   40836:	0700           	btst %d3,%d0
   40838:	a604           	.short 0xa604
   4083a:	e400           	asrb #2,%d0
   4083c:	0705           	btst %d3,%d5
   4083e:	e018           	rorb #8,%d0
   40840:	e400           	asrb #2,%d0
   40842:	0700           	btst %d3,%d0
   40844:	c004           	andb %d4,%d0
   40846:	0000 0054      	orib #84,%d0
   4084a:	0002 0000      	orib #0,%d2
   4084e:	000f           	.short 0x000f
   40850:	0016 0800      	orib #0,%fp@
   40854:	0303           	btst %d1,%d3
   40856:	0200 0000      	andib #0,%d0
   4085a:	0028 0000 0100 	orib #0,%a0@(256)
   40860:	e001           	asrb #8,%d1
   40862:	e600           	asrb #3,%d0
   40864:	c050           	andw %a0@,%d0
   40866:	9650           	subw %a0@,%d3
   40868:	9640           	subw %d0,%d3
   4086a:	e400           	asrb #2,%d0
   4086c:	0805 e018      	btst #24,%d5
   40870:	e400           	asrb #2,%d0
   40872:	0800 9630      	btst #48,%d0
   40876:	e400           	asrb #2,%d0
   40878:	0805 e018      	btst #24,%d5
   4087c:	e400           	asrb #2,%d0
   4087e:	0800 9620      	btst #32,%d0
   40882:	e400           	asrb #2,%d0
   40884:	0805 e018      	btst #24,%d5
   40888:	e400           	asrb #2,%d0
   4088a:	0800 9610      	btst #16,%d0
   4088e:	e400           	asrb #2,%d0
   40890:	0805 e018      	btst #24,%d5
   40894:	e400           	asrb #2,%d0
   40896:	0800 c010      	btst #16,%d0
   4089a:	0000 0084      	orib #-124,%d0
   4089e:	0002 0000      	orib #0,%d2
   408a2:	000f           	.short 0x000f
   408a4:	0016 0900      	orib #0,%fp@
   408a8:	0303           	btst %d1,%d3
   408aa:	0200 0000      	andib #0,%d0
   408ae:	0028 0000 0100 	orib #0,%a0@(256)
   408b4:	e011           	roxrb #8,%d1
   408b6:	e600           	asrb #3,%d0
   408b8:	c050           	andw %a0@,%d0
   408ba:	a650           	.short 0xa650
   408bc:	a640           	.short 0xa640
   408be:	e400           	asrb #2,%d0
   408c0:	0905           	btst %d4,%d5
   408c2:	e006           	asrb #8,%d6
   408c4:	e900           	aslb #4,%d0
   408c6:	ff01 e00c      	cp1stb %fp,%d1,#1,#12
   408ca:	e900           	aslb #4,%d0
   408cc:	ff01 e006      	cp1stb %fp,%d1,#1,#6
   408d0:	e400           	asrb #2,%d0
   408d2:	0900           	btst %d4,%d0
   408d4:	a630           	.short 0xa630
   408d6:	e400           	asrb #2,%d0
   408d8:	0905           	btst %d4,%d5
   408da:	e006           	asrb #8,%d6
   408dc:	e900           	aslb #4,%d0
   408de:	ff01 e00c      	cp1stb %fp,%d1,#1,#12
   408e2:	e900           	aslb #4,%d0
   408e4:	ff01 e006      	cp1stb %fp,%d1,#1,#6
   408e8:	e400           	asrb #2,%d0
   408ea:	0900           	btst %d4,%d0
   408ec:	a620           	.short 0xa620
   408ee:	e400           	asrb #2,%d0
   408f0:	0905           	btst %d4,%d5
   408f2:	e006           	asrb #8,%d6
   408f4:	e900           	aslb #4,%d0
   408f6:	ff01 e00c      	cp1stb %fp,%d1,#1,#12
   408fa:	e900           	aslb #4,%d0
   408fc:	ff01 e006      	cp1stb %fp,%d1,#1,#6
   40900:	e400           	asrb #2,%d0
   40902:	0900           	btst %d4,%d0
   40904:	a610           	.short 0xa610
   40906:	e400           	asrb #2,%d0
   40908:	0905           	btst %d4,%d5
   4090a:	e006           	asrb #8,%d6
   4090c:	e900           	aslb #4,%d0
   4090e:	ff01 e00c      	cp1stb %fp,%d1,#1,#12
   40912:	e900           	aslb #4,%d0
   40914:	ff01 e006      	cp1stb %fp,%d1,#1,#6
   40918:	e400           	asrb #2,%d0
   4091a:	0900           	btst %d4,%d0
   4091c:	c010           	andb %a0@,%d0
   4091e:	0000 001a      	orib #26,%d0
   40922:	0000 0000      	orib #0,%d0
   40926:	0000 0016      	orib #22,%d0
   4092a:	0200 0202      	andib #2,%d0
   4092e:	0300           	btst %d1,%d0
   40930:	2000           	movel %d0,%d0
   40932:	0001 0300      	orib #0,%d1
   40936:	0000 0000      	orib #0,%d0
   4093a:	001a 0000      	orib #0,%a2@+
   4093e:	0000 0000      	orib #0,%d0
   40942:	0016 0200      	orib #0,%fp@
   40946:	0202 0400      	andib #0,%d2
   4094a:	2000           	movel %d0,%d0
   4094c:	0001 0300      	orib #0,%d1
   40950:	0000 0000      	orib #0,%d0
   40954:	001a 0000      	orib #0,%a2@+
   40958:	0000 0000      	orib #0,%d0
   4095c:	0016 0200      	orib #0,%fp@
   40960:	0202 0300      	andib #0,%d2
   40964:	2000           	movel %d0,%d0
   40966:	0001 0300      	orib #0,%d1
   4096a:	0000 0000      	orib #0,%d0
   4096e:	001a 0000      	orib #0,%a2@+
   40972:	0000 0000      	orib #0,%d0
   40976:	0016 0200      	orib #0,%fp@
   4097a:	0202 0400      	andib #0,%d2
   4097e:	2000           	movel %d0,%d0
   40980:	0001 0300      	orib #0,%d1
   40984:	0000 0000      	orib #0,%d0
   40988:	001a 0000      	orib #0,%a2@+
   4098c:	0000 0000      	orib #0,%d0
   40990:	0016 0200      	orib #0,%fp@
   40994:	0202 0300      	andib #0,%d2
   40998:	2000           	movel %d0,%d0
   4099a:	0001 0300      	orib #0,%d1
   4099e:	0000 0000      	orib #0,%d0
   409a2:	001a 0000      	orib #0,%a2@+
   409a6:	0000 0000      	orib #0,%d0
   409aa:	0016 0200      	orib #0,%fp@
   409ae:	0202 0400      	andib #0,%d2
   409b2:	2000           	movel %d0,%d0
   409b4:	0001 0300      	orib #0,%d1
   409b8:	0000 0000      	orib #0,%d0
   409bc:	001a 0000      	orib #0,%a2@+
   409c0:	0000 0000      	orib #0,%d0
   409c4:	0016 0200      	orib #0,%fp@
   409c8:	0202 0300      	andib #0,%d2
   409cc:	2000           	movel %d0,%d0
   409ce:	0001 0300      	orib #0,%d1
	...
   409de:	0016 0200      	orib #0,%fp@
   409e2:	0202 0400      	andib #0,%d2
   409e6:	2000           	movel %d0,%d0
   409e8:	0001 0300      	orib #0,%d1
   409ec:	0000 0000      	orib #0,%d0
   409f0:	0152           	bchg %d0,%a2@
   409f2:	0020 0002      	orib #2,%a0@-
   409f6:	0010 0000      	orib #0,%a0@
   409fa:	0016 0a00      	orib #0,%fp@
   409fe:	0202 0300      	andib #0,%d2
   40a02:	0000 0003      	orib #3,%d0
   40a06:	0700           	btst %d3,%d0
   40a08:	a008 e030      	macw %a0l,%d0l
   40a0c:	a028           	.short 0xa028
   40a0e:	0128 0000      	btst %d0,%a0@(0)
   40a12:	0022 0002      	orib #2,%a2@-
   40a16:	0020 0000      	orib #0,%a0@-
   40a1a:	0016 0a01      	orib #1,%fp@
   40a1e:	0202 0300      	andib #0,%d2
   40a22:	0000 0003      	orib #3,%d0
   40a26:	0700           	btst %d3,%d0
   40a28:	9810           	subb %a0@,%d4
   40a2a:	e034           	roxrb %d0,%d4
   40a2c:	9820           	subb %a0@-,%d4
   40a2e:	e009           	lsrb #8,%d1
   40a30:	0120           	btst %d0,%a0@-
   40a32:	0000 001e      	orib #30,%d0
   40a36:	0002 0030      	orib #48,%d2
   40a3a:	0000 0016      	orib #22,%d0
   40a3e:	0a02 0202      	eorib #2,%d2
   40a42:	0300           	btst %d1,%d0
   40a44:	0000 0003      	orib #3,%d0
   40a48:	0700           	btst %d3,%d0
   40a4a:	9018           	subb %a0@+,%d0
   40a4c:	e045           	asrw #8,%d5
   40a4e:	0118           	btst %d0,%a0@+
   40a50:	0000 0022      	orib #34,%d0
   40a54:	0002 0040      	orib #64,%d2
   40a58:	0000 0016      	orib #22,%d0
   40a5c:	0a03 0202      	eorib #2,%d3
   40a60:	0300           	btst %d1,%d0
   40a62:	0000 0003      	orib #3,%d0
   40a66:	0700           	btst %d3,%d0
   40a68:	9820           	subb %a0@-,%d4
   40a6a:	e034           	roxrb %d0,%d4
   40a6c:	9810           	subb %a0@,%d4
   40a6e:	e009           	lsrb #8,%d1
   40a70:	0110           	btst %d0,%a0@
   40a72:	0000 0020      	orib #32,%d0
   40a76:	0002 0050      	orib #80,%d2
   40a7a:	0000 0016      	orib #22,%d0
   40a7e:	0a04 0202      	eorib #2,%d4
   40a82:	0300           	btst %d1,%d0
   40a84:	0000 0003      	orib #3,%d0
   40a88:	0700           	btst %d3,%d0
   40a8a:	a028           	.short 0xa028
   40a8c:	e030           	roxrb %d0,%d0
   40a8e:	a008 0108      	msacw %a0l,%d0l
   40a92:	0000 0020      	orib #32,%d0
   40a96:	0002 0064      	orib #100,%d2
   40a9a:	0000 0016      	orib #22,%d0
   40a9e:	0a00 0202      	eorib #2,%d0
   40aa2:	0300           	btst %d1,%d0
   40aa4:	0000 0003      	orib #3,%d0
   40aa8:	0700           	btst %d3,%d0
   40aaa:	a032           	.short 0xa032
   40aac:	e030           	roxrb %d0,%d0
   40aae:	a052           	.short 0xa052
   40ab0:	0152           	bchg %d0,%a2@
   40ab2:	0000 0022      	orib #34,%d0
   40ab6:	0002 0074      	orib #116,%d2
   40aba:	0000 0016      	orib #22,%d0
   40abe:	0a01 0202      	eorib #2,%d1
   40ac2:	0300           	btst %d1,%d0
   40ac4:	0000 0003      	orib #3,%d0
   40ac8:	0700           	btst %d3,%d0
   40aca:	983a e034      	subb %pc@(0x3eb00),%d4
   40ace:	984a           	subw %a2,%d4
   40ad0:	e009           	lsrb #8,%d1
   40ad2:	014a 0000      	movepl %a2@(0),%d0
   40ad6:	0020 0002      	orib #2,%a0@-
   40ada:	0084 0000 0016 	oril #22,%d4
   40ae0:	0a02 0202      	eorib #2,%d2
   40ae4:	0300           	btst %d1,%d0
   40ae6:	0000 0003      	orib #3,%d0
   40aea:	0700           	btst %d3,%d0
   40aec:	9042           	subw %d2,%d0
   40aee:	e045           	asrw #8,%d5
   40af0:	9042           	subw %d2,%d0
   40af2:	0142           	bchg %d0,%d2
   40af4:	0000 0022      	orib #34,%d0
   40af8:	0002 0094      	orib #-108,%d2
   40afc:	0000 0016      	orib #22,%d0
   40b00:	0a03 0202      	eorib #2,%d3
   40b04:	0300           	btst %d1,%d0
   40b06:	0000 0003      	orib #3,%d0
   40b0a:	0700           	btst %d3,%d0
   40b0c:	984a           	subw %a2,%d4
   40b0e:	e034           	roxrb %d0,%d4
   40b10:	983a e009      	subb %pc@(0x3eb1b),%d4
   40b14:	013a 0000      	btst %d0,%pc@(0x40b16)
   40b18:	0020 0002      	orib #2,%a0@-
   40b1c:	00a4 0000 0016 	oril #22,%a4@-
   40b22:	0a04 0202      	eorib #2,%d4
   40b26:	0300           	btst %d1,%d0
   40b28:	0000 0003      	orib #3,%d0
   40b2c:	0700           	btst %d3,%d0
   40b2e:	a052           	.short 0xa052
   40b30:	e030           	roxrb %d0,%d0
   40b32:	a032           	.short 0xa032
   40b34:	0132 0000      	btst %d0,%a2@(0,%d0:w)
	...
   40b40:	0000 021e      	orib #30,%d0
   40b44:	0024 0002      	orib #2,%a4@-
   40b48:	0010 0000      	orib #0,%a0@
   40b4c:	0016 0e00      	orib #0,%fp@
   40b50:	0303           	btst %d1,%d3
   40b52:	0300           	btst %d1,%d0
   40b54:	0800 0001      	btst #1,%d0
   40b58:	0200 0108      	andib #8,%d0
   40b5c:	e002           	asrb #8,%d2
   40b5e:	8708           	sbcd %a0@-,%a3@-
   40b60:	3508           	movew %a0,%a2@-
   40b62:	8708           	sbcd %a0@-,%a3@-
   40b64:	e700           	aslb #3,%d0
   40b66:	01b0 0024      	bclr %d0,%a0@(24,%d0:w)
   40b6a:	0002 0010      	orib #16,%d2
   40b6e:	0000 0016      	orib #22,%d0
   40b72:	0e00           	.short 0x0e00
   40b74:	0303           	btst %d1,%d3
   40b76:	0200 0800      	andib #0,%d0
   40b7a:	0001 0200      	orib #0,%d1
   40b7e:	0108 e012      	movepw %a0@(-8174),%d0
   40b82:	7508           	mvsb %a0,%d2
   40b84:	2208           	movel %a0,%d1
   40b86:	7408           	moveq #8,%d2
   40b88:	e700           	aslb #3,%d0
   40b8a:	018c 0024      	movepw %d0,%a4@(36)
   40b8e:	0002 0010      	orib #16,%d2
   40b92:	0000 0016      	orib #22,%d0
   40b96:	0e00           	.short 0x0e00
   40b98:	0303           	btst %d1,%d3
   40b9a:	0200 0800      	andib #0,%d0
   40b9e:	0001 0200      	orib #0,%d1
   40ba2:	0108 e017      	movepw %a0@(-8169),%d0
   40ba6:	9208           	.short 0x9208
   40ba8:	5708           	subqb #3,%a0
   40baa:	9e08           	.short 0x9e08
   40bac:	e700           	aslb #3,%d0
   40bae:	0168 0024      	bchg %d0,%a0@(36)
   40bb2:	0002 0010      	orib #16,%d2
   40bb6:	0000 0016      	orib #22,%d0
   40bba:	0e00           	.short 0x0e00
   40bbc:	0303           	btst %d1,%d3
   40bbe:	0300           	btst %d1,%d0
   40bc0:	0800 0001      	btst #1,%d0
   40bc4:	0200 0108      	andib #8,%d0
   40bc8:	e009           	lsrb #8,%d1
   40bca:	a008 3c08      	macl %a0,%d0
   40bce:	6008           	bras 0x40bd8
   40bd0:	e700           	aslb #3,%d0
   40bd2:	0144           	bchg %d0,%d4
   40bd4:	0024 0002      	orib #2,%a4@-
   40bd8:	0010 0000      	orib #0,%a0@
   40bdc:	0016 0e00      	orib #0,%fp@
   40be0:	0303           	btst %d1,%d3
   40be2:	0200 0800      	andib #0,%d0
   40be6:	0001 0200      	orib #0,%d1
   40bea:	0108 e020      	movepw %a0@(-8160),%d0
   40bee:	6908           	bvss 0x40bf8
   40bf0:	2508           	movel %a0,%a2@-
   40bf2:	6308           	blss 0x40bfc
   40bf4:	e700           	aslb #3,%d0
   40bf6:	0120           	btst %d0,%a0@-
   40bf8:	0024 0002      	orib #2,%a4@-
   40bfc:	0010 0000      	orib #0,%a0@
   40c00:	0016 0e00      	orib #0,%fp@
   40c04:	0303           	btst %d1,%d3
   40c06:	0300           	btst %d1,%d0
   40c08:	0800 0001      	btst #1,%d0
   40c0c:	0200 0108      	andib #8,%d0
   40c10:	e01d           	rorb #8,%d5
   40c12:	8c08           	.short 0x8c08
   40c14:	4e08           	.short 0x4e08
   40c16:	5708           	subqb #3,%a0
   40c18:	e700           	aslb #3,%d0
   40c1a:	00fc           	.short 0x00fc
   40c1c:	0024 0160      	orib #96,%a4@-
   40c20:	0010 0000      	orib #0,%a0@
   40c24:	0016 0e00      	orib #0,%fp@
   40c28:	0303           	btst %d1,%d3
   40c2a:	0200 0800      	andib #0,%d0
   40c2e:	0001 0200      	orib #0,%d1
   40c32:	0108 e002      	movepw %a0@(-8190),%d0
   40c36:	3f08           	movew %a0,%sp@-
   40c38:	8a08           	.short 0x8a08
   40c3a:	3d08           	movew %a0,%fp@-
   40c3c:	e700           	aslb #3,%d0
   40c3e:	00d8           	.short 0x00d8
   40c40:	0024 0160      	orib #96,%a4@-
   40c44:	0010 0000      	orib #0,%a0@
   40c48:	0016 0e00      	orib #0,%fp@
   40c4c:	0303           	btst %d1,%d3
   40c4e:	0300           	btst %d1,%d0
   40c50:	0800 0001      	btst #1,%d0
   40c54:	0200 0108      	andib #8,%d0
   40c58:	e022           	asrb %d0,%d2
   40c5a:	4408           	.short 0x4408
   40c5c:	9108           	subxb %a0@-,%a0@-
   40c5e:	4008           	.short 0x4008
   40c60:	e700           	aslb #3,%d0
   40c62:	00b4 0024 0160 	oril #2359648,%a4@(10,%d0:w)
   40c68:	0010 
   40c6a:	0000 0016      	orib #22,%d0
   40c6e:	0e00           	.short 0x0e00
   40c70:	0303           	btst %d1,%d3
   40c72:	0200 0800      	andib #0,%d0
   40c76:	0001 0200      	orib #0,%d1
   40c7a:	0108 e011      	movepw %a0@(-8175),%d0
   40c7e:	1108           	.short 0x1108
   40c80:	6808           	bvcs 0x40c8a
   40c82:	2208           	movel %a0,%d1
   40c84:	e700           	aslb #3,%d0
   40c86:	0090 0024 0160 	oril #2359648,%a0@
   40c8c:	0010 0000      	orib #0,%a0@
   40c90:	0016 0e00      	orib #0,%fp@
   40c94:	0303           	btst %d1,%d3
   40c96:	0300           	btst %d1,%d0
   40c98:	0800 0001      	btst #1,%d0
   40c9c:	0200 0108      	andib #8,%d0
   40ca0:	e01e           	rorb #8,%d6
   40ca2:	4708           	.short 0x4708
   40ca4:	ab08           	.short 0xab08
   40ca6:	3308           	movew %a0,%a1@-
   40ca8:	e700           	aslb #3,%d0
   40caa:	006c 0024 0160 	oriw #36,%a4@(352)
   40cb0:	0010 0000      	orib #0,%a0@
   40cb4:	0016 0e00      	orib #0,%fp@
   40cb8:	0303           	btst %d1,%d3
   40cba:	0200 0800      	andib #0,%d0
   40cbe:	0001 0200      	orib #0,%d1
   40cc2:	0108 e005      	movepw %a0@(-8187),%d0
   40cc6:	4008           	.short 0x4008
   40cc8:	9008           	.short 0x9008
   40cca:	4008           	.short 0x4008
   40ccc:	e700           	aslb #3,%d0
   40cce:	0048           	.short 0x0048
   40cd0:	0000 0160      	orib #96,%d0
   40cd4:	0010 0000      	orib #0,%a0@
   40cd8:	0016 0e00      	orib #0,%fp@
   40cdc:	0303           	btst %d1,%d3
   40cde:	0300           	btst %d1,%d0
   40ce0:	0800 0001      	btst #1,%d0
   40ce4:	0200 0108      	andib #8,%d0
   40ce8:	e002           	asrb #8,%d2
   40cea:	2208           	movel %a0,%d1
   40cec:	7708           	mvsb %a0,%d3
   40cee:	2208           	movel %a0,%d1
   40cf0:	e700           	aslb #3,%d0
   40cf2:	0024 e200      	orib #0,%a4@-
   40cf6:	0303           	btst %d1,%d3
   40cf8:	0303           	btst %d1,%d3
   40cfa:	0303           	btst %d1,%d3
   40cfc:	0303           	btst %d1,%d3
   40cfe:	0303           	btst %d1,%d3
   40d00:	fd03 fd03      	cp0stb %sp,%d3,#7,#259
   40d04:	fd03 fd03      	cp0stb %sp,%d3,#7,#259
   40d08:	fd03 0303      	cp0stb %d0,%d3,#2,#259
   40d0c:	0303           	btst %d1,%d3
   40d0e:	0303           	btst %d1,%d3
   40d10:	0303           	btst %d1,%d3
   40d12:	0303           	btst %d1,%d3
   40d14:	fd03 fd03      	cp0stb %sp,%d3,#7,#259
   40d18:	fd03 fd03      	cp0stb %sp,%d3,#7,#259
   40d1c:	fd03 0303      	cp0stb %d0,%d3,#2,#259
   40d20:	0303           	btst %d1,%d3
   40d22:	0303           	btst %d1,%d3
   40d24:	0303           	btst %d1,%d3
   40d26:	0303           	btst %d1,%d3
   40d28:	fd03 fd03      	cp0stb %sp,%d3,#7,#259
   40d2c:	fd03 fd03      	cp0stb %sp,%d3,#7,#259
   40d30:	fd03 0303      	cp0stb %d0,%d3,#2,#259
   40d34:	0303           	btst %d1,%d3
   40d36:	0303           	btst %d1,%d3
   40d38:	0303           	btst %d1,%d3
   40d3a:	0303           	btst %d1,%d3
   40d3c:	fd03 fd03      	cp0stb %sp,%d3,#7,#259
   40d40:	fd03 fd03      	cp0stb %sp,%d3,#7,#259
   40d44:	fd03 0303      	cp0stb %d0,%d3,#2,#259
   40d48:	0303           	btst %d1,%d3
   40d4a:	0303           	btst %d1,%d3
   40d4c:	0303           	btst %d1,%d3
   40d4e:	0303           	btst %d1,%d3
   40d50:	fd03 fd03      	cp0stb %sp,%d3,#7,#259
   40d54:	fd03 fd03      	cp0stb %sp,%d3,#7,#259
   40d58:	fd03 e200      	cp0stb %fp,%d3,#2,#0
   40d5c:	0152           	bchg %d0,%a2@
   40d5e:	0000 014a      	orib #74,%d0
   40d62:	002a 0138 0042 	orib #56,%a2@(66)
   40d68:	0fff           	.short 0x0fff
   40d6a:	0016 0300      	orib #0,%fp@
   40d6e:	0404 0100      	subib #0,%d4
   40d72:	0c00 0008      	cmpib #8,%d0
   40d76:	0400 9c21      	subib #33,%d0
   40d7a:	e001           	asrb #8,%d1
   40d7c:	e900           	aslb #4,%d0
   40d7e:	ff80 e008      	cp1stl %fp,%d0,#1,#8
   40d82:	e900           	aslb #4,%d0
   40d84:	ff80 e006      	cp1stl %fp,%d0,#1,#6
   40d88:	eb00           	aslb #5,%d0
   40d8a:	0000 001a      	orib #26,%d0
   40d8e:	0000 0000      	orib #0,%d0
   40d92:	0000 0016      	orib #22,%d0
   40d96:	0200 0202      	andib #2,%d0
   40d9a:	0400 2000      	subib #0,%d0
   40d9e:	0080 0300 0000 	oril #50331648,%d0
   40da4:	0000 001a      	orib #26,%d0
   40da8:	0000 0000      	orib #0,%d0
   40dac:	0000 0016      	orib #22,%d0
   40db0:	0201 0202      	andib #2,%d1
   40db4:	0500           	btst %d2,%d0
   40db6:	2000           	movel %d0,%d0
   40db8:	0080 0300 0000 	oril #50331648,%d0
   40dbe:	0000 001a      	orib #26,%d0
   40dc2:	0000 0000      	orib #0,%d0
   40dc6:	0000 0016      	orib #22,%d0
   40dca:	0202 0202      	andib #2,%d2
   40dce:	0400 2000      	subib #0,%d0
   40dd2:	0080 0300 0000 	oril #50331648,%d0
   40dd8:	0000 001a      	orib #26,%d0
   40ddc:	0000 0000      	orib #0,%d0
   40de0:	0000 0016      	orib #22,%d0
   40de4:	0200 0202      	andib #2,%d0
   40de8:	0500           	btst %d2,%d0
   40dea:	2000           	movel %d0,%d0
   40dec:	0080 0300 0000 	oril #50331648,%d0
   40df2:	0000 001a      	orib #26,%d0
   40df6:	0000 0000      	orib #0,%d0
   40dfa:	0000 0016      	orib #22,%d0
   40dfe:	0201 0202      	andib #2,%d1
   40e02:	0400 2000      	subib #0,%d0
   40e06:	0080 0300 0000 	oril #50331648,%d0
   40e0c:	0000 001a      	orib #26,%d0
   40e10:	0000 0000      	orib #0,%d0
   40e14:	0000 0016      	orib #22,%d0
   40e18:	0202 0202      	andib #2,%d2
   40e1c:	0500           	btst %d2,%d0
   40e1e:	2000           	movel %d0,%d0
   40e20:	0080 0300 0000 	oril #50331648,%d0
   40e26:	0000 001a      	orib #26,%d0
   40e2a:	0000 0000      	orib #0,%d0
   40e2e:	0000 0016      	orib #22,%d0
   40e32:	0200 0202      	andib #2,%d0
   40e36:	0400 2000      	subib #0,%d0
   40e3a:	0080 0300 0000 	oril #50331648,%d0
   40e40:	0000 001a      	orib #26,%d0
   40e44:	0000 0000      	orib #0,%d0
   40e48:	0000 0016      	orib #22,%d0
   40e4c:	0201 0202      	andib #2,%d1
   40e50:	0500           	btst %d2,%d0
   40e52:	2000           	movel %d0,%d0
   40e54:	0080 0300 0000 	oril #50331648,%d0
   40e5a:	0000 001a      	orib #26,%d0
   40e5e:	0000 0000      	orib #0,%d0
   40e62:	0000 0016      	orib #22,%d0
   40e66:	0202 0202      	andib #2,%d2
   40e6a:	0400 2000      	subib #0,%d0
   40e6e:	0080 0300 0000 	oril #50331648,%d0
   40e74:	0000 001a      	orib #26,%d0
   40e78:	0000 0000      	orib #0,%d0
   40e7c:	0000 0016      	orib #22,%d0
   40e80:	0202 0202      	andib #2,%d2
   40e84:	0500           	btst %d2,%d0
   40e86:	2000           	movel %d0,%d0
   40e88:	0080 0300 0000 	oril #50331648,%d0
	...
   40e96:	0000 0016      	orib #22,%d0
   40e9a:	0202 0202      	andib #2,%d2
   40e9e:	0400 2000      	subib #0,%d0
   40ea2:	0080 0300 0000 	oril #50331648,%d0
   40ea8:	0000 0400      	orib #0,%d0
   40eac:	0400 0401      	subib #1,%d0
   40eb0:	0401 0400      	subib #0,%d1
   40eb4:	0402 0401      	subib #1,%d2
   40eb8:	0402 0401      	subib #1,%d2
   40ebc:	0403 0402      	subib #2,%d3
   40ec0:	0403 0403      	subib #3,%d3
   40ec4:	0404 0404      	subib #4,%d4
   40ec8:	0304           	btst %d1,%d4
   40eca:	0304           	btst %d1,%d4
   40ecc:	0304           	btst %d1,%d4
   40ece:	0204 0204      	andib #4,%d4
   40ed2:	0204 0104      	andib #4,%d4
   40ed6:	0104           	btst %d0,%d4
   40ed8:	0104           	btst %d0,%d4
   40eda:	0104           	btst %d0,%d4
   40edc:	0104           	btst %d0,%d4
   40ede:	0004 0004      	orib #4,%d4
   40ee2:	0004 0004      	orib #4,%d4
   40ee6:	ff04 ff04      	cp1stb %sp,%d4,#8,#260
   40eea:	ff04 ff04      	cp1stb %sp,%d4,#8,#260
   40eee:	ff04 fe04      	cp1stb %sp,%d4,#8,#4
   40ef2:	fe04 fe04      	cp1ldb %d4,%sp,#8,#4
   40ef6:	fd04 fd04      	cp0stb %sp,%d4,#7,#260
   40efa:	fd04 fc04      	cp0stb %sp,%d4,#7,#4
   40efe:	fc04 fc03      	cp0ldb %d4,%sp,#7,#3
   40f02:	fc03 fc02      	cp0ldb %d3,%sp,#7,#2
   40f06:	fc03 fc01      	cp0ldb %d3,%sp,#7,#1
   40f0a:	fc02 fc01      	cp0ldb %d2,%sp,#7,#1
   40f0e:	fc02 fc00      	cp0ldb %d2,%sp,#7,#0
   40f12:	fc01 fc01      	cp0ldb %d1,%sp,#7,#1
   40f16:	fc00 fc00      	cp0ldb %d0,%sp,#7,#0
   40f1a:	fc00 fc00      	cp0ldb %d0,%sp,#7,#0
   40f1e:	fcff           	.short 0xfcff
   40f20:	fcff           	.short 0xfcff
   40f22:	fc00 fcfe      	cp0ldb %d0,%sp,#7,#254
   40f26:	fcff           	.short 0xfcff
   40f28:	fcfe           	.short 0xfcfe
   40f2a:	fcff           	.short 0xfcff
   40f2c:	fcfd           	.short 0xfcfd
   40f2e:	fcfe           	.short 0xfcfe
   40f30:	fcfd           	.short 0xfcfd
   40f32:	fcfd           	.short 0xfcfd
   40f34:	fcfc           	.short 0xfcfc
   40f36:	fcfc           	.short 0xfcfc
   40f38:	fdfc           	.short 0xfdfc
   40f3a:	fdfc           	.short 0xfdfc
   40f3c:	fdfc           	.short 0xfdfc
   40f3e:	fefc           	.short 0xfefc
   40f40:	fefc           	.short 0xfefc
   40f42:	fefc           	.short 0xfefc
   40f44:	fffc           	.short 0xfffc
   40f46:	fffc           	.short 0xfffc
   40f48:	fffc           	.short 0xfffc
   40f4a:	fffc           	.short 0xfffc
   40f4c:	fffc           	.short 0xfffc
   40f4e:	00fc           	.short 0x00fc
   40f50:	00fc           	.short 0x00fc
   40f52:	00fc           	.short 0x00fc
   40f54:	00fc           	.short 0x00fc
   40f56:	01fc           	.short 0x01fc
   40f58:	01fc           	.short 0x01fc
   40f5a:	01fc           	.short 0x01fc
   40f5c:	01fc           	.short 0x01fc
   40f5e:	01fc           	.short 0x01fc
   40f60:	02fc           	.short 0x02fc
   40f62:	02fc           	.short 0x02fc
   40f64:	02fc           	.short 0x02fc
   40f66:	03fc           	.short 0x03fc
   40f68:	03fc           	.short 0x03fc
   40f6a:	03fc           	.short 0x03fc
   40f6c:	04fc           	.short 0x04fc
   40f6e:	04fc           	.short 0x04fc
   40f70:	04fd           	.short 0x04fd
   40f72:	04fd           	.short 0x04fd
   40f74:	04fe           	.short 0x04fe
   40f76:	04fd           	.short 0x04fd
   40f78:	04ff           	.short 0x04ff
   40f7a:	04fe           	.short 0x04fe
   40f7c:	04ff           	.short 0x04ff
   40f7e:	04fe           	.short 0x04fe
   40f80:	0400 04ff      	subib #-1,%d0
   40f84:	04ff           	.short 0x04ff
   40f86:	0400 0400      	subib #0,%d0
   40f8a:	0303           	btst %d1,%d3
   40f8c:	0303           	btst %d1,%d3
   40f8e:	0303           	btst %d1,%d3
   40f90:	0303           	btst %d1,%d3
   40f92:	0303           	btst %d1,%d3
   40f94:	0303           	btst %d1,%d3
   40f96:	0303           	btst %d1,%d3
   40f98:	0303           	btst %d1,%d3
   40f9a:	0300           	btst %d1,%d0
   40f9c:	0300           	btst %d1,%d0
   40f9e:	0301           	btst %d1,%d1
   40fa0:	0300           	btst %d1,%d0
   40fa2:	0301           	btst %d1,%d1
   40fa4:	0301           	btst %d1,%d1
   40fa6:	0302           	btst %d1,%d2
   40fa8:	0301           	btst %d1,%d1
   40faa:	0302           	btst %d1,%d2
   40fac:	0302           	btst %d1,%d2
   40fae:	0302           	btst %d1,%d2
   40fb0:	0303           	btst %d1,%d3
   40fb2:	0303           	btst %d1,%d3
   40fb4:	0203 0203      	andib #3,%d3
   40fb8:	0103           	btst %d0,%d3
   40fba:	0203 0103      	andib #3,%d3
   40fbe:	0103           	btst %d0,%d3
   40fc0:	0103           	btst %d0,%d3
   40fc2:	0003 0103      	orib #3,%d3
   40fc6:	0003 0003      	orib #3,%d3
   40fca:	0003 0003      	orib #3,%d3
   40fce:	ff03 0003      	cp1stb %d0,%d3,#1,#3
   40fd2:	ff03 ff03      	cp1stb %sp,%d3,#8,#259
   40fd6:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
   40fda:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
   40fde:	fe03 fd03      	cp1ldb %d3,%sp,#7,#259
   40fe2:	fd03 fd02      	cp0stb %sp,%d3,#7,#258
   40fe6:	fd02 fd02      	cp0stb %sp,%d2,#7,#258
   40fea:	fd01 fd02      	cp0stb %sp,%d1,#7,#258
   40fee:	fd01 fd01      	cp0stb %sp,%d1,#7,#257
   40ff2:	fd00 fd01      	cp0stb %sp,%d0,#7,#257
   40ff6:	fd00 fd00      	cp0stb %sp,%d0,#7,#256
   40ffa:	fd00 fd00      	cp0stb %sp,%d0,#7,#256
   40ffe:	fdff           	.short 0xfdff
   41000:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
   41004:	fdff           	.short 0xfdff
   41006:	fdfe           	.short 0xfdfe
   41008:	fdff           	.short 0xfdff
   4100a:	fdfe           	.short 0xfdfe
   4100c:	fdfe           	.short 0xfdfe
   4100e:	fdfe           	.short 0xfdfe
   41010:	fdfd           	.short 0xfdfd
   41012:	fdfd           	.short 0xfdfd
   41014:	fefd           	.short 0xfefd
   41016:	fefd           	.short 0xfefd
   41018:	fffd           	.short 0xfffd
   4101a:	fefd           	.short 0xfefd
   4101c:	fffd           	.short 0xfffd
   4101e:	fffd           	.short 0xfffd
   41020:	fffd           	.short 0xfffd
   41022:	00fd           	.short 0x00fd
   41024:	fffd           	.short 0xfffd
   41026:	00fd           	.short 0x00fd
   41028:	00fd           	.short 0x00fd
   4102a:	00fd           	.short 0x00fd
   4102c:	00fd           	.short 0x00fd
   4102e:	01fd           	.short 0x01fd
   41030:	00fd           	.short 0x00fd
   41032:	01fd           	.short 0x01fd
   41034:	01fd           	.short 0x01fd
   41036:	01fd           	.short 0x01fd
   41038:	02fd           	.short 0x02fd
   4103a:	01fd           	.short 0x01fd
   4103c:	02fd           	.short 0x02fd
   4103e:	02fd           	.short 0x02fd
   41040:	03fd           	.short 0x03fd
   41042:	03fd           	.short 0x03fd
   41044:	03fe           	.short 0x03fe
   41046:	03fe           	.short 0x03fe
   41048:	03fe           	.short 0x03fe
   4104a:	03ff           	.short 0x03ff
   4104c:	03fe           	.short 0x03fe
   4104e:	03ff           	.short 0x03ff
   41050:	03ff           	.short 0x03ff
   41052:	0300           	btst %d1,%d0
   41054:	03ff           	.short 0x03ff
   41056:	0300           	btst %d1,%d0
   41058:	0300           	btst %d1,%d0
   4105a:	0303           	btst %d1,%d3
   4105c:	0303           	btst %d1,%d3
   4105e:	0303           	btst %d1,%d3
   41060:	0303           	btst %d1,%d3
   41062:	0303           	btst %d1,%d3
   41064:	0303           	btst %d1,%d3
   41066:	0303           	btst %d1,%d3
   41068:	0303           	btst %d1,%d3
   4106a:	0300           	btst %d1,%d0
   4106c:	0300           	btst %d1,%d0
   4106e:	0301           	btst %d1,%d1
   41070:	0301           	btst %d1,%d1
   41072:	0301           	btst %d1,%d1
   41074:	0301           	btst %d1,%d1
   41076:	0302           	btst %d1,%d2
   41078:	0302           	btst %d1,%d2
   4107a:	0302           	btst %d1,%d2
   4107c:	0303           	btst %d1,%d3
   4107e:	0203 0203      	andib #3,%d3
   41082:	0203 0103      	andib #3,%d3
   41086:	0103           	btst %d0,%d3
   41088:	0103           	btst %d0,%d3
   4108a:	0103           	btst %d0,%d3
   4108c:	0003 0003      	orib #3,%d3
   41090:	0003 0003      	orib #3,%d3
   41094:	ff03 ff03      	cp1stb %sp,%d3,#8,#259
   41098:	ff03 ff03      	cp1stb %sp,%d3,#8,#259
   4109c:	fe03 fe03      	cp1ldb %d3,%sp,#8,#3
   410a0:	fe03 fd03      	cp1ldb %d3,%sp,#7,#259
   410a4:	fd02 fd02      	cp0stb %sp,%d2,#7,#258
   410a8:	fd02 fd01      	cp0stb %sp,%d2,#7,#257
   410ac:	fd01 fd01      	cp0stb %sp,%d1,#7,#257
   410b0:	fd01 fd00      	cp0stb %sp,%d1,#7,#256
   410b4:	fd00 fd00      	cp0stb %sp,%d0,#7,#256
   410b8:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
   410bc:	fdff           	.short 0xfdff
   410be:	fdff           	.short 0xfdff
   410c0:	fdff           	.short 0xfdff
   410c2:	fdfe           	.short 0xfdfe
   410c4:	fdfe           	.short 0xfdfe
   410c6:	fdfe           	.short 0xfdfe
   410c8:	fdfd           	.short 0xfdfd
   410ca:	fefd           	.short 0xfefd
   410cc:	fefd           	.short 0xfefd
   410ce:	fefd           	.short 0xfefd
   410d0:	fffd           	.short 0xfffd
   410d2:	fffd           	.short 0xfffd
   410d4:	fffd           	.short 0xfffd
   410d6:	fffd           	.short 0xfffd
   410d8:	00fd           	.short 0x00fd
   410da:	00fd           	.short 0x00fd
   410dc:	00fd           	.short 0x00fd
   410de:	00fd           	.short 0x00fd
   410e0:	01fd           	.short 0x01fd
   410e2:	01fd           	.short 0x01fd
   410e4:	01fd           	.short 0x01fd
   410e6:	01fd           	.short 0x01fd
   410e8:	02fd           	.short 0x02fd
   410ea:	02fd           	.short 0x02fd
   410ec:	02fd           	.short 0x02fd
   410ee:	03fd           	.short 0x03fd
   410f0:	03fe           	.short 0x03fe
   410f2:	03fe           	.short 0x03fe
   410f4:	03fe           	.short 0x03fe
   410f6:	03ff           	.short 0x03ff
   410f8:	03ff           	.short 0x03ff
   410fa:	03ff           	.short 0x03ff
   410fc:	03ff           	.short 0x03ff
   410fe:	0300           	btst %d1,%d0
   41100:	0300           	btst %d1,%d0
   41102:	0303           	btst %d1,%d3
   41104:	0303           	btst %d1,%d3
   41106:	0303           	btst %d1,%d3
   41108:	0303           	btst %d1,%d3
   4110a:	0303           	btst %d1,%d3
   4110c:	0303           	btst %d1,%d3
   4110e:	0303           	btst %d1,%d3
   41110:	0303           	btst %d1,%d3
   41112:	0300           	btst %d1,%d0
   41114:	0301           	btst %d1,%d1
   41116:	0300           	btst %d1,%d0
   41118:	0301           	btst %d1,%d1
   4111a:	0302           	btst %d1,%d2
   4111c:	0302           	btst %d1,%d2
   4111e:	0302           	btst %d1,%d2
   41120:	0203 0203      	andib #3,%d3
   41124:	0203 0103      	andib #3,%d3
   41128:	0103           	btst %d0,%d3
   4112a:	0103           	btst %d0,%d3
   4112c:	0003 0003      	orib #3,%d3
   41130:	ff03 ff03      	cp1stb %sp,%d3,#8,#259
   41134:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
   41138:	fe03 fe03      	cp1ldb %d3,%sp,#8,#3
   4113c:	fd02 fd02      	cp0stb %sp,%d2,#7,#258
   41140:	fd02 fd01      	cp0stb %sp,%d2,#7,#257
   41144:	fd00 fd01      	cp0stb %sp,%d0,#7,#257
   41148:	fd00 fd00      	cp0stb %sp,%d0,#7,#256
   4114c:	fdff           	.short 0xfdff
   4114e:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
   41152:	fdfe           	.short 0xfdfe
   41154:	fdfe           	.short 0xfdfe
   41156:	fdfe           	.short 0xfdfe
   41158:	fefd           	.short 0xfefd
   4115a:	fefd           	.short 0xfefd
   4115c:	fefd           	.short 0xfefd
   4115e:	fffd           	.short 0xfffd
   41160:	fffd           	.short 0xfffd
   41162:	fffd           	.short 0xfffd
   41164:	00fd           	.short 0x00fd
   41166:	00fd           	.short 0x00fd
   41168:	01fd           	.short 0x01fd
   4116a:	01fd           	.short 0x01fd
   4116c:	01fd           	.short 0x01fd
   4116e:	02fd           	.short 0x02fd
   41170:	02fd           	.short 0x02fd
   41172:	02fd           	.short 0x02fd
   41174:	03fe           	.short 0x03fe
   41176:	03fe           	.short 0x03fe
   41178:	03fe           	.short 0x03fe
   4117a:	03ff           	.short 0x03ff
   4117c:	0300           	btst %d1,%d0
   4117e:	03ff           	.short 0x03ff
   41180:	0300           	btst %d1,%d0
   41182:	0303           	btst %d1,%d3
   41184:	0303           	btst %d1,%d3
   41186:	0303           	btst %d1,%d3
   41188:	0303           	btst %d1,%d3
   4118a:	0303           	btst %d1,%d3
   4118c:	0303           	btst %d1,%d3
   4118e:	0303           	btst %d1,%d3
   41190:	0303           	btst %d1,%d3
   41192:	0300           	btst %d1,%d0
   41194:	0301           	btst %d1,%d1
   41196:	0301           	btst %d1,%d1
   41198:	0302           	btst %d1,%d2
   4119a:	0303           	btst %d1,%d3
   4119c:	0203 0203      	andib #3,%d3
   411a0:	0103           	btst %d0,%d3
   411a2:	0003 0003      	orib #3,%d3
   411a6:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
   411aa:	fe03 fd03      	cp1ldb %d3,%sp,#7,#259
   411ae:	fd02 fd01      	cp0stb %sp,%d2,#7,#257
   411b2:	fd01 fd00      	cp0stb %sp,%d1,#7,#256
   411b6:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
   411ba:	fdff           	.short 0xfdff
   411bc:	fdfe           	.short 0xfdfe
   411be:	fdfd           	.short 0xfdfd
   411c0:	fefd           	.short 0xfefd
   411c2:	fefd           	.short 0xfefd
   411c4:	fffd           	.short 0xfffd
   411c6:	00fd           	.short 0x00fd
   411c8:	00fd           	.short 0x00fd
   411ca:	01fd           	.short 0x01fd
   411cc:	02fd           	.short 0x02fd
   411ce:	02fd           	.short 0x02fd
   411d0:	03fd           	.short 0x03fd
   411d2:	03fe           	.short 0x03fe
   411d4:	03ff           	.short 0x03ff
   411d6:	03ff           	.short 0x03ff
   411d8:	0300           	btst %d1,%d0
	...
   4253e:	0000 3f00      	orib #0,%d0
	...
   42556:	0000 ffff      	orib #-1,%d0
   4255a:	e000           	asrb #8,%d0
	...
   4256c:	000f           	.short 0x000f
   4256e:	ffff           	.short 0xffff
   42570:	ffff           	.short 0xffff
   42572:	e000           	asrb #8,%d0
	...
   42584:	01ff           	.short 0x01ff
   42586:	ffff           	.short 0xffff
   42588:	ffff           	.short 0xffff
   4258a:	fe00 0000      	cp1nop #1
	...
   4259a:	0000 01ff      	orib #-1,%d0
   4259e:	ffff           	.short 0xffff
   425a0:	ffff           	.short 0xffff
   425a2:	ff00 0000      	cp1stb %d0,%d0,#1,#0
	...
   425b2:	0000 00ff      	orib #-1,%d0
   425b6:	ffff           	.short 0xffff
   425b8:	ffff           	.short 0xffff
   425ba:	ff80 0000      	cp1stl %d0,%d0,#1,#0
	...
   425ca:	0000 01ff      	orib #-1,%d0
   425ce:	ffff           	.short 0xffff
   425d0:	ffff           	.short 0xffff
   425d2:	ff80 0000      	cp1stl %d0,%d0,#1,#0
	...
   425e2:	0000 01ff      	orib #-1,%d0
   425e6:	ffff           	.short 0xffff
   425e8:	ffff           	.short 0xffff
   425ea:	ff80 0000      	cp1stl %d0,%d0,#1,#0
	...
   425fa:	0000 01ff      	orib #-1,%d0
   425fe:	ffff           	.short 0xffff
   42600:	ffff           	.short 0xffff
   42602:	ff00 7fff      	cp1stb %d7,%d0,#8,#511
   42606:	ffff           	.short 0xffff
   42608:	fffc           	.short 0xfffc
	...
   42612:	0001 ffff      	orib #-1,%d1
   42616:	ffff           	.short 0xffff
   42618:	ffff           	.short 0xffff
   4261a:	ff87 ffff      	cp1stl %sp,%d7,#8,#511
   4261e:	ffff           	.short 0xffff
   42620:	ffff           	.short 0xffff
	...
   4262a:	0000 7fff      	orib #-1,%d0
   4262e:	ffff           	.short 0xffff
   42630:	ffff           	.short 0xffff
   42632:	ff87 ffff      	cp1stl %sp,%d7,#8,#511
   42636:	ffff           	.short 0xffff
   42638:	fff8           	.short 0xfff8
   4263a:	0000 0000      	orib #0,%d0
   4263e:	0000 03ff      	orib #-1,%d0
   42642:	ffff           	.short 0xffff
   42644:	ffff           	.short 0xffff
   42646:	ffff           	.short 0xffff
   42648:	ffff           	.short 0xffff
   4264a:	ff80 ffff      	cp1stl %sp,%d0,#8,#511
   4264e:	ffff           	.short 0xffff
   42650:	ffff           	.short 0xffff
   42652:	ffff           	.short 0xffff
   42654:	ffff           	.short 0xffff
   42656:	ffff           	.short 0xffff
   42658:	ffff           	.short 0xffff
   4265a:	ff80 07ff      	cp1stl %d0,%d0,#4,#511
   4265e:	ffff           	.short 0xffff
   42660:	ffff           	.short 0xffff
   42662:	ffff           	.short 0xffff
   42664:	ffff           	.short 0xffff
   42666:	ffff           	.short 0xffff
   42668:	ffff           	.short 0xffff
   4266a:	ffff           	.short 0xffff
   4266c:	ffff           	.short 0xffff
   4266e:	ffff           	.short 0xffff
   42670:	f800 0001      	tblub %d0,%d1,%d0
   42674:	ffff           	.short 0xffff
   42676:	ffff           	.short 0xffff
   42678:	ffff           	.short 0xffff
   4267a:	ffbf           	.short 0xffbf
   4267c:	ffff           	.short 0xffff
   4267e:	ffff           	.short 0xffff
   42680:	ffff           	.short 0xffff
   42682:	ffff           	.short 0xffff
   42684:	ffff           	.short 0xffff
   42686:	ffff           	.short 0xffff
   42688:	fffe           	.short 0xfffe
   4268a:	0000 ffff      	orib #-1,%d0
   4268e:	ffff           	.short 0xffff
   42690:	ffff           	.short 0xffff
   42692:	ff80 0fc7      	cp1stl %d0,%d0,#8,#455
   42696:	ffff           	.short 0xffff
   42698:	ffff           	.short 0xffff
   4269a:	ffff           	.short 0xffff
   4269c:	ffff           	.short 0xffff
   4269e:	ffff           	.short 0xffff
   426a0:	fbff           	.short 0xfbff
   426a2:	ffff           	.short 0xffff
   426a4:	ffff           	.short 0xffff
   426a6:	ffff           	.short 0xffff
   426a8:	ffff           	.short 0xffff
   426aa:	ff80 0000      	cp1stl %d0,%d0,#1,#0
   426ae:	0701           	btst %d3,%d1
   426b0:	f83f           	.short 0xf83f
   426b2:	07ff           	.short 0x07ff
   426b4:	fff0           	.short 0xfff0
   426b6:	003f           	.short 0x003f
   426b8:	f800 0000      	tblub %d0,%d0,%d0
   426bc:	00ff           	.short 0x00ff
   426be:	ffff           	.short 0xffff
   426c0:	0001 0000      	orib #0,%d1
   426c4:	0001 0000      	orib #0,%d1
   426c8:	0000 0001      	orib #1,%d0
   426cc:	0001 0000      	orib #0,%d1
   426d0:	0001 0001      	orib #1,%d1
   426d4:	0000 0001      	orib #1,%d0
   426d8:	0001 0000      	orib #0,%d1
   426dc:	0001 0001      	orib #1,%d1
   426e0:	0000 0001      	orib #1,%d0
   426e4:	6d97           	blts 0x4267d
   426e6:	3f10           	movew %a0@,%sp@-
   426e8:	c0ef b4cf      	muluw %sp@(-19249),%d0
   426ec:	7489           	moveq #-119,%d2
   426ee:	e0f6 94fb      	asrw %fp@(fffffffffffffffb,%a1:w:4)
   426f2:	54cf c1f0      	dbcc %d7,0x3e8e4
   426f6:	567d           	.short 0x567d
   426f8:	d5ff           	.short 0xd5ff
   426fa:	c3f0 1dcf 9bcf 	mulsw @(0)@(ffffffff9bcf878c),%d1
   42700:	878c 
   42702:	8b41 8747      	pack %d1,%d5,#-30905
   42706:	8f0e           	sbcd %fp@-,%sp@-
   42708:	165f           	.short 0x165f
   4270a:	1e5f           	.short 0x1e5f
   4270c:	0e3e           	.short 0x0e3e
   4270e:	1473           	.short 0x1473
   42710:	9c73 8c32      	subw %a3@(32,%a0:l:4),%d6
   42714:	bc63           	cmpw %a3@-,%d6
   42716:	1c63           	.short 0x1c63
   42718:	aca2 19c3      	msacl %d3,%d1,%a2@-,%d6
   4271c:	1943 28c2      	moveb %d3,%a4@(10434)
   42720:	18c3           	moveb %d3,%a4@+
   42722:	1843           	.short 0x1843
   42724:	21c2 19c3      	movel %d2,0x19c3
   42728:	09c3           	bset %d4,%d3
   4272a:	30c2           	movew %d2,%a0@+
   4272c:	1083           	moveb %d3,%a0@
   4272e:	0081 3102 1083 	oril #822218883,%d1
   42734:	0087 1181 1085 	oril #293671045,%d7
   4273a:	0887 1983      	bclr #-125,%d7
   4273e:	0485 0403 0587 	subil #67306887,%d5
   42744:	0104           	btst %d0,%d4
   42746:	0082 0186 0083 	oril #25559171,%d2
   4274c:	0041 00c3      	oriw #195,%d1
   42750:	0060 0031      	oriw #49,%a0@-
   42754:	0071 000c 0006 	oriw #12,%a1@(6,%d0:w)
   4275a:	000e           	.short 0x000e
   4275c:	0010 0008      	orib #8,%a0@
   42760:	0018 0020      	orib #32,%a0@+
   42764:	0010 0030      	orib #48,%a0@
   42768:	0090 0080 00b0 	oril #8388784,%a0@
   4276e:	0210 0110      	andib #16,%a0@
   42772:	0330 0210      	btst %d1,%a0@(10,%d0:w:2)
   42776:	0010 0230      	orib #48,%a0@
   4277a:	0210 0010      	andib #16,%a0@
   4277e:	0620 0338      	addib #56,%a0@-
   42782:	0138 0618      	btst %d0,0x618
   42786:	0318           	btst %d1,%a0@+
   42788:	0308 0438      	movepw %a0@(1080),%d1
   4278c:	0338 0328      	btst %d1,0x328
   42790:	0518           	btst %d2,%a0@+
   42792:	178c           	.short 0x178c
   42794:	038c 1594      	movepw %d1,%a4@(5524)
   42798:	228e           	movel %fp,%a1@
   4279a:	138e           	.short 0x138e
   4279c:	3186 22cb      	movew %d6,%a0@(ffffffffffffffcb,%d2:w:2)
   427a0:	03cb 21c7      	movepl %d1,%a3@(8647)
   427a4:	3168 10e8 31e1 	movew %a0@(4328),%a0@(12769)
   427aa:	23b9 1379 30f1 	movel 0x137930f1,%a1@(ffffffffffffffcf,%d0:l:2)
   427b0:	0acf 
   427b2:	1abf           	.short 0x1abf
   427b4:	387e           	.short 0x387e
   427b6:	329f           	movew %sp@+,%a1@
   427b8:	0a99 383e 1699 	eoril #943593113,%a1@+
   427be:	0e91           	.short 0x0e91
   427c0:	1c1e           	moveb %fp@+,%d6
   427c2:	0db2 07e2 181d 	bclr %d6,@(181d)@(ffffffffffffdbf2)
   427c8:	dbf2 
   427ca:	fbe2           	.short 0xfbe2
   427cc:	a53d           	.short 0xa53d
   427ce:	f6ff           	.short 0xf6ff
   427d0:	fffd           	.short 0xfffd
   427d2:	3f1f           	movew %sp@+,%sp@-
   427d4:	ebfe           	.short 0xebfe
   427d6:	f8fe           	.short 0xf8fe
   427d8:	7f9f           	mvzb %sp@+,%d7
   427da:	173e           	.short 0x173e
   427dc:	f0f6           	.short 0xf0f6
   427de:	ff8f 7f7b      	cp1stl %d7,%sp,#8,#379
   427e2:	e558           	rolw #2,%d0
   427e4:	ffa7 9f6d      	cp1stl %a1,%sp@-,#8,#365
   427e8:	8f5c           	orw %d7,%a4@+
   427ea:	f7b3           	.short 0xf7b3
   427ec:	76a4           	moveq #-92,%d3
   427ee:	7264           	moveq #100,%d1
   427f0:	bf9b           	eorl %d7,%a3@+
   427f2:	7af2           	moveq #-14,%d5
   427f4:	7af7           	moveq #-9,%d5
   427f6:	f70d           	.short 0xf70d
   427f8:	7df3 7df7 b7ed 	mvzw @(ffffffffb7ed7dea)@(7de7b7ff),%d6
   427fe:	7dea 7de7 b7ff 
   42804:	0f3b 08ff      	btst %d7,%pc@(0x42805,%d0:l)
   42808:	f7fe           	.short 0xf7fe
   4280a:	4e5b           	unlk %a3
   4280c:	49ff           	.short 0x49ff
   4280e:	b7fe           	.short 0xb7fe
   42810:	2f37 a8ff      	movel %sp@(ffffffffffffffff,%a2:l),%sp@-
   42814:	d7fe           	.short 0xd7fe
   42816:	bd34 bafe      	eorb %d6,%a4@(fffffffffffffffe,%a3:l:2)
   4281a:	47ff           	.short 0x47ff
   4281c:	d6ec d1fe      	addaw %a4@(-11778),%a3
   42820:	2fff           	.short 0x2fff
   42822:	f31a           	.short 0xf31a
   42824:	f2fb           	.short 0xf2fb
   42826:	8ffb 7072      	divsw %pc@(0x4289a,%d7:w),%d7
   4282a:	7ff3 5ff3 3fe1 	mvzw @(3fe13fe1)@(fe10f80),%d7
   42830:	3fe1 0fe1 0f80 
   42836:	0f80           	bclr %d7,%d0
   42838:	0380           	bclr %d1,%d0
   4283a:	c000           	andb %d0,%d0
   4283c:	c000           	andb %d0,%d0
   4283e:	c000           	andb %d0,%d0
   42840:	0007 0007      	orib #7,%d7
   42844:	0006 001f      	orib #31,%d6
   42848:	001f 0010      	orib #16,%sp@+
   4284c:	003f           	.short 0x003f
   4284e:	003e           	.short 0x003e
   42850:	0021 0063      	orib #99,%a1@-
   42854:	0063 005c      	oriw #92,%a3@-
   42858:	0043 0001      	oriw #1,%d3
   4285c:	007e           	.short 0x007e
   4285e:	1843           	.short 0x1843
   42860:	3801           	movew %d1,%d4
   42862:	387e           	.short 0x387e
   42864:	61f1           	bsrs 0x42857
   42866:	21f1 607e 87ff 	movel %a1@(7e,%d6:w),0xffff87ff
   4286c:	47ff           	.short 0x47ff
   4286e:	c1fe           	.short 0xc1fe
   42870:	ae0e 6fff      	msacl %fp,%d7,>>
   42874:	ebff           	.short 0xebff
   42876:	be63           	cmpw %a3@-,%d7
   42878:	fe5f 71ff      	cp1ldw %sp@+,%d7,#1,#511
   4287c:	7add           	moveq #-35,%d5
   4287e:	fa3f           	.short 0xfa3f
   42880:	25ff           	.short 0x25ff
   42882:	77a6           	mvzb %fp@-,%d3
   42884:	375f 48ff      	movew %sp@+,%a3@(18687)
   42888:	65e6           	bcss 0x42870
   4288a:	751f           	mvsb %sp@+,%d2
   4288c:	5aff           	.short 0x5aff
   4288e:	69cb           	bvss 0x4285b
   42890:	693f           	bvss 0x428d1
   42892:	56ff           	.short 0x56ff
   42894:	61e7           	bsrs 0x4287d
   42896:	611f           	bsrs 0x428b7
   42898:	5eff           	sgt %d7
   4289a:	6fbd           	bles 0x42859
   4289c:	6fbc           	bles 0x4285a
   4289e:	56ff           	.short 0x56ff
   428a0:	6fbe           	bles 0x42860
   428a2:	6fbe           	bles 0x42862
   428a4:	56fd           	.short 0x56fd
   428a6:	ef5e           	rolw #7,%d6
   428a8:	ef5e           	rolw #7,%d6
   428aa:	dee1           	addaw %a1@-,%sp
   428ac:	2ed4           	movel %a4@,%sp@+
   428ae:	ee4c           	lsrw #7,%d4
   428b0:	d7f3 f3ed f1eb 	addal @(fffffffffffff1eb)@(0),%a3
   428b6:	9ef6 afef fcab 	subaw @(fffffffffffffcab)@(1ff462e7),%sp
   428bc:	1ff4 62e7 
   428c0:	fe1e 1ff1      	cp1ldb %fp@+,%d1,#8,#497
   428c4:	fd7f           	.short 0xfd7f
   428c6:	3f1f           	movew %sp@+,%sp@-
   428c8:	cff3 fedf      	mulsw %a3@(ffffffffffffffdf,%sp:l:8),%d7
   428cc:	1fff           	.short 0x1fff
   428ce:	e7e3           	rolw %a3@-
   428d0:	ca97           	andl %sp@,%d5
   428d2:	3fd7           	.short 0x3fd7
   428d4:	f7e9           	.short 0xf7e9
   428d6:	befd           	.short 0xbefd
   428d8:	bffd           	.short 0xbffd
   428da:	dd0f           	addxb %sp@-,%fp@-
   428dc:	7abf           	moveq #-65,%d5
   428de:	3bbf           	.short 0x3bbf
   428e0:	ddea b37a      	addal %a2@(-19590),%fp
   428e4:	777f           	.short 0x777f
   428e6:	edef           	.short 0xedef
   428e8:	cf19           	andb %d7,%a1@+
   428ea:	3f5f f5f7      	movew %sp@+,%sp@(-2569)
   428ee:	8ece           	.short 0x8ece
   428f0:	7e2d           	moveq #45,%d7
   428f2:	fbf3           	.short 0xfbf3
   428f4:	ce17           	andb %sp@,%d7
   428f6:	3de6           	.short 0x3de6
   428f8:	f3f9           	.short 0xf3f9
   428fa:	1dcb           	.short 0x1dcb
   428fc:	fcf6           	.short 0xfcf6
   428fe:	f7ff           	.short 0xf7ff
   42900:	fdc5           	.short 0xfdc5
   42902:	fdde           	.short 0xfdde
   42904:	effb           	.short 0xeffb
   42906:	7d0d           	mvsb %a5,%d6
   42908:	3d3d           	.short 0x3d3d
   4290a:	effb           	.short 0xeffb
   4290c:	5cc5           	sge %d5
   4290e:	3cbf           	.short 0x3cbf
   42910:	ef7b           	rolw %d7,%d3
   42912:	5be7           	smi %sp@-
   42914:	3bce           	.short 0x3bce
   42916:	eff9 37e6 2fee 	bfins %d3,0x2feedf7d,31,%d6
   4291c:	df7d 
   4291e:	a9e7           	.short 0xa9e7
   42920:	b7cf           	cmpal %sp,%a3
   42922:	5f7e           	.short 0x5f7e
   42924:	91b7 cf8c      	subl %d0,@(0)@(0,%a4:l:8)
   42928:	3f7b cce9 c3f9 	movew %pc@(0x42913,%a4:l:4),%sp@(-15367)
   4292e:	3f36 8eea      	movew %fp@(ffffffffffffffea,%a0:l:8),%sp@-
   42932:	81fa 7f35      	divsw %pc@(0x4a869),%d0
   42936:	8c93           	orl %a3@,%d6
   42938:	83f3 7f6c cfb9 	divsw %a3@(ffffffffffffcfb9)@(0),%d1
   4293e:	e1f1 be4e      	aslw %a1@(4e,%a3:l:8)
   42942:	65fe           	bcss 0x42942
   42944:	7ff8 5a87      	mvzw 0x5a87,%d7
   42948:	1f8f           	.short 0x1f8f
   4294a:	1f9f 1c60      	moveb %sp@+,%sp@(60,%d1:l:4)
   4294e:	000f           	.short 0x000f
   42950:	0063 007c      	oriw #124,%a3@-
   42954:	003e           	.short 0x003e
   42956:	003f           	.short 0x003f
   42958:	0021 000f      	orib #15,%a1@-
   4295c:	000f           	.short 0x000f
   4295e:	0000 c000      	orib #0,%d0
   42962:	c000           	andb %d0,%d0
   42964:	0000 f000      	orib #0,%d0
   42968:	f000           	.short 0xf000
   4296a:	0000 980f      	orib #15,%d0
   4296e:	780f           	moveq #15,%d4
   42970:	e800           	asrb #4,%d0
   42972:	743e           	moveq #62,%d2
   42974:	fc3f           	.short 0xfc3f
   42976:	3c21           	movew %a1@-,%d6
   42978:	dbfe           	.short 0xdbfe
   4297a:	fff3           	.short 0xfff3
   4297c:	3f8d 6cbf      	movew %a5,%sp@(ffffffffffffffbf,%d6:l:4)
   42980:	ffff           	.short 0xffff
   42982:	9b50           	subw %d5,%a0@
   42984:	99f7 7c3e      	subal %sp@(3e,%d7:l:4),%a4
   42988:	f7c9           	.short 0xf7c9
   4298a:	f192           	.short 0xf192
   4298c:	f07e           	.short 0xf07e
   4298e:	efed 51dd f03f 	bfins %d5,%a5@(-4033),7,29
   42994:	efe6           	.short 0xefe6
   42996:	599d           	subql #4,%a5@+
   42998:	f87f           	.short 0xf87f
   4299a:	e7e6           	rolw %fp@-
   4299c:	9236 d9f1 e7ef 	subb @(ffffffffe7ef953c)@(0),%d1
   429a2:	953c 
   429a4:	d6f9 ebef e6fc 	addaw 0xebefe6fc,%a3
   429aa:	e5fd           	.short 0xe5fd
   429ac:	dbef 6b7c      	addal %sp@(27516),%a5
   429b0:	e779           	rolw %d3,%d1
   429b2:	ddff           	.short 0xddff
   429b4:	6b98           	bmis 0x4294e
   429b6:	e797           	roxll #3,%d7
   429b8:	ddef 4fa1      	addal %sp@(20385),%fp
   429bc:	e7a7           	asll %d3,%d7
   429be:	fdff           	.short 0xfdff
   429c0:	7fb8 ffbb      	mvzb 0xffffffbb,%d7
   429c4:	bdff           	.short 0xbdff
   429c6:	43b9 ff9e beff 	chkw 0xff9ebeff,%d1
   429cc:	99c2           	subal %d2,%a4
   429ce:	87bc           	.short 0x87bc
   429d0:	7e7f           	moveq #127,%d7
   429d2:	b1d9           	cmpal %a1@+,%a0
   429d4:	8fc5           	divsw %d5,%d7
   429d6:	7f7e           	.short 0x7f7e
   429d8:	79e3           	mvzw %a3@-,%d4
   429da:	07eb febe      	bset %d3,%a3@(-322)
   429de:	d66f ceef      	addw %sp@(-12561),%d3
   429e2:	fdbd           	.short 0xfdbd
   429e4:	cf57           	andw %d7,%sp@
   429e6:	c777 fbbd f7df 	andw %d3,@(fffffffff7dfb7ff)@(0,%sp:l:2)
   429ec:	b7ff 
   429ee:	fba1           	wddatal %a1@-
   429f0:	7fff           	.short 0x7fff
   429f2:	7ffb fb07 fbef 	mvzw %pc@(0x429f4)@(fffffffffbeffbe7,%sp:l:2),%d7
   429f8:	fbe7 
   429fa:	6cde           	bges 0x429da
   429fc:	ffef           	.short 0xffef
   429fe:	ffe7           	.short 0xffe7
   42a00:	69de           	bvss 0x429e0
   42a02:	fd3b           	.short 0xfd3b
   42a04:	ff27 e3de      	cp1stb %fp,%sp@-,#2,#478
   42a08:	dd6b 7f17      	addw %d6,%a3@(32535)
   42a0c:	f7fc           	.short 0xf7fc
   42a0e:	3da7 ff7f f7d9 	movew %sp@-,%fp@(fffffffff7d94f7f)@(ffffffffff3ff3c3)
   42a14:	4f7f ff3f f3c3 
   42a1a:	96d2           	subaw %a2@,%a3
   42a1c:	7e3f           	moveq #63,%d7
   42a1e:	f1ef           	.short 0xf1ef
   42a20:	fbe6           	.short 0xfbe6
   42a22:	ef3f           	rolb %d7,%d7
   42a24:	f8df           	.short 0xf8df
   42a26:	efed           	.short 0xefed
   42a28:	e7df           	rolw %sp@+
   42a2a:	fa3f           	.short 0xfa3f
   42a2c:	ef62           	aslw %d7,%d2
   42a2e:	e7de           	rolw %fp@+
   42a30:	fb3f           	.short 0xfb3f
   42a32:	cfcc           	.short 0xcfcc
   42a34:	c7fd           	.short 0xc7fd
   42a36:	fb7f           	.short 0xfb7f
   42a38:	7ff6 47f1 bb3f 	mvzw @(ffffffffbb3f6b5f)@(0),%d7
   42a3e:	6b5f 
   42a40:	1fde           	.short 0x1fde
   42a42:	f7bf           	.short 0xf7bf
   42a44:	db7f           	.short 0xdb7f
   42a46:	7fff           	.short 0x7fff
   42a48:	a7af           	.short 0xa7af
   42a4a:	734f           	mvsw %sp,%d1
   42a4c:	1ffe           	.short 0x1ffe
   42a4e:	efff           	.short 0xefff
   42a50:	d29d           	addl %a5@+,%d1
   42a52:	3ffc           	.short 0x3ffc
   42a54:	efef           	.short 0xefef
   42a56:	f6e7           	.short 0xf6e7
   42a58:	1f99 efff ed71 	moveb %a1@+,@(ffffffffed71bf1f)@(5feee674)
   42a5e:	bf1f 5fee e674 
   42a64:	be1f           	cmpb %sp@+,%d7
   42a66:	5bef dd73      	smi %sp@(-8845)
   42a6a:	ff1f 06ec      	cp1stb %d0,%sp@+,#4,#236
   42a6e:	f157           	prestore %sp@
   42a70:	f1ff           	.short 0xf1ff
   42a72:	c02d e03f      	andb %a5@(-8129),%d0
   42a76:	e07e           	rorw %d0,%d6
   42a78:	a003 803f      	macw %d3l,%d0l
   42a7c:	803f           	.short 0x803f
   42a7e:	0000 000f      	orib #15,%d0
   42a82:	000f           	.short 0x000f
   42a84:	0000 000f      	orib #15,%d0
   42a88:	000f           	.short 0x000f
   42a8a:	0000 8037      	orib #55,%d0
   42a8e:	803f           	.short 0x803f
   42a90:	0000 fe6a      	orib #106,%d0
   42a94:	fe7f           	.short 0xfe7f
   42a96:	9805           	subb %d5,%d4
   42a98:	fbae ffe3      	wddatal %fp@(-29)
   42a9c:	00dd           	.short 0x00dd
   42a9e:	dcce           	addaw %fp,%fp
   42aa0:	17c3           	.short 0x17c3
   42aa2:	eb7d           	rolw %d5,%d5
   42aa4:	3dae 37e3 cbfd 	movew %fp@(14307),@(7edc63f3)@(0)
   42aaa:	7edc 63f3 
   42aae:	9dff           	.short 0x9dff
   42ab0:	5a53           	addqw #5,%a3@
   42ab2:	47ff           	.short 0x47ff
   42ab4:	bdfd           	.short 0xbdfd
   42ab6:	2e69 23ff      	moveal %a1@(9215),%sp
   42aba:	ddff           	.short 0xddff
   42abc:	fb6f 8fff      	wddataw %sp@(-28673)
   42ac0:	74f5           	moveq #-11,%d2
   42ac2:	ed6b           	lslw %d6,%d3
   42ac4:	e3fb           	.short 0xe3fb
   42ac6:	def7 cffe c8fe 	addaw @(ffffffffc8feb767)@(fffffffffffff9f9),%sp
   42acc:	b767 f9f9 
   42ad0:	d8ff           	.short 0xd8ff
   42ad2:	3f6f bdec fcfb 	movew %sp@(-16916),%sp@(-773)
   42ad8:	7f67           	mvsw %sp@-,%d7
   42ada:	bdfd           	.short 0xbdfd
   42adc:	bcfb 7f47 bf7c 	cmpaw %pc@(0x42ade)@(ffffffffbf7cdde7),%fp
   42ae2:	dde7 
   42ae4:	7f1b           	mvsb %a3@+,%d7
   42ae6:	72da           	moveq #-38,%d1
   42ae8:	cfc7           	mulsw %d7,%d7
   42aea:	fe3d           	.short 0xfe3d
   42aec:	e9ef           	.short 0xe9ef
   42aee:	dfe7           	addal %sp@-,%sp
   42af0:	3e78 c7b4      	moveaw 0xffffc7b4,%sp
   42af4:	bfef 7efb      	cmpal %sp@(32507),%sp
   42af8:	3bad efe2 feff 	movew %a5@(-4126),%a5@(ffffffffffffffff,%sp:l:8)
   42afe:	5fa7           	subql #7,%sp@-
   42b00:	ffe4           	.short 0xffe4
   42b02:	fc7b           	.short 0xfc7b
   42b04:	fffd           	.short 0xfffd
   42b06:	fffc           	.short 0xfffc
   42b08:	4d3b bf7d bf7c 	chkl %pc@(0xbf8118a5)@(0),%d6
   42b0e:	ed9b 
   42b10:	ee3f           	rorb %d7,%d7
   42b12:	a67e           	.short 0xa67e
   42b14:	7bed 9c49      	mvzw %a5@(-25527),%d5
   42b18:	8447           	orw %d7,%d2
   42b1a:	7fbe           	.short 0x7fbe
   42b1c:	575d           	subqw #3,%a5@+
   42b1e:	d0ef efbf      	addaw %sp@(-4161),%a0
   42b22:	77f9 f7f3 ffbf 	mvzw 0xf7f3ffbf,%d3
   42b28:	ff79           	.short 0xff79
   42b2a:	fb7b           	.short 0xfb7b
   42b2c:	6fbf           	bles 0x42aed
   42b2e:	fcf4           	.short 0xfcf4
   42b30:	fcf3           	.short 0xfcf3
   42b32:	6f3f           	bles 0x42b73
   42b34:	ddc2           	addal %d2,%fp
   42b36:	cdcf           	.short 0xcdcf
   42b38:	3e7f           	.short 0x3e7f
   42b3a:	cf8b           	exg %d7,%a3
   42b3c:	cf7f           	.short 0xcf7f
   42b3e:	b0ff           	.short 0xb0ff
   42b40:	e514           	roxlb #2,%d4
   42b42:	e6ff           	.short 0xe6ff
   42b44:	d9ff           	.short 0xd9ff
   42b46:	7389           	mvzb %a1,%d1
   42b48:	ba7f           	.short 0xba7f
   42b4a:	cdff           	.short 0xcdff
   42b4c:	bf39 fff9 60ff 	eorb %d7,0xfff960ff
   42b52:	6fff fffb fbbf 	blel 0x2713
   42b58:	b3fe           	.short 0xb3fe
   42b5a:	f9db           	.short 0xf9db
   42b5c:	7fbf           	.short 0x7fbf
   42b5e:	33df 7bd7 fd3f 	movew %sp@+,0x7bd7fd3f
   42b64:	b3ff           	.short 0xb3ff
   42b66:	fbf7           	.short 0xfbf7
   42b68:	7d7f           	.short 0x7d7f
   42b6a:	b3ff           	.short 0xb3ff
   42b6c:	fbf7           	.short 0xfbf7
   42b6e:	7d7f           	.short 0x7d7f
   42b70:	b178 f910      	eorw %d0,0xfffff910
   42b74:	7eff           	moveq #-1,%d7
   42b76:	f178 f910      	prestore 0xfffff910
   42b7a:	7eff           	moveq #-1,%d7
   42b7c:	693c           	bvss 0x42bba
   42b7e:	ed08           	lslb #6,%d0
   42b80:	feff           	.short 0xfeff
   42b82:	c8ac cc98      	andl %a4@(-13160),%d4
   42b86:	ff7f           	.short 0xff7f
   42b88:	84b6 868c      	orl %fp@(ffffffffffffff8c,%a0:w:8),%d2
   42b8c:	ff7f           	.short 0xff7f
   42b8e:	cf7b           	.short 0xcf7b
   42b90:	8bf6 f49f      	divsw %fp@(ffffffffffffff9f,%sp:w:4),%d5
   42b94:	7fff           	.short 0x7fff
   42b96:	cfff           	.short 0xcfff
   42b98:	f003           	.short 0xf003
   42b9a:	fffe           	.short 0xfffe
   42b9c:	f7fe           	.short 0xf7fe
   42b9e:	7801           	moveq #1,%d4
   42ba0:	8f87 8f87      	unpk %d7,%d7,#-28793
   42ba4:	0804 0001      	btst #1,%d4
   42ba8:	0001 0001      	orib #1,%d1
   42bac:	0001 0001      	orib #1,%d1
   42bb0:	0001 8f8f      	orib #-113,%d1
   42bb4:	8f8f 0800      	unpk %sp@-,%sp@-,#2048
   42bb8:	ffff           	.short 0xffff
   42bba:	f7ff           	.short 0xf7ff
   42bbc:	7800           	moveq #0,%d4
   42bbe:	ffef           	.short 0xffef
   42bc0:	eefe           	.short 0xeefe
   42bc2:	b113           	eorb %d0,%a3@
   42bc4:	7f96           	mvzb %fp@,%d7
   42bc6:	f8d1           	.short 0xf8d1
   42bc8:	97ef 9f15      	subal %sp@(-24811),%a3
   42bcc:	f993           	.short 0xf993
   42bce:	ffef           	.short 0xffef
   42bd0:	2f27           	movel %sp@-,%sp@-
   42bd2:	fda1 dfdf      	cp0stl %a5,%a1@-,#8,#479
   42bd6:	fe2f 3f22 efdf 	cp1ldb %sp@(-4129),%d3,#8,#290
   42bdc:	b62f 9f22      	cmpb %sp@(-24798),%d3
   42be0:	efdf           	.short 0xefdf
   42be2:	f67f           	.short 0xf67f
   42be4:	df7e           	.short 0xdf7e
   42be6:	efaf           	lsll %d7,%d7
   42be8:	f67f           	.short 0xf67f
   42bea:	ff7e           	.short 0xff7e
   42bec:	efaf           	lsll %d7,%d7
   42bee:	e67b           	rorw %d3,%d3
   42bf0:	cf7a           	.short 0xcf7a
   42bf2:	ffa7 d67f      	cp1stl %a5,%sp@-,#4,#127
   42bf6:	3f3b eff7 8fff 	movew %zpc@(ffffffff8fffbfff)@(ffffffffff7757e7),%sp@-
   42bfc:	bfff ff77 57e7 
   42c02:	dfff           	.short 0xdfff
   42c04:	ec1f           	rorb #6,%d7
   42c06:	ae71           	.short 0xae71
   42c08:	f74f           	.short 0xf74f
   42c0a:	f9bf           	.short 0xf9bf
   42c0c:	dca2           	addl %a2@-,%d6
   42c0e:	fcdf           	.short 0xfcdf
   42c10:	fb3f           	.short 0xfb3f
   42c12:	59f1 f9ef f61f 	svs @(fffffffffffff61f)@(fffffffffbb8f9b9)
   42c18:	fbb8 f9b9 
   42c1c:	67cf           	beqs 0x42bed
   42c1e:	ff9e ff9e      	cp1stl %sp,%fp@+,#8,#414
   42c22:	2de7           	.short 0x2de7
   42c24:	7fef ff6f      	mvzw %sp@(-145),%d7
   42c28:	8df7 6eff      	divsw %sp@(ffffffffffffffff,%d6:l:8),%d6
   42c2c:	fefe           	.short 0xfefe
   42c2e:	dff7 eaeb      	addal %sp@(ffffffffffffffeb,%fp:l:2),%sp
   42c32:	fa1d           	.short 0xfa1d
   42c34:	ddf7 f389      	addal @(0,%sp:w:2)@(0),%fp
   42c38:	f088 cff7      	pbws 0x3fc31
   42c3c:	d37d           	.short 0xd37d
   42c3e:	fb2c edf7      	wddatab %a4@(-4617)
   42c42:	dcab cffb      	addl %a3@(-12293),%d6
   42c46:	7ff6 dce3      	mvzw %fp@(ffffffffffffffe3,%a5:l:4),%d7
   42c4a:	ddf1 6ffe d087 	addal @(ffffffffd087d3e1)@(3ffe),%fp
   42c50:	d3e1 3ffe 
   42c54:	cf3f           	.short 0xcf3f
   42c56:	c395           	andl %d1,%a5@
   42c58:	bdee bf1f      	cmpal %fp@(-16609),%fp
   42c5c:	fd87 c3ff      	cp0stl %a4,%d7,#2,#511
   42c60:	7e76           	moveq #118,%d7
   42c62:	df32 fdef 8e7a 	addb %d7,@(ffffffffffff8e7a)@(7f7affff)
   42c68:	7f7a ffff 
   42c6c:	727d           	moveq #125,%d1
   42c6e:	3f7d           	.short 0x3f7d
   42c70:	dfef 667d      	addal %sp@(26237),%sp
   42c74:	9f3d           	.short 0x9f3d
   42c76:	fdef           	.short 0xfdef
   42c78:	7e1f           	moveq #31,%d7
   42c7a:	bb10           	eorb %d5,%a0@
   42c7c:	dfef 7a1e      	addal %sp@(31262),%sp
   42c80:	7b11           	mvsb %a1@,%d5
   42c82:	ffef           	.short 0xffef
   42c84:	7b17           	mvsb %sp@,%d5
   42c86:	fb90           	wddatal %a0@
   42c88:	ddef 73dd      	addal %sp@(29661),%fp
   42c8c:	b3df           	cmpal %sp@+,%a1
   42c8e:	fd22 aecb      	cp0stb %a2,%a2@-,#8,#203
   42c92:	a3cf           	.short 0xa3cf
   42c94:	ddb0 bafd      	addl %d6,%a0@(fffffffffffffffd,%a3:l:2)
   42c98:	a5ff           	.short 0xa5ff
   42c9a:	df80           	addxl %d0,%d7
   42c9c:	e4ff           	.short 0xe4ff
   42c9e:	3fff           	.short 0x3fff
   42ca0:	dbe0           	addal %a0@-,%a5
   42ca2:	1cdf           	moveb %sp@+,%fp@+
   42ca4:	17ff           	.short 0x17ff
   42ca6:	ebbf           	roll %d5,%d7
   42ca8:	3cfb 0ffa f33d 	movew %zpc@(fffffffff33d3dba)@(7fb),%fp@+
   42cae:	3dba 07fb 
   42cb2:	fb7d           	.short 0xfb7d
   42cb4:	7bcf           	mvzw %sp,%d5
   42cb6:	47c2           	.short 0x47c2
   42cb8:	b87d           	.short 0xb87d
   42cba:	fea6 77e7      	cp1ldl %fp@-,%d7,#4,#487
   42cbe:	89d9           	divsw %a1@+,%d4
   42cc0:	ff57 bf76      	cp1stw %a3,%sp@,#8,#374
   42cc4:	c069 fe3f      	andw %a1@(-449),%d0
   42cc8:	fe3f           	.short 0xfe3f
   42cca:	4220           	clrb %a0@-
   42ccc:	fc1f fc1f      	cp0ldb %sp@+,%sp,#7,#31
   42cd0:	0018 f007      	orib #7,%a0@+
   42cd4:	f007           	.short 0xf007
   42cd6:	0006 f007      	orib #7,%d6
   42cda:	f007           	.short 0xf007
   42cdc:	0007 ff9f      	orib #-97,%d7
   42ce0:	ff9f 0814      	cp1stl %d0,%sp@+,#5,#20
   42ce4:	fffa           	.short 0xfffa
   42ce6:	f7fe           	.short 0xf7fe
   42ce8:	780d           	moveq #13,%d4
   42cea:	7fd4           	mvzw %a4@,%d7
   42cec:	cefc f13b      	muluw #-3781,%d7
   42cf0:	cf79 88f8 f70f 	andw %d7,0x88f8f70f
   42cf6:	87b7 00ff      	orl %d3,%sp@(ffffffffffffffff,%d0:w)
   42cfa:	ff6f 879f 01ff 	cp1stw %a0,%sp@(511),#4,#415
   42d00:	fe67 039b      	cp1ldw %sp@-,%d0,#2,#411
   42d04:	02ff           	.short 0x02ff
   42d06:	fd77           	.short 0xfd77
   42d08:	1c9f           	moveb %sp@+,%fp@
   42d0a:	07ff           	.short 0x07ff
   42d0c:	fb7c           	.short 0xfb7c
   42d0e:	f75f           	.short 0xf75f
   42d10:	f4bf           	cpusha ic
   42d12:	fbf0           	.short 0xfbf0
   42d14:	f5d9           	.short 0xf5d9
   42d16:	f479           	cpusha dc
   42d18:	fbb6 ee7b      	wddatal %fp@(7b,%fp:l:8)
   42d1c:	f67b           	.short 0xf67b
   42d1e:	ffa4 cf62      	cp1stl %a4,%a4@-,#8,#354
   42d22:	7f72 fbbd ef43 	mvsw @(ffffffffef436f62)@(0,%sp:l:2),%d7
   42d28:	6f62 
   42d2a:	fffd           	.short 0xfffd
   42d2c:	2fc3           	.short 0x2fc3
   42d2e:	3762 fbfd      	movew %a2@-,%a3@(-1027)
   42d32:	2ccf           	movel %sp,%fp@+
   42d34:	f3e7           	.short 0xf3e7
   42d36:	ffbd           	.short 0xffbd
   42d38:	8e4f           	.short 0x8e4f
   42d3a:	e7ef fbfd      	rolw %sp@(-1027)
   42d3e:	71cf           	mvzw %sp,%d0
   42d40:	efef           	.short 0xefef
   42d42:	ffff           	.short 0xffff
   42d44:	4fce           	.short 0x4fce
   42d46:	fbe6           	.short 0xfbe6
   42d48:	ffbd           	.short 0xffbd
   42d4a:	97e3           	subal %a3@-,%a3
   42d4c:	7fb0 f87f      	mvzb %a0@(7f,%sp:l),%d7
   42d50:	39e7           	.short 0x39e7
   42d52:	7872           	moveq #114,%d4
   42d54:	f7bd           	.short 0xf7bd
   42d56:	3a10           	movew %a0@,%d5
   42d58:	7a7c           	moveq #124,%d5
   42d5a:	e7ff           	.short 0xe7ff
   42d5c:	bb9c           	eorl %d5,%a4@+
   42d5e:	fbbe           	.short 0xfbbe
   42d60:	edff           	.short 0xedff
   42d62:	3b95 f9ff cffe 	movew %a5@,@(ffffffffcffe7c2c)@(ffffffffe3cddfff)
   42d68:	7c2c e3cd dfff 
   42d6e:	b820           	cmpb %a0@-,%d4
   42d70:	f9fd           	.short 0xf9fd
   42d72:	efcf           	.short 0xefcf
   42d74:	bc13           	cmpb %a3@,%d6
   42d76:	fdb8           	.short 0xfdb8
   42d78:	f3ef           	.short 0xf3ef
   42d7a:	0c38 fd17 f7ef 	cmpib #23,0xfffff7ef
   42d80:	24f7 1e73      	movel %sp@(73,%d1:l:8),%a2@+
   42d84:	ffef           	.short 0xffef
   42d86:	25f7           	.short 0x25f7
   42d88:	1cf7 ffee ebf5 	moveb @(ffffffffffffebf5)@(6ef5),%fp@+
   42d8e:	6ef5 
   42d90:	f7ee           	.short 0xf7ee
   42d92:	fb73 fef1      	wddataw %a3@(fffffffffffffff1,%sp:l:8)
   42d96:	f7ee           	.short 0xf7ee
   42d98:	fb6f feef      	wddataw %sp@(-273)
   42d9c:	f7fe           	.short 0xf7fe
   42d9e:	fabf           	.short 0xfabf
   42da0:	f67f           	.short 0xf67f
   42da2:	efd6 3ae7      	bfins %d3,%fp@,%d3,%d7
   42da6:	fe5f ffbe      	cp1ldw %sp@+,%sp,#8,#446
   42daa:	5b4f           	subqw #5,%sp
   42dac:	fe7f           	.short 0xfe7f
   42dae:	bfb6 b47b      	eorl %d7,%fp@(7b,%a3:w:4)
   42db2:	fc4d 7fb6      	cp0ldw %a5,%d7,#8,#438
   42db6:	b679 fe67 7d9e 	cmpw 0xfe677d9e,%d3
   42dbc:	e87e           	rorw %d4,%d6
   42dbe:	fe7f           	.short 0xfe7f
   42dc0:	ff81 9eb8      	cp1stl %a1,%d1,#8,#184
   42dc4:	ffe7           	.short 0xffe7
   42dc6:	7b1f           	mvsb %sp@+,%d5
   42dc8:	7383           	mvzb %d3,%d1
   42dca:	e7ff           	.short 0xe7ff
   42dcc:	ffff           	.short 0xffff
   42dce:	fe7e           	.short 0xfe7e
   42dd0:	fe3f           	.short 0xfe3f
   42dd2:	f3f7           	.short 0xf3f7
   42dd4:	fa0c           	.short 0xfa0c
   42dd6:	fe0b e7f7      	cp1ldb %a3,%fp,#4,#503
   42dda:	8e1b           	orb %a3@+,%d7
   42ddc:	9c0f           	.short 0x9c0f
   42dde:	e7f4 361e      	rolw %a4@(1e,%d3:w:8)
   42de2:	fc0f cff1      	cp0ldb %sp,%a4,#8,#497
   42de6:	7b1b           	mvsb %a3@+,%d5
   42de8:	ff1f 8ee1      	cp1stb %a0,%sp@+,#8,#225
   42dec:	f5fc           	.short 0xf5fc
   42dee:	fdf3           	.short 0xfdf3
   42df0:	1d0f           	.short 0x1d0f
   42df2:	f8ff           	.short 0xf8ff
   42df4:	f8ff           	.short 0xf8ff
   42df6:	0880 f03e      	bclr #62,%d0
   42dfa:	f03e           	.short 0xf03e
   42dfc:	0030 c000 c000 	orib #0,%a0@(0,%a4:w)
   42e02:	0000 f000      	orib #0,%d0
   42e06:	f000           	.short 0xf000
   42e08:	0000 fc00      	orib #0,%d0
   42e0c:	fc00 0000      	cp0nop #1
   42e10:	fe0f de0f      	cp1ldb %sp,%a5,#8,#15
   42e14:	2200           	movel %d0,%d1
   42e16:	cf3e           	.short 0xcf3e
   42e18:	ff3f           	.short 0xff3f
   42e1a:	3121           	movew %a1@-,%a0@-
   42e1c:	e68e           	lsrl #3,%d6
   42e1e:	5fe3           	sle %a3@-
   42e20:	b9fd           	.short 0xb9fd
   42e22:	518e           	subql #8,%fp
   42e24:	739f           	mvzb %sp@+,%d1
   42e26:	bce1           	cmpaw %a1@-,%fp
   42e28:	7f7e           	.short 0x7f7e
   42e2a:	5ff9 bc87 ff8c 	sle 0xbc87ff8c
   42e30:	ff9b fe67      	cp1stl %sp,%a3@+,#8,#103
   42e34:	ee5d           	rorw #7,%d5
   42e36:	fc9f 1fe3      	cp0ldl %sp@+,%d1,#8,#483
   42e3a:	b3ab ff97      	eorl %d1,%a3@(-105)
   42e3e:	0f7d           	.short 0x0f7d
   42e40:	7d77 ffcf 1fbd 	mvsw @(0)@(1fbdb6fb),%d6
   42e46:	b6fb 
   42e48:	ffbb           	.short 0xffbb
   42e4a:	4fdf           	.short 0x4fdf
   42e4c:	f6fe           	.short 0xf6fe
   42e4e:	1ffe           	.short 0x1ffe
   42e50:	efbb           	roll %d7,%d3
   42e52:	cb79 3fdf f7e7 	andw %d5,0x3fdff7e7
   42e58:	e76c           	lslw %d3,%d4
   42e5a:	1fa3 ffdf bf3d 	moveb %a3@-,@(0)@(ffffffffbf3dbea3)
   42e60:	bea3 
   42e62:	fddf           	.short 0xfddf
   42e64:	bf5c           	eorw %d7,%a4@+
   42e66:	bfdb           	cmpal %a3@+,%sp
   42e68:	fea7 5f18      	cp1ldl %sp@-,%d5,#8,#280
   42e6c:	5f8f           	subql #7,%sp
   42e6e:	fef7           	.short 0xfef7
   42e70:	dd0c           	addxb %a4@-,%fp@-
   42e72:	4d8b           	.short 0x4d8b
   42e74:	fef7           	.short 0xfef7
   42e76:	e4f8 e38f      	roxrw 0xffffe38f
   42e7a:	fff7           	.short 0xfff7
   42e7c:	e4cd           	.short 0xe4cd
   42e7e:	a3ca           	.short 0xa3ca
   42e80:	dff7 e1c7 3fc0 	addal @(0)@(3fc0deff),%sp
   42e86:	deff 
   42e88:	77bd           	.short 0x77bd
   42e8a:	3fdc           	.short 0x3fdc
   42e8c:	de7b 773d 7f7c 	addw %pc@(0x7f810c89)@(0,%d7:w:8),%d7
   42e92:	ddfb 
   42e94:	157d           	.short 0x157d
   42e96:	54fc           	trapcc
   42e98:	ebbf           	roll %d5,%d7
   42e9a:	7b7d           	.short 0x7b7d
   42e9c:	7b2c ddf7      	mvsb %a4@(-8713),%d5
   42ea0:	3b89 b888      	movew %a1,%a5@(ffffffffffffff88,%a3:l)
   42ea4:	dff7 5aeb      	addal %sp@(ffffffffffffffeb,%d5:l:2),%sp
   42ea8:	da1d           	addb %a5@+,%d5
   42eaa:	bdf7 6eff      	cmpal %sp@(ffffffffffffffff,%d6:l:8),%fp
   42eae:	defe           	.short 0xdefe
   42eb0:	bff7 9fef ff6f 	cmpal @(ffffffffffffff6f)@(7df73f9e),%sp
   42eb6:	7df7 3f9e 
   42eba:	ff9e fde7      	cp1stl %sp,%fp@+,#7,#487
   42ebe:	1bb8 f9b9 ffcf 	moveb 0xfffff9b9,@(0)@(ffffffff99f139ef)
   42ec4:	99f1 39ef 
   42ec8:	fe1f 9ca2      	cp1ldb %sp@+,%a1,#7,#162
   42ecc:	bcdf           	cmpaw %sp@+,%fp
   42ece:	fb3f           	.short 0xfb3f
   42ed0:	9e71 3f4f f9bf 	subw %a1@(0)@(fffffffff9bfdfe7),%d7
   42ed6:	dfe7 
   42ed8:	3fff           	.short 0x3fff
   42eda:	fc1f b5ff      	cp0ldb %sp@+,%a3,#3,#511
   42ede:	f5ff           	.short 0xf5ff
   42ee0:	fd77           	.short 0xfd77
   42ee2:	b67f           	.short 0xb67f
   42ee4:	f73b           	.short 0xf73b
   42ee6:	fff7           	.short 0xfff7
   42ee8:	6e7b           	bgts 0x42f65
   42eea:	ff7a           	.short 0xff7a
   42eec:	dfa7           	addl %d7,%sp@-
   42eee:	ee7f           	rorw %d7,%d7
   42ef0:	ff7e           	.short 0xff7e
   42ef2:	dfaf ee7f      	addl %d7,%sp@(-4481)
   42ef6:	ff7e           	.short 0xff7e
   42ef8:	dfaf 6e2f      	addl %d7,%sp@(28207)
   42efc:	ff22 ffdf      	cp1stb %sp,%a2@-,#8,#479
   42f00:	ee2f           	lsrb %d7,%d7
   42f02:	ff22 7fdf      	cp1stb %d7,%a2@-,#8,#479
   42f06:	5d27           	subqb #6,%sp@-
   42f08:	fda1 fddf      	cp0stl %sp,%a1@-,#7,#479
   42f0c:	d915           	addb %d4,%a5@
   42f0e:	f993           	.short 0xf993
   42f10:	f9ef           	.short 0xf9ef
   42f12:	b096           	cmpl %fp@,%d0
   42f14:	f0d1           	.short 0xf0d1
   42f16:	f0ef           	.short 0xf0ef
   42f18:	e06f           	lsrw %d0,%d7
   42f1a:	e07e           	rorw %d0,%d6
   42f1c:	6013           	bras 0x42f31
   42f1e:	803f           	.short 0x803f
   42f20:	803f           	.short 0x803f
   42f22:	0000 000f      	orib #15,%d0
   42f26:	000f           	.short 0x000f
   42f28:	0000 0001      	orib #1,%d0
   42f2c:	0001 0001      	orib #1,%d1
   42f30:	0002 0003      	orib #3,%d2
   42f34:	0003 0001      	orib #1,%d3
   42f38:	0002 0003      	orib #3,%d2
   42f3c:	0002 0005      	orib #5,%d2
   42f40:	0007 0007      	orib #7,%d7
   42f44:	000b           	.short 0x000b
   42f46:	000c           	.short 0x000c
   42f48:	000e           	.short 0x000e
   42f4a:	0007 0008      	orib #8,%d7
   42f4e:	000d           	.short 0x000d
   42f50:	0017 0018      	orib #24,%sp@
   42f54:	001a 000d      	orib #13,%a2@+
   42f58:	0010 0015      	orib #21,%a0@
   42f5c:	002a 0030 0036 	orib #48,%a2@(54)
   42f62:	000d           	.short 0x000d
   42f64:	0030 0025 001e 	orib #37,%a0@(1e,%d0:w)
   42f6a:	0030 0042 005d 	orib #66,%a0@(5d,%d0:w)
   42f70:	0070 009d 008f 	oriw #157,%a0@(ffffffffffffff8f,%d0:w)
   42f76:	00f8           	.short 0x00f8
   42f78:	012e 011f      	btst %d0,%fp@(287)
   42f7c:	01f8 006f      	bset %d0,0x6f
   42f80:	011f           	btst %d0,%sp@+
   42f82:	01fc           	.short 0x01fc
   42f84:	024f           	.short 0x024f
   42f86:	021f 03ff      	andib #-1,%sp@+
   42f8a:	0016 020c      	orib #12,%fp@
   42f8e:	03ff           	.short 0x03ff
   42f90:	0034 020c 03ff 	orib #12,@(42d041c)@(7ff00e0)
   42f96:	042d 041c 07ff 
   42f9c:	00e0 
   42f9e:	0419 07ff      	subib #-1,%a1@+
   42fa2:	00c4           	bitrev %d4
   42fa4:	0c3b 0fff 0b05 	cmpib #-1,%pc@(0x42fa8)@(0,%d0:l:2)
   42faa:	08f0 0ff7 0e65 	bset #-9,%a0@(65,%d0:l:8)
   42fb0:	0be0           	bset %d5,%a0@-
   42fb2:	0fe7           	bset %d7,%sp@-
   42fb4:	13c5 10c0 1fc7 	moveb %d5,0x10c01fc7
   42fba:	01c2           	bset %d0,%d2
   42fbc:	10c1           	moveb %d1,%a0@+
   42fbe:	1fc7           	.short 0x1fc7
   42fc0:	1202           	moveb %d2,%d1
   42fc2:	0181           	bclr %d0,%d1
   42fc4:	1f87 3281      	moveb %d7,%sp@(ffffffffffffff81,%d3:w:2)
   42fc8:	2183 3f87 2204 	movel %d3,@(0)@(22042102,%d3:l:8)
   42fce:	2102 
   42fd0:	3f06           	movew %d6,%sp@-
   42fd2:	2402           	movel %d2,%d2
   42fd4:	2306           	movel %d6,%a1@-
   42fd6:	3f06           	movew %d6,%sp@-
   42fd8:	2504           	movel %d4,%a2@-
   42fda:	2304           	movel %d4,%a1@-
   42fdc:	3f04           	movew %d4,%sp@-
   42fde:	2400           	movel %d0,%d2
   42fe0:	2200           	movel %d0,%d1
   42fe2:	3e00           	movew %d0,%d7
   42fe4:	2800           	movel %d0,%d4
   42fe6:	2600           	movel %d0,%d3
   42fe8:	3e00           	movew %d0,%d7
   42fea:	2a00           	movel %d0,%d5
   42fec:	2600           	movel %d0,%d3
   42fee:	3e00           	movew %d0,%d7
   42ff0:	2800           	movel %d0,%d4
   42ff2:	2440           	moveal %d0,%a2
   42ff4:	3c40           	moveaw %d0,%fp
   42ff6:	2800           	movel %d0,%d4
   42ff8:	2440           	moveal %d0,%a2
   42ffa:	3c40           	moveaw %d0,%fp
   42ffc:	2441           	moveal %d1,%a2
   42ffe:	2c21           	movel %a1@-,%d6
   43000:	3c61           	moveaw %a1@-,%fp
   43002:	3080           	movew %d0,%a0@
   43004:	28a1           	movel %a1@-,%a4@
   43006:	38e1           	movew %a1@-,%a4@+
   43008:	10a0           	moveb %a0@-,%a0@
   4300a:	0891 18f1      	bclr #-15,%a1@
   4300e:	00a0 1891 18f1 	oril #412162289,%a0@-
   43014:	10a0           	moveb %a0@-,%a0@
   43016:	1899           	moveb %a1@+,%a4@
   43018:	18f9 0004 084d 	moveb 0x4084d,%a4@+
   4301e:	087d           	.short 0x087d
   43020:	085c 085f      	bchg #95,%a4@+
   43024:	087f           	.short 0x087f
   43026:	0002 0023      	orib #35,%d2
   4302a:	003f           	.short 0x003f
   4302c:	0020 003c      	orib #60,%a0@-
   43030:	003f           	.short 0x003f
   43032:	0004 0007      	orib #7,%d4
   43036:	0007 0060      	orib #96,%d7
   4303a:	0010 0070      	orib #112,%a0@
   4303e:	0020 001c      	orib #28,%a0@-
   43042:	01fc           	.short 0x01fc
   43044:	0064 001e      	oriw #30,%a4@-
   43048:	03fe           	.short 0x03fe
   4304a:	018c 007c      	movepw %d0,%a4@(124)
   4304e:	07ff           	.short 0x07ff
   43050:	0b38 00f8      	btst %d5,0xf8
   43054:	0fff           	.short 0x0fff
   43056:	0673 01f0 0fff 	addiw #496,@(15870081)@(1f9f0a6d)
   4305c:	1587 0081 1f9f 
   43062:	0a6d 
   43064:	0063 1e7f      	oriw #7807,%a3@-
   43068:	05eb 21e1      	bset %d2,%a3@(8673)
   4306c:	3dbf           	.short 0x3dbf
   4306e:	2bd0           	.short 0x2bd0
   43070:	03c4           	bset %d1,%d4
   43072:	3a7c 07c3      	moveaw #1987,%a5
   43076:	17cb           	.short 0x17cb
   43078:	347b 2f47 0f55 	moveaw %pc@(0x4307a)@(f5528f3),%a2
   4307e:	28f3 
   43080:	878b afaa      	unpk %a3@-,%a3@-,#-20566
   43084:	a8e7           	.short 0xa8e7
   43086:	5fd6           	sle %fp@
   43088:	df92           	addl %d7,%a2@
   4308a:	d2cf           	addaw %sp,%a1
   4308c:	b997           	eorl %d4,%sp@
   4308e:	ffd2           	.short 0xffd2
   43090:	e0cf           	.short 0xe0cf
   43092:	3bd6           	.short 0x3bd6
   43094:	fed7           	.short 0xfed7
   43096:	f9ef           	.short 0xf9ef
   43098:	5ffe           	sle %d6
   4309a:	3fff           	.short 0x3fff
   4309c:	f1e7           	.short 0xf1e7
   4309e:	9dee bdef      	subal %fp@(-16913),%fp
   430a2:	f7f7           	.short 0xf7f7
   430a4:	9dfe           	.short 0x9dfe
   430a6:	3eef f7fb      	movew %sp@(-2053),%sp@+
   430aa:	d99e           	addl %d4,%fp@+
   430ac:	fe7f           	.short 0xfe7f
   430ae:	f7f8           	.short 0xf7f8
   430b0:	9f43           	subxw %d3,%d7
   430b2:	7efb           	moveq #-5,%d7
   430b4:	f7fc           	.short 0xf7fc
   430b6:	ab02           	.short 0xab02
   430b8:	7fd2           	mvzw %a2@,%d7
   430ba:	f5fd           	.short 0xf5fd
   430bc:	a1a2           	.short 0xa1a2
   430be:	ff92 f67d      	cp1stl %sp,%a2@,#4,#125
   430c2:	7ac5           	moveq #-59,%d5
   430c4:	ffe4           	.short 0xffe4
   430c6:	e77b           	rolw %d3,%d3
   430c8:	beca           	cmpaw %a2,%sp
   430ca:	f3e9           	.short 0xf3e9
   430cc:	efb7           	roxll %d7,%d7
   430ce:	fb4b           	.short 0xfb4b
   430d0:	f8e8           	.short 0xf8e8
   430d2:	dfb7 5e45      	addl %d7,%sp@(45,%d5:l:8)
   430d6:	fce3           	.short 0xfce3
   430d8:	efff           	.short 0xefff
   430da:	7e4d           	moveq #77,%d7
   430dc:	feeb           	.short 0xfeeb
   430de:	efb7           	roxll %d7,%d7
   430e0:	7e67           	moveq #103,%d7
   430e2:	fcf3           	.short 0xfcf3
   430e4:	efbf           	roll %d7,%d7
   430e6:	6c67           	bges 0x4314f
   430e8:	fbf3           	.short 0xfbf3
   430ea:	ffff           	.short 0xffff
   430ec:	68cb           	bvcs 0x430b9
   430ee:	fbe9           	.short 0xfbe9
   430f0:	dfb7 ec68      	addl %d7,%sp@(68,%fp:l:4)
   430f4:	fdec           	.short 0xfdec
   430f6:	9f9f           	subl %d7,%sp@+
   430f8:	fcb8           	.short 0xfcb8
   430fa:	ff7e           	.short 0xff7e
   430fc:	bfc7           	cmpal %d7,%sp
   430fe:	7c2c           	moveq #44,%d6
   43100:	e3cd           	.short 0xe3cd
   43102:	dfff           	.short 0xdfff
   43104:	3b95 f9ff cffe 	movew %a5@,@(ffffffffcffebb9c)@(fffffffffbbeedff)
   4310a:	bb9c fbbe edff 
   43110:	3a10           	movew %a0@,%d5
   43112:	7a7c           	moveq #124,%d5
   43114:	e7ff           	.short 0xe7ff
   43116:	39e7           	.short 0x39e7
   43118:	7872           	moveq #114,%d4
   4311a:	f7bd           	.short 0xf7bd
   4311c:	97e3           	subal %a3@-,%a3
   4311e:	7fb0 f87f      	mvzb %a0@(7f,%sp:l),%d7
   43122:	4fce           	.short 0x4fce
   43124:	fbe6           	.short 0xfbe6
   43126:	ffbd           	.short 0xffbd
   43128:	71cf           	mvzw %sp,%d0
   4312a:	efef           	.short 0xefef
   4312c:	ffff           	.short 0xffff
   4312e:	8e4f           	.short 0x8e4f
   43130:	e7ef fbfd      	rolw %sp@(-1027)
   43134:	2ccf           	movel %sp,%fp@+
   43136:	f3e7           	.short 0xf3e7
   43138:	ffbd           	.short 0xffbd
   4313a:	2fc3           	.short 0x2fc3
   4313c:	3762 fbfd      	movew %a2@-,%a3@(-1027)
   43140:	ef43           	aslw #7,%d3
   43142:	6f62           	bles 0x431a6
   43144:	fffd           	.short 0xfffd
   43146:	cf62           	andw %d7,%a2@-
   43148:	7f72 fbbd ee7b 	mvsw @(ffffffffee7bf67b)@(0,%sp:l:2),%d7
   4314e:	f67b 
   43150:	ffa4 f5d9      	cp1stl %sp,%a4@-,#3,#473
   43154:	f479           	cpusha dc
   43156:	fbb6 f75f f4bf 	wddatal %fp@(0)@(fffffffff4bffbf0)
   4315c:	fbf0 
   4315e:	1c9f           	moveb %sp@+,%fp@
   43160:	07ff           	.short 0x07ff
   43162:	fb7c           	.short 0xfb7c
   43164:	039b           	bclr %d1,%a3@+
   43166:	02ff           	.short 0x02ff
   43168:	fd77           	.short 0xfd77
   4316a:	879f           	orl %d3,%sp@+
   4316c:	01ff           	.short 0x01ff
   4316e:	fe67 87b7      	cp1ldw %sp@-,%a0,#4,#439
   43172:	00ff           	.short 0x00ff
   43174:	ff6f cf79 88f8 	cp1stw %a4,%sp@(-30472),#8,#377
   4317a:	f70f           	.short 0xf70f
   4317c:	7fd4           	mvzw %a4@,%d7
   4317e:	cefc f13b      	muluw #-3781,%d7
   43182:	ffea           	.short 0xffea
   43184:	f7ee           	.short 0xf7ee
   43186:	780d           	moveq #13,%d4
   43188:	8f87 8f87      	unpk %d7,%d7,#-28793
   4318c:	0804 0001      	btst #1,%d4
   43190:	0001 0001      	orib #1,%d1
   43194:	0002 0003      	orib #3,%d2
   43198:	0003 0020      	orib #32,%d3
   4319c:	003c 003f      	orib #63,%ccr
   431a0:	0100           	btst %d0,%d0
   431a2:	01e0           	bset %d0,%a0@-
   431a4:	01ff           	.short 0x01ff
   431a6:	8407           	orb %d7,%d2
   431a8:	8700           	sbcd %d0,%d3
   431aa:	87ff           	.short 0x87ff
   431ac:	1002           	moveb %d2,%d0
   431ae:	dc00           	addb %d0,%d6
   431b0:	dfff           	.short 0xdfff
   431b2:	2a08           	movel %a0,%d5
   431b4:	7000           	moveq #0,%d0
   431b6:	ffff           	.short 0xffff
   431b8:	4a03           	tstb %d3
   431ba:	3000           	movew %d0,%d0
   431bc:	ffff           	.short 0xffff
   431be:	2d00           	movel %d0,%fp@-
   431c0:	3000           	movew %d0,%d0
   431c2:	ffff           	.short 0xffff
   431c4:	4600           	notb %d0
   431c6:	9800           	subb %d0,%d4
   431c8:	7fff           	.short 0x7fff
   431ca:	ab40           	mov3ql #5,%d0
   431cc:	cc00           	andb %d0,%d6
   431ce:	3fff           	.short 0x3fff
   431d0:	b581           	eorl %d2,%d1
   431d2:	e600           	asrb #3,%d0
   431d4:	3fff           	.short 0x3fff
   431d6:	94c0           	subaw %d0,%a2
   431d8:	f300           	.short 0xf300
   431da:	1fff           	.short 0x1fff
   431dc:	5b60           	subqw #5,%a0@-
   431de:	f380           	.short 0xf380
   431e0:	1fff           	.short 0x1fff
   431e2:	5ba2           	subql #5,%a2@-
   431e4:	f1c0           	.short 0xf1c0
   431e6:	1fff           	.short 0x1fff
   431e8:	58b7 f040      	addql #4,%sp@(40,%sp:w)
   431ec:	1fff           	.short 0x1fff
   431ee:	d807           	addb %d7,%d4
   431f0:	f0e0           	.short 0xf0e0
   431f2:	1fff           	.short 0x1fff
   431f4:	b154           	eorw %d0,%a4@
   431f6:	e0c0           	.short 0xe0c0
   431f8:	3fff           	.short 0x3fff
   431fa:	b2d8           	cmpaw %a0@+,%a1
   431fc:	e186           	asll #8,%d6
   431fe:	3fff           	.short 0x3fff
   43200:	45dc           	.short 0x45dc
   43202:	c33c           	.short 0xc33c
   43204:	7fff           	.short 0x7fff
   43206:	83e8 801c      	divsw %a0@(-32740),%d1
   4320a:	ffff           	.short 0xffff
   4320c:	70f6           	moveq #-10,%d0
   4320e:	210e           	movel %fp,%a0@-
   43210:	ffff           	.short 0xffff
   43212:	baef 6183      	cmpaw %sp@(24963),%a5
   43216:	ffff           	.short 0xffff
   43218:	3add           	movew %a5@+,%a5@+
   4321a:	f1c2           	.short 0xf1c2
   4321c:	ffff           	.short 0xffff
   4321e:	7ad7           	moveq #-41,%d5
   43220:	f7ce           	.short 0xf7ce
   43222:	ffff           	.short 0xffff
   43224:	ffff           	.short 0xffff
   43226:	f3df           	.short 0xf3df
   43228:	ffff           	.short 0xffff
   4322a:	aa7f           	.short 0xaa7f
   4322c:	61c7           	bsrs 0x431f5
   4322e:	efff           	.short 0xefff
   43230:	a284           	.short 0xa284
   43232:	618c           	bsrs 0x431c0
   43234:	efbc           	roll %d7,%d4
   43236:	4408           	.short 0x4408
   43238:	c318           	andb %d1,%a0@+
   4323a:	cf38 0510      	andb %d7,0x510
   4323e:	8310           	orb %d1,%a0@
   43240:	8f30 8620      	orb %d7,%a0@(20,%a0:w:8)
   43244:	8200           	orb %d0,%d1
   43246:	8e20           	orb %a0@-,%d7
   43248:	0400 0401      	subib #1,%d0
   4324c:	0c01 0000      	cmpib #0,%d1
   43250:	0801 0801      	btst #1,%d1
   43254:	0000 0001      	orib #1,%d0
   43258:	0001 0000      	orib #0,%d1
   4325c:	0002 0003      	orib #3,%d2
   43260:	0000 0002      	orib #2,%d0
   43264:	0003 0000      	orib #0,%d3
   43268:	0002 0003      	orib #3,%d2
   4326c:	0420 0422      	subib #34,%a0@-
   43270:	0423 0040      	subib #64,%a3@-
   43274:	8462           	orw %a2@-,%d2
   43276:	8463           	orw %a3@-,%d2
   43278:	0830 8a52 8e73 	btst #82,%a0@(73,%a0:l:8)
   4327e:	0020 cb56      	orib #86,%a0@-
   43282:	cf77 0234      	andw %d7,%sp@(34,%d0:w:2)
   43286:	29dc           	.short 0x29dc
   43288:	efff           	.short 0xefff
   4328a:	5a4f           	addqw #5,%sp
   4328c:	39e4           	.short 0x39e4
   4328e:	ffff           	.short 0xffff
   43290:	6853           	bvcs 0x432e5
   43292:	1fcd           	.short 0x1fcd
   43294:	ffff           	.short 0xffff
   43296:	0966           	bchg %d4,%fp@-
   43298:	78d9           	moveq #-39,%d4
   4329a:	ffff           	.short 0xffff
   4329c:	235f 98e3      	movel %sp@+,%a1@(-26397)
   432a0:	ffff           	.short 0xffff
   432a2:	32db           	movew %a3@+,%a1@+
   432a4:	0def ffff      	bset %d6,%sp@(-1)
   432a8:	2dff           	.short 0x2dff
   432aa:	9e7f           	.short 0x9e7f
   432ac:	ffff           	.short 0xffff
   432ae:	8e8c           	.short 0x8e8c
   432b0:	7dff           	.short 0x7dff
   432b2:	ffff           	.short 0xffff
   432b4:	2604           	movel %d4,%d3
   432b6:	1ffc           	.short 0x1ffc
   432b8:	fffc           	.short 0xfffc
   432ba:	0100           	btst %d0,%d0
   432bc:	9f00           	subxb %d0,%d7
   432be:	ff00 1800      	cp1stb %d1,%d0,#5,#0
   432c2:	7800           	moveq #0,%d4
   432c4:	7800           	moveq #0,%d4
   432c6:	c000           	andb %d0,%d0
   432c8:	2000           	movel %d0,%d0
   432ca:	e000           	asrb #8,%d0
   432cc:	4900           	chkl %d0,%d4
   432ce:	3e80           	movew %d0,%sp@
   432d0:	ff80 d104      	cp1stl %a5,%d0,#1,#260
   432d4:	30f2 ffff 637d 	movew @(637de0c0)@(ffffffffffffcf44),%a0@+
   432da:	e0c0 ffff cf44 
   432e0:	c0c6           	muluw %d6,%d0
   432e2:	ffff           	.short 0xffff
   432e4:	9e65           	subw %a5@-,%d7
   432e6:	81ec ffff      	divsw %a4@(-1),%d0
   432ea:	307b 0fe8 7fff 	moveaw %zpc@(7fff),%a0
   432f0:	abca           	.short 0xabca
   432f2:	87f8 ffff      	divsw 0xffffffff,%d3
   432f6:	4034 1831      	negxb %a4@(31,%d1:l)
   432fa:	f83f           	.short 0xf83f
   432fc:	0781           	bclr %d3,%d1
   432fe:	2793 e01f      	movel %a3@,%a3@(1f,%fp:w)
   43302:	1fd0           	.short 0x1fd0
   43304:	5fe4           	sle %a4@-
   43306:	d03c 39a3      	addb #-93,%d0
   4330a:	b1eb ae79      	cmpal %a3@(-20871),%a0
   4330e:	7df7 7de7 7f32 	mvzw @(7f32)@(7de57df4),%d6
   43314:	7de5 7df4 
   43318:	7fb3 7afd      	mvzb %a3@(fffffffffffffffd,%d7:l:2),%d7
   4331c:	7afc           	moveq #-4,%d5
   4331e:	ffbb           	.short 0xffbb
   43320:	fee5           	.short 0xfee5
   43322:	fa65           	.short 0xfa65
   43324:	ffba           	.short 0xffba
   43326:	9f65           	subw %d7,%a5@-
   43328:	ff5d 0fba      	cp1stw %d0,%a5@+,#8,#442
   4332c:	7f65           	mvsw %a5@-,%d7
   4332e:	ff5f 03bb      	cp1stw %d0,%sp@+,#2,#443
   43332:	c98e           	exg %d4,%fp
   43334:	bff7 7ffa e2fd 	cmpal @(ffffffffe2fd5fc7)@(ffffffffffffbfb8),%sp
   4333a:	5fc7 bfb8 
   4333e:	fefe           	.short 0xfefe
   43340:	3fee           	.short 0x3fee
   43342:	c3d1           	mulsw %a1@,%d1
   43344:	3f78 fcec dbd7 	movew 0xfffffcec,%sp@(-9257)
   4334a:	de70 7ef8      	addw %a0@(fffffffffffffff8,%d7:l:8),%d7
   4334e:	bde7           	cmpal %sp@-,%fp
   43350:	7f78 fff8      	mvsw 0xfffffff8,%d7
   43354:	def7 bf7b bdf9 	addaw %sp@(ffffffffbdf9def7)@(ffffffffccf3c3fb),%sp
   4335a:	def7 ccf3 c3fb 
   43360:	ff6f f0f3 f3fb 	cp1stw %sp,%sp@(-3077),#1,#243
   43366:	df7f           	.short 0xdf7f
   43368:	dc7b ddf9 ffb7 	addw %zpc@(ffffffffffb7fcb8)@(0),%d6
   4336e:	fcb8 
   43370:	ef7c           	rolw %d7,%d4
   43372:	dff7 e179 1e7c 	addal %sp@(1e7cfff7)@(0),%sp
   43378:	fff7 
   4337a:	2cec e2ff      	movel %a4@(-7425),%fp@+
   4337e:	dfd7           	addal %sp@,%sp
   43380:	153f           	.short 0x153f
   43382:	54ef ebd0      	scc %sp@(-5168)
   43386:	7704           	mvsb %d4,%d3
   43388:	7f3f           	.short 0x7f3f
   4338a:	ddf9 7782 3fb7 	addal 0x77823fb7,%fp
   43390:	de7d           	.short 0xde7d
   43392:	e187           	asll #8,%d7
   43394:	3fa2 defd      	movew %a2@-,%sp@(fffffffffffffffd,%a5:l:8)
   43398:	e49e           	rorl #2,%d6
   4339a:	a3ce           	.short 0xa3ce
   4339c:	dffd           	.short 0xdffd
   4339e:	e4be           	rorl %d2,%d6
   433a0:	e39e           	roll #1,%d6
   433a2:	fffd           	.short 0xfffd
   433a4:	dd7e           	.short 0xdd7e
   433a6:	4dde           	.short 0x4dde
   433a8:	fefd           	.short 0xfefd
   433aa:	5f6e 5fde      	subqw #7,%fp@(24542)
   433ae:	fefd           	.short 0xfefd
   433b0:	bf6d bfdd      	eorw %d7,%a5@(-16419)
   433b4:	feff           	.short 0xfeff
   433b6:	bf57           	eorw %d7,%sp@
   433b8:	becf           	cmpaw %sp,%sp
   433ba:	fdfa           	.short 0xfdfa
   433bc:	e75c           	rolw #3,%d4
   433be:	1fcb           	.short 0x1fcb
   433c0:	fff7           	.short 0xfff7
   433c2:	cb69 3fcf      	andw %d5,%a1@(16335)
   433c6:	f7f6           	.short 0xf7f6
   433c8:	f68f           	.short 0xf68f
   433ca:	1f89           	.short 0x1f89
   433cc:	eff6           	.short 0xeff6
   433ce:	b6cf           	cmpaw %sp,%a3
   433d0:	ffcc           	.short 0xffcc
   433d2:	4fb3 7d0f ffcf 	chkw %a3@(0)@(ffffffffffcf1ff0,%d7:l:4),%d7
   433d8:	1ff0 
   433da:	b3d7           	cmpal %sp@,%a1
   433dc:	fffc           	.short 0xfffc
   433de:	0f63           	bchg %d7,%a3@-
   433e0:	ee70           	roxrw %d7,%d0
   433e2:	fcff           	.short 0xfcff
   433e4:	1fff           	.short 0x1fff
   433e6:	ffcf           	.short 0xffcf
   433e8:	ffc7           	.short 0xffc7
   433ea:	fe7e           	.short 0xfe7e
   433ec:	7f41           	mvsw %d1,%d7
   433ee:	5fc1           	sle %d1
   433f0:	bcfe           	.short 0xbcfe
   433f2:	51c3           	sf %d3
   433f4:	7381           	mvzb %d1,%d1
   433f6:	bcfe           	.short 0xbcfe
   433f8:	e6c3           	.short 0xe6c3
   433fa:	5f81           	subql #7,%d1
   433fc:	b9fe           	.short 0xb9fe
   433fe:	cf63           	andw %d7,%a3@-
   43400:	ff63 315c      	cp1stw %d3,%a3@-,#1,#348
   43404:	fe3f           	.short 0xfe3f
   43406:	de3e           	.short 0xde3e
   43408:	2221           	movel %a1@-,%d1
   4340a:	fc1f fc1f      	cp0ldb %sp@+,%sp,#7,#31
   4340e:	0010 f007      	orib #7,%a0@
   43412:	f007           	.short 0xf007
   43414:	0006 02a0      	orib #-96,%d6
   43418:	ffe0           	.short 0xffe0
   4341a:	ffe0           	.short 0xffe0
   4341c:	1c18           	moveb %a0@+,%d6
   4341e:	03fc           	.short 0x03fc
   43420:	fffc           	.short 0xfffc
   43422:	f87d           	.short 0xf87d
   43424:	07ff           	.short 0x07ff
   43426:	ffff           	.short 0xffff
   43428:	d0be           	.short 0xd0be
   4342a:	2fff           	.short 0x2fff
   4342c:	ffff           	.short 0xffff
   4342e:	f877           	.short 0xf877
   43430:	07ff           	.short 0x07ff
   43432:	ffff           	.short 0xffff
   43434:	7c2f           	moveq #47,%d6
   43436:	03ff           	.short 0x03ff
   43438:	ffff           	.short 0xffff
   4343a:	5407           	addqb #2,%d7
   4343c:	2bff           	.short 0x2bff
   4343e:	ffff           	.short 0xffff
   43440:	fb12           	wddatab %a2@
   43442:	04ff           	.short 0x04ff
   43444:	ffff           	.short 0xffff
   43446:	b296           	cmpl %fp@,%d1
   43448:	0d7f           	.short 0x0d7f
   4344a:	ffff           	.short 0xffff
   4344c:	5d8f           	subql #6,%sp
   4344e:	027f           	.short 0x027f
   43450:	ffff           	.short 0xffff
   43452:	bf41           	eorw %d7,%d1
   43454:	00bf ffff 8f4b 	oril #-28853,%d7
   4345a:	00bf ffff 1fc5 	oril #-57403,%d7
   43460:	003f           	.short 0x003f
   43462:	ffff           	.short 0xffff
   43464:	0ea1           	.short 0x0ea1
   43466:	015f           	bchg %d0,%sp@+
   43468:	ffff           	.short 0xffff
   4346a:	1f03           	moveb %d3,%sp@-
   4346c:	00ff           	.short 0x00ff
   4346e:	ffff           	.short 0xffff
   43470:	0da1           	bclr %d6,%a1@-
   43472:	125f           	.short 0x125f
   43474:	ffff           	.short 0xffff
   43476:	1ba1 045f      	moveb %a1@-,%a5@(5f,%d0:w:4)
   4347a:	ffff           	.short 0xffff
   4347c:	1e87           	moveb %d7,%sp@
   4347e:	017f           	.short 0x017f
   43480:	ffff           	.short 0xffff
   43482:	0785           	bclr %d3,%d5
   43484:	007f           	.short 0x007f
   43486:	ffff           	.short 0xffff
   43488:	2e60           	moveal %a0@-,%sp
   4348a:	01df           	bset %d0,%sp@+
   4348c:	ffff           	.short 0xffff
   4348e:	0ece           	.short 0x0ece
   43490:	01bf           	.short 0x01bf
   43492:	ffff           	.short 0xffff
   43494:	9cc3           	subaw %d3,%fp
   43496:	839f           	orl %d1,%sp@+
   43498:	ffff           	.short 0xffff
   4349a:	f9d3           	.short 0xf9d3
   4349c:	3f1f           	movew %sp@+,%sp@-
   4349e:	ffff           	.short 0xffff
   434a0:	ff87 0f9e      	cp1stl %d0,%d7,#8,#414
   434a4:	ffff           	.short 0xffff
   434a6:	dfe7           	addal %sp@-,%sp
   434a8:	e0fc           	.short 0xe0fc
   434aa:	ffff           	.short 0xffff
   434ac:	e1ac           	lsll %d0,%d4
   434ae:	f05d           	.short 0xf05d
   434b0:	ffff           	.short 0xffff
   434b2:	38a6           	movew %fp@-,%a4@
   434b4:	7c9d           	moveq #-99,%d6
   434b6:	7fff           	.short 0x7fff
   434b8:	1f82 8ff1 ffff 	moveb %d2,@(ffffffffffff3691)@(0)
   434be:	3691 
   434c0:	8f9b           	orl %d7,%a3@+
   434c2:	ff9f 12ab      	cp1stl %d1,%sp@+,#2,#171
   434c6:	8f1f           	orb %d7,%sp@+
   434c8:	ffbf           	.short 0xffbf
   434ca:	2628 9f1c      	movel %a0@(-24804),%d3
   434ce:	ff3c           	.short 0xff3c
   434d0:	2d2c 1f1c      	movel %a4@(7964),%fp@-
   434d4:	ff3c           	.short 0xff3c
   434d6:	6a14           	bpls 0x434ec
   434d8:	1e2e fe3e      	moveb %fp@(-450),%d7
   434dc:	5818           	addqb #4,%a0@+
   434de:	3c1e           	movew %fp@+,%d6
   434e0:	fc1e 140a      	cp0ldb %fp@+,%d1,#3,#10
   434e4:	7c07           	moveq #7,%d6
   434e6:	fc1f 500c      	cp0ldb %sp@+,%d5,#1,#12
   434ea:	3807           	movew %d7,%d4
   434ec:	f81f           	.short 0xf81f
   434ee:	d007           	addb %d7,%d0
   434f0:	3804           	movew %d4,%d4
   434f2:	f80f           	.short 0xf80f
   434f4:	d00c           	.short 0xd00c
   434f6:	380c           	movew %a4,%d4
   434f8:	f80f           	.short 0xf80f
   434fa:	4000           	negxb %d0
   434fc:	3800           	movew %d0,%d4
   434fe:	f800           	.short 0xf800
   43500:	8800           	orb %d0,%d4
   43502:	7800           	moveq #0,%d4
   43504:	f800 2000      	tblub %d0,%d0,%d2
   43508:	f000           	.short 0xf000
   4350a:	f000 6000      	pmove %d0,%psr
   4350e:	f000           	.short 0xf000
   43510:	f000           	.short 0xf000
   43512:	e000           	asrb #8,%d0
   43514:	f000           	.short 0xf000
   43516:	f000           	.short 0xf000
   43518:	f000           	.short 0xf000
   4351a:	f000           	.short 0xf000
   4351c:	f000           	.short 0xf000
   4351e:	c000           	andb %d0,%d0
   43520:	e000           	asrb #8,%d0
   43522:	e000           	asrb #8,%d0
   43524:	c000           	andb %d0,%d0
   43526:	e000           	asrb #8,%d0
   43528:	e000           	asrb #8,%d0
   4352a:	a000 e000      	macw %d0l,%d0l
   4352e:	e000           	asrb #8,%d0
   43530:	8000           	orb %d0,%d0
   43532:	8000           	orb %d0,%d0
   43534:	8000           	orb %d0,%d0
   43536:	0001 0000      	orib #0,%d1
   4353a:	0001 0000      	orib #0,%d1
   4353e:	0000 0001      	orib #1,%d0
   43542:	0000 0000      	orib #0,%d0
   43546:	0001 0002      	orib #2,%d1
   4354a:	0000 0003      	orib #3,%d0
   4354e:	0001 0000      	orib #0,%d1
   43552:	0003 0005      	orib #5,%d3
   43556:	0000 0007      	orib #7,%d0
   4355a:	0000 0001      	orib #1,%d0
   4355e:	0007 0002      	orib #2,%d7
   43562:	0001 0007      	orib #7,%d1
   43566:	000b           	.short 0x000b
   43568:	0001 000f      	orib #15,%d1
   4356c:	0001 0003      	orib #3,%d1
   43570:	000f           	.short 0x000f
   43572:	0005 0003      	orib #3,%d5
   43576:	000f           	.short 0x000f
   43578:	0016 0002      	orib #2,%fp@
   4357c:	001e 0002      	orib #2,%fp@+
   43580:	0006 001e      	orib #30,%d6
   43584:	000a           	.short 0x000a
   43586:	0006 001e      	orib #30,%d6
   4358a:	002c 0004 003d 	orib #4,%a4@(61)
   43590:	0004 000c      	orib #12,%d4
   43594:	003d           	.short 0x003d
   43596:	0014 000c      	orib #12,%a4@
   4359a:	003d           	.short 0x003d
   4359c:	0059 0008      	oriw #8,%a1@+
   435a0:	007b           	.short 0x007b
   435a2:	0009           	.short 0x0009
   435a4:	0018 007b      	orib #123,%a0@+
   435a8:	002b 0019 007f 	orib #25,%a3@(127)
   435ae:	00b3 0011 00f7 	oril #1114359,%a3@(36,%d0:w)
   435b4:	0036 
   435b6:	0012 00fe      	orib #-2,%a2@
   435ba:	0016 0032      	orib #50,%fp@
   435be:	00fe           	.short 0x00fe
   435c0:	0164           	bchg %d0,%a4@-
   435c2:	0026 01ee      	orib #-18,%fp@-
   435c6:	016c 0024      	bchg %d0,%a4@(36)
   435ca:	01fc           	.short 0x01fc
   435cc:	002c 0064 01fc 	orib #100,%a4@(508)
   435d2:	00d8           	.short 0x00d8
   435d4:	0048           	.short 0x0048
   435d6:	01f8 02d8      	bset %d0,0x2d8
   435da:	0048           	.short 0x0048
   435dc:	03f8 62b0      	bset %d1,0x62b0
   435e0:	e010           	roxrb #8,%d0
   435e2:	e3f0 0230      	lslw %a0@(30,%d0:w:2)
   435e6:	0090 f3f0 1d60 	oril #-202367648,%a0@
   435ec:	8d20           	orb %d6,%a0@-
   435ee:	ffe0           	.short 0xffe0
   435f0:	3660           	moveaw %a0@-,%a3
   435f2:	8e20           	orb %a0@-,%d7
   435f4:	ffe0           	.short 0xffe0
   435f6:	ba70 06f0      	cmpw %a0@(fffffffffffffff0,%d0:w:8),%d5
   435fa:	fff0           	.short 0xfff0
   435fc:	3c50           	moveaw %a0@,%fp
   435fe:	8670 fff0 9b90 	orw @(ffffffff9b9045f0),%d3
   43604:	45f0 
   43606:	fff0           	.short 0xfff0
   43608:	7f13           	mvsb %a3@,%d7
   4360a:	b3f3 fff2 83eb 	cmpal @(ffffffff83ebffef)@(ffffffffffffffec),%a1
   43610:	ffef ffec 
   43614:	000b           	.short 0x000b
   43616:	001f 0010      	orib #16,%sp@+
   4361a:	bfb7 fffe 70c1 	eorl %d7,@(70c1dffb)@(7ff9)
   43620:	dffb 7ff9 
   43624:	be06           	cmpb %d6,%d7
   43626:	6fa3           	bles 0x435cb
   43628:	ef21           	aslb %d7,%d1
   4362a:	fede           	.short 0xfede
   4362c:	331c           	movew %a4@+,%a1@-
   4362e:	f1eb           	.short 0xf1eb
   43630:	9ef7 f51a f5d5 	subaw %sp@(0,%sp:w:4)@(fffffffffffff5d5),%sp
   43636:	1eef ff1d      	moveb %sp@(-227),%sp@+
   4363a:	ff73           	.short 0xff73
   4363c:	bfef c337      	cmpal %sp@(-15561),%sp
   43640:	ffdf           	.short 0xffdf
   43642:	3cef 9cd7      	movew %sp@(-25385),%fp@+
   43646:	979f           	subl %d3,%sp@+
   43648:	7bec bf5e      	mvzw %a4@(-16546),%d5
   4364c:	9fd9           	subal %a1@+,%sp
   4364e:	67ee           	beqs 0x4363e
   43650:	f9b9           	.short 0xf9b9
   43652:	d7f1 2fee 79b1 	addal @(79b1)@(67f1),%a3
   43658:	67f1 
   4365a:	9fce           	subal %fp,%sp
   4365c:	72f1           	moveq #-15,%d1
   4365e:	4fe1           	.short 0x4fe1
   43660:	bf9e           	eorl %d7,%fp@+
   43662:	79e2           	mvzw %a2@-,%d4
   43664:	27c2           	.short 0x27c2
   43666:	dfbd           	.short 0xdfbd
   43668:	ef67           	aslw %d7,%d7
   4366a:	ef44           	aslw #7,%d4
   4366c:	ffbb           	.short 0xffbb
   4366e:	fffe           	.short 0xfffe
   43670:	ffde           	.short 0xffde
   43672:	efbf           	roll %d7,%d7
   43674:	d7fe           	.short 0xd7fe
   43676:	d7de           	addal %fp@+,%a3
   43678:	fffb           	.short 0xfffb
   4367a:	b77d           	.short 0xb77d
   4367c:	935e           	subw %d1,%fp@+
   4367e:	effb           	.short 0xeffb
   43680:	f979           	.short 0xf979
   43682:	38ef ffbf      	movew %sp@(-65),%a4@+
   43686:	f93d           	.short 0xf93d
   43688:	38ed efff      	movew %a5@(-4097),%a4@+
   4368c:	384d           	moveaw %a5,%a4
   4368e:	07fe           	.short 0x07fe
   43690:	ffbf           	.short 0xffbf
   43692:	bffd           	.short 0xbffd
   43694:	bbfc 75bf 0f3d 	cmpal #1975455549,%a5
   4369a:	affc           	.short 0xaffc
   4369c:	fbfb           	.short 0xfbfb
   4369e:	67bd           	beqs 0x4365d
   436a0:	17dc           	.short 0x17dc
   436a2:	fb7b           	.short 0xfb7b
   436a4:	0bc7           	bset %d5,%d7
   436a6:	fbc0           	.short 0xfbc0
   436a8:	f7ff           	.short 0xf7ff
   436aa:	edcd           	.short 0xedcd
   436ac:	7bca           	mvzw %a2,%d5
   436ae:	f777           	.short 0xf777
   436b0:	f3f8           	.short 0xf3f8
   436b2:	ff8f cf77      	cp1stl %a4,%sp,#8,#375
   436b6:	a78c           	.short 0xa78c
   436b8:	bf8b           	cmpml %a3@+,%sp@+
   436ba:	df77 6398      	addw %d7,@(0,%d6:w:2)
   436be:	3f8f df77 f35c 	movew %sp,%sp@(fffffffff35ce75b)@(ffffffffdfa7f33d)
   436c4:	e75b dfa7 f33d 
   436ca:	f723           	.short 0xf723
   436cc:	dfdf           	addal %sp@+,%sp
   436ce:	f3ec           	.short 0xf3ec
   436d0:	e7a3           	asll %d3,%d3
   436d2:	df5f           	addw %d7,%sp@+
   436d4:	fbf9           	.short 0xfbf9
   436d6:	e7df           	rolw %sp@+
   436d8:	dfe7           	addal %sp@-,%sp
   436da:	76fe           	moveq #-2,%d3
   436dc:	befe           	.short 0xbefe
   436de:	df3b           	.short 0xdf3b
   436e0:	367b fe3b      	moveaw %pc@(0x4371d,%sp:l:8),%a3
   436e4:	dfdf           	addal %sp@+,%sp
   436e6:	cd77 ff4f 3bbd 	andw %d6,%sp@(0)@(3bbd1d2b)
   436ec:	1d2b 
   436ee:	ff17 fbfd      	cp1stb %sp,%sp@,#6,#509
   436f2:	7d5d           	mvsw %a5@+,%d6
   436f4:	ff1f fbe3      	cp1stb %sp,%sp@+,#6,#483
   436f8:	cd0c           	abcd %a4@-,%fp@-
   436fa:	ff1b ffe7      	cp1stb %sp,%a3@+,#8,#487
   436fe:	9d7e           	.short 0x9d7e
   43700:	7f79 ef87 6a0e 	mvsw 0xef876a0e,%d7
   43706:	fe9f 9ee1      	cp1ldl %sp@+,%a1,#8,#225
   4370a:	da0e           	.short 0xda0e
   4370c:	fe63 3e7d      	cp1ldw %a3@-,%d3,#8,#125
   43710:	743e           	moveq #62,%d2
   43712:	fc3f           	.short 0xfc3f
   43714:	3c21           	movew %a1@-,%d6
   43716:	980f           	.short 0x980f
   43718:	780f           	moveq #15,%d4
   4371a:	e800           	asrb #4,%d0
   4371c:	f000           	.short 0xf000
   4371e:	f000           	.short 0xf000
   43720:	0000 c000      	orib #0,%d0
   43724:	c000           	andb %d0,%d0
   43726:	0000 8000      	orib #0,%d0
   4372a:	8000           	orb %d0,%d0
   4372c:	8000           	orb %d0,%d0
   4372e:	a000 e000      	macw %d0l,%d0l
   43732:	e000           	asrb #8,%d0
   43734:	e000           	asrb #8,%d0
   43736:	f000           	.short 0xf000
   43738:	f000           	.short 0xf000
   4373a:	f000           	.short 0xf000
   4373c:	f800           	.short 0xf800
   4373e:	f800           	.short 0xf800
   43740:	fc00 fc00      	cp0ldb %d0,%sp,#7,#0
   43744:	fc00 f800      	cp0ldb %d0,%sp,#5,#0
   43748:	fc00 fc00      	cp0ldb %d0,%sp,#7,#0
   4374c:	fe00 fe00      	cp1ldb %d0,%sp,#8,#0
   43750:	fe01 fc00      	cp1ldb %d1,%sp,#7,#0
   43754:	fe00 fe01      	cp1ldb %d0,%sp,#8,#1
   43758:	fc00 fe00      	cp0ldb %d0,%sp,#8,#0
   4375c:	fe01 5f00      	cp1ldb %d1,%d5,#8,#256
   43760:	ff00 ff01      	cp1stb %sp,%d0,#8,#257
   43764:	fe00 ff00      	cp1ldb %d0,%sp,#8,#256
   43768:	ff01 fe00      	cp1stb %sp,%d1,#8,#0
   4376c:	ff00 ff01      	cp1stb %sp,%d0,#8,#257
   43770:	be00           	cmpb %d0,%d7
   43772:	ff00 ff01      	cp1stb %sp,%d0,#8,#257
   43776:	fe00 ff00      	cp1ldb %d0,%sp,#8,#256
   4377a:	ff01 fe00      	cp1stb %sp,%d1,#8,#0
   4377e:	ff00 ff00      	cp1stb %sp,%d0,#8,#256
   43782:	fe00 ff00      	cp1ldb %d0,%sp,#8,#256
   43786:	ff00 fe00      	cp1stb %sp,%d0,#8,#0
   4378a:	ff00 ff00      	cp1stb %sp,%d0,#8,#256
   4378e:	ff00 ff00      	cp1stb %sp,%d0,#8,#256
   43792:	ff00 fc00      	cp1stb %sp,%d0,#7,#0
   43796:	fe00 fe02      	cp1ldb %d0,%sp,#8,#2
   4379a:	7a06           	moveq #6,%d5
   4379c:	fe00 fe06      	cp1ldb %d0,%sp,#8,#6
   437a0:	3404           	movew %d4,%d2
   437a2:	fc01 fc07      	cp0ldb %d1,%sp,#7,#7
   437a6:	6800 f801      	bvcw 0x42fa9
   437aa:	f807           	.short 0xf807
   437ac:	d010           	addb %a0@,%d0
   437ae:	f007           	.short 0xf007
   437b0:	f017           	.short 0xf017
   437b2:	4003           	negxb %d3
   437b4:	c000           	andb %d0,%d0
   437b6:	c01f           	andb %sp@+,%d0
   437b8:	000d           	.short 0x000d
   437ba:	0002 001f      	orib #31,%d2
   437be:	0055 0013      	oriw #19,%a5@
   437c2:	005f 00e4      	oriw #228,%sp@+
   437c6:	00c3           	bitrev %d3
   437c8:	00ff           	.short 0x00ff
   437ca:	01c5           	bset %d0,%d5
   437cc:	00c3           	bitrev %d3
   437ce:	01ff           	.short 0x01ff
   437d0:	00c5           	bitrev %d5
   437d2:	00c3           	bitrev %d3
   437d4:	01ff           	.short 0x01ff
   437d6:	09c4           	bset %d4,%d4
   437d8:	0083 0bff 3ce4 	oril #201276644,%d3
   437de:	3643           	moveaw %d3,%a3
   437e0:	3fff           	.short 0x3fff
   437e2:	76e4           	moveq #-28,%d3
   437e4:	f663           	.short 0xf663
   437e6:	ffff           	.short 0xffff
   437e8:	db16           	addb %d5,%fp@
   437ea:	d301           	addxb %d1,%d1
   437ec:	ff9f dc06      	cp1stl %a5,%sp@+,#7,#6
   437f0:	9b01           	subxb %d1,%d5
   437f2:	ff0f 880e      	cp1stb %a0,%sp,#5,#14
   437f6:	cc01           	andb %d1,%d6
   437f8:	fc0f 0002      	cp0ldb %sp,%d0,#1,#2
   437fc:	0001 0007      	orib #7,%d1
   43800:	0002 0001      	orib #1,%d2
   43804:	0007 0002      	orib #2,%d7
   43808:	0001 0007      	orib #7,%d1
   4380c:	0002 0001      	orib #1,%d2
   43810:	0007 0002      	orib #2,%d7
   43814:	0001 0007      	orib #7,%d1
   43818:	0002 0001      	orib #1,%d2
   4381c:	0007 0002      	orib #2,%d7
   43820:	0001 0007      	orib #7,%d1
   43824:	0002 0001      	orib #1,%d2
   43828:	0007 0002      	orib #2,%d7
   4382c:	0009           	.short 0x0009
   4382e:	000f           	.short 0x000f
   43830:	0002 0001      	orib #1,%d2
   43834:	000f           	.short 0x000f
   43836:	0002 0009      	orib #9,%d2
   4383a:	001f 0042      	orib #66,%sp@+
   4383e:	0019 007f      	orib #127,%a1@+
   43842:	018a 0039      	movepw %d0,%a2@(57)
   43846:	01ff           	.short 0x01ff
   43848:	0672 00f1 07f7 	addiw #241,@(b820781)@(f870002)
   4384e:	0b82 0781 0f87 
   43854:	0002 
   43856:	0001 0007      	orib #7,%d1
   4385a:	0002 0001      	orib #1,%d2
   4385e:	0007 0002      	orib #2,%d7
   43862:	0001 0007      	orib #7,%d1
   43866:	0002 0001      	orib #1,%d2
   4386a:	0007 0002      	orib #2,%d7
   4386e:	0001 0007      	orib #7,%d1
   43872:	0002 0019      	orib #25,%d2
   43876:	001f 0012      	orib #18,%sp@+
   4387a:	0021 003f      	orib #63,%a1@-
   4387e:	0042 0389      	oriw #905,%d2
   43882:	03ff           	.short 0x03ff
   43884:	019a           	bclr %d0,%a2@+
   43886:	0079 03ff 0002 	oriw #1023,0x20001
   4388c:	0001 
   4388e:	0007 0002      	orib #2,%d7
   43892:	0001 0007      	orib #7,%d1
   43896:	0002 0001      	orib #1,%d2
   4389a:	0007 0002      	orib #2,%d7
   4389e:	0001 0007      	orib #7,%d1
   438a2:	0002 0001      	orib #1,%d2
   438a6:	0007 0002      	orib #2,%d7
   438aa:	0001 0007      	orib #7,%d1
   438ae:	0002 0001      	orib #1,%d2
   438b2:	0007 001a      	orib #26,%d7
   438b6:	0019 003f      	orib #63,%a1@+
   438ba:	000a           	.short 0x000a
   438bc:	0001 001f      	orib #31,%d1
   438c0:	0002 0001      	orib #1,%d2
   438c4:	000f           	.short 0x000f
   438c6:	0002 0001      	orib #1,%d2
   438ca:	0007 0002      	orib #2,%d7
   438ce:	0001 0007      	orib #7,%d1
   438d2:	0002 0001      	orib #1,%d2
   438d6:	0007 0002      	orib #2,%d7
   438da:	0001 0007      	orib #7,%d1
   438de:	0002 0001      	orib #1,%d2
   438e2:	0007 0000      	orib #0,%d7
   438e6:	0003 0007      	orib #7,%d3
   438ea:	0004 0003      	orib #3,%d4
   438ee:	000f           	.short 0x000f
   438f0:	0004 0003      	orib #3,%d4
   438f4:	000f           	.short 0x000f
   438f6:	0000 000b      	orib #11,%d0
   438fa:	000f           	.short 0x000f
   438fc:	0010 0004      	orib #4,%a0@
   43900:	001f 0029      	orib #41,%sp@+
   43904:	0004 003f      	orib #63,%d4
   43908:	0009           	.short 0x0009
   4390a:	0005 003f      	orib #63,%d5
   4390e:	0055 0009      	oriw #9,%a5@
   43912:	007f           	.short 0x007f
   43914:	0029 001b 007f 	orib #27,%a1@(127)
   4391a:	0095 0033 00f7 	oril #3342583,%a5@
   43920:	0062 0026      	oriw #38,%a2@-
   43924:	00ee           	.short 0x00ee
   43926:	0122           	btst %d0,%a2@-
   43928:	0066 01ee      	oriw #494,%fp@-
   4392c:	024a           	.short 0x024a
   4392e:	00c6           	bitrev %d6
   43930:	03ce 0244      	movepl %d1,%fp@(580)
   43934:	00cc           	.short 0x00cc
   43936:	03dc           	bset %d1,%a4@+
   43938:	0084 018c 039c 	oril #25953180,%d4
   4393e:	0494 018c 07bc 	subil #25954236,%a4@
   43944:	0308 0118      	movepw %a0@(280),%d1
   43948:	0738 0928      	btst %d3,0x928
   4394c:	0318           	btst %d1,%a0@+
   4394e:	0f38 0628      	btst %d7,0x628
   43952:	0218 0e78      	andib #120,%a0@+
   43956:	1210           	moveb %a0@,%d1
   43958:	0630 1e70 0c50 	addib #112,%a0@(50,%d0:l:4)
   4395e:	0430 1cf0 2460 	subib #-16,%a0@(60,%d2:w:4)
   43964:	0c20 3ce0      	cmpib #-32,%a0@-
   43968:	1420           	moveb %a0@-,%d2
   4396a:	0c60 3ce0      	cmpiw #15584,%a0@-
   4396e:	58a0           	addql #4,%a0@-
   43970:	0860 79e0      	bchg #-32,%a0@-
   43974:	2840           	moveal %d0,%a4
   43976:	18c0           	moveb %d0,%a4@+
   43978:	79c0           	mvzw %d0,%d4
   4397a:	3140 10c0      	movew %d0,%a0@(4288)
   4397e:	73c0           	mvzw %d0,%d1
   43980:	9180           	subxl %d0,%d0
   43982:	3080           	movew %d0,%a0@
   43984:	f380           	.short 0xf380
   43986:	5080           	addql #8,%d0
   43988:	3180 f380      	movew %d0,@(0,%sp:w:2)
   4398c:	6280           	bhis 0x4390e
   4398e:	2180 e780      	movel %d0,@(0,%fp:w:8)
   43992:	a300           	.short 0xa300
   43994:	6100 e700      	bsrw 0x42096
   43998:	c500           	abcd %d0,%d2
   4399a:	4300           	chkl %d0,%d1
   4399c:	cf00           	abcd %d0,%d7
   4399e:	c600           	andb %d0,%d3
   439a0:	4200           	clrb %d0
   439a2:	ce00           	andb %d0,%d7
   439a4:	4200           	clrb %d0
   439a6:	c600           	andb %d0,%d3
   439a8:	ce00           	andb %d0,%d7
   439aa:	8a00           	orb %d0,%d5
   439ac:	8600           	orb %d0,%d3
   439ae:	9e00           	subb %d0,%d7
   439b0:	8c00           	orb %d0,%d6
   439b2:	8400           	orb %d0,%d2
   439b4:	9c00           	subb %d0,%d6
   439b6:	9400           	subb %d0,%d2
   439b8:	8c00           	orb %d0,%d6
   439ba:	bc00           	cmpb %d0,%d6
   439bc:	1800           	moveb %d0,%d4
   439be:	0800 3800      	btst #0,%d0
   439c2:	0800 1800      	btst #0,%d0
   439c6:	3800           	movew %d0,%d4
   439c8:	3000           	movew %d0,%d0
   439ca:	1000           	moveb %d0,%d0
   439cc:	7000           	moveq #0,%d0
   439ce:	3000           	movew %d0,%d0
   439d0:	1000           	moveb %d0,%d0
   439d2:	7000           	moveq #0,%d0
   439d4:	5000           	addqb #8,%d0
   439d6:	3000           	movew %d0,%d0
   439d8:	f000 6000      	pmove %d0,%psr
   439dc:	2000           	movel %d0,%d0
   439de:	e000           	asrb #8,%d0
   439e0:	a000 6000      	macw %d0l,%d0l
   439e4:	e000           	asrb #8,%d0
   439e6:	c000           	andb %d0,%d0
   439e8:	4000           	negxb %d0
   439ea:	c000           	andb %d0,%d0
   439ec:	c000           	andb %d0,%d0
   439ee:	4000           	negxb %d0
   439f0:	c000           	andb %d0,%d0
   439f2:	8000           	orb %d0,%d0
   439f4:	8000           	orb %d0,%d0
   439f6:	8000           	orb %d0,%d0
   439f8:	8000           	orb %d0,%d0
   439fa:	8000           	orb %d0,%d0
   439fc:	8000           	orb %d0,%d0
   439fe:	0001 0000      	orib #0,%d1
   43a02:	0001 0001      	orib #1,%d1
   43a06:	0000 0001      	orib #1,%d0
   43a0a:	0000 0000      	orib #0,%d0
   43a0e:	0001 0002      	orib #2,%d1
   43a12:	0001 0003      	orib #3,%d1
   43a16:	e002           	asrb #8,%d2
   43a18:	e000           	asrb #8,%d0
   43a1a:	0002 f800      	orib #0,%d2
   43a1e:	f802 0002      	tblub %d2,%d2,%d0
   43a22:	fc02 7c02      	cp0ldb %d2,%d7,#7,#2
   43a26:	8002           	orb %d2,%d0
   43a28:	3e02           	movew %d2,%d7
   43a2a:	fe02 e202      	cp1ldb %d2,%fp,#2,#2
   43a2e:	af7f           	.short 0xaf7f
   43a30:	7f7e           	.short 0x7f7e
   43a32:	d10f           	addxb %sp@-,%a0@-
   43a34:	7bf3 efff 9d0f 	mvzw @(ffffffff9d0fee7f)@(ffffffffe3ff7d80),%d5
   43a3a:	ee7f e3ff 7d80 
   43a40:	fea9 f69f 7967 	cp1ldl %a1@(31079),%sp,#4,#159
   43a46:	f878           	.short 0xf878
   43a48:	fc0f fff7      	cp0ldb %sp,%sp,#8,#503
   43a4c:	fddc           	.short 0xfddc
   43a4e:	fccc           	.short 0xfccc
   43a50:	fbf7           	.short 0xfbf7
   43a52:	7fcf           	mvzw %sp,%d7
   43a54:	ffc7           	.short 0xffc7
   43a56:	07fb           	.short 0x07fb
   43a58:	e7f7 dfb7 3bfb 	rolw @(3bfbef7b)@(ffffffffdf7b3cfd,%a5:l:8)
   43a5e:	ef7b df7b 3cfd 
   43a64:	e6f3 5f8e bffd 	rorw @(0)@(ffffffffffffbffd,%d5:l:8)
   43a6a:	c2c5           	muluw %d5,%d1
   43a6c:	3fc5           	.short 0x3fc5
   43a6e:	ff7e           	.short 0xff7e
   43a70:	637a           	blss 0x43aec
   43a72:	3fd2           	.short 0x3fd2
   43a74:	dfff           	.short 0xdfff
   43a76:	a3fc           	.short 0xa3fc
   43a78:	7ffd           	.short 0x7ffd
   43a7a:	df7f           	.short 0xdf7f
   43a7c:	6b7c           	bmis 0x43afa
   43a7e:	17fd           	.short 0x17fd
   43a80:	ffff           	.short 0xffff
   43a82:	3b7f           	.short 0x3b7f
   43a84:	17fd           	.short 0x17fd
   43a86:	efbf           	roll %d7,%d7
   43a88:	cf7f           	.short 0xcf7f
   43a8a:	c7ff           	.short 0xc7ff
   43a8c:	ffbf           	.short 0xffbf
   43a8e:	ffff           	.short 0xffff
   43a90:	f7ff           	.short 0xf7ff
   43a92:	efbf           	roll %d7,%d7
   43a94:	feff           	.short 0xfeff
   43a96:	f7ff           	.short 0xf7ff
   43a98:	efbf           	roll %d7,%d7
   43a9a:	fd7e           	.short 0xfd7e
   43a9c:	ef7e           	rolw %d7,%d6
   43a9e:	ffff           	.short 0xffff
   43aa0:	d37d           	.short 0xd37d
   43aa2:	fb2c edf7      	wddatab %a4@(-4617)
   43aa6:	f389           	.short 0xf389
   43aa8:	f088 cff7      	pbws 0x40aa1
   43aac:	eaeb           	.short 0xeaeb
   43aae:	fa1d           	.short 0xfa1d
   43ab0:	ddf7 6eff      	addal %sp@(ffffffffffffffff,%d6:l:8),%fp
   43ab4:	fefe           	.short 0xfefe
   43ab6:	dff7 7fef ff6f 	addal @(ffffffffffffff6f)@(ffffffff8df7ff9e),%sp
   43abc:	8df7 ff9e 
   43ac0:	ff9e 2de7      	cp1stl %d2,%fp@+,#7,#487
   43ac4:	fbb8 f9b9      	wddatal 0xfffff9b9
   43ac8:	67cf           	beqs 0x43a99
   43aca:	59f1 f9ef f61f 	svs @(fffffffffffff61f)@(ffffffffdca2fcdf)
   43ad0:	dca2 fcdf 
   43ad4:	fb3f           	.short 0xfb3f
   43ad6:	ae71           	.short 0xae71
   43ad8:	f74f           	.short 0xf74f
   43ada:	f9bf           	.short 0xf9bf
   43adc:	57e7           	seq %sp@-
   43ade:	dfff           	.short 0xdfff
   43ae0:	ec1f           	rorb #6,%d7
   43ae2:	8dff           	.short 0x8dff
   43ae4:	bdff           	.short 0xbdff
   43ae6:	fd77           	.short 0xfd77
   43ae8:	d67f           	.short 0xd67f
   43aea:	3f3b eff7 e67b 	movew %zpc@(ffffffffe67bcf7a)@(ffffffffffa7f67f),%sp@-
   43af0:	cf7a ffa7 f67f 
   43af6:	ff7e           	.short 0xff7e
   43af8:	efaf           	lsll %d7,%d7
   43afa:	f67f           	.short 0xf67f
   43afc:	df7e           	.short 0xdf7e
   43afe:	efaf           	lsll %d7,%d7
   43b00:	b62f 9f22      	cmpb %sp@(-24798),%d3
   43b04:	efdf           	.short 0xefdf
   43b06:	fe2f 3f22 efdf 	cp1ldb %sp@(-4129),%d3,#8,#290
   43b0c:	2d27           	movel %sp@-,%fp@-
   43b0e:	fda1 dddf      	cp0stl %a5,%a1@-,#7,#479
   43b12:	9915           	subb %d4,%a5@
   43b14:	f993           	.short 0xf993
   43b16:	f9ef           	.short 0xf9ef
   43b18:	7096           	moveq #-106,%d0
   43b1a:	f0d1           	.short 0xf0d1
   43b1c:	90ef e06f      	subaw %sp@(-8081),%a0
   43b20:	e07e           	rorw %d0,%d6
   43b22:	a013           	.short 0xa013
   43b24:	803f           	.short 0x803f
   43b26:	803f           	.short 0x803f
   43b28:	0000 000f      	orib #15,%d0
   43b2c:	000f           	.short 0x000f
   43b2e:	0080 0000 0080 	oril #128,%d0
   43b34:	0180           	bclr %d0,%d0
   43b36:	0100           	btst %d0,%d0
   43b38:	0180           	bclr %d0,%d0
   43b3a:	0380           	bclr %d1,%d0
   43b3c:	0200 0300      	andib #0,%d0
   43b40:	0700           	btst %d3,%d0
   43b42:	0200 0700      	andib #0,%d0
   43b46:	0f00           	btst %d7,%d0
   43b48:	0200 0700      	andib #0,%d0
   43b4c:	0f00           	btst %d7,%d0
   43b4e:	0a00 0700      	eorib #0,%d0
   43b52:	1f00           	moveb %d0,%sp@-
   43b54:	1c00           	moveb %d0,%d6
   43b56:	0600 3e00      	addib #0,%d0
   43b5a:	1400           	moveb %d0,%d2
   43b5c:	0e00           	.short 0x0e00
   43b5e:	3e00           	movew %d0,%d7
   43b60:	3400           	movew %d0,%d2
   43b62:	0e00           	.short 0x0e00
   43b64:	7e00           	moveq #0,%d7
   43b66:	2400           	movel %d0,%d2
   43b68:	1e00           	moveb %d0,%d7
   43b6a:	7e00           	moveq #0,%d7
   43b6c:	7400           	moveq #0,%d2
   43b6e:	0e00           	.short 0x0e00
   43b70:	7e01           	moveq #1,%d7
   43b72:	6400 1e00      	bccw 0x45974
   43b76:	fe03 4400      	cp1ldb %d3,%d4,#3,#0
   43b7a:	3e00           	movew %d0,%d7
   43b7c:	fe03 0c01      	cp1ldb %d3,%d0,#7,#1
   43b80:	7e00           	moveq #0,%d7
   43b82:	fe07 e403      	cp1ldb %d7,%fp,#3,#3
   43b86:	1e00           	moveb %d0,%d7
   43b88:	fe07 ee03      	cp1ldb %d7,%fp,#8,#3
   43b8c:	1f00           	moveb %d0,%sp@-
   43b8e:	ff07 e602      	cp1stb %fp,%d7,#4,#2
   43b92:	1f01           	moveb %d1,%sp@-
   43b94:	ff0f ee02      	cp1stb %fp,%sp,#8,#2
   43b98:	1f01           	moveb %d1,%sp@-
   43b9a:	ff0f c703      	cp1stb %a4,%sp,#4,#259
   43b9e:	3f80 ff8f 6f03 	movew %d0,@(0)@(6f031f82,%sp:l:8)
   43ba4:	1f82 
   43ba6:	ff8f 4fdf      	cp1stl %d4,%sp,#8,#479
   43baa:	3fef           	.short 0x3fef
   43bac:	ffff           	.short 0xffff
   43bae:	4c61           	.short 0x4c61
   43bb0:	3fcf           	.short 0x3fcf
   43bb2:	ffff           	.short 0xffff
   43bb4:	5861           	addqw #4,%a1@-
   43bb6:	37ce           	.short 0x37ce
   43bb8:	ffff           	.short 0xffff
   43bba:	6c45           	bges 0x43c01
   43bbc:	61ea           	bsrs 0x43ba8
   43bbe:	ffff           	.short 0xffff
   43bc0:	0840 84ea      	bchg #-22,%d0
   43bc4:	ffff           	.short 0xffff
   43bc6:	09fe           	.short 0x09fe
   43bc8:	07fe           	.short 0x07fe
   43bca:	ffff           	.short 0xffff
   43bcc:	0fcf 073f      	movepl %d7,%sp@(1855)
   43bd0:	ffff           	.short 0xffff
   43bd2:	0dcf 8e3f      	movepl %d6,%sp@(-29121)
   43bd6:	ffff           	.short 0xffff
   43bd8:	8387 f87f      	unpk %d7,%d1,#-1921
   43bdc:	ffff           	.short 0xffff
   43bde:	070f e0ff      	movepw %sp@(-7937),%d3
   43be2:	ffff           	.short 0xffff
   43be4:	0f3e           	.short 0x0f3e
   43be6:	00ff           	.short 0x00ff
   43be8:	ffff           	.short 0xffff
   43bea:	0e7c           	.short 0x0e7c
   43bec:	01fb           	.short 0x01fb
   43bee:	ffff           	.short 0xffff
   43bf0:	9e74 01f3 ffff 	subw @(ffffffffffffdec5)@(1d3ffdf),%d7
   43bf6:	dec5 01d3 ffdf 
   43bfc:	dd84           	addxl %d4,%d6
   43bfe:	8393           	orl %d1,%a3@
   43c00:	ff9f f984      	cp1stl %sp,%sp@+,#5,#388
   43c04:	8793           	orl %d3,%a3@
   43c06:	ff9f f704      	cp1stl %sp,%sp@+,#4,#260
   43c0a:	cf13           	andb %d7,%a3@
   43c0c:	ff1f ef04      	cp1stb %fp,%sp@+,#8,#260
   43c10:	df13           	addb %d7,%a3@
   43c12:	ff1f ed05      	cp1stb %fp,%sp@+,#7,#261
   43c16:	df13           	addb %d7,%a3@
   43c18:	ff1f fa0d      	cp1stb %sp,%sp@+,#6,#13
   43c1c:	fe03 fe1f      	cp1ldb %d3,%sp,#8,#31
   43c20:	da0d           	.short 0xda0d
   43c22:	e603           	asrb #3,%d3
   43c24:	fe1f d209      	cp1ldb %sp@+,%a5,#2,#9
   43c28:	ce27           	andb %sp@-,%d7
   43c2a:	fe3f           	.short 0xfe3f
   43c2c:	f409           	cinvl nc,%a1@
   43c2e:	cc27           	andb %sp@-,%d6
   43c30:	fc3f           	.short 0xfc3f
   43c32:	f40a           	cinvl nc,%a2@
   43c34:	cc26           	andb %fp@-,%d6
   43c36:	fc3e           	.short 0xfc3e
   43c38:	e81a           	rorb #4,%d2
   43c3a:	d806           	addb %d6,%d4
   43c3c:	f83e           	.short 0xf83e
   43c3e:	e816           	roxrb #4,%d6
   43c40:	d80e           	.short 0xd80e
   43c42:	f83e           	.short 0xf83e
   43c44:	d034 b00c      	addb %a4@(c,%a3:w),%d0
   43c48:	f07c           	.short 0xf07c
   43c4a:	a024           	.short 0xa024
   43c4c:	e01c           	rorb #8,%d4
   43c4e:	e07c           	rorw %d0,%d4
   43c50:	a028           	.short 0xa028
   43c52:	e098           	rorl #8,%d0
   43c54:	e0f8 c048      	asrw 0xffffc048
   43c58:	c038 c0f8      	andb 0xffffc0f8,%d0
   43c5c:	8050           	orw %a0@,%d0
   43c5e:	8130 81f0 80a0 	orb %d0,@(ffffffff80a08060)
   43c64:	8060 
   43c66:	81e0           	divsw %a0@-,%d0
   43c68:	81a0           	orl %d0,%a0@-
   43c6a:	8060           	orw %a0@-,%d0
   43c6c:	83e0           	divsw %a0@-,%d1
   43c6e:	8140 80c0      	pack %d0,%d0,#-32576
   43c72:	83c0           	divsw %d0,%d1
   43c74:	8280           	orl %d0,%d1
   43c76:	8180 8780      	unpk %d0,%d0,#-30848
   43c7a:	8480           	orl %d0,%d2
   43c7c:	8381 8f81      	unpk %d1,%d1,#-28799
   43c80:	9500           	subxb %d0,%d2
   43c82:	8300           	sbcd %d0,%d1
   43c84:	9f01           	subxb %d1,%d7
   43c86:	8a00           	orb %d0,%d5
   43c88:	8602           	orb %d2,%d3
   43c8a:	9e03           	subb %d3,%d7
   43c8c:	8401           	orb %d1,%d2
   43c8e:	ac00 bc03      	macl %d0,%d6
   43c92:	9402           	subb %d2,%d2
   43c94:	cc01           	andb %d1,%d6
   43c96:	fc07 a803      	cp0ldb %d7,%a2,#5,#3
   43c9a:	9809           	.short 0x9809
   43c9c:	f80f           	.short 0xf80f
   43c9e:	d017           	addb %sp@,%d0
   43ca0:	b013           	cmpb %a3@,%d0
   43ca2:	f01f           	.short 0xf01f
   43ca4:	a00e e006      	macw %a6l,%d0l
   43ca8:	e01e           	rorb #8,%d6
   43caa:	c014           	andb %a4@,%d0
   43cac:	c00c           	.short 0xc00c
   43cae:	c03c 8028      	andb #40,%d0
   43cb2:	8018           	orb %a0@+,%d0
   43cb4:	8078 8040      	orw 0xffff8040,%d0
   43cb8:	8030 80f0      	orb %a0@(fffffffffffffff0,%a0:w),%d0
   43cbc:	80a0           	orl %a0@-,%d0
   43cbe:	8060           	orw %a0@-,%d0
   43cc0:	81e0           	divsw %a0@-,%d0
   43cc2:	81c0           	divsw %d0,%d0
   43cc4:	80c0           	divuw %d0,%d0
   43cc6:	83c0           	divsw %d0,%d1
   43cc8:	8380 8980      	unpk %d0,%d1,#-30336
   43ccc:	8f80 8600      	unpk %d0,%d7,#-31232
   43cd0:	9200           	subb %d0,%d1
   43cd2:	9e01           	subb %d1,%d7
   43cd4:	9c00           	subb %d0,%d6
   43cd6:	cc01           	andb %d1,%d6
   43cd8:	fc03 f002      	cp0ldb %d3,%sp,#1,#2
   43cdc:	9001           	subb %d1,%d0
   43cde:	f007           	.short 0xf007
   43ce0:	8005           	orb %d5,%d0
   43ce2:	8003           	orb %d3,%d0
   43ce4:	800f           	.short 0x800f
   43ce6:	8002           	orb %d2,%d0
   43ce8:	800e           	.short 0x800e
   43cea:	801e           	orb %fp@+,%d0
   43cec:	802c 801c      	orb %a4@(-32740),%d0
   43cf0:	807c 8050      	orw #-32688,%d0
   43cf4:	8130 81f0 8000 	orb %d0,@(ffffffff8000c000)
   43cfa:	c000 
   43cfc:	c000           	andb %d0,%d0
   43cfe:	8000           	orb %d0,%d0
   43d00:	f800           	.short 0xf800
   43d02:	f800           	.short 0xf800
   43d04:	c0c0           	muluw %d0,%d0
   43d06:	bfc0           	cmpal %d0,%sp
   43d08:	ffc0           	.short 0xffc0
   43d0a:	b807           	cmpb %d7,%d4
   43d0c:	87f8 ffff      	divsw 0xffffffff,%d3
   43d10:	8f03           	sbcd %d3,%d7
   43d12:	80fc bfff      	divuw #-16385,%d0
   43d16:	01e0           	bset %d0,%a0@-
   43d18:	801f           	orb %sp@+,%d0
   43d1a:	8fff           	.short 0x8fff
   43d1c:	007c 8003      	oriw #-32765,%sr
   43d20:	81ff           	.short 0x81ff
   43d22:	400f           	.short 0x400f
   43d24:	c000           	andb %d0,%d0
   43d26:	c07f           	.short 0xc07f
   43d28:	0001 c000      	orib #0,%d1
   43d2c:	c00f           	.short 0xc00f
   43d2e:	8000           	orb %d0,%d0
   43d30:	c000           	andb %d0,%d0
   43d32:	c003           	andb %d3,%d0
   43d34:	8000           	orb %d0,%d0
   43d36:	4000           	negxb %d0
   43d38:	c007           	andb %d7,%d0
   43d3a:	8010           	orb %a0@,%d0
   43d3c:	c000           	andb %d0,%d0
   43d3e:	c01f           	andb %sp@+,%d0
   43d40:	8003           	orb %d3,%d0
   43d42:	8000           	orb %d0,%d0
   43d44:	803f           	.short 0x803f
   43d46:	8086           	orl %d6,%d0
   43d48:	8001           	orb %d1,%d0
   43d4a:	80ff           	.short 0x80ff
   43d4c:	000d           	.short 0x000d
   43d4e:	0003 01ff      	orib #-1,%d3
   43d52:	003a           	.short 0x003a
   43d54:	0006 03fe      	orib #-2,%d6
   43d58:	1068           	.short 0x1068
   43d5a:	0018 1ff8      	orib #-8,%a0@+
   43d5e:	41d0           	lea %a0@,%a0
   43d60:	0030 7ff0 0f40 	orib #-16,%a0@(0)
   43d66:	00c0           	bitrev %d0
   43d68:	7fc0           	mvzw %d0,%d7
   43d6a:	5fe0           	sle %a0@-
   43d6c:	01e0           	bset %d0,%a0@-
   43d6e:	7fe0           	mvzw %a0@-,%d7
   43d70:	1378 00f8 3ff8 	moveb 0xf8,%a1@(16376)
   43d76:	14de           	moveb %fp@+,%a2@+
   43d78:	0c3e 7ffe      	cmpib #-2,%d6
   43d7c:	0b2f 071f      	btst %d5,%sp@(1823)
   43d80:	7fff           	.short 0x7fff
   43d82:	059b           	bclr %d2,%a3@+
   43d84:	0387           	bclr %d1,%d7
   43d86:	3fbf           	.short 0x3fbf
   43d88:	02c6           	byterev %d6
   43d8a:	01c1           	bset %d0,%d1
   43d8c:	07cf 0171      	movepl %d3,%sp@(369)
   43d90:	00f0           	.short 0x00f0
   43d92:	03f3 00b8      	bset %d1,%a3@(ffffffffffffffb8,%d0:w)
   43d96:	0078 01f9 002c 	oriw #505,0x2c
   43d9c:	001c 007c      	orib #124,%a4@+
   43da0:	0017 000f      	orib #15,%sp@
   43da4:	003f           	.short 0x003f
   43da6:	000b           	.short 0x000b
   43da8:	0007 001f      	orib #31,%d7
   43dac:	0006 0001      	orib #1,%d6
   43db0:	000f           	.short 0x000f
   43db2:	0001 0000      	orib #0,%d1
   43db6:	0003 0000      	orib #0,%d3
   43dba:	0000 0001      	orib #1,%d0
   43dbe:	07e0           	bset %d3,%a0@-
   43dc0:	0000 07e0      	orib #-32,%d0
   43dc4:	18a0           	moveb %a0@-,%a4@
   43dc6:	0060 1fff      	oriw #8191,%a0@-
   43dca:	2140 00c0      	movel %d0,%a0@(192)
   43dce:	3fff           	.short 0x3fff
   43dd0:	4486           	negl %d6
   43dd2:	0380           	bclr %d1,%d0
   43dd4:	7fff           	.short 0x7fff
   43dd6:	491f           	chkl %sp@+,%d4
   43dd8:	0700           	btst %d3,%d0
   43dda:	7fff           	.short 0x7fff
   43ddc:	a63e           	.short 0xa63e
   43dde:	1e01           	moveb %d1,%d7
   43de0:	ffff           	.short 0xffff
   43de2:	4270 220f      	clrw %a0@(f,%d2:w:2)
   43de6:	e3ff           	.short 0xe3ff
   43de8:	1c47           	.short 0x1c47
   43dea:	5e39 dbff 3e82 	addqb #7,0xdbff3e82
   43df0:	bc12           	cmpb %a2@,%d6
   43df2:	a79f           	.short 0xa79f
   43df4:	7d6c 7c64      	mvsw %a4@(31844),%d6
   43df8:	470f           	.short 0x470f
   43dfa:	b4e8 f4ef      	cmpaw %a0@(-2833),%a2
   43dfe:	ce8f           	.short 0xce8f
   43e00:	f6f7           	.short 0xf6f7
   43e02:	f4f7           	cpushp bc,%sp@
   43e04:	8e87           	orl %d7,%d7
   43e06:	dd58           	addw %d6,%a0@+
   43e08:	f5f8           	.short 0xf5f8
   43e0a:	8da0           	orl %d6,%a0@-
   43e0c:	f55d           	.short 0xf55d
   43e0e:	f5fd           	.short 0xf5fd
   43e10:	ad89           	movel %mask,%a1
   43e12:	f57b           	.short 0xf57b
   43e14:	f5ff           	.short 0xf5ff
   43e16:	9d9c           	subl %d6,%a4@+
   43e18:	ef3b           	rolb %d7,%d3
   43e1a:	f77f           	.short 0xf77f
   43e1c:	1fbc ef7d ff7d 	moveb #125,%sp@(1fbe6f75)@(0)
   43e22:	1fbe 6f75 
   43e26:	ef7c           	rolw %d7,%d4
   43e28:	dfbf           	.short 0xdfbf
   43e2a:	9fe9 f77c      	subal %a1@(-2180),%sp
   43e2e:	cfbf           	.short 0xcfbf
   43e30:	3cf9 fbfb c7ba 	movew 0xfbfbc7ba,%fp@+
   43e36:	5ace 3fff      	dbpl %d6,0x47e37
   43e3a:	f73f           	.short 0xf73f
   43e3c:	99e3           	subal %a3@-,%a4
   43e3e:	bfff           	.short 0xbfff
   43e40:	f61f 92d9 3a3f 	move16 0x92d93a3f,%sp@
   43e46:	fdef           	.short 0xfdef
   43e48:	c4f2 f41f      	muluw %a2@(1f,%sp:w:4),%d2
   43e4c:	fbef           	.short 0xfbef
   43e4e:	84ce           	.short 0x84ce
   43e50:	f433           	cpushp nc,%a3@
   43e52:	7bff           	.short 0x7bff
   43e54:	8d1b           	orb %d6,%a3@+
   43e56:	f8f8           	.short 0xf8f8
   43e58:	67ef           	beqs 0x43e49
   43e5a:	9e9e           	subl %fp@+,%d7
   43e5c:	fd7c           	.short 0xfd7c
   43e5e:	63ff d76e f4fe 	blsl 0xd773335e
   43e64:	6ba1           	bmis 0x43e07
   43e66:	d7f6 f3fe ed81 	addal @(ffffffffed81d7ce)@(fffffffffffff3c3),%a3
   43e6c:	d7ce f3c3 
   43e70:	edfd           	.short 0xedfd
   43e72:	97d2           	subal %a2@,%a3
   43e74:	93d3           	subal %a3@,%a1
   43e76:	0dfd           	.short 0x0dfd
   43e78:	17de           	.short 0x17de
   43e7a:	13df 0dfd 13de 	moveb %sp@+,0xdfd13de
   43e80:	19cf           	.short 0x19cf
   43e82:	eefd           	.short 0xeefd
   43e84:	7c2c           	moveq #44,%d6
   43e86:	e3cd           	.short 0xe3cd
   43e88:	dfff           	.short 0xdfff
   43e8a:	3b95 f9ff cffe 	movew %a5@,@(ffffffffcffebb9c)@(fffffffffbbeedff)
   43e90:	bb9c fbbe edff 
   43e96:	3a10           	movew %a0@,%d5
   43e98:	7a7c           	moveq #124,%d5
   43e9a:	e7ff           	.short 0xe7ff
   43e9c:	39e7           	.short 0x39e7
   43e9e:	7872           	moveq #114,%d4
   43ea0:	f7bd           	.short 0xf7bd
   43ea2:	97e3           	subal %a3@-,%a3
   43ea4:	7fb0 f87f      	mvzb %a0@(7f,%sp:l),%d7
   43ea8:	4fce           	.short 0x4fce
   43eaa:	fbe6           	.short 0xfbe6
   43eac:	ffbd           	.short 0xffbd
   43eae:	71cf           	mvzw %sp,%d0
   43eb0:	efef           	.short 0xefef
   43eb2:	ffff           	.short 0xffff
   43eb4:	8e4f           	.short 0x8e4f
   43eb6:	e7ef fbfd      	rolw %sp@(-1027)
   43eba:	2ccf           	movel %sp,%fp@+
   43ebc:	f3e7           	.short 0xf3e7
   43ebe:	ffbd           	.short 0xffbd
   43ec0:	2fc3           	.short 0x2fc3
   43ec2:	3762 fbfd      	movew %a2@-,%a3@(-1027)
   43ec6:	ef43           	aslw #7,%d3
   43ec8:	6f62           	bles 0x43f2c
   43eca:	fffd           	.short 0xfffd
   43ecc:	cf62           	andw %d7,%a2@-
   43ece:	7f72 fbbd ee7b 	mvsw @(ffffffffee7bf67b)@(0,%sp:l:2),%d7
   43ed4:	f67b 
   43ed6:	ffa4 f5d9      	cp1stl %sp,%a4@-,#3,#473
   43eda:	f479           	cpusha dc
   43edc:	fbb6 f75f f4bf 	wddatal %fp@(0)@(fffffffff4bffbf0)
   43ee2:	fbf0 
   43ee4:	1c9f           	moveb %sp@+,%fp@
   43ee6:	07ff           	.short 0x07ff
   43ee8:	fb7c           	.short 0xfb7c
   43eea:	039b           	bclr %d1,%a3@+
   43eec:	02ff           	.short 0x02ff
   43eee:	fd77           	.short 0xfd77
   43ef0:	879f           	orl %d3,%sp@+
   43ef2:	01ff           	.short 0x01ff
   43ef4:	fe67 87b7      	cp1ldw %sp@-,%a0,#4,#439
   43ef8:	00ff           	.short 0x00ff
   43efa:	ff6f cf79 88f8 	cp1stw %a4,%sp@(-30472),#8,#377
   43f00:	f70f           	.short 0xf70f
   43f02:	7fd4           	mvzw %a4@,%d7
   43f04:	cefc f13b      	muluw #-3781,%d7
   43f08:	ffea           	.short 0xffea
   43f0a:	f7ee           	.short 0xf7ee
   43f0c:	780d           	moveq #13,%d4
   43f0e:	8f87 8f87      	unpk %d7,%d7,#-28793
   43f12:	0804 0001      	btst #1,%d4
   43f16:	0001 0001      	orib #1,%d1
   43f1a:	0000 0040      	orib #64,%d0
   43f1e:	01c0           	bset %d0,%d0
   43f20:	0100           	btst %d0,%d0
   43f22:	0180           	bclr %d0,%d0
   43f24:	0780           	bclr %d3,%d0
   43f26:	0300           	btst %d1,%d0
   43f28:	0780           	bclr %d3,%d0
   43f2a:	0f80           	bclr %d7,%d0
   43f2c:	0200 0f00      	andib #0,%d0
   43f30:	1f00           	moveb %d0,%sp@-
   43f32:	3400           	movew %d0,%d2
   43f34:	0e00           	.short 0x0e00
   43f36:	3e00           	movew %d0,%d7
   43f38:	2400           	movel %d0,%d2
   43f3a:	1e00           	moveb %d0,%d7
   43f3c:	7e00           	moveq #0,%d7
   43f3e:	6800 1c00      	bvcw 0x45b40
   43f42:	fc00 4800      	cp0ldb %d0,%d4,#5,#0
   43f46:	3c00           	movew %d0,%d6
   43f48:	fc00 d800      	cp0ldb %d0,%a5,#5,#0
   43f4c:	3c00           	movew %d0,%d6
   43f4e:	fc00 9000      	cp0ldb %d0,%a1,#1,#0
   43f52:	7800           	moveq #0,%d4
   43f54:	f800           	.short 0xf800
   43f56:	9000           	subb %d0,%d0
   43f58:	7800           	moveq #0,%d4
   43f5a:	f800           	.short 0xf800
   43f5c:	b000           	cmpb %d0,%d0
   43f5e:	7000           	moveq #0,%d0
   43f60:	f003           	.short 0xf003
   43f62:	2007           	movel %d7,%d0
   43f64:	f000           	.short 0xf000
   43f66:	f01f           	.short 0xf01f
   43f68:	6019           	bras 0x43f83
   43f6a:	f007           	.short 0xf007
   43f6c:	f07f           	.short 0xf07f
   43f6e:	6033           	bras 0x43fa3
   43f70:	e00f           	lsrb #8,%d7
   43f72:	e0ff           	.short 0xe0ff
   43f74:	4067           	negxw %sp@-
   43f76:	e01f           	rorb #8,%d7
   43f78:	e1ff           	.short 0xe1ff
   43f7a:	00cc           	.short 0x00cc
   43f7c:	e03f           	rorb %d0,%d7
   43f7e:	e3ff           	.short 0xe3ff
   43f80:	c19c           	andl %d0,%a4@+
   43f82:	e07e           	rorw %d0,%d6
   43f84:	e7fe           	.short 0xe7fe
   43f86:	4338 e0fe      	chkl 0xffffe0fe,%d1
   43f8a:	effe           	.short 0xeffe
   43f8c:	c668 e1fc      	andw %a0@(-7684),%d3
   43f90:	effc           	.short 0xeffc
   43f92:	66f0           	bnes 0x43f84
   43f94:	f9fc           	.short 0xf9fc
   43f96:	fffc           	.short 0xfffc
   43f98:	eff0 7ff8 fff8 	bfins %d7,@(63e07ff8),%d7,%d0
   43f9e:	63e0 7ff8 
   43fa2:	fff8           	.short 0xfff8
   43fa4:	60f0           	bras 0x43f96
   43fa6:	e7f8 fff9      	rolw 0xfffffff9
   43faa:	40e0           	movew %sr,%a0@-
   43fac:	c178 fffb      	andw %d0,0xfffffffb
   43fb0:	fc20 fb78      	cp0ldb %a0@-,%sp,#6,#376
   43fb4:	ffff           	.short 0xffff
   43fb6:	fc27 ef7e      	cp0ldb %sp@-,%fp,#8,#382
   43fba:	ffff           	.short 0xffff
   43fbc:	cfe3           	mulsw %a3@-,%d7
   43fbe:	cfef ffff      	mulsw %sp@(-1),%d7
   43fc2:	8bab 87a5      	orl %d5,%a3@(-30811)
   43fc6:	9fff           	.short 0x9fff
   43fc8:	83b0 87bd 9fff 	orl %d1,@(ffffffff9fff8518)@(0,%a0:w:8)
   43fce:	8518 
   43fd0:	8315           	orb %d1,%a5@
   43fd2:	8fff           	.short 0x8fff
   43fd4:	8532 8319      	orb %d2,%a2@(0,%a0:w:2)@(0)
   43fd8:	8fff           	.short 0x8fff
   43fda:	85bc           	.short 0x85bc
   43fdc:	831b           	orb %d1,%a3@+
   43fde:	8fff           	.short 0x8fff
   43fe0:	853f           	.short 0x853f
   43fe2:	830f           	sbcd %sp@-,%a1@-
   43fe4:	8f7f           	.short 0x8f7f
   43fe6:	855f           	orw %d2,%sp@+
   43fe8:	830f           	sbcd %sp@-,%a1@-
   43fea:	8f7f           	.short 0x8f7f
   43fec:	851c           	orb %d2,%a4@+
   43fee:	830c           	sbcd %a4@-,%a1@-
   43ff0:	8f3f           	.short 0x8f3f
   43ff2:	0514           	btst %d2,%a4@
   43ff4:	030c 0f3f      	movepw %a4@(3903),%d1
   43ff8:	0514           	btst %d2,%a4@
   43ffa:	030c 0f3f      	movepw %a4@(3903),%d1
   43ffe:	0514           	btst %d2,%a4@
   44000:	130c           	.short 0x130c
   44002:	1f3f           	.short 0x1f3f
   44004:	0514           	btst %d2,%a4@
   44006:	130c           	.short 0x130c
   44008:	1f3d           	.short 0x1f3d
   4400a:	0514           	btst %d2,%a4@
   4400c:	130c           	.short 0x130c
   4400e:	1f3d           	.short 0x1f3d
   44010:	0514           	btst %d2,%a4@
   44012:	130c           	.short 0x130c
   44014:	1f3d           	.short 0x1f3d
   44016:	0514           	btst %d2,%a4@
   44018:	130c           	.short 0x130c
   4401a:	1f3d           	.short 0x1f3d
   4401c:	0914           	btst %d4,%a4@
   4401e:	170c           	.short 0x170c
   44020:	1f3d           	.short 0x1f3d
   44022:	0b14           	btst %d5,%a4@
   44024:	070c 1f3d      	movepw %a4@(7997),%d3
   44028:	0a15 060c      	eorib #12,%a5@
   4402c:	1e3d           	.short 0x1e3d
   4402e:	0a14 260c      	eorib #12,%a4@
   44032:	3e3c 0614      	movew #1556,%d7
   44036:	2e0c           	movel %a4,%d7
   44038:	3e3c 1411      	movew #5137,%d7
   4403c:	0c09 3c39      	cmpib #57,%d1
   44040:	1411           	moveb %a1@,%d2
   44042:	4c09           	.short 0x4c09
   44044:	7c39           	moveq #57,%d6
   44046:	2869 1818      	moveal %a1@(6168),%a4
   4404a:	7879           	moveq #121,%d4
   4404c:	2829 9818      	movel %a1@(-26600),%d4
   44050:	f879           	.short 0xf879
   44052:	1028 b018      	moveb %a0@(-20456),%d0
   44056:	f079           	.short 0xf079
   44058:	5050           	addqw #8,%a0@
   4405a:	3030 f0f1      	movew %a0@(fffffffffffffff1,%sp:w),%d0
   4405e:	a052           	.short 0xa052
   44060:	6032           	bras 0x44094
   44062:	e0f3 6122 e062 	asrw %a3@(ffffffffffffe062,%d6:w)@(ffffffffffffe1e3)
   44068:	e1e3 
   4406a:	40a1           	negxl %a1@-
   4406c:	c060           	andw %a0@-,%d0
   4406e:	c1e3           	mulsw %a3@-,%d0
   44070:	8245           	orw %d5,%d1
   44072:	80c4           	divuw %d4,%d0
   44074:	83c7           	divsw %d7,%d1
   44076:	00c5           	bitrev %d5
   44078:	01c0           	bset %d0,%d0
   4407a:	03c7           	bset %d1,%d7
   4407c:	0482 0181 0787 	subil #25233287,%d2
   44082:	010a 0309      	movepw %a2@(777),%d0
   44086:	070f 0309      	movepw %sp@(777),%d3
   4408a:	0703           	btst %d3,%d3
   4408c:	0f0f 1205      	movepw %sp@(4613),%d7
   44090:	0603 1e0f      	addib #15,%d3
   44094:	0612 0e16      	addib #22,%a2@
   44098:	1e1e           	moveb %fp@+,%d7
   4409a:	140d           	.short 0x140d
   4409c:	0c04 3c1d      	cmpib #29,%d4
   440a0:	0826 382c      	btst #44,%fp@-
   440a4:	783f           	moveq #63,%d4
   440a6:	505d           	addqw #8,%a5@+
   440a8:	3048           	moveaw %a0,%a0
   440aa:	f07f           	.short 0xf07f
   440ac:	a051           	.short 0xa051
   440ae:	6018           	bras 0x440c8
   440b0:	e07f           	rorw %d0,%d7
   440b2:	4033 c010      	negxb %a3@(10,%a4:w)
   440b6:	c073 8040      	andw %a3@(40,%a0:w),%d0
   440ba:	8020           	orb %a0@-,%d0
   440bc:	80e0           	divuw %a0@-,%d0
   440be:	0100           	btst %d0,%d0
   440c0:	0040 01c0      	oriw #448,%d0
   440c4:	0280 0000 0381 	andil #897,%d0
   440ca:	0104           	btst %d0,%d4
   440cc:	0000 0707      	orib #7,%d0
   440d0:	0620 0220      	addib #32,%a0@-
   440d4:	1e2f 1421      	moveb %sp@(5153),%d7
   440d8:	8c00           	orb %d0,%d6
   440da:	fc3f           	.short 0xfc3f
   440dc:	0003 0000      	orib #0,%d3
   440e0:	007f           	.short 0x007f
   440e2:	000e           	.short 0x000e
   440e4:	0001 00ff      	orib #-1,%d1
   440e8:	821b           	orb %a3@+,%d1
   440ea:	0007 ffff      	orib #-1,%d7
   440ee:	e077           	roxrw %d0,%d7
   440f0:	000f           	.short 0x000f
   440f2:	ffff           	.short 0xffff
   440f4:	10d2           	moveb %a2@,%a0@+
   440f6:	e03f           	rorb %d0,%d7
   440f8:	ffff           	.short 0xffff
   440fa:	01a4           	bclr %d0,%a4@-
   440fc:	c07f           	.short 0xc07f
   440fe:	ffff           	.short 0xffff
   44100:	8757           	orw %d3,%sp@
   44102:	00e7           	.short 0x00e7
   44104:	fff7           	.short 0xfff7
   44106:	0d65           	bchg %d6,%a5@-
   44108:	0303           	btst %d1,%d3
   4410a:	ffe7           	.short 0xffe7
   4410c:	3a65           	moveaw %a5@-,%a5
   4410e:	0613 fff7      	addib #-9,%a3@
   44112:	6880           	bvcs 0x44094
   44114:	1804           	moveb %d4,%d4
   44116:	ff8f d001      	cp1stl %a5,%sp,#1,#1
   4411a:	3000           	movew %d0,%d0
   4411c:	f00f           	.short 0xf00f
   4411e:	a008 6000      	macw %a0l,%d0l
   44122:	e01f           	rorb #8,%d7
   44124:	8007           	orb %d7,%d0
   44126:	8003           	orb %d3,%d0
   44128:	801f           	orb %sp@+,%d0
   4412a:	0003 0000      	orib #0,%d3
   4412e:	001f 0006      	orib #6,%sp@+
   44132:	0000 001f      	orib #31,%d0
   44136:	0002 0000      	orib #0,%d2
   4413a:	001f 0000      	orib #0,%sp@+
   4413e:	000f           	.short 0x000f
   44140:	001f 0002      	orib #2,%sp@+
   44144:	0001 001f      	orib #31,%d1
   44148:	0009           	.short 0x0009
   4414a:	0000 001f      	orib #31,%d0
   4414e:	0000 0000      	orib #0,%d0
   44152:	000f           	.short 0x000f
   44154:	0004 0000      	orib #0,%d4
   44158:	0007 0004      	orib #4,%d7
   4415c:	0000 0007      	orib #7,%d0
   44160:	c007           	andb %d7,%d0
   44162:	c007           	andb %d7,%d0
   44164:	c007           	andb %d7,%d0
   44166:	f002           	.short 0xf002
   44168:	f000           	.short 0xf000
   4416a:	f003           	.short 0xf003
   4416c:	7801           	moveq #1,%d4
   4416e:	f800           	.short 0xf800
   44170:	f801           	.short 0xf801
   44172:	dc01           	addb %d1,%d6
   44174:	3c00           	movew %d0,%d6
   44176:	fc01 2f00      	cp0ldb %d1,%d2,#8,#256
   4417a:	1f00           	moveb %d0,%sp@-
   4417c:	7f00           	mvsb %d0,%d7
   4417e:	1b80 0780      	moveb %d0,@(0,%d0:w:8)
   44182:	3f80 85c0      	movew %d0,@(0)
   44186:	83c0           	divsw %d0,%d1
   44188:	8fc0           	divsw %d0,%d7
   4418a:	c370 c0f0      	andw %d1,%a0@(fffffffffffffff0,%a4:w)
   4418e:	c7f0 70b8      	mulsw %a0@(ffffffffffffffb8,%d7:w),%d3
   44192:	f078           	.short 0xf078
   44194:	f1f8           	.short 0xf1f8
   44196:	b84c           	cmpw %a4,%d4
   44198:	783c           	moveq #60,%d4
   4419a:	f8fc           	.short 0xf8fc
   4419c:	2e16           	movel %fp@,%d7
   4419e:	1e0e           	.short 0x1e0e
   441a0:	7e3e           	moveq #62,%d7
   441a2:	170b           	.short 0x170b
   441a4:	0f07           	btst %d7,%d7
   441a6:	3f1f           	movew %sp@+,%sp@-
   441a8:	05c5           	bset %d2,%d5
   441aa:	03c3           	bset %d1,%d3
   441ac:	0fcf 02e2      	movepl %d7,%sp@(738)
   441b0:	01e1           	bset %d0,%a1@-
   441b2:	07e7           	bset %d3,%sp@-
   441b4:	00b8 0078 01f9 	oril #7864825,0x5c
   441ba:	005c 
   441bc:	003c 00fc      	orib #-4,%ccr
   441c0:	0017 000f      	orib #15,%sp@
   441c4:	003f           	.short 0x003f
   441c6:	000f           	.short 0x000f
   441c8:	0003 001f      	orib #31,%d3
   441cc:	0002 0001      	orib #1,%d2
   441d0:	0007 0000      	orib #0,%d7
   441d4:	0000 0001      	orib #1,%d0
   441d8:	c000           	andb %d0,%d0
   441da:	0000 c000      	orib #0,%d0
   441de:	1001           	moveb %d1,%d0
   441e0:	0000 f001      	orib #1,%d0
   441e4:	0800 0000      	btst #0,%d0
   441e8:	f801           	.short 0xf801
   441ea:	8c00           	orb %d0,%d6
   441ec:	0000 fc01      	orib #1,%d0
   441f0:	e602           	asrb #3,%d2
   441f2:	0000 fe03      	orib #3,%d0
   441f6:	35fc           	.short 0x35fc
   441f8:	c001           	andb %d1,%d0
   441fa:	ffff           	.short 0xffff
   441fc:	1b80 e7c3 ffff 	moveb %d0,@(0)@(ffffffffffff830a)
   44202:	830a 
   44204:	ff39           	.short 0xff39
   44206:	ffff           	.short 0xffff
   44208:	c4c2           	muluw %d2,%d2
   4420a:	fc3d           	.short 0xfc3d
   4420c:	ffff           	.short 0xffff
   4420e:	5998           	subql #4,%a0@+
   44210:	fc7f           	.short 0xfc7f
   44212:	ffff           	.short 0xffff
   44214:	f9f8           	.short 0xf9f8
   44216:	f9ff           	.short 0xf9ff
   44218:	ffff           	.short 0xffff
   4421a:	0b0f 090f      	movepw %sp@(2319),%d5
   4421e:	0f0f f4f0      	movepw %sp@(-2832),%d7
   44222:	f0f0           	.short 0xf0f0
   44224:	0400 d9ff      	subib #-1,%d0
   44228:	bdff           	.short 0xbdff
   4422a:	6500 6d9f      	bcsw 0x4afcb
   4422e:	ed3f           	rolb %d6,%d7
   44230:	f5f1           	.short 0xf5f1
   44232:	7b1f           	mvsb %sp@+,%d5
   44234:	faff           	.short 0xfaff
   44236:	f5f9           	.short 0xf5f9
   44238:	fdfd           	.short 0xfdfd
   4423a:	fdfd           	.short 0xfdfd
   4423c:	f633           	.short 0xf633
   4423e:	ff7c           	.short 0xff7c
   44240:	ff7c           	.short 0xff7c
   44242:	f7c3           	.short 0xf7c3
   44244:	ffeb           	.short 0xffeb
   44246:	7b9f           	mvzb %sp@+,%d5
   44248:	f7f7           	.short 0xf7f7
   4424a:	3b98 161f      	movew %a0@+,%a5@(1f,%d1:w:8)
   4424e:	efe7           	.short 0xefe7
   44250:	263f           	.short 0x263f
   44252:	bc27           	cmpb %sp@-,%d6
   44254:	dfdb           	addal %a3@+,%sp
   44256:	dc3d           	.short 0xdc3d
   44258:	f827           	.short 0xf827
   4425a:	bfda           	cmpal %a2@+,%sp
   4425c:	fc33           	.short 0xfc33
   4425e:	f86f           	.short 0xf86f
   44260:	bf9c           	eorl %d7,%a4@+
   44262:	f85a           	.short 0xf85a
   44264:	f057           	.short 0xf057
   44266:	9faf 78ea      	subl %d7,%sp@(30954)
   4426a:	f05f           	.short 0xf05f
   4426c:	dfb7 7fdc      	addl %d7,@(0)@(0)
   44270:	f7ce           	.short 0xf7ce
   44272:	dfb7 7fcc      	addl %d7,@(0)@(0)
   44276:	f7ce           	.short 0xf7ce
   44278:	dfb7 7ff4 f7b6 	addl %d7,@(fffffffff7b6df7f)@(0)
   4427e:	df7f 
   44280:	6f7e           	bles 0x44300
   44282:	ebfe           	.short 0xebfe
   44284:	cefd           	.short 0xcefd
   44286:	ef7e           	rolw %d7,%d6
   44288:	eb7e           	rolw %d5,%d6
   4428a:	cefd           	.short 0xcefd
   4428c:	73fe           	.short 0x73fe
   4428e:	ffbe           	.short 0xffbe
   44290:	fe7d           	.short 0xfe7d
   44292:	b4e7           	cmpaw %sp@-,%a2
   44294:	719f           	mvzb %sp@+,%d0
   44296:	ef7c           	rolw %d7,%d4
   44298:	153f           	.short 0x153f
   4429a:	54ef ebd0      	scc %sp@(-5168)
   4429e:	7704           	mvsb %d4,%d3
   442a0:	7f3f           	.short 0x7f3f
   442a2:	ddf9 7782 3fb7 	addal 0x77823fb7,%fp
   442a8:	de7d           	.short 0xde7d
   442aa:	e187           	asll #8,%d7
   442ac:	3fa2 defd      	movew %a2@-,%sp@(fffffffffffffffd,%a5:l:8)
   442b0:	e49e           	rorl #2,%d6
   442b2:	a3ce           	.short 0xa3ce
   442b4:	dffd           	.short 0xdffd
   442b6:	e4be           	rorl %d2,%d6
   442b8:	e39e           	roll #1,%d6
   442ba:	fffd           	.short 0xfffd
   442bc:	dd7e           	.short 0xdd7e
   442be:	4dde           	.short 0x4dde
   442c0:	fefd           	.short 0xfefd
   442c2:	5f6e 5fde      	subqw #7,%fp@(24542)
   442c6:	fefd           	.short 0xfefd
   442c8:	bf6d bfdd      	eorw %d7,%a5@(-16419)
   442cc:	feff           	.short 0xfeff
   442ce:	bf57           	eorw %d7,%sp@
   442d0:	becf           	cmpaw %sp,%sp
   442d2:	fdfa           	.short 0xfdfa
   442d4:	e75c           	rolw #3,%d4
   442d6:	1fcb           	.short 0x1fcb
   442d8:	fff7           	.short 0xfff7
   442da:	cb69 3fcf      	andw %d5,%a1@(16335)
   442de:	f7f6           	.short 0xf7f6
   442e0:	f68f           	.short 0xf68f
   442e2:	1f89           	.short 0x1f89
   442e4:	eff6           	.short 0xeff6
   442e6:	b6cf           	cmpaw %sp,%a3
   442e8:	ffcc           	.short 0xffcc
   442ea:	4fb3 7d0f ffcf 	chkw %a3@(0)@(ffffffffffcf1ff0,%d7:l:4),%d7
   442f0:	1ff0 
   442f2:	b3d7           	cmpal %sp@,%a1
   442f4:	fffc           	.short 0xfffc
   442f6:	0f63           	bchg %d7,%a3@-
   442f8:	ee70           	roxrw %d7,%d0
   442fa:	fcff           	.short 0xfcff
   442fc:	1fff           	.short 0x1fff
   442fe:	ffcf           	.short 0xffcf
   44300:	ffc7           	.short 0xffc7
   44302:	fe7e           	.short 0xfe7e
   44304:	7f41           	mvsw %d1,%d7
   44306:	5fc1           	sle %d1
   44308:	bcfe           	.short 0xbcfe
   4430a:	51c3           	sf %d3
   4430c:	7381           	mvzb %d1,%d1
   4430e:	bcfe           	.short 0xbcfe
   44310:	e6c3           	.short 0xe6c3
   44312:	5f81           	subql #7,%d1
   44314:	b9fe           	.short 0xb9fe
   44316:	cf63           	andw %d7,%a3@-
   44318:	ff63 315c      	cp1stw %d3,%a3@-,#1,#348
   4431c:	fe3f           	.short 0xfe3f
   4431e:	de3e           	.short 0xde3e
   44320:	2221           	movel %a1@-,%d1
   44322:	fc1f fc1f      	cp0ldb %sp@+,%sp,#7,#31
   44326:	0010 f007      	orib #7,%a0@
   4432a:	f007           	.short 0xf007
   4432c:	0006 2200      	orib #0,%d6
   44330:	0000 3e00      	orib #0,%d0
   44334:	7a00           	moveq #0,%d5
   44336:	3c00           	movew %d0,%d6
   44338:	ff80 f000      	cp1stl %sp,%d0,#1,#0
   4433c:	fc00 fc00      	cp0ldb %d0,%sp,#7,#0
   44340:	8000           	orb %d0,%d0
   44342:	e000           	asrb #8,%d0
   44344:	e000           	asrb #8,%d0
   44346:	0000 8000      	orib #0,%d0
   4434a:	8000           	orb %d0,%d0
   4434c:	0000 8000      	orib #0,%d0
   44350:	8000           	orb %d0,%d0
   44352:	0002 0001      	orib #1,%d2
   44356:	01ff           	.short 0x01ff
   44358:	01a4           	bclr %d0,%a4@-
   4435a:	007c 0ffc      	oriw #4092,%sr
   4435e:	0aa0 05e0 3fe0 	eoril #98582496,%a0@-
   44364:	3600           	movew %d0,%d3
   44366:	0f00           	btst %d7,%d0
   44368:	7f00           	mvsb %d0,%d7
   4436a:	2c00           	movel %d0,%d6
   4436c:	1e00           	moveb %d0,%d7
   4436e:	fe00 5800      	cp1ldb %d0,%d5,#5,#0
   44372:	3c00           	movew %d0,%d6
   44374:	fc00 a800      	cp0ldb %d0,%a2,#5,#0
   44378:	7800           	moveq #0,%d4
   4437a:	f800 1000      	tblub %d0,%d0,%d1
   4437e:	f000           	.short 0xf000
   44380:	f000           	.short 0xf000
   44382:	a000 e000      	macw %d0l,%d0l
   44386:	e07f           	rorw %d0,%d7
   44388:	807c c003      	orw #-16381,%d0
   4438c:	c3ff           	.short 0xc3ff
   4438e:	c0e1           	muluw %a1@-,%d0
   44390:	c01f           	andb %sp@+,%d0
   44392:	cfff           	.short 0xcfff
   44394:	41ce           	.short 0x41ce
   44396:	c03f           	.short 0xc03f
   44398:	dfff           	.short 0xdfff
   4439a:	c390           	andl %d1,%a0@
   4439c:	e07c           	rorw %d0,%d4
   4439e:	fffc           	.short 0xfffc
   443a0:	b640           	cmpw %d0,%d3
   443a2:	f1f0           	.short 0xf1f0
   443a4:	fff0           	.short 0xfff0
   443a6:	9f80           	subxl %d0,%d7
   443a8:	f9c0           	.short 0xf9c0
   443aa:	ffc0           	.short 0xffc0
   443ac:	0f00           	btst %d7,%d0
   443ae:	3b80 ff80      	movew %d0,@(0,%sp:l:8)
   443b2:	c600           	andb %d0,%d3
   443b4:	3f00           	movew %d0,%sp@-
   443b6:	ff00 c200      	cp1stb %a4,%d0,#2,#0
   443ba:	3600           	movew %d0,%d3
   443bc:	fe00 5200      	cp1ldb %d0,%d5,#2,#0
   443c0:	2600           	movel %d0,%d3
   443c2:	fe07 e207      	cp1ldb %d7,%fp,#2,#7
   443c6:	6e00 fe3f      	bgtw 0x44207
   443ca:	3e1f           	movew %sp@+,%d7
   443cc:	7f80           	mvzb %d0,%d7
   443ce:	ffff           	.short 0xffff
   443d0:	bd3c           	.short 0xbd3c
   443d2:	7f03           	mvsb %d3,%d7
   443d4:	ffff           	.short 0xffff
   443d6:	3933 798f ffff 	movew @(0)@(ffffffffffffd4e7,%d7:l),%a4@-
   443dc:	d4e7 
   443de:	339f ffff dcdc 	movew %sp@+,@(ffffffffdcdc32bf)@(ffffffffffffd8f8)
   443e4:	32bf ffff d8f8 
   443ea:	377c fffc d860 	movew #-4,%a3@(-10144)
   443f0:	37f8           	.short 0x37f8
   443f2:	fff8           	.short 0xfff8
   443f4:	5c40           	addqw #6,%d0
   443f6:	33f0 fff0 5c20 	movew @(5c2033e0),0xffe05260
   443fc:	33e0 ffe0 5260 
   44402:	30e0           	movew %a0@-,%a0@+
   44404:	ffe3           	.short 0xffe3
   44406:	57a1           	subql #3,%a1@-
   44408:	33c0 ffef 4cf1 	movew %d0,0xffef4cf1
   4440e:	2c18           	movel %a0@+,%d6
   44410:	efff           	.short 0xefff
   44412:	01b3 4070      	bclr %d0,%a3@(70,%d4:w)
   44416:	cfff           	.short 0xcfff
   44418:	803e           	.short 0x803e
   4441a:	4ff9 cfff 0078 	lea 0xcfff0078,%sp
   44420:	40f7 dfff 8030 	movew %sr,@(ffffffff8030403e)@(fffffffffffe8f9c)
   44426:	403e fffe 8f9c 
   4442c:	001c fffc      	orib #-4,%a4@+
   44430:	07d0           	bset %d3,%a0@
   44432:	8018           	orb %a0@+,%d0
   44434:	fff8           	.short 0xfff8
   44436:	01e0           	bset %d0,%a0@-
   44438:	8000           	orb %d0,%d0
   4443a:	fff0           	.short 0xfff0
   4443c:	8768 c08f      	orw %d3,%a0@(-16241)
   44440:	ffff           	.short 0xffff
   44442:	87ef 800f      	divsw %sp@(-32753),%d3
   44446:	9fff           	.short 0x9fff
   44448:	872f 80ef      	orb %d3,%sp@(-32529)
   4444c:	9fff           	.short 0x9fff
   4444e:	020c           	.short 0x020c
   44450:	018f 1fff      	movepw %d0,%sp@(8191)
   44454:	029e 010d 3fff 	andil #17645567,%fp@+
   4445a:	0ffb           	.short 0x0ffb
   4445c:	007c 7fff      	oriw #32767,%sr
   44460:	3ff4           	.short 0x3ff4
   44462:	00df           	.short 0x00df
   44464:	ffff           	.short 0xffff
   44466:	7ffe           	.short 0x7ffe
   44468:	0006 fffe      	orib #-2,%d6
   4446c:	e37f           	rolw %d1,%d7
   4446e:	1c87           	moveb %d7,%fp@
   44470:	ffff           	.short 0xffff
   44472:	fdff           	.short 0xfdff
   44474:	020f           	.short 0x020f
   44476:	ffff           	.short 0xffff
   44478:	95ff           	.short 0x95ff
   4447a:	6f1f           	bles 0x4449b
   4447c:	ffff           	.short 0xffff
   4447e:	57db           	seq %a3@+
   44480:	8fbf           	.short 0x8fbf
   44482:	ffff           	.short 0xffff
   44484:	13ff           	.short 0x13ff
   44486:	0f9f           	bclr %d7,%sp@+
   44488:	ffff           	.short 0xffff
   4448a:	1734 0f9f ffff 	moveb @(0)@(ffffffffffff373f,%d0:l:8),%a3@-
   44490:	373f 
   44492:	0f18           	btst %d7,%a0@+
   44494:	ffff           	.short 0xffff
   44496:	ee4f           	lsrw #7,%d7
   44498:	1e30 ffff b89c 	moveb @(ffffffffb89c7873)@(ffffffffffff4323),%d7
   4449e:	7873 ffff 4323 
   444a4:	e0ff           	.short 0xe0ff
   444a6:	ffff           	.short 0xffff
   444a8:	cc60           	andw %a0@-,%d6
   444aa:	c3e0           	mulsw %a0@-,%d1
   444ac:	ffe0           	.short 0xffe0
   444ae:	81c0           	divsw %d0,%d0
   444b0:	9fe0           	subal %a0@-,%sp
   444b2:	ffe0           	.short 0xffe0
   444b4:	8f90           	orl %d7,%a0@
   444b6:	7fd0           	mvzw %a0@,%d7
   444b8:	fff0           	.short 0xfff0
   444ba:	7918           	mvsb %a0@+,%d4
   444bc:	f798           	.short 0xf798
   444be:	fff8           	.short 0xfff8
   444c0:	c93c           	.short 0xc93c
   444c2:	c70c           	abcd %a4@-,%a3@-
   444c4:	fffc           	.short 0xfffc
   444c6:	1326           	moveb %fp@-,%a1@-
   444c8:	cf1e           	andb %d7,%fp@+
   444ca:	fffe           	.short 0xfffe
   444cc:	7bf2 cf8e fffe 	mvzw @(0)@(fffffffffffffffe,%a4:l:8),%d5
   444d2:	fc78           	.short 0xfc78
   444d4:	fc66 fc7e      	cp0ldw %fp@-,%sp,#7,#126
   444d8:	2f1d           	movel %a5@+,%sp@-
   444da:	df13           	addb %d7,%a3@
   444dc:	ff1f e987      	cp1stb %fp,%sp@+,#5,#391
   444e0:	1b81 ff87 dc81 	moveb %d1,@(0)@(ffffffffdc813383,%sp:l:8)
   444e6:	3383 
   444e8:	ff83 5601      	cp1stl %d5,%d3,#4,#1
   444ec:	a983           	movel %macsr,%d3
   444ee:	ff83 cdc1      	cp1stl %a4,%d3,#7,#449
   444f2:	fe41 ffc1      	cp1ldw %d1,%sp,#8,#449
   444f6:	f7c1           	.short 0xf7c1
   444f8:	7741           	mvsw %d1,%d3
   444fa:	f7c1           	.short 0xf7c1
   444fc:	60c0           	bras 0x444be
   444fe:	98c0           	subaw %d0,%a4
   44500:	f8c0           	.short 0xf8c0
   44502:	3840           	moveaw %d0,%a4
   44504:	8440           	orw %d0,%d2
   44506:	fc40 0040      	cp0ldw %d0,%d0,#1,#64
   4450a:	fc40 fc40      	cp0ldw %d0,%sp,#7,#64
   4450e:	c000           	andb %d0,%d0
   44510:	b000           	cmpb %d0,%d0
   44512:	f000 4400      	pmove %d0,%drp
   44516:	b800           	cmpb %d0,%d4
   44518:	fc00 e400      	cp0ldb %d0,%fp,#3,#0
   4451c:	5800           	addqb #4,%d0
   4451e:	fc00 fc00      	cp0ldb %d0,%sp,#7,#0
   44522:	7c00           	moveq #0,%d6
   44524:	fc00 b600      	cp0ldb %d0,%a3,#4,#0
   44528:	a800 fe00      	macl %d0,%d4,>>
   4452c:	3200           	movew %d0,%d1
   4452e:	0e00           	.short 0x0e00
   44530:	fe00 3d80      	cp1ldb %d0,%d3,#7,#384
   44534:	1400           	moveb %d0,%d2
   44536:	ff80 b880      	cp1stl %a3,%d0,#5,#128
   4453a:	1900           	moveb %d0,%a4@-
   4453c:	ff80 66e0      	cp1stl %d6,%d0,#4,#224
   44540:	2580 7fe0 7558 	movel %d0,@(7558)
   44546:	0320           	btst %d1,%a0@-
   44548:	7ff8 1976      	mvzw 0x1976,%d7
   4454c:	0110           	btst %d0,%a0@
   4454e:	1fff           	.short 0x1fff
   44550:	0e56           	.short 0x0e56
   44552:	0232 0fff 01d1 	andib #-1,@(0)@(0)
   44558:	0013 01ff      	orib #-1,%a3@
   4455c:	003f           	.short 0x003f
   4455e:	0011 003f      	orib #63,%a1@
   44562:	8000           	orb %d0,%d0
   44564:	8000           	orb %d0,%d0
   44566:	8000           	orb %d0,%d0
   44568:	c000           	andb %d0,%d0
   4456a:	c000           	andb %d0,%d0
   4456c:	c000           	andb %d0,%d0
   4456e:	6000 e000      	braw 0x42570
   44572:	e000           	asrb #8,%d0
   44574:	b000           	cmpb %d0,%d0
   44576:	7000           	moveq #0,%d0
   44578:	f000 5800      	pmove %d0,%scc
   4457c:	3800           	movew %d0,%d4
   4457e:	f800 2c00      	tblsnb %d0,%d0,%d2
   44582:	1c00           	moveb %d0,%d6
   44584:	7c00           	moveq #0,%d6
   44586:	d600           	addb %d0,%d3
   44588:	ce00           	andb %d0,%d7
   4458a:	fe00 eb00      	cp1ldb %d0,%fp,#6,#256
   4458e:	e700           	aslb #3,%d0
   44590:	ff00 b580      	cp1stb %a3,%d0,#3,#384
   44594:	7380           	mvzb %d0,%d1
   44596:	ff80 6ac0      	cp1stl %d6,%d0,#6,#192
   4459a:	19c0           	.short 0x19c0
   4459c:	ffc0           	.short 0xffc0
   4459e:	1d60 04e0      	moveb %a0@-,%fp@(1248)
   445a2:	3fe0           	.short 0x3fe0
   445a4:	06a0 01e0 0fe0 	addil #31461344,%a0@-
   445aa:	12e0           	moveb %a0@-,%a1@+
   445ac:	01e0           	bset %d0,%a0@-
   445ae:	1fe0           	.short 0x1fe0
   445b0:	0260 0de0      	andiw #3552,%a0@-
   445b4:	1fe0           	.short 0x1fe0
   445b6:	0bc0           	bset %d5,%d0
   445b8:	0640 1fc0      	addiw #8128,%d0
   445bc:	25c0           	.short 0x25c0
   445be:	03c0           	bset %d1,%d0
   445c0:	3fc0           	.short 0x3fc0
   445c2:	1680           	moveb %d0,%a3@
   445c4:	0180           	bclr %d0,%d0
   445c6:	3f80 1380      	movew %d0,@(0,%d1:w:2)
   445ca:	1080           	moveb %d0,%a0@
   445cc:	3f80 1680      	movew %d0,%sp@(ffffffffffffff80,%d1:w:8)
   445d0:	0f80           	bclr %d7,%d0
   445d2:	3f80 4f00      	movew %d0,%sp@(0,%d4:l:8)
   445d6:	0700           	btst %d3,%d0
   445d8:	7f00           	mvsb %d0,%d7
   445da:	1d00           	moveb %d0,%fp@-
   445dc:	0f00           	btst %d7,%d0
   445de:	7f00           	mvsb %d0,%d7
   445e0:	1e00           	moveb %d0,%d7
   445e2:	1e00           	moveb %d0,%d7
   445e4:	7e00           	moveq #0,%d7
   445e6:	1600           	moveb %d0,%d3
   445e8:	1e00           	moveb %d0,%d7
   445ea:	7e00           	moveq #0,%d7
   445ec:	ae00 1e00      	macl %d0,%d7,>>
   445f0:	fe00 ac00      	cp1ldb %d0,%a2,#7,#0
   445f4:	3c00           	movew %d0,%d6
   445f6:	fc00 0c00      	cp0nop #7
   445fa:	3c00           	movew %d0,%d6
   445fc:	fc00 1800      	cp0ldb %d0,%d1,#5,#0
   44600:	3800           	movew %d0,%d4
   44602:	f800 5800      	tblsb %d0,%d0,%d5
   44606:	7800           	moveq #0,%d4
   44608:	f800 5000      	tblub %d0,%d0,%d5
   4460c:	7000           	moveq #0,%d0
   4460e:	f000           	.short 0xf000
   44610:	b000           	cmpb %d0,%d0
   44612:	f000           	.short 0xf000
   44614:	f000           	.short 0xf000
   44616:	a000 e000      	macw %d0l,%d0l
   4461a:	e000           	asrb #8,%d0
   4461c:	2000           	movel %d0,%d0
   4461e:	e000           	asrb #8,%d0
   44620:	e000           	asrb #8,%d0
   44622:	1000           	moveb %d0,%d0
   44624:	7000           	moveq #0,%d0
   44626:	f000 5800      	pmove %d0,%scc
   4462a:	3800           	movew %d0,%d4
   4462c:	f800           	.short 0xf800
   4462e:	0b03           	btst %d5,%d3
   44630:	3b03           	movew %d3,%a5@-
   44632:	f802           	.short 0xf802
   44634:	d98f           	addxl %sp@-,%a4@-
   44636:	3b8f fa08      	movew %sp,%a5@(8,%sp:l:2)
   4463a:	14dc           	moveb %a4@+,%a2@+
   4463c:	f7dc           	.short 0xf7dc
   4463e:	f713           	.short 0xf713
   44640:	edf5           	.short 0xedf5
   44642:	eff4           	.short 0xeff4
   44644:	eaab           	lsrl %d5,%d3
   44646:	1f4b           	.short 0x1f4b
   44648:	1be8           	.short 0x1be8
   4464a:	14f7 fa4e      	moveb %sp@(4e,%sp:l:2),%a2@+
   4464e:	f66f           	.short 0xf66f
   44650:	6df6           	blts 0x44648
   44652:	e79f           	roll #3,%d7
   44654:	e3df           	lslw %sp@+
   44656:	ddf4 fb9f dbdd 	addal @(0)@(ffffffffdbddbef7,%sp:l:2),%fp
   4465c:	bef7 
   4465e:	fd9b fddb      	cp0stl %sp,%a3@+,#7,#475
   44662:	3f7d           	.short 0x3f7d
   44664:	3883           	movew %d3,%a4@
   44666:	07c2           	bset %d3,%d2
   44668:	ff7d           	.short 0xff7d
   4466a:	e28f           	lsrl #1,%d7
   4466c:	22c3           	movel %d3,%a1@+
   4466e:	ffff           	.short 0xffff
   44670:	df4f           	addxw %sp@-,%sp@-
   44672:	df64           	addw %d7,%a4@-
   44674:	fdff           	.short 0xfdff
   44676:	dbcc           	addal %a4,%a5
   44678:	ffe8           	.short 0xffe8
   4467a:	00ff           	.short 0x00ff
   4467c:	8678 e5f0      	orw 0xffffe5f0,%d3
   44680:	fbff           	.short 0xfbff
   44682:	0ff8 8bf0      	bset %d7,0xffff8bf0
   44686:	f5ff           	.short 0xf5ff
   44688:	2a70 0fe0 f5ff 	moveal @(fffffffffffff5ff),%a5
   4468e:	1f71 11e0 eeff 	moveb @(ffffffffffffeeff),%sp@(7615)
   44694:	1dbf 
   44696:	13ef eefe 1e7f 	moveb %sp@(-4354),0x1e7f11ef
   4469c:	11ef 
   4469e:	effe           	.short 0xeffe
   446a0:	fbfe           	.short 0xfbfe
   446a2:	7bef eeff      	mvzw %sp@(-4353),%d5
   446a6:	fbfd           	.short 0xfbfd
   446a8:	fbf7           	.short 0xfbf7
   446aa:	fffe           	.short 0xfffe
   446ac:	f5fe           	.short 0xf5fe
   446ae:	f5f7           	.short 0xf5f7
   446b0:	ef79           	rolw %d7,%d1
   446b2:	fdec           	.short 0xfdec
   446b4:	74fe           	moveq #-2,%d2
   446b6:	efb3           	roxll %d7,%d3
   446b8:	3e68 1e24      	moveaw %a0@(7716),%sp
   446bc:	efff           	.short 0xefff
   446be:	bffd           	.short 0xbffd
   446c0:	bbfc 75bf 0f3d 	cmpal #1975455549,%a5
   446c6:	affc           	.short 0xaffc
   446c8:	fbfb           	.short 0xfbfb
   446ca:	67bd           	beqs 0x44689
   446cc:	17dc           	.short 0x17dc
   446ce:	fb7b           	.short 0xfb7b
   446d0:	0bc7           	bset %d5,%d7
   446d2:	fbc0           	.short 0xfbc0
   446d4:	f7ff           	.short 0xf7ff
   446d6:	edcd           	.short 0xedcd
   446d8:	7bca           	mvzw %a2,%d5
   446da:	f777           	.short 0xf777
   446dc:	f3f8           	.short 0xf3f8
   446de:	ff8f cf77      	cp1stl %a4,%sp,#8,#375
   446e2:	a78c           	.short 0xa78c
   446e4:	bf8b           	cmpml %a3@+,%sp@+
   446e6:	df77 6398      	addw %d7,@(0,%d6:w:2)
   446ea:	3f8f df77 f35c 	movew %sp,%sp@(fffffffff35ce75b)@(ffffffffdfa7f33d)
   446f0:	e75b dfa7 f33d 
   446f6:	f723           	.short 0xf723
   446f8:	dfdf           	addal %sp@+,%sp
   446fa:	f3ec           	.short 0xf3ec
   446fc:	e7a3           	asll %d3,%d3
   446fe:	df5f           	addw %d7,%sp@+
   44700:	fbf9           	.short 0xfbf9
   44702:	e7df           	rolw %sp@+
   44704:	dfe7           	addal %sp@-,%sp
   44706:	76fe           	moveq #-2,%d3
   44708:	befe           	.short 0xbefe
   4470a:	df3b           	.short 0xdf3b
   4470c:	367b fe3b      	moveaw %pc@(0x44749,%sp:l:8),%a3
   44710:	dfdf           	addal %sp@+,%sp
   44712:	cd77 ff4f 3bbd 	andw %d6,%sp@(0)@(3bbd1d2b)
   44718:	1d2b 
   4471a:	ff17 fbfd      	cp1stb %sp,%sp@,#6,#509
   4471e:	7d5d           	mvsw %a5@+,%d6
   44720:	ff1f fbe3      	cp1stb %sp,%sp@+,#6,#483
   44724:	cd0c           	abcd %a4@-,%fp@-
   44726:	ff1b ffe7      	cp1stb %sp,%a3@+,#8,#487
   4472a:	9d7e           	.short 0x9d7e
   4472c:	7f79 ef87 6a0e 	mvsw 0xef876a0e,%d7
   44732:	fe9f 9ee1      	cp1ldl %sp@+,%a1,#8,#225
   44736:	da0e           	.short 0xda0e
   44738:	fe63 3e7d      	cp1ldw %a3@-,%d3,#8,#125
   4473c:	743e           	moveq #62,%d2
   4473e:	fc3f           	.short 0xfc3f
   44740:	3c21           	movew %a1@-,%d6
   44742:	980f           	.short 0x980f
   44744:	780f           	moveq #15,%d4
   44746:	e800           	asrb #4,%d0
   44748:	f000           	.short 0xf000
   4474a:	f000           	.short 0xf000
   4474c:	0000 c000      	orib #0,%d0
   44750:	c000           	andb %d0,%d0
   44752:	0000 0000      	orib #0,%d0
   44756:	0000 8000      	orib #0,%d0
   4475a:	0000 8000      	orib #0,%d0
   4475e:	e000           	asrb #8,%d0
   44760:	c000           	andb %d0,%d0
   44762:	e000           	asrb #8,%d0
   44764:	f000           	.short 0xf000
   44766:	0000 0000      	orib #0,%d0
   4476a:	f000           	.short 0xf000
   4476c:	e000           	asrb #8,%d0
   4476e:	1000           	moveb %d0,%d0
   44770:	fc00 0c00      	cp0nop #7
   44774:	fc00 fe00      	cp0ldb %d0,%sp,#8,#0
   44778:	7000           	moveq #0,%d0
   4477a:	fe00 ff00      	cp1ldb %d0,%sp,#8,#256
   4477e:	8000           	orb %d0,%d0
   44780:	f000           	.short 0xf000
   44782:	f000           	.short 0xf000
   44784:	0000 8000      	orib #0,%d0
   44788:	8000           	orb %d0,%d0
   4478a:	0000 0000      	orib #0,%d0
   4478e:	fc00 fe00      	cp0ldb %d0,%sp,#8,#0
   44792:	0000 ff00      	orib #0,%d0
   44796:	c300           	abcd %d0,%d1
   44798:	3c00           	movew %d0,%d6
   4479a:	ff80 9580      	cp1stl %a1,%d0,#3,#384
   4479e:	7e00           	moveq #0,%d7
   447a0:	ffc0           	.short 0xffc0
   447a2:	3fe0           	.short 0x3fe0
   447a4:	ffc0           	.short 0xffc0
   447a6:	ffe0           	.short 0xffe0
   447a8:	e010           	roxrb #8,%d0
   447aa:	e000           	asrb #8,%d0
   447ac:	e010           	roxrb #8,%d0
   447ae:	0000 e000      	orib #0,%d0
   447b2:	e000           	asrb #8,%d0
   447b4:	e000           	asrb #8,%d0
   447b6:	f000           	.short 0xf000
   447b8:	f000           	.short 0xf000
   447ba:	f000           	.short 0xf000
   447bc:	fc00 fc00      	cp0ldb %d0,%sp,#7,#0
   447c0:	1c00           	moveb %d0,%d6
   447c2:	fe00 fe00      	cp1ldb %d0,%sp,#8,#0
   447c6:	ce00           	andb %d0,%d7
   447c8:	3f00           	movew %d0,%sp@-
   447ca:	ff00 f200      	cp1stb %sp,%d0,#2,#0
   447ce:	0f80           	bclr %d7,%d0
   447d0:	ff80 5900      	cp1stl %d5,%d0,#5,#256
   447d4:	e780           	asll #3,%d0
   447d6:	ff80 0280      	cp1stl %d0,%d0,#2,#128
   447da:	0d80           	bclr %d6,%d0
   447dc:	0f80           	bclr %d7,%d0
   447de:	0040 03c0      	oriw #960,%d0
   447e2:	03c0           	bset %d1,%d0
   447e4:	0040 01c0      	oriw #448,%d0
   447e8:	01c0           	bset %d0,%d0
   447ea:	8000           	orb %d0,%d0
   447ec:	80c0           	divuw %d0,%d0
   447ee:	80c0           	divuw %d0,%d0
   447f0:	c000           	andb %d0,%d0
   447f2:	c0c0           	muluw %d0,%d0
   447f4:	c0c0           	muluw %d0,%d0
   447f6:	e000           	asrb #8,%d0
   447f8:	e040           	asrw #8,%d0
   447fa:	e040           	asrw #8,%d0
   447fc:	7000           	moveq #0,%d0
   447fe:	f000           	.short 0xf000
   44800:	f000           	.short 0xf000
   44802:	f800 3800      	tblsb %d0,%d0,%d3
   44806:	f800           	.short 0xf800
   44808:	f800 1800      	tblsb %d0,%d0,%d1
   4480c:	f800 2800      	tblsb %d0,%d0,%d2
   44810:	d800           	addb %d0,%d4
   44812:	f800           	.short 0xf800
   44814:	d400           	addb %d0,%d2
   44816:	ec00           	asrb #6,%d0
   44818:	fc00 3c00      	cp0ldb %d0,%d3,#7,#0
   4481c:	2400           	movel %d0,%d2
   4481e:	3c00           	movew %d0,%d6
   44820:	1400           	moveb %d0,%d2
   44822:	1800           	moveb %d0,%d4
   44824:	1c00           	moveb %d0,%d6
   44826:	0c00 0c00      	cmpib #0,%d0
   4482a:	0c00 0400      	cmpib #0,%d0
   4482e:	0400 0400      	subib #0,%d0
   44832:	0400 0400      	subib #0,%d0
   44836:	0400 0000      	subib #0,%d0
   4483a:	0000 0040      	orib #64,%d0
   4483e:	0040 0000      	oriw #0,%d0
   44842:	0040 0000      	oriw #0,%d0
   44846:	0000 0040      	orib #64,%d0
   4484a:	0000 0040      	orib #64,%d0
   4484e:	0040 0040      	oriw #64,%d0
   44852:	0000 00c0      	orib #-64,%d0
   44856:	0140           	bchg %d0,%d0
   44858:	0000 01c0      	orib #-64,%d0
   4485c:	0800 0280      	btst #-128,%d0
   44860:	0f80           	bclr %d7,%d0
   44862:	c900           	abcd %d0,%d4
   44864:	0200 ff00      	andib #0,%d0
   44868:	4200           	clrb %d0
   4486a:	1800           	moveb %d0,%d4
   4486c:	fe00 0000      	cp1nop #1
   44870:	4000           	negxb %d0
   44872:	e000           	asrb #8,%d0
   44874:	8000           	orb %d0,%d0
   44876:	0000 8000      	orib #0,%d0
   4487a:	e03e           	rorb %d0,%d6
   4487c:	e03e           	rorb %d0,%d6
   4487e:	0020 f8ff      	orib #-1,%a0@-
   44882:	f8ff           	.short 0xf8ff
   44884:	0081 c4ee fdd7 	oril #-990970409,%d1
   4488a:	3d29 b9b6      	movew %a1@(-17994),%fp@-
   4488e:	7faf 8659      	mvzb %sp@(-31143),%d7
   44892:	e13a           	rolb %d0,%d2
   44894:	fd07 1efd      	cp0stb %d1,%d7,#8,#253
   44898:	b133 f51e 6eed 	eorb %d0,%a3@(0)@(6eed,%sp:w:4)
   4489e:	715e           	mvsw %fp@+,%d0
   448a0:	393e           	.short 0x393e
   448a2:	fee7           	.short 0xfee7
   448a4:	b1af b95f      	eorl %d0,%sp@(-18081)
   448a8:	fef7           	.short 0xfef7
   448aa:	d2df           	addaw %sp@+,%a1
   448ac:	da3f           	.short 0xda3f
   448ae:	fdf3           	.short 0xfdf3
   448b0:	f16b f8ef      	prestore %a3@(-1809)
   448b4:	fff1           	.short 0xfff1
   448b6:	e367           	aslw %d1,%d7
   448b8:	3aff           	.short 0x3aff
   448ba:	dde1           	addal %a1@-,%fp
   448bc:	71f8 6cff      	mvzw 0x6cff,%d0
   448c0:	9f07           	subxb %d7,%d7
   448c2:	f196           	.short 0xf196
   448c4:	8df7 7e69      	divsw %sp@(69,%d7:l:8),%d6
   448c8:	f12d 8fa7      	psave %a5@(-28761)
   448cc:	7edb           	moveq #-37,%d7
   448ce:	e22a           	lsrb %d1,%d2
   448d0:	df25           	addb %d7,%a5@-
   448d2:	3ddf           	.short 0x3ddf
   448d4:	b22e af25      	cmpb %fp@(-20699),%d1
   448d8:	5ddb           	slt %a3@+
   448da:	e43c           	rorb %d2,%d4
   448dc:	3e23           	movew %a3@-,%d7
   448de:	dbdf           	addal %sp@+,%a5
   448e0:	341e           	movew %fp@+,%d2
   448e2:	1e05           	moveb %d5,%d7
   448e4:	ebfb 1cdb 167b 	bfexts %pc@(0x44963,%d1:w:8),%d3,27,%d1
   448ea:	ebdf           	.short 0xebdf
   448ec:	fefb           	.short 0xfefb
   448ee:	7efb           	moveq #-5,%d7
   448f0:	efff           	.short 0xefff
   448f2:	93f5 fff5 efff 	subal @(ffffffffefff78ed)@(0),%a1
   448f8:	78ed 
   448fa:	ffe4           	.short 0xffe4
   448fc:	87ff           	.short 0x87ff
   448fe:	ba7e           	.short 0xba7e
   44900:	8fee 77ff      	divsw %fp@(30719),%d7
   44904:	bebe           	.short 0xbebe
   44906:	87fa 79ff      	divsw %pc@(0x4c307),%d3
	...
   455b2:	0000 0004      	orib #4,%d0
   455b6:	0000 0001      	orib #1,%d0
   455ba:	8000           	orb %d0,%d0
   455bc:	0005 0000      	orib #0,%d5
   455c0:	008d cc00 002c 	oril #-872415188,%d5
   455c6:	0800 00cc      	btst #-52,%d0
   455ca:	3c40           	moveaw %d0,%fp
   455cc:	011f           	btst %d0,%sp@+
   455ce:	2dc0           	.short 0x2dc0
   455d0:	0173 4600      	bchg %d0,%a3@(0,%d4:w:8)
   455d4:	0001 6140      	orib #64,%d1
   455d8:	05bf           	.short 0x05bf
   455da:	0640 06f8      	addiw #1784,%d0
   455de:	2d20           	movel %a0@-,%fp@-
   455e0:	044e           	.short 0x044e
   455e2:	1080           	moveb %d0,%a0@
   455e4:	0399           	bclr %d1,%a1@+
   455e6:	0040 01b8      	oriw #440,%d0
   455ea:	99e0           	subal %a0@-,%a4
   455ec:	01aa 5860      	bclr %d0,%a2@(22624)
   455f0:	0013 cb00      	orib #0,%a3@
   455f4:	026a 2200 00c6 	andiw #8704,%a2@(198)
   455fa:	1e80           	moveb %d0,%sp@
   455fc:	0012 4480      	orib #-128,%a2@
   45600:	010d 5c00      	movepw %a5@(23552),%d0
   45604:	0032 5000 0000 	orib #0,%a2@(0,%d0:w)
   4560a:	c200           	andb %d0,%d1
	...
   45614:	0004 0000      	orib #0,%d4
   45618:	0001 8000      	orib #0,%d1
   4561c:	0007 0000      	orib #0,%d7
   45620:	008f cc00 002d 	oril #-872415187,%d7
   45626:	8c00           	orb %d0,%d6
   45628:	00c9           	.short 0x00c9
   4562a:	b440           	cmpw %d0,%d2
   4562c:	0170 f5c0      	bchg %d0,@(0)
   45630:	015c           	bchg %d0,%a4@+
   45632:	ef80           	asll #7,%d0
   45634:	006e 1cc0 05c0 	oriw #7360,%fp@(1472)
   4563a:	19c0           	.short 0x19c0
   4563c:	0700           	btst %d3,%d0
   4563e:	12e0           	moveb %a0@-,%a1@+
   45640:	07f0 0f80      	bset %d3,@(0,%d0:l:8)
   45644:	03e4           	bset %d1,%a4@-
   45646:	1dc0           	.short 0x1dc0
   45648:	01c6           	bset %d0,%d6
   4564a:	47e0           	.short 0x47e0
   4564c:	01fc           	.short 0x01fc
   4564e:	a260           	.short 0xa260
   45650:	0074 3700 026f 	oriw #14080,%a4@(6f,%d0:w:2)
   45656:	4e00           	.short 0x4e00
   45658:	00cb           	.short 0x00cb
   4565a:	6e80           	bgts 0x455dc
   4565c:	001f bc80      	orib #-128,%sp@+
   45660:	010d dc00      	movepw %a5@(-9216),%d0
   45664:	0032 d000 0000 	orib #0,%a2@(0,%d0:w)
   4566a:	c200           	andb %d0,%d1
	...
   45674:	0004 0000      	orib #0,%d4
   45678:	0001 8000      	orib #0,%d1
   4567c:	0007 0000      	orib #0,%d7
   45680:	008f cc00 002f 	oril #-872415185,%d7
   45686:	8c00           	orb %d0,%d6
   45688:	00cf           	.short 0x00cf
   4568a:	bc40           	cmpw %d0,%d6
   4568c:	017f           	.short 0x017f
   4568e:	fdc0           	.short 0xfdc0
   45690:	017f           	.short 0x017f
   45692:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   45696:	ffc0           	.short 0xffc0
   45698:	05ff           	.short 0x05ff
   4569a:	ffc0           	.short 0xffc0
   4569c:	07ff           	.short 0x07ff
   4569e:	ffe0           	.short 0xffe0
   456a0:	07ff           	.short 0x07ff
   456a2:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   456a6:	ffc0           	.short 0xffc0
   456a8:	01ff           	.short 0x01ff
   456aa:	ffe0           	.short 0xffe0
   456ac:	01ff           	.short 0x01ff
   456ae:	fe60 0077      	cp1ldw %a0@-,%d0,#1,#119
   456b2:	ff00 026f      	cp1stb %d0,%d0,#2,#111
   456b6:	fe00 00cf      	cp1ldb %d0,%d0,#1,#207
   456ba:	fe80 001f      	cp1ldl %d0,%d0,#1,#31
   456be:	fc80 010d      	cp0ldl %d0,%d0,#1,#269
   456c2:	dc00           	addb %d0,%d6
   456c4:	0032 d000 0000 	orib #0,%a2@(0,%d0:w)
   456ca:	c200           	andb %d0,%d1
	...
   456d4:	0004 0000      	orib #0,%d4
   456d8:	0001 8000      	orib #0,%d1
   456dc:	0007 0000      	orib #0,%d7
   456e0:	008f cc00 002f 	oril #-872415185,%d7
   456e6:	8c00           	orb %d0,%d6
   456e8:	00cf           	.short 0x00cf
   456ea:	bc40           	cmpw %d0,%d6
   456ec:	017f           	.short 0x017f
   456ee:	fdc0           	.short 0xfdc0
   456f0:	017f           	.short 0x017f
   456f2:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   456f6:	ffc0           	.short 0xffc0
   456f8:	05ff           	.short 0x05ff
   456fa:	ffc0           	.short 0xffc0
   456fc:	07ff           	.short 0x07ff
   456fe:	ffe0           	.short 0xffe0
   45700:	07ff           	.short 0x07ff
   45702:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   45706:	ffc0           	.short 0xffc0
   45708:	01ff           	.short 0x01ff
   4570a:	ffe0           	.short 0xffe0
   4570c:	01ff           	.short 0x01ff
   4570e:	fe60 0077      	cp1ldw %a0@-,%d0,#1,#119
   45712:	ff00 026f      	cp1stb %d0,%d0,#2,#111
   45716:	fe00 00cf      	cp1ldb %d0,%d0,#1,#207
   4571a:	fe80 001f      	cp1ldl %d0,%d0,#1,#31
   4571e:	fc80 010d      	cp0ldl %d0,%d0,#1,#269
   45722:	dc00           	addb %d0,%d6
   45724:	0032 d000 0000 	orib #0,%a2@(0,%d0:w)
   4572a:	c200           	andb %d0,%d1
   4572c:	0000 0000      	orib #0,%d0
   45730:	0010 0000      	orib #0,%a0@
   45734:	0020 1300      	orib #0,%a0@-
   45738:	0001 6480      	orib #-128,%d1
   4573c:	0232 c100 0055 	andib #0,%a2@(55,%d0:w)
   45742:	6940           	bvss 0x45784
   45744:	0caf eac0 0fb3 	cmpil #-356511821,%sp@(10304)
   4574a:	2840 
   4574c:	055b           	bchg %d2,%a3@+
   4574e:	9080           	subl %d0,%d0
   45750:	0064 3900      	oriw #14592,%a4@-
   45754:	0142           	bchg %d0,%d2
   45756:	8600           	orb %d0,%d3
   45758:	0feb 7f30      	bset %d7,%a3@(32560)
   4575c:	0835 6910 0595 	btst #16,@(0)@(0,%d0:w:4)
   45762:	a720           	.short 0xa720
   45764:	034d 73c0      	movepl %a5@(29632),%d1
   45768:	10d3           	moveb %a3@,%a0@+
   4576a:	9b00           	subxb %d0,%d5
   4576c:	03bd           	.short 0x03bd
   4576e:	0a40 16ed      	eoriw #5869,%d0
   45772:	50a0           	addql #8,%a0@-
   45774:	1989           	.short 0x1989
   45776:	a520           	.short 0xa520
   45778:	002b 54c0 042c 	orib #-64,%a3@(1068)
   4577e:	ac20           	.short 0xac20
   45780:	032b 5800      	btst %d1,%a3@(22528)
   45784:	0354           	bchg %d1,%a4@
   45786:	dc00           	addb %d0,%d6
   45788:	004d           	.short 0x004d
   4578a:	ac00 0010      	macw %d0l,%d6l
   4578e:	c800           	andb %d0,%d4
   45790:	0010 0000      	orib #0,%a0@
   45794:	0020 1300      	orib #0,%a0@-
   45798:	0003 7480      	orib #-128,%d3
   4579c:	0273 f180 0075 	andiw #-3712,%a3@(75,%d0:w)
   457a2:	59c0           	svs %d0
   457a4:	0caf db40 0fff 	cmpil #-616558593,%sp@(-25920)
   457aa:	9ac0 
   457ac:	05a6           	bclr %d2,%fp@-
   457ae:	f380           	.short 0xf380
   457b0:	005f ff00      	oriw #-256,%sp@+
   457b4:	0165           	bchg %d0,%a5@-
   457b6:	7a00           	moveq #0,%d5
   457b8:	0ff4 8730 0ffa 	bset %d7,%a4@(ffa1af0,%a0:w:8)
   457be:	1af0 
   457c0:	0668 1460 03ba 	addiw #5216,%a0@(954)
   457c6:	0fc0           	bset %d7,%d0
   457c8:	113c 7700      	moveb #0,%a0@-
   457cc:	037e           	.short 0x037e
   457ce:	edc0 1ff6      	bfffo %d0,%d7,%d6,%d1
   457d2:	b360           	eorw %d1,%a0@-
   457d4:	19b6 d5e0 0037 	moveb @(37),%a4@(ffffffffffffffe0,%sp:l:4)
   457da:	fce0 
   457dc:	0433 dc20 0337 	subib #32,%a3@(7800037c)@(fffffffffc00004d,%d0:w:2)
   457e2:	7800 037c fc00 
   457e8:	004d 
   457ea:	6c00 0010      	bgew 0x457fc
   457ee:	c800           	andb %d0,%d4
   457f0:	0010 0000      	orib #0,%a0@
   457f4:	0020 1300      	orib #0,%a0@-
   457f8:	0003 7480      	orib #-128,%d3
   457fc:	0273 f180 0075 	andiw #-3712,%a3@(75,%d0:w)
   45802:	79c0           	mvzw %d0,%d4
   45804:	0caf fbc0 0fff 	cmpil #-71299073,%sp@(-1088)
   4580a:	fbc0 
   4580c:	05ff           	.short 0x05ff
   4580e:	f380           	.short 0xf380
   45810:	007f           	.short 0x007f
   45812:	ff00 0167      	cp1stb %d0,%d0,#1,#359
   45816:	fe00 0fff      	cp1ldb %d0,%d0,#8,#511
   4581a:	ff30           	.short 0xff30
   4581c:	0fff           	.short 0x0fff
   4581e:	fbf0           	.short 0xfbf0
   45820:	07ff           	.short 0x07ff
   45822:	f7e0           	.short 0xf7e0
   45824:	03ff           	.short 0x03ff
   45826:	ffc0           	.short 0xffc0
   45828:	11ff           	.short 0x11ff
   4582a:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   4582e:	efc0 1fff      	bfins %d1,%d0,%d7,%d7
   45832:	f3e0           	.short 0xf3e0
   45834:	19bf           	.short 0x19bf
   45836:	f5e0           	.short 0xf5e0
   45838:	003f           	.short 0x003f
   4583a:	fce0           	.short 0xfce0
   4583c:	043f           	.short 0x043f
   4583e:	fc20 033f      	cp0ldb %a0@-,%d0,#2,#319
   45842:	7800           	moveq #0,%d4
   45844:	037c           	.short 0x037c
   45846:	fc00 004d      	cp0ldb %d0,%d0,#1,#77
   4584a:	ec00           	asrb #6,%d0
   4584c:	0010 c800      	orib #0,%a0@
   45850:	0010 0000      	orib #0,%a0@
   45854:	0020 1300      	orib #0,%a0@-
   45858:	0003 7480      	orib #-128,%d3
   4585c:	0273 f180 0075 	andiw #-3712,%a3@(75,%d0:w)
   45862:	79c0           	mvzw %d0,%d4
   45864:	0caf fbc0 0fff 	cmpil #-71299073,%sp@(-1088)
   4586a:	fbc0 
   4586c:	05ff           	.short 0x05ff
   4586e:	f380           	.short 0xf380
   45870:	007f           	.short 0x007f
   45872:	ff00 0167      	cp1stb %d0,%d0,#1,#359
   45876:	fe00 0fff      	cp1ldb %d0,%d0,#8,#511
   4587a:	ff30           	.short 0xff30
   4587c:	0fff           	.short 0x0fff
   4587e:	fbf0           	.short 0xfbf0
   45880:	07ff           	.short 0x07ff
   45882:	f7e0           	.short 0xf7e0
   45884:	03ff           	.short 0x03ff
   45886:	ffc0           	.short 0xffc0
   45888:	11ff           	.short 0x11ff
   4588a:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   4588e:	efc0 1fff      	bfins %d1,%d0,%d7,%d7
   45892:	f3e0           	.short 0xf3e0
   45894:	19bf           	.short 0x19bf
   45896:	f5e0           	.short 0xf5e0
   45898:	003f           	.short 0x003f
   4589a:	fce0           	.short 0xfce0
   4589c:	043f           	.short 0x043f
   4589e:	fc20 033f      	cp0ldb %a0@-,%d0,#2,#319
   458a2:	7800           	moveq #0,%d4
   458a4:	037c           	.short 0x037c
   458a6:	fc00 004d      	cp0ldb %d0,%d0,#1,#77
   458aa:	ec00           	asrb #6,%d0
   458ac:	0010 c800      	orib #0,%a0@
   458b0:	0002 0000      	orib #0,%d2
   458b4:	002c 0800 0012 	orib #0,%a4@(18)
   458ba:	2600           	movel %d0,%d3
   458bc:	015c           	bchg %d0,%a4@+
   458be:	3900           	movew %d0,%a4@-
   458c0:	0107           	btst %d0,%d7
   458c2:	9500           	subxb %d0,%d2
   458c4:	00e1           	.short 0x00e1
   458c6:	d2c0           	addaw %d0,%a1
   458c8:	02e1           	.short 0x02e1
   458ca:	eb00           	aslb #5,%d0
   458cc:	026b a620 00d0 	andiw #-23008,%a3@(208)
   458d2:	1e60           	.short 0x1e60
   458d4:	0db0 4900      	bclr %d6,%a0@(0,%d4:l)
   458d8:	0a48           	.short 0x0a48
   458da:	0ac0           	.short 0x0ac0
   458dc:	0160           	bchg %d0,%a0@-
   458de:	0520           	btst %d2,%a0@-
   458e0:	0ce0           	.short 0x0ce0
   458e2:	07d0           	bset %d3,%a0@
   458e4:	0674 8830 04b1 	addiw #-30672,%a4@(ffffffffffffffb1,%d0:w:4)
   458ea:	0f80           	bclr %d7,%d0
   458ec:	0050 8ae0      	oriw #-29984,%a0@
   458f0:	0188 00c0      	movepw %d0,%a0@(192)
   458f4:	0b8e fd40      	movepw %d5,%fp@(-704)
   458f8:	0a14 a620      	eorib #32,%a4@
   458fc:	1a36 9840      	moveb %fp@(40,%a1:l),%d5
   45900:	0328 9700      	btst %d1,%a0@(-26880)
   45904:	00a9 1e00 0394 	oril #503317396,%a1@(-23552)
   4590a:	a400 
   4590c:	04a4 7000 0002 	subil #1879048194,%a4@-
   45912:	0000 002c      	orib #44,%d0
   45916:	0800 001e      	btst #30,%d0
   4591a:	6600 015a      	bnew 0x45a76
   4591e:	5d00           	subqb #6,%d0
   45920:	0107           	btst %d0,%d7
   45922:	fb00           	.short 0xfb00
   45924:	00e1           	.short 0x00e1
   45926:	b7c0           	cmpal %d0,%a3
   45928:	02f1           	.short 0x02f1
   4592a:	3700           	movew %d0,%a3@-
   4592c:	0397           	bclr %d1,%sp@
   4592e:	da20           	addb %a0@-,%d5
   45930:	0338 3e60      	btst %d1,0x3e60
   45934:	0e70           	.short 0x0e70
   45936:	4900           	chkl %d0,%d4
   45938:	0ba8 1bc0      	bclr %d5,%a0@(7104)
   4593c:	01c0           	bset %d0,%d0
   4593e:	0ee0           	.short 0x0ee0
   45940:	0ee8           	.short 0x0ee8
   45942:	04f0           	.short 0x04f0
   45944:	05f4 8f30 07b9 	bset %d2,%a4@(7b91e80,%a0:l:8)
   4594a:	1e80 
   4594c:	02d9           	.short 0x02d9
   4594e:	0b60           	bchg %d5,%a0@-
   45950:	069e f1a0 0c9f 	addil #-241169249,%fp@+
   45956:	fd60 0f17      	cp0stw %d0,%a0@-,#8,#279
   4595a:	e620           	asrb %d3,%d0
   4595c:	1a35 fe40      	moveb %a5@(40,%sp:l:8),%d5
   45960:	0339 6b00 00a9 	btst %d1,0x6b0000a9
   45966:	e600           	asrb #3,%d0
   45968:	03ec dc00      	bset %d1,%a4@(-9216)
   4596c:	04fc           	.short 0x04fc
   4596e:	7000           	moveq #0,%d0
   45970:	0002 0000      	orib #0,%d2
   45974:	002c 0800 001e 	orib #0,%a4@(30)
   4597a:	6600 015e      	bnew 0x45ada
   4597e:	7d00           	mvsb %d0,%d6
   45980:	0107           	btst %d0,%d7
   45982:	ff00 00e1      	cp1stb %d0,%d0,#1,#225
   45986:	ffc0           	.short 0xffc0
   45988:	02f1           	.short 0x02f1
   4598a:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   4598e:	fe20 03f8      	cp1ldb %a0@-,%d0,#2,#504
   45992:	3e60           	moveaw %a0@-,%sp
   45994:	0ff0 4900      	bset %d7,%a0@(0,%d4:l)
   45998:	0be8 1bc0      	bset %d5,%a0@(7104)
   4599c:	01e0           	bset %d0,%a0@-
   4599e:	0fe0           	bset %d7,%a0@-
   459a0:	0ee8           	.short 0x0ee8
   459a2:	07f0 07f4 8f30 	bset %d3,@(ffffffff8f3007b9)@(0)
   459a8:	07b9 
   459aa:	1f80 03d9      	moveb %d0,@(0)@(0)
   459ae:	8be0           	divsw %a0@-,%d5
   459b0:	079e           	bclr %d3,%fp@+
   459b2:	f1e0           	.short 0xf1e0
   459b4:	0f9f           	bclr %d7,%sp@+
   459b6:	fd60 0f17      	cp0stw %d0,%a0@-,#8,#279
   459ba:	e620           	asrb %d3,%d0
   459bc:	1a37 fe40      	moveb %sp@(40,%sp:l:8),%d5
   459c0:	0339 ff00 00b9 	btst %d1,0xff0000b9
   459c6:	fe00 03fc      	cp1ldb %d0,%d0,#2,#508
   459ca:	fc00 04fc      	cp0ldb %d0,%d0,#3,#252
   459ce:	7000           	moveq #0,%d0
   459d0:	0002 0000      	orib #0,%d2
   459d4:	002c 0800 001e 	orib #0,%a4@(30)
   459da:	6600 015e      	bnew 0x45b3a
   459de:	7d00           	mvsb %d0,%d6
   459e0:	0107           	btst %d0,%d7
   459e2:	ff00 00e1      	cp1stb %d0,%d0,#1,#225
   459e6:	ffc0           	.short 0xffc0
   459e8:	02f1           	.short 0x02f1
   459ea:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   459ee:	fe20 03f8      	cp1ldb %a0@-,%d0,#2,#504
   459f2:	3e60           	moveaw %a0@-,%sp
   459f4:	0ff0 4900      	bset %d7,%a0@(0,%d4:l)
   459f8:	0be8 1bc0      	bset %d5,%a0@(7104)
   459fc:	01e0           	bset %d0,%a0@-
   459fe:	0fe0           	bset %d7,%a0@-
   45a00:	0ee8           	.short 0x0ee8
   45a02:	07f0 07f4 8f30 	bset %d3,@(ffffffff8f3007b9)@(0)
   45a08:	07b9 
   45a0a:	1f80 03d9      	moveb %d0,@(0)@(0)
   45a0e:	8be0           	divsw %a0@-,%d5
   45a10:	079e           	bclr %d3,%fp@+
   45a12:	f1e0           	.short 0xf1e0
   45a14:	0f9f           	bclr %d7,%sp@+
   45a16:	fd60 0f17      	cp0stw %d0,%a0@-,#8,#279
   45a1a:	e620           	asrb %d3,%d0
   45a1c:	1a37 fe40      	moveb %sp@(40,%sp:l:8),%d5
   45a20:	0339 ff00 00b9 	btst %d1,0xff0000b9
   45a26:	fe00 03fc      	cp1ldb %d0,%d0,#2,#508
   45a2a:	fc00 04fc      	cp0ldb %d0,%d0,#3,#252
   45a2e:	7000           	moveq #0,%d0
   45a30:	0036 0800 001b 	orib #0,%fp@(1b,%d0:w)
   45a36:	a600 00d9      	macw %d0u,%d3u
   45a3a:	3900           	movew %d0,%a4@-
   45a3c:	010f 0500      	movepw %sp@(1280),%d0
   45a40:	0661 fbc0      	addiw #-1088,%a1@-
   45a44:	0169 6b80      	bchg %d0,%a1@(27520)
   45a48:	05cb e620      	movepl %d2,%a3@(-6624)
   45a4c:	01dd           	bset %d0,%a5@+
   45a4e:	1f40 0da0      	moveb %d0,%sp@(3488)
   45a52:	1980 0d28 06c0 	moveb %d0,%a4@(6c0,%d0:l:4)
   45a58:	1c40           	.short 0x1c40
   45a5a:	0320           	btst %d1,%a0@-
   45a5c:	0380           	bclr %d1,%d0
   45a5e:	0590           	bclr %d2,%a0@
   45a60:	0880 84c8      	bclr #-56,%d0
   45a64:	0ca0 0698 0340 	cmpil #110625600,%a0@-
   45a6a:	0370 05c8      	bchg %d1,@(0)
   45a6e:	81d0           	divsw %a0@,%d0
   45a70:	0b93           	bclr %d5,%a3@
   45a72:	0df0 1a85      	bset %d6,%a0@(ffffffffffffff85,%d1:l:2)
   45a76:	0030 1b14 fd10 	orib #20,%a0@(0,%sp:l:4)
   45a7c:	1330 0520 00b9 	moveb %a0@(b9,%d0:w:4),%a1@-
   45a82:	3100           	movew %d0,%a0@-
   45a84:	079c           	bclr %d3,%a4@+
   45a86:	9500           	subxb %d0,%d2
   45a88:	0544           	bchg %d2,%d4
   45a8a:	6600 00fb      	bnew 0x45b87
   45a8e:	3c00           	movew %d0,%d6
   45a90:	003e           	.short 0x003e
   45a92:	0800 0017      	btst #23,%d0
   45a96:	a600 00df      	macw %d0u,%d3u
   45a9a:	3d00           	movew %d0,%fp@-
   45a9c:	010f 1b00      	movepw %sp@(6912),%d0
   45aa0:	07e1           	bset %d3,%a1@-
   45aa2:	e7c0           	.short 0xe7c0
   45aa4:	02b9 9780 063b 	andil #-1753217477,0xfa20023d
   45aaa:	fa20 023d 
   45aae:	1f40 0e60      	moveb %d0,%sp@(3680)
   45ab2:	1980 0ea8      	moveb %d0,%a4@(ffffffffffffffa8,%d0:l:8)
   45ab6:	07c0           	bset %d3,%d0
   45ab8:	1fc0           	.short 0x1fc0
   45aba:	02e0           	.short 0x02e0
   45abc:	0f80           	bclr %d7,%d0
   45abe:	0670 0f80 8738 	addiw #3968,%a0@(fa00778,%a0:w:8)
   45ac4:	0fa0 0778 
   45ac8:	02c0           	byterev %d0
   45aca:	03b0 06d8      	bclr %d1,%a0@(ffffffffffffffd8,%d0:w:8)
   45ace:	81b0 0c93      	orl %d0,%a0@(ffffffffffffff93,%d0:l:4)
   45ad2:	0dd0           	bset %d6,%a0@
   45ad4:	1f87 0030      	moveb %d7,%sp@(30,%d0:w)
   45ad8:	1b17           	moveb %sp@,%a5@-
   45ada:	fd10 1331      	cp0stb %d1,%a0@,#2,#305
   45ade:	ff20 00b9      	cp1stb %d0,%a0@-,#1,#185
   45ae2:	cf00           	abcd %d0,%d7
   45ae4:	07ec ed00      	bset %d3,%a4@(-4864)
   45ae8:	05fc           	.short 0x05fc
   45aea:	7e00           	moveq #0,%d7
   45aec:	00fb           	.short 0x00fb
   45aee:	3c00           	movew %d0,%d6
   45af0:	003e           	.short 0x003e
   45af2:	0800 001f      	btst #31,%d0
   45af6:	a600 00df      	macw %d0u,%d3u
   45afa:	3d00           	movew %d0,%fp@-
   45afc:	010f 1f00      	movepw %sp@(7936),%d0
   45b00:	07e1           	bset %d3,%a1@-
   45b02:	ffc0           	.short 0xffc0
   45b04:	03f9 ff80 07fb 	bset %d1,0xff8007fb
   45b0a:	fe20 03fd      	cp1ldb %a0@-,%d0,#2,#509
   45b0e:	1f40 0fe0      	moveb %d0,%sp@(4064)
   45b12:	1980 0fa8 07c0 	moveb %d0,@(7c0,%d0:l:8)
   45b18:	1fc0           	.short 0x1fc0
   45b1a:	03e0           	bset %d1,%a0@-
   45b1c:	0f80           	bclr %d7,%d0
   45b1e:	07f0 0f80      	bset %d3,@(0,%d0:l:8)
   45b22:	87f8 0fa0      	divsw 0xfa0,%d3
   45b26:	07f8 03c0      	bset %d3,0x3c0
   45b2a:	03f0 07d8      	bset %d1,@(0)
   45b2e:	81f0 0f93 0df0 	divsw @(0,%d0:l:8)@(df01f87),%d0
   45b34:	1f87 
   45b36:	0030 1b17 fd10 	orib #23,%a0@(0,%sp:l:4)
   45b3c:	1331 ff20 00b9 	moveb %a1@(b9,%sp:l:8),%a1@-
   45b42:	ff00 07fc      	cp1stb %d0,%d0,#4,#508
   45b46:	fd00 05fc      	cp0stb %d0,%d0,#3,#508
   45b4a:	7e00           	moveq #0,%d7
   45b4c:	00fb           	.short 0x00fb
   45b4e:	3c00           	movew %d0,%d6
   45b50:	003e           	.short 0x003e
   45b52:	0800 001f      	btst #31,%d0
   45b56:	a600 00df      	macw %d0u,%d3u
   45b5a:	3d00           	movew %d0,%fp@-
   45b5c:	010f 1f00      	movepw %sp@(7936),%d0
   45b60:	07e1           	bset %d3,%a1@-
   45b62:	ffc0           	.short 0xffc0
   45b64:	03f9 ff80 07fb 	bset %d1,0xff8007fb
   45b6a:	fe20 03fd      	cp1ldb %a0@-,%d0,#2,#509
   45b6e:	1f40 0fe0      	moveb %d0,%sp@(4064)
   45b72:	1980 0fa8 07c0 	moveb %d0,@(7c0,%d0:l:8)
   45b78:	1fc0           	.short 0x1fc0
   45b7a:	03e0           	bset %d1,%a0@-
   45b7c:	0f80           	bclr %d7,%d0
   45b7e:	07f0 0f80      	bset %d3,@(0,%d0:l:8)
   45b82:	87f8 0fa0      	divsw 0xfa0,%d3
   45b86:	07f8 03c0      	bset %d3,0x3c0
   45b8a:	03f0 07d8      	bset %d1,@(0)
   45b8e:	81f0 0f93 0df0 	divsw @(0,%d0:l:8)@(df01f87),%d0
   45b94:	1f87 
   45b96:	0030 1b17 fd10 	orib #23,%a0@(0,%sp:l:4)
   45b9c:	1331 ff20 00b9 	moveb %a1@(b9,%sp:l:8),%a1@-
   45ba2:	ff00 07fc      	cp1stb %d0,%d0,#4,#508
   45ba6:	fd00 05fc      	cp0stb %d0,%d0,#3,#508
   45baa:	7e00           	moveq #0,%d7
   45bac:	00fb           	.short 0x00fb
   45bae:	3c00           	movew %d0,%d6
   45bb0:	00c8           	.short 0x00c8
   45bb2:	0000 00ab      	orib #-85,%d0
   45bb6:	1c00           	moveb %d0,%d6
   45bb8:	001c 2c00      	orib #0,%a4@+
   45bbc:	0079 5700 0fb4 	oriw #22272,0xfb41d00
   45bc2:	1d00 
   45bc4:	0874 2280 01da 	bchg #-128,@(0)@(25e0)
   45bca:	25e0 
   45bcc:	12a2           	moveb %a2@-,%a1@
   45bce:	8a10           	orb %a0@,%d5
   45bd0:	2f90 0010      	movel %a0@,%sp@(10,%d0:w)
   45bd4:	0c00 0ea0      	cmpib #-96,%d0
   45bd8:	12a0           	moveb %a0@-,%a1@
   45bda:	0540           	bchg %d2,%d0
   45bdc:	0b80           	bclr %d5,%d0
   45bde:	02a0 1700 0150 	andil #385876304,%a0@-
   45be4:	2880           	movel %d0,%a4@
   45be6:	0aa0 1300 0200 	eoril #318767616,%a0@-
   45bec:	0b00           	btst %d5,%d0
   45bee:	0060 0d00      	oriw #3328,%a0@-
   45bf2:	02b0 04c8 17c0 	andil #80222144,%a0@(61,%d0:l:4)
   45bf8:	0c61 
   45bfa:	c280           	andl %d0,%d1
   45bfc:	0612 7940      	addib #64,%a2@
   45c00:	0837 2c40 0618 	btst #64,%sp@(18,%d0:w:8)
   45c06:	36c0           	movew %d0,%a3@+
   45c08:	01ee 3f00      	bset %d0,%fp@(16128)
   45c0c:	0038 8000 00f8 	orib #0,0xf8
   45c12:	0000 00b7      	orib #-73,%d0
   45c16:	1c00           	moveb %d0,%d6
   45c18:	001c 3400      	orib #0,%a4@+
   45c1c:	0079 5b00 0fec 	oriw #23296,0xfec1e00
   45c22:	1e00 
   45c24:	0f4c 2380      	movepl %a4@(9088),%d7
   45c28:	06da           	.short 0x06da
   45c2a:	27e0           	.short 0x27e0
   45c2c:	1da2 8a10      	moveb %a2@-,%fp@(10,%a0:l:2)
   45c30:	2f90 0010      	movel %a0@,%sp@(10,%d0:w)
   45c34:	0b00           	btst %d5,%d0
   45c36:	0fa0           	bclr %d7,%a0@-
   45c38:	1fa0 05c0      	moveb %a0@-,@(0)
   45c3c:	0d80           	bclr %d6,%d0
   45c3e:	02e0           	.short 0x02e0
   45c40:	1700           	moveb %d0,%a3@-
   45c42:	01b0 2880      	bclr %d0,%a0@(ffffffffffffff80,%d2:l)
   45c46:	0b60           	bchg %d5,%a0@-
   45c48:	1300           	moveb %d0,%a1@-
   45c4a:	0380           	bclr %d1,%d0
   45c4c:	0a00 01e0      	eorib #-32,%d0
   45c50:	0f00           	btst %d7,%d0
   45c52:	0370 0cc8      	bchg %d1,%a0@(ffffffffffffffc8,%d0:l:4)
   45c56:	17c0           	.short 0x17c0
   45c58:	0c61 c280      	cmpiw #-15744,%a1@-
   45c5c:	0612 7f40      	addib #64,%a2@
   45c60:	0837 3240 07f8 	btst #64,@(ffffffffe9c001de)
   45c66:	e9c0 01de 
   45c6a:	3f00           	movew %d0,%sp@-
   45c6c:	0038 8000 00f8 	orib #0,0xf8
   45c72:	0000 00bf      	orib #-65,%d0
   45c76:	1c00           	moveb %d0,%d6
   45c78:	001c 3c00      	orib #0,%a4@+
   45c7c:	0079 5f00 0ffc 	oriw #24320,0xffc1f00
   45c82:	1f00 
   45c84:	0f7c           	.short 0x0f7c
   45c86:	2380 07da 27e0 	movel %d0,@(0)@(27e0)
   45c8c:	1fa2 8a10      	moveb %a2@-,%sp@(10,%a0:l:2)
   45c90:	2f90 0010      	movel %a0@,%sp@(10,%d0:w)
   45c94:	0f00           	btst %d7,%d0
   45c96:	0fa0           	bclr %d7,%a0@-
   45c98:	1fa0 05c0      	moveb %a0@-,@(0)
   45c9c:	0f80           	bclr %d7,%d0
   45c9e:	02e0           	.short 0x02e0
   45ca0:	1700           	moveb %d0,%a3@-
   45ca2:	01f0 2880      	bset %d0,%a0@(ffffffffffffff80,%d2:l)
   45ca6:	0be0           	bset %d5,%a0@-
   45ca8:	1300           	moveb %d0,%a1@-
   45caa:	0380           	bclr %d1,%d0
   45cac:	0b00           	btst %d5,%d0
   45cae:	01e0           	bset %d0,%a0@-
   45cb0:	0f00           	btst %d7,%d0
   45cb2:	03f0 0cc8      	bset %d1,%a0@(ffffffffffffffc8,%d0:l:4)
   45cb6:	17c0           	.short 0x17c0
   45cb8:	0c61 c280      	cmpiw #-15744,%a1@-
   45cbc:	0612 7f40      	addib #64,%a2@
   45cc0:	0837 3e40 07f8 	btst #64,@(ffffffffffc001fe)
   45cc6:	ffc0 01fe 
   45cca:	3f00           	movew %d0,%sp@-
   45ccc:	0038 8000 00f8 	orib #0,0xf8
   45cd2:	0000 00bf      	orib #-65,%d0
   45cd6:	1c00           	moveb %d0,%d6
   45cd8:	001c 3c00      	orib #0,%a4@+
   45cdc:	0079 5f00 0ffc 	oriw #24320,0xffc1f00
   45ce2:	1f00 
   45ce4:	0f7c           	.short 0x0f7c
   45ce6:	2380 07da 27e0 	movel %d0,@(0)@(27e0)
   45cec:	1fa2 8a10      	moveb %a2@-,%sp@(10,%a0:l:2)
   45cf0:	2f90 0010      	movel %a0@,%sp@(10,%d0:w)
   45cf4:	0f00           	btst %d7,%d0
   45cf6:	0fa0           	bclr %d7,%a0@-
   45cf8:	1fa0 05c0      	moveb %a0@-,@(0)
   45cfc:	0f80           	bclr %d7,%d0
   45cfe:	02e0           	.short 0x02e0
   45d00:	1700           	moveb %d0,%a3@-
   45d02:	01f0 2880      	bset %d0,%a0@(ffffffffffffff80,%d2:l)
   45d06:	0be0           	bset %d5,%a0@-
   45d08:	1300           	moveb %d0,%a1@-
   45d0a:	0380           	bclr %d1,%d0
   45d0c:	0b00           	btst %d5,%d0
   45d0e:	01e0           	bset %d0,%a0@-
   45d10:	0f00           	btst %d7,%d0
   45d12:	03f0 0cc8      	bset %d1,%a0@(ffffffffffffffc8,%d0:l:4)
   45d16:	17c0           	.short 0x17c0
   45d18:	0c61 c280      	cmpiw #-15744,%a1@-
   45d1c:	0612 7f40      	addib #64,%a2@
   45d20:	0837 3e40 07f8 	btst #64,@(ffffffffffc001fe)
   45d26:	ffc0 01fe 
   45d2a:	3f00           	movew %d0,%sp@-
   45d2c:	0038 8000 0005 	orib #0,0x5
   45d32:	0000 0040      	orib #64,%d0
   45d36:	0600 00bc      	addib #-68,%d0
   45d3a:	2080           	movel %d0,%a0@
   45d3c:	14f4 1de0 030e 	moveb @(30e),%a2@+
   45d42:	3250           	moveaw %a0@,%a1
   45d44:	16d8           	moveb %a0@+,%a3@+
   45d46:	1160 26f1      	moveb %a0@-,%a0@(9969)
   45d4a:	0a90 0b88 08e0 	eoril #193464544,%a0@
   45d50:	0d80           	bclr %d6,%d0
   45d52:	0030 8900 0000 	orib #0,%a0@(0,%d0:w)
   45d58:	0d80           	bclr %d6,%d0
   45d5a:	0380           	bclr %d1,%d0
   45d5c:	1080           	moveb %d0,%a0@
   45d5e:	0440 8c00      	subiw #-29696,%d0
   45d62:	02c0           	byterev %d0
   45d64:	7200           	moveq #0,%d1
   45d66:	0c40 38e0      	cmpiw #14560,%d0
   45d6a:	0690 0e90 0380 	addil #244319104,%a0@
   45d70:	0860 0820      	bchg #32,%a0@-
   45d74:	05c8 2260      	movepl %d2,%a0@(8800)
   45d78:	1200           	moveb %d0,%d1
   45d7a:	e080           	asrl #8,%d0
   45d7c:	1868           	.short 0x1868
   45d7e:	4680           	notl %d0
   45d80:	0a94 8700 0522 	eoril #-2030041822,%a4@
   45d86:	7280           	moveq #-128,%d1
   45d88:	0078 1f00 0000 	oriw #7936,0x0
   45d8e:	8000           	orb %d0,%d0
   45d90:	0005 0000      	orib #0,%d5
   45d94:	0040 0600      	oriw #1536,%d0
   45d98:	00bc 2080 14fc 	oril #545264892,%d4
   45d9e:	1de0           	.short 0x1de0
   45da0:	03fe           	.short 0x03fe
   45da2:	3e50           	moveaw %a0@,%sp
   45da4:	17f8           	.short 0x17f8
   45da6:	1f60 27f9      	moveb %a0@-,%sp@(10233)
   45daa:	0e90           	.short 0x0e90
   45dac:	0b88 08e0      	movepw %d5,%a0@(2272)
   45db0:	0f80           	bclr %d7,%d0
   45db2:	0030 8f00 0000 	orib #0,%a0@(0,%d0:w)
   45db8:	1d80 0390      	moveb %d0,@(0,%d0:w:2)
   45dbc:	1c80           	moveb %d0,%fp@
   45dbe:	04c0           	ff1 %d0
   45dc0:	8e00           	orb %d0,%d7
   45dc2:	03c0           	bset %d1,%d0
   45dc4:	7200           	moveq #0,%d1
   45dc6:	0fc0           	bset %d7,%d0
   45dc8:	38e0           	movew %a0@-,%a4@+
   45dca:	0790           	bclr %d3,%a0@
   45dcc:	0f90           	bclr %d7,%a0@
   45dce:	0380           	bclr %d1,%d0
   45dd0:	0e60           	.short 0x0e60
   45dd2:	0820 07c8      	btst #-56,%a0@-
   45dd6:	2260           	moveal %a0@-,%a1
   45dd8:	1200           	moveb %d0,%d1
   45dda:	e080           	asrl #8,%d0
   45ddc:	1868           	.short 0x1868
   45dde:	6680           	bnes 0x45d60
   45de0:	0af4           	.short 0x0af4
   45de2:	ff00 05e6      	cp1stb %d0,%d0,#3,#486
   45de6:	7680           	moveq #-128,%d3
   45de8:	007c 1f00      	oriw #7936,%sr
   45dec:	0000 8000      	orib #0,%d0
   45df0:	0005 0000      	orib #0,%d5
   45df4:	0040 0600      	oriw #1536,%d0
   45df8:	00bc 2080 14fc 	oril #545264892,%d4
   45dfe:	1de0           	.short 0x1de0
   45e00:	03fe           	.short 0x03fe
   45e02:	3e50           	moveaw %a0@,%sp
   45e04:	17f8           	.short 0x17f8
   45e06:	1f60 27f9      	moveb %a0@-,%sp@(10233)
   45e0a:	0e90           	.short 0x0e90
   45e0c:	0b88 08e0      	movepw %d5,%a0@(2272)
   45e10:	0f80           	bclr %d7,%d0
   45e12:	0030 8f00 0000 	orib #0,%a0@(0,%d0:w)
   45e18:	1d80 0390      	moveb %d0,@(0,%d0:w:2)
   45e1c:	1c80           	moveb %d0,%fp@
   45e1e:	04c0           	ff1 %d0
   45e20:	8e00           	orb %d0,%d7
   45e22:	03c0           	bset %d1,%d0
   45e24:	7200           	moveq #0,%d1
   45e26:	0fc0           	bset %d7,%d0
   45e28:	38e0           	movew %a0@-,%a4@+
   45e2a:	0790           	bclr %d3,%a0@
   45e2c:	0f90           	bclr %d7,%a0@
   45e2e:	0380           	bclr %d1,%d0
   45e30:	0e60           	.short 0x0e60
   45e32:	0820 07c8      	btst #-56,%a0@-
   45e36:	2260           	moveal %a0@-,%a1
   45e38:	1200           	moveb %d0,%d1
   45e3a:	e080           	asrl #8,%d0
   45e3c:	1868           	.short 0x1868
   45e3e:	6680           	bnes 0x45dc0
   45e40:	0af4           	.short 0x0af4
   45e42:	ff00 05e6      	cp1stb %d0,%d0,#3,#486
   45e46:	7680           	moveq #-128,%d3
   45e48:	007c 1f00      	oriw #7936,%sr
   45e4c:	0000 8000      	orib #0,%d0
   45e50:	0005 0000      	orib #0,%d5
   45e54:	0040 0600      	oriw #1536,%d0
   45e58:	00bc 2080 14fc 	oril #545264892,%d4
   45e5e:	1de0           	.short 0x1de0
   45e60:	03fe           	.short 0x03fe
   45e62:	3e50           	moveaw %a0@,%sp
   45e64:	17f8           	.short 0x17f8
   45e66:	1f60 27f9      	moveb %a0@-,%sp@(10233)
   45e6a:	0e90           	.short 0x0e90
   45e6c:	0b88 08e0      	movepw %d5,%a0@(2272)
   45e70:	0f80           	bclr %d7,%d0
   45e72:	0030 8f00 0000 	orib #0,%a0@(0,%d0:w)
   45e78:	1d80 0390      	moveb %d0,@(0,%d0:w:2)
   45e7c:	1c80           	moveb %d0,%fp@
   45e7e:	04c0           	ff1 %d0
   45e80:	8e00           	orb %d0,%d7
   45e82:	03c0           	bset %d1,%d0
   45e84:	7200           	moveq #0,%d1
   45e86:	0fc0           	bset %d7,%d0
   45e88:	38e0           	movew %a0@-,%a4@+
   45e8a:	0790           	bclr %d3,%a0@
   45e8c:	0f90           	bclr %d7,%a0@
   45e8e:	0380           	bclr %d1,%d0
   45e90:	0e60           	.short 0x0e60
   45e92:	0820 07c8      	btst #-56,%a0@-
   45e96:	2260           	moveal %a0@-,%a1
   45e98:	1200           	moveb %d0,%d1
   45e9a:	e080           	asrl #8,%d0
   45e9c:	1868           	.short 0x1868
   45e9e:	6680           	bnes 0x45e20
   45ea0:	0af4           	.short 0x0af4
   45ea2:	ff00 05e6      	cp1stb %d0,%d0,#3,#486
   45ea6:	7680           	moveq #-128,%d3
   45ea8:	007c 1f00      	oriw #7936,%sr
   45eac:	0000 8000      	orib #0,%d0
   45eb0:	0000 0800      	orib #0,%d0
   45eb4:	013d           	.short 0x013d
   45eb6:	6000 012f      	braw 0x45fe7
   45eba:	a000 0042      	macw %d0u,%d0l
   45ebe:	5800           	addqb #4,%d0
   45ec0:	0cd0           	.short 0x0cd0
   45ec2:	2e00           	movel %d0,%d7
   45ec4:	0001 0300      	orib #0,%d1
   45ec8:	0b42           	bchg %d5,%d2
   45eca:	0000 12a2      	orib #-94,%d0
   45ece:	0080 0e00 0340 	oril #234881856,%d0
   45ed4:	0600 0000      	addib #0,%d0
   45ed8:	2c00           	movel %d0,%d6
   45eda:	0080 2800 0200 	oril #671089152,%d0
   45ee0:	1c00           	moveb %d0,%d6
   45ee2:	06e0           	.short 0x06e0
   45ee4:	2808           	movel %a0,%d4
   45ee6:	0a90 2d40 0c80 	eoril #759172224,%a0@
   45eec:	1200           	moveb %d0,%d1
   45eee:	0380           	bclr %d1,%d0
   45ef0:	1f00           	moveb %d0,%sp@-
   45ef2:	0680 2420 0300 	addil #606077696,%d0
   45ef8:	0200 0080      	andib #-128,%d0
   45efc:	0d02           	btst %d6,%d2
   45efe:	0b00           	btst %d5,%d0
   45f00:	0344           	bchg %d1,%d4
   45f02:	0b00           	btst %d5,%d0
   45f04:	02a0 6200 01cf 	andil #1644167631,%a0@-
   45f0a:	8800           	orb %d0,%d4
   45f0c:	003f           	.short 0x003f
   45f0e:	0800 0000      	btst #0,%d0
   45f12:	0800 013f      	btst #63,%d0
   45f16:	e000           	asrb #8,%d0
   45f18:	012f e000      	btst %d0,%sp@(-8192)
   45f1c:	0042 f800      	oriw #-2048,%d2
   45f20:	0cd0           	.short 0x0cd0
   45f22:	3e00           	movew %d0,%d7
   45f24:	0001 0300      	orib #0,%d1
   45f28:	0f42           	bchg %d7,%d2
   45f2a:	0000 1aa2      	orib #-94,%d0
   45f2e:	0080 0e00 0340 	oril #234881856,%d0
   45f34:	0600 0000      	addib #0,%d0
   45f38:	2c00           	movel %d0,%d6
   45f3a:	0080 2800 0200 	oril #671089152,%d0
   45f40:	1c00           	moveb %d0,%d6
   45f42:	06e0           	.short 0x06e0
   45f44:	3808           	movew %a0,%d4
   45f46:	0e90           	.short 0x0e90
   45f48:	3d40 0cc0      	movew %d0,%fp@(3264)
   45f4c:	1e00           	moveb %d0,%d7
   45f4e:	0380           	bclr %d1,%d0
   45f50:	1f00           	moveb %d0,%sp@-
   45f52:	0780           	bclr %d3,%d0
   45f54:	2420           	movel %a0@-,%d2
   45f56:	0300           	btst %d1,%d0
   45f58:	0200 0080      	andib #-128,%d0
   45f5c:	0d02           	btst %d6,%d2
   45f5e:	0f00           	btst %d7,%d0
   45f60:	0344           	bchg %d1,%d4
   45f62:	0f00           	btst %d7,%d0
   45f64:	03e0           	bset %d1,%a0@-
   45f66:	6200 01ff      	bhiw 0x46167
   45f6a:	8800           	orb %d0,%d4
   45f6c:	003f           	.short 0x003f
   45f6e:	0800 0000      	btst #0,%d0
   45f72:	0800 013f      	btst #63,%d0
   45f76:	e000           	asrb #8,%d0
   45f78:	012f e000      	btst %d0,%sp@(-8192)
   45f7c:	0042 f800      	oriw #-2048,%d2
   45f80:	0cd0           	.short 0x0cd0
   45f82:	3e00           	movew %d0,%d7
   45f84:	0001 0300      	orib #0,%d1
   45f88:	0f42           	bchg %d7,%d2
   45f8a:	0000 1aa2      	orib #-94,%d0
   45f8e:	0080 0e00 0340 	oril #234881856,%d0
   45f94:	0600 0000      	addib #0,%d0
   45f98:	2c00           	movel %d0,%d6
   45f9a:	0080 2800 0200 	oril #671089152,%d0
   45fa0:	1c00           	moveb %d0,%d6
   45fa2:	06e0           	.short 0x06e0
   45fa4:	3808           	movew %a0,%d4
   45fa6:	0e90           	.short 0x0e90
   45fa8:	3d40 0cc0      	movew %d0,%fp@(3264)
   45fac:	1e00           	moveb %d0,%d7
   45fae:	0380           	bclr %d1,%d0
   45fb0:	1f00           	moveb %d0,%sp@-
   45fb2:	0780           	bclr %d3,%d0
   45fb4:	2420           	movel %a0@-,%d2
   45fb6:	0300           	btst %d1,%d0
   45fb8:	0200 0080      	andib #-128,%d0
   45fbc:	0d02           	btst %d6,%d2
   45fbe:	0f00           	btst %d7,%d0
   45fc0:	0344           	bchg %d1,%d4
   45fc2:	0f00           	btst %d7,%d0
   45fc4:	03e0           	bset %d1,%a0@-
   45fc6:	6200 01ff      	bhiw 0x461c7
   45fca:	8800           	orb %d0,%d4
   45fcc:	003f           	.short 0x003f
   45fce:	0800 0000      	btst #0,%d0
   45fd2:	0800 013f      	btst #63,%d0
   45fd6:	e000           	asrb #8,%d0
   45fd8:	012f e000      	btst %d0,%sp@(-8192)
   45fdc:	0042 f800      	oriw #-2048,%d2
   45fe0:	0cd0           	.short 0x0cd0
   45fe2:	3e00           	movew %d0,%d7
   45fe4:	0001 0300      	orib #0,%d1
   45fe8:	0f42           	bchg %d7,%d2
   45fea:	0000 1aa2      	orib #-94,%d0
   45fee:	0080 0e00 0340 	oril #234881856,%d0
   45ff4:	0600 0000      	addib #0,%d0
   45ff8:	2c00           	movel %d0,%d6
   45ffa:	0080 2800 0200 	oril #671089152,%d0
   46000:	1c00           	moveb %d0,%d6
   46002:	06e0           	.short 0x06e0
   46004:	3808           	movew %a0,%d4
   46006:	0e90           	.short 0x0e90
   46008:	3d40 0cc0      	movew %d0,%fp@(3264)
   4600c:	1e00           	moveb %d0,%d7
   4600e:	0380           	bclr %d1,%d0
   46010:	1f00           	moveb %d0,%sp@-
   46012:	0780           	bclr %d3,%d0
   46014:	2420           	movel %a0@-,%d2
   46016:	0300           	btst %d1,%d0
   46018:	0200 0080      	andib #-128,%d0
   4601c:	0d02           	btst %d6,%d2
   4601e:	0f00           	btst %d7,%d0
   46020:	0344           	bchg %d1,%d4
   46022:	0f00           	btst %d7,%d0
   46024:	03e0           	bset %d1,%a0@-
   46026:	6200 01ff      	bhiw 0x46227
   4602a:	8800           	orb %d0,%d4
   4602c:	003f           	.short 0x003f
   4602e:	0800 0015      	btst #21,%d0
   46032:	0800 0139      	btst #57,%d0
   46036:	4000           	negxb %d0
   46038:	0544           	bchg %d2,%d4
   4603a:	6800 0e00      	bvcw 0x46e3c
   4603e:	0100           	btst %d0,%d0
   46040:	1000           	moveb %d0,%d0
   46042:	00c8           	.short 0x00c8
   46044:	1880           	moveb %d0,%a4@
   46046:	0060 0000      	oriw #0,%a0@-
   4604a:	0020 0800      	orib #0,%a0@-
   4604e:	0090 1000 0020 	oril #268435488,%a0@
   46054:	4000           	negxb %d0
   46056:	0010 6000      	orib #0,%a0@
   4605a:	0040 0800      	oriw #2048,%d0
   4605e:	0000 8000      	orib #0,%d0
   46062:	0060 4000      	oriw #16384,%a0@-
   46066:	0010 5000      	orib #0,%a0@
   4606a:	0100           	btst %d0,%d0
   4606c:	4000           	negxb %d0
   4606e:	0010 1800      	orib #0,%a0@
   46072:	0060 2400      	oriw #9216,%a0@-
   46076:	0200 0000      	andib #0,%d0
   4607a:	0020 1000      	orib #0,%a0@-
   4607e:	0140           	bchg %d0,%d0
   46080:	0a20 0b80      	eorib #-128,%a0@-
   46084:	2404           	movel %d4,%d2
   46086:	2200           	movel %d0,%d1
   46088:	0300           	btst %d1,%d0
   4608a:	c800           	andb %d0,%d4
   4608c:	00af 0800 0015 	oril #134217749,%sp@(2048)
   46092:	0800 
   46094:	0139 c000 0544 	btst %d0,0xc0000544
   4609a:	6800 0e00      	bvcw 0x46e9c
   4609e:	0100           	btst %d0,%d0
   460a0:	1000           	moveb %d0,%d0
   460a2:	00c8           	.short 0x00c8
   460a4:	1880           	moveb %d0,%a4@
   460a6:	0060 0000      	oriw #0,%a0@-
   460aa:	0020 0800      	orib #0,%a0@-
   460ae:	0090 1000 0020 	oril #268435488,%a0@
   460b4:	4000           	negxb %d0
   460b6:	0010 6000      	orib #0,%a0@
   460ba:	0040 0800      	oriw #2048,%d0
   460be:	0000 8000      	orib #0,%d0
   460c2:	0060 4000      	oriw #16384,%a0@-
   460c6:	0010 5000      	orib #0,%a0@
   460ca:	0100           	btst %d0,%d0
   460cc:	4000           	negxb %d0
   460ce:	0010 1800      	orib #0,%a0@
   460d2:	0060 2400      	oriw #9216,%a0@-
   460d6:	0200 0000      	andib #0,%d0
   460da:	0020 1000      	orib #0,%a0@-
   460de:	0140           	bchg %d0,%d0
   460e0:	0a20 0b80      	eorib #-128,%a0@-
   460e4:	2404           	movel %d4,%d2
   460e6:	2200           	movel %d0,%d1
   460e8:	0300           	btst %d1,%d0
   460ea:	c800           	andb %d0,%d4
   460ec:	00af 0800 0015 	oril #134217749,%sp@(2048)
   460f2:	0800 
   460f4:	0139 c000 0544 	btst %d0,0xc0000544
   460fa:	6800 0e00      	bvcw 0x46efc
   460fe:	0100           	btst %d0,%d0
   46100:	1000           	moveb %d0,%d0
   46102:	00c8           	.short 0x00c8
   46104:	1880           	moveb %d0,%a4@
   46106:	0060 0000      	oriw #0,%a0@-
   4610a:	0020 0800      	orib #0,%a0@-
   4610e:	0090 1000 0020 	oril #268435488,%a0@
   46114:	4000           	negxb %d0
   46116:	0010 6000      	orib #0,%a0@
   4611a:	0040 0800      	oriw #2048,%d0
   4611e:	0000 8000      	orib #0,%d0
   46122:	0060 4000      	oriw #16384,%a0@-
   46126:	0010 5000      	orib #0,%a0@
   4612a:	0100           	btst %d0,%d0
   4612c:	4000           	negxb %d0
   4612e:	0010 1800      	orib #0,%a0@
   46132:	0060 2400      	oriw #9216,%a0@-
   46136:	0200 0000      	andib #0,%d0
   4613a:	0020 1000      	orib #0,%a0@-
   4613e:	0140           	bchg %d0,%d0
   46140:	0a20 0b80      	eorib #-128,%a0@-
   46144:	2404           	movel %d4,%d2
   46146:	2200           	movel %d0,%d1
   46148:	0300           	btst %d1,%d0
   4614a:	c800           	andb %d0,%d4
   4614c:	00af 0800 0015 	oril #134217749,%sp@(2048)
   46152:	0800 
   46154:	0139 c000 0544 	btst %d0,0xc0000544
   4615a:	6800 0e00      	bvcw 0x46f5c
   4615e:	0100           	btst %d0,%d0
   46160:	1000           	moveb %d0,%d0
   46162:	00c8           	.short 0x00c8
   46164:	1880           	moveb %d0,%a4@
   46166:	0060 0000      	oriw #0,%a0@-
   4616a:	0020 0800      	orib #0,%a0@-
   4616e:	0090 1000 0020 	oril #268435488,%a0@
   46174:	4000           	negxb %d0
   46176:	0010 6000      	orib #0,%a0@
   4617a:	0040 0800      	oriw #2048,%d0
   4617e:	0000 8000      	orib #0,%d0
   46182:	0060 4000      	oriw #16384,%a0@-
   46186:	0010 5000      	orib #0,%a0@
   4618a:	0100           	btst %d0,%d0
   4618c:	4000           	negxb %d0
   4618e:	0010 1800      	orib #0,%a0@
   46192:	0060 2400      	oriw #9216,%a0@-
   46196:	0200 0000      	andib #0,%d0
   4619a:	0020 1000      	orib #0,%a0@-
   4619e:	0140           	bchg %d0,%d0
   461a0:	0a20 0b80      	eorib #-128,%a0@-
   461a4:	2404           	movel %d4,%d2
   461a6:	2200           	movel %d0,%d1
   461a8:	0300           	btst %d1,%d0
   461aa:	c800           	andb %d0,%d4
   461ac:	00af 0800 0000 	oril #134217728,%sp@(0)
   461b2:	0000 
	...
   461c0:	001c 0200      	orib #0,%a4@+
   461c4:	006f 2300 00b7 	oriw #8960,%sp@(183)
   461ca:	f580           	.short 0xf580
   461cc:	0167           	bchg %d0,%sp@-
   461ce:	23c0 00e3 75c0 	movel %d0,0xe375c0
   461d4:	013f           	.short 0x013f
   461d6:	2dc0           	.short 0x2dc0
   461d8:	0186           	bclr %d0,%d6
   461da:	04c0           	ff1 %d0
   461dc:	0086 89c0 00c3 	oril #-1983905597,%d6
   461e2:	9c80           	subl %d0,%d6
   461e4:	00e1           	.short 0x00e1
   461e6:	0980           	bclr %d4,%d0
   461e8:	0050 1b00      	oriw #6912,%a0@
   461ec:	0008           	.short 0x0008
   461ee:	f700           	.short 0xf700
   461f0:	0001 e600      	orib #0,%d1
   461f4:	0010 8c00      	orib #0,%a0@
   461f8:	0005 1000      	orib #0,%d5
	...
   46220:	003e           	.short 0x003e
   46222:	0e00           	.short 0x0e00
   46224:	001e 3f00      	orib #0,%fp@+
   46228:	000f           	.short 0x000f
   4622a:	7b80           	mvzb %d0,%d5
   4622c:	001f 27c0      	orib #-64,%sp@+
   46230:	009f 73c0 0107 	oril #1941963015,%sp@+
   46236:	23c0 019b 83c0 	movel %d0,0x19b83c0
   4623c:	0081 07c0 00c0 	oril #130023616,%d1
   46242:	0380           	bclr %d1,%d0
   46244:	00e0           	.short 0x00e0
   46246:	0780           	bclr %d3,%d0
   46248:	0050 0700      	oriw #1792,%a0@
   4624c:	0008           	.short 0x0008
   4624e:	0f00           	btst %d7,%d0
   46250:	0000 1e00      	orib #0,%d0
   46254:	0000 7c00      	orib #0,%d0
   46258:	0000 f000      	orib #0,%d0
	...
   46280:	003e           	.short 0x003e
   46282:	3e00           	movew %d0,%d7
   46284:	007f           	.short 0x007f
   46286:	5f00           	subqb #7,%d0
   46288:	00ff           	.short 0x00ff
   4628a:	8f80 01ff      	unpk %d0,%d7,#511
   4628e:	dfc0           	addal %d0,%sp
   46290:	017f           	.short 0x017f
   46292:	8fc0           	divsw %d0,%d7
   46294:	00ff           	.short 0x00ff
   46296:	dfc0           	addal %d0,%sp
   46298:	007f           	.short 0x007f
   4629a:	ffc0           	.short 0xffc0
   4629c:	017f           	.short 0x017f
   4629e:	ffc0           	.short 0xffc0
   462a0:	013f           	.short 0x013f
   462a2:	ff80 001f      	cp1stl %d0,%d0,#1,#31
   462a6:	ff80 00af      	cp1stl %d0,%d0,#1,#175
   462aa:	ff00 0077      	cp1stb %d0,%d0,#1,#119
   462ae:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   462b2:	fe00 001f      	cp1ldb %d0,%d0,#1,#31
   462b6:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   462ba:	f000           	.short 0xf000
	...
   462e0:	003e           	.short 0x003e
   462e2:	3e00           	movew %d0,%d7
   462e4:	007f           	.short 0x007f
   462e6:	7f00           	mvsb %d0,%d7
   462e8:	00ff           	.short 0x00ff
   462ea:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   462ee:	ffc0           	.short 0xffc0
   462f0:	01ff           	.short 0x01ff
   462f2:	ffc0           	.short 0xffc0
   462f4:	01ff           	.short 0x01ff
   462f6:	ffc0           	.short 0xffc0
   462f8:	01ff           	.short 0x01ff
   462fa:	ffc0           	.short 0xffc0
   462fc:	01ff           	.short 0x01ff
   462fe:	ffc0           	.short 0xffc0
   46300:	01ff           	.short 0x01ff
   46302:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   46306:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4630a:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   4630e:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   46312:	fe00 001f      	cp1ldb %d0,%d0,#1,#31
   46316:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4631a:	f000           	.short 0xf000
	...
   46338:	0004 2500      	orib #0,%d4
   4633c:	009c 4b80 013e 	oril #1266680126,%a4@+
   46342:	0bc0           	bset %d5,%d0
   46344:	02be 3be0 053e 	andil #1004537150,%d6
   4634a:	6df0           	blts 0x4633c
   4634c:	051f           	btst %d2,%sp@+
   4634e:	23f0 069e 55f0 	movel %a0@(ffffffffffffff9e,%d0:w:8),0x55f004ce
   46354:	04ce 
   46356:	adf0           	.short 0xadf0
   46358:	032a 04f0      	btst %d1,%a2@(1264)
   4635c:	0198           	bclr %d0,%a0@+
   4635e:	89e0           	divsw %a0@-,%d4
   46360:	01ce 1ce0      	movepl %d0,%fp@(7392)
   46364:	00c4           	bitrev %d4
   46366:	89c0           	divsw %d0,%d4
   46368:	0021 1b80      	orib #-128,%a1@-
   4636c:	0013 fe00      	orib #0,%a3@
   46370:	0007 e400      	orib #0,%d7
   46374:	0003 2800      	orib #0,%d3
   46378:	0000 3000      	orib #0,%d0
   4637c:	0003 c000      	orib #0,%d3
	...
   46398:	003c 2300      	orib #0,%ccr
   4639c:	007e           	.short 0x007e
   4639e:	0780           	bclr %d3,%d0
   463a0:	00ff           	.short 0x00ff
   463a2:	87c0           	divsw %d0,%d3
   463a4:	017f           	.short 0x017f
   463a6:	27e0           	.short 0x27e0
   463a8:	04fe           	.short 0x04fe
   463aa:	63f0           	blss 0x4639c
   463ac:	04fe           	.short 0x04fe
   463ae:	27f0           	.short 0x27f0
   463b0:	067f           	.short 0x067f
   463b2:	53f0 043f      	sls %a0@(3f,%d0:w:4)
   463b6:	23f0 031f 03f0 	movel %a0@(0)@(3f00187,%d0:w:2),0x7e001c1
   463bc:	0187 07e0 01c1 
   463c2:	03e0           	bset %d1,%a0@-
   463c4:	00c0           	bitrev %d0
   463c6:	07c0           	bset %d3,%d0
   463c8:	0020 0780      	orib #-128,%a0@-
   463cc:	0010 0600      	orib #0,%a0@
   463d0:	0000 1c00      	orib #0,%d0
   463d4:	0000 d800      	orib #0,%d0
   463d8:	0003 f000      	orib #0,%d3
   463dc:	0003 c000      	orib #0,%d3
	...
   463f8:	00fc           	.short 0x00fc
   463fa:	3f00           	movew %d0,%sp@-
   463fc:	01fe           	.short 0x01fe
   463fe:	7f80           	mvzb %d0,%d7
   46400:	03ff           	.short 0x03ff
   46402:	ffc0           	.short 0xffc0
   46404:	07ff           	.short 0x07ff
   46406:	dfe0           	addal %a0@-,%sp
   46408:	0bff           	.short 0x0bff
   4640a:	9ff0 0bff dff0 	subal @(ffffffffdff009ff)@(ffffffffaff00bff),%sp
   46410:	09ff aff0 0bff 
   46416:	dff0 0cff      	addal %a0@(ffffffffffffffff,%d0:l:4),%sp
   4641a:	fff0           	.short 0xfff0
   4641c:	067f           	.short 0x067f
   4641e:	ffe0           	.short 0xffe0
   46420:	063f           	.short 0x063f
   46422:	ffe0           	.short 0xffe0
   46424:	033f           	.short 0x033f
   46426:	ffc0           	.short 0xffc0
   46428:	01df           	bset %d0,%sp@+
   4642a:	ff80 00ef      	cp1stl %d0,%d0,#1,#239
   4642e:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   46432:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   46436:	f800           	.short 0xf800
   46438:	000f           	.short 0x000f
   4643a:	f000           	.short 0xf000
   4643c:	0003 c000      	orib #0,%d3
	...
   46458:	00fc           	.short 0x00fc
   4645a:	3f00           	movew %d0,%sp@-
   4645c:	01fe           	.short 0x01fe
   4645e:	7f80           	mvzb %d0,%d7
   46460:	03ff           	.short 0x03ff
   46462:	ffc0           	.short 0xffc0
   46464:	07ff           	.short 0x07ff
   46466:	ffe0           	.short 0xffe0
   46468:	0fff           	.short 0x0fff
   4646a:	fff0           	.short 0xfff0
   4646c:	0fff           	.short 0x0fff
   4646e:	fff0           	.short 0xfff0
   46470:	0fff           	.short 0x0fff
   46472:	fff0           	.short 0xfff0
   46474:	0fff           	.short 0x0fff
   46476:	fff0           	.short 0xfff0
   46478:	0fff           	.short 0x0fff
   4647a:	fff0           	.short 0xfff0
   4647c:	07ff           	.short 0x07ff
   4647e:	ffe0           	.short 0xffe0
   46480:	07ff           	.short 0x07ff
   46482:	ffe0           	.short 0xffe0
   46484:	03ff           	.short 0x03ff
   46486:	ffc0           	.short 0xffc0
   46488:	01ff           	.short 0x01ff
   4648a:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4648e:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   46492:	fc00 001f      	cp0ldb %d0,%d0,#1,#31
   46496:	f800           	.short 0xf800
   46498:	000f           	.short 0x000f
   4649a:	f000           	.short 0xf000
   4649c:	0003 c000      	orib #0,%d3
	...
   464b0:	003c 1600      	orib #0,%ccr
   464b4:	00be 7f80 017e 	oril #2139095422,%d6
   464ba:	b7c0           	cmpal %d0,%a3
   464bc:	00fd           	.short 0x00fd
   464be:	6be0           	bmis 0x464a0
   464c0:	037d           	.short 0x037d
   464c2:	7bf0 0a7f      	mvzw %a0@(7f,%d0:l:2),%d5
   464c6:	bbf8 0b7f      	cmpal 0xb7f,%a5
   464ca:	51f8 1a3f      	sf 0x1a3f
   464ce:	bdfc 119d 79fc 	cmpal #295533052,%fp
   464d4:	18e1           	moveb %a1@-,%a4@+
   464d6:	bdfc 1c34 59fc 	cmpal #473192956,%fp
   464dc:	0a1e f9fc      	eorib #-4,%fp@+
   464e0:	0d08 7bf8      	movepw %a0@(31736),%d6
   464e4:	0605 f3f8      	addib #-8,%d5
   464e8:	0307           	btst %d1,%d7
   464ea:	c3f8 058f      	mulsw 0x58f,%d1
   464ee:	6ff0           	bles 0x464e0
   464f0:	0207 dff0      	andib #-16,%d7
   464f4:	0126           	btst %d0,%fp@-
   464f6:	bfe0           	cmpal %a0@-,%sp
   464f8:	001d 7fc0      	orib #-64,%a5@+
   464fc:	0020 ff80      	orib #-128,%a0@-
   46500:	0017 ff00      	orib #0,%sp@
   46504:	000b           	.short 0x000b
   46506:	fe00 0005      	cp1ldb %d0,%d0,#1,#5
   4650a:	f800 0005      	tblub %d0,%d5,%d0
   4650e:	e000           	asrb #8,%d0
   46510:	001c 0e00      	orib #0,%a4@+
   46514:	007e           	.short 0x007e
   46516:	4f80           	chkw %d0,%d7
   46518:	00fe           	.short 0x00fe
   4651a:	8fc0           	divsw %d0,%d7
   4651c:	01fd           	.short 0x01fd
   4651e:	17e0           	.short 0x17e0
   46520:	00f9           	.short 0x00f9
   46522:	07f0 09fb 87f8 	bset %d3,@(ffffffff87f808fb)@(6ff819fb)
   46528:	08fb 6ff8 19fb 
   4652e:	83fc 1079      	divsw #4217,%d1
   46532:	47fc           	.short 0x47fc
   46534:	181d           	moveb %a5@+,%d4
   46536:	83fc 1c08      	divsw #7176,%d1
   4653a:	27fc           	.short 0x27fc
   4653c:	0a02 87fc      	eorib #-4,%d2
   46540:	0d00           	btst %d6,%d0
   46542:	07f8 0601      	bset %d3,0x601
   46546:	0ff8 0300      	bset %d7,0x300
   4654a:	3ff8           	.short 0x3ff8
   4654c:	0580           	bclr %d2,%d0
   4654e:	9ff0 0200      	subal %a0@(0,%d0:w:2),%sp
   46552:	3ff0           	.short 0x3ff0
   46554:	0101           	btst %d0,%d1
   46556:	7fe0           	mvzw %a0@-,%d7
   46558:	0002 ffc0      	orib #-64,%d2
   4655c:	0007 ff80      	orib #-128,%d7
   46560:	000f           	.short 0x000f
   46562:	ff00 0007      	cp1stb %d0,%d0,#1,#7
   46566:	fe00 0013      	cp1ldb %d0,%d0,#1,#19
   4656a:	f800 0003      	tblub %d0,%d3,%d0
   4656e:	e000           	asrb #8,%d0
   46570:	007c 3e00      	oriw #15872,%sr
   46574:	01fe           	.short 0x01fe
   46576:	3f80 03ff 7fc0 	movew %d0,@(7fc007fe)@(ffffffffffe00ffe)
   4657c:	07fe ffe0 0ffe 
   46582:	fff0           	.short 0xfff0
   46584:	17fc           	.short 0x17fc
   46586:	7ff8 17fc      	mvzw 0x17fc,%d7
   4658a:	bff8 27fc      	cmpal 0x27fc,%sp
   4658e:	7ffc 2ffe      	mvzw #12286,%d7
   46592:	bffc 27fe 7ffc 	cmpal #670990332,%sp
   46598:	23ff           	.short 0x23ff
   4659a:	fffc           	.short 0xfffc
   4659c:	35fd           	.short 0x35fd
   4659e:	7ffc 12ff      	mvzw #4863,%d7
   465a2:	fff8           	.short 0xfff8
   465a4:	19fe           	.short 0x19fe
   465a6:	fff8           	.short 0xfff8
   465a8:	1cff           	.short 0x1cff
   465aa:	fff8           	.short 0xfff8
   465ac:	0a7f           	.short 0x0a7f
   465ae:	fff0           	.short 0xfff0
   465b0:	0dff           	.short 0x0dff
   465b2:	fff0           	.short 0xfff0
   465b4:	06ff           	.short 0x06ff
   465b6:	ffe0           	.short 0xffe0
   465b8:	03ff           	.short 0x03ff
   465ba:	ffc0           	.short 0xffc0
   465bc:	01ff           	.short 0x01ff
   465be:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   465c2:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   465c6:	fe00 001f      	cp1ldb %d0,%d0,#1,#31
   465ca:	f800 0007      	tblub %d0,%d7,%d0
   465ce:	e000           	asrb #8,%d0
   465d0:	007c 3e00      	oriw #15872,%sr
   465d4:	01fe           	.short 0x01fe
   465d6:	7f80           	mvzb %d0,%d7
   465d8:	03ff           	.short 0x03ff
   465da:	ffc0           	.short 0xffc0
   465dc:	07ff           	.short 0x07ff
   465de:	ffe0           	.short 0xffe0
   465e0:	0fff           	.short 0x0fff
   465e2:	fff0           	.short 0xfff0
   465e4:	1fff           	.short 0x1fff
   465e6:	fff8           	.short 0xfff8
   465e8:	1fff           	.short 0x1fff
   465ea:	fff8           	.short 0xfff8
   465ec:	3fff           	.short 0x3fff
   465ee:	fffc           	.short 0xfffc
   465f0:	3fff           	.short 0x3fff
   465f2:	fffc           	.short 0xfffc
   465f4:	3fff           	.short 0x3fff
   465f6:	fffc           	.short 0xfffc
   465f8:	3fff           	.short 0x3fff
   465fa:	fffc           	.short 0xfffc
   465fc:	3fff           	.short 0x3fff
   465fe:	fffc           	.short 0xfffc
   46600:	1fff           	.short 0x1fff
   46602:	fff8           	.short 0xfff8
   46604:	1fff           	.short 0x1fff
   46606:	fff8           	.short 0xfff8
   46608:	1fff           	.short 0x1fff
   4660a:	fff8           	.short 0xfff8
   4660c:	0fff           	.short 0x0fff
   4660e:	fff0           	.short 0xfff0
   46610:	0fff           	.short 0x0fff
   46612:	fff0           	.short 0xfff0
   46614:	07ff           	.short 0x07ff
   46616:	ffe0           	.short 0xffe0
   46618:	03ff           	.short 0x03ff
   4661a:	ffc0           	.short 0xffc0
   4661c:	01ff           	.short 0x01ff
   4661e:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   46622:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   46626:	fe00 001f      	cp1ldb %d0,%d0,#1,#31
   4662a:	f800 0007      	tblub %d0,%d7,%d0
   4662e:	e000           	asrb #8,%d0
   46630:	0000 0000      	orib #0,%d0
   46634:	0094 5f00 00be 	oril #1593835710,%a4@
   4663a:	3f80 017e 6cc0 	movew %d0,%sp@(6cc0053c)@(ffffffffffffcee0)
   46640:	053c cee0 
   46644:	0bde           	bset %d5,%fp@+
   46646:	f770           	.short 0xf770
   46648:	053b 0ff0 078a 	btst %d2,%zpc@(78ad7f8)
   4664e:	d7f8 
   46650:	0cfc           	.short 0x0cfc
   46652:	b7f8 0e18      	cmpal 0xe18,%a3
   46656:	93f8 0c1a      	subal 0xc1a,%a1
   4665a:	a7f8           	.short 0xa7f8
   4665c:	060e           	.short 0x060e
   4665e:	73f8 0344      	mvzw 0x344,%d1
   46662:	a7f8           	.short 0xa7f8
   46664:	0100           	btst %d0,%d0
   46666:	6ff0           	bles 0x46658
   46668:	0103           	btst %d0,%d3
   4666a:	eff0 00a7 8fe0 	bfins %d0,@(42),2,%d7
   46670:	0042 
   46672:	afc0           	.short 0xafc0
   46674:	0051 5f80      	oriw #24448,%a1@
   46678:	000a           	.short 0x000a
   4667a:	3e00           	movew %d0,%d7
   4667c:	0014 f800      	orib #0,%a4@
   46680:	0009           	.short 0x0009
   46682:	e000           	asrb #8,%d0
   46684:	0001 8000      	orib #0,%d1
	...
   46694:	00be 4f00 007f 	oril #1325400191,%d6
   4669a:	1d80 00fe      	moveb %d0,%fp@(fffffffffffffffe,%d0:w)
   4669e:	5fc0           	sle %d0
   466a0:	00fe           	.short 0x00fe
   466a2:	bfe0           	cmpal %a0@-,%sp
   466a4:	027c cff0      	andiw #-12304,%sr
   466a8:	04fd           	.short 0x04fd
   466aa:	1ff0           	.short 0x1ff0
   466ac:	067c           	.short 0x067c
   466ae:	cff8 0c1e      	mulsw 0xc1e,%d7
   466b2:	8ff8 0e6e      	divsw 0xe6e,%d7
   466b6:	8ff8 0c04      	divsw 0xc04,%d7
   466ba:	9ff8 0600      	subal 0x600,%sp
   466be:	0ff8 1340      	bset %d7,0x1340
   466c2:	9ff8 0100      	subal 0x100,%sp
   466c6:	1ff0           	.short 0x1ff0
   466c8:	0100           	btst %d0,%d0
   466ca:	1ff0           	.short 0x1ff0
   466cc:	00a0 7fe0 0041 	oril #2145386561,%a0@-
   466d2:	7fc0           	mvzw %d0,%d7
   466d4:	0042 ff80      	oriw #-128,%d2
   466d8:	0005 fe00      	orib #0,%d5
   466dc:	0003 f800      	orib #0,%d3
   466e0:	0007 e000      	orib #0,%d7
   466e4:	0003 8000      	orib #0,%d3
	...
   466f4:	00fe           	.short 0x00fe
   466f6:	7f00           	mvsb %d0,%d7
   466f8:	01ff           	.short 0x01ff
   466fa:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   466fe:	bfc0           	cmpal %d0,%sp
   46700:	07ff           	.short 0x07ff
   46702:	7fe0           	mvzw %a0@-,%d7
   46704:	0dff           	.short 0x0dff
   46706:	3ff0           	.short 0x3ff0
   46708:	0bfe           	.short 0x0bfe
   4670a:	fff0           	.short 0xfff0
   4670c:	19ff           	.short 0x19ff
   4670e:	3ff8           	.short 0x3ff8
   46710:	13ff           	.short 0x13ff
   46712:	7ff8 11ff      	mvzw 0x11ff,%d7
   46716:	7ff8 13ff      	mvzw 0x13ff,%d7
   4671a:	7ff8 19ff      	mvzw 0x19ff,%d7
   4671e:	fff8           	.short 0xfff8
   46720:	1cbf           	.short 0x1cbf
   46722:	7ff8 0eff      	mvzw 0xeff,%d7
   46726:	fff0           	.short 0xfff0
   46728:	0eff           	.short 0x0eff
   4672a:	fff0           	.short 0xfff0
   4672c:	075f           	bchg %d3,%sp@+
   4672e:	ffe0           	.short 0xffe0
   46730:	03bf           	.short 0x03bf
   46732:	ffc0           	.short 0xffc0
   46734:	01bf           	.short 0x01bf
   46736:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4673a:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   4673e:	f800           	.short 0xf800
   46740:	000f           	.short 0x000f
   46742:	e000           	asrb #8,%d0
   46744:	0003 8000      	orib #0,%d3
	...
   46754:	00fe           	.short 0x00fe
   46756:	7f00           	mvsb %d0,%d7
   46758:	01ff           	.short 0x01ff
   4675a:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   4675e:	ffc0           	.short 0xffc0
   46760:	07ff           	.short 0x07ff
   46762:	ffe0           	.short 0xffe0
   46764:	0fff           	.short 0x0fff
   46766:	fff0           	.short 0xfff0
   46768:	0fff           	.short 0x0fff
   4676a:	fff0           	.short 0xfff0
   4676c:	1fff           	.short 0x1fff
   4676e:	fff8           	.short 0xfff8
   46770:	1fff           	.short 0x1fff
   46772:	fff8           	.short 0xfff8
   46774:	1fff           	.short 0x1fff
   46776:	fff8           	.short 0xfff8
   46778:	1fff           	.short 0x1fff
   4677a:	fff8           	.short 0xfff8
   4677c:	1fff           	.short 0x1fff
   4677e:	fff8           	.short 0xfff8
   46780:	1fff           	.short 0x1fff
   46782:	fff8           	.short 0xfff8
   46784:	0fff           	.short 0x0fff
   46786:	fff0           	.short 0xfff0
   46788:	0fff           	.short 0x0fff
   4678a:	fff0           	.short 0xfff0
   4678c:	07ff           	.short 0x07ff
   4678e:	ffe0           	.short 0xffe0
   46790:	03ff           	.short 0x03ff
   46792:	ffc0           	.short 0xffc0
   46794:	01ff           	.short 0x01ff
   46796:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4679a:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   4679e:	f800           	.short 0xf800
   467a0:	000f           	.short 0x000f
   467a2:	e000           	asrb #8,%d0
   467a4:	0003 8000      	orib #0,%d3
	...
   467b8:	0028 2c00 0054 	orib #0,%a0@(84)
   467be:	7f00           	mvsb %d0,%d7
   467c0:	00ba 9780 00df 	oril #-1753218849,%d2
   467c6:	67c0           	beqs 0x46788
   467c8:	01ae abe0      	bclr %d0,%fp@(-21536)
   467cc:	0a9e 47f0 06c6 	eoril #1206912710,%fp@+
   467d2:	6bf0           	bmis 0x467c4
   467d4:	026e 5bf0 0532 	andiw #23536,%fp@(1330)
   467da:	09f0 030d      	bset %d4,%a0@(0)@(0,%d0:w:2)
   467de:	53f0 0187 39e0 	sls @(0)@(39e001c2,%d0:w)
   467e4:	01c2 
   467e6:	93e0           	subal %a0@-,%a1
   467e8:	00e0           	.short 0x00e0
   467ea:	37c0           	.short 0x37c0
   467ec:	0061 ffc0      	oriw #-64,%a1@-
   467f0:	0013 cf80      	orib #-128,%a3@
   467f4:	0001 5f00      	orib #0,%d1
   467f8:	0008           	.short 0x0008
   467fa:	3e00           	movew %d0,%d7
   467fc:	0005 fc00      	orib #0,%d5
   46800:	000a           	.short 0x000a
   46802:	f000           	.short 0xf000
	...
   46818:	001c 0400      	orib #0,%a4@+
   4681c:	003e           	.short 0x003e
   4681e:	2f00           	movel %d0,%sp@-
   46820:	007f           	.short 0x007f
   46822:	0f80           	bclr %d7,%d0
   46824:	003e           	.short 0x003e
   46826:	5fc0           	sle %d0
   46828:	017e           	.short 0x017e
   4682a:	b7e0           	cmpal %a0@-,%a3
   4682c:	027e           	.short 0x027e
   4682e:	4ff0 063e      	lea %a0@(3e,%d0:w:8),%sp
   46832:	67f0           	beqs 0x46824
   46834:	021e 47f0      	andib #-16,%fp@+
   46838:	050f 07f0      	movepw %sp@(2032),%d2
   4683c:	0b02           	btst %d5,%d2
   4683e:	4ff0 0180      	lea @(0,%d0:w),%sp
   46842:	07e0           	bset %d3,%a0@-
   46844:	01c0           	bset %d0,%d0
   46846:	8fe0           	divsw %a0@-,%d7
   46848:	00e0           	.short 0x00e0
   4684a:	0fc0           	bset %d7,%d0
   4684c:	0060 0fc0      	oriw #4032,%a0@-
   46850:	0010 3f80      	orib #-128,%a0@
   46854:	0000 bf00      	orib #0,%d0
   46858:	0001 fe00      	orib #0,%d1
   4685c:	0003 fc00      	orib #0,%d3
   46860:	0009           	.short 0x0009
   46862:	f000           	.short 0xf000
	...
   46878:	003c 3c00      	orib #0,%ccr
   4687c:	00fe           	.short 0x00fe
   4687e:	5f00           	subqb #7,%d0
   46880:	01ff           	.short 0x01ff
   46882:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   46886:	bfc0           	cmpal %d0,%sp
   46888:	06ff           	.short 0x06ff
   4688a:	5fe0           	sle %a0@-
   4688c:	0dff           	.short 0x0dff
   4688e:	bff0 09ff 9ff0 	cmpal @(ffffffff9ff00dff)@(ffffffffbff00aff),%sp
   46894:	0dff bff0 0aff 
   4689a:	fff0           	.short 0xfff0
   4689c:	0cff           	.short 0x0cff
   4689e:	bff0 067f      	cmpal %a0@(7f,%d0:w:8),%sp
   468a2:	ffe0           	.short 0xffe0
   468a4:	063f           	.short 0x063f
   468a6:	7fe0           	mvzw %a0@-,%d7
   468a8:	031f           	btst %d1,%sp@+
   468aa:	ffc0           	.short 0xffc0
   468ac:	039f           	bclr %d1,%sp@+
   468ae:	ffc0           	.short 0xffc0
   468b0:	01ef ff80      	bset %d0,%sp@(-128)
   468b4:	00ff           	.short 0x00ff
   468b6:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   468ba:	fe00 001f      	cp1ldb %d0,%d0,#1,#31
   468be:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   468c2:	f000           	.short 0xf000
	...
   468d8:	003c 3c00      	orib #0,%ccr
   468dc:	00fe           	.short 0x00fe
   468de:	7f00           	mvsb %d0,%d7
   468e0:	01ff           	.short 0x01ff
   468e2:	ff80 03ff      	cp1stl %d0,%d0,#2,#511
   468e6:	ffc0           	.short 0xffc0
   468e8:	07ff           	.short 0x07ff
   468ea:	ffe0           	.short 0xffe0
   468ec:	0fff           	.short 0x0fff
   468ee:	fff0           	.short 0xfff0
   468f0:	0fff           	.short 0x0fff
   468f2:	fff0           	.short 0xfff0
   468f4:	0fff           	.short 0x0fff
   468f6:	fff0           	.short 0xfff0
   468f8:	0fff           	.short 0x0fff
   468fa:	fff0           	.short 0xfff0
   468fc:	0fff           	.short 0x0fff
   468fe:	fff0           	.short 0xfff0
   46900:	07ff           	.short 0x07ff
   46902:	ffe0           	.short 0xffe0
   46904:	07ff           	.short 0x07ff
   46906:	ffe0           	.short 0xffe0
   46908:	03ff           	.short 0x03ff
   4690a:	ffc0           	.short 0xffc0
   4690c:	03ff           	.short 0x03ff
   4690e:	ffc0           	.short 0xffc0
   46910:	01ff           	.short 0x01ff
   46912:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   46916:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   4691a:	fe00 001f      	cp1ldb %d0,%d0,#1,#31
   4691e:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   46922:	f000           	.short 0xf000
	...
   46938:	2000           	movel %d0,%d0
   4693a:	0000 1000      	orib #0,%d0
   4693e:	0008           	.short 0x0008
   46940:	0800 0008      	btst #8,%d0
   46944:	1200           	moveb %d0,%d1
   46946:	0080 0400 0008 	oril #67108872,%d0
   4694c:	0048           	.short 0x0048
   4694e:	2408           	movel %a0,%d2
   46950:	0240 00a8      	andiw #168,%d0
   46954:	208d           	movel %a5,%a0@
   46956:	3008           	movew %a0,%d0
   46958:	11a5 eb50      	moveb %a5@-,%a0@(0)
   4695c:	0021 6280      	orib #-128,%a1@-
   46960:	0003 c000      	orib #0,%d3
   46964:	0003 c000      	orib #0,%d3
   46968:	0000 0000      	orib #0,%d0
   4696c:	0002 8000      	orib #0,%d2
   46970:	0002 8000      	orib #0,%d2
	...
   469a0:	1000           	moveb %d0,%d0
   469a2:	0000 0400      	orib #0,%d0
   469a6:	0008           	.short 0x0008
   469a8:	1a20           	moveb %a0@-,%d5
   469aa:	0820 0d00      	btst #0,%a0@-
   469ae:	00a0 0900 0060 	oril #150995040,%a0@-
   469b4:	0630 22c0 0514 	addib #-64,%a0@(0)@(0,%d0:w:4)
   469ba:	7040           	moveq #64,%d0
   469bc:	00b0 f200 0007 	oril #-234881017,%a0@(0,%fp:w)
   469c2:	e000 
   469c4:	0002 c000      	orib #0,%d2
   469c8:	0001 0000      	orib #0,%d1
   469cc:	0000 0000      	orib #0,%d0
   469d0:	0002 8000      	orib #0,%d2
	...
   469f8:	2000           	movel %d0,%d0
   469fa:	0008           	.short 0x0008
   469fc:	3000           	movew %d0,%d0
   469fe:	0018 3800      	orib #0,%a0@+
   46a02:	0038 3e00 00f8 	orib #0,0xf8
   46a08:	3e20           	movew %a0@-,%d7
   46a0a:	08f8 2f48 25e8 	bset #72,0x25e8
   46a10:	2fc8           	.short 0x2fc8
   46a12:	27e8           	.short 0x27e8
   46a14:	27fd           	.short 0x27fd
   46a16:	7fc8           	mvzw %a0,%d7
   46a18:	17ff           	.short 0x17ff
   46a1a:	ffd0           	.short 0xffd0
   46a1c:	02ff           	.short 0x02ff
   46a1e:	fe80 004d      	cp1ldl %d0,%d0,#1,#77
   46a22:	6400 0007      	bccw 0x46a2b
   46a26:	c000           	andb %d0,%d0
   46a28:	0003 8000      	orib #0,%d3
   46a2c:	0002 8000      	orib #0,%d2
   46a30:	0002 8000      	orib #0,%d2
	...
   46a58:	2000           	movel %d0,%d0
   46a5a:	0008           	.short 0x0008
   46a5c:	3000           	movew %d0,%d0
   46a5e:	0018 3800      	orib #0,%a0@+
   46a62:	0038 3e00 00f8 	orib #0,0xf8
   46a68:	3e20           	movew %a0@-,%d7
   46a6a:	08f8 2f48 25e8 	bset #72,0x25e8
   46a70:	2fc8           	.short 0x2fc8
   46a72:	27e8           	.short 0x27e8
   46a74:	27fd           	.short 0x27fd
   46a76:	7fc8           	mvzw %a0,%d7
   46a78:	17ff           	.short 0x17ff
   46a7a:	ffd0           	.short 0xffd0
   46a7c:	02ff           	.short 0x02ff
   46a7e:	fe80 004f      	cp1ldl %d0,%d0,#1,#79
   46a82:	e400           	asrb #2,%d0
   46a84:	0007 c000      	orib #0,%d7
   46a88:	0003 8000      	orib #0,%d3
   46a8c:	0002 8000      	orib #0,%d2
   46a90:	0002 8000      	orib #0,%d2
	...
   46ab8:	1000           	moveb %d0,%d0
   46aba:	0010 0000      	orib #0,%a0@
   46abe:	0000 0000      	orib #0,%d0
   46ac2:	0000 0800      	orib #0,%d0
   46ac6:	0010 0800      	orib #0,%a0@
   46aca:	0010 0c08      	orib #8,%a0@
   46ace:	2010           	movel %a0@,%d0
   46ad0:	1200           	moveb %d0,%d1
   46ad2:	0040 019d      	oriw #413,%d0
   46ad6:	2e40           	moveal %d0,%sp
   46ad8:	0025 e400      	orib #0,%a5@-
   46adc:	0201 6080      	andib #-128,%d1
   46ae0:	0003 c000      	orib #0,%d3
   46ae4:	0003 c000      	orib #0,%d3
   46ae8:	0000 0000      	orib #0,%d0
   46aec:	0002 8000      	orib #0,%d2
   46af0:	0002 8000      	orib #0,%d2
	...
   46b30:	0040 0400      	oriw #1024,%d0
   46b34:	0070 21c0 0014 	oriw #8640,%a0@(14,%d0:w)
   46b3a:	6200 0000      	bhiw 0x46b3c
   46b3e:	e000           	asrb #8,%d0
   46b40:	0007 e000      	orib #0,%d7
   46b44:	0002 c000      	orib #0,%d2
   46b48:	0001 0000      	orib #0,%d1
   46b4c:	0000 0000      	orib #0,%d0
   46b50:	0002 8000      	orib #0,%d2
	...
   46b78:	1000           	moveb %d0,%d0
   46b7a:	0010 1000      	orib #0,%a0@
   46b7e:	0010 1000      	orib #0,%a0@
   46b82:	0010 1800      	orib #0,%a0@
   46b86:	0030 1800 0030 	orib #0,%a0@(30,%d0:w)
   46b8c:	1c08           	.short 0x1c08
   46b8e:	2070 1648      	moveal %a0@(48,%d1:w:8),%a0
   46b92:	24d0           	movel %a0@,%a2@+
   46b94:	07fd           	.short 0x07fd
   46b96:	7fc0           	mvzw %d0,%d7
   46b98:	04ff           	.short 0x04ff
   46b9a:	fe40 024f      	cp1ldw %d0,%d0,#2,#79
   46b9e:	e480           	asrl #2,%d0
   46ba0:	000d           	.short 0x000d
   46ba2:	6000 0007      	braw 0x46bab
   46ba6:	c000           	andb %d0,%d0
   46ba8:	0003 8000      	orib #0,%d3
   46bac:	0002 8000      	orib #0,%d2
   46bb0:	0002 8000      	orib #0,%d2
	...
   46bd8:	1000           	moveb %d0,%d0
   46bda:	0010 1000      	orib #0,%a0@
   46bde:	0010 1000      	orib #0,%a0@
   46be2:	0010 1800      	orib #0,%a0@
   46be6:	0030 1800 0030 	orib #0,%a0@(30,%d0:w)
   46bec:	1c08           	.short 0x1c08
   46bee:	2070 1648      	moveal %a0@(48,%d1:w:8),%a0
   46bf2:	24d0           	movel %a0@,%a2@+
   46bf4:	07fd           	.short 0x07fd
   46bf6:	7fc0           	mvzw %d0,%d7
   46bf8:	04ff           	.short 0x04ff
   46bfa:	fe40 024f      	cp1ldw %d0,%d0,#2,#79
   46bfe:	e480           	asrl #2,%d0
   46c00:	000f           	.short 0x000f
   46c02:	e000           	asrb #8,%d0
   46c04:	0007 c000      	orib #0,%d7
   46c08:	0003 8000      	orib #0,%d3
   46c0c:	0002 8000      	orib #0,%d2
   46c10:	0002 8000      	orib #0,%d2
	...
   46c48:	0008           	.short 0x0008
   46c4a:	2000           	movel %d0,%d0
   46c4c:	0000 0000      	orib #0,%d0
   46c50:	080d           	.short 0x080d
   46c52:	2020           	movel %a0@-,%d0
   46c54:	0015 e800      	orib #0,%a5@
   46c58:	0811 6810      	btst #16,%a1@
   46c5c:	0343           	bchg %d1,%d3
   46c5e:	c080           	andl %d0,%d0
   46c60:	0003 c000      	orib #0,%d3
   46c64:	0200 0080      	andib #-128,%d0
   46c68:	0002 8000      	orib #0,%d2
   46c6c:	0002 8000      	orib #0,%d2
	...
   46cb0:	0000 2000      	orib #0,%d0
   46cb4:	0004 6000      	orib #0,%d4
   46cb8:	0000 e400      	orib #0,%d0
   46cbc:	00c7           	bitrev %d7
   46cbe:	e070           	roxrw %d0,%d0
   46cc0:	0002 c000      	orib #0,%d2
   46cc4:	0001 0000      	orib #0,%d1
   46cc8:	0000 0000      	orib #0,%d0
   46ccc:	0002 8000      	orib #0,%d2
	...
   46d08:	0008           	.short 0x0008
   46d0a:	2000           	movel %d0,%d0
   46d0c:	0008           	.short 0x0008
   46d0e:	2000           	movel %d0,%d0
   46d10:	080d           	.short 0x080d
   46d12:	6020           	bras 0x46d34
   46d14:	103f           	.short 0x103f
   46d16:	f810           	.short 0xf810
   46d18:	187f           	.short 0x187f
   46d1a:	fc30           	.short 0xfc30
   46d1c:	1fcd           	.short 0x1fcd
   46d1e:	67f0           	beqs 0x46d10
   46d20:	1487           	moveb %d7,%a2@
   46d22:	c250           	andw %a0@,%d1
   46d24:	0203 8080      	andib #-128,%d3
   46d28:	0002 8000      	orib #0,%d2
   46d2c:	0002 8000      	orib #0,%d2
	...
   46d68:	0008           	.short 0x0008
   46d6a:	2000           	movel %d0,%d0
   46d6c:	0008           	.short 0x0008
   46d6e:	2000           	movel %d0,%d0
   46d70:	080d           	.short 0x080d
   46d72:	6020           	bras 0x46d94
   46d74:	103f           	.short 0x103f
   46d76:	f810           	.short 0xf810
   46d78:	187f           	.short 0x187f
   46d7a:	fc30           	.short 0xfc30
   46d7c:	1fcf           	.short 0x1fcf
   46d7e:	e7f0 1487      	rolw %a0@(ffffffffffffff87,%d1:w:4)
   46d82:	c250           	andw %a0@,%d1
   46d84:	0203 8080      	andib #-128,%d3
   46d88:	0002 8000      	orib #0,%d2
   46d8c:	0002 8000      	orib #0,%d2
	...
   46dc0:	0008           	.short 0x0008
   46dc2:	2000           	movel %d0,%d0
   46dc4:	0000 0000      	orib #0,%d0
   46dc8:	000d           	.short 0x000d
   46dca:	2000           	movel %d0,%d0
   46dcc:	0005 e000      	orib #0,%d5
   46dd0:	0001 6000      	orib #0,%d1
   46dd4:	0003 c000      	orib #0,%d3
   46dd8:	0003 c000      	orib #0,%d3
   46ddc:	0010 0800      	orib #0,%a0@
   46de0:	0092 8800 0022 	oril #-2013265886,%a2@
   46de6:	8400           	orb %d0,%d2
   46de8:	0080 0300 0980 	oril #50334080,%d0
   46dee:	00a0 0100 0080 	oril #16777344,%a0@-
   46df4:	0400 0020      	subib #32,%d0
   46df8:	0800 0010      	btst #16,%d0
	...
   46e28:	0000 2000      	orib #0,%d0
   46e2c:	0004 6000      	orib #0,%d4
   46e30:	0000 e000      	orib #0,%d0
   46e34:	0007 e000      	orib #0,%d7
   46e38:	000a           	.short 0x000a
   46e3a:	e000           	asrb #8,%d0
   46e3c:	0005 4000      	orib #0,%d5
   46e40:	0000 0200      	orib #0,%d0
   46e44:	0002 8000      	orib #0,%d2
   46e48:	0040 0000      	oriw #0,%d0
	...
   46e54:	0200 0010      	andib #16,%d0
	...
   46e80:	0008           	.short 0x0008
   46e82:	2000           	movel %d0,%d0
   46e84:	0008           	.short 0x0008
   46e86:	2000           	movel %d0,%d0
   46e88:	000d           	.short 0x000d
   46e8a:	6000 000f      	braw 0x46e9b
   46e8e:	e000           	asrb #8,%d0
   46e90:	001f f000      	orib #0,%sp@+
   46e94:	001d 7000      	orib #0,%a5@+
   46e98:	001f f000      	orib #0,%sp@+
   46e9c:	0037 d800 00b2 	orib #0,%sp@(ffffffffffffffb2,%d0:w)
   46ea2:	9a00           	subb %d0,%d5
   46ea4:	0162           	bchg %d0,%a2@-
   46ea6:	8d00           	sbcd %d0,%d6
   46ea8:	01c0           	bset %d0,%d0
   46eaa:	0700           	btst %d3,%d0
   46eac:	0b80           	bclr %d5,%d0
   46eae:	03a0           	bclr %d1,%a0@-
   46eb0:	1300           	moveb %d0,%a1@-
   46eb2:	0190           	bclr %d0,%a0@
   46eb4:	1e00           	moveb %d0,%d7
   46eb6:	00f0 1800 0030 	chk2b %a0@(30,%d0:w),%d1
	...
   46ee0:	0008           	.short 0x0008
   46ee2:	2000           	movel %d0,%d0
   46ee4:	0008           	.short 0x0008
   46ee6:	2000           	movel %d0,%d0
   46ee8:	000d           	.short 0x000d
   46eea:	6000 000f      	braw 0x46efb
   46eee:	e000           	asrb #8,%d0
   46ef0:	001f f000      	orib #0,%sp@+
   46ef4:	001f f000      	orib #0,%sp@+
   46ef8:	001f f000      	orib #0,%sp@+
   46efc:	0037 d800 00b2 	orib #0,%sp@(ffffffffffffffb2,%d0:w)
   46f02:	9a00           	subb %d0,%d5
   46f04:	0162           	bchg %d0,%a2@-
   46f06:	8d00           	sbcd %d0,%d6
   46f08:	01c0           	bset %d0,%d0
   46f0a:	0700           	btst %d3,%d0
   46f0c:	0b80           	bclr %d5,%d0
   46f0e:	03a0           	bclr %d1,%a0@-
   46f10:	1300           	moveb %d0,%a1@-
   46f12:	0190           	bclr %d0,%a0@
   46f14:	1e00           	moveb %d0,%d7
   46f16:	00f0 1800 0030 	chk2b %a0@(30,%d0:w),%d1
	...
   46f3c:	0008           	.short 0x0008
   46f3e:	2000           	movel %d0,%d0
   46f40:	0000 0000      	orib #0,%d0
   46f44:	000d           	.short 0x000d
   46f46:	2000           	movel %d0,%d0
   46f48:	0005 e000      	orib #0,%d5
   46f4c:	0001 6000      	orib #0,%d1
   46f50:	0043 c000      	oriw #-16384,%d3
   46f54:	0033 cc00 0020 	orib #0,%a3@(20,%d0:w)
   46f5a:	0400 0042      	subib #66,%d0
   46f5e:	8200           	orb %d0,%d1
   46f60:	0002 8100      	orib #0,%d2
   46f64:	0040 0200      	oriw #512,%d0
   46f68:	0080 0100 0080 	oril #16777344,%d0
   46f6e:	0100           	btst %d0,%d0
   46f70:	0180           	bclr %d0,%d0
   46f72:	0000 0080      	orib #-128,%d0
   46f76:	0100           	btst %d0,%d0
   46f78:	0040 0400      	oriw #1024,%d0
	...
   46f84:	0080 0200 0000 	oril #33554432,%d0
	...
   46fa6:	2000           	movel %d0,%d0
   46fa8:	0004 6000      	orib #0,%d4
   46fac:	0020 e800      	orib #0,%a0@-
   46fb0:	0007 e000      	orib #0,%d7
   46fb4:	0002 c000      	orib #0,%d2
   46fb8:	0001 0000      	orib #0,%d1
   46fbc:	0000 0000      	orib #0,%d0
   46fc0:	00c2           	bitrev %d2
   46fc2:	8600           	orb %d0,%d3
   46fc4:	0000 0100      	orib #0,%d0
	...
   46ffc:	0008           	.short 0x0008
   46ffe:	2000           	movel %d0,%d0
   47000:	0008           	.short 0x0008
   47002:	2000           	movel %d0,%d0
   47004:	000d           	.short 0x000d
   47006:	6000 000f      	braw 0x47017
   4700a:	e000           	asrb #8,%d0
   4700c:	002f e800 005d 	orib #0,%sp@(93)
   47012:	7400           	moveq #0,%d2
   47014:	0077 dc00 0063 	oriw #-9216,%sp@(63,%d0:w)
   4701a:	8c00           	orb %d0,%d6
   4701c:	00c2           	bitrev %d2
   4701e:	8600           	orb %d0,%d3
   47020:	01c2           	bset %d0,%d2
   47022:	8700           	sbcd %d0,%d3
   47024:	01c0           	bset %d0,%d0
   47026:	0700           	btst %d3,%d0
   47028:	0180           	bclr %d0,%d0
   4702a:	0300           	btst %d1,%d0
   4702c:	0180           	bclr %d0,%d0
   4702e:	0300           	btst %d1,%d0
   47030:	0180           	bclr %d0,%d0
   47032:	0300           	btst %d1,%d0
   47034:	0180           	bclr %d0,%d0
   47036:	0300           	btst %d1,%d0
   47038:	0140           	bchg %d0,%d0
   4703a:	0500           	btst %d2,%d0
   4703c:	0100           	btst %d0,%d0
   4703e:	0100           	btst %d0,%d0
   47040:	0100           	btst %d0,%d0
   47042:	0100           	btst %d0,%d0
   47044:	0080 0200 0000 	oril #33554432,%d0
	...
   4705a:	0000 0008      	orib #8,%d0
   4705e:	2000           	movel %d0,%d0
   47060:	0008           	.short 0x0008
   47062:	2000           	movel %d0,%d0
   47064:	000d           	.short 0x000d
   47066:	6000 000f      	braw 0x47077
   4706a:	e000           	asrb #8,%d0
   4706c:	002f e800 005f 	orib #0,%sp@(95)
   47072:	f400           	.short 0xf400
   47074:	0077 dc00 0063 	oriw #-9216,%sp@(63,%d0:w)
   4707a:	8c00           	orb %d0,%d6
   4707c:	00c2           	bitrev %d2
   4707e:	8600           	orb %d0,%d3
   47080:	01c2           	bset %d0,%d2
   47082:	8700           	sbcd %d0,%d3
   47084:	01c0           	bset %d0,%d0
   47086:	0700           	btst %d3,%d0
   47088:	0180           	bclr %d0,%d0
   4708a:	0300           	btst %d1,%d0
   4708c:	0180           	bclr %d0,%d0
   4708e:	0300           	btst %d1,%d0
   47090:	0180           	bclr %d0,%d0
   47092:	0300           	btst %d1,%d0
   47094:	0180           	bclr %d0,%d0
   47096:	0300           	btst %d1,%d0
   47098:	0140           	bchg %d0,%d0
   4709a:	0500           	btst %d2,%d0
   4709c:	0100           	btst %d0,%d0
   4709e:	0100           	btst %d0,%d0
   470a0:	0100           	btst %d0,%d0
   470a2:	0100           	btst %d0,%d0
   470a4:	0080 0200 0000 	oril #33554432,%d0
	...
   470be:	0000 0008      	orib #8,%d0
   470c2:	2000           	movel %d0,%d0
   470c4:	0000 0000      	orib #0,%d0
   470c8:	000d           	.short 0x000d
   470ca:	2000           	movel %d0,%d0
   470cc:	0005 e000      	orib #0,%d5
   470d0:	0001 6000      	orib #0,%d1
   470d4:	0023 c400      	orib #0,%a3@-
   470d8:	00a3 d200 0100 	oril #-771751680,%a3@-
   470de:	0100           	btst %d0,%d0
   470e0:	0102           	btst %d0,%d2
   470e2:	8080           	orl %d0,%d0
   470e4:	0002 8000      	orib #0,%d2
   470e8:	0000 0000      	orib #0,%d0
   470ec:	0100           	btst %d0,%d0
   470ee:	0080 0000 0000 	oril #0,%d0
	...
   470fc:	0080 0200 0000 	oril #33554432,%d0
	...
   4712a:	2000           	movel %d0,%d0
   4712c:	0024 6800      	orib #0,%a4@-
   47130:	0000 e000      	orib #0,%d0
   47134:	0057 e200      	oriw #-7680,%sp@
   47138:	0052 c500      	oriw #-15104,%a2@
   4713c:	0041 0400      	oriw #1024,%d1
   47140:	0000 0000      	orib #0,%d0
   47144:	0002 8000      	orib #0,%d2
	...
   47180:	0008           	.short 0x0008
   47182:	2000           	movel %d0,%d0
   47184:	0008           	.short 0x0008
   47186:	2000           	movel %d0,%d0
   47188:	000d           	.short 0x000d
   4718a:	6000 002f      	braw 0x471bb
   4718e:	e800           	asrb #4,%d0
   47190:	005f f400      	oriw #-3072,%sp@+
   47194:	00fd           	.short 0x00fd
   47196:	7e00           	moveq #0,%d7
   47198:	01f7 df00      	bset %d0,%sp@(0,%a5:l:8)
   4719c:	01c3           	bset %d0,%d3
   4719e:	8700           	sbcd %d0,%d3
   471a0:	0302           	btst %d1,%d2
   471a2:	8180 0202      	unpk %d0,%d0,#514
   471a6:	8080           	orl %d0,%d0
   471a8:	0200 0080      	andib #-128,%d0
   471ac:	0300           	btst %d1,%d0
   471ae:	0180           	bclr %d0,%d0
   471b0:	0100           	btst %d0,%d0
   471b2:	0100           	btst %d0,%d0
   471b4:	0100           	btst %d0,%d0
   471b6:	0100           	btst %d0,%d0
   471b8:	0100           	btst %d0,%d0
   471ba:	0100           	btst %d0,%d0
   471bc:	0080 0200 0000 	oril #33554432,%d0
	...
   471de:	0000 0008      	orib #8,%d0
   471e2:	2000           	movel %d0,%d0
   471e4:	0008           	.short 0x0008
   471e6:	2000           	movel %d0,%d0
   471e8:	000d           	.short 0x000d
   471ea:	6000 002f      	braw 0x4721b
   471ee:	e800           	asrb #4,%d0
   471f0:	005f f400      	oriw #-3072,%sp@+
   471f4:	00ff           	.short 0x00ff
   471f6:	fe00 01f7      	cp1ldb %d0,%d0,#1,#503
   471fa:	df00           	addxb %d0,%d7
   471fc:	01c3           	bset %d0,%d3
   471fe:	8700           	sbcd %d0,%d3
   47200:	0302           	btst %d1,%d2
   47202:	8180 0202      	unpk %d0,%d0,#514
   47206:	8080           	orl %d0,%d0
   47208:	0200 0080      	andib #-128,%d0
   4720c:	0300           	btst %d1,%d0
   4720e:	0180           	bclr %d0,%d0
   47210:	0100           	btst %d0,%d0
   47212:	0100           	btst %d0,%d0
   47214:	0100           	btst %d0,%d0
   47216:	0100           	btst %d0,%d0
   47218:	0100           	btst %d0,%d0
   4721a:	0100           	btst %d0,%d0
   4721c:	0080 0200 0000 	oril #33554432,%d0
	...
   47242:	0000 0008      	orib #8,%d0
   47246:	2000           	movel %d0,%d0
   47248:	0000 0000      	orib #0,%d0
   4724c:	008d 2200 0005 	oril #570425349,%d5
   47252:	e000           	asrb #8,%d0
   47254:	00c1           	bitrev %d1
   47256:	6600 0183      	bnew 0x473db
   4725a:	c300           	abcd %d0,%d1
   4725c:	0403 c020      	subib #32,%d3
   47260:	0000 0000      	orib #0,%d0
   47264:	0002 8000      	orib #0,%d2
   47268:	0002 8000      	orib #0,%d2
   4726c:	0000 0000      	orib #0,%d0
   47270:	0400 0040      	subib #64,%d0
	...
   472ac:	0000 2000      	orib #0,%d0
   472b0:	0004 6000      	orib #0,%d4
   472b4:	0030 e180 0067 	orib #-128,%a0@(67,%d0:w)
   472ba:	e0c0           	.short 0xe0c0
   472bc:	0002 c000      	orib #0,%d2
   472c0:	0001 0000      	orib #0,%d1
   472c4:	0000 0000      	orib #0,%d0
   472c8:	0002 8000      	orib #0,%d2
	...
   47304:	0008           	.short 0x0008
   47306:	2000           	movel %d0,%d0
   47308:	0008           	.short 0x0008
   4730a:	2000           	movel %d0,%d0
   4730c:	008d 6200 010f 	oril #1644167439,%d5
   47312:	e100           	aslb #8,%d0
   47314:	03ff           	.short 0x03ff
   47316:	ff80 07ed      	cp1stl %d0,%d0,#4,#493
   4731a:	6fc0           	bles 0x472dc
   4731c:	0c87 c260 0803 	cmpil #-1033893885,%d7
   47322:	8020           	orb %a0@-,%d0
   47324:	0802 8020      	btst #32,%d2
   47328:	0802 8020      	btst #32,%d2
   4732c:	0800 0020      	btst #32,%d0
   47330:	0400 0040      	subib #64,%d0
	...
   47364:	0008           	.short 0x0008
   47366:	2000           	movel %d0,%d0
   47368:	0008           	.short 0x0008
   4736a:	2000           	movel %d0,%d0
   4736c:	008d 6200 010f 	oril #1644167439,%d5
   47372:	e100           	aslb #8,%d0
   47374:	03ff           	.short 0x03ff
   47376:	ff80 07ef      	cp1stl %d0,%d0,#4,#495
   4737a:	efc0 0c87      	bfins %d0,%d0,%d2,7
   4737e:	c260           	andw %a0@-,%d1
   47380:	0803 8020      	btst #32,%d3
   47384:	0802 8020      	btst #32,%d2
   47388:	0802 8020      	btst #32,%d2
   4738c:	0800 0020      	btst #32,%d0
   47390:	0400 0040      	subib #64,%d0
	...
   473c8:	0088 2080 0080 	oril #545259648,%d0
   473ce:	0300           	btst %d1,%d0
   473d0:	060d           	.short 0x060d
   473d2:	2060           	moveal %a0@-,%a0
   473d4:	1015           	moveb %a5@,%d0
   473d6:	e810           	roxrb #4,%d0
   473d8:	0001 6000      	orib #0,%d1
   473dc:	0003 c000      	orib #0,%d3
   473e0:	0003 c000      	orib #0,%d3
   473e4:	0000 0000      	orib #0,%d0
   473e8:	0002 8000      	orib #0,%d2
   473ec:	0002 8000      	orib #0,%d2
	...
   4742c:	0060 00c0      	oriw #192,%a0@-
   47430:	0010 2400      	orib #0,%a0@
   47434:	0004 6000      	orib #0,%d4
   47438:	1000           	moveb %d0,%d0
   4743a:	e010           	roxrb #8,%d0
   4743c:	0007 e000      	orib #0,%d7
   47440:	0002 c000      	orib #0,%d2
   47444:	0001 0000      	orib #0,%d1
   47448:	0000 0000      	orib #0,%d0
   4744c:	0002 8000      	orib #0,%d2
	...
   47488:	0388 2380      	movepw %d1,%a0@(9088)
   4748c:	07e8 2fc0      	bset %d3,%a0@(12224)
   47490:	0e7d           	.short 0x0e7d
   47492:	7ce0           	moveq #-32,%d6
   47494:	123f           	.short 0x123f
   47496:	f890           	.short 0xf890
   47498:	102f e810      	moveb %sp@(-6128),%d0
   4749c:	000d           	.short 0x000d
   4749e:	6000 0007      	braw 0x474a7
   474a2:	c000           	andb %d0,%d0
   474a4:	0003 8000      	orib #0,%d3
   474a8:	0002 8000      	orib #0,%d2
   474ac:	0002 8000      	orib #0,%d2
	...
   474e8:	0388 2380      	movepw %d1,%a0@(9088)
   474ec:	07e8 2fc0      	bset %d3,%a0@(12224)
   474f0:	0e7d           	.short 0x0e7d
   474f2:	7ce0           	moveq #-32,%d6
   474f4:	123f           	.short 0x123f
   474f6:	f890           	.short 0xf890
   474f8:	102f e810      	moveb %sp@(-6128),%d0
   474fc:	000f           	.short 0x000f
   474fe:	e000           	asrb #8,%d0
   47500:	0007 c000      	orib #0,%d7
   47504:	0003 8000      	orib #0,%d3
   47508:	0002 8000      	orib #0,%d2
   4750c:	0002 8000      	orib #0,%d2
	...
   4753c:	0400 0020      	subib #32,%d0
   47540:	0600 0040      	addib #64,%d0
   47544:	0600 00c0      	addib #-64,%d0
   47548:	0400 0000      	subib #0,%d0
   4754c:	10c8           	.short 0x10c8
   4754e:	2310           	movel %a0@,%a1@-
   47550:	0090 1400 020d 	oril #335544845,%a0@
   47556:	3880           	movew %d0,%a4@
   47558:	0045 f400      	oriw #-3072,%d5
   4755c:	0001 6000      	orib #0,%d1
   47560:	0003 c000      	orib #0,%d3
   47564:	0003 c000      	orib #0,%d3
   47568:	0000 0000      	orib #0,%d0
   4756c:	0002 8000      	orib #0,%d2
   47570:	0002 8000      	orib #0,%d2
	...
   475a0:	0900           	btst %d4,%d0
   475a2:	0010 0900      	orib #0,%a0@
   475a6:	0120           	btst %d0,%a0@-
   475a8:	00c0           	bitrev %d0
   475aa:	00c0           	bitrev %d0
   475ac:	0120           	btst %d0,%a0@-
   475ae:	0000 0020      	orib #32,%d0
   475b2:	0a00 0030      	eorib #48,%d0
   475b6:	2400           	movel %d0,%d2
   475b8:	0014 6000      	orib #0,%a4@
   475bc:	0000 e000      	orib #0,%d0
   475c0:	0007 e000      	orib #0,%d7
   475c4:	0002 c000      	orib #0,%d2
   475c8:	0001 0000      	orib #0,%d1
   475cc:	0000 0000      	orib #0,%d0
   475d0:	0002 8000      	orib #0,%d2
	...
   475fc:	0c00 0060      	cmpib #96,%d0
   47600:	1f00           	moveb %d0,%sp@-
   47602:	01f0 1f80      	bset %d0,@(0,%d1:l:8)
   47606:	03f0 17c0      	bset %d1,@(0)
   4760a:	07d0           	bset %d3,%a0@
   4760c:	13e8 2f90 02f8 	moveb %a0@(12176),0x2f83e80
   47612:	3e80 
   47614:	027d           	.short 0x027d
   47616:	7c80           	moveq #-128,%d6
   47618:	005f f400      	oriw #-3072,%sp@+
   4761c:	000f           	.short 0x000f
   4761e:	e000           	asrb #8,%d0
   47620:	000d           	.short 0x000d
   47622:	6000 0007      	braw 0x4762b
   47626:	c000           	andb %d0,%d0
   47628:	0003 8000      	orib #0,%d3
   4762c:	0002 8000      	orib #0,%d2
   47630:	0002 8000      	orib #0,%d2
	...
   4765c:	0c00 0060      	cmpib #96,%d0
   47660:	1f00           	moveb %d0,%sp@-
   47662:	01f0 1f80      	bset %d0,@(0,%d1:l:8)
   47666:	03f0 17c0      	bset %d1,@(0)
   4766a:	07d0           	bset %d3,%a0@
   4766c:	13e8 2f90 02f8 	moveb %a0@(12176),0x2f83e80
   47672:	3e80 
   47674:	027d           	.short 0x027d
   47676:	7c80           	moveq #-128,%d6
   47678:	005f f400      	oriw #-3072,%sp@+
   4767c:	000f           	.short 0x000f
   4767e:	e000           	asrb #8,%d0
   47680:	000f           	.short 0x000f
   47682:	e000           	asrb #8,%d0
   47684:	0007 c000      	orib #0,%d7
   47688:	0003 8000      	orib #0,%d3
   4768c:	0002 8000      	orib #0,%d2
   47690:	0002 8000      	orib #0,%d2
	...
   476b8:	0000 003f      	orib #63,%d0
   476bc:	0000 0026      	orib #38,%d0
   476c0:	0000 001c      	orib #28,%d0
   476c4:	0000 0038      	orib #56,%d0
   476c8:	0000 0008      	orib #8,%d0
   476cc:	0000 810c      	orib #12,%d0
   476d0:	0000 00fa      	orib #-6,%d0
   476d4:	0000 007a      	orib #122,%d0
   476d8:	0001 04b0      	orib #-80,%d1
   476dc:	0000 0b78      	orib #120,%d0
   476e0:	0000 010d      	orib #13,%d0
   476e4:	0000 00f9      	orib #-7,%d0
   476e8:	0002 0f72      	orib #114,%d2
   476ec:	0000 25f0      	orib #-16,%d0
   476f0:	0000 dcbc      	orib #-68,%d0
   476f4:	0001 be7f      	orib #127,%d1
   476f8:	0000 7eff      	orib #-1,%d0
   476fc:	0001 feff      	orib #-1,%d1
   47700:	0001 feff      	orib #-1,%d1
   47704:	0001 feff      	orib #-1,%d1
   47708:	0003 fdbf      	orib #-65,%d3
   4770c:	0000 f99f      	orib #-97,%d0
   47710:	0000 0000      	orib #0,%d0
   47714:	0000 0007      	orib #7,%d0
   47718:	0000 0000      	orib #0,%d0
   4771c:	0000 0001      	orib #1,%d0
   47720:	0000 0003      	orib #3,%d0
   47724:	0000 0007      	orib #7,%d0
   47728:	0000 0007      	orib #7,%d0
   4772c:	0000 0003      	orib #3,%d0
   47730:	0000 0005      	orib #5,%d0
   47734:	0001 0005      	orib #5,%d1
   47738:	0000 000f      	orib #15,%d0
   4773c:	0000 0007      	orib #7,%d0
   47740:	0000 0012      	orib #18,%d0
   47744:	0002 0006      	orib #6,%d2
   47748:	0000 0005      	orib #5,%d0
   4774c:	0000 0201      	orib #1,%d0
   47750:	0000 1d78      	orib #120,%d0
   47754:	0002 3e7c      	orib #124,%d2
   47758:	0002 3e7f      	orib #127,%d2
   4775c:	0000 7e7f      	orib #127,%d0
   47760:	0000 fe7f      	orib #127,%d0
   47764:	0000 fe7f      	orib #127,%d0
   47768:	0000 fd7f      	orib #127,%d0
   4776c:	0002 fdbf      	orib #-65,%d2
   47770:	0000 0000      	orib #0,%d0
   47774:	0000 007f      	orib #127,%d0
   47778:	0000 03ff      	orib #-1,%d0
   4777c:	0000 0fff      	orib #-1,%d0
   47780:	0000 1fff      	orib #-1,%d0
   47784:	0000 3fff      	orib #-1,%d0
   47788:	0000 7fff      	orib #-1,%d0
   4778c:	0000 ffff      	orib #-1,%d0
   47790:	0000 ffff      	orib #-1,%d0
   47794:	0001 ffff      	orib #-1,%d1
   47798:	0001 ffff      	orib #-1,%d1
   4779c:	0001 ffff      	orib #-1,%d1
   477a0:	0001 ffff      	orib #-1,%d1
   477a4:	0003 ffff      	orib #-1,%d3
   477a8:	0003 ffff      	orib #-1,%d3
   477ac:	0003 ffff      	orib #-1,%d3
   477b0:	0003 ffff      	orib #-1,%d3
   477b4:	0003 ffff      	orib #-1,%d3
   477b8:	0003 ffff      	orib #-1,%d3
   477bc:	0003 ffff      	orib #-1,%d3
   477c0:	0003 ffff      	orib #-1,%d3
   477c4:	0003 ffff      	orib #-1,%d3
   477c8:	0003 ffff      	orib #-1,%d3
   477cc:	0003 ffff      	orib #-1,%d3
   477d0:	0000 0000      	orib #0,%d0
   477d4:	0000 007f      	orib #127,%d0
   477d8:	0000 03ff      	orib #-1,%d0
   477dc:	0000 0fff      	orib #-1,%d0
   477e0:	0000 1fff      	orib #-1,%d0
   477e4:	0000 3fff      	orib #-1,%d0
   477e8:	0000 7fff      	orib #-1,%d0
   477ec:	0000 ffff      	orib #-1,%d0
   477f0:	0000 ffff      	orib #-1,%d0
   477f4:	0001 ffff      	orib #-1,%d1
   477f8:	0001 ffff      	orib #-1,%d1
   477fc:	0001 ffff      	orib #-1,%d1
   47800:	0001 ffff      	orib #-1,%d1
   47804:	0003 ffff      	orib #-1,%d3
   47808:	0003 ffff      	orib #-1,%d3
   4780c:	0003 ffff      	orib #-1,%d3
   47810:	0003 ffff      	orib #-1,%d3
   47814:	0003 ffff      	orib #-1,%d3
   47818:	0003 ffff      	orib #-1,%d3
   4781c:	0003 ffff      	orib #-1,%d3
   47820:	0003 ffff      	orib #-1,%d3
   47824:	0003 ffff      	orib #-1,%d3
   47828:	0003 ffff      	orib #-1,%d3
   4782c:	0003 ffff      	orib #-1,%d3
	...
   47838:	0000 003f      	orib #63,%d0
   4783c:	0000 0026      	orib #38,%d0
   47840:	0000 001c      	orib #28,%d0
   47844:	0000 0038      	orib #56,%d0
   47848:	0000 0008      	orib #8,%d0
   4784c:	0000 810c      	orib #12,%d0
   47850:	0000 00fa      	orib #-6,%d0
   47854:	0000 007a      	orib #122,%d0
   47858:	0001 04b0      	orib #-80,%d1
   4785c:	0000 0b78      	orib #120,%d0
   47860:	0000 010d      	orib #13,%d0
   47864:	0000 00f9      	orib #-7,%d0
   47868:	0002 0f72      	orib #114,%d2
   4786c:	0000 25f0      	orib #-16,%d0
   47870:	0000 dcbc      	orib #-68,%d0
   47874:	0001 be7f      	orib #127,%d1
   47878:	0000 7eff      	orib #-1,%d0
   4787c:	0001 feff      	orib #-1,%d1
   47880:	0001 feff      	orib #-1,%d1
   47884:	0001 feff      	orib #-1,%d1
   47888:	0003 fdbf      	orib #-65,%d3
   4788c:	0000 f99f      	orib #-97,%d0
   47890:	0000 0000      	orib #0,%d0
   47894:	0000 0007      	orib #7,%d0
   47898:	0000 0000      	orib #0,%d0
   4789c:	0000 0001      	orib #1,%d0
   478a0:	0000 0003      	orib #3,%d0
   478a4:	0000 0007      	orib #7,%d0
   478a8:	0000 0007      	orib #7,%d0
   478ac:	0000 0003      	orib #3,%d0
   478b0:	0000 0005      	orib #5,%d0
   478b4:	0001 0005      	orib #5,%d1
   478b8:	0000 000f      	orib #15,%d0
   478bc:	0000 0007      	orib #7,%d0
   478c0:	0000 0012      	orib #18,%d0
   478c4:	0002 0006      	orib #6,%d2
   478c8:	0000 0005      	orib #5,%d0
   478cc:	0000 0201      	orib #1,%d0
   478d0:	0000 1d78      	orib #120,%d0
   478d4:	0002 3e7c      	orib #124,%d2
   478d8:	0002 3e7f      	orib #127,%d2
   478dc:	0000 7e7f      	orib #127,%d0
   478e0:	0000 fe7f      	orib #127,%d0
   478e4:	0000 fe7f      	orib #127,%d0
   478e8:	0000 fd7f      	orib #127,%d0
   478ec:	0002 fdbf      	orib #-65,%d2
   478f0:	0000 0000      	orib #0,%d0
   478f4:	0000 007f      	orib #127,%d0
   478f8:	0000 03ff      	orib #-1,%d0
   478fc:	0000 0fff      	orib #-1,%d0
   47900:	0000 1fff      	orib #-1,%d0
   47904:	0000 3fff      	orib #-1,%d0
   47908:	0000 7fff      	orib #-1,%d0
   4790c:	0000 ffff      	orib #-1,%d0
   47910:	0000 ffff      	orib #-1,%d0
   47914:	0001 ffff      	orib #-1,%d1
   47918:	0001 ffff      	orib #-1,%d1
   4791c:	0001 ffff      	orib #-1,%d1
   47920:	0001 ffff      	orib #-1,%d1
   47924:	0003 ffff      	orib #-1,%d3
   47928:	0003 ffff      	orib #-1,%d3
   4792c:	0003 ffff      	orib #-1,%d3
   47930:	0003 ffff      	orib #-1,%d3
   47934:	0003 ffff      	orib #-1,%d3
   47938:	0003 ffff      	orib #-1,%d3
   4793c:	0003 ffff      	orib #-1,%d3
   47940:	0003 ffff      	orib #-1,%d3
   47944:	0003 eff7      	orib #-9,%d3
   47948:	0003 ffff      	orib #-1,%d3
   4794c:	0003 ffff      	orib #-1,%d3
   47950:	0000 0000      	orib #0,%d0
   47954:	0000 007f      	orib #127,%d0
   47958:	0000 03ff      	orib #-1,%d0
   4795c:	0000 0fff      	orib #-1,%d0
   47960:	0000 1fff      	orib #-1,%d0
   47964:	0000 3fff      	orib #-1,%d0
   47968:	0000 7fff      	orib #-1,%d0
   4796c:	0000 ffff      	orib #-1,%d0
   47970:	0000 ffff      	orib #-1,%d0
   47974:	0001 ffff      	orib #-1,%d1
   47978:	0001 ffff      	orib #-1,%d1
   4797c:	0001 ffff      	orib #-1,%d1
   47980:	0001 ffff      	orib #-1,%d1
   47984:	0003 ffff      	orib #-1,%d3
   47988:	0003 ffff      	orib #-1,%d3
   4798c:	0003 ffff      	orib #-1,%d3
   47990:	0003 ffff      	orib #-1,%d3
   47994:	0003 ffff      	orib #-1,%d3
   47998:	0003 ffff      	orib #-1,%d3
   4799c:	0003 ffff      	orib #-1,%d3
   479a0:	0003 ffff      	orib #-1,%d3
   479a4:	0003 ffff      	orib #-1,%d3
   479a8:	0003 ffff      	orib #-1,%d3
   479ac:	0003 ffff      	orib #-1,%d3
	...
   479b8:	0000 003f      	orib #63,%d0
   479bc:	0000 0026      	orib #38,%d0
   479c0:	0000 001c      	orib #28,%d0
   479c4:	0000 0038      	orib #56,%d0
   479c8:	0000 0008      	orib #8,%d0
   479cc:	0000 810c      	orib #12,%d0
   479d0:	0000 00fa      	orib #-6,%d0
   479d4:	0000 007a      	orib #122,%d0
   479d8:	0001 04b0      	orib #-80,%d1
   479dc:	0000 0b78      	orib #120,%d0
   479e0:	0000 010d      	orib #13,%d0
   479e4:	0000 00f9      	orib #-7,%d0
   479e8:	0002 0f72      	orib #114,%d2
   479ec:	0000 25f0      	orib #-16,%d0
   479f0:	0000 dcbc      	orib #-68,%d0
   479f4:	0001 be7f      	orib #127,%d1
   479f8:	0000 7eff      	orib #-1,%d0
   479fc:	0001 feff      	orib #-1,%d1
   47a00:	0001 feff      	orib #-1,%d1
   47a04:	0001 feff      	orib #-1,%d1
   47a08:	0003 fdbf      	orib #-65,%d3
   47a0c:	0000 f99f      	orib #-97,%d0
   47a10:	0000 0000      	orib #0,%d0
   47a14:	0000 0007      	orib #7,%d0
   47a18:	0000 0000      	orib #0,%d0
   47a1c:	0000 0001      	orib #1,%d0
   47a20:	0000 0003      	orib #3,%d0
   47a24:	0000 0007      	orib #7,%d0
   47a28:	0000 0007      	orib #7,%d0
   47a2c:	0000 0003      	orib #3,%d0
   47a30:	0000 0005      	orib #5,%d0
   47a34:	0001 0005      	orib #5,%d1
   47a38:	0000 000f      	orib #15,%d0
   47a3c:	0000 0007      	orib #7,%d0
   47a40:	0000 0012      	orib #18,%d0
   47a44:	0002 0006      	orib #6,%d2
   47a48:	0000 0005      	orib #5,%d0
   47a4c:	0000 0201      	orib #1,%d0
   47a50:	0000 1d78      	orib #120,%d0
   47a54:	0002 3e7c      	orib #124,%d2
   47a58:	0002 3e7f      	orib #127,%d2
   47a5c:	0000 7e7f      	orib #127,%d0
   47a60:	0000 fe7f      	orib #127,%d0
   47a64:	0000 fe7f      	orib #127,%d0
   47a68:	0000 fd7f      	orib #127,%d0
   47a6c:	0002 fdbf      	orib #-65,%d2
   47a70:	0000 0000      	orib #0,%d0
   47a74:	0000 007f      	orib #127,%d0
   47a78:	0000 03ff      	orib #-1,%d0
   47a7c:	0000 0fff      	orib #-1,%d0
   47a80:	0000 1fff      	orib #-1,%d0
   47a84:	0000 3fff      	orib #-1,%d0
   47a88:	0000 7fff      	orib #-1,%d0
   47a8c:	0000 ffff      	orib #-1,%d0
   47a90:	0000 ffff      	orib #-1,%d0
   47a94:	0001 ffff      	orib #-1,%d1
   47a98:	0001 ffff      	orib #-1,%d1
   47a9c:	0001 ffff      	orib #-1,%d1
   47aa0:	0001 ffff      	orib #-1,%d1
   47aa4:	0003 ffff      	orib #-1,%d3
   47aa8:	0003 ffff      	orib #-1,%d3
   47aac:	0003 ffff      	orib #-1,%d3
   47ab0:	0003 ffff      	orib #-1,%d3
   47ab4:	0003 ffff      	orib #-1,%d3
   47ab8:	0003 ffff      	orib #-1,%d3
   47abc:	0003 ffff      	orib #-1,%d3
   47ac0:	0003 eff7      	orib #-9,%d3
   47ac4:	0003 c7e3      	orib #-29,%d3
   47ac8:	0003 eff7      	orib #-9,%d3
   47acc:	0003 ffff      	orib #-1,%d3
   47ad0:	0000 0000      	orib #0,%d0
   47ad4:	0000 007f      	orib #127,%d0
   47ad8:	0000 03ff      	orib #-1,%d0
   47adc:	0000 0fff      	orib #-1,%d0
   47ae0:	0000 1fff      	orib #-1,%d0
   47ae4:	0000 3fff      	orib #-1,%d0
   47ae8:	0000 7fff      	orib #-1,%d0
   47aec:	0000 ffff      	orib #-1,%d0
   47af0:	0000 ffff      	orib #-1,%d0
   47af4:	0001 ffff      	orib #-1,%d1
   47af8:	0001 ffff      	orib #-1,%d1
   47afc:	0001 ffff      	orib #-1,%d1
   47b00:	0001 ffff      	orib #-1,%d1
   47b04:	0003 ffff      	orib #-1,%d3
   47b08:	0003 ffff      	orib #-1,%d3
   47b0c:	0003 ffff      	orib #-1,%d3
   47b10:	0003 ffff      	orib #-1,%d3
   47b14:	0003 ffff      	orib #-1,%d3
   47b18:	0003 ffff      	orib #-1,%d3
   47b1c:	0003 ffff      	orib #-1,%d3
   47b20:	0003 ffff      	orib #-1,%d3
   47b24:	0003 ffff      	orib #-1,%d3
   47b28:	0003 ffff      	orib #-1,%d3
   47b2c:	0003 ffff      	orib #-1,%d3
	...
   47b38:	0000 003f      	orib #63,%d0
   47b3c:	0000 0026      	orib #38,%d0
   47b40:	0000 001c      	orib #28,%d0
   47b44:	0000 0038      	orib #56,%d0
   47b48:	0000 0008      	orib #8,%d0
   47b4c:	0000 810c      	orib #12,%d0
   47b50:	0000 00fa      	orib #-6,%d0
   47b54:	0000 007a      	orib #122,%d0
   47b58:	0001 04b0      	orib #-80,%d1
   47b5c:	0000 0b78      	orib #120,%d0
   47b60:	0000 010d      	orib #13,%d0
   47b64:	0000 00f9      	orib #-7,%d0
   47b68:	0002 0f72      	orib #114,%d2
   47b6c:	0000 25f0      	orib #-16,%d0
   47b70:	0000 dcbc      	orib #-68,%d0
   47b74:	0001 be7f      	orib #127,%d1
   47b78:	0000 7eff      	orib #-1,%d0
   47b7c:	0001 feff      	orib #-1,%d1
   47b80:	0001 eef7      	orib #-9,%d1
   47b84:	0001 c6e3      	orib #-29,%d1
   47b88:	0003 edb7      	orib #-73,%d3
   47b8c:	0000 f99f      	orib #-97,%d0
   47b90:	0000 0000      	orib #0,%d0
   47b94:	0000 0007      	orib #7,%d0
   47b98:	0000 0000      	orib #0,%d0
   47b9c:	0000 0001      	orib #1,%d0
   47ba0:	0000 0003      	orib #3,%d0
   47ba4:	0000 0007      	orib #7,%d0
   47ba8:	0000 0007      	orib #7,%d0
   47bac:	0000 0003      	orib #3,%d0
   47bb0:	0000 0005      	orib #5,%d0
   47bb4:	0001 0005      	orib #5,%d1
   47bb8:	0000 000f      	orib #15,%d0
   47bbc:	0000 0007      	orib #7,%d0
   47bc0:	0000 0012      	orib #18,%d0
   47bc4:	0002 0006      	orib #6,%d2
   47bc8:	0000 0005      	orib #5,%d0
   47bcc:	0000 0201      	orib #1,%d0
   47bd0:	0000 1d78      	orib #120,%d0
   47bd4:	0002 3e7c      	orib #124,%d2
   47bd8:	0002 3e7f      	orib #127,%d2
   47bdc:	0000 7e7f      	orib #127,%d0
   47be0:	0000 ee77      	orib #119,%d0
   47be4:	0000 c663      	orib #99,%d0
   47be8:	0000 ed77      	orib #119,%d0
   47bec:	0002 fdbf      	orib #-65,%d2
   47bf0:	0000 0000      	orib #0,%d0
   47bf4:	0000 007f      	orib #127,%d0
   47bf8:	0000 03ff      	orib #-1,%d0
   47bfc:	0000 0fff      	orib #-1,%d0
   47c00:	0000 1fff      	orib #-1,%d0
   47c04:	0000 3fff      	orib #-1,%d0
   47c08:	0000 7fff      	orib #-1,%d0
   47c0c:	0000 ffff      	orib #-1,%d0
   47c10:	0000 ffff      	orib #-1,%d0
   47c14:	0001 ffff      	orib #-1,%d1
   47c18:	0001 ffff      	orib #-1,%d1
   47c1c:	0001 ffff      	orib #-1,%d1
   47c20:	0001 ffff      	orib #-1,%d1
   47c24:	0003 ffff      	orib #-1,%d3
   47c28:	0003 ffff      	orib #-1,%d3
   47c2c:	0003 ffff      	orib #-1,%d3
   47c30:	0003 ffff      	orib #-1,%d3
   47c34:	0003 ffff      	orib #-1,%d3
   47c38:	0003 ffff      	orib #-1,%d3
   47c3c:	0003 eff7      	orib #-9,%d3
   47c40:	0003 d7eb      	orib #-21,%d3
   47c44:	0003 bbdd      	orib #-35,%d3
   47c48:	0003 d7eb      	orib #-21,%d3
   47c4c:	0003 eff7      	orib #-9,%d3
   47c50:	0000 0000      	orib #0,%d0
   47c54:	0000 007f      	orib #127,%d0
   47c58:	0000 03ff      	orib #-1,%d0
   47c5c:	0000 0fff      	orib #-1,%d0
   47c60:	0000 1fff      	orib #-1,%d0
   47c64:	0000 3fff      	orib #-1,%d0
   47c68:	0000 7fff      	orib #-1,%d0
   47c6c:	0000 ffff      	orib #-1,%d0
   47c70:	0000 ffff      	orib #-1,%d0
   47c74:	0001 ffff      	orib #-1,%d1
   47c78:	0001 ffff      	orib #-1,%d1
   47c7c:	0001 ffff      	orib #-1,%d1
   47c80:	0001 ffff      	orib #-1,%d1
   47c84:	0003 ffff      	orib #-1,%d3
   47c88:	0003 ffff      	orib #-1,%d3
   47c8c:	0003 ffff      	orib #-1,%d3
   47c90:	0003 ffff      	orib #-1,%d3
   47c94:	0003 ffff      	orib #-1,%d3
   47c98:	0003 ffff      	orib #-1,%d3
   47c9c:	0003 ffff      	orib #-1,%d3
   47ca0:	0003 ffff      	orib #-1,%d3
   47ca4:	0003 ffff      	orib #-1,%d3
   47ca8:	0003 ffff      	orib #-1,%d3
   47cac:	0003 ffff      	orib #-1,%d3
	...
   47cb8:	0000 003f      	orib #63,%d0
   47cbc:	0000 0026      	orib #38,%d0
   47cc0:	0000 001c      	orib #28,%d0
   47cc4:	0000 0038      	orib #56,%d0
   47cc8:	0000 0008      	orib #8,%d0
   47ccc:	0000 810c      	orib #12,%d0
   47cd0:	0000 00fa      	orib #-6,%d0
   47cd4:	0000 007a      	orib #122,%d0
   47cd8:	0001 04b0      	orib #-80,%d1
   47cdc:	0000 0b78      	orib #120,%d0
   47ce0:	0000 010d      	orib #13,%d0
   47ce4:	0000 00f9      	orib #-7,%d0
   47ce8:	0002 0f72      	orib #114,%d2
   47cec:	0000 25f0      	orib #-16,%d0
   47cf0:	0000 dcbc      	orib #-68,%d0
   47cf4:	0001 be7f      	orib #127,%d1
   47cf8:	0000 7eff      	orib #-1,%d0
   47cfc:	0001 feff      	orib #-1,%d1
   47d00:	0001 feff      	orib #-1,%d1
   47d04:	0001 feff      	orib #-1,%d1
   47d08:	0003 fdbf      	orib #-65,%d3
   47d0c:	0000 f99f      	orib #-97,%d0
   47d10:	0000 0000      	orib #0,%d0
   47d14:	0000 0007      	orib #7,%d0
   47d18:	0000 0000      	orib #0,%d0
   47d1c:	0000 0001      	orib #1,%d0
   47d20:	0000 0003      	orib #3,%d0
   47d24:	0000 0007      	orib #7,%d0
   47d28:	0000 0007      	orib #7,%d0
   47d2c:	0000 0003      	orib #3,%d0
   47d30:	0000 0005      	orib #5,%d0
   47d34:	0001 0005      	orib #5,%d1
   47d38:	0000 000f      	orib #15,%d0
   47d3c:	0000 0007      	orib #7,%d0
   47d40:	0000 0012      	orib #18,%d0
   47d44:	0002 0006      	orib #6,%d2
   47d48:	0000 0005      	orib #5,%d0
   47d4c:	0000 0201      	orib #1,%d0
   47d50:	0000 1d78      	orib #120,%d0
   47d54:	0002 3e7c      	orib #124,%d2
   47d58:	0002 3e7f      	orib #127,%d2
   47d5c:	0000 7e7f      	orib #127,%d0
   47d60:	0000 fe7f      	orib #127,%d0
   47d64:	0000 fe7f      	orib #127,%d0
   47d68:	0000 fd7f      	orib #127,%d0
   47d6c:	0002 fdbf      	orib #-65,%d2
   47d70:	0000 0000      	orib #0,%d0
   47d74:	0000 007f      	orib #127,%d0
   47d78:	0000 03ff      	orib #-1,%d0
   47d7c:	0000 0fff      	orib #-1,%d0
   47d80:	0000 1fff      	orib #-1,%d0
   47d84:	0000 3fff      	orib #-1,%d0
   47d88:	0000 7fff      	orib #-1,%d0
   47d8c:	0000 ffff      	orib #-1,%d0
   47d90:	0000 ffff      	orib #-1,%d0
   47d94:	0001 ffff      	orib #-1,%d1
   47d98:	0001 ffff      	orib #-1,%d1
   47d9c:	0001 ffff      	orib #-1,%d1
   47da0:	0001 ffff      	orib #-1,%d1
   47da4:	0003 ffff      	orib #-1,%d3
   47da8:	0003 ffff      	orib #-1,%d3
   47dac:	0003 ffff      	orib #-1,%d3
   47db0:	0003 ffff      	orib #-1,%d3
   47db4:	0003 ffff      	orib #-1,%d3
   47db8:	0003 ffff      	orib #-1,%d3
   47dbc:	0003 ffff      	orib #-1,%d3
   47dc0:	0003 eff7      	orib #-9,%d3
   47dc4:	0003 c7e3      	orib #-29,%d3
   47dc8:	0003 eff7      	orib #-9,%d3
   47dcc:	0003 ffff      	orib #-1,%d3
   47dd0:	0000 0000      	orib #0,%d0
   47dd4:	0000 007f      	orib #127,%d0
   47dd8:	0000 03ff      	orib #-1,%d0
   47ddc:	0000 0fff      	orib #-1,%d0
   47de0:	0000 1fff      	orib #-1,%d0
   47de4:	0000 3fff      	orib #-1,%d0
   47de8:	0000 7fff      	orib #-1,%d0
   47dec:	0000 ffff      	orib #-1,%d0
   47df0:	0000 ffff      	orib #-1,%d0
   47df4:	0001 ffff      	orib #-1,%d1
   47df8:	0001 ffff      	orib #-1,%d1
   47dfc:	0001 ffff      	orib #-1,%d1
   47e00:	0001 ffff      	orib #-1,%d1
   47e04:	0003 ffff      	orib #-1,%d3
   47e08:	0003 ffff      	orib #-1,%d3
   47e0c:	0003 ffff      	orib #-1,%d3
   47e10:	0003 ffff      	orib #-1,%d3
   47e14:	0003 ffff      	orib #-1,%d3
   47e18:	0003 ffff      	orib #-1,%d3
   47e1c:	0003 ffff      	orib #-1,%d3
   47e20:	0003 ffff      	orib #-1,%d3
   47e24:	0003 ffff      	orib #-1,%d3
   47e28:	0003 ffff      	orib #-1,%d3
   47e2c:	0003 ffff      	orib #-1,%d3
	...
   47e38:	0000 003f      	orib #63,%d0
   47e3c:	0000 0026      	orib #38,%d0
   47e40:	0000 001c      	orib #28,%d0
   47e44:	0000 0038      	orib #56,%d0
   47e48:	0000 0008      	orib #8,%d0
   47e4c:	0000 810c      	orib #12,%d0
   47e50:	0000 00fa      	orib #-6,%d0
   47e54:	0000 007a      	orib #122,%d0
   47e58:	0001 04b0      	orib #-80,%d1
   47e5c:	0000 0b78      	orib #120,%d0
   47e60:	0000 010d      	orib #13,%d0
   47e64:	0000 00f9      	orib #-7,%d0
   47e68:	0002 0f72      	orib #114,%d2
   47e6c:	0000 25f0      	orib #-16,%d0
   47e70:	0000 dcbc      	orib #-68,%d0
   47e74:	0001 be7f      	orib #127,%d1
   47e78:	0000 7eff      	orib #-1,%d0
   47e7c:	0001 feff      	orib #-1,%d1
   47e80:	0001 feff      	orib #-1,%d1
   47e84:	0001 feff      	orib #-1,%d1
   47e88:	0003 fdbf      	orib #-65,%d3
   47e8c:	0000 f99f      	orib #-97,%d0
   47e90:	0000 0000      	orib #0,%d0
   47e94:	0000 0007      	orib #7,%d0
   47e98:	0000 0000      	orib #0,%d0
   47e9c:	0000 0001      	orib #1,%d0
   47ea0:	0000 0003      	orib #3,%d0
   47ea4:	0000 0007      	orib #7,%d0
   47ea8:	0000 0007      	orib #7,%d0
   47eac:	0000 0003      	orib #3,%d0
   47eb0:	0000 0005      	orib #5,%d0
   47eb4:	0001 0005      	orib #5,%d1
   47eb8:	0000 000f      	orib #15,%d0
   47ebc:	0000 0007      	orib #7,%d0
   47ec0:	0000 0012      	orib #18,%d0
   47ec4:	0002 0006      	orib #6,%d2
   47ec8:	0000 0005      	orib #5,%d0
   47ecc:	0000 0201      	orib #1,%d0
   47ed0:	0000 1d78      	orib #120,%d0
   47ed4:	0002 3e7c      	orib #124,%d2
   47ed8:	0002 3e7f      	orib #127,%d2
   47edc:	0000 7e7f      	orib #127,%d0
   47ee0:	0000 fe7f      	orib #127,%d0
   47ee4:	0000 fe7f      	orib #127,%d0
   47ee8:	0000 fd7f      	orib #127,%d0
   47eec:	0002 fdbf      	orib #-65,%d2
   47ef0:	0000 0000      	orib #0,%d0
   47ef4:	0000 007f      	orib #127,%d0
   47ef8:	0000 03ff      	orib #-1,%d0
   47efc:	0000 0fff      	orib #-1,%d0
   47f00:	0000 1fff      	orib #-1,%d0
   47f04:	0000 3fff      	orib #-1,%d0
   47f08:	0000 7fff      	orib #-1,%d0
   47f0c:	0000 ffff      	orib #-1,%d0
   47f10:	0000 ffff      	orib #-1,%d0
   47f14:	0001 ffff      	orib #-1,%d1
   47f18:	0001 ffff      	orib #-1,%d1
   47f1c:	0001 ffff      	orib #-1,%d1
   47f20:	0001 ffff      	orib #-1,%d1
   47f24:	0003 ffff      	orib #-1,%d3
   47f28:	0003 ffff      	orib #-1,%d3
   47f2c:	0003 ffff      	orib #-1,%d3
   47f30:	0003 ffff      	orib #-1,%d3
   47f34:	0003 ffff      	orib #-1,%d3
   47f38:	0003 ffff      	orib #-1,%d3
   47f3c:	0003 ffff      	orib #-1,%d3
   47f40:	0003 ffff      	orib #-1,%d3
   47f44:	0003 eff7      	orib #-9,%d3
   47f48:	0003 ffff      	orib #-1,%d3
   47f4c:	0003 ffff      	orib #-1,%d3
   47f50:	0000 0000      	orib #0,%d0
   47f54:	0000 007f      	orib #127,%d0
   47f58:	0000 03ff      	orib #-1,%d0
   47f5c:	0000 0fff      	orib #-1,%d0
   47f60:	0000 1fff      	orib #-1,%d0
   47f64:	0000 3fff      	orib #-1,%d0
   47f68:	0000 7fff      	orib #-1,%d0
   47f6c:	0000 ffff      	orib #-1,%d0
   47f70:	0000 ffff      	orib #-1,%d0
   47f74:	0001 ffff      	orib #-1,%d1
   47f78:	0001 ffff      	orib #-1,%d1
   47f7c:	0001 ffff      	orib #-1,%d1
   47f80:	0001 ffff      	orib #-1,%d1
   47f84:	0003 ffff      	orib #-1,%d3
   47f88:	0003 ffff      	orib #-1,%d3
   47f8c:	0003 ffff      	orib #-1,%d3
   47f90:	0003 ffff      	orib #-1,%d3
   47f94:	0003 ffff      	orib #-1,%d3
   47f98:	0003 ffff      	orib #-1,%d3
   47f9c:	0003 ffff      	orib #-1,%d3
   47fa0:	0003 ffff      	orib #-1,%d3
   47fa4:	0003 ffff      	orib #-1,%d3
   47fa8:	0003 ffff      	orib #-1,%d3
   47fac:	0003 ffff      	orib #-1,%d3
	...
   47fb8:	8000           	orb %d0,%d0
   47fba:	0000 0800      	orib #0,%d0
   47fbe:	0000 0000      	orib #0,%d0
   47fc2:	0000 6000      	orib #0,%d0
   47fc6:	0000 6880      	orib #-128,%d0
   47fca:	0000 1c80      	orib #-128,%d0
   47fce:	0000 1fc0      	orib #-64,%d0
   47fd2:	0000 1bf0      	orib #-16,%d0
   47fd6:	0000 bff8      	orib #-8,%d0
   47fda:	0000 4ffc      	orib #-4,%d0
   47fde:	0000 8bfe      	orib #-2,%d0
   47fe2:	0000 8ffe      	orib #-2,%d0
   47fe6:	0000 d7ff      	orib #-1,%d0
   47fea:	0000 4eff      	orib #-1,%d0
   47fee:	0000 67ff      	orib #-1,%d0
   47ff2:	0000 bbff      	orib #-1,%d0
   47ff6:	0000 f7ff      	orib #-1,%d0
   47ffa:	0000 dfff      	orib #-1,%d0
   47ffe:	0000 d7fe      	orib #-2,%d0
   48002:	0000 9dfe      	orib #-2,%d0
   48006:	0000 1e3e      	orib #62,%d0
   4800a:	0000 7fde      	orib #-34,%d0
   4800e:	0000 0000      	orib #0,%d0
   48012:	0000 f000      	orib #0,%d0
   48016:	0000 1c00      	orib #0,%d0
   4801a:	0000 f700      	orib #0,%d0
   4801e:	0000 ffc0      	orib #-64,%d0
   48022:	0000 ff60      	orib #96,%d0
   48026:	0000 ffd0      	orib #-48,%d0
   4802a:	0000 fff8      	orib #-8,%d0
   4802e:	0000 fffc      	orib #-4,%d0
   48032:	0000 fffc      	orib #-4,%d0
   48036:	0000 7ffe      	orib #-2,%d0
   4803a:	0000 fffe      	orib #-2,%d0
   4803e:	0000 ffff      	orib #-1,%d0
   48042:	0000 ffff      	orib #-1,%d0
   48046:	0000 ffff      	orib #-1,%d0
   4804a:	8000           	orb %d0,%d0
   4804c:	ffff           	.short 0xffff
   4804e:	8000           	orb %d0,%d0
   48050:	ffff           	.short 0xffff
   48052:	8000           	orb %d0,%d0
   48054:	3fff           	.short 0x3fff
   48056:	8000           	orb %d0,%d0
   48058:	1fff           	.short 0x1fff
   4805a:	8000           	orb %d0,%d0
   4805c:	9fff           	.short 0x9fff
   4805e:	8000           	orb %d0,%d0
   48060:	8fff           	.short 0x8fff
   48062:	0000 83ff      	orib #-1,%d0
   48066:	0000 05ff      	orib #-1,%d0
   4806a:	0000 0fff      	orib #-1,%d0
   4806e:	0000 0000      	orib #0,%d0
   48072:	0000 f000      	orib #0,%d0
   48076:	0000 fc00      	orib #0,%d0
   4807a:	0000 ff00      	orib #0,%d0
   4807e:	0000 ffc0      	orib #-64,%d0
   48082:	0000 ffe0      	orib #-32,%d0
   48086:	0000 fff0      	orib #-16,%d0
   4808a:	0000 fff8      	orib #-8,%d0
   4808e:	0000 fffc      	orib #-4,%d0
   48092:	0000 fffc      	orib #-4,%d0
   48096:	0000 fffe      	orib #-2,%d0
   4809a:	0000 fffe      	orib #-2,%d0
   4809e:	0000 ffff      	orib #-1,%d0
   480a2:	0000 ffff      	orib #-1,%d0
   480a6:	0000 ffff      	orib #-1,%d0
   480aa:	8000           	orb %d0,%d0
   480ac:	ffff           	.short 0xffff
   480ae:	8000           	orb %d0,%d0
   480b0:	ffff           	.short 0xffff
   480b2:	8000           	orb %d0,%d0
   480b4:	ffff           	.short 0xffff
   480b6:	8000           	orb %d0,%d0
   480b8:	ffff           	.short 0xffff
   480ba:	8000           	orb %d0,%d0
   480bc:	ffff           	.short 0xffff
   480be:	8000           	orb %d0,%d0
   480c0:	ffff           	.short 0xffff
   480c2:	0000 ffff      	orib #-1,%d0
   480c6:	0000 ffff      	orib #-1,%d0
   480ca:	0000 ffff      	orib #-1,%d0
   480ce:	0000 0000      	orib #0,%d0
   480d2:	0000 f000      	orib #0,%d0
   480d6:	0000 fc00      	orib #0,%d0
   480da:	0000 ff00      	orib #0,%d0
   480de:	0000 ffc0      	orib #-64,%d0
   480e2:	0000 ffe0      	orib #-32,%d0
   480e6:	0000 fff0      	orib #-16,%d0
   480ea:	0000 fff8      	orib #-8,%d0
   480ee:	0000 fffc      	orib #-4,%d0
   480f2:	0000 fffc      	orib #-4,%d0
   480f6:	0000 fffe      	orib #-2,%d0
   480fa:	0000 fffe      	orib #-2,%d0
   480fe:	0000 ffff      	orib #-1,%d0
   48102:	0000 ffff      	orib #-1,%d0
   48106:	0000 ffff      	orib #-1,%d0
   4810a:	8000           	orb %d0,%d0
   4810c:	ffff           	.short 0xffff
   4810e:	8000           	orb %d0,%d0
   48110:	ffff           	.short 0xffff
   48112:	8000           	orb %d0,%d0
   48114:	ffff           	.short 0xffff
   48116:	8000           	orb %d0,%d0
   48118:	ffff           	.short 0xffff
   4811a:	8000           	orb %d0,%d0
   4811c:	ffff           	.short 0xffff
   4811e:	8000           	orb %d0,%d0
   48120:	ffff           	.short 0xffff
   48122:	0000 ffff      	orib #-1,%d0
   48126:	0000 ffff      	orib #-1,%d0
   4812a:	0000 ffff      	orib #-1,%d0
	...
   48136:	0000 8000      	orib #0,%d0
   4813a:	0000 0800      	orib #0,%d0
   4813e:	0000 0000      	orib #0,%d0
   48142:	0000 6000      	orib #0,%d0
   48146:	0000 6880      	orib #-128,%d0
   4814a:	0000 1c80      	orib #-128,%d0
   4814e:	0000 1fc0      	orib #-64,%d0
   48152:	0000 1bf0      	orib #-16,%d0
   48156:	0000 bff8      	orib #-8,%d0
   4815a:	0000 4ffc      	orib #-4,%d0
   4815e:	0000 8bfe      	orib #-2,%d0
   48162:	0000 8ffe      	orib #-2,%d0
   48166:	0000 d7ff      	orib #-1,%d0
   4816a:	0000 4eff      	orib #-1,%d0
   4816e:	0000 67ff      	orib #-1,%d0
   48172:	0000 bbff      	orib #-1,%d0
   48176:	0000 f7ff      	orib #-1,%d0
   4817a:	0000 dfff      	orib #-1,%d0
   4817e:	0000 d7fe      	orib #-2,%d0
   48182:	0000 9dfe      	orib #-2,%d0
   48186:	0000 1e3e      	orib #62,%d0
   4818a:	0000 7fde      	orib #-34,%d0
   4818e:	0000 0000      	orib #0,%d0
   48192:	0000 f000      	orib #0,%d0
   48196:	0000 1c00      	orib #0,%d0
   4819a:	0000 f700      	orib #0,%d0
   4819e:	0000 ffc0      	orib #-64,%d0
   481a2:	0000 ff60      	orib #96,%d0
   481a6:	0000 ffd0      	orib #-48,%d0
   481aa:	0000 fff8      	orib #-8,%d0
   481ae:	0000 fffc      	orib #-4,%d0
   481b2:	0000 fffc      	orib #-4,%d0
   481b6:	0000 7ffe      	orib #-2,%d0
   481ba:	0000 fffe      	orib #-2,%d0
   481be:	0000 ffff      	orib #-1,%d0
   481c2:	0000 ffff      	orib #-1,%d0
   481c6:	0000 ffff      	orib #-1,%d0
   481ca:	8000           	orb %d0,%d0
   481cc:	ffff           	.short 0xffff
   481ce:	8000           	orb %d0,%d0
   481d0:	ffff           	.short 0xffff
   481d2:	8000           	orb %d0,%d0
   481d4:	3fff           	.short 0x3fff
   481d6:	8000           	orb %d0,%d0
   481d8:	1fff           	.short 0x1fff
   481da:	8000           	orb %d0,%d0
   481dc:	9fff           	.short 0x9fff
   481de:	8000           	orb %d0,%d0
   481e0:	8fff           	.short 0x8fff
   481e2:	0000 83ff      	orib #-1,%d0
   481e6:	0000 05ff      	orib #-1,%d0
   481ea:	0000 0fff      	orib #-1,%d0
   481ee:	0000 0000      	orib #0,%d0
   481f2:	0000 f000      	orib #0,%d0
   481f6:	0000 fc00      	orib #0,%d0
   481fa:	0000 ff00      	orib #0,%d0
   481fe:	0000 ffc0      	orib #-64,%d0
   48202:	0000 ffe0      	orib #-32,%d0
   48206:	0000 fff0      	orib #-16,%d0
   4820a:	0000 fff8      	orib #-8,%d0
   4820e:	0000 fffc      	orib #-4,%d0
   48212:	0000 fffc      	orib #-4,%d0
   48216:	0000 fffe      	orib #-2,%d0
   4821a:	0000 fffe      	orib #-2,%d0
   4821e:	0000 ffff      	orib #-1,%d0
   48222:	0000 ffff      	orib #-1,%d0
   48226:	0000 ffff      	orib #-1,%d0
   4822a:	8000           	orb %d0,%d0
   4822c:	ffff           	.short 0xffff
   4822e:	8000           	orb %d0,%d0
   48230:	ffff           	.short 0xffff
   48232:	8000           	orb %d0,%d0
   48234:	ffff           	.short 0xffff
   48236:	8000           	orb %d0,%d0
   48238:	ffff           	.short 0xffff
   4823a:	8000           	orb %d0,%d0
   4823c:	ffff           	.short 0xffff
   4823e:	8000           	orb %d0,%d0
   48240:	ffff           	.short 0xffff
   48242:	0000 ffff      	orib #-1,%d0
   48246:	0000 ffff      	orib #-1,%d0
   4824a:	0000 ffff      	orib #-1,%d0
   4824e:	0000 0000      	orib #0,%d0
   48252:	0000 f000      	orib #0,%d0
   48256:	0000 fc00      	orib #0,%d0
   4825a:	0000 ff00      	orib #0,%d0
   4825e:	0000 ffc0      	orib #-64,%d0
   48262:	0000 ffe0      	orib #-32,%d0
   48266:	0000 fff0      	orib #-16,%d0
   4826a:	0000 fff8      	orib #-8,%d0
   4826e:	0000 fffc      	orib #-4,%d0
   48272:	0000 fffc      	orib #-4,%d0
   48276:	0000 fffe      	orib #-2,%d0
   4827a:	0000 fffe      	orib #-2,%d0
   4827e:	0000 ffff      	orib #-1,%d0
   48282:	0000 ffff      	orib #-1,%d0
   48286:	0000 ffff      	orib #-1,%d0
   4828a:	8000           	orb %d0,%d0
   4828c:	ffff           	.short 0xffff
   4828e:	8000           	orb %d0,%d0
   48290:	ffff           	.short 0xffff
   48292:	8000           	orb %d0,%d0
   48294:	ffff           	.short 0xffff
   48296:	8000           	orb %d0,%d0
   48298:	ffff           	.short 0xffff
   4829a:	8000           	orb %d0,%d0
   4829c:	ffff           	.short 0xffff
   4829e:	8000           	orb %d0,%d0
   482a0:	ffff           	.short 0xffff
   482a2:	0000 ffff      	orib #-1,%d0
   482a6:	0000 ffff      	orib #-1,%d0
   482aa:	0000 ffff      	orib #-1,%d0
	...
   482b6:	0000 8000      	orib #0,%d0
   482ba:	0000 0800      	orib #0,%d0
   482be:	0000 0000      	orib #0,%d0
   482c2:	0000 6000      	orib #0,%d0
   482c6:	0000 6880      	orib #-128,%d0
   482ca:	0000 1c80      	orib #-128,%d0
   482ce:	0000 1fc0      	orib #-64,%d0
   482d2:	0000 1bf0      	orib #-16,%d0
   482d6:	0000 bff8      	orib #-8,%d0
   482da:	0000 4ffc      	orib #-4,%d0
   482de:	0000 8bfe      	orib #-2,%d0
   482e2:	0000 8ffe      	orib #-2,%d0
   482e6:	0000 d7ff      	orib #-1,%d0
   482ea:	0000 4eff      	orib #-1,%d0
   482ee:	0000 67ff      	orib #-1,%d0
   482f2:	0000 bbff      	orib #-1,%d0
   482f6:	0000 f7ff      	orib #-1,%d0
   482fa:	0000 dfff      	orib #-1,%d0
   482fe:	0000 d7fe      	orib #-2,%d0
   48302:	0000 9dfe      	orib #-2,%d0
   48306:	0000 1e3e      	orib #62,%d0
   4830a:	0000 7fde      	orib #-34,%d0
   4830e:	0000 0000      	orib #0,%d0
   48312:	0000 f000      	orib #0,%d0
   48316:	0000 1c00      	orib #0,%d0
   4831a:	0000 f700      	orib #0,%d0
   4831e:	0000 ffc0      	orib #-64,%d0
   48322:	0000 ff60      	orib #96,%d0
   48326:	0000 ffd0      	orib #-48,%d0
   4832a:	0000 fff8      	orib #-8,%d0
   4832e:	0000 fffc      	orib #-4,%d0
   48332:	0000 fffc      	orib #-4,%d0
   48336:	0000 7ffe      	orib #-2,%d0
   4833a:	0000 fffe      	orib #-2,%d0
   4833e:	0000 ffff      	orib #-1,%d0
   48342:	0000 ffff      	orib #-1,%d0
   48346:	0000 ffff      	orib #-1,%d0
   4834a:	8000           	orb %d0,%d0
   4834c:	ffff           	.short 0xffff
   4834e:	8000           	orb %d0,%d0
   48350:	ffff           	.short 0xffff
   48352:	8000           	orb %d0,%d0
   48354:	3fff           	.short 0x3fff
   48356:	8000           	orb %d0,%d0
   48358:	1fff           	.short 0x1fff
   4835a:	8000           	orb %d0,%d0
   4835c:	9fff           	.short 0x9fff
   4835e:	8000           	orb %d0,%d0
   48360:	8fff           	.short 0x8fff
   48362:	0000 83ff      	orib #-1,%d0
   48366:	0000 05ff      	orib #-1,%d0
   4836a:	0000 0fff      	orib #-1,%d0
   4836e:	0000 0000      	orib #0,%d0
   48372:	0000 f000      	orib #0,%d0
   48376:	0000 fc00      	orib #0,%d0
   4837a:	0000 ff00      	orib #0,%d0
   4837e:	0000 ffc0      	orib #-64,%d0
   48382:	0000 ffe0      	orib #-32,%d0
   48386:	0000 fff0      	orib #-16,%d0
   4838a:	0000 fff8      	orib #-8,%d0
   4838e:	0000 fffc      	orib #-4,%d0
   48392:	0000 fffc      	orib #-4,%d0
   48396:	0000 fffe      	orib #-2,%d0
   4839a:	0000 fffe      	orib #-2,%d0
   4839e:	0000 ffff      	orib #-1,%d0
   483a2:	0000 ffff      	orib #-1,%d0
   483a6:	0000 ffff      	orib #-1,%d0
   483aa:	8000           	orb %d0,%d0
   483ac:	ffff           	.short 0xffff
   483ae:	8000           	orb %d0,%d0
   483b0:	ffff           	.short 0xffff
   483b2:	8000           	orb %d0,%d0
   483b4:	ffff           	.short 0xffff
   483b6:	8000           	orb %d0,%d0
   483b8:	ffff           	.short 0xffff
   483ba:	8000           	orb %d0,%d0
   483bc:	ffff           	.short 0xffff
   483be:	8000           	orb %d0,%d0
   483c0:	ffff           	.short 0xffff
   483c2:	0000 ffff      	orib #-1,%d0
   483c6:	0000 ffff      	orib #-1,%d0
   483ca:	0000 ffff      	orib #-1,%d0
   483ce:	0000 0000      	orib #0,%d0
   483d2:	0000 f000      	orib #0,%d0
   483d6:	0000 fc00      	orib #0,%d0
   483da:	0000 ff00      	orib #0,%d0
   483de:	0000 ffc0      	orib #-64,%d0
   483e2:	0000 ffe0      	orib #-32,%d0
   483e6:	0000 fff0      	orib #-16,%d0
   483ea:	0000 fff8      	orib #-8,%d0
   483ee:	0000 fffc      	orib #-4,%d0
   483f2:	0000 fffc      	orib #-4,%d0
   483f6:	0000 fffe      	orib #-2,%d0
   483fa:	0000 fffe      	orib #-2,%d0
   483fe:	0000 ffff      	orib #-1,%d0
   48402:	0000 ffff      	orib #-1,%d0
   48406:	0000 ffff      	orib #-1,%d0
   4840a:	8000           	orb %d0,%d0
   4840c:	ffff           	.short 0xffff
   4840e:	8000           	orb %d0,%d0
   48410:	ffff           	.short 0xffff
   48412:	8000           	orb %d0,%d0
   48414:	ffff           	.short 0xffff
   48416:	8000           	orb %d0,%d0
   48418:	ffff           	.short 0xffff
   4841a:	8000           	orb %d0,%d0
   4841c:	ffff           	.short 0xffff
   4841e:	8000           	orb %d0,%d0
   48420:	ffff           	.short 0xffff
   48422:	0000 ffff      	orib #-1,%d0
   48426:	0000 ffff      	orib #-1,%d0
   4842a:	0000 ffff      	orib #-1,%d0
	...
   48436:	0000 8000      	orib #0,%d0
   4843a:	0000 0800      	orib #0,%d0
   4843e:	0000 0000      	orib #0,%d0
   48442:	0000 6000      	orib #0,%d0
   48446:	0000 6880      	orib #-128,%d0
   4844a:	0000 1c80      	orib #-128,%d0
   4844e:	0000 1fc0      	orib #-64,%d0
   48452:	0000 1bf0      	orib #-16,%d0
   48456:	0000 bff8      	orib #-8,%d0
   4845a:	0000 4ffc      	orib #-4,%d0
   4845e:	0000 8bfe      	orib #-2,%d0
   48462:	0000 8ffe      	orib #-2,%d0
   48466:	0000 d7ff      	orib #-1,%d0
   4846a:	0000 4eff      	orib #-1,%d0
   4846e:	0000 67ff      	orib #-1,%d0
   48472:	0000 bbff      	orib #-1,%d0
   48476:	0000 f7ff      	orib #-1,%d0
   4847a:	0000 dfff      	orib #-1,%d0
   4847e:	0000 d7fe      	orib #-2,%d0
   48482:	0000 9dfe      	orib #-2,%d0
   48486:	0000 1e3e      	orib #62,%d0
   4848a:	0000 7fde      	orib #-34,%d0
   4848e:	0000 0000      	orib #0,%d0
   48492:	0000 f000      	orib #0,%d0
   48496:	0000 1c00      	orib #0,%d0
   4849a:	0000 f700      	orib #0,%d0
   4849e:	0000 ffc0      	orib #-64,%d0
   484a2:	0000 ff60      	orib #96,%d0
   484a6:	0000 ffd0      	orib #-48,%d0
   484aa:	0000 fff8      	orib #-8,%d0
   484ae:	0000 fffc      	orib #-4,%d0
   484b2:	0000 fffc      	orib #-4,%d0
   484b6:	0000 7ffe      	orib #-2,%d0
   484ba:	0000 fffe      	orib #-2,%d0
   484be:	0000 ffff      	orib #-1,%d0
   484c2:	0000 ffff      	orib #-1,%d0
   484c6:	0000 ffff      	orib #-1,%d0
   484ca:	8000           	orb %d0,%d0
   484cc:	ffff           	.short 0xffff
   484ce:	8000           	orb %d0,%d0
   484d0:	ffff           	.short 0xffff
   484d2:	8000           	orb %d0,%d0
   484d4:	3fff           	.short 0x3fff
   484d6:	8000           	orb %d0,%d0
   484d8:	1fff           	.short 0x1fff
   484da:	8000           	orb %d0,%d0
   484dc:	9fff           	.short 0x9fff
   484de:	8000           	orb %d0,%d0
   484e0:	8fff           	.short 0x8fff
   484e2:	0000 83ff      	orib #-1,%d0
   484e6:	0000 05ff      	orib #-1,%d0
   484ea:	0000 0fff      	orib #-1,%d0
   484ee:	0000 0000      	orib #0,%d0
   484f2:	0000 f000      	orib #0,%d0
   484f6:	0000 fc00      	orib #0,%d0
   484fa:	0000 ff00      	orib #0,%d0
   484fe:	0000 ffc0      	orib #-64,%d0
   48502:	0000 ffe0      	orib #-32,%d0
   48506:	0000 fff0      	orib #-16,%d0
   4850a:	0000 fff8      	orib #-8,%d0
   4850e:	0000 fffc      	orib #-4,%d0
   48512:	0000 fffc      	orib #-4,%d0
   48516:	0000 fffe      	orib #-2,%d0
   4851a:	0000 fffe      	orib #-2,%d0
   4851e:	0000 ffff      	orib #-1,%d0
   48522:	0000 ffff      	orib #-1,%d0
   48526:	0000 ffff      	orib #-1,%d0
   4852a:	8000           	orb %d0,%d0
   4852c:	ffff           	.short 0xffff
   4852e:	8000           	orb %d0,%d0
   48530:	ffff           	.short 0xffff
   48532:	8000           	orb %d0,%d0
   48534:	ffff           	.short 0xffff
   48536:	8000           	orb %d0,%d0
   48538:	ffff           	.short 0xffff
   4853a:	8000           	orb %d0,%d0
   4853c:	ffff           	.short 0xffff
   4853e:	8000           	orb %d0,%d0
   48540:	ffff           	.short 0xffff
   48542:	0000 ffff      	orib #-1,%d0
   48546:	0000 ffff      	orib #-1,%d0
   4854a:	0000 ffff      	orib #-1,%d0
   4854e:	0000 0000      	orib #0,%d0
   48552:	0000 f000      	orib #0,%d0
   48556:	0000 fc00      	orib #0,%d0
   4855a:	0000 ff00      	orib #0,%d0
   4855e:	0000 ffc0      	orib #-64,%d0
   48562:	0000 ffe0      	orib #-32,%d0
   48566:	0000 fff0      	orib #-16,%d0
   4856a:	0000 fff8      	orib #-8,%d0
   4856e:	0000 fffc      	orib #-4,%d0
   48572:	0000 fffc      	orib #-4,%d0
   48576:	0000 fffe      	orib #-2,%d0
   4857a:	0000 fffe      	orib #-2,%d0
   4857e:	0000 ffff      	orib #-1,%d0
   48582:	0000 ffff      	orib #-1,%d0
   48586:	0000 ffff      	orib #-1,%d0
   4858a:	8000           	orb %d0,%d0
   4858c:	ffff           	.short 0xffff
   4858e:	8000           	orb %d0,%d0
   48590:	ffff           	.short 0xffff
   48592:	8000           	orb %d0,%d0
   48594:	ffff           	.short 0xffff
   48596:	8000           	orb %d0,%d0
   48598:	ffff           	.short 0xffff
   4859a:	8000           	orb %d0,%d0
   4859c:	ffff           	.short 0xffff
   4859e:	8000           	orb %d0,%d0
   485a0:	ffff           	.short 0xffff
   485a2:	0000 ffff      	orib #-1,%d0
   485a6:	0000 ffff      	orib #-1,%d0
   485aa:	0000 ffff      	orib #-1,%d0
	...
   485b6:	0000 8000      	orib #0,%d0
   485ba:	0000 0800      	orib #0,%d0
   485be:	0000 0000      	orib #0,%d0
   485c2:	0000 6000      	orib #0,%d0
   485c6:	0000 6880      	orib #-128,%d0
   485ca:	0000 1c80      	orib #-128,%d0
   485ce:	0000 1fc0      	orib #-64,%d0
   485d2:	0000 1bf0      	orib #-16,%d0
   485d6:	0000 bff8      	orib #-8,%d0
   485da:	0000 4ffc      	orib #-4,%d0
   485de:	0000 8bfe      	orib #-2,%d0
   485e2:	0000 8ffe      	orib #-2,%d0
   485e6:	0000 d7ff      	orib #-1,%d0
   485ea:	0000 4eff      	orib #-1,%d0
   485ee:	0000 67ff      	orib #-1,%d0
   485f2:	0000 bbff      	orib #-1,%d0
   485f6:	0000 f7ff      	orib #-1,%d0
   485fa:	0000 dfff      	orib #-1,%d0
   485fe:	0000 d7fe      	orib #-2,%d0
   48602:	0000 9dfe      	orib #-2,%d0
   48606:	0000 1e3e      	orib #62,%d0
   4860a:	0000 7fde      	orib #-34,%d0
   4860e:	0000 0000      	orib #0,%d0
   48612:	0000 f000      	orib #0,%d0
   48616:	0000 1c00      	orib #0,%d0
   4861a:	0000 f700      	orib #0,%d0
   4861e:	0000 ffc0      	orib #-64,%d0
   48622:	0000 ff60      	orib #96,%d0
   48626:	0000 ffd0      	orib #-48,%d0
   4862a:	0000 fff8      	orib #-8,%d0
   4862e:	0000 fffc      	orib #-4,%d0
   48632:	0000 fffc      	orib #-4,%d0
   48636:	0000 7ffe      	orib #-2,%d0
   4863a:	0000 fffe      	orib #-2,%d0
   4863e:	0000 ffff      	orib #-1,%d0
   48642:	0000 ffff      	orib #-1,%d0
   48646:	0000 ffff      	orib #-1,%d0
   4864a:	8000           	orb %d0,%d0
   4864c:	ffff           	.short 0xffff
   4864e:	8000           	orb %d0,%d0
   48650:	ffff           	.short 0xffff
   48652:	8000           	orb %d0,%d0
   48654:	3fff           	.short 0x3fff
   48656:	8000           	orb %d0,%d0
   48658:	1fff           	.short 0x1fff
   4865a:	8000           	orb %d0,%d0
   4865c:	9fff           	.short 0x9fff
   4865e:	8000           	orb %d0,%d0
   48660:	8fff           	.short 0x8fff
   48662:	0000 83ff      	orib #-1,%d0
   48666:	0000 05ff      	orib #-1,%d0
   4866a:	0000 0fff      	orib #-1,%d0
   4866e:	0000 0000      	orib #0,%d0
   48672:	0000 f000      	orib #0,%d0
   48676:	0000 fc00      	orib #0,%d0
   4867a:	0000 ff00      	orib #0,%d0
   4867e:	0000 ffc0      	orib #-64,%d0
   48682:	0000 ffe0      	orib #-32,%d0
   48686:	0000 fff0      	orib #-16,%d0
   4868a:	0000 fff8      	orib #-8,%d0
   4868e:	0000 fffc      	orib #-4,%d0
   48692:	0000 fffc      	orib #-4,%d0
   48696:	0000 fffe      	orib #-2,%d0
   4869a:	0000 fffe      	orib #-2,%d0
   4869e:	0000 ffff      	orib #-1,%d0
   486a2:	0000 ffff      	orib #-1,%d0
   486a6:	0000 ffff      	orib #-1,%d0
   486aa:	8000           	orb %d0,%d0
   486ac:	ffff           	.short 0xffff
   486ae:	8000           	orb %d0,%d0
   486b0:	ffff           	.short 0xffff
   486b2:	8000           	orb %d0,%d0
   486b4:	ffff           	.short 0xffff
   486b6:	8000           	orb %d0,%d0
   486b8:	ffff           	.short 0xffff
   486ba:	8000           	orb %d0,%d0
   486bc:	ffff           	.short 0xffff
   486be:	8000           	orb %d0,%d0
   486c0:	ffff           	.short 0xffff
   486c2:	0000 ffff      	orib #-1,%d0
   486c6:	0000 ffff      	orib #-1,%d0
   486ca:	0000 ffff      	orib #-1,%d0
   486ce:	0000 0000      	orib #0,%d0
   486d2:	0000 f000      	orib #0,%d0
   486d6:	0000 fc00      	orib #0,%d0
   486da:	0000 ff00      	orib #0,%d0
   486de:	0000 ffc0      	orib #-64,%d0
   486e2:	0000 ffe0      	orib #-32,%d0
   486e6:	0000 fff0      	orib #-16,%d0
   486ea:	0000 fff8      	orib #-8,%d0
   486ee:	0000 fffc      	orib #-4,%d0
   486f2:	0000 fffc      	orib #-4,%d0
   486f6:	0000 fffe      	orib #-2,%d0
   486fa:	0000 fffe      	orib #-2,%d0
   486fe:	0000 ffff      	orib #-1,%d0
   48702:	0000 ffff      	orib #-1,%d0
   48706:	0000 ffff      	orib #-1,%d0
   4870a:	8000           	orb %d0,%d0
   4870c:	ffff           	.short 0xffff
   4870e:	8000           	orb %d0,%d0
   48710:	ffff           	.short 0xffff
   48712:	8000           	orb %d0,%d0
   48714:	ffff           	.short 0xffff
   48716:	8000           	orb %d0,%d0
   48718:	ffff           	.short 0xffff
   4871a:	8000           	orb %d0,%d0
   4871c:	ffff           	.short 0xffff
   4871e:	8000           	orb %d0,%d0
   48720:	ffff           	.short 0xffff
   48722:	0000 ffff      	orib #-1,%d0
   48726:	0000 ffff      	orib #-1,%d0
   4872a:	0000 ffff      	orib #-1,%d0
	...
   48736:	0000 8000      	orib #0,%d0
   4873a:	0000 0800      	orib #0,%d0
   4873e:	0000 0000      	orib #0,%d0
   48742:	0000 6000      	orib #0,%d0
   48746:	0000 6880      	orib #-128,%d0
   4874a:	0000 1c80      	orib #-128,%d0
   4874e:	0000 1fc0      	orib #-64,%d0
   48752:	0000 1bf0      	orib #-16,%d0
   48756:	0000 bff8      	orib #-8,%d0
   4875a:	0000 4ffc      	orib #-4,%d0
   4875e:	0000 8bfe      	orib #-2,%d0
   48762:	0000 8ffe      	orib #-2,%d0
   48766:	0000 d7ff      	orib #-1,%d0
   4876a:	0000 4eff      	orib #-1,%d0
   4876e:	0000 67ff      	orib #-1,%d0
   48772:	0000 bbff      	orib #-1,%d0
   48776:	0000 f7ff      	orib #-1,%d0
   4877a:	0000 dfff      	orib #-1,%d0
   4877e:	0000 d7fe      	orib #-2,%d0
   48782:	0000 9dfe      	orib #-2,%d0
   48786:	0000 1e3e      	orib #62,%d0
   4878a:	0000 7fde      	orib #-34,%d0
   4878e:	0000 0000      	orib #0,%d0
   48792:	0000 f000      	orib #0,%d0
   48796:	0000 1c00      	orib #0,%d0
   4879a:	0000 f700      	orib #0,%d0
   4879e:	0000 ffc0      	orib #-64,%d0
   487a2:	0000 ff60      	orib #96,%d0
   487a6:	0000 ffd0      	orib #-48,%d0
   487aa:	0000 fff8      	orib #-8,%d0
   487ae:	0000 fffc      	orib #-4,%d0
   487b2:	0000 fffc      	orib #-4,%d0
   487b6:	0000 7ffe      	orib #-2,%d0
   487ba:	0000 fffe      	orib #-2,%d0
   487be:	0000 ffff      	orib #-1,%d0
   487c2:	0000 ffff      	orib #-1,%d0
   487c6:	0000 ffff      	orib #-1,%d0
   487ca:	8000           	orb %d0,%d0
   487cc:	ffff           	.short 0xffff
   487ce:	8000           	orb %d0,%d0
   487d0:	ffff           	.short 0xffff
   487d2:	8000           	orb %d0,%d0
   487d4:	3fff           	.short 0x3fff
   487d6:	8000           	orb %d0,%d0
   487d8:	1fff           	.short 0x1fff
   487da:	8000           	orb %d0,%d0
   487dc:	9fff           	.short 0x9fff
   487de:	8000           	orb %d0,%d0
   487e0:	8fff           	.short 0x8fff
   487e2:	0000 83ff      	orib #-1,%d0
   487e6:	0000 05ff      	orib #-1,%d0
   487ea:	0000 0fff      	orib #-1,%d0
   487ee:	0000 0000      	orib #0,%d0
   487f2:	0000 f000      	orib #0,%d0
   487f6:	0000 fc00      	orib #0,%d0
   487fa:	0000 ff00      	orib #0,%d0
   487fe:	0000 ffc0      	orib #-64,%d0
   48802:	0000 ffe0      	orib #-32,%d0
   48806:	0000 fff0      	orib #-16,%d0
   4880a:	0000 fff8      	orib #-8,%d0
   4880e:	0000 fffc      	orib #-4,%d0
   48812:	0000 fffc      	orib #-4,%d0
   48816:	0000 fffe      	orib #-2,%d0
   4881a:	0000 fffe      	orib #-2,%d0
   4881e:	0000 ffff      	orib #-1,%d0
   48822:	0000 ffff      	orib #-1,%d0
   48826:	0000 ffff      	orib #-1,%d0
   4882a:	8000           	orb %d0,%d0
   4882c:	ffff           	.short 0xffff
   4882e:	8000           	orb %d0,%d0
   48830:	ffff           	.short 0xffff
   48832:	8000           	orb %d0,%d0
   48834:	ffff           	.short 0xffff
   48836:	8000           	orb %d0,%d0
   48838:	ffff           	.short 0xffff
   4883a:	8000           	orb %d0,%d0
   4883c:	ffff           	.short 0xffff
   4883e:	8000           	orb %d0,%d0
   48840:	ffff           	.short 0xffff
   48842:	0000 ffff      	orib #-1,%d0
   48846:	0000 ffff      	orib #-1,%d0
   4884a:	0000 ffff      	orib #-1,%d0
   4884e:	0000 0000      	orib #0,%d0
   48852:	0000 f000      	orib #0,%d0
   48856:	0000 fc00      	orib #0,%d0
   4885a:	0000 ff00      	orib #0,%d0
   4885e:	0000 ffc0      	orib #-64,%d0
   48862:	0000 ffe0      	orib #-32,%d0
   48866:	0000 fff0      	orib #-16,%d0
   4886a:	0000 fff8      	orib #-8,%d0
   4886e:	0000 fffc      	orib #-4,%d0
   48872:	0000 fffc      	orib #-4,%d0
   48876:	0000 fffe      	orib #-2,%d0
   4887a:	0000 fffe      	orib #-2,%d0
   4887e:	0000 ffff      	orib #-1,%d0
   48882:	0000 ffff      	orib #-1,%d0
   48886:	0000 ffff      	orib #-1,%d0
   4888a:	8000           	orb %d0,%d0
   4888c:	ffff           	.short 0xffff
   4888e:	8000           	orb %d0,%d0
   48890:	ffff           	.short 0xffff
   48892:	8000           	orb %d0,%d0
   48894:	ffff           	.short 0xffff
   48896:	8000           	orb %d0,%d0
   48898:	ffff           	.short 0xffff
   4889a:	8000           	orb %d0,%d0
   4889c:	ffff           	.short 0xffff
   4889e:	8000           	orb %d0,%d0
   488a0:	ffff           	.short 0xffff
   488a2:	0000 ffff      	orib #-1,%d0
   488a6:	0000 ffff      	orib #-1,%d0
   488aa:	0000 ffff      	orib #-1,%d0
   488ae:	0000 0000      	orib #0,%d0
   488b2:	fffe           	.short 0xfffe
   488b4:	0001 1bc5      	orib #-59,%d1
   488b8:	0000 63c6      	orib #-58,%d0
   488bc:	0000 62c7      	orib #-57,%d0
   488c0:	0000 32c3      	orib #-61,%d0
   488c4:	0000 627c      	orib #124,%d0
   488c8:	0000 30e1      	orib #-31,%d0
   488cc:	0000 10e1      	orib #-31,%d0
   488d0:	0000 16de      	orib #-34,%d0
   488d4:	0000 0082      	orib #-126,%d0
   488d8:	0000 156d      	orib #109,%d0
   488dc:	0000 1f6d      	orib #109,%d0
   488e0:	0000 1fb3      	orib #-77,%d0
   488e4:	0000 06ed      	orib #-19,%d0
   488e8:	0000 00f5      	orib #-11,%d0
   488ec:	0000 05a3      	orib #-93,%d0
   488f0:	0000 00ce      	orib #-50,%d0
   488f4:	0000 028e      	orib #-114,%d0
   488f8:	0000 00d8      	orib #-40,%d0
	...
   48910:	0000 7186      	orib #-122,%d0
   48914:	0000 07c0      	orib #-64,%d0
   48918:	0000 5bc1      	orib #-63,%d0
   4891c:	0000 f2d9      	orib #-39,%d0
   48920:	0000 624e      	orib #78,%d0
   48924:	0000 6003      	orib #3,%d0
   48928:	0000 201f      	orib #31,%d0
   4892c:	0000 081f      	orib #31,%d0
   48930:	0000 0db7      	orib #-73,%d0
   48934:	0000 09a6      	orib #-90,%d0
   48938:	0000 1525      	orib #37,%d0
   4893c:	0000 0525      	orib #37,%d0
   48940:	0000 1d6d      	orib #109,%d0
   48944:	0000 0417      	orib #23,%d0
   48948:	0000 001f      	orib #31,%d0
   4894c:	0000 00df      	orib #-33,%d0
   48950:	0000 01fe      	orib #-2,%d0
   48954:	0000 01fe      	orib #-2,%d0
   48958:	0000 01f8      	orib #-8,%d0
	...
   48970:	0001 ffff      	orib #-1,%d1
   48974:	0001 ffff      	orib #-1,%d1
   48978:	0000 ffff      	orib #-1,%d0
   4897c:	0000 ffff      	orib #-1,%d0
   48980:	0000 7fff      	orib #-1,%d0
   48984:	0000 7fff      	orib #-1,%d0
   48988:	0000 37ff      	orib #-1,%d0
   4898c:	0000 1fff      	orib #-1,%d0
   48990:	0000 1fff      	orib #-1,%d0
   48994:	0000 1bee      	orib #-18,%d0
   48998:	0000 1fff      	orib #-1,%d0
   4899c:	0000 1fff      	orib #-1,%d0
   489a0:	0000 1fff      	orib #-1,%d0
   489a4:	0000 0fff      	orib #-1,%d0
   489a8:	0000 0fff      	orib #-1,%d0
   489ac:	0000 07ff      	orib #-1,%d0
   489b0:	0000 07fe      	orib #-2,%d0
   489b4:	0000 07fe      	orib #-2,%d0
   489b8:	0000 03f8      	orib #-8,%d0
	...
   489d0:	0001 ffff      	orib #-1,%d1
   489d4:	0001 ffff      	orib #-1,%d1
   489d8:	0000 ffff      	orib #-1,%d0
   489dc:	0000 ffff      	orib #-1,%d0
   489e0:	0000 7fff      	orib #-1,%d0
   489e4:	0000 7fff      	orib #-1,%d0
   489e8:	0000 37ff      	orib #-1,%d0
   489ec:	0000 1fff      	orib #-1,%d0
   489f0:	0000 1fff      	orib #-1,%d0
   489f4:	0000 1bee      	orib #-18,%d0
   489f8:	0000 1fff      	orib #-1,%d0
   489fc:	0000 1fff      	orib #-1,%d0
   48a00:	0000 1fff      	orib #-1,%d0
   48a04:	0000 0fff      	orib #-1,%d0
   48a08:	0000 0fff      	orib #-1,%d0
   48a0c:	0000 07ff      	orib #-1,%d0
   48a10:	0000 07fe      	orib #-2,%d0
   48a14:	0000 07fe      	orib #-2,%d0
   48a18:	0000 03f8      	orib #-8,%d0
	...
   48a30:	0000 ffbe      	orib #-66,%d0
   48a34:	0000 1bc2      	orib #-62,%d0
   48a38:	0000 63c3      	orib #-61,%d0
   48a3c:	0000 62c3      	orib #-61,%d0
   48a40:	0000 32c1      	orib #-63,%d0
   48a44:	0000 627c      	orib #124,%d0
   48a48:	0000 30e1      	orib #-31,%d0
   48a4c:	0000 10e1      	orib #-31,%d0
   48a50:	0000 16de      	orib #-34,%d0
   48a54:	0000 0092      	orib #-110,%d0
   48a58:	0000 08b0      	orib #-80,%d0
   48a5c:	0000 0ee0      	orib #-32,%d0
   48a60:	0000 0ab6      	orib #-74,%d0
   48a64:	0000 0fb6      	orib #-74,%d0
   48a68:	0000 0fd9      	orib #-39,%d0
   48a6c:	0000 0376      	orib #118,%d0
   48a70:	0000 007a      	orib #122,%d0
   48a74:	0000 02d1      	orib #-47,%d0
   48a78:	0000 0067      	orib #103,%d0
   48a7c:	0000 0147      	orib #71,%d0
   48a80:	0000 006c      	orib #108,%d0
	...
   48a90:	0000 7186      	orib #-122,%d0
   48a94:	0000 07c0      	orib #-64,%d0
   48a98:	0000 5bc0      	orib #-64,%d0
   48a9c:	0000 f2cc      	orib #-52,%d0
   48aa0:	0000 6247      	orib #71,%d0
   48aa4:	0000 6003      	orib #3,%d0
   48aa8:	0000 201f      	orib #31,%d0
   48aac:	0000 081f      	orib #31,%d0
   48ab0:	0000 0db7      	orib #-73,%d0
   48ab4:	0000 09b6      	orib #-74,%d0
   48ab8:	0000 01b0      	orib #-80,%d0
   48abc:	0000 07e0      	orib #-32,%d0
   48ac0:	0000 0a92      	orib #-110,%d0
   48ac4:	0000 0292      	orib #-110,%d0
   48ac8:	0000 0eb6      	orib #-74,%d0
   48acc:	0000 020b      	orib #11,%d0
   48ad0:	0000 000f      	orib #15,%d0
   48ad4:	0000 006f      	orib #111,%d0
   48ad8:	0000 00ff      	orib #-1,%d0
   48adc:	0000 00ff      	orib #-1,%d0
   48ae0:	0000 00fc      	orib #-4,%d0
	...
   48af0:	0001 ffff      	orib #-1,%d1
   48af4:	0001 ffff      	orib #-1,%d1
   48af8:	0000 ffff      	orib #-1,%d0
   48afc:	0000 ffff      	orib #-1,%d0
   48b00:	0000 7fff      	orib #-1,%d0
   48b04:	0000 7fff      	orib #-1,%d0
   48b08:	0000 37ff      	orib #-1,%d0
   48b0c:	0000 1fff      	orib #-1,%d0
   48b10:	0000 1fff      	orib #-1,%d0
   48b14:	0000 1bfe      	orib #-2,%d0
   48b18:	0000 1bf8      	orib #-8,%d0
   48b1c:	0000 0fe1      	orib #-31,%d0
   48b20:	0000 0fff      	orib #-1,%d0
   48b24:	0000 0fff      	orib #-1,%d0
   48b28:	0000 0fff      	orib #-1,%d0
   48b2c:	0000 07ff      	orib #-1,%d0
   48b30:	0000 07ff      	orib #-1,%d0
   48b34:	0000 03ff      	orib #-1,%d0
   48b38:	0000 03ff      	orib #-1,%d0
   48b3c:	0000 03ff      	orib #-1,%d0
   48b40:	0000 01fc      	orib #-4,%d0
	...
   48b50:	0001 ffff      	orib #-1,%d1
   48b54:	0001 ffff      	orib #-1,%d1
   48b58:	0000 ffff      	orib #-1,%d0
   48b5c:	0000 ffff      	orib #-1,%d0
   48b60:	0000 7fff      	orib #-1,%d0
   48b64:	0000 7fff      	orib #-1,%d0
   48b68:	0000 37ff      	orib #-1,%d0
   48b6c:	0000 1fff      	orib #-1,%d0
   48b70:	0000 1fff      	orib #-1,%d0
   48b74:	0000 1bfe      	orib #-2,%d0
   48b78:	0000 1bf8      	orib #-8,%d0
   48b7c:	0000 0fe1      	orib #-31,%d0
   48b80:	0000 0fff      	orib #-1,%d0
   48b84:	0000 0fff      	orib #-1,%d0
   48b88:	0000 0fff      	orib #-1,%d0
   48b8c:	0000 07ff      	orib #-1,%d0
   48b90:	0000 07ff      	orib #-1,%d0
   48b94:	0000 03ff      	orib #-1,%d0
   48b98:	0000 03ff      	orib #-1,%d0
   48b9c:	0000 03ff      	orib #-1,%d0
   48ba0:	0000 01fc      	orib #-4,%d0
	...
   48bb0:	0000 ffbe      	orib #-66,%d0
   48bb4:	0000 1bc2      	orib #-62,%d0
   48bb8:	0000 63c3      	orib #-61,%d0
   48bbc:	0000 62c3      	orib #-61,%d0
   48bc0:	0000 32c1      	orib #-63,%d0
   48bc4:	0000 627c      	orib #124,%d0
   48bc8:	0000 30e1      	orib #-31,%d0
   48bcc:	0000 10e1      	orib #-31,%d0
   48bd0:	0000 16de      	orib #-34,%d0
   48bd4:	0000 0082      	orib #-126,%d0
   48bd8:	0000 00b0      	orib #-80,%d0
   48bdc:	0000 0098      	orib #-104,%d0
   48be0:	0000 0578      	orib #120,%d0
   48be4:	0000 0770      	orib #112,%d0
   48be8:	0000 055b      	orib #91,%d0
   48bec:	0000 07db      	orib #-37,%d0
   48bf0:	0000 07ec      	orib #-20,%d0
   48bf4:	0000 01bb      	orib #-69,%d0
   48bf8:	0000 003d      	orib #61,%d0
   48bfc:	0000 0168      	orib #104,%d0
   48c00:	0000 0033      	orib #51,%d0
   48c04:	0000 00a3      	orib #-93,%d0
   48c08:	0000 0036      	orib #54,%d0
   48c0c:	0000 0000      	orib #0,%d0
   48c10:	0000 7186      	orib #-122,%d0
   48c14:	0000 07c0      	orib #-64,%d0
   48c18:	0000 5bc0      	orib #-64,%d0
   48c1c:	0000 f2cc      	orib #-52,%d0
   48c20:	0000 6247      	orib #71,%d0
   48c24:	0000 6003      	orib #3,%d0
   48c28:	0000 201f      	orib #31,%d0
   48c2c:	0000 081f      	orib #31,%d0
   48c30:	0000 0db7      	orib #-73,%d0
   48c34:	0000 09b6      	orib #-74,%d0
   48c38:	0000 00b0      	orib #-80,%d0
   48c3c:	0000 0078      	orib #120,%d0
   48c40:	0000 00f8      	orib #-8,%d0
   48c44:	0000 03f0      	orib #-16,%d0
   48c48:	0000 0549      	orib #73,%d0
   48c4c:	0000 0149      	orib #73,%d0
   48c50:	0000 075b      	orib #91,%d0
   48c54:	0000 0105      	orib #5,%d0
   48c58:	0000 0007      	orib #7,%d0
   48c5c:	0000 0037      	orib #55,%d0
   48c60:	0000 007f      	orib #127,%d0
   48c64:	0000 007f      	orib #127,%d0
   48c68:	0000 007e      	orib #126,%d0
   48c6c:	0000 0000      	orib #0,%d0
   48c70:	0001 ffff      	orib #-1,%d1
   48c74:	0001 ffff      	orib #-1,%d1
   48c78:	0000 ffff      	orib #-1,%d0
   48c7c:	0000 ffff      	orib #-1,%d0
   48c80:	0000 7fff      	orib #-1,%d0
   48c84:	0000 7fff      	orib #-1,%d0
   48c88:	0000 37ff      	orib #-1,%d0
   48c8c:	0000 1fff      	orib #-1,%d0
   48c90:	0000 1fff      	orib #-1,%d0
   48c94:	0000 1bfe      	orib #-2,%d0
   48c98:	0000 12f8      	orib #-8,%d0
   48c9c:	0000 00f8      	orib #-8,%d0
   48ca0:	0000 05f8      	orib #-8,%d0
   48ca4:	0000 07f0      	orib #-16,%d0
   48ca8:	0000 07ff      	orib #-1,%d0
   48cac:	0000 07ff      	orib #-1,%d0
   48cb0:	0000 07ff      	orib #-1,%d0
   48cb4:	0000 03ff      	orib #-1,%d0
   48cb8:	0000 03ff      	orib #-1,%d0
   48cbc:	0000 01ff      	orib #-1,%d0
   48cc0:	0000 01ff      	orib #-1,%d0
   48cc4:	0000 01ff      	orib #-1,%d0
   48cc8:	0000 00fe      	orib #-2,%d0
   48ccc:	0000 0000      	orib #0,%d0
   48cd0:	0001 ffff      	orib #-1,%d1
   48cd4:	0001 ffff      	orib #-1,%d1
   48cd8:	0000 ffff      	orib #-1,%d0
   48cdc:	0000 ffff      	orib #-1,%d0
   48ce0:	0000 7fff      	orib #-1,%d0
   48ce4:	0000 7fff      	orib #-1,%d0
   48ce8:	0000 37ff      	orib #-1,%d0
   48cec:	0000 1fff      	orib #-1,%d0
   48cf0:	0000 1fff      	orib #-1,%d0
   48cf4:	0000 1bfe      	orib #-2,%d0
   48cf8:	0000 12f8      	orib #-8,%d0
   48cfc:	0000 00f8      	orib #-8,%d0
   48d00:	0000 05f8      	orib #-8,%d0
   48d04:	0000 07f0      	orib #-16,%d0
   48d08:	0000 07ff      	orib #-1,%d0
   48d0c:	0000 07ff      	orib #-1,%d0
   48d10:	0000 07ff      	orib #-1,%d0
   48d14:	0000 03ff      	orib #-1,%d0
   48d18:	0000 03ff      	orib #-1,%d0
   48d1c:	0000 01ff      	orib #-1,%d0
   48d20:	0000 01ff      	orib #-1,%d0
   48d24:	0000 01ff      	orib #-1,%d0
   48d28:	0000 00fe      	orib #-2,%d0
   48d2c:	0000 0000      	orib #0,%d0
   48d30:	0000 ffbe      	orib #-66,%d0
   48d34:	0000 1bc2      	orib #-62,%d0
   48d38:	0000 63c3      	orib #-61,%d0
   48d3c:	0000 62c3      	orib #-61,%d0
   48d40:	0000 32c1      	orib #-63,%d0
   48d44:	0000 627c      	orib #124,%d0
   48d48:	0000 30e1      	orib #-31,%d0
   48d4c:	0000 10e1      	orib #-31,%d0
   48d50:	0000 16de      	orib #-34,%d0
   48d54:	0000 0082      	orib #-126,%d0
   48d58:	0000 01a0      	orib #-96,%d0
   48d5c:	0000 0260      	orib #96,%d0
   48d60:	0000 15e0      	orib #-32,%d0
   48d64:	0000 1dc0      	orib #-64,%d0
   48d68:	0000 156d      	orib #109,%d0
   48d6c:	0000 1f6d      	orib #109,%d0
   48d70:	0000 1fb3      	orib #-77,%d0
   48d74:	0000 06ed      	orib #-19,%d0
   48d78:	0000 00f5      	orib #-11,%d0
   48d7c:	0000 05a3      	orib #-93,%d0
   48d80:	0000 00ce      	orib #-50,%d0
   48d84:	0000 028e      	orib #-114,%d0
   48d88:	0000 00d8      	orib #-40,%d0
   48d8c:	0000 0000      	orib #0,%d0
   48d90:	0000 7186      	orib #-122,%d0
   48d94:	0000 07c0      	orib #-64,%d0
   48d98:	0000 5bc0      	orib #-64,%d0
   48d9c:	0000 f2cc      	orib #-52,%d0
   48da0:	0000 6247      	orib #71,%d0
   48da4:	0000 6003      	orib #3,%d0
   48da8:	0000 201f      	orib #31,%d0
   48dac:	0000 081f      	orib #31,%d0
   48db0:	0000 0db7      	orib #-73,%d0
   48db4:	0000 09a6      	orib #-90,%d0
   48db8:	0000 01a0      	orib #-96,%d0
   48dbc:	0000 01e0      	orib #-32,%d0
   48dc0:	0000 03e0      	orib #-32,%d0
   48dc4:	0000 0fc0      	orib #-64,%d0
   48dc8:	0000 1525      	orib #37,%d0
   48dcc:	0000 0525      	orib #37,%d0
   48dd0:	0000 1d6d      	orib #109,%d0
   48dd4:	0000 0417      	orib #23,%d0
   48dd8:	0000 001f      	orib #31,%d0
   48ddc:	0000 00df      	orib #-33,%d0
   48de0:	0000 01fe      	orib #-2,%d0
   48de4:	0000 01fe      	orib #-2,%d0
   48de8:	0000 01f8      	orib #-8,%d0
   48dec:	0000 0000      	orib #0,%d0
   48df0:	0001 ffff      	orib #-1,%d1
   48df4:	0001 ffff      	orib #-1,%d1
   48df8:	0000 ffff      	orib #-1,%d0
   48dfc:	0000 ffff      	orib #-1,%d0
   48e00:	0000 7fff      	orib #-1,%d0
   48e04:	0000 7fff      	orib #-1,%d0
   48e08:	0000 37ff      	orib #-1,%d0
   48e0c:	0000 1fff      	orib #-1,%d0
   48e10:	0000 1fff      	orib #-1,%d0
   48e14:	0000 1bee      	orib #-18,%d0
   48e18:	0000 13e8      	orib #-24,%d0
   48e1c:	0000 03e0      	orib #-32,%d0
   48e20:	0000 17e0      	orib #-32,%d0
   48e24:	0000 1fc2      	orib #-62,%d0
   48e28:	0000 1fff      	orib #-1,%d0
   48e2c:	0000 1fff      	orib #-1,%d0
   48e30:	0000 1fff      	orib #-1,%d0
   48e34:	0000 0fff      	orib #-1,%d0
   48e38:	0000 0fff      	orib #-1,%d0
   48e3c:	0000 07ff      	orib #-1,%d0
   48e40:	0000 07fe      	orib #-2,%d0
   48e44:	0000 07fe      	orib #-2,%d0
   48e48:	0000 03f8      	orib #-8,%d0
   48e4c:	0000 0000      	orib #0,%d0
   48e50:	0001 ffff      	orib #-1,%d1
   48e54:	0001 ffff      	orib #-1,%d1
   48e58:	0000 ffff      	orib #-1,%d0
   48e5c:	0000 ffff      	orib #-1,%d0
   48e60:	0000 7fff      	orib #-1,%d0
   48e64:	0000 7fff      	orib #-1,%d0
   48e68:	0000 37ff      	orib #-1,%d0
   48e6c:	0000 1fff      	orib #-1,%d0
   48e70:	0000 1fff      	orib #-1,%d0
   48e74:	0000 1bee      	orib #-18,%d0
   48e78:	0000 13e8      	orib #-24,%d0
   48e7c:	0000 03e0      	orib #-32,%d0
   48e80:	0000 17e0      	orib #-32,%d0
   48e84:	0000 1fc2      	orib #-62,%d0
   48e88:	0000 1fff      	orib #-1,%d0
   48e8c:	0000 1fff      	orib #-1,%d0
   48e90:	0000 1fff      	orib #-1,%d0
   48e94:	0000 0fff      	orib #-1,%d0
   48e98:	0000 0fff      	orib #-1,%d0
   48e9c:	0000 07ff      	orib #-1,%d0
   48ea0:	0000 07fe      	orib #-2,%d0
   48ea4:	0000 07fe      	orib #-2,%d0
   48ea8:	0000 03f8      	orib #-8,%d0
   48eac:	0000 0000      	orib #0,%d0
   48eb0:	0000 ffbe      	orib #-66,%d0
   48eb4:	0000 1bc2      	orib #-62,%d0
   48eb8:	0000 63c3      	orib #-61,%d0
   48ebc:	0000 62c3      	orib #-61,%d0
   48ec0:	0000 32c1      	orib #-63,%d0
   48ec4:	0000 627c      	orib #124,%d0
   48ec8:	0000 30e1      	orib #-31,%d0
   48ecc:	0000 10e1      	orib #-31,%d0
   48ed0:	0000 16de      	orib #-34,%d0
   48ed4:	0000 0482      	orib #-126,%d0
   48ed8:	0000 09a0      	orib #-96,%d0
   48edc:	0000 5780      	orib #-128,%d0
   48ee0:	0000 7701      	orib #1,%d0
   48ee4:	0000 55b4      	orib #-76,%d0
   48ee8:	0000 7db6      	orib #-74,%d0
   48eec:	0000 7ecd      	orib #-51,%d0
   48ef0:	0000 1bb7      	orib #-73,%d0
   48ef4:	0000 03d7      	orib #-41,%d0
   48ef8:	0000 168c      	orib #-116,%d0
   48efc:	0000 0338      	orib #56,%d0
   48f00:	0000 0a38      	orib #56,%d0
   48f04:	0000 0360      	orib #96,%d0
	...
   48f10:	0000 7186      	orib #-122,%d0
   48f14:	0000 07c0      	orib #-64,%d0
   48f18:	0000 5bc0      	orib #-64,%d0
   48f1c:	0000 f2cc      	orib #-52,%d0
   48f20:	0000 6247      	orib #71,%d0
   48f24:	0000 6003      	orib #3,%d0
   48f28:	0000 201f      	orib #31,%d0
   48f2c:	0000 081f      	orib #31,%d0
   48f30:	0000 0db7      	orib #-73,%d0
   48f34:	0000 0da6      	orib #-90,%d0
   48f38:	0000 05a0      	orib #-96,%d0
   48f3c:	0000 0f80      	orib #-128,%d0
   48f40:	0000 3f01      	orib #1,%d0
   48f44:	0000 5495      	orib #-107,%d0
   48f48:	0000 1495      	orib #-107,%d0
   48f4c:	0000 75b7      	orib #-73,%d0
   48f50:	0000 105f      	orib #95,%d0
   48f54:	0000 007f      	orib #127,%d0
   48f58:	0000 037c      	orib #124,%d0
   48f5c:	0000 07f8      	orib #-8,%d0
   48f60:	0000 07f8      	orib #-8,%d0
   48f64:	0000 07e0      	orib #-32,%d0
	...
   48f70:	0001 ffff      	orib #-1,%d1
   48f74:	0001 ffff      	orib #-1,%d1
   48f78:	0000 ffff      	orib #-1,%d0
   48f7c:	0000 ffff      	orib #-1,%d0
   48f80:	0000 7fff      	orib #-1,%d0
   48f84:	0000 7fff      	orib #-1,%d0
   48f88:	0000 37ff      	orib #-1,%d0
   48f8c:	0000 1fff      	orib #-1,%d0
   48f90:	0000 1fff      	orib #-1,%d0
   48f94:	0000 1fee      	orib #-18,%d0
   48f98:	0000 1fe8      	orib #-24,%d0
   48f9c:	0000 5f80      	orib #-128,%d0
   48fa0:	0000 7f0b      	orib #11,%d0
   48fa4:	0000 7fff      	orib #-1,%d0
   48fa8:	0000 7fff      	orib #-1,%d0
   48fac:	0000 7fff      	orib #-1,%d0
   48fb0:	0000 3fff      	orib #-1,%d0
   48fb4:	0000 3fff      	orib #-1,%d0
   48fb8:	0000 1ffc      	orib #-4,%d0
   48fbc:	0000 1ff8      	orib #-8,%d0
   48fc0:	0000 1ff8      	orib #-8,%d0
   48fc4:	0000 0fe0      	orib #-32,%d0
	...
   48fd0:	0001 ffff      	orib #-1,%d1
   48fd4:	0001 ffff      	orib #-1,%d1
   48fd8:	0000 ffff      	orib #-1,%d0
   48fdc:	0000 ffff      	orib #-1,%d0
   48fe0:	0000 7fff      	orib #-1,%d0
   48fe4:	0000 7fff      	orib #-1,%d0
   48fe8:	0000 37ff      	orib #-1,%d0
   48fec:	0000 1fff      	orib #-1,%d0
   48ff0:	0000 1fff      	orib #-1,%d0
   48ff4:	0000 1fee      	orib #-18,%d0
   48ff8:	0000 1fe8      	orib #-24,%d0
   48ffc:	0000 5f80      	orib #-128,%d0
   49000:	0000 7f0b      	orib #11,%d0
   49004:	0000 7fff      	orib #-1,%d0
   49008:	0000 7fff      	orib #-1,%d0
   4900c:	0000 7fff      	orib #-1,%d0
   49010:	0000 3fff      	orib #-1,%d0
   49014:	0000 3fff      	orib #-1,%d0
   49018:	0000 1ffc      	orib #-4,%d0
   4901c:	0000 1ff8      	orib #-8,%d0
   49020:	0000 1ff8      	orib #-8,%d0
   49024:	0000 0fe0      	orib #-32,%d0
	...
   49030:	0000 ffbe      	orib #-66,%d0
   49034:	0000 1bc2      	orib #-62,%d0
   49038:	0000 63c3      	orib #-61,%d0
   4903c:	0000 62c3      	orib #-61,%d0
   49040:	0000 32c1      	orib #-63,%d0
   49044:	0000 627c      	orib #124,%d0
   49048:	0000 30e1      	orib #-31,%d0
   4904c:	0000 10e1      	orib #-31,%d0
   49050:	0000 16de      	orib #-34,%d0
   49054:	0000 4482      	orib #-126,%d0
   49058:	0000 67e1      	orib #-31,%d0
   4905c:	0000 55b4      	orib #-76,%d0
   49060:	0000 7db6      	orib #-74,%d0
   49064:	0000 7ecd      	orib #-51,%d0
   49068:	0000 1bb7      	orib #-73,%d0
   4906c:	0000 03d7      	orib #-41,%d0
   49070:	0000 168c      	orib #-116,%d0
   49074:	0000 0338      	orib #56,%d0
   49078:	0000 0a38      	orib #56,%d0
   4907c:	0000 0360      	orib #96,%d0
	...
   49090:	0000 7186      	orib #-122,%d0
   49094:	0000 07c0      	orib #-64,%d0
   49098:	0000 5bc0      	orib #-64,%d0
   4909c:	0000 f2cc      	orib #-52,%d0
   490a0:	0000 6247      	orib #71,%d0
   490a4:	0000 6003      	orib #3,%d0
   490a8:	0000 201f      	orib #31,%d0
   490ac:	0000 081f      	orib #31,%d0
   490b0:	0000 0db7      	orib #-73,%d0
   490b4:	0000 0da6      	orib #-90,%d0
   490b8:	0000 2da1      	orib #-95,%d0
   490bc:	0000 5495      	orib #-107,%d0
   490c0:	0000 1495      	orib #-107,%d0
   490c4:	0000 75b7      	orib #-73,%d0
   490c8:	0000 105f      	orib #95,%d0
   490cc:	0000 007f      	orib #127,%d0
   490d0:	0000 037c      	orib #124,%d0
   490d4:	0000 07f8      	orib #-8,%d0
   490d8:	0000 07f8      	orib #-8,%d0
   490dc:	0000 07e0      	orib #-32,%d0
	...
   490f0:	0001 ffff      	orib #-1,%d1
   490f4:	0001 ffff      	orib #-1,%d1
   490f8:	0000 ffff      	orib #-1,%d0
   490fc:	0000 ffff      	orib #-1,%d0
   49100:	0000 7fff      	orib #-1,%d0
   49104:	0000 7fff      	orib #-1,%d0
   49108:	0000 37ff      	orib #-1,%d0
   4910c:	0000 1fff      	orib #-1,%d0
   49110:	0000 1fff      	orib #-1,%d0
   49114:	0000 5fee      	orib #-18,%d0
   49118:	0000 7feb      	orib #-21,%d0
   4911c:	0000 7fff      	orib #-1,%d0
   49120:	0000 7fff      	orib #-1,%d0
   49124:	0000 7fff      	orib #-1,%d0
   49128:	0000 3fff      	orib #-1,%d0
   4912c:	0000 3fff      	orib #-1,%d0
   49130:	0000 1ffc      	orib #-4,%d0
   49134:	0000 1ff8      	orib #-8,%d0
   49138:	0000 1ff8      	orib #-8,%d0
   4913c:	0000 0fe0      	orib #-32,%d0
	...
   49150:	0001 ffff      	orib #-1,%d1
   49154:	0001 ffff      	orib #-1,%d1
   49158:	0000 ffff      	orib #-1,%d0
   4915c:	0000 ffff      	orib #-1,%d0
   49160:	0000 7fff      	orib #-1,%d0
   49164:	0000 7fff      	orib #-1,%d0
   49168:	0000 37ff      	orib #-1,%d0
   4916c:	0000 1fff      	orib #-1,%d0
   49170:	0000 1fff      	orib #-1,%d0
   49174:	0000 5fee      	orib #-18,%d0
   49178:	0000 7feb      	orib #-21,%d0
   4917c:	0000 7fff      	orib #-1,%d0
   49180:	0000 7fff      	orib #-1,%d0
   49184:	0000 7fff      	orib #-1,%d0
   49188:	0000 3fff      	orib #-1,%d0
   4918c:	0000 3fff      	orib #-1,%d0
   49190:	0000 1ffc      	orib #-4,%d0
   49194:	0000 1ff8      	orib #-8,%d0
   49198:	0000 1ff8      	orib #-8,%d0
   4919c:	0000 0fe0      	orib #-32,%d0
	...
   491b0:	ddbe           	.short 0xddbe
   491b2:	0000 babc      	orib #-68,%d0
   491b6:	0000 6c3c      	orib #60,%d0
   491ba:	0000 f43c      	orib #60,%d0
   491be:	0000 e130      	orib #48,%d0
   491c2:	0000 e100      	orib #0,%d0
   491c6:	0000 80e0      	orib #-32,%d0
   491ca:	0000 81c0      	orib #-64,%d0
   491ce:	0000 a340      	orib #64,%d0
   491d2:	0000 4640      	orib #64,%d0
   491d6:	0000 1e80      	orib #-128,%d0
   491da:	0000 a300      	orib #0,%d0
   491de:	0000 4e00      	orib #0,%d0
   491e2:	0000 f000      	orib #0,%d0
   491e6:	0000 c000      	orib #0,%d0
	...
   4920e:	0000 3dbf      	orib #-65,%d0
   49212:	0000 7fbe      	orib #-66,%d0
   49216:	0000 f73e      	orib #62,%d0
   4921a:	0000 8fbe      	orib #-66,%d0
   4921e:	0000 1ebc      	orib #-68,%d0
   49222:	0000 32b0      	orib #-80,%d0
   49226:	0000 6020      	orib #32,%d0
   4922a:	0000 6100      	orib #0,%d0
   4922e:	0000 42c0      	orib #-64,%d0
   49232:	0000 45c0      	orib #-64,%d0
   49236:	0000 6180      	orib #-128,%d0
   4923a:	0000 7f00      	orib #0,%d0
   4923e:	0000 fe00      	orib #0,%d0
   49242:	0000 f000      	orib #0,%d0
   49246:	0000 c000      	orib #0,%d0
	...
   4926e:	0000 ffff      	orib #-1,%d0
   49272:	0000 fffe      	orib #-2,%d0
   49276:	0000 fffe      	orib #-2,%d0
   4927a:	0000 fffe      	orib #-2,%d0
   4927e:	0000 fffc      	orib #-4,%d0
   49282:	0000 f7f0      	orib #-16,%d0
   49286:	0000 f1e0      	orib #-32,%d0
   4928a:	0000 e3c0      	orib #-64,%d0
   4928e:	0000 e7c0      	orib #-64,%d0
   49292:	0000 efc0      	orib #-64,%d0
   49296:	0000 ff80      	orib #-128,%d0
   4929a:	0000 ff00      	orib #0,%d0
   4929e:	0000 fe00      	orib #0,%d0
   492a2:	0000 f000      	orib #0,%d0
   492a6:	0000 c000      	orib #0,%d0
	...
   492ce:	0000 ffff      	orib #-1,%d0
   492d2:	0000 fffe      	orib #-2,%d0
   492d6:	0000 fffe      	orib #-2,%d0
   492da:	0000 fffe      	orib #-2,%d0
   492de:	0000 fffc      	orib #-4,%d0
   492e2:	0000 f7f0      	orib #-16,%d0
   492e6:	0000 f1e0      	orib #-32,%d0
   492ea:	0000 e3c0      	orib #-64,%d0
   492ee:	0000 e7c0      	orib #-64,%d0
   492f2:	0000 efc0      	orib #-64,%d0
   492f6:	0000 ff80      	orib #-128,%d0
   492fa:	0000 ff00      	orib #0,%d0
   492fe:	0000 fe00      	orib #0,%d0
   49302:	0000 f000      	orib #0,%d0
   49306:	0000 c000      	orib #0,%d0
	...
   4932e:	0000 ddfe      	orib #-2,%d0
   49332:	0000 badc      	orib #-36,%d0
   49336:	0000 6c5c      	orib #92,%d0
   4933a:	0000 f4dc      	orib #-36,%d0
   4933e:	0000 e090      	orib #-112,%d0
   49342:	0000 e000      	orib #0,%d0
   49346:	0000 8080      	orib #-128,%d0
   4934a:	0000 8080      	orib #-128,%d0
   4934e:	0000 a060      	orib #96,%d0
   49352:	0000 20e0      	orib #-32,%d0
   49356:	0000 01a0      	orib #-96,%d0
   4935a:	0000 2320      	orib #32,%d0
   4935e:	0000 8f60      	orib #96,%d0
   49362:	0000 d1c0      	orib #-64,%d0
   49366:	0000 a680      	orib #-128,%d0
   4936a:	0000 fe00      	orib #0,%d0
   4936e:	0000 f800      	orib #0,%d0
   49372:	0000 e000      	orib #0,%d0
   49376:	0000 8000      	orib #0,%d0
	...
   4938e:	0000 3dff      	orib #-1,%d0
   49392:	0000 7fdf      	orib #-33,%d0
   49396:	0000 f7de      	orib #-34,%d0
   4939a:	0000 8f9e      	orib #-98,%d0
   4939e:	0000 1f9e      	orib #-98,%d0
   493a2:	0000 3bdc      	orib #-36,%d0
   493a6:	0000 6350      	orib #80,%d0
   493aa:	0000 6140      	orib #64,%d0
   493ae:	0000 4000      	orib #0,%d0
   493b2:	0000 4080      	orib #-128,%d0
   493b6:	0000 0160      	orib #96,%d0
   493ba:	0000 22e0      	orib #-32,%d0
   493be:	0000 b0e0      	orib #-32,%d0
   493c2:	0000 bfc0      	orib #-64,%d0
   493c6:	0000 ff80      	orib #-128,%d0
   493ca:	0000 ff00      	orib #0,%d0
   493ce:	0000 f800      	orib #0,%d0
   493d2:	0000 e000      	orib #0,%d0
   493d6:	0000 8000      	orib #0,%d0
	...
   493ee:	0000 ffff      	orib #-1,%d0
   493f2:	0000 ffff      	orib #-1,%d0
   493f6:	0000 fffe      	orib #-2,%d0
   493fa:	0000 fffe      	orib #-2,%d0
   493fe:	0000 fffe      	orib #-2,%d0
   49402:	0000 fffc      	orib #-4,%d0
   49406:	0000 f7f0      	orib #-16,%d0
   4940a:	0000 f1e0      	orib #-32,%d0
   4940e:	0000 e0e0      	orib #-32,%d0
   49412:	0000 e1e0      	orib #-32,%d0
   49416:	0000 83e0      	orib #-32,%d0
   4941a:	0000 77e0      	orib #-32,%d0
   4941e:	0000 ffe0      	orib #-32,%d0
   49422:	0000 ffc0      	orib #-64,%d0
   49426:	0000 ff80      	orib #-128,%d0
   4942a:	0000 ff00      	orib #0,%d0
   4942e:	0000 f800      	orib #0,%d0
   49432:	0000 e000      	orib #0,%d0
   49436:	0000 8000      	orib #0,%d0
	...
   4944e:	0000 ffff      	orib #-1,%d0
   49452:	0000 ffff      	orib #-1,%d0
   49456:	0000 fffe      	orib #-2,%d0
   4945a:	0000 fffe      	orib #-2,%d0
   4945e:	0000 fffe      	orib #-2,%d0
   49462:	0000 fffc      	orib #-4,%d0
   49466:	0000 f7f0      	orib #-16,%d0
   4946a:	0000 f1e0      	orib #-32,%d0
   4946e:	0000 e0e0      	orib #-32,%d0
   49472:	0000 e1e0      	orib #-32,%d0
   49476:	0000 83e0      	orib #-32,%d0
   4947a:	0000 77e0      	orib #-32,%d0
   4947e:	0000 ffe0      	orib #-32,%d0
   49482:	0000 ffc0      	orib #-64,%d0
   49486:	0000 ff80      	orib #-128,%d0
   4948a:	0000 ff00      	orib #0,%d0
   4948e:	0000 f800      	orib #0,%d0
   49492:	0000 e000      	orib #0,%d0
   49496:	0000 8000      	orib #0,%d0
	...
   494ae:	0000 ddfe      	orib #-2,%d0
   494b2:	0000 bafc      	orib #-4,%d0
   494b6:	0000 6c7c      	orib #124,%d0
   494ba:	0000 f4fc      	orib #-4,%d0
   494be:	0000 e0f0      	orib #-16,%d0
   494c2:	0000 e040      	orib #64,%d0
   494c6:	0000 80c0      	orib #-64,%d0
   494ca:	0000 80c0      	orib #-64,%d0
   494ce:	0000 a040      	orib #64,%d0
   494d2:	0000 0040      	orib #64,%d0
   494d6:	0000 0030      	orib #48,%d0
   494da:	0000 0070      	orib #112,%d0
   494de:	0000 00d0      	orib #-48,%d0
   494e2:	0000 1190      	orib #-112,%d0
   494e6:	0000 47a0      	orib #-96,%d0
   494ea:	0000 68c0      	orib #-64,%d0
   494ee:	0000 d300      	orib #0,%d0
   494f2:	0000 7c00      	orib #0,%d0
   494f6:	0000 7000      	orib #0,%d0
   494fa:	0000 c000      	orib #0,%d0
   494fe:	0000 8000      	orib #0,%d0
   49502:	0000 8000      	orib #0,%d0
	...
   4950e:	0000 3dff      	orib #-1,%d0
   49512:	0000 7ffe      	orib #-2,%d0
   49516:	0000 f7fe      	orib #-2,%d0
   4951a:	0000 8fbe      	orib #-66,%d0
   4951e:	0000 1ffc      	orib #-4,%d0
   49522:	0000 33f0      	orib #-16,%d0
   49526:	0000 6140      	orib #64,%d0
   4952a:	0000 60e0      	orib #-32,%d0
   4952e:	0000 4020      	orib #32,%d0
   49532:	0000 0020      	orib #32,%d0
   49536:	0000 0000      	orib #0,%d0
   4953a:	0000 0040      	orib #64,%d0
   4953e:	0000 00b0      	orib #-80,%d0
   49542:	0000 1170      	orib #112,%d0
   49546:	0000 5860      	orib #96,%d0
   4954a:	0000 5fc0      	orib #-64,%d0
   4954e:	0000 7f80      	orib #-128,%d0
   49552:	0000 fc00      	orib #0,%d0
   49556:	0000 f000      	orib #0,%d0
   4955a:	0000 c000      	orib #0,%d0
   4955e:	0000 8000      	orib #0,%d0
   49562:	0000 8000      	orib #0,%d0
	...
   4956e:	0000 ffff      	orib #-1,%d0
   49572:	0000 fffe      	orib #-2,%d0
   49576:	0000 fffe      	orib #-2,%d0
   4957a:	0000 fffe      	orib #-2,%d0
   4957e:	0000 fffc      	orib #-4,%d0
   49582:	0000 f7f0      	orib #-16,%d0
   49586:	0000 f1f0      	orib #-16,%d0
   4958a:	0000 e0f0      	orib #-16,%d0
   4958e:	0000 e070      	orib #112,%d0
   49592:	0000 8070      	orib #112,%d0
   49596:	0000 0070      	orib #112,%d0
   4959a:	0000 00f0      	orib #-16,%d0
   4959e:	0000 01f0      	orib #-16,%d0
   495a2:	0000 bbf0      	orib #-16,%d0
   495a6:	0000 ffe0      	orib #-32,%d0
   495aa:	0000 ffc0      	orib #-64,%d0
   495ae:	0000 ff80      	orib #-128,%d0
   495b2:	0000 fc00      	orib #0,%d0
   495b6:	0000 f000      	orib #0,%d0
   495ba:	0000 c000      	orib #0,%d0
   495be:	0000 8000      	orib #0,%d0
   495c2:	0000 8000      	orib #0,%d0
	...
   495ce:	0000 ffff      	orib #-1,%d0
   495d2:	0000 fffe      	orib #-2,%d0
   495d6:	0000 fffe      	orib #-2,%d0
   495da:	0000 fffe      	orib #-2,%d0
   495de:	0000 fffc      	orib #-4,%d0
   495e2:	0000 f7f0      	orib #-16,%d0
   495e6:	0000 f1f0      	orib #-16,%d0
   495ea:	0000 e0f0      	orib #-16,%d0
   495ee:	0000 e070      	orib #112,%d0
   495f2:	0000 8070      	orib #112,%d0
   495f6:	0000 0070      	orib #112,%d0
   495fa:	0000 00f0      	orib #-16,%d0
   495fe:	0000 01f0      	orib #-16,%d0
   49602:	0000 bbf0      	orib #-16,%d0
   49606:	0000 ffe0      	orib #-32,%d0
   4960a:	0000 ffc0      	orib #-64,%d0
   4960e:	0000 ff80      	orib #-128,%d0
   49612:	0000 fc00      	orib #0,%d0
   49616:	0000 f000      	orib #0,%d0
   4961a:	0000 c000      	orib #0,%d0
   4961e:	0000 8000      	orib #0,%d0
   49622:	0000 8000      	orib #0,%d0
	...
   4962e:	0000 ddfe      	orib #-2,%d0
   49632:	0000 bafc      	orib #-4,%d0
   49636:	0000 6c7c      	orib #124,%d0
   4963a:	0000 f4bc      	orib #-68,%d0
   4963e:	0000 e0b0      	orib #-80,%d0
   49642:	0000 e000      	orib #0,%d0
   49646:	0000 8020      	orib #32,%d0
   4964a:	0000 8000      	orib #0,%d0
   4964e:	0000 a100      	orib #0,%d0
   49652:	0000 0100      	orib #0,%d0
   49656:	0000 00c0      	orib #-64,%d0
   4965a:	0000 01c0      	orib #-64,%d0
   4965e:	0000 0340      	orib #64,%d0
   49662:	0000 4640      	orib #64,%d0
   49666:	0000 1e80      	orib #-128,%d0
   4966a:	0000 a300      	orib #0,%d0
   4966e:	0000 4c00      	orib #0,%d0
   49672:	0000 f000      	orib #0,%d0
   49676:	0000 c000      	orib #0,%d0
	...
   4968e:	0000 3dff      	orib #-1,%d0
   49692:	0000 7ffe      	orib #-2,%d0
   49696:	0000 f7fe      	orib #-2,%d0
   4969a:	0000 8fbe      	orib #-66,%d0
   4969e:	0000 1fbc      	orib #-68,%d0
   496a2:	0000 33b0      	orib #-80,%d0
   496a6:	0000 6120      	orib #32,%d0
   496aa:	0000 6080      	orib #-128,%d0
   496ae:	0000 4080      	orib #-128,%d0
   496b2:	0000 0080      	orib #-128,%d0
   496b6:	0000 0000      	orib #0,%d0
   496ba:	0000 0100      	orib #0,%d0
   496be:	0000 02c0      	orib #-64,%d0
   496c2:	0000 45c0      	orib #-64,%d0
   496c6:	0000 6180      	orib #-128,%d0
   496ca:	0000 7f00      	orib #0,%d0
   496ce:	0000 fe00      	orib #0,%d0
   496d2:	0000 f000      	orib #0,%d0
   496d6:	0000 c000      	orib #0,%d0
	...
   496ee:	0000 ffff      	orib #-1,%d0
   496f2:	0000 fffe      	orib #-2,%d0
   496f6:	0000 fffe      	orib #-2,%d0
   496fa:	0000 fffe      	orib #-2,%d0
   496fe:	0000 fffc      	orib #-4,%d0
   49702:	0000 f7f0      	orib #-16,%d0
   49706:	0000 f1e0      	orib #-32,%d0
   4970a:	0000 e0c0      	orib #-64,%d0
   4970e:	0000 e1c0      	orib #-64,%d0
   49712:	0000 81c0      	orib #-64,%d0
   49716:	0000 01c0      	orib #-64,%d0
   4971a:	0000 03c0      	orib #-64,%d0
   4971e:	0000 07c0      	orib #-64,%d0
   49722:	0000 efc0      	orib #-64,%d0
   49726:	0000 ff80      	orib #-128,%d0
   4972a:	0000 ff00      	orib #0,%d0
   4972e:	0000 fe00      	orib #0,%d0
   49732:	0000 f000      	orib #0,%d0
   49736:	0000 c000      	orib #0,%d0
	...
   4974e:	0000 ffff      	orib #-1,%d0
   49752:	0000 fffe      	orib #-2,%d0
   49756:	0000 fffe      	orib #-2,%d0
   4975a:	0000 fffe      	orib #-2,%d0
   4975e:	0000 fffc      	orib #-4,%d0
   49762:	0000 f7f0      	orib #-16,%d0
   49766:	0000 f1e0      	orib #-32,%d0
   4976a:	0000 e0c0      	orib #-64,%d0
   4976e:	0000 e1c0      	orib #-64,%d0
   49772:	0000 81c0      	orib #-64,%d0
   49776:	0000 01c0      	orib #-64,%d0
   4977a:	0000 03c0      	orib #-64,%d0
   4977e:	0000 07c0      	orib #-64,%d0
   49782:	0000 efc0      	orib #-64,%d0
   49786:	0000 ff80      	orib #-128,%d0
   4978a:	0000 ff00      	orib #0,%d0
   4978e:	0000 fe00      	orib #0,%d0
   49792:	0000 f000      	orib #0,%d0
   49796:	0000 c000      	orib #0,%d0
	...
   497ae:	0000 ddfe      	orib #-2,%d0
   497b2:	0000 bafc      	orib #-4,%d0
   497b6:	0000 6c7c      	orib #124,%d0
   497ba:	0000 f4fc      	orib #-4,%d0
   497be:	0000 e0f0      	orib #-16,%d0
   497c2:	0000 e040      	orib #64,%d0
   497c6:	0000 80e0      	orib #-32,%d0
   497ca:	0000 84c0      	orib #-64,%d0
   497ce:	0000 a400      	orib #0,%d0
   497d2:	0000 0300      	orib #0,%d0
   497d6:	0000 0700      	orib #0,%d0
   497da:	0000 0d00      	orib #0,%d0
   497de:	0000 1900      	orib #0,%d0
   497e2:	0000 7a00      	orib #0,%d0
   497e6:	0000 8c00      	orib #0,%d0
   497ea:	0000 3000      	orib #0,%d0
   497ee:	0000 c000      	orib #0,%d0
	...
   4980e:	0000 3dff      	orib #-1,%d0
   49812:	0000 7ffe      	orib #-2,%d0
   49816:	0000 f6fe      	orib #-2,%d0
   4981a:	0000 8ebe      	orib #-66,%d0
   4981e:	0000 1efc      	orib #-4,%d0
   49822:	0000 30f0      	orib #-16,%d0
   49826:	0000 6260      	orib #96,%d0
   4982a:	0000 62c0      	orib #-64,%d0
   4982e:	0000 4200      	orib #0,%d0
   49832:	0000 0000      	orib #0,%d0
   49836:	0000 0400      	orib #0,%d0
   4983a:	0000 0b00      	orib #0,%d0
   4983e:	0000 1700      	orib #0,%d0
   49842:	0000 8600      	orib #0,%d0
   49846:	0000 fc00      	orib #0,%d0
   4984a:	0000 f800      	orib #0,%d0
   4984e:	0000 c000      	orib #0,%d0
	...
   4986e:	0000 ffff      	orib #-1,%d0
   49872:	0000 fffe      	orib #-2,%d0
   49876:	0000 fffe      	orib #-2,%d0
   4987a:	0000 fffe      	orib #-2,%d0
   4987e:	0000 fffc      	orib #-4,%d0
   49882:	0000 f7f0      	orib #-16,%d0
   49886:	0000 f3e0      	orib #-32,%d0
   4988a:	0000 e7c0      	orib #-64,%d0
   4988e:	0000 e700      	orib #0,%d0
   49892:	0000 8700      	orib #0,%d0
   49896:	0000 0f00      	orib #0,%d0
   4989a:	0000 1f00      	orib #0,%d0
   4989e:	0000 bf00      	orib #0,%d0
   498a2:	0000 fe00      	orib #0,%d0
   498a6:	0000 fc00      	orib #0,%d0
   498aa:	0000 f800      	orib #0,%d0
   498ae:	0000 c000      	orib #0,%d0
	...
   498ce:	0000 ffff      	orib #-1,%d0
   498d2:	0000 fffe      	orib #-2,%d0
   498d6:	0000 fffe      	orib #-2,%d0
   498da:	0000 fffe      	orib #-2,%d0
   498de:	0000 fffc      	orib #-4,%d0
   498e2:	0000 f7f0      	orib #-16,%d0
   498e6:	0000 f3e0      	orib #-32,%d0
   498ea:	0000 e7c0      	orib #-64,%d0
   498ee:	0000 e700      	orib #0,%d0
   498f2:	0000 8700      	orib #0,%d0
   498f6:	0000 0f00      	orib #0,%d0
   498fa:	0000 1f00      	orib #0,%d0
   498fe:	0000 bf00      	orib #0,%d0
   49902:	0000 fe00      	orib #0,%d0
   49906:	0000 fc00      	orib #0,%d0
   4990a:	0000 f800      	orib #0,%d0
   4990e:	0000 c000      	orib #0,%d0
	...
   4992e:	0000 dcfe      	orib #-2,%d0
   49932:	0000 bafc      	orib #-4,%d0
   49936:	0000 6c7c      	orib #124,%d0
   4993a:	0000 f4bc      	orib #-68,%d0
   4993e:	0000 e0f0      	orib #-16,%d0
   49942:	0000 e440      	orib #64,%d0
   49946:	0000 84e0      	orib #-32,%d0
   4994a:	0000 83c0      	orib #-64,%d0
   4994e:	0000 a700      	orib #0,%d0
   49952:	0000 0d00      	orib #0,%d0
   49956:	0000 1900      	orib #0,%d0
   4995a:	0000 7a00      	orib #0,%d0
   4995e:	0000 8c00      	orib #0,%d0
   49962:	0000 3000      	orib #0,%d0
   49966:	0000 c000      	orib #0,%d0
	...
   4998e:	0000 3cff      	orib #-1,%d0
   49992:	0000 7efe      	orib #-2,%d0
   49996:	0000 f6fe      	orib #-2,%d0
   4999a:	0000 8cfe      	orib #-2,%d0
   4999e:	0000 1efc      	orib #-4,%d0
   499a2:	0000 32f0      	orib #-16,%d0
   499a6:	0000 6260      	orib #96,%d0
   499aa:	0000 60c0      	orib #-64,%d0
   499ae:	0000 4400      	orib #0,%d0
   499b2:	0000 0b00      	orib #0,%d0
   499b6:	0000 1700      	orib #0,%d0
   499ba:	0000 8600      	orib #0,%d0
   499be:	0000 fc00      	orib #0,%d0
   499c2:	0000 f800      	orib #0,%d0
   499c6:	0000 c000      	orib #0,%d0
	...
   499ee:	0000 ffff      	orib #-1,%d0
   499f2:	0000 fffe      	orib #-2,%d0
   499f6:	0000 fffe      	orib #-2,%d0
   499fa:	0000 fffe      	orib #-2,%d0
   499fe:	0000 fffc      	orib #-4,%d0
   49a02:	0000 f7f0      	orib #-16,%d0
   49a06:	0000 f7e0      	orib #-32,%d0
   49a0a:	0000 e7c0      	orib #-64,%d0
   49a0e:	0000 ef00      	orib #0,%d0
   49a12:	0000 9f00      	orib #0,%d0
   49a16:	0000 bf00      	orib #0,%d0
   49a1a:	0000 fe00      	orib #0,%d0
   49a1e:	0000 fc00      	orib #0,%d0
   49a22:	0000 f800      	orib #0,%d0
   49a26:	0000 c000      	orib #0,%d0
	...
   49a4e:	0000 ffff      	orib #-1,%d0
   49a52:	0000 fffe      	orib #-2,%d0
   49a56:	0000 fffe      	orib #-2,%d0
   49a5a:	0000 fffe      	orib #-2,%d0
   49a5e:	0000 fffc      	orib #-4,%d0
   49a62:	0000 f7f0      	orib #-16,%d0
   49a66:	0000 f7e0      	orib #-32,%d0
   49a6a:	0000 e7c0      	orib #-64,%d0
   49a6e:	0000 ef00      	orib #0,%d0
   49a72:	0000 9f00      	orib #0,%d0
   49a76:	0000 bf00      	orib #0,%d0
   49a7a:	0000 fe00      	orib #0,%d0
   49a7e:	0000 fc00      	orib #0,%d0
   49a82:	0000 f800      	orib #0,%d0
   49a86:	0000 c000      	orib #0,%d0
	...
   49aae:	0000 0007      	orib #7,%d0
   49ab2:	0000 002d      	orib #45,%d0
   49ab6:	0000 002b      	orib #43,%d0
   49aba:	0000 0006      	orib #6,%d0
   49abe:	0000 0004      	orib #4,%d0
   49ac2:	0000 0004      	orib #4,%d0
   49ac6:	0000 0004      	orib #4,%d0
   49aca:	0000 0004      	orib #4,%d0
   49ace:	0000 0004      	orib #4,%d0
   49ad2:	0000 0004      	orib #4,%d0
   49ad6:	0000 0004      	orib #4,%d0
   49ada:	0000 0004      	orib #4,%d0
   49ade:	0000 0004      	orib #4,%d0
   49ae2:	0000 0004      	orib #4,%d0
   49ae6:	0000 0004      	orib #4,%d0
   49aea:	0000 0004      	orib #4,%d0
   49aee:	0000 0004      	orib #4,%d0
   49af2:	0000 0004      	orib #4,%d0
   49af6:	0000 0004      	orib #4,%d0
   49afa:	0000 0004      	orib #4,%d0
   49afe:	0000 0004      	orib #4,%d0
   49b02:	0000 0016      	orib #22,%d0
   49b06:	0000 002b      	orib #43,%d0
   49b0a:	0000 0039      	orib #57,%d0
   49b0e:	0000 0001      	orib #1,%d0
   49b12:	0000 0003      	orib #3,%d0
   49b16:	0000 0007      	orib #7,%d0
   49b1a:	0000 000e      	orib #14,%d0
   49b1e:	0000 000c      	orib #12,%d0
   49b22:	0000 000c      	orib #12,%d0
   49b26:	0000 000c      	orib #12,%d0
   49b2a:	0000 000c      	orib #12,%d0
   49b2e:	0000 000c      	orib #12,%d0
   49b32:	0000 000c      	orib #12,%d0
   49b36:	0000 000c      	orib #12,%d0
   49b3a:	0000 000c      	orib #12,%d0
   49b3e:	0000 000c      	orib #12,%d0
   49b42:	0000 000c      	orib #12,%d0
   49b46:	0000 000c      	orib #12,%d0
   49b4a:	0000 000c      	orib #12,%d0
   49b4e:	0000 000c      	orib #12,%d0
   49b52:	0000 000c      	orib #12,%d0
   49b56:	0000 000c      	orib #12,%d0
   49b5a:	0000 000c      	orib #12,%d0
   49b5e:	0000 000c      	orib #12,%d0
   49b62:	0000 000e      	orib #14,%d0
   49b66:	0000 001f      	orib #31,%d0
   49b6a:	0000 001f      	orib #31,%d0
   49b6e:	0000 0077      	orib #119,%d0
   49b72:	0000 007f      	orib #127,%d0
   49b76:	0000 003f      	orib #63,%d0
   49b7a:	0000 001e      	orib #30,%d0
   49b7e:	0000 001c      	orib #28,%d0
   49b82:	0000 001c      	orib #28,%d0
   49b86:	0000 001c      	orib #28,%d0
   49b8a:	0000 001c      	orib #28,%d0
   49b8e:	0000 001c      	orib #28,%d0
   49b92:	0000 001c      	orib #28,%d0
   49b96:	0000 001c      	orib #28,%d0
   49b9a:	0000 001c      	orib #28,%d0
   49b9e:	0000 001c      	orib #28,%d0
   49ba2:	0000 001c      	orib #28,%d0
   49ba6:	0000 001c      	orib #28,%d0
   49baa:	0000 001c      	orib #28,%d0
   49bae:	0000 001c      	orib #28,%d0
   49bb2:	0000 001c      	orib #28,%d0
   49bb6:	0000 001c      	orib #28,%d0
   49bba:	0000 001c      	orib #28,%d0
   49bbe:	0000 003c      	orib #60,%d0
   49bc2:	0000 007e      	orib #126,%d0
   49bc6:	0000 007f      	orib #127,%d0
   49bca:	0000 007f      	orib #127,%d0
   49bce:	0000 0077      	orib #119,%d0
   49bd2:	0000 007f      	orib #127,%d0
   49bd6:	0000 003f      	orib #63,%d0
   49bda:	0000 001e      	orib #30,%d0
   49bde:	0000 001c      	orib #28,%d0
   49be2:	0000 001c      	orib #28,%d0
   49be6:	0000 001c      	orib #28,%d0
   49bea:	0000 001c      	orib #28,%d0
   49bee:	0000 001c      	orib #28,%d0
   49bf2:	0000 001c      	orib #28,%d0
   49bf6:	0000 001c      	orib #28,%d0
   49bfa:	0000 001c      	orib #28,%d0
   49bfe:	0000 001c      	orib #28,%d0
   49c02:	0000 001c      	orib #28,%d0
   49c06:	0000 001c      	orib #28,%d0
   49c0a:	0000 001c      	orib #28,%d0
   49c0e:	0000 001c      	orib #28,%d0
   49c12:	0000 001c      	orib #28,%d0
   49c16:	0000 001c      	orib #28,%d0
   49c1a:	0000 001c      	orib #28,%d0
   49c1e:	0000 003c      	orib #60,%d0
   49c22:	0000 007e      	orib #126,%d0
   49c26:	0000 007f      	orib #127,%d0
   49c2a:	0000 007f      	orib #127,%d0
   49c2e:	0000 0001      	orib #1,%d0
   49c32:	0000 0003      	orib #3,%d0
   49c36:	0000 0001      	orib #1,%d0
   49c3a:	2000           	movel %d0,%d0
   49c3c:	0000 3000      	orib #0,%d0
   49c40:	0002 6000      	orib #0,%d2
   49c44:	0000 8000      	orib #0,%d0
   49c48:	0000 8000      	orib #0,%d0
   49c4c:	0004 8000      	orib #0,%d4
   49c50:	0001 0000      	orib #0,%d1
   49c54:	0001 0000      	orib #0,%d1
   49c58:	000a           	.short 0x000a
   49c5a:	0000 0002      	orib #2,%d0
   49c5e:	0000 0012      	orib #18,%d0
   49c62:	0000 0004      	orib #4,%d0
   49c66:	0000 0004      	orib #4,%d0
   49c6a:	0000 0028      	orib #40,%d0
   49c6e:	0000 0008      	orib #8,%d0
   49c72:	0000 0048      	orib #72,%d0
   49c76:	0000 0010      	orib #16,%d0
   49c7a:	0000 0090      	orib #-112,%d0
   49c7e:	0000 0170      	orib #112,%d0
   49c82:	0000 0078      	orib #120,%d0
   49c86:	0000 0028      	orib #40,%d0
	...
   49c96:	8000           	orb %d0,%d0
   49c98:	0000 1000      	orib #0,%d0
   49c9c:	0000 f000      	orib #0,%d0
   49ca0:	0000 e000      	orib #0,%d0
   49ca4:	0001 8000      	orib #0,%d1
   49ca8:	0001 8000      	orib #0,%d1
   49cac:	0001 8000      	orib #0,%d1
   49cb0:	0003 0000      	orib #0,%d3
   49cb4:	0003 0000      	orib #0,%d3
   49cb8:	0006 0000      	orib #0,%d6
   49cbc:	0006 0000      	orib #0,%d6
   49cc0:	0006 0000      	orib #0,%d6
   49cc4:	000c           	.short 0x000c
   49cc6:	0000 000c      	orib #12,%d0
   49cca:	0000 0018      	orib #24,%d0
   49cce:	0000 0018      	orib #24,%d0
   49cd2:	0000 0018      	orib #24,%d0
   49cd6:	0000 0030      	orib #48,%d0
   49cda:	0000 0030      	orib #48,%d0
   49cde:	0000 0030      	orib #48,%d0
   49ce2:	0000 0098      	orib #-104,%d0
   49ce6:	0000 0018      	orib #24,%d0
   49cea:	0000 0000      	orib #0,%d0
   49cee:	0000 0003      	orib #3,%d0
   49cf2:	0000 0003      	orib #3,%d0
   49cf6:	8000           	orb %d0,%d0
   49cf8:	0003 f000      	orib #0,%d3
   49cfc:	0003 f000      	orib #0,%d3
   49d00:	0003 e000      	orib #0,%d3
   49d04:	0003 8000      	orib #0,%d3
   49d08:	0003 8000      	orib #0,%d3
   49d0c:	0007 8000      	orib #0,%d7
   49d10:	0007 0000      	orib #0,%d7
   49d14:	0007 0000      	orib #0,%d7
   49d18:	000e           	.short 0x000e
   49d1a:	0000 000e      	orib #14,%d0
   49d1e:	0000 001e      	orib #30,%d0
   49d22:	0000 001c      	orib #28,%d0
   49d26:	0000 001c      	orib #28,%d0
   49d2a:	0000 0038      	orib #56,%d0
   49d2e:	0000 0038      	orib #56,%d0
   49d32:	0000 0078      	orib #120,%d0
   49d36:	0000 00f0      	orib #-16,%d0
   49d3a:	0000 01f0      	orib #-16,%d0
   49d3e:	0000 03f0      	orib #-16,%d0
   49d42:	0000 03f8      	orib #-8,%d0
   49d46:	0000 0038      	orib #56,%d0
   49d4a:	0000 0000      	orib #0,%d0
   49d4e:	0000 0003      	orib #3,%d0
   49d52:	0000 0003      	orib #3,%d0
   49d56:	8000           	orb %d0,%d0
   49d58:	0003 f000      	orib #0,%d3
   49d5c:	0003 f000      	orib #0,%d3
   49d60:	0003 e000      	orib #0,%d3
   49d64:	0003 8000      	orib #0,%d3
   49d68:	0003 8000      	orib #0,%d3
   49d6c:	0007 8000      	orib #0,%d7
   49d70:	0007 0000      	orib #0,%d7
   49d74:	0007 0000      	orib #0,%d7
   49d78:	000e           	.short 0x000e
   49d7a:	0000 000e      	orib #14,%d0
   49d7e:	0000 001e      	orib #30,%d0
   49d82:	0000 001c      	orib #28,%d0
   49d86:	0000 001c      	orib #28,%d0
   49d8a:	0000 0038      	orib #56,%d0
   49d8e:	0000 0038      	orib #56,%d0
   49d92:	0000 0078      	orib #120,%d0
   49d96:	0000 00f0      	orib #-16,%d0
   49d9a:	0000 01f0      	orib #-16,%d0
   49d9e:	0000 03f0      	orib #-16,%d0
   49da2:	0000 03f8      	orib #-8,%d0
   49da6:	0000 0038      	orib #56,%d0
	...
   49dbe:	1000           	moveb %d0,%d0
   49dc0:	0000 1400      	orib #0,%d0
   49dc4:	0000 5800      	orib #0,%d0
   49dc8:	0000 0e00      	orib #0,%d0
   49dcc:	0000 1c00      	orib #0,%d0
   49dd0:	0000 2000      	orib #0,%d0
   49dd4:	0000 4000      	orib #0,%d0
   49dd8:	0000 8000      	orib #0,%d0
   49ddc:	0001 0000      	orib #0,%d1
   49de0:	0002 0000      	orib #0,%d2
   49de4:	0004 0000      	orib #0,%d4
   49de8:	0008           	.short 0x0008
   49dea:	0000 0010      	orib #16,%d0
   49dee:	0000 0020      	orib #32,%d0
   49df2:	0000 0440      	orib #64,%d0
   49df6:	0000 0880      	orib #-128,%d0
   49dfa:	0000 0080      	orib #-128,%d0
   49dfe:	0000 0080      	orib #-128,%d0
   49e02:	0000 0280      	orib #-128,%d0
	...
   49e16:	2000           	movel %d0,%d0
   49e18:	0000 1000      	orib #0,%d0
   49e1c:	0000 0000      	orib #0,%d0
   49e20:	0000 0800      	orib #0,%d0
   49e24:	0000 0600      	orib #0,%d0
   49e28:	0000 1e00      	orib #0,%d0
   49e2c:	0000 3c00      	orib #0,%d0
   49e30:	0000 6000      	orib #0,%d0
   49e34:	0000 c000      	orib #0,%d0
   49e38:	0001 8000      	orib #0,%d1
   49e3c:	0003 0000      	orib #0,%d3
   49e40:	0006 0000      	orib #0,%d6
   49e44:	000c           	.short 0x000c
   49e46:	0000 0018      	orib #24,%d0
   49e4a:	0000 0030      	orib #48,%d0
   49e4e:	0000 0060      	orib #96,%d0
   49e52:	0000 00c0      	orib #-64,%d0
   49e56:	0000 0180      	orib #-128,%d0
   49e5a:	0000 0180      	orib #-128,%d0
   49e5e:	0000 0180      	orib #-128,%d0
   49e62:	0000 0180      	orib #-128,%d0
	...
   49e76:	2000           	movel %d0,%d0
   49e78:	0000 3000      	orib #0,%d0
   49e7c:	0000 7000      	orib #0,%d0
   49e80:	0000 7c00      	orib #0,%d0
   49e84:	0000 7e00      	orib #0,%d0
   49e88:	0000 7e00      	orib #0,%d0
   49e8c:	0000 fc00      	orib #0,%d0
   49e90:	0001 e000      	orib #0,%d1
   49e94:	0003 c000      	orib #0,%d3
   49e98:	0007 8000      	orib #0,%d7
   49e9c:	000f           	.short 0x000f
   49e9e:	0000 001e      	orib #30,%d0
   49ea2:	0000 003c      	orib #60,%d0
   49ea6:	0000 0078      	orib #120,%d0
   49eaa:	0000 00f0      	orib #-16,%d0
   49eae:	0000 01e0      	orib #-32,%d0
   49eb2:	0000 0fc0      	orib #-64,%d0
   49eb6:	0000 1f80      	orib #-128,%d0
   49eba:	0000 0f80      	orib #-128,%d0
   49ebe:	0000 0380      	orib #-128,%d0
   49ec2:	0000 0380      	orib #-128,%d0
	...
   49ed6:	2000           	movel %d0,%d0
   49ed8:	0000 3000      	orib #0,%d0
   49edc:	0000 7000      	orib #0,%d0
   49ee0:	0000 7c00      	orib #0,%d0
   49ee4:	0000 7e00      	orib #0,%d0
   49ee8:	0000 7e00      	orib #0,%d0
   49eec:	0000 fc00      	orib #0,%d0
   49ef0:	0001 e000      	orib #0,%d1
   49ef4:	0003 c000      	orib #0,%d3
   49ef8:	0007 8000      	orib #0,%d7
   49efc:	000f           	.short 0x000f
   49efe:	0000 001e      	orib #30,%d0
   49f02:	0000 003c      	orib #60,%d0
   49f06:	0000 0078      	orib #120,%d0
   49f0a:	0000 00f0      	orib #-16,%d0
   49f0e:	0000 01e0      	orib #-32,%d0
   49f12:	0000 0fc0      	orib #-64,%d0
   49f16:	0000 1f80      	orib #-128,%d0
   49f1a:	0000 0f80      	orib #-128,%d0
   49f1e:	0000 0380      	orib #-128,%d0
   49f22:	0000 0380      	orib #-128,%d0
	...
   49f4a:	0400 0000      	subib #0,%d0
   49f4e:	0800 0000      	btst #0,%d0
   49f52:	2400           	movel %d0,%d2
   49f54:	0000 9a00      	orib #0,%d0
   49f58:	0004 9980      	orib #-128,%d4
   49f5c:	0012 e100      	orib #0,%a2@
   49f60:	0093 0000 245c 	oril #9308,%a3@
   49f66:	0000 7260      	orib #96,%d0
   49f6a:	0000 0b80      	orib #-128,%d0
   49f6e:	0000 0400      	orib #0,%d0
   49f72:	0000 1c00      	orib #0,%d0
   49f76:	0000 0800      	orib #0,%d0
	...
   49fae:	0200 0000      	andib #0,%d0
   49fb2:	0200 0000      	andib #0,%d0
   49fb6:	0180           	bclr %d0,%d0
   49fb8:	0000 7c80      	orib #-128,%d0
   49fbc:	0001 e300      	orib #0,%d1
   49fc0:	000f           	.short 0x000f
   49fc2:	0000 003c      	orib #60,%d0
   49fc6:	0000 01e0      	orib #-32,%d0
   49fca:	0000 2780      	orib #-128,%d0
   49fce:	0000 0c00      	orib #0,%d0
   49fd2:	0000 0c00      	orib #0,%d0
   49fd6:	0000 1800      	orib #0,%d0
	...
   4a006:	0600 0000      	addib #0,%d0
   4a00a:	0600 0000      	addib #0,%d0
   4a00e:	0e00           	.short 0x0e00
   4a010:	0000 3e00      	orib #0,%d0
   4a014:	0000 ff80      	orib #-128,%d0
   4a018:	0007 ff80      	orib #-128,%d7
   4a01c:	001f e300      	orib #0,%sp@+
   4a020:	00ff           	.short 0x00ff
   4a022:	0000 7ffc      	orib #-4,%d0
   4a026:	0000 7fe0      	orib #-32,%d0
   4a02a:	0000 3f80      	orib #-128,%d0
   4a02e:	0000 1c00      	orib #0,%d0
   4a032:	0000 1c00      	orib #0,%d0
   4a036:	0000 1800      	orib #0,%d0
	...
   4a066:	0600 0000      	addib #0,%d0
   4a06a:	0600 0000      	addib #0,%d0
   4a06e:	0e00           	.short 0x0e00
   4a070:	0000 3e00      	orib #0,%d0
   4a074:	0000 ff80      	orib #-128,%d0
   4a078:	0007 ff80      	orib #-128,%d7
   4a07c:	001f e300      	orib #0,%sp@+
   4a080:	00ff           	.short 0x00ff
   4a082:	0000 7ffc      	orib #-4,%d0
   4a086:	0000 7fe0      	orib #-32,%d0
   4a08a:	0000 3f80      	orib #-128,%d0
   4a08e:	0000 1c00      	orib #0,%d0
   4a092:	0000 1c00      	orib #0,%d0
   4a096:	0000 1800      	orib #0,%d0
	...
   4a0d2:	0000 2000      	orib #0,%d0
   4a0d6:	0000 4400      	orib #0,%d0
   4a0da:	0100           	btst %d0,%d0
   4a0dc:	1000           	moveb %d0,%d0
   4a0de:	0080 2800 0300 	oril #671089408,%d0
   4a0e4:	5fff           	sle %d7
   4a0e6:	fd80 3000      	cp0stl %d3,%d0,#1,#0
   4a0ea:	0680 6000 0380 	addil #1610613632,%d0
	...
   4a134:	1000           	moveb %d0,%d0
   4a136:	0000 0c00      	orib #0,%d0
   4a13a:	0080 2000 0180 	oril #536871296,%d0
   4a140:	1fff           	.short 0x1fff
   4a142:	fd00 3fff      	cp0stb %d3,%d0,#8,#511
   4a146:	fe00 7000      	cp1ldb %d0,%d7,#1,#0
   4a14a:	0700           	btst %d3,%d0
   4a14c:	6000 0380      	braw 0x4a4ce
	...
   4a194:	7000           	moveq #0,%d0
   4a196:	0180           	bclr %d0,%d0
   4a198:	7c00           	moveq #0,%d6
   4a19a:	0380           	bclr %d1,%d0
   4a19c:	3fff           	.short 0x3fff
   4a19e:	ff80 3fff      	cp1stl %d3,%d0,#8,#511
   4a1a2:	ff00 7fff      	cp1stb %d7,%d0,#8,#511
   4a1a6:	ff80 7000      	cp1stl %d7,%d0,#1,#0
   4a1aa:	0780           	bclr %d3,%d0
   4a1ac:	6000 0380      	braw 0x4a52e
	...
   4a1f4:	7000           	moveq #0,%d0
   4a1f6:	0180           	bclr %d0,%d0
   4a1f8:	7c00           	moveq #0,%d6
   4a1fa:	0380           	bclr %d1,%d0
   4a1fc:	3fff           	.short 0x3fff
   4a1fe:	ff80 3fff      	cp1stl %d3,%d0,#8,#511
   4a202:	ff00 7fff      	cp1stb %d7,%d0,#8,#511
   4a206:	ff80 7000      	cp1stl %d7,%d0,#1,#0
   4a20a:	0780           	bclr %d3,%d0
   4a20c:	6000 0380      	braw 0x4a58e
	...
   4a248:	0800 0000      	btst #0,%d0
   4a24c:	1c00           	moveb %d0,%d6
   4a24e:	0000 0400      	orib #0,%d0
   4a252:	0000 0b80      	orib #-128,%d0
   4a256:	0000 5060      	orib #96,%d0
   4a25a:	0000 2c9c      	orib #-100,%d0
   4a25e:	0000 00a3      	orib #-93,%d0
   4a262:	0000 0014      	orib #20,%d0
   4a266:	e000           	asrb #8,%d0
   4a268:	0001 1900      	orib #0,%d1
   4a26c:	0000 a280      	orib #-128,%d0
   4a270:	0000 1d00      	orib #0,%d0
   4a274:	0000 0a00      	orib #0,%d0
   4a278:	0000 0400      	orib #0,%d0
	...
   4a2a8:	1800           	moveb %d0,%d4
   4a2aa:	0000 0c00      	orib #0,%d0
   4a2ae:	0000 0c00      	orib #0,%d0
   4a2b2:	0000 2780      	orib #-128,%d0
   4a2b6:	0000 0be0      	orib #-32,%d0
   4a2ba:	0000 1c7c      	orib #124,%d0
   4a2be:	0000 001f      	orib #31,%d0
   4a2c2:	0000 0003      	orib #3,%d0
   4a2c6:	e000           	asrb #8,%d0
   4a2c8:	0000 f880      	orib #-128,%d0
   4a2cc:	0000 1d80      	orib #-128,%d0
   4a2d0:	0000 0100      	orib #0,%d0
   4a2d4:	0000 0600      	orib #0,%d0
   4a2d8:	0000 0200      	orib #0,%d0
   4a2dc:	0000 0200      	orib #0,%d0
	...
   4a308:	1800           	moveb %d0,%d4
   4a30a:	0000 1c00      	orib #0,%d0
   4a30e:	0000 1c00      	orib #0,%d0
   4a312:	0000 3f80      	orib #-128,%d0
   4a316:	0000 7fe0      	orib #-32,%d0
   4a31a:	0000 7ffc      	orib #-4,%d0
   4a31e:	0000 00ff      	orib #-1,%d0
   4a322:	0000 001f      	orib #31,%d0
   4a326:	e000           	asrb #8,%d0
   4a328:	0003 ff80      	orib #-128,%d3
   4a32c:	0000 ff80      	orib #-128,%d0
   4a330:	0000 3d00      	orib #0,%d0
   4a334:	0000 0e00      	orib #0,%d0
   4a338:	0000 0600      	orib #0,%d0
   4a33c:	0000 0600      	orib #0,%d0
	...
   4a368:	1800           	moveb %d0,%d4
   4a36a:	0000 1c00      	orib #0,%d0
   4a36e:	0000 1c00      	orib #0,%d0
   4a372:	0000 3f80      	orib #-128,%d0
   4a376:	0000 7fe0      	orib #-32,%d0
   4a37a:	0000 7ffc      	orib #-4,%d0
   4a37e:	0000 00ff      	orib #-1,%d0
   4a382:	0000 001f      	orib #31,%d0
   4a386:	e000           	asrb #8,%d0
   4a388:	0003 ff80      	orib #-128,%d3
   4a38c:	0000 ff80      	orib #-128,%d0
   4a390:	0000 3d00      	orib #0,%d0
   4a394:	0000 0e00      	orib #0,%d0
   4a398:	0000 0600      	orib #0,%d0
   4a39c:	0000 0600      	orib #0,%d0
	...
   4a3b8:	0100           	btst %d0,%d0
   4a3ba:	0000 0080      	orib #-128,%d0
   4a3be:	0000 0080      	orib #-128,%d0
   4a3c2:	0000 0680      	orib #-128,%d0
   4a3c6:	0000 0e80      	orib #-128,%d0
   4a3ca:	0000 0540      	orib #64,%d0
   4a3ce:	0000 00a0      	orib #-96,%d0
   4a3d2:	0000 0050      	orib #80,%d0
   4a3d6:	0000 0028      	orib #40,%d0
   4a3da:	0000 0014      	orib #20,%d0
   4a3de:	0000 000a      	orib #10,%d0
   4a3e2:	0000 0005      	orib #5,%d0
   4a3e6:	0000 0002      	orib #2,%d0
   4a3ea:	8000           	orb %d0,%d0
   4a3ec:	0001 4000      	orib #0,%d1
   4a3f0:	0000 a000      	orib #0,%d0
   4a3f4:	0000 5c00      	orib #0,%d0
   4a3f8:	0000 aa00      	orib #0,%d0
   4a3fc:	0000 1c00      	orib #0,%d0
   4a400:	0000 3000      	orib #0,%d0
   4a404:	0000 5000      	orib #0,%d0
	...
   4a418:	0100           	btst %d0,%d0
   4a41a:	0000 0180      	orib #-128,%d0
   4a41e:	0000 0180      	orib #-128,%d0
   4a422:	0000 0380      	orib #-128,%d0
   4a426:	0000 0180      	orib #-128,%d0
   4a42a:	0000 00c0      	orib #-64,%d0
   4a42e:	0000 0060      	orib #96,%d0
   4a432:	0000 0030      	orib #48,%d0
   4a436:	0000 0018      	orib #24,%d0
   4a43a:	0000 000c      	orib #12,%d0
   4a43e:	0000 0006      	orib #6,%d0
   4a442:	0000 0003      	orib #3,%d0
   4a446:	0000 0001      	orib #1,%d0
   4a44a:	8000           	orb %d0,%d0
   4a44c:	0000 c000      	orib #0,%d0
   4a450:	0000 6000      	orib #0,%d0
   4a454:	0000 3c00      	orib #0,%d0
   4a458:	0000 3600      	orib #0,%d0
   4a45c:	0000 3000      	orib #0,%d0
   4a460:	0000 1000      	orib #0,%d0
   4a464:	0000 1000      	orib #0,%d0
	...
   4a478:	0100           	btst %d0,%d0
   4a47a:	0000 0380      	orib #-128,%d0
   4a47e:	0000 0380      	orib #-128,%d0
   4a482:	0000 1f80      	orib #-128,%d0
   4a486:	0000 1f80      	orib #-128,%d0
   4a48a:	0000 0fc0      	orib #-64,%d0
   4a48e:	0000 01e0      	orib #-32,%d0
   4a492:	0000 00f0      	orib #-16,%d0
   4a496:	0000 0078      	orib #120,%d0
   4a49a:	0000 003c      	orib #60,%d0
   4a49e:	0000 001e      	orib #30,%d0
   4a4a2:	0000 000f      	orib #15,%d0
   4a4a6:	0000 0007      	orib #7,%d0
   4a4aa:	8000           	orb %d0,%d0
   4a4ac:	0003 c000      	orib #0,%d3
   4a4b0:	0001 e000      	orib #0,%d1
   4a4b4:	0000 fc00      	orib #0,%d0
   4a4b8:	0000 fe00      	orib #0,%d0
   4a4bc:	0000 7c00      	orib #0,%d0
   4a4c0:	0000 7000      	orib #0,%d0
   4a4c4:	0000 7000      	orib #0,%d0
	...
   4a4d8:	0100           	btst %d0,%d0
   4a4da:	0000 0380      	orib #-128,%d0
   4a4de:	0000 0380      	orib #-128,%d0
   4a4e2:	0000 1f80      	orib #-128,%d0
   4a4e6:	0000 1f80      	orib #-128,%d0
   4a4ea:	0000 0fc0      	orib #-64,%d0
   4a4ee:	0000 01e0      	orib #-32,%d0
   4a4f2:	0000 00f0      	orib #-16,%d0
   4a4f6:	0000 0078      	orib #120,%d0
   4a4fa:	0000 003c      	orib #60,%d0
   4a4fe:	0000 001e      	orib #30,%d0
   4a502:	0000 000f      	orib #15,%d0
   4a506:	0000 0007      	orib #7,%d0
   4a50a:	8000           	orb %d0,%d0
   4a50c:	0003 c000      	orib #0,%d3
   4a510:	0001 e000      	orib #0,%d1
   4a514:	0000 fc00      	orib #0,%d0
   4a518:	0000 fe00      	orib #0,%d0
   4a51c:	0000 7c00      	orib #0,%d0
   4a520:	0000 7000      	orib #0,%d0
   4a524:	0000 7000      	orib #0,%d0
	...
   4a534:	0060 0000      	oriw #0,%a0@-
   4a538:	0060 0000      	oriw #0,%a0@-
   4a53c:	00e0           	.short 0x00e0
   4a53e:	0000 0120      	orib #32,%d0
   4a542:	0000 01a0      	orib #-96,%d0
   4a546:	0000 0060      	orib #96,%d0
   4a54a:	0000 0050      	orib #80,%d0
   4a54e:	0000 0030      	orib #48,%d0
   4a552:	0000 0028      	orib #40,%d0
   4a556:	0000 0018      	orib #24,%d0
   4a55a:	0000 0014      	orib #20,%d0
   4a55e:	0000 000c      	orib #12,%d0
   4a562:	0000 000a      	orib #10,%d0
   4a566:	0000 000a      	orib #10,%d0
   4a56a:	0000 0006      	orib #6,%d0
   4a56e:	0000 0005      	orib #5,%d0
   4a572:	0000 0003      	orib #3,%d0
   4a576:	0000 0002      	orib #2,%d0
   4a57a:	8000           	orb %d0,%d0
   4a57c:	0002 c000      	orib #0,%d2
   4a580:	0000 e000      	orib #0,%d0
   4a584:	0000 3000      	orib #0,%d0
   4a588:	0001 9000      	orib #0,%d1
   4a58c:	0001 8000      	orib #0,%d1
   4a590:	0000 0000      	orib #0,%d0
   4a594:	0080 0000 0620 	oril #1568,%d0
   4a59a:	0000 0160      	orib #96,%d0
   4a59e:	0000 00e0      	orib #-32,%d0
   4a5a2:	0000 0060      	orib #96,%d0
   4a5a6:	0000 0020      	orib #32,%d0
   4a5aa:	0000 0030      	orib #48,%d0
   4a5ae:	0000 0010      	orib #16,%d0
   4a5b2:	0000 0018      	orib #24,%d0
   4a5b6:	0000 0008      	orib #8,%d0
   4a5ba:	0000 000c      	orib #12,%d0
   4a5be:	0000 0004      	orib #4,%d0
   4a5c2:	0000 0006      	orib #6,%d0
   4a5c6:	0000 0006      	orib #6,%d0
   4a5ca:	0000 0002      	orib #2,%d0
   4a5ce:	0000 0003      	orib #3,%d0
   4a5d2:	0000 0001      	orib #1,%d0
   4a5d6:	0000 0001      	orib #1,%d0
   4a5da:	8000           	orb %d0,%d0
   4a5dc:	0001 c000      	orib #0,%d1
   4a5e0:	0001 a000      	orib #0,%d1
   4a5e4:	0001 9000      	orib #0,%d1
   4a5e8:	0000 9000      	orib #0,%d0
   4a5ec:	0000 8000      	orib #0,%d0
   4a5f0:	0000 0000      	orib #0,%d0
   4a5f4:	00e0           	.short 0x00e0
   4a5f6:	0000 06e0      	orib #-32,%d0
   4a5fa:	0000 07e0      	orib #-32,%d0
   4a5fe:	0000 03e0      	orib #-32,%d0
   4a602:	0000 01e0      	orib #-32,%d0
   4a606:	0000 00e0      	orib #-32,%d0
   4a60a:	0000 00f0      	orib #-16,%d0
   4a60e:	0000 0070      	orib #112,%d0
   4a612:	0000 0078      	orib #120,%d0
   4a616:	0000 0038      	orib #56,%d0
   4a61a:	0000 003c      	orib #60,%d0
   4a61e:	0000 001c      	orib #28,%d0
   4a622:	0000 001e      	orib #30,%d0
   4a626:	0000 000e      	orib #14,%d0
   4a62a:	0000 000e      	orib #14,%d0
   4a62e:	0000 0007      	orib #7,%d0
   4a632:	0000 0007      	orib #7,%d0
   4a636:	0000 0007      	orib #7,%d0
   4a63a:	8000           	orb %d0,%d0
   4a63c:	0003 c000      	orib #0,%d3
   4a640:	0003 e000      	orib #0,%d3
   4a644:	0003 f000      	orib #0,%d3
   4a648:	0003 b000      	orib #0,%d3
   4a64c:	0003 8000      	orib #0,%d3
   4a650:	0000 0000      	orib #0,%d0
   4a654:	00e0           	.short 0x00e0
   4a656:	0000 06e0      	orib #-32,%d0
   4a65a:	0000 07e0      	orib #-32,%d0
   4a65e:	0000 03e0      	orib #-32,%d0
   4a662:	0000 01e0      	orib #-32,%d0
   4a666:	0000 00e0      	orib #-32,%d0
   4a66a:	0000 00f0      	orib #-16,%d0
   4a66e:	0000 0070      	orib #112,%d0
   4a672:	0000 0078      	orib #120,%d0
   4a676:	0000 0038      	orib #56,%d0
   4a67a:	0000 003c      	orib #60,%d0
   4a67e:	0000 001c      	orib #28,%d0
   4a682:	0000 001e      	orib #30,%d0
   4a686:	0000 000e      	orib #14,%d0
   4a68a:	0000 000e      	orib #14,%d0
   4a68e:	0000 0007      	orib #7,%d0
   4a692:	0000 0007      	orib #7,%d0
   4a696:	0000 0007      	orib #7,%d0
   4a69a:	8000           	orb %d0,%d0
   4a69c:	0003 c000      	orib #0,%d3
   4a6a0:	0003 e000      	orib #0,%d3
   4a6a4:	0003 f000      	orib #0,%d3
   4a6a8:	0003 b000      	orib #0,%d3
   4a6ac:	0003 8000      	orib #0,%d3
   4a6b0:	01e0           	bset %d0,%a0@-
   4a6b2:	03c0           	bset %d1,%d0
   4a6b4:	0080 0080 0040 	oril #8388672,%d0
   4a6ba:	4100           	chkl %d0,%d0
   4a6bc:	0000 5000      	orib #0,%d0
   4a6c0:	3001           	movew %d1,%d0
   4a6c2:	8004           	orb %d4,%d0
   4a6c4:	3002           	movew %d2,%d0
   4a6c6:	c400           	andb %d0,%d2
   4a6c8:	0007 2e00      	orib #0,%d7
   4a6cc:	0007 de00      	orib #0,%d7
   4a6d0:	0a83 bb48 0747 	eoril #-1152907449,%d3
   4a6d6:	b750           	eorw %d3,%a0@
   4a6d8:	0023 e300      	orib #0,%a3@-
   4a6dc:	0027 8700      	orib #0,%sp@-
   4a6e0:	0033 8e00 0029 	orib #0,%a3@(29,%d0:w)
   4a6e6:	5e00           	addqb #7,%d0
   4a6e8:	000b           	.short 0x000b
   4a6ea:	f200           	.short 0xf200
   4a6ec:	0007 fa00      	orib #0,%d7
   4a6f0:	0007 f800      	orib #0,%d7
   4a6f4:	000f           	.short 0x000f
   4a6f6:	f800           	.short 0xf800
   4a6f8:	000f           	.short 0x000f
   4a6fa:	f800           	.short 0xf800
   4a6fc:	000f           	.short 0x000f
   4a6fe:	f800           	.short 0xf800
   4a700:	000f           	.short 0x000f
   4a702:	f800 0007      	tblub %d0,%d7,%d0
   4a706:	f800 0002      	tblub %d0,%d2,%d0
   4a70a:	a000 0003      	macw %d0l,%d0l
   4a70e:	8000           	orb %d0,%d0
   4a710:	0010 4400      	orib #0,%a0@
   4a714:	0000 a000      	orib #0,%d0
   4a718:	0001 3000      	orib #0,%d1
   4a71c:	0006 3800      	orib #0,%d6
   4a720:	0008           	.short 0x0008
   4a722:	7c00           	moveq #0,%d6
   4a724:	0010 3e02      	orib #2,%a0@
   4a728:	0016 df02      	orib #2,%fp@
   4a72c:	0027 3f00      	orib #0,%sp@-
   4a730:	0103           	btst %d0,%d3
   4a732:	ffd0           	.short 0xffd0
   4a734:	0001 ffa0      	orib #-96,%d1
   4a738:	0000 bfc0      	orib #-64,%d0
   4a73c:	0080 7f80 0040 	oril #2139095104,%d0
   4a742:	7f00           	mvsb %d0,%d7
   4a744:	0001 4f00      	orib #0,%d1
   4a748:	0013 f700      	orib #0,%a3@
   4a74c:	0017 ff00      	orib #0,%sp@
   4a750:	0007 fe00      	orib #0,%d7
   4a754:	0007 fc00      	orib #0,%d7
   4a758:	0007 fc00      	orib #0,%d7
   4a75c:	0007 fc00      	orib #0,%d7
   4a760:	0007 fc00      	orib #0,%d7
   4a764:	000e           	.short 0x000e
   4a766:	ac00 0006      	macw %d0l,%d6l
   4a76a:	a800 0000      	macw %d0l,%d4l
   4a76e:	7000           	moveq #0,%d0
   4a770:	03f0 47e0 0488 	bset %d1,@(488)
   4a776:	e890           	roxrl #4,%d0
   4a778:	0841 f108      	bchg #8,%d1
   4a77c:	1047           	.short 0x1047
   4a77e:	f904           	.short 0xf904
   4a780:	300f           	movew %sp,%d0
   4a782:	fc04 301f      	cp0ldb %d4,%d3,#1,#31
   4a786:	fe06 301f      	cp1ldb %d6,%d3,#1,#31
   4a78a:	ff06 0839      	cp1stb %d0,%d6,#5,#57
   4a78e:	fb08           	.short 0xfb08
   4a790:	0ffc           	.short 0x0ffc
   4a792:	e7f8 07fe      	rolw 0x7fe
   4a796:	4ff0 01ff 5fc0 	lea @(5fc000ff)@(ffffffffff80007f),%sp
   4a79c:	00ff ff80 007f 
   4a7a2:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   4a7a6:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4a7aa:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4a7ae:	ff00 000f      	cp1stb %d0,%d0,#1,#15
   4a7b2:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4a7b6:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a7ba:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a7be:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a7c2:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a7c6:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4a7ca:	f800 0003      	tblub %d0,%d3,%d0
   4a7ce:	f000           	.short 0xf000
   4a7d0:	03f0 47e0 0488 	bset %d1,@(488)
   4a7d6:	e890           	roxrl #4,%d0
   4a7d8:	0841 f108      	bchg #8,%d1
   4a7dc:	1047           	.short 0x1047
   4a7de:	f904           	.short 0xf904
   4a7e0:	300f           	movew %sp,%d0
   4a7e2:	fc04 301f      	cp0ldb %d4,%d3,#1,#31
   4a7e6:	fe06 301f      	cp1ldb %d6,%d3,#1,#31
   4a7ea:	ff06 083f      	cp1stb %d0,%d6,#5,#63
   4a7ee:	ff08 0fff      	cp1stb %d0,%a0,#8,#511
   4a7f2:	fff8           	.short 0xfff8
   4a7f4:	07ff           	.short 0x07ff
   4a7f6:	fff0           	.short 0xfff0
   4a7f8:	01ff           	.short 0x01ff
   4a7fa:	ffc0           	.short 0xffc0
   4a7fc:	00ff           	.short 0x00ff
   4a7fe:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   4a802:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   4a806:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4a80a:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4a80e:	ff00 000f      	cp1stb %d0,%d0,#1,#15
   4a812:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4a816:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a81a:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a81e:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a822:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a826:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4a82a:	f800 0003      	tblub %d0,%d3,%d0
   4a82e:	f000           	.short 0xf000
   4a830:	0180           	bclr %d0,%d0
   4a832:	00c0           	bitrev %d0
   4a834:	0020 0200      	orib #0,%a0@-
   4a838:	0090 4480 0000 	oril #1149239296,%a0@
   4a83e:	5000           	addqb #8,%d0
   4a840:	3001           	movew %d1,%d0
   4a842:	8804           	orb %d4,%d4
   4a844:	3002           	movew %d2,%d0
   4a846:	c400           	andb %d0,%d2
   4a848:	0007 2e00      	orib #0,%d7
   4a84c:	0007 de00      	orib #0,%d7
   4a850:	0a83 bb48 0747 	eoril #-1152907449,%d3
   4a856:	b750           	eorw %d3,%a0@
   4a858:	0023 e300      	orib #0,%a3@-
   4a85c:	0027 8700      	orib #0,%sp@-
   4a860:	0033 8e00 0029 	orib #0,%a3@(29,%d0:w)
   4a866:	5e00           	addqb #7,%d0
   4a868:	000b           	.short 0x000b
   4a86a:	f200           	.short 0xf200
   4a86c:	0007 fa00      	orib #0,%d7
   4a870:	0007 f800      	orib #0,%d7
   4a874:	000f           	.short 0x000f
   4a876:	f800           	.short 0xf800
   4a878:	000f           	.short 0x000f
   4a87a:	f800           	.short 0xf800
   4a87c:	000f           	.short 0x000f
   4a87e:	f800           	.short 0xf800
   4a880:	000f           	.short 0x000f
   4a882:	f800 0007      	tblub %d0,%d7,%d0
   4a886:	f800 0002      	tblub %d0,%d2,%d0
   4a88a:	a000 0003      	macw %d0l,%d0l
   4a88e:	8000           	orb %d0,%d0
   4a890:	0040 4100      	oriw #16640,%d0
   4a894:	0080 a080 0001 	oril #-1602224127,%d0
   4a89a:	3000           	movew %d0,%d0
   4a89c:	0006 3800      	orib #0,%d6
   4a8a0:	0008           	.short 0x0008
   4a8a2:	7c00           	moveq #0,%d6
   4a8a4:	0010 3e02      	orib #2,%a0@
   4a8a8:	0016 df02      	orib #2,%fp@
   4a8ac:	0027 3f00      	orib #0,%sp@-
   4a8b0:	0103           	btst %d0,%d3
   4a8b2:	ffd0           	.short 0xffd0
   4a8b4:	0001 ffa0      	orib #-96,%d1
   4a8b8:	0000 bfc0      	orib #-64,%d0
   4a8bc:	0080 7f80 0040 	oril #2139095104,%d0
   4a8c2:	7f00           	mvsb %d0,%d7
   4a8c4:	0001 4f00      	orib #0,%d1
   4a8c8:	0013 f700      	orib #0,%a3@
   4a8cc:	0017 ff00      	orib #0,%sp@
   4a8d0:	0007 fe00      	orib #0,%d7
   4a8d4:	0007 fc00      	orib #0,%d7
   4a8d8:	0007 fc00      	orib #0,%d7
   4a8dc:	0007 fc00      	orib #0,%d7
   4a8e0:	0007 fc00      	orib #0,%d7
   4a8e4:	000e           	.short 0x000e
   4a8e6:	ac00 0006      	macw %d0l,%d6l
   4a8ea:	a800 0000      	macw %d0l,%d4l
   4a8ee:	7000           	moveq #0,%d0
   4a8f0:	03c0           	bset %d1,%d0
   4a8f2:	41e0           	.short 0x41e0
   4a8f4:	04a0 e290 0891 	subil #-493877103,%a0@-
   4a8fa:	f488           	cinvl ic,%a0@
   4a8fc:	1097           	moveb %sp@,%a0@
   4a8fe:	fc84 300f      	cp0ldl %d4,%d3,#1,#15
   4a902:	fc04 301f      	cp0ldb %d4,%d3,#1,#31
   4a906:	fe06 301f      	cp1ldb %d6,%d3,#1,#31
   4a90a:	ff06 0839      	cp1stb %d0,%d6,#5,#57
   4a90e:	fb08           	.short 0xfb08
   4a910:	0ffc           	.short 0x0ffc
   4a912:	e7f8 07fe      	rolw 0x7fe
   4a916:	4ff0 01ff 5fc0 	lea @(5fc000ff)@(ffffffffff80007f),%sp
   4a91c:	00ff ff80 007f 
   4a922:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   4a926:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4a92a:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4a92e:	ff00 000f      	cp1stb %d0,%d0,#1,#15
   4a932:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4a936:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a93a:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a93e:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a942:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a946:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4a94a:	f800 0003      	tblub %d0,%d3,%d0
   4a94e:	f000           	.short 0xf000
   4a950:	03c0           	bset %d1,%d0
   4a952:	41e0           	.short 0x41e0
   4a954:	04a0 e290 0891 	subil #-493877103,%a0@-
   4a95a:	f488           	cinvl ic,%a0@
   4a95c:	1097           	moveb %sp@,%a0@
   4a95e:	fc84 300f      	cp0ldl %d4,%d3,#1,#15
   4a962:	fc04 301f      	cp0ldb %d4,%d3,#1,#31
   4a966:	fe06 301f      	cp1ldb %d6,%d3,#1,#31
   4a96a:	ff06 083f      	cp1stb %d0,%d6,#5,#63
   4a96e:	ff08 0fff      	cp1stb %d0,%a0,#8,#511
   4a972:	fff8           	.short 0xfff8
   4a974:	07ff           	.short 0x07ff
   4a976:	fff0           	.short 0xfff0
   4a978:	01ff           	.short 0x01ff
   4a97a:	ffc0           	.short 0xffc0
   4a97c:	00ff           	.short 0x00ff
   4a97e:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   4a982:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   4a986:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4a98a:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4a98e:	ff00 000f      	cp1stb %d0,%d0,#1,#15
   4a992:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4a996:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a99a:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a99e:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a9a2:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4a9a6:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4a9aa:	f800 0003      	tblub %d0,%d3,%d0
   4a9ae:	f000           	.short 0xf000
   4a9b0:	0100           	btst %d0,%d0
   4a9b2:	0040 0100      	oriw #256,%d0
   4a9b6:	0040 0140      	oriw #320,%d0
   4a9ba:	4140           	.short 0x4140
   4a9bc:	0140           	bchg %d0,%d0
   4a9be:	5140           	subqw #8,%d0
   4a9c0:	3041           	moveaw %d1,%a0
   4a9c2:	8904           	sbcd %d4,%d4
   4a9c4:	3002           	movew %d2,%d0
   4a9c6:	c404           	andb %d4,%d2
   4a9c8:	2007           	movel %d7,%d0
   4a9ca:	2e00           	movel %d0,%d7
   4a9cc:	0007 de00      	orib #0,%d7
   4a9d0:	0a83 bb48 0747 	eoril #-1152907449,%d3
   4a9d6:	b750           	eorw %d3,%a0@
   4a9d8:	0023 e300      	orib #0,%a3@-
   4a9dc:	0027 8700      	orib #0,%sp@-
   4a9e0:	0033 8e00 0029 	orib #0,%a3@(29,%d0:w)
   4a9e6:	5e00           	addqb #7,%d0
   4a9e8:	000b           	.short 0x000b
   4a9ea:	f200           	.short 0xf200
   4a9ec:	0007 fa00      	orib #0,%d7
   4a9f0:	0007 f800      	orib #0,%d7
   4a9f4:	000f           	.short 0x000f
   4a9f6:	f800 0007      	tblub %d0,%d7,%d0
   4a9fa:	f800 0007      	tblub %d0,%d7,%d0
   4a9fe:	f800 0007      	tblub %d0,%d7,%d0
   4aa02:	f800 0000      	tblub %d0,%d0,%d0
   4aa06:	0000 0000      	orib #0,%d0
   4aa0a:	d000           	addb %d0,%d0
   4aa0c:	0000 0000      	orib #0,%d0
   4aa10:	0000 4000      	orib #0,%d0
   4aa14:	0000 a000      	orib #0,%d0
   4aa18:	0001 3000      	orib #0,%d1
   4aa1c:	0006 3800      	orib #0,%d6
   4aa20:	0008           	.short 0x0008
   4aa22:	7c00           	moveq #0,%d6
   4aa24:	0010 3e02      	orib #2,%a0@
   4aa28:	0016 df02      	orib #2,%fp@
   4aa2c:	0027 3f00      	orib #0,%sp@-
   4aa30:	0103           	btst %d0,%d3
   4aa32:	ffd0           	.short 0xffd0
   4aa34:	0001 ffa0      	orib #-96,%d1
   4aa38:	0000 bfc0      	orib #-64,%d0
   4aa3c:	0080 7f80 0040 	oril #2139095104,%d0
   4aa42:	7f00           	mvsb %d0,%d7
   4aa44:	0001 4f00      	orib #0,%d1
   4aa48:	0013 f700      	orib #0,%a3@
   4aa4c:	0017 ff00      	orib #0,%sp@
   4aa50:	0007 fe00      	orib #0,%d7
   4aa54:	0007 fc00      	orib #0,%d7
   4aa58:	0003 fc00      	orib #0,%d3
   4aa5c:	0003 fc00      	orib #0,%d3
   4aa60:	0002 ac00      	orib #0,%d2
   4aa64:	0002 a800      	orib #0,%d2
   4aa68:	0000 3000      	orib #0,%d0
   4aa6c:	0000 0000      	orib #0,%d0
   4aa70:	0300           	btst %d1,%d0
   4aa72:	4060           	negxw %a0@-
   4aa74:	0580           	bclr %d2,%d0
   4aa76:	e0d0           	asrw %a0@
   4aa78:	0941           	bchg %d4,%d1
   4aa7a:	f148           	.short 0xf148
   4aa7c:	1147 f944      	moveb %d7,%a0@(-1724)
   4aa80:	324f           	moveaw %sp,%a1
   4aa82:	fd24 309f      	cp0stb %d3,%a4@-,#1,#159
   4aa86:	fe86 301f      	cp1ldl %d6,%d3,#1,#31
   4aa8a:	ff06 0839      	cp1stb %d0,%d6,#5,#57
   4aa8e:	fb08           	.short 0xfb08
   4aa90:	0ffc           	.short 0x0ffc
   4aa92:	e7f8 07fe      	rolw 0x7fe
   4aa96:	4ff0 01ff 5fc0 	lea @(5fc000ff)@(ffffffffff80007f),%sp
   4aa9c:	00ff ff80 007f 
   4aaa2:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   4aaa6:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4aaaa:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4aaae:	ff00 000f      	cp1stb %d0,%d0,#1,#15
   4aab2:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4aab6:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4aaba:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4aabe:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4aac2:	fc00 0003      	cp0ldb %d0,%d0,#1,#3
   4aac6:	f800 0000      	tblub %d0,%d0,%d0
   4aaca:	f000           	.short 0xf000
   4aacc:	0000 0000      	orib #0,%d0
   4aad0:	0300           	btst %d1,%d0
   4aad2:	4060           	negxw %a0@-
   4aad4:	0580           	bclr %d2,%d0
   4aad6:	e0d0           	asrw %a0@
   4aad8:	0941           	bchg %d4,%d1
   4aada:	f148           	.short 0xf148
   4aadc:	1147 f944      	moveb %d7,%a0@(-1724)
   4aae0:	324f           	moveaw %sp,%a1
   4aae2:	fd24 309f      	cp0stb %d3,%a4@-,#1,#159
   4aae6:	fe86 301f      	cp1ldl %d6,%d3,#1,#31
   4aaea:	ff06 083f      	cp1stb %d0,%d6,#5,#63
   4aaee:	ff08 0fff      	cp1stb %d0,%a0,#8,#511
   4aaf2:	fff8           	.short 0xfff8
   4aaf4:	07ff           	.short 0x07ff
   4aaf6:	fff0           	.short 0xfff0
   4aaf8:	01ff           	.short 0x01ff
   4aafa:	ffc0           	.short 0xffc0
   4aafc:	00ff           	.short 0x00ff
   4aafe:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   4ab02:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   4ab06:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4ab0a:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4ab0e:	ff00 000f      	cp1stb %d0,%d0,#1,#15
   4ab12:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4ab16:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4ab1a:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4ab1e:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4ab22:	fc00 0003      	cp0ldb %d0,%d0,#1,#3
   4ab26:	f800 0000      	tblub %d0,%d0,%d0
   4ab2a:	f000           	.short 0xf000
	...
   4ab38:	0400 4010      	subib #16,%d0
   4ab3c:	0800 5008      	btst #8,%d0
   4ab40:	1001           	moveb %d1,%d0
   4ab42:	8804           	orb %d4,%d4
   4ab44:	0002 c400      	orib #0,%d2
   4ab48:	4207           	clrb %d7
   4ab4a:	2e21           	movel %a1@-,%d7
   4ab4c:	2007           	movel %d7,%d0
   4ab4e:	de00           	addb %d0,%d7
   4ab50:	4a83           	tstl %d3
   4ab52:	bba9 1207      	eorl %d5,%a1@(4615)
   4ab56:	b764           	eorw %d3,%a4@-
   4ab58:	0063 e300      	oriw #-7424,%a3@-
   4ab5c:	0027 8700      	orib #0,%sp@-
   4ab60:	0013 8e00      	orib #0,%a3@
   4ab64:	0009           	.short 0x0009
   4ab66:	5e00           	addqb #7,%d0
   4ab68:	000b           	.short 0x000b
   4ab6a:	f200           	.short 0xf200
   4ab6c:	0007 fa00      	orib #0,%d7
   4ab70:	0007 f800      	orib #0,%d7
   4ab74:	000f           	.short 0x000f
   4ab76:	f800 0007      	tblub %d0,%d7,%d0
   4ab7a:	f800 0007      	tblub %d0,%d7,%d0
   4ab7e:	f800 0002      	tblub %d0,%d2,%d0
   4ab82:	a000 0001      	macw %d0l,%d0l
   4ab86:	c000           	andb %d0,%d0
   4ab88:	0000 4000      	orib #0,%d0
   4ab8c:	0000 0000      	orib #0,%d0
   4ab90:	0000 4000      	orib #0,%d0
   4ab94:	0000 a000      	orib #0,%d0
   4ab98:	0801 3008      	btst #8,%d1
   4ab9c:	0006 3800      	orib #0,%d6
   4aba0:	0008           	.short 0x0008
   4aba2:	7c00           	moveq #0,%d6
   4aba4:	0010 3e00      	orib #0,%a0@
   4aba8:	0016 df00      	orib #0,%fp@
   4abac:	4047           	negxw %d7
   4abae:	3f01           	movew %d1,%sp@-
   4abb0:	0103           	btst %d0,%d3
   4abb2:	ff40 0c01      	cp1stw %d0,%d0,#7,#1
   4abb6:	ff98 0180      	cp1stl %d0,%a0@+,#1,#384
   4abba:	bfc0           	cmpal %d0,%sp
   4abbc:	0080 7f80 0020 	oril #2139095072,%d0
   4abc2:	7f00           	mvsb %d0,%d7
   4abc4:	0021 4f00      	orib #0,%a1@-
   4abc8:	0013 f700      	orib #0,%a3@
   4abcc:	0017 ff00      	orib #0,%sp@
   4abd0:	0007 fe00      	orib #0,%d7
   4abd4:	0007 fc00      	orib #0,%d7
   4abd8:	0003 fc00      	orib #0,%d3
   4abdc:	0002 ac00      	orib #0,%d2
   4abe0:	0000 a800      	orib #0,%d0
   4abe4:	0000 3000      	orib #0,%d0
   4abe8:	0000 a000      	orib #0,%d0
   4abec:	0000 0000      	orib #0,%d0
   4abf0:	0000 4000      	orib #0,%d0
   4abf4:	0000 e000      	orib #0,%d0
   4abf8:	0e01           	.short 0x0e01
   4abfa:	f038           	.short 0xf038
   4abfc:	0907           	btst %d4,%d7
   4abfe:	f848           	.short 0xf848
   4ac00:	1c8f           	.short 0x1c8f
   4ac02:	fc9c 221f      	cp0ldl %a4@+,%d2,#2,#31
   4ac06:	fe22 421f      	cp1ldb %a2@-,%d4,#2,#31
   4ac0a:	ff21 6079      	cp1stb %d6,%a1@-,#1,#121
   4ac0e:	fb03           	.short 0xfb03
   4ac10:	7ffc e7ff      	mvzw #-6145,%d7
   4ac14:	1ffe           	.short 0x1ffe
   4ac16:	4ffc           	.short 0x4ffc
   4ac18:	01ff           	.short 0x01ff
   4ac1a:	5fc0           	sle %d0
   4ac1c:	00ff           	.short 0x00ff
   4ac1e:	ff80 003f      	cp1stl %d0,%d0,#1,#63
   4ac22:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   4ac26:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4ac2a:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4ac2e:	ff00 000f      	cp1stb %d0,%d0,#1,#15
   4ac32:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4ac36:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4ac3a:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4ac3e:	fc00 0003      	cp0ldb %d0,%d0,#1,#3
   4ac42:	f800 0001      	tblub %d0,%d1,%d0
   4ac46:	f000           	.short 0xf000
   4ac48:	0000 e000      	orib #0,%d0
   4ac4c:	0000 0000      	orib #0,%d0
   4ac50:	0000 4000      	orib #0,%d0
   4ac54:	0000 e000      	orib #0,%d0
   4ac58:	0e01           	.short 0x0e01
   4ac5a:	f038           	.short 0xf038
   4ac5c:	0907           	btst %d4,%d7
   4ac5e:	f848           	.short 0xf848
   4ac60:	1c8f           	.short 0x1c8f
   4ac62:	fc9c 221f      	cp0ldl %a4@+,%d2,#2,#31
   4ac66:	fe22 421f      	cp1ldb %a2@-,%d4,#2,#31
   4ac6a:	ff21 607f      	cp1stb %d6,%a1@-,#1,#127
   4ac6e:	ff03 7fff      	cp1stb %d7,%d3,#8,#511
   4ac72:	ffff           	.short 0xffff
   4ac74:	1fff           	.short 0x1fff
   4ac76:	fffc           	.short 0xfffc
   4ac78:	01ff           	.short 0x01ff
   4ac7a:	ffc0           	.short 0xffc0
   4ac7c:	00ff           	.short 0x00ff
   4ac7e:	ff80 003f      	cp1stl %d0,%d0,#1,#63
   4ac82:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   4ac86:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4ac8a:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4ac8e:	ff00 000f      	cp1stb %d0,%d0,#1,#15
   4ac92:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4ac96:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4ac9a:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4ac9e:	fc00 0003      	cp0ldb %d0,%d0,#1,#3
   4aca2:	f800 0001      	tblub %d0,%d1,%d0
   4aca6:	f000           	.short 0xf000
   4aca8:	0000 e000      	orib #0,%d0
	...
   4acb8:	0000 4000      	orib #0,%d0
   4acbc:	0000 5000      	orib #0,%d0
   4acc0:	1801           	moveb %d1,%d4
   4acc2:	880c           	.short 0x880c
   4acc4:	040a           	.short 0x040a
   4acc6:	c410           	andb %a0@,%d2
   4acc8:	6017           	bras 0x4ace1
   4acca:	2e02           	movel %d2,%d7
   4accc:	0827 de08      	btst #8,%sp@-
   4acd0:	0083 bb00 0117 	oril #-1157627625,%d3
   4acd6:	b760           	eorw %d3,%a0@-
   4acd8:	0063 e300      	oriw #-7424,%a3@-
   4acdc:	2c27           	movel %sp@-,%d6
   4acde:	8718           	orb %d3,%a0@+
   4ace0:	1013           	moveb %a3@,%d0
   4ace2:	8e04           	orb %d4,%d7
   4ace4:	0009           	.short 0x0009
   4ace6:	5e00           	addqb #7,%d0
   4ace8:	000b           	.short 0x000b
   4acea:	f200           	.short 0xf200
   4acec:	0007 fa00      	orib #0,%d7
   4acf0:	0007 f800      	orib #0,%d7
   4acf4:	000f           	.short 0x000f
   4acf6:	f800 0007      	tblub %d0,%d7,%d0
   4acfa:	f800 0002      	tblub %d0,%d2,%d0
   4acfe:	a800 0001      	macw %d0l,%d4l
   4ad02:	3000           	movew %d0,%d0
	...
   4ad10:	0000 4000      	orib #0,%d0
   4ad14:	0000 a000      	orib #0,%d0
   4ad18:	0001 3000      	orib #0,%d1
   4ad1c:	0006 3800      	orib #0,%d6
   4ad20:	0008           	.short 0x0008
   4ad22:	7c00           	moveq #0,%d6
   4ad24:	0000 3e00      	orib #0,%d0
   4ad28:	0006 df01      	orib #1,%d6
   4ad2c:	0047 3f00      	oriw #16128,%d7
   4ad30:	0003 ffc0      	orib #-64,%d3
   4ad34:	0001 ff00      	orib #0,%d1
   4ad38:	0200 bf30      	andib #48,%d0
   4ad3c:	1080           	moveb %d0,%a0@
   4ad3e:	7f86           	mvzb %d6,%d7
   4ad40:	0020 7f00      	orib #0,%a0@-
   4ad44:	0021 4f00      	orib #0,%a1@-
   4ad48:	0013 f700      	orib #0,%a3@
   4ad4c:	0017 ff00      	orib #0,%sp@
   4ad50:	0007 fe00      	orib #0,%d7
   4ad54:	0007 fc00      	orib #0,%d7
   4ad58:	0002 ac00      	orib #0,%d2
   4ad5c:	0000 a800      	orib #0,%d0
   4ad60:	0000 0000      	orib #0,%d0
   4ad64:	0000 a000      	orib #0,%d0
	...
   4ad70:	0000 4000      	orib #0,%d0
   4ad74:	0000 e000      	orib #0,%d0
   4ad78:	0001 f000      	orib #0,%d1
   4ad7c:	0007 f800      	orib #0,%d7
   4ad80:	180f           	.short 0x180f
   4ad82:	fc0c 240f      	cp0ldb %a4,%d2,#3,#15
   4ad86:	fe12 701f      	cp1ldb %a2@,%d7,#1,#31
   4ad8a:	ff07 4879      	cp1stb %d4,%d7,#5,#121
   4ad8e:	fb09           	.short 0xfb09
   4ad90:	40fc           	.short 0x40fc
   4ad92:	e7c1           	.short 0xe7c1
   4ad94:	21fe           	.short 0x21fe
   4ad96:	4fe2           	.short 0x4fe2
   4ad98:	23ff           	.short 0x23ff
   4ad9a:	5ff2 3fff fffe 	sle @(fffffffffffe183f)@(ffffffffff0c003f)
   4ada0:	183f ff0c 003f 
   4ada6:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4adaa:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4adae:	ff00 000f      	cp1stb %d0,%d0,#1,#15
   4adb2:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4adb6:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4adba:	fc00 0003      	cp0ldb %d0,%d0,#1,#3
   4adbe:	f800 0001      	tblub %d0,%d1,%d0
   4adc2:	f000           	.short 0xf000
   4adc4:	0000 e000      	orib #0,%d0
	...
   4add0:	0000 4000      	orib #0,%d0
   4add4:	0000 e000      	orib #0,%d0
   4add8:	0001 f000      	orib #0,%d1
   4addc:	0007 f800      	orib #0,%d7
   4ade0:	180f           	.short 0x180f
   4ade2:	fc0c 240f      	cp0ldb %a4,%d2,#3,#15
   4ade6:	fe12 701f      	cp1ldb %a2@,%d7,#1,#31
   4adea:	ff07 487f      	cp1stb %d4,%d7,#5,#127
   4adee:	ff09 40ff      	cp1stb %d4,%a1,#1,#255
   4adf2:	ffc1           	.short 0xffc1
   4adf4:	21ff           	.short 0x21ff
   4adf6:	ffe2           	.short 0xffe2
   4adf8:	23ff           	.short 0x23ff
   4adfa:	fff2           	.short 0xfff2
   4adfc:	3fff           	.short 0x3fff
   4adfe:	fffe           	.short 0xfffe
   4ae00:	183f           	.short 0x183f
   4ae02:	ff0c 003f      	cp1stb %d0,%a4,#1,#63
   4ae06:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4ae0a:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4ae0e:	ff00 000f      	cp1stb %d0,%d0,#1,#15
   4ae12:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4ae16:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4ae1a:	fc00 0003      	cp0ldb %d0,%d0,#1,#3
   4ae1e:	f800 0001      	tblub %d0,%d1,%d0
   4ae22:	f000           	.short 0xf000
   4ae24:	0000 e000      	orib #0,%d0
	...
   4ae38:	0000 4000      	orib #0,%d0
   4ae3c:	0000 5000      	orib #0,%d0
   4ae40:	0001 8800      	orib #0,%d1
   4ae44:	000a           	.short 0x000a
   4ae46:	c400           	andb %d0,%d2
   4ae48:	1817           	moveb %sp@,%d4
   4ae4a:	2e06           	movel %d6,%d7
   4ae4c:	2227           	movel %sp@-,%d1
   4ae4e:	de11           	addb %a1@,%d7
   4ae50:	0803 bb04      	btst #4,%d3
   4ae54:	0417 b708      	subib #8,%sp@
   4ae58:	3183 e3c1      	movew %d3,@(0)@(0)
   4ae5c:	0b27           	btst %d5,%sp@-
   4ae5e:	87f2 0613      	divsw %a2@(13,%d0:w:8),%d3
   4ae62:	8e18           	orb %a0@+,%d7
   4ae64:	0009           	.short 0x0009
   4ae66:	5e00           	addqb #7,%d0
   4ae68:	0003 f200      	orib #0,%d3
   4ae6c:	0007 fa00      	orib #0,%d7
   4ae70:	0007 f800      	orib #0,%d7
   4ae74:	000f           	.short 0x000f
   4ae76:	f800 0006      	tblub %d0,%d6,%d0
   4ae7a:	a800 0001      	macw %d0l,%d4l
   4ae7e:	d000           	addb %d0,%d0
	...
   4ae90:	0000 4000      	orib #0,%d0
   4ae94:	0000 a000      	orib #0,%d0
   4ae98:	0001 3000      	orib #0,%d1
   4ae9c:	0002 3800      	orib #0,%d2
   4aea0:	0008           	.short 0x0008
   4aea2:	7c00           	moveq #0,%d6
   4aea4:	0000 3e00      	orib #0,%d0
   4aea8:	0006 df00      	orib #0,%d6
   4aeac:	0007 3f00      	orib #0,%d7
   4aeb0:	0003 ff00      	orib #0,%d3
   4aeb4:	0001 ff00      	orib #0,%d1
   4aeb8:	0020 bf00      	orib #0,%a0@-
   4aebc:	00c0           	bitrev %d0
   4aebe:	7f00           	mvsb %d0,%d7
   4aec0:	0120           	btst %d0,%a0@-
   4aec2:	7f64           	mvsw %a4@-,%d7
   4aec4:	0021 4f00      	orib #0,%a1@-
   4aec8:	0013 f700      	orib #0,%a3@
   4aecc:	0017 ff00      	orib #0,%sp@
   4aed0:	0007 fe00      	orib #0,%d7
   4aed4:	0006 ac00      	orib #0,%d6
   4aed8:	0002 ac00      	orib #0,%d2
   4aedc:	0002 3800      	orib #0,%d2
   4aee0:	0001 3000      	orib #0,%d1
   4aee4:	0000 a000      	orib #0,%d0
	...
   4aef0:	0000 4000      	orib #0,%d0
   4aef4:	0000 e000      	orib #0,%d0
   4aef8:	0001 f000      	orib #0,%d1
   4aefc:	0003 f800      	orib #0,%d3
   4af00:	000f           	.short 0x000f
   4af02:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4af06:	fe00 1c1f      	cp1ldb %d0,%d1,#7,#31
   4af0a:	ff0e 3239      	cp1stb %d3,%fp,#2,#57
   4af0e:	fb13           	wddatab %a3@
   4af10:	287c e785 24fe 	moveal #-410704642,%a4
   4af16:	4fc9           	.short 0x4fc9
   4af18:	31ff           	.short 0x31ff
   4af1a:	5fe3           	sle %a3@-
   4af1c:	1bff           	.short 0x1bff
   4af1e:	fff6           	.short 0xfff6
   4af20:	0f3f           	.short 0x0f3f
   4af22:	ff7c           	.short 0xff7c
   4af24:	043f           	.short 0x043f
   4af26:	ff08 001f      	cp1stb %d0,%a0,#1,#31
   4af2a:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4af2e:	ff00 000f      	cp1stb %d0,%d0,#1,#15
   4af32:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4af36:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4af3a:	fc00 0003      	cp0ldb %d0,%d0,#1,#3
   4af3e:	f800 0001      	tblub %d0,%d1,%d0
   4af42:	f000           	.short 0xf000
   4af44:	0000 e000      	orib #0,%d0
	...
   4af50:	0000 4000      	orib #0,%d0
   4af54:	0000 e000      	orib #0,%d0
   4af58:	0001 f000      	orib #0,%d1
   4af5c:	0003 f800      	orib #0,%d3
   4af60:	000f           	.short 0x000f
   4af62:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4af66:	fe00 1c1f      	cp1ldb %d0,%d1,#7,#31
   4af6a:	ff0e 323f      	cp1stb %d3,%fp,#2,#63
   4af6e:	ff13 287f      	cp1stb %d2,%a3@,#5,#127
   4af72:	ff85 24ff      	cp1stl %d2,%d5,#3,#255
   4af76:	ffc9           	.short 0xffc9
   4af78:	31ff           	.short 0x31ff
   4af7a:	ffe3           	.short 0xffe3
   4af7c:	1bff           	.short 0x1bff
   4af7e:	fff6           	.short 0xfff6
   4af80:	0f3f           	.short 0x0f3f
   4af82:	ff7c           	.short 0xff7c
   4af84:	043f           	.short 0x043f
   4af86:	ff08 001f      	cp1stb %d0,%a0,#1,#31
   4af8a:	ff00 001f      	cp1stb %d0,%d0,#1,#31
   4af8e:	ff00 000f      	cp1stb %d0,%d0,#1,#15
   4af92:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4af96:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4af9a:	fc00 0003      	cp0ldb %d0,%d0,#1,#3
   4af9e:	f800 0001      	tblub %d0,%d1,%d0
   4afa2:	f000           	.short 0xf000
   4afa4:	0000 e000      	orib #0,%d0
	...
   4afb8:	0000 4000      	orib #0,%d0
   4afbc:	0000 5000      	orib #0,%d0
   4afc0:	0005 8800      	orib #0,%d5
   4afc4:	000a           	.short 0x000a
   4afc6:	c400           	andb %d0,%d2
   4afc8:	0017 2e00      	orib #0,%sp@
   4afcc:	0027 de00      	orib #0,%sp@-
   4afd0:	0003 bb00      	orib #0,%d3
   4afd4:	0897 b744      	bclr #68,%sp@
   4afd8:	3c23           	movew %a3@-,%d6
   4afda:	e32d           	lslb %d1,%d5
   4afdc:	00e7           	.short 0x00e7
   4afde:	8760           	orw %d3,%a0@-
   4afe0:	0293 8e28 0609 	andil #-1909979639,%a3@
   4afe6:	5e04           	addqb #7,%d4
   4afe8:	0803 f204      	btst #4,%d3
   4afec:	0007 fa00      	orib #0,%d7
   4aff0:	0003 f800      	orib #0,%d3
   4aff4:	0002 a800      	orib #0,%d2
   4aff8:	0000 d800      	orib #0,%d0
   4affc:	0000 5000      	orib #0,%d0
	...
   4b010:	0000 4000      	orib #0,%d0
   4b014:	0000 a000      	orib #0,%d0
   4b018:	0001 3000      	orib #0,%d1
   4b01c:	0002 3800      	orib #0,%d2
   4b020:	0000 7c00      	orib #0,%d0
   4b024:	0000 3e00      	orib #0,%d0
   4b028:	0006 df00      	orib #0,%d6
   4b02c:	0007 3f00      	orib #0,%d7
   4b030:	0403 ff08      	subib #8,%d3
   4b034:	1801           	moveb %d1,%d4
   4b036:	ff06 0800      	cp1stb %d0,%d6,#5,#0
   4b03a:	bf06           	eorb %d7,%d6
   4b03c:	0000 7f10      	orib #16,%d0
   4b040:	0820 7f06      	btst #6,%a0@-
   4b044:	0021 4f00      	orib #0,%a1@-
   4b048:	0013 f700      	orib #0,%a3@
   4b04c:	0017 ff00      	orib #0,%sp@
   4b050:	000a           	.short 0x000a
   4b052:	ae00 000a      	macw %d0l,%d7l
   4b056:	ac00 0004      	macw %d0l,%d6l
   4b05a:	3c00           	movew %d0,%d6
   4b05c:	0002 3800      	orib #0,%d2
   4b060:	0001 3000      	orib #0,%d1
	...
   4b070:	0000 4000      	orib #0,%d0
   4b074:	0000 e000      	orib #0,%d0
   4b078:	0001 f000      	orib #0,%d1
   4b07c:	0003 f800      	orib #0,%d3
   4b080:	0007 fc00      	orib #0,%d7
   4b084:	000f           	.short 0x000f
   4b086:	fe00 001f      	cp1ldb %d0,%d0,#1,#31
   4b08a:	ff00 0039      	cp1stb %d0,%d0,#1,#57
   4b08e:	fb00           	.short 0xfb00
   4b090:	1c7c e78e      	moveb #-114,%fp
   4b094:	3cfe           	.short 0x3cfe
   4b096:	4fcf           	.short 0x4fcf
   4b098:	3cff           	.short 0x3cff
   4b09a:	5fef 11ff      	sle %sp@(4607)
   4b09e:	fff2           	.short 0xfff2
   4b0a0:	1fbf           	.short 0x1fbf
   4b0a2:	ff7e           	.short 0xff7e
   4b0a4:	0e3f           	.short 0x0e3f
   4b0a6:	ff0c 081f      	cp1stb %d0,%a4,#5,#31
   4b0aa:	ff04 001f      	cp1stb %d0,%d4,#1,#31
   4b0ae:	ff00 000f      	cp1stb %d0,%d0,#1,#15
   4b0b2:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4b0b6:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4b0ba:	fc00 0003      	cp0ldb %d0,%d0,#1,#3
   4b0be:	f800 0001      	tblub %d0,%d1,%d0
   4b0c2:	f000           	.short 0xf000
	...
   4b0d0:	0000 4000      	orib #0,%d0
   4b0d4:	0000 e000      	orib #0,%d0
   4b0d8:	0001 f000      	orib #0,%d1
   4b0dc:	0003 f800      	orib #0,%d3
   4b0e0:	0007 fc00      	orib #0,%d7
   4b0e4:	000f           	.short 0x000f
   4b0e6:	fe00 001f      	cp1ldb %d0,%d0,#1,#31
   4b0ea:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   4b0ee:	ff00 1c7f      	cp1stb %d1,%d0,#7,#127
   4b0f2:	ff8e 3cff      	cp1stl %d3,%fp,#7,#255
   4b0f6:	ffcf           	.short 0xffcf
   4b0f8:	3cff           	.short 0x3cff
   4b0fa:	ffef           	.short 0xffef
   4b0fc:	11ff           	.short 0x11ff
   4b0fe:	fff2           	.short 0xfff2
   4b100:	1fbf           	.short 0x1fbf
   4b102:	ff7e           	.short 0xff7e
   4b104:	0e3f           	.short 0x0e3f
   4b106:	ff0c 081f      	cp1stb %d0,%a4,#5,#31
   4b10a:	ff04 001f      	cp1stb %d0,%d4,#1,#31
   4b10e:	ff00 000f      	cp1stb %d0,%d0,#1,#15
   4b112:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4b116:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4b11a:	fc00 0003      	cp0ldb %d0,%d0,#1,#3
   4b11e:	f800 0001      	tblub %d0,%d1,%d0
   4b122:	f000           	.short 0xf000
	...
   4b138:	0000 4000      	orib #0,%d0
   4b13c:	0000 5000      	orib #0,%d0
   4b140:	0005 8800      	orib #0,%d5
   4b144:	000a           	.short 0x000a
   4b146:	c400           	andb %d0,%d2
   4b148:	0011 2200      	orib #0,%a1@
   4b14c:	0026 ce00      	orib #0,%fp@-
   4b150:	0043 1b00      	oriw #6912,%d3
   4b154:	0197           	bclr %d0,%sp@
   4b156:	b760           	eorw %d3,%a0@-
   4b158:	0363           	bchg %d1,%a3@-
   4b15a:	e330           	roxlb %d1,%d0
   4b15c:	0427 8788      	subib #-120,%sp@-
   4b160:	3a13           	movew %a3@,%d5
   4b162:	8e17           	orb %sp@,%d7
   4b164:	0001 5e00      	orib #0,%d1
   4b168:	0003 f200      	orib #0,%d3
   4b16c:	1007           	moveb %d7,%d0
   4b16e:	fa02           	.short 0xfa02
   4b170:	0002 ac00      	orib #0,%d2
   4b174:	0000 e800      	orib #0,%d0
   4b178:	0000 d800      	orib #0,%d0
   4b17c:	0000 5000      	orib #0,%d0
	...
   4b190:	0000 4000      	orib #0,%d0
   4b194:	0000 a000      	orib #0,%d0
   4b198:	0001 3000      	orib #0,%d1
   4b19c:	0002 3800      	orib #0,%d2
   4b1a0:	0000 7c00      	orib #0,%d0
   4b1a4:	0000 3e00      	orib #0,%d0
   4b1a8:	0006 df00      	orib #0,%d6
   4b1ac:	0007 3f00      	orib #0,%d7
   4b1b0:	0003 ff00      	orib #0,%d3
   4b1b4:	0041 ff80      	oriw #-128,%d1
   4b1b8:	0080 bfc0 0180 	oril #-1077935744,%d0
   4b1be:	7f60           	mvsw %a0@-,%d7
   4b1c0:	2120           	movel %a0@-,%a0@-
   4b1c2:	7f21           	mvsb %a1@-,%d7
   4b1c4:	0021 4f00      	orib #0,%a1@-
   4b1c8:	0013 f700      	orib #0,%a3@
   4b1cc:	0016 af00      	orib #0,%fp@
   4b1d0:	000a           	.short 0x000a
   4b1d2:	ae00 0008      	macw %d0l,%d7l
   4b1d6:	1c00           	moveb %d0,%d6
   4b1d8:	0004 3c00      	orib #0,%d4
   4b1dc:	0002 3800      	orib #0,%d2
   4b1e0:	0001 3000      	orib #0,%d1
	...
   4b1f0:	0000 4000      	orib #0,%d0
   4b1f4:	0000 e000      	orib #0,%d0
   4b1f8:	0001 f000      	orib #0,%d1
   4b1fc:	0003 f800      	orib #0,%d3
   4b200:	0007 fc00      	orib #0,%d7
   4b204:	000f           	.short 0x000f
   4b206:	fe00 001f      	cp1ldb %d0,%d0,#1,#31
   4b20a:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   4b20e:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   4b212:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b216:	ffe0           	.short 0xffe0
   4b218:	03ff           	.short 0x03ff
   4b21a:	fff0           	.short 0xfff0
   4b21c:	07ff           	.short 0x07ff
   4b21e:	fff8           	.short 0xfff8
   4b220:	3f3f           	.short 0x3f3f
   4b222:	ff3f           	.short 0xff3f
   4b224:	283f           	.short 0x283f
   4b226:	ff05 201f      	cp1stb %d2,%d5,#1,#31
   4b22a:	ff01 101f      	cp1stb %d1,%d1,#1,#31
   4b22e:	ff02 000f      	cp1stb %d0,%d2,#1,#15
   4b232:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4b236:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4b23a:	fc00 0003      	cp0ldb %d0,%d0,#1,#3
   4b23e:	f800 0001      	tblub %d0,%d1,%d0
   4b242:	f000           	.short 0xf000
	...
   4b250:	0000 4000      	orib #0,%d0
   4b254:	0000 e000      	orib #0,%d0
   4b258:	0001 f000      	orib #0,%d1
   4b25c:	0003 f800      	orib #0,%d3
   4b260:	0007 fc00      	orib #0,%d7
   4b264:	000f           	.short 0x000f
   4b266:	fe00 001f      	cp1ldb %d0,%d0,#1,#31
   4b26a:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   4b26e:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   4b272:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b276:	ffe0           	.short 0xffe0
   4b278:	03ff           	.short 0x03ff
   4b27a:	fff0           	.short 0xfff0
   4b27c:	07ff           	.short 0x07ff
   4b27e:	fff8           	.short 0xfff8
   4b280:	3f3f           	.short 0x3f3f
   4b282:	ff3f           	.short 0xff3f
   4b284:	283f           	.short 0x283f
   4b286:	ff05 201f      	cp1stb %d2,%d5,#1,#31
   4b28a:	ff01 101f      	cp1stb %d1,%d1,#1,#31
   4b28e:	ff02 000f      	cp1stb %d0,%d2,#1,#15
   4b292:	fe00 000f      	cp1ldb %d0,%d0,#1,#15
   4b296:	fc00 0007      	cp0ldb %d0,%d0,#1,#7
   4b29a:	fc00 0003      	cp0ldb %d0,%d0,#1,#3
   4b29e:	f800 0001      	tblub %d0,%d1,%d0
   4b2a2:	f000           	.short 0xf000
	...
   4b2b8:	0000 4000      	orib #0,%d0
   4b2bc:	0000 5000      	orib #0,%d0
   4b2c0:	0005 8800      	orib #0,%d5
   4b2c4:	000a           	.short 0x000a
   4b2c6:	c400           	andb %d0,%d2
   4b2c8:	0017 2e00      	orib #0,%sp@
   4b2cc:	0027 de00      	orib #0,%sp@-
   4b2d0:	0043 bb00      	oriw #-17664,%d3
   4b2d4:	0197           	bclr %d0,%sp@
   4b2d6:	b7a0           	eorl %d3,%a0@-
   4b2d8:	0063 e380      	oriw #-7296,%a3@-
   4b2dc:	0267 8750      	andiw #-30896,%sp@-
   4b2e0:	0c13 8e0c      	cmpib #12,%a3@
   4b2e4:	1001           	moveb %d1,%d0
   4b2e6:	5e00           	addqb #7,%d0
   4b2e8:	0003 fa00      	orib #0,%d3
   4b2ec:	1006           	moveb %d6,%d0
   4b2ee:	ae00 0800      	macl %d0,%d7
   4b2f2:	c404           	andb %d4,%d2
   4b2f4:	1000           	moveb %d0,%d0
   4b2f6:	e800           	asrb #4,%d0
   4b2f8:	0600 d818      	addib #24,%d0
   4b2fc:	0000 5000      	orib #0,%d0
	...
   4b310:	0000 4000      	orib #0,%d0
   4b314:	0000 a000      	orib #0,%d0
   4b318:	0001 3000      	orib #0,%d1
   4b31c:	0002 3800      	orib #0,%d2
   4b320:	0000 7c00      	orib #0,%d0
   4b324:	0000 3e00      	orib #0,%d0
   4b328:	0006 df00      	orib #0,%d6
   4b32c:	0007 3f00      	orib #0,%d7
   4b330:	0003 ffc0      	orib #-64,%d3
   4b334:	0041 ff00      	oriw #-256,%d1
   4b338:	0280 bf10 0480 	andil #-1089469312,%d0
   4b33e:	7f88           	mvzb %a0,%d7
   4b340:	0020 7f00      	orib #0,%a0@-
   4b344:	1021           	moveb %a1@-,%d0
   4b346:	4f00           	chkl %d0,%d7
   4b348:	0012 a700      	orib #0,%a2@
   4b34c:	0016 ab00      	orib #0,%fp@
   4b350:	1008           	.short 0x1008
   4b352:	3e02           	movew %d2,%d7
   4b354:	1008           	.short 0x1008
   4b356:	1c00           	moveb %d0,%d6
   4b358:	0004 3c00      	orib #0,%d4
   4b35c:	0002 3800      	orib #0,%d2
   4b360:	0001 3000      	orib #0,%d1
	...
   4b370:	0000 4000      	orib #0,%d0
   4b374:	0000 e000      	orib #0,%d0
   4b378:	0001 f000      	orib #0,%d1
   4b37c:	0003 f800      	orib #0,%d3
   4b380:	0007 fc00      	orib #0,%d7
   4b384:	000f           	.short 0x000f
   4b386:	fe00 001f      	cp1ldb %d0,%d0,#1,#31
   4b38a:	ff00 0039      	cp1stb %d0,%d0,#1,#57
   4b38e:	fb00           	.short 0xfb00
   4b390:	007c e7c0      	oriw #-6208,%sr
   4b394:	01fe           	.short 0x01fe
   4b396:	4fe0           	.short 0x4fe0
   4b398:	03ff           	.short 0x03ff
   4b39a:	5ff0 07ff fff8 	sle @(fffffffffff80e3f)@(ffffffffff1c183f)
   4b3a0:	0e3f ff1c 183f 
   4b3a6:	ff04 101f      	cp1stb %d1,%d4,#1,#31
   4b3aa:	ff02 121f      	cp1stb %d1,%d2,#2,#31
   4b3ae:	ff12 1c0f      	cp1stb %d1,%a2@,#7,#15
   4b3b2:	fe0e 180f      	cp1ldb %fp,%d1,#5,#15
   4b3b6:	fc04 0607      	cp0ldb %d4,%d0,#4,#7
   4b3ba:	fc18 0003      	cp0ldb %a0@+,%d0,#1,#3
   4b3be:	f800 0001      	tblub %d0,%d1,%d0
   4b3c2:	f000           	.short 0xf000
	...
   4b3d0:	0000 4000      	orib #0,%d0
   4b3d4:	0000 e000      	orib #0,%d0
   4b3d8:	0001 f000      	orib #0,%d1
   4b3dc:	0003 f800      	orib #0,%d3
   4b3e0:	0007 fc00      	orib #0,%d7
   4b3e4:	000f           	.short 0x000f
   4b3e6:	fe00 001f      	cp1ldb %d0,%d0,#1,#31
   4b3ea:	ff00 003f      	cp1stb %d0,%d0,#1,#63
   4b3ee:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   4b3f2:	ffc0           	.short 0xffc0
   4b3f4:	01ff           	.short 0x01ff
   4b3f6:	ffe0           	.short 0xffe0
   4b3f8:	03ff           	.short 0x03ff
   4b3fa:	fff0           	.short 0xfff0
   4b3fc:	07ff           	.short 0x07ff
   4b3fe:	fff8           	.short 0xfff8
   4b400:	0e3f           	.short 0x0e3f
   4b402:	ff1c 183f      	cp1stb %d1,%a4@+,#5,#63
   4b406:	ff04 101f      	cp1stb %d1,%d4,#1,#31
   4b40a:	ff02 121f      	cp1stb %d1,%d2,#2,#31
   4b40e:	ff12 1c0f      	cp1stb %d1,%a2@,#7,#15
   4b412:	fe0e 180f      	cp1ldb %fp,%d1,#5,#15
   4b416:	fc04 0607      	cp0ldb %d4,%d0,#4,#7
   4b41a:	fc18 0003      	cp0ldb %a0@+,%d0,#1,#3
   4b41e:	f800 0001      	tblub %d0,%d1,%d0
   4b422:	f000           	.short 0xf000
	...
   4b438:	0001 8000      	orib #0,%d1
   4b43c:	0003 7000      	orib #0,%d3
   4b440:	000a           	.short 0x000a
   4b442:	9800           	subb %d0,%d4
   4b444:	0003 9800      	orib #0,%d3
   4b448:	0007 2c00      	orib #0,%d7
   4b44c:	0007 9c00      	orib #0,%d7
   4b450:	003e           	.short 0x003e
   4b452:	fc00 003e      	cp0ldb %d0,%d0,#1,#62
   4b456:	f800           	.short 0xf800
   4b458:	003d           	.short 0x003d
   4b45a:	7800           	moveq #0,%d4
   4b45c:	003b           	.short 0x003b
   4b45e:	7000           	moveq #0,%d0
   4b460:	000f           	.short 0x000f
   4b462:	9000           	subb %d0,%d0
   4b464:	001f 9000      	orib #0,%sp@+
   4b468:	0003 8000      	orib #0,%d3
   4b46c:	0002 c000      	orib #0,%d2
   4b470:	0007 4000      	orib #0,%d7
	...
   4b494:	0007 c000      	orib #0,%d7
   4b498:	0019 7000      	orib #0,%a1@+
   4b49c:	0020 f800      	orib #0,%a0@-
   4b4a0:	0041 7c00      	oriw #31744,%d1
   4b4a4:	0040 7c00      	oriw #31744,%d0
   4b4a8:	0080 fe00 0080 	oril #-33554304,%d0
   4b4ae:	6e00 009e      	bgtw 0x4b54e
   4b4b2:	f200           	.short 0xf200
   4b4b4:	00be fa00 00bd 	oril #-100663107,%d6
   4b4ba:	7a00           	moveq #0,%d5
   4b4bc:	0099 3600 0043 	oril #905969731,%a1@+
   4b4c2:	8c00           	orb %d0,%d6
   4b4c4:	0042 8c00      	oriw #-29696,%d2
   4b4c8:	0030 7800 0009 	orib #0,%a0@(9,%d0:w)
   4b4ce:	6000 000d      	braw 0x4b4dd
   4b4d2:	e000           	asrb #8,%d0
   4b4d4:	0000 4000      	orib #0,%d0
	...
   4b4f4:	0007 c000      	orib #0,%d7
   4b4f8:	001f f000      	orib #0,%sp@+
   4b4fc:	003f           	.short 0x003f
   4b4fe:	f800           	.short 0xf800
   4b500:	007f           	.short 0x007f
   4b502:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4b506:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   4b50a:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4b50e:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4b512:	fe00 00f7      	cp1ldb %d0,%d0,#1,#247
   4b516:	de00           	addb %d0,%d7
   4b518:	00ff           	.short 0x00ff
   4b51a:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4b51e:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4b522:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4b526:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   4b52a:	f800           	.short 0xf800
   4b52c:	000f           	.short 0x000f
   4b52e:	e000           	asrb #8,%d0
   4b530:	000f           	.short 0x000f
   4b532:	e000           	asrb #8,%d0
   4b534:	000a           	.short 0x000a
   4b536:	e000           	asrb #8,%d0
	...
   4b554:	0007 c000      	orib #0,%d7
   4b558:	001f f000      	orib #0,%sp@+
   4b55c:	003f           	.short 0x003f
   4b55e:	f800           	.short 0xf800
   4b560:	007f           	.short 0x007f
   4b562:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4b566:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   4b56a:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4b56e:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4b572:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4b576:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4b57a:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4b57e:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4b582:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4b586:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   4b58a:	f800           	.short 0xf800
   4b58c:	000f           	.short 0x000f
   4b58e:	e000           	asrb #8,%d0
   4b590:	000f           	.short 0x000f
   4b592:	e000           	asrb #8,%d0
   4b594:	000a           	.short 0x000a
   4b596:	e000           	asrb #8,%d0
	...
   4b5b4:	000b           	.short 0x000b
   4b5b6:	8000           	orb %d0,%d0
   4b5b8:	0027 6000      	orib #0,%sp@-
   4b5bc:	0046 9800      	oriw #-26624,%d6
   4b5c0:	000f           	.short 0x000f
   4b5c2:	9c00           	subb %d0,%d6
   4b5c4:	000b           	.short 0x000b
   4b5c6:	0c00 0024      	cmpib #36,%d0
   4b5ca:	2e00           	movel %d0,%d7
   4b5cc:	008f 8600 01f7 	oril #-2046819849,%d7
   4b5d2:	1200           	moveb %d0,%d1
   4b5d4:	01f7 8b00      	bset %d0,%sp@(0,%a0:l:2)
   4b5d8:	01ef 8a00      	bset %d0,%sp@(-30208)
   4b5dc:	00ef           	.short 0x00ef
   4b5de:	1d00           	moveb %d0,%fp@-
   4b5e0:	001c a000      	orib #0,%a4@+
   4b5e4:	0035 5c00 0009 	orib #0,%a5@(9,%d0:w)
   4b5ea:	c000           	andb %d0,%d0
   4b5ec:	001b 8000      	orib #0,%a3@+
   4b5f0:	0020 4000      	orib #0,%a0@-
	...
   4b614:	0000 6000      	orib #0,%d0
   4b618:	0000 f800      	orib #0,%d0
   4b61c:	0001 7c00      	orib #0,%d1
   4b620:	0000 7e00      	orib #0,%d0
   4b624:	0000 fe00      	orib #0,%d0
   4b628:	0003 df00      	orib #0,%d3
   4b62c:	0000 7f00      	orib #0,%d0
   4b630:	0077 6f00 00f7 	oriw #28416,%sp@(fffffffffffffff7,%d0:w)
   4b636:	b700           	eorb %d3,%d0
   4b638:	00eb           	.short 0x00eb
   4b63a:	a700           	.short 0xa700
   4b63c:	006b 0700 001c 	oriw #1792,%a3@(28)
   4b642:	2600           	movel %d0,%d3
   4b644:	0014 3a00      	orib #0,%a4@
   4b648:	0000 5c00      	orib #0,%d0
   4b64c:	000a           	.short 0x000a
   4b64e:	8000           	orb %d0,%d0
   4b650:	001a 8000      	orib #0,%a2@+
   4b654:	0009           	.short 0x0009
	...
   4b672:	0000 000f      	orib #15,%d0
   4b676:	e000           	asrb #8,%d0
   4b678:	003f           	.short 0x003f
   4b67a:	f800           	.short 0xf800
   4b67c:	007f           	.short 0x007f
   4b67e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4b682:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4b686:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4b68a:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4b68e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4b692:	ff00 01de      	cp1stb %d0,%d0,#1,#478
   4b696:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4b69a:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4b69e:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4b6a2:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4b6a6:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   4b6aa:	dc00           	addb %d0,%d6
   4b6ac:	003f           	.short 0x003f
   4b6ae:	c000           	andb %d0,%d0
   4b6b0:	003f           	.short 0x003f
   4b6b2:	c000           	andb %d0,%d0
   4b6b4:	002d 0000 0000 	orib #0,%a5@(0)
	...
   4b6d2:	0000 000f      	orib #15,%d0
   4b6d6:	e000           	asrb #8,%d0
   4b6d8:	003f           	.short 0x003f
   4b6da:	f800           	.short 0xf800
   4b6dc:	007f           	.short 0x007f
   4b6de:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4b6e2:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4b6e6:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4b6ea:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4b6ee:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4b6f2:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4b6f6:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4b6fa:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4b6fe:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4b702:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4b706:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   4b70a:	dc00           	addb %d0,%d6
   4b70c:	003f           	.short 0x003f
   4b70e:	c000           	andb %d0,%d0
   4b710:	003f           	.short 0x003f
   4b712:	c000           	andb %d0,%d0
   4b714:	002d 0000 0000 	orib #0,%a5@(0)
	...
   4b732:	0000 0002      	orib #2,%d0
   4b736:	0000 0005      	orib #5,%d0
   4b73a:	2000           	movel %d0,%d0
   4b73c:	0003 9800      	orib #0,%d3
   4b740:	0005 4c00      	orib #0,%d5
   4b744:	000b           	.short 0x000b
   4b746:	9600           	subb %d0,%d3
   4b748:	0037 4e00 010f 	orib #0,%sp@(0)@(ffffffff8f0000de,%d0:w)
   4b74e:	8f00 00de 
   4b752:	d700           	addxb %d0,%d3
   4b754:	01df           	bset %d0,%sp@+
   4b756:	2b00           	movel %d0,%a5@-
   4b758:	01bf           	.short 0x01bf
   4b75a:	7700           	mvsb %d0,%d3
   4b75c:	00be 3b00 00f9 	oril #989855993,%d6
   4b762:	0b00           	btst %d5,%d0
   4b764:	00d6           	.short 0x00d6
   4b766:	f600 0032 8000 	move16 %a0@+,0x328000
   4b76c:	0028 3000 0060 	orib #0,%a0@(96)
	...
   4b796:	e000           	asrb #8,%d0
   4b798:	0000 f800      	orib #0,%d0
   4b79c:	0000 7e00      	orib #0,%d0
   4b7a0:	0000 be00      	orib #0,%d0
   4b7a4:	0000 7f00      	orib #0,%d0
   4b7a8:	0000 bf00      	orib #0,%d0
   4b7ac:	0000 7f80      	orib #-128,%d0
   4b7b0:	01d8           	bset %d0,%a0@+
   4b7b2:	2f80 01dc      	movel %d0,@(0)@(0)
   4b7b6:	1780 01ae 0f80 	moveb %d0,@(f80)@(1ac,%d0:w)
   4b7bc:	01ac 
   4b7be:	c780           	.short 0xc780
   4b7c0:	0073 3780 0051 	oriw #14208,%a3@(51,%d0:w)
   4b7c6:	ef00           	aslb #7,%d0
   4b7c8:	000d           	.short 0x000d
   4b7ca:	7e00           	moveq #0,%d7
   4b7cc:	0007 3c00      	orib #0,%d7
   4b7d0:	002b 1800 0000 	orib #0,%a3@(0)
	...
   4b7f2:	0000 0007      	orib #7,%d0
   4b7f6:	e000           	asrb #8,%d0
   4b7f8:	001f f800      	orib #0,%sp@+
   4b7fc:	003f           	.short 0x003f
   4b7fe:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4b802:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4b806:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4b80a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4b80e:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b812:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b816:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b81a:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b81e:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4b822:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4b826:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   4b82a:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4b82e:	3c00           	movew %d0,%d6
   4b830:	007f           	.short 0x007f
   4b832:	1800           	moveb %d0,%d4
   4b834:	0054 0000      	oriw #0,%a4@
	...
   4b854:	0007 e000      	orib #0,%d7
   4b858:	001f f800      	orib #0,%sp@+
   4b85c:	003f           	.short 0x003f
   4b85e:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4b862:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4b866:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4b86a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4b86e:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b872:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b876:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b87a:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b87e:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4b882:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4b886:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   4b88a:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4b88e:	3c00           	movew %d0,%d6
   4b890:	007f           	.short 0x007f
   4b892:	1800           	moveb %d0,%d4
   4b894:	0054 0000      	oriw #0,%a4@
	...
   4b8b4:	0001 0000      	orib #0,%d1
   4b8b8:	0003 e000      	orib #0,%d3
   4b8bc:	0003 b800      	orib #0,%d3
   4b8c0:	000b           	.short 0x000b
   4b8c2:	3c00           	movew %d0,%d6
   4b8c4:	0005 8e00      	orib #0,%d5
   4b8c8:	0007 9600      	orib #0,%d7
   4b8cc:	0027 4f00      	orib #0,%sp@-
   4b8d0:	00d1           	.short 0x00d1
   4b8d2:	ab00           	.short 0xab00
   4b8d4:	0169 c700      	bchg %d0,%a1@(-14592)
   4b8d8:	00e8           	.short 0x00e8
   4b8da:	2b00           	movel %d0,%a5@-
   4b8dc:	0067 c700      	oriw #-14592,%sp@-
   4b8e0:	0034 2200 0113 	orib #0,%a4@(0,%d0:w)@(ffffffffc600003f)
   4b8e6:	c600 003f 
   4b8ea:	1600           	moveb %d0,%d3
   4b8ec:	00fa           	.short 0x00fa
   4b8ee:	6c00 0004      	bgew 0x4b8f4
   4b8f2:	0800 0008      	btst #8,%d0
	...
   4b916:	e000           	asrb #8,%d0
   4b918:	0000 7800      	orib #0,%d0
   4b91c:	0000 7e00      	orib #0,%d0
   4b920:	0000 fe00      	orib #0,%d0
   4b924:	0000 7f00      	orib #0,%d0
   4b928:	0000 7f00      	orib #0,%d0
   4b92c:	0000 bf80      	orib #-128,%d0
   4b930:	00c0           	bitrev %d0
   4b932:	5f80           	subql #7,%d0
   4b934:	0160           	bchg %d0,%a0@-
   4b936:	3f80 0060      	movew %d0,%sp@(60,%d0:w)
   4b93a:	5f80           	subql #7,%d0
   4b93c:	0060 3f80      	oriw #16256,%a0@-
   4b940:	000c           	.short 0x000c
   4b942:	1f00           	moveb %d0,%sp@-
   4b944:	000f           	.short 0x000f
   4b946:	cf00           	abcd %d0,%d7
   4b948:	0000 ef00      	orib #0,%d0
   4b94c:	000c           	.short 0x000c
   4b94e:	2a00           	movel %d0,%d5
   4b950:	00ac 0000 0008 	oril #8,%a4@(0)
   4b956:	0000 
	...
   4b974:	0007 e000      	orib #0,%d7
   4b978:	001f f800      	orib #0,%sp@+
   4b97c:	003f           	.short 0x003f
   4b97e:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4b982:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4b986:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4b98a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4b98e:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b992:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b996:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b99a:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4b99e:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4b9a2:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4b9a6:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4b9aa:	ff00 01fe      	cp1stb %d0,%d0,#1,#510
   4b9ae:	fe00 01fc      	cp1ldb %d0,%d0,#1,#508
   4b9b2:	3800           	movew %d0,%d4
   4b9b4:	0158           	bchg %d0,%a0@+
	...
   4b9d2:	0000 0007      	orib #7,%d0
   4b9d6:	e000           	asrb #8,%d0
   4b9d8:	001f f800      	orib #0,%sp@+
   4b9dc:	003f           	.short 0x003f
   4b9de:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4b9e2:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4b9e6:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4b9ea:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4b9ee:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b9f2:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b9f6:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4b9fa:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4b9fe:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4ba02:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4ba06:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4ba0a:	ff00 01fe      	cp1stb %d0,%d0,#1,#510
   4ba0e:	fe00 01fc      	cp1ldb %d0,%d0,#1,#508
   4ba12:	3800           	movew %d0,%d4
   4ba14:	0158           	bchg %d0,%a0@+
	...
   4ba32:	0000 0001      	orib #1,%d0
   4ba36:	4000           	negxb %d0
   4ba38:	0003 b800      	orib #0,%d3
   4ba3c:	0007 c600      	orib #0,%d7
   4ba40:	0005 1e00      	orib #0,%d5
   4ba44:	0003 8700      	orib #0,%d3
   4ba48:	0007 c700      	orib #0,%d7
   4ba4c:	008b 4d80 0149 	oril #1300234569,%d3
   4ba52:	df80           	addxl %d0,%d7
   4ba54:	0043 4180      	oriw #16768,%d3
   4ba58:	014d 9380      	movepl %a5@(-27776),%d0
   4ba5c:	0077 8380 00e1 	oriw #-31872,%sp@(ffffffffffffffe1,%d0:w)
   4ba62:	db80           	addxl %d0,%d5
   4ba64:	007e           	.short 0x007e
   4ba66:	d100           	addxb %d0,%d0
   4ba68:	0030 8600 001f 	orib #0,%a0@(1f,%d0:w)
   4ba6e:	e800           	asrb #4,%d0
   4ba70:	0050 0000      	oriw #0,%a0@
	...
   4ba94:	0000 a000      	orib #0,%d0
   4ba98:	0000 f800      	orib #0,%d0
   4ba9c:	0000 3e00      	orib #0,%d0
   4baa0:	0000 fe00      	orib #0,%d0
   4baa4:	0000 7f00      	orib #0,%d0
   4baa8:	0000 3f00      	orib #0,%d0
   4baac:	0000 bf80      	orib #-128,%d0
   4bab0:	0100           	btst %d0,%d0
   4bab2:	2f80 0000      	movel %d0,%sp@(0,%d0:w)
   4bab6:	bf80           	eorl %d7,%d0
   4bab8:	0100           	btst %d0,%d0
   4baba:	6f80           	bles 0x4ba3c
   4babc:	0000 7f80      	orib #-128,%d0
   4bac0:	0020 2f80      	orib #-128,%a0@-
   4bac4:	001e 2f00      	orib #0,%fp@+
   4bac8:	000f           	.short 0x000f
   4baca:	7e00           	moveq #0,%d7
   4bacc:	000f           	.short 0x000f
   4bace:	0400 002f      	subib #47,%d0
   4bad2:	7800           	moveq #0,%d4
	...
   4baf4:	0007 e000      	orib #0,%d7
   4baf8:	001f f800      	orib #0,%sp@+
   4bafc:	003f           	.short 0x003f
   4bafe:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4bb02:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4bb06:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4bb0a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4bb0e:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4bb12:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4bb16:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4bb1a:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4bb1e:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4bb22:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4bb26:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   4bb2a:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4bb2e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4bb32:	7800           	moveq #0,%d4
   4bb34:	0054 0000      	oriw #0,%a4@
	...
   4bb54:	0007 e000      	orib #0,%d7
   4bb58:	001f f800      	orib #0,%sp@+
   4bb5c:	003f           	.short 0x003f
   4bb5e:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4bb62:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4bb66:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4bb6a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4bb6e:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4bb72:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4bb76:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4bb7a:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4bb7e:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4bb82:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4bb86:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   4bb8a:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4bb8e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4bb92:	7800           	moveq #0,%d4
   4bb94:	0054 0000      	oriw #0,%a4@
	...
   4bbb4:	0003 0000      	orib #0,%d3
   4bbb8:	0000 c000      	orib #0,%d0
   4bbbc:	000f           	.short 0x000f
   4bbbe:	7800           	moveq #0,%d4
   4bbc0:	0006 bc00      	orib #0,%d6
   4bbc4:	000f           	.short 0x000f
   4bbc6:	1400           	moveb %d0,%d2
   4bbc8:	0017 9e00      	orib #0,%sp@
   4bbcc:	004d           	.short 0x004d
   4bbce:	8e00           	orb %d0,%d7
   4bbd0:	005e ce00      	oriw #-12800,%fp@+
   4bbd4:	00b6 2c00 00af 	oril #738197679,%fp@(0,%a4:l:8)
   4bbda:	ce00 
   4bbdc:	0007 9e00      	orib #0,%d7
   4bbe0:	0045 ac00      	oriw #-21504,%d5
   4bbe4:	0060 dc00      	oriw #-9216,%a0@-
   4bbe8:	0041 d800      	oriw #-10240,%d1
   4bbec:	0001 a000      	orib #0,%d1
   4bbf0:	0020 0000      	orib #0,%a0@-
   4bbf4:	0020 0000      	orib #0,%a0@-
	...
   4bc14:	0000 e000      	orib #0,%d0
   4bc18:	0001 f800      	orib #0,%d1
   4bc1c:	0000 fc00      	orib #0,%d0
   4bc20:	0001 7e00      	orib #0,%d1
   4bc24:	0000 fe00      	orib #0,%d0
   4bc28:	0000 7f00      	orib #0,%d0
   4bc2c:	0002 7f00      	orib #0,%d2
   4bc30:	0001 3f00      	orib #0,%d1
   4bc34:	0001 df00      	orib #0,%d1
   4bc38:	0000 3f00      	orib #0,%d0
   4bc3c:	0000 7f00      	orib #0,%d0
   4bc40:	0040 7e00      	oriw #32256,%d0
   4bc44:	0020 3e00      	orib #0,%a0@-
   4bc48:	0020 3c00      	orib #0,%a0@-
   4bc4c:	0030 7800 001c 	orib #0,%a0@(1c,%d0:w)
   4bc52:	f000           	.short 0xf000
   4bc54:	0006 8000      	orib #0,%d6
	...
   4bc74:	000f           	.short 0x000f
   4bc76:	e000           	asrb #8,%d0
   4bc78:	003f           	.short 0x003f
   4bc7a:	f800           	.short 0xf800
   4bc7c:	007f           	.short 0x007f
   4bc7e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4bc82:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4bc86:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4bc8a:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4bc8e:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4bc92:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4bc96:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4bc9a:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4bc9e:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4bca2:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4bca6:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4bcaa:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   4bcae:	f800           	.short 0xf800
   4bcb0:	003f           	.short 0x003f
   4bcb2:	f000           	.short 0xf000
   4bcb4:	002e 8000 0000 	orib #0,%fp@(0)
	...
   4bcd2:	0000 000f      	orib #15,%d0
   4bcd6:	e000           	asrb #8,%d0
   4bcd8:	003f           	.short 0x003f
   4bcda:	f800           	.short 0xf800
   4bcdc:	007f           	.short 0x007f
   4bcde:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4bce2:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4bce6:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4bcea:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4bcee:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4bcf2:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4bcf6:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4bcfa:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4bcfe:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4bd02:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4bd06:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4bd0a:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   4bd0e:	f800           	.short 0xf800
   4bd10:	003f           	.short 0x003f
   4bd12:	f000           	.short 0xf000
   4bd14:	002e 8000 0000 	orib #0,%fp@(0)
	...
   4bd36:	8000           	orb %d0,%d0
   4bd38:	0003 4000      	orib #0,%d3
   4bd3c:	0008           	.short 0x0008
   4bd3e:	7000           	moveq #0,%d0
   4bd40:	0006 3000      	orib #0,%d6
   4bd44:	000d           	.short 0x000d
   4bd46:	d800           	addb %d0,%d4
   4bd48:	0017 5c00      	orib #0,%sp@
   4bd4c:	000f           	.short 0x000f
   4bd4e:	ac00 002e      	macw %d0l,%d6l
   4bd52:	1c00           	moveb %d0,%d6
   4bd54:	000f           	.short 0x000f
   4bd56:	ac00 0015      	macw %d0l,%d6l
   4bd5a:	1c00           	moveb %d0,%d6
   4bd5c:	000f           	.short 0x000f
   4bd5e:	ac00 0016      	macw %d0l,%d6l
   4bd62:	3800           	movew %d0,%d4
   4bd64:	0007 7800      	orib #0,%d7
   4bd68:	000d           	.short 0x000d
   4bd6a:	5000           	addqb #8,%d0
   4bd6c:	000b           	.short 0x000b
   4bd6e:	a000 000d      	macw %d0l,%d0l
   4bd72:	e000           	asrb #8,%d0
   4bd74:	0000 8000      	orib #0,%d0
	...
   4bd94:	0000 4000      	orib #0,%d0
   4bd98:	0000 f000      	orib #0,%d0
   4bd9c:	0001 f800      	orib #0,%d1
   4bda0:	0001 fc00      	orib #0,%d1
   4bda4:	0002 7c00      	orib #0,%d2
   4bda8:	0000 be00      	orib #0,%d0
   4bdac:	0000 7e00      	orib #0,%d0
   4bdb0:	0001 fe00      	orib #0,%d1
   4bdb4:	0000 7e00      	orib #0,%d0
   4bdb8:	0002 fe00      	orib #0,%d2
   4bdbc:	0000 7e00      	orib #0,%d0
   4bdc0:	0001 fc00      	orib #0,%d1
   4bdc4:	0001 fc00      	orib #0,%d1
   4bdc8:	0003 f800      	orib #0,%d3
   4bdcc:	0007 e000      	orib #0,%d7
   4bdd0:	000f           	.short 0x000f
   4bdd2:	e000           	asrb #8,%d0
   4bdd4:	0004 0000      	orib #0,%d4
	...
   4bdf4:	0007 c000      	orib #0,%d7
   4bdf8:	001f f000      	orib #0,%sp@+
   4bdfc:	003f           	.short 0x003f
   4bdfe:	f800           	.short 0xf800
   4be00:	007f           	.short 0x007f
   4be02:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4be06:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   4be0a:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4be0e:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4be12:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4be16:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4be1a:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4be1e:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4be22:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4be26:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   4be2a:	f800           	.short 0xf800
   4be2c:	000f           	.short 0x000f
   4be2e:	e000           	asrb #8,%d0
   4be30:	000f           	.short 0x000f
   4be32:	e000           	asrb #8,%d0
   4be34:	000e           	.short 0x000e
   4be36:	a000 0000      	macw %d0l,%d0l
	...
   4be52:	0000 0007      	orib #7,%d0
   4be56:	c000           	andb %d0,%d0
   4be58:	001f f000      	orib #0,%sp@+
   4be5c:	003f           	.short 0x003f
   4be5e:	f800           	.short 0xf800
   4be60:	007f           	.short 0x007f
   4be62:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4be66:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   4be6a:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4be6e:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4be72:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4be76:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4be7a:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4be7e:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4be82:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4be86:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   4be8a:	f800           	.short 0xf800
   4be8c:	000f           	.short 0x000f
   4be8e:	e000           	asrb #8,%d0
   4be90:	000f           	.short 0x000f
   4be92:	e000           	asrb #8,%d0
   4be94:	000e           	.short 0x000e
   4be96:	a000 0000      	macw %d0l,%d0l
	...
   4beb2:	0000 0001      	orib #1,%d0
   4beb6:	8000           	orb %d0,%d0
   4beb8:	0000 7000      	orib #0,%d0
   4bebc:	0007 3c00      	orib #0,%d7
   4bec0:	000b           	.short 0x000b
   4bec2:	1c00           	moveb %d0,%d6
   4bec4:	000b           	.short 0x000b
   4bec6:	4e00           	.short 0x4e00
   4bec8:	002f 9e00 0017 	orib #0,%sp@(23)
   4bece:	2e00           	movel %d0,%d7
   4bed0:	001b 1f00      	orib #0,%a3@+
   4bed4:	002e 0f00 001f 	orib #0,%fp@(31)
   4beda:	1f00           	moveb %d0,%sp@-
   4bedc:	0016 2e00      	orib #0,%fp@
   4bee0:	001f 1e00      	orib #0,%sp@+
   4bee4:	000d           	.short 0x000d
   4bee6:	3c00           	movew %d0,%d6
   4bee8:	0012 7c00      	orib #0,%a2@
   4beec:	0008           	.short 0x0008
   4beee:	4800           	nbcd %d0
   4bef0:	0003 f400      	orib #0,%d3
   4bef4:	0001 4400      	orib #0,%d1
	...
   4bf14:	0002 7000      	orib #0,%d2
   4bf18:	0001 fc00      	orib #0,%d1
   4bf1c:	0000 fe00      	orib #0,%d0
   4bf20:	0000 fe00      	orib #0,%d0
   4bf24:	0000 ff00      	orib #0,%d0
   4bf28:	0000 7f00      	orib #0,%d0
   4bf2c:	0000 ff00      	orib #0,%d0
   4bf30:	0004 ff80      	orib #-128,%d4
   4bf34:	0001 ff80      	orib #-128,%d1
   4bf38:	0000 ff80      	orib #-128,%d0
   4bf3c:	0001 ff00      	orib #0,%d1
   4bf40:	0000 ff00      	orib #0,%d0
   4bf44:	0002 fe00      	orib #0,%d2
   4bf48:	0025 fe00      	orib #0,%a5@-
   4bf4c:	0017 fc00      	orib #0,%sp@
   4bf50:	000f           	.short 0x000f
   4bf52:	f800 0000      	tblub %d0,%d0,%d0
   4bf56:	6000 0000      	braw 0x4bf58
	...
   4bf72:	0000 0007      	orib #7,%d0
   4bf76:	f000           	.short 0xf000
   4bf78:	001f fc00      	orib #0,%sp@+
   4bf7c:	003f           	.short 0x003f
   4bf7e:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4bf82:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4bf86:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4bf8a:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4bf8e:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4bf92:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4bf96:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4bf9a:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4bf9e:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   4bfa2:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   4bfa6:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   4bfaa:	fe00 001f      	cp1ldb %d0,%d0,#1,#31
   4bfae:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4bfb2:	fc00 0001      	cp0ldb %d0,%d0,#1,#1
   4bfb6:	7400           	moveq #0,%d2
	...
   4bfd4:	0007 f000      	orib #0,%d7
   4bfd8:	001f fc00      	orib #0,%sp@+
   4bfdc:	003f           	.short 0x003f
   4bfde:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4bfe2:	fe00 007f      	cp1ldb %d0,%d0,#1,#127
   4bfe6:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4bfea:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4bfee:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4bff2:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4bff6:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4bffa:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4bffe:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   4c002:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   4c006:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   4c00a:	fe00 001f      	cp1ldb %d0,%d0,#1,#31
   4c00e:	fc00 000f      	cp0ldb %d0,%d0,#1,#15
   4c012:	fc00 0001      	cp0ldb %d0,%d0,#1,#1
   4c016:	7400           	moveq #0,%d2
	...
   4c034:	0001 8000      	orib #0,%d1
   4c038:	0002 7000      	orib #0,%d2
   4c03c:	000d           	.short 0x000d
   4c03e:	1800           	moveb %d0,%d4
   4c040:	000b           	.short 0x000b
   4c042:	1c00           	moveb %d0,%d6
   4c044:	002c 4400 0013 	orib #0,%a4@(19)
   4c04a:	0e00           	.short 0x0e00
   4c04c:	0007 9700      	orib #0,%d7
   4c050:	001d 8500      	orib #0,%a5@+
   4c054:	0006 1c00      	orib #0,%d6
   4c058:	002f 8900 000a 	orib #0,%sp@(10)
   4c05e:	4d00           	chkl %d0,%d6
   4c060:	010d 3600      	movepw %a5@(13824),%d0
   4c064:	001a b600      	orib #0,%a2@+
   4c068:	000c           	.short 0x000c
   4c06a:	8c00           	orb %d0,%d6
   4c06c:	0020 b000      	orib #0,%a0@-
   4c070:	0014 c200      	orib #0,%a4@
   4c074:	0000 2a00      	orib #0,%d0
	...
   4c094:	0000 6000      	orib #0,%d0
   4c098:	0001 b800      	orib #0,%d1
   4c09c:	0000 fc00      	orib #0,%d0
   4c0a0:	0000 fe00      	orib #0,%d0
   4c0a4:	0003 be00      	orib #0,%d3
   4c0a8:	0000 ff00      	orib #0,%d0
   4c0ac:	0000 7f80      	orib #-128,%d0
   4c0b0:	0002 7f80      	orib #-128,%d2
   4c0b4:	0001 ff00      	orib #0,%d1
   4c0b8:	0000 7f80      	orib #-128,%d0
   4c0bc:	0001 bf80      	orib #-128,%d1
   4c0c0:	0002 fb00      	orib #0,%d2
   4c0c4:	0005 cf00      	orib #0,%d5
   4c0c8:	0002 7e00      	orib #0,%d2
   4c0cc:	0001 fe00      	orib #0,%d1
   4c0d0:	0002 7c00      	orib #0,%d2
	...
   4c0f4:	0007 e000      	orib #0,%d7
   4c0f8:	001f f800      	orib #0,%sp@+
   4c0fc:	003f           	.short 0x003f
   4c0fe:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4c102:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4c106:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4c10a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4c10e:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c112:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c116:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4c11a:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c11e:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c122:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4c126:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   4c12a:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   4c12e:	fe00 001e      	cp1ldb %d0,%d0,#1,#30
   4c132:	fe00 0000      	cp1nop #1
   4c136:	2a00           	movel %d0,%d5
	...
   4c154:	0007 e000      	orib #0,%d7
   4c158:	001f f800      	orib #0,%sp@+
   4c15c:	003f           	.short 0x003f
   4c15e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4c162:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4c166:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4c16a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4c16e:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c172:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c176:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4c17a:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c17e:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c182:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4c186:	ff00 007f      	cp1stb %d0,%d0,#1,#127
   4c18a:	fe00 003f      	cp1ldb %d0,%d0,#1,#63
   4c18e:	fe00 001e      	cp1ldb %d0,%d0,#1,#30
   4c192:	fe00 0000      	cp1nop #1
   4c196:	2a00           	movel %d0,%d5
	...
   4c1b4:	0002 0000      	orib #0,%d2
   4c1b8:	0001 4000      	orib #0,%d1
   4c1bc:	000b           	.short 0x000b
   4c1be:	b800           	cmpb %d0,%d4
   4c1c0:	0007 0800      	orib #0,%d7
   4c1c4:	001b bc00      	orib #0,%a3@+
   4c1c8:	000f           	.short 0x000f
   4c1ca:	0e00           	.short 0x0e00
   4c1cc:	0003 6d00      	orib #0,%d3
   4c1d0:	002c 3f80 0019 	orib #-128,%a4@(25)
   4c1d6:	7780           	mvzb %d0,%d3
   4c1d8:	001c 6f80      	orib #-128,%a4@+
   4c1dc:	0029 e700 0001 	orib #0,%a1@(1)
   4c1e2:	4600           	notb %d0
   4c1e4:	0013 4080      	orib #-128,%a3@
   4c1e8:	0027 e200      	orib #0,%sp@-
   4c1ec:	001c 0600      	orib #0,%a4@+
   4c1f0:	0008           	.short 0x0008
   4c1f2:	2500           	movel %d0,%a2@-
   4c1f4:	0000 3000      	orib #0,%d0
	...
   4c214:	0001 e000      	orib #0,%d1
   4c218:	0000 f800      	orib #0,%d0
   4c21c:	0000 7c00      	orib #0,%d0
   4c220:	0000 fe00      	orib #0,%d0
   4c224:	0000 7e00      	orib #0,%d0
   4c228:	0000 ff00      	orib #0,%d0
   4c22c:	0000 bf80      	orib #-128,%d0
   4c230:	0003 fb00      	orib #0,%d3
   4c234:	0006 f680      	orib #-128,%d6
   4c238:	0003 b600      	orib #0,%d3
   4c23c:	0004 7600      	orib #0,%d4
   4c240:	0003 e100      	orib #0,%d3
   4c244:	000f           	.short 0x000f
   4c246:	8380 0018      	unpk %d0,%d1,#24
   4c24a:	1180 0003      	moveb %d0,%a0@(3,%d0:w)
   4c24e:	0180           	bclr %d0,%d0
   4c250:	0004 0000      	orib #0,%d4
   4c254:	0000 1000      	orib #0,%d0
	...
   4c274:	0007 e000      	orib #0,%d7
   4c278:	001f f800      	orib #0,%sp@+
   4c27c:	007f           	.short 0x007f
   4c27e:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4c282:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4c286:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4c28a:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4c28e:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c292:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c296:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c29a:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c29e:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4c2a2:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4c2a6:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4c2aa:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   4c2ae:	7f80           	mvzb %d0,%d7
   4c2b0:	001c 3f80      	orib #-128,%a4@+
   4c2b4:	0000 3a80      	orib #-128,%d0
	...
   4c2d4:	0007 e000      	orib #0,%d7
   4c2d8:	001f f800      	orib #0,%sp@+
   4c2dc:	007f           	.short 0x007f
   4c2de:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4c2e2:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4c2e6:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4c2ea:	ff00 01ff      	cp1stb %d0,%d0,#1,#511
   4c2ee:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c2f2:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c2f6:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c2fa:	ff80 01ff      	cp1stl %d0,%d0,#1,#511
   4c2fe:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4c302:	ff00 00ff      	cp1stb %d0,%d0,#1,#255
   4c306:	ff80 00ff      	cp1stl %d0,%d0,#1,#255
   4c30a:	ff80 007f      	cp1stl %d0,%d0,#1,#127
   4c30e:	7f80           	mvzb %d0,%d7
   4c310:	001c 3f80      	orib #-128,%a4@+
   4c314:	0000 3a80      	orib #-128,%d0
	...
   4c334:	0002 0000      	orib #0,%d2
   4c338:	000c           	.short 0x000c
   4c33a:	c000           	andb %d0,%d0
   4c33c:	0017 7000      	orib #0,%sp@
   4c340:	0012 3800      	orib #0,%a2@
   4c344:	001e 3800      	orib #0,%fp@+
   4c348:	001c f400      	orib #0,%a4@+
   4c34c:	0071 ec00 00f9 	oriw #-5120,%a1@(fffffffffffffff9,%d0:w)
   4c352:	be00           	cmpb %d0,%d7
   4c354:	0071 7f00 00f7 	oriw #32512,%a1@(fffffffffffffff7,%d0:w)
   4c35a:	eb00           	aslb #5,%d0
   4c35c:	0045 6a00      	oriw #27136,%d5
   4c360:	0013 3c00      	orib #0,%a3@
   4c364:	000e           	.short 0x000e
   4c366:	1400           	moveb %d0,%d2
   4c368:	0011 a400      	orib #0,%a1@
   4c36c:	0032 7800 0010 	orib #0,%a2@(10,%d0:w)
   4c372:	1400           	moveb %d0,%d2
   4c374:	0000 2c00      	orib #0,%d0
	...
   4c394:	0001 c000      	orib #0,%d1
   4c398:	0003 f000      	orib #0,%d3
   4c39c:	0000 f800      	orib #0,%d0
   4c3a0:	0001 fc00      	orib #0,%d1
   4c3a4:	0001 fc00      	orib #0,%d1
   4c3a8:	0003 fe00      	orib #0,%d3
   4c3ac:	000f           	.short 0x000f
   4c3ae:	8300           	sbcd %d0,%d1
   4c3b0:	0007 7700      	orib #0,%d7
   4c3b4:	000e           	.short 0x000e
   4c3b6:	f700           	.short 0xf700
   4c3b8:	0000 ff00      	orib #0,%d0
   4c3bc:	000e           	.short 0x000e
   4c3be:	7f00           	mvsb %d0,%d7
   4c3c0:	000e           	.short 0x000e
   4c3c2:	1e00           	moveb %d0,%d7
   4c3c4:	0010 7e00      	orib #0,%a0@
   4c3c8:	0020 7c00      	orib #0,%a0@-
   4c3cc:	0008           	.short 0x0008
   4c3ce:	ac00 0000      	macw %d0l,%d6l
   4c3d2:	a800 0000      	macw %d0l,%d4l
   4c3d6:	2800           	movel %d0,%d4
	...
   4c3f4:	000f           	.short 0x000f
   4c3f6:	c000           	andb %d0,%d0
   4c3f8:	003f           	.short 0x003f
   4c3fa:	f000           	.short 0xf000
   4c3fc:	00ff           	.short 0x00ff
   4c3fe:	f800           	.short 0xf800
   4c400:	00ff           	.short 0x00ff
   4c402:	fc00 01ff      	cp0ldb %d0,%d0,#1,#511
   4c406:	fc00 01ff      	cp0ldb %d0,%d0,#1,#511
   4c40a:	fe00 03ff      	cp1ldb %d0,%d0,#2,#511
   4c40e:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   4c412:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   4c416:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   4c41a:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   4c41e:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   4c422:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   4c426:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4c42a:	fc00 007b      	cp0ldb %d0,%d0,#1,#123
   4c42e:	fc00 0031      	cp0ldb %d0,%d0,#1,#49
   4c432:	fc00 0000      	cp0nop #1
   4c436:	7c00           	moveq #0,%d6
	...
   4c454:	000f           	.short 0x000f
   4c456:	c000           	andb %d0,%d0
   4c458:	003f           	.short 0x003f
   4c45a:	f000           	.short 0xf000
   4c45c:	00ff           	.short 0x00ff
   4c45e:	f800           	.short 0xf800
   4c460:	00ff           	.short 0x00ff
   4c462:	fc00 01ff      	cp0ldb %d0,%d0,#1,#511
   4c466:	fc00 01ff      	cp0ldb %d0,%d0,#1,#511
   4c46a:	fe00 03ff      	cp1ldb %d0,%d0,#2,#511
   4c46e:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   4c472:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   4c476:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   4c47a:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   4c47e:	ff00 03ff      	cp1stb %d0,%d0,#2,#511
   4c482:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   4c486:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4c48a:	fc00 007b      	cp0ldb %d0,%d0,#1,#123
   4c48e:	fc00 0031      	cp0ldb %d0,%d0,#1,#49
   4c492:	fc00 0000      	cp0nop #1
   4c496:	7c00           	moveq #0,%d6
	...
   4c4b4:	0001 8000      	orib #0,%d1
   4c4b8:	0003 6000      	orib #0,%d3
   4c4bc:	000a           	.short 0x000a
   4c4be:	3800           	movew %d0,%d4
   4c4c0:	000f           	.short 0x000f
   4c4c2:	5800           	addqb #4,%d0
   4c4c4:	0054 3c00      	oriw #15360,%a4@
   4c4c8:	0038 6c00 0062 	orib #0,0x62
   4c4ce:	8000           	orb %d0,%d0
   4c4d0:	0065 fc00      	oriw #-1024,%a5@-
   4c4d4:	00eb           	.short 0x00eb
   4c4d6:	de00           	addb %d0,%d7
   4c4d8:	000b           	.short 0x000b
   4c4da:	ae00 0049      	macw %d0u,%d7l
   4c4de:	ec00           	asrb #6,%d0
   4c4e0:	001c fe00      	orib #0,%a4@+
   4c4e4:	0036 7000 0012 	orib #0,%fp@(12,%d0:w)
   4c4ea:	5800           	addqb #4,%d0
   4c4ec:	0003 e800      	orib #0,%d3
   4c4f0:	0000 4000      	orib #0,%d0
   4c4f4:	0001 0000      	orib #0,%d1
	...
   4c514:	0000 6000      	orib #0,%d0
   4c518:	0000 f800      	orib #0,%d0
   4c51c:	0001 fc00      	orib #0,%d1
   4c520:	0000 fc00      	orib #0,%d0
   4c524:	0003 fe00      	orib #0,%d3
   4c528:	0007 fe00      	orib #0,%d7
   4c52c:	0019 7e00      	orib #0,%a1@+
   4c530:	0013 de00      	orib #0,%a3@
   4c534:	0017 fe00      	orib #0,%sp@
   4c538:	0027 fe00      	orib #0,%sp@-
   4c53c:	0007 be00      	orib #0,%d7
   4c540:	0037 7200 0067 	orib #0,%sp@(67,%d0:w)
   4c546:	5c00           	addqb #6,%d0
   4c548:	0002 b800      	orib #0,%d2
   4c54c:	0002 b800      	orib #0,%d2
   4c550:	0002 b800      	orib #0,%d2
   4c554:	0002 2000      	orib #0,%d2
	...
   4c574:	000f           	.short 0x000f
   4c576:	e000           	asrb #8,%d0
   4c578:	003f           	.short 0x003f
   4c57a:	f800           	.short 0xf800
   4c57c:	007f           	.short 0x007f
   4c57e:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   4c582:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   4c586:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   4c58a:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   4c58e:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   4c592:	fe00 01fe      	cp1ldb %d0,%d0,#1,#510
   4c596:	f600 01ff fe00 	move16 %a0@+,0x1fffe00
   4c59c:	01ff           	.short 0x01ff
   4c59e:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4c5a2:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4c5a6:	fc00 0077      	cp0ldb %d0,%d0,#1,#119
   4c5aa:	f800 0007      	tblub %d0,%d7,%d0
   4c5ae:	f800 0007      	tblub %d0,%d7,%d0
   4c5b2:	f800 0003      	tblub %d0,%d3,%d0
   4c5b6:	6800 0000      	bvcw 0x4c5b8
	...
   4c5d2:	0000 000f      	orib #15,%d0
   4c5d6:	e000           	asrb #8,%d0
   4c5d8:	003f           	.short 0x003f
   4c5da:	f800           	.short 0xf800
   4c5dc:	007f           	.short 0x007f
   4c5de:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   4c5e2:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   4c5e6:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   4c5ea:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   4c5ee:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   4c5f2:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   4c5f6:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   4c5fa:	fe00 01ff      	cp1ldb %d0,%d0,#1,#511
   4c5fe:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4c602:	fe00 00ff      	cp1ldb %d0,%d0,#1,#255
   4c606:	fc00 0077      	cp0ldb %d0,%d0,#1,#119
   4c60a:	f800 0007      	tblub %d0,%d7,%d0
   4c60e:	f800 0007      	tblub %d0,%d7,%d0
   4c612:	f800 0003      	tblub %d0,%d3,%d0
   4c616:	6800 0000      	bvcw 0x4c618
	...
   4c64a:	03a0           	bclr %d1,%a0@-
   4c64c:	0000 13a8      	orib #-88,%d0
   4c650:	3000           	movew %d0,%d0
   4c652:	081c 6800      	btst #0,%a4@+
   4c656:	6002           	bras 0x4c65a
   4c658:	3400           	movew %d0,%d2
   4c65a:	6002           	bras 0x4c65e
   4c65c:	b401           	cmpb %d1,%d2
   4c65e:	8001           	orb %d1,%d0
   4c660:	5801           	addqb #4,%d1
   4c662:	8000           	orb %d0,%d0
   4c664:	5c0a           	.short 0x5c0a
   4c666:	0000 01e6      	orib #-26,%d0
   4c66a:	0000 03e4      	orib #-28,%d0
   4c66e:	0000 0160      	orib #96,%d0
	...
   4c6aa:	02e0           	.short 0x02e0
   4c6ac:	0000 12f8      	orib #-8,%d0
   4c6b0:	1000           	moveb %d0,%d0
   4c6b2:	0c14 5800      	cmpib #0,%a4@
   4c6b6:	5002           	addqb #8,%d2
   4c6b8:	3c00           	movew %d0,%d6
   4c6ba:	2002           	movel %d2,%d0
   4c6bc:	bc01           	cmpb %d1,%d6
   4c6be:	4000           	negxb %d0
   4c6c0:	4c00           	.short 0x4c00
   4c6c2:	8000           	orb %d0,%d0
   4c6c4:	5609           	.short 0x5609
   4c6c6:	0000 013e      	orib #62,%d0
   4c6ca:	0000 033c      	orib #60,%d0
   4c6ce:	0000 0130      	orib #48,%d0
	...
   4c70a:	0540           	bchg %d2,%d0
   4c70c:	0000 0d50      	orib #80,%d0
   4c710:	6000 3408      	braw 0x4fb1a
   4c714:	b000           	cmpb %d0,%d0
   4c716:	3006           	movew %d6,%d0
   4c718:	cc00           	andb %d0,%d6
   4c71a:	c000           	andb %d0,%d0
   4c71c:	4800           	nbcd %d0
   4c71e:	c001           	andb %d1,%d0
   4c720:	3403           	movew %d3,%d2
   4c722:	0000 6a07      	orib #7,%d0
   4c726:	0000 0eda      	orib #-38,%d0
   4c72a:	0000 04d8      	orib #-40,%d0
   4c72e:	0000 00d0      	orib #-48,%d0
	...
   4c76a:	07e0           	bset %d3,%a0@-
   4c76c:	0000 1ff8      	orib #-8,%d0
   4c770:	7000           	moveq #0,%d0
   4c772:	3c1c           	movew %a4@+,%d6
   4c774:	f800 7006      	tblub %d0,%d6,%d7
   4c778:	fc00 e002      	cp0ldb %d0,%fp,#1,#2
   4c77c:	fc01 c001      	cp0ldb %d1,%a4,#1,#1
   4c780:	7c03           	moveq #3,%d6
   4c782:	8000           	orb %d0,%d0
   4c784:	7e0f           	moveq #15,%d7
   4c786:	0000 0ffe      	orib #-2,%d0
   4c78a:	0000 07fc      	orib #-4,%d0
   4c78e:	0000 01f0      	orib #-16,%d0
	...
   4c7be:	0000 1000      	orib #0,%d0
   4c7c2:	0000 7800      	orib #0,%d0
   4c7c6:	0000 3400      	orib #0,%d0
   4c7ca:	0028 b400 00e2 	orib #0,%a0@(226)
   4c7d0:	5800           	addqb #4,%d0
   4c7d2:	00c0           	bitrev %d0
   4c7d4:	5e00           	addqb #7,%d0
   4c7d6:	0100           	btst %d0,%d0
   4c7d8:	0500           	btst %d2,%d0
   4c7da:	0600 0380      	addib #-128,%d0
   4c7de:	0400 0340      	subib #64,%d0
   4c7e2:	0800 00c0      	btst #-64,%d0
   4c7e6:	3000           	movew %d0,%d0
   4c7e8:	00b9 c000 002e 	oril #-1073741778,0x40000006
   4c7ee:	4000 0006 
	...
   4c81e:	0000 1000      	orib #0,%d0
   4c822:	0000 4800      	orib #0,%d0
   4c826:	0000 3c00      	orib #0,%d0
   4c82a:	002c bc00 00a2 	orib #0,%a4@(162)
   4c830:	4c00           	.short 0x4c00
   4c832:	0041 5600      	oriw #22016,%d1
   4c836:	0100           	btst %d0,%d0
   4c838:	0300           	btst %d1,%d0
   4c83a:	0400 0380      	subib #-128,%d0
   4c83e:	0000 02c0      	orib #-64,%d0
   4c842:	0800 00a0      	btst #-96,%d0
   4c846:	2000           	movel %d0,%d0
   4c848:	0098 a000 0025 	oril #-1610612699,%a0@+
   4c84e:	c000           	andb %d0,%d0
   4c850:	0005 0000      	orib #0,%d5
	...
   4c880:	6000 0000      	braw 0x4c882
   4c884:	b000           	cmpb %d0,%d0
   4c886:	0000 cc00      	orib #0,%d0
   4c88a:	0014 4800      	orib #0,%a4@
   4c88e:	0060 3400      	oriw #13312,%a0@-
   4c892:	0181           	bclr %d0,%d1
   4c894:	6a00 0200      	bplw 0x4ca96
   4c898:	0e00           	.short 0x0e00
   4c89a:	0200 0480      	andib #-128,%d0
   4c89e:	0c00 0180      	cmpib #-128,%d0
   4c8a2:	1000           	moveb %d0,%d0
   4c8a4:	0160           	bchg %d0,%a0@-
   4c8a6:	1000           	moveb %d0,%d0
   4c8a8:	0069 6000 005b 	oriw #24576,%a1@(91)
   4c8ae:	8000           	orb %d0,%d0
   4c8b0:	001b 0000      	orib #0,%a3@+
	...
   4c8e0:	7000           	moveq #0,%d0
   4c8e2:	0000 f800      	orib #0,%d0
   4c8e6:	0000 fc00      	orib #0,%d0
   4c8ea:	003c fc00      	orib #0,%ccr
   4c8ee:	00e2           	.short 0x00e2
   4c8f0:	7c00           	moveq #0,%d6
   4c8f2:	01c1           	bset %d0,%d1
   4c8f4:	7e00           	moveq #0,%d7
   4c8f6:	0300           	btst %d1,%d0
   4c8f8:	0f00           	btst %d7,%d0
   4c8fa:	0600 0780      	addib #-128,%d0
   4c8fe:	0c00 03c0      	cmpib #-64,%d0
   4c902:	1800           	moveb %d0,%d4
   4c904:	01e0           	bset %d0,%a0@-
   4c906:	3000           	movew %d0,%d0
   4c908:	00f9 e000 007f 	cmp2b 0x7fc000,%fp
   4c90e:	c000 
   4c910:	001f 0000      	orib #0,%sp@+
	...
   4c940:	1000           	moveb %d0,%d0
   4c942:	0000 5800      	orib #0,%d0
   4c946:	0000 3600      	orib #0,%d0
   4c94a:	0001 bb00      	orib #0,%d1
   4c94e:	0004 5980      	orib #-128,%d4
   4c952:	0018 0dc0      	orib #-64,%a0@+
   4c956:	0060 01a0      	oriw #416,%a0@-
   4c95a:	0060 0050      	oriw #80,%a0@-
   4c95e:	00c0           	bitrev %d0
   4c960:	0060 0380      	oriw #896,%a0@-
   4c964:	0018 0300      	orib #0,%a0@+
   4c968:	0014 0e00      	orib #0,%a4@
   4c96c:	0003 e400      	orib #0,%d3
   4c970:	0002 d000      	orib #0,%d2
	...
   4c9a0:	3000           	movew %d0,%d0
   4c9a2:	0000 4800      	orib #0,%d0
   4c9a6:	0000 3e00      	orib #0,%d0
   4c9aa:	0001 bf00      	orib #0,%d1
   4c9ae:	0006 6f80      	orib #-128,%d6
   4c9b2:	0018 2bc0      	orib #-64,%a0@+
   4c9b6:	0040 0160      	oriw #352,%d0
   4c9ba:	0020 0070      	orib #112,%a0@-
   4c9be:	00c0           	bitrev %d0
   4c9c0:	0050 0280      	oriw #640,%a0@
   4c9c4:	0008           	.short 0x0008
   4c9c6:	0100           	btst %d0,%d0
   4c9c8:	0012 0a00      	orib #0,%a2@
   4c9cc:	0002 bc00      	orib #0,%d2
   4c9d0:	0002 b000      	orib #0,%d2
	...
   4ca00:	2000           	movel %d0,%d0
   4ca02:	0000 3000      	orib #0,%d0
   4ca06:	0000 ca00      	orib #0,%d0
   4ca0a:	0001 4700      	orib #0,%d1
   4ca0e:	000a           	.short 0x000a
   4ca10:	3700           	movew %d0,%a3@-
   4ca12:	0028 36c0 0020 	orib #-64,%a0@(32)
   4ca18:	00c0           	bitrev %d0
   4ca1a:	00c0           	bitrev %d0
   4ca1c:	00b0 0140 0030 	oril #20971568,@(0,%d0:w)
   4ca22:	0180 
   4ca24:	0030 0600 000e 	orib #0,%a0@(e,%d0:w)
   4ca2a:	0600 000d      	addib #13,%d0
   4ca2e:	5800           	addqb #4,%d0
   4ca30:	0001 6000      	orib #0,%d1
	...
   4ca60:	3000           	movew %d0,%d0
   4ca62:	0000 7800      	orib #0,%d0
   4ca66:	0000 fe00      	orib #0,%d0
   4ca6a:	0001 ff00      	orib #0,%d1
   4ca6e:	000e           	.short 0x000e
   4ca70:	7f80           	mvzb %d0,%d7
   4ca72:	0038 3fc0 0060 	orib #-64,0x60
   4ca78:	01e0           	bset %d0,%a0@-
   4ca7a:	00e0           	.short 0x00e0
   4ca7c:	00f0           	.short 0x00f0
   4ca7e:	01c0           	bset %d0,%d0
   4ca80:	0070 0380 0038 	oriw #896,%a0@(38,%d0:w)
   4ca86:	0700           	btst %d3,%d0
   4ca88:	001e 0e00      	orib #0,%fp@+
   4ca8c:	000f           	.short 0x000f
   4ca8e:	fc00 0003      	cp0ldb %d0,%d0,#1,#3
   4ca92:	f000           	.short 0xf000
	...
   4cac8:	2c80           	movel %d0,%fp@
   4caca:	0000 4e60      	orib #96,%d0
   4cace:	0000 3eb0      	orib #-80,%d0
   4cad2:	0000 32b8      	orib #-72,%d0
   4cad6:	0000 6834      	orib #52,%d0
   4cada:	0000 100a      	orib #10,%d0
   4cade:	0004 000d      	orib #13,%d4
   4cae2:	0018 0002      	orib #2,%a0@+
   4cae6:	0010 0000      	orib #0,%a0@
   4caea:	8020           	orb %a0@-,%d0
   4caec:	0001 4080      	orib #-128,%d1
   4caf0:	0000 3e80      	orib #-128,%d0
   4caf4:	0000 2e00      	orib #0,%d0
	...
   4cb28:	3b80 0000      	movew %d0,%a5@(0,%d0:w)
   4cb2c:	49e0           	.short 0x49e0
   4cb2e:	0000 35f0      	orib #-16,%d0
   4cb32:	0000 3e98      	orib #-104,%d0
   4cb36:	0000 582c      	orib #44,%d0
   4cb3a:	0000 1006      	orib #6,%d0
   4cb3e:	0004 000f      	orib #15,%d4
   4cb42:	0010 0001      	orib #1,%a0@
   4cb46:	0000 0000      	orib #0,%d0
   4cb4a:	c020           	andb %a0@-,%d0
   4cb4c:	0001 20c0      	orib #-64,%d1
   4cb50:	0000 2b80      	orib #-128,%d0
   4cb54:	0000 2a00      	orib #0,%d0
	...
   4cb88:	1780 0000      	moveb %d0,%a3@(0,%d0:w)
   4cb8c:	37a0 0000      	movew %a0@-,%a3@(0,%d0:w)
   4cb90:	cb70 0000      	andw %d5,%a0@(0,%d0:w)
   4cb94:	cc60           	andw %a0@-,%d6
   4cb96:	0001 b01c      	orib #28,%d1
   4cb9a:	0002 601c      	orib #28,%d2
   4cb9e:	0000 0003      	orib #3,%d0
   4cba2:	0008           	.short 0x0008
   4cba4:	0007 0030      	orib #48,%d7
   4cba8:	0003 4040      	orib #64,%d3
   4cbac:	0000 e140      	orib #64,%d0
   4cbb0:	0000 d580      	orib #-128,%d0
   4cbb4:	0000 1400      	orib #0,%d0
	...
   4cbe8:	3f80 0000      	movew %d0,%sp@(0,%d0:w)
   4cbec:	7fe0           	mvzw %a0@-,%d7
   4cbee:	0000 fff0      	orib #-16,%d0
   4cbf2:	0000 fef8      	orib #-8,%d0
   4cbf6:	0001 f83c      	orib #60,%d1
   4cbfa:	0002 701e      	orib #30,%d2
   4cbfe:	0004 000f      	orib #15,%d4
   4cc02:	0018 0007      	orib #7,%a0@+
   4cc06:	0030 0003 c060 	orib #3,%a0@(60,%a4:w)
   4cc0c:	0001 e1c0      	orib #-64,%d1
   4cc10:	0000 ff80      	orib #-128,%d0
   4cc14:	0000 3e00      	orib #0,%d0
	...
   4cc48:	00d0 0000      	cmp2b %a0@,%d0
   4cc4c:	05dc           	bset %d2,%a4@+
   4cc4e:	0000 03d6      	orib #-42,%d0
   4cc52:	0000 1407      	orib #7,%d0
   4cc56:	0000 5806      	orib #6,%d0
   4cc5a:	8000           	orb %d0,%d0
   4cc5c:	fc01 c000      	cp0ldb %d1,%a4,#1,#0
   4cc60:	3001           	movew %d1,%d0
   4cc62:	a000           	.short 0xa000
   4cc64:	7400           	moveq #0,%d2
   4cc66:	5002           	addqb #8,%d2
   4cc68:	1800           	moveb %d0,%d4
   4cc6a:	6808           	bvcs 0x4cc74
   4cc6c:	1000           	moveb %d0,%d0
   4cc6e:	0e08           	.short 0x0e08
   4cc70:	0000 0bd0      	orib #-48,%d0
   4cc74:	0000 03c0      	orib #-64,%d0
	...
   4cca8:	00b0 0000 04bc 	oril #1212,%a0@(0,%d0:w)
   4ccae:	0000 
   4ccb0:	02be 0000 1c03 	andil #7171,%d6
   4ccb6:	0000 5405      	orib #5,%d0
   4ccba:	8000           	orb %d0,%d0
   4ccbc:	bc00           	cmpb %d0,%d6
   4ccbe:	c000           	andb %d0,%d0
   4ccc0:	3c01           	movew %d1,%d6
   4ccc2:	6001           	bras 0x4ccc5
   4ccc4:	4c00 3002      	mulul %d0,%d3
   4ccc8:	0800 7808      	btst #8,%d0
   4cccc:	0000 0600      	orib #0,%d0
   4ccd0:	0000 0970      	orib #112,%d0
   4ccd4:	0000 0240      	orib #64,%d0
	...
   4cd08:	0370 0000      	bchg %d1,%a0@(0,%d0:w)
   4cd0c:	0b64           	bchg %d5,%a4@-
   4cd0e:	0000 1d6e      	orib #110,%d0
   4cd12:	0000 2c1c      	orib #28,%d0
   4cd16:	0000 2c03      	orib #3,%d0
   4cd1a:	8000           	orb %d0,%d0
   4cd1c:	4003           	negxb %d3
   4cd1e:	0000 cc00      	orib #0,%d0
   4cd22:	e001           	asrb #8,%d1
   4cd24:	b800           	cmpb %d0,%d4
   4cd26:	e000           	asrb #8,%d0
   4cd28:	7000           	moveq #0,%d0
   4cd2a:	1804           	moveb %d4,%d4
   4cd2c:	3000           	movew %d0,%d0
   4cd2e:	3a18           	movew %a0@+,%d5
   4cd30:	0000 16a0      	orib #-96,%d0
   4cd34:	0000 0580      	orib #-128,%d0
	...
   4cd68:	03f0 0000      	bset %d1,%a0@(0,%d0:w)
   4cd6c:	0ffc           	.short 0x0ffc
   4cd6e:	0000 1ffe      	orib #-2,%d0
   4cd72:	0000 3c1f      	orib #31,%d0
   4cd76:	0000 7c07      	orib #7,%d0
   4cd7a:	8000           	orb %d0,%d0
   4cd7c:	fc03 c000      	cp0ldb %d3,%a4,#1,#0
   4cd80:	fc01 e001      	cp0ldb %d1,%fp,#1,#1
   4cd84:	fc00 f002      	cp0ldb %d0,%sp,#1,#2
   4cd88:	7800           	moveq #0,%d4
   4cd8a:	780c           	moveq #12,%d4
   4cd8c:	3000           	movew %d0,%d0
   4cd8e:	3e18           	movew %a0@+,%d7
   4cd90:	0000 1ff0      	orib #-16,%d0
   4cd94:	0000 07c0      	orib #-64,%d0
	...
   4cdc8:	000d           	.short 0x000d
   4cdca:	0000 005a      	orib #90,%d0
   4cdce:	8000           	orb %d0,%d0
   4cdd0:	0160           	bchg %d0,%a0@-
   4cdd2:	8000           	orb %d0,%d0
   4cdd4:	0140           	bchg %d0,%d0
   4cdd6:	6000 0680      	braw 0x4d458
   4cdda:	3000           	movew %d0,%d0
   4cddc:	0700           	btst %d3,%d0
   4cdde:	0800 2a00      	btst #0,%d0
   4cde2:	0c00 7e00      	cmpib #0,%d0
   4cde6:	0200 3000      	andib #0,%d0
   4cdea:	0300           	btst %d1,%d0
   4cdec:	3000           	movew %d0,%d0
   4cdee:	00c1           	bitrev %d1
   4cdf0:	7400           	moveq #0,%d2
   4cdf2:	00b2 1800 0000 	oril #402653184,%a2@(0,%d0:w)
   4cdf8:	0000 
	...
   4ce26:	0000 000b      	orib #11,%d0
   4ce2a:	0000 004f      	orib #79,%d0
   4ce2e:	8000           	orb %d0,%d0
   4ce30:	0120           	btst %d0,%a0@-
   4ce32:	c000           	andb %d0,%d0
   4ce34:	01c0           	bset %d0,%d0
   4ce36:	2000           	movel %d0,%d0
   4ce38:	0580           	bclr %d2,%d0
   4ce3a:	2000           	movel %d0,%d0
   4ce3c:	0300           	btst %d1,%d0
   4ce3e:	0800 2e00      	btst #0,%d0
   4ce42:	0800 4e00      	btst #0,%d0
   4ce46:	0200 3c00      	andib #0,%d0
   4ce4a:	0200 3c00      	andib #0,%d0
   4ce4e:	00c1           	bitrev %d1
   4ce50:	4c00           	.short 0x4c00
   4ce52:	009e 0800 0000 	oril #134217728,%fp@+
	...
   4ce88:	0036 0000 00b5 	orib #0,%fp@(ffffffffffffffb5,%d0:w)
   4ce8e:	8000           	orb %d0,%d0
   4ce90:	00c3           	bitrev %d3
   4ce92:	4000           	negxb %d0
   4ce94:	02c0           	byterev %d0
   4ce96:	c000           	andb %d0,%d0
   4ce98:	0300           	btst %d1,%d0
   4ce9a:	1000           	moveb %d0,%d0
   4ce9c:	0d00           	btst %d6,%d0
   4ce9e:	1000           	moveb %d0,%d0
   4cea0:	1600           	moveb %d0,%d3
   4cea2:	0400 3200      	subib #0,%d0
   4cea6:	0400 cc00      	subib #0,%d0
   4ceaa:	0100           	btst %d0,%d0
   4ceac:	cc00           	andb %d0,%d6
   4ceae:	0141           	bchg %d0,%d1
   4ceb0:	b800           	cmpb %d0,%d4
   4ceb2:	006c 7000 0000 	oriw #28672,%a4@(0)
   4ceb8:	2000           	movel %d0,%d0
	...
   4cee6:	0000 003f      	orib #63,%d0
   4ceea:	0000 00ff      	orib #-1,%d0
   4ceee:	8000           	orb %d0,%d0
   4cef0:	01e3           	bset %d0,%a3@-
   4cef2:	c000           	andb %d0,%d0
   4cef4:	03c0           	bset %d1,%d0
   4cef6:	e000           	asrb #8,%d0
   4cef8:	0780           	bclr %d3,%d0
   4cefa:	3000           	movew %d0,%d0
   4cefc:	0f00           	btst %d7,%d0
   4cefe:	1800           	moveb %d0,%d4
   4cf00:	3e00           	movew %d0,%d7
   4cf02:	0c00 7e00      	cmpib #0,%d0
   4cf06:	0600 fc00      	addib #0,%d0
   4cf0a:	0300           	btst %d1,%d0
   4cf0c:	fc00 01c1      	cp0ldb %d0,%d0,#1,#449
   4cf10:	fc00 00fe      	cp0ldb %d0,%d0,#1,#254
   4cf14:	7800           	moveq #0,%d4
   4cf16:	0000 2000      	orib #0,%d0
	...
   4cf4a:	f000           	.short 0xf000
   4cf4c:	0004 e800      	orib #0,%d4
   4cf50:	0005 e400      	orib #0,%d5
   4cf54:	0016 0c00      	orib #0,%fp@
   4cf58:	0018 0300      	orib #0,%a0@+
   4cf5c:	0060 0300      	oriw #768,%a0@-
   4cf60:	0070 01c0 01a0 	oriw #448,@(20,%d0:w)
   4cf66:	0020 
   4cf68:	3dc0           	.short 0x3dc0
   4cf6a:	0030 1f80 0008 	orib #-128,%a0@(8,%d0:w)
   4cf70:	7b00           	mvsb %d0,%d5
   4cf72:	0003 3600      	orib #0,%d3
   4cf76:	0000 3c00      	orib #0,%d0
	...
   4cfaa:	b000           	cmpb %d0,%d0
   4cfac:	0004 b800      	orib #0,%d4
   4cfb0:	0004 bc00      	orib #0,%d4
   4cfb4:	0012 0a00      	orib #0,%a2@
   4cfb8:	0008           	.short 0x0008
   4cfba:	0100           	btst %d0,%d0
   4cfbc:	0050 0280      	oriw #640,%a0@
   4cfc0:	0030 0180 0160 	orib #-128,%a0@(20)
   4cfc6:	0020 
   4cfc8:	37c0           	.short 0x37c0
   4cfca:	0020 1780      	orib #-128,%a0@-
   4cfce:	0008           	.short 0x0008
   4cfd0:	7f00           	mvsb %d0,%d7
   4cfd2:	0003 1e00      	orib #0,%d3
   4cfd6:	0000 3400      	orib #0,%d0
	...
   4d006:	0000 0001      	orib #1,%d0
   4d00a:	5000           	addqb #8,%d0
   4d00c:	0003 5800      	orib #0,%d3
   4d010:	000b           	.short 0x000b
   4d012:	5800           	addqb #4,%d0
   4d014:	000c           	.short 0x000c
   4d016:	0600 0030      	addib #48,%d0
   4d01a:	0600 0030      	addib #48,%d0
   4d01e:	0180           	bclr %d0,%d0
   4d020:	00d0           	.short 0x00d0
   4d022:	0140           	bchg %d0,%d0
   4d024:	00c0           	bitrev %d0
   4d026:	0040 4ec0      	oriw #20160,%d0
   4d02a:	0010 eb00      	orib #0,%a0@
   4d02e:	0010 8700      	orib #0,%a0@
   4d032:	000d           	.short 0x000d
   4d034:	ea00           	asrb #5,%d0
   4d036:	0000 4c00      	orib #0,%d0
	...
   4d066:	0000 0001      	orib #1,%d0
   4d06a:	f000           	.short 0xf000
   4d06c:	0007 f800      	orib #0,%d7
   4d070:	000f           	.short 0x000f
   4d072:	fc00 001e      	cp0ldb %d0,%d0,#1,#30
   4d076:	0e00           	.short 0x0e00
   4d078:	0038 0700 0070 	orib #0,0x70
   4d07e:	0380           	bclr %d1,%d0
   4d080:	00f0           	.short 0x00f0
   4d082:	01c0           	bset %d0,%d0
   4d084:	01e0           	bset %d0,%a0@-
   4d086:	0060 7fc0      	oriw #32704,%a0@-
   4d08a:	0030 ff80 0018 	orib #-128,%a0@(18,%d0:w)
   4d090:	ff00 000f      	cp1stb %d0,%d0,#1,#15
   4d094:	fe00 0000      	cp1nop #1
   4d098:	7c00           	moveq #0,%d6
	...
   4d0ca:	1e00           	moveb %d0,%d7
   4d0cc:	0000 5c80      	orib #-128,%d0
   4d0d0:	0000 6080      	orib #-128,%d0
   4d0d4:	0001 8020      	orib #32,%d1
   4d0d8:	0001 8030      	orib #48,%d1
   4d0dc:	1006           	moveb %d6,%d0
   4d0de:	0008           	.short 0x0008
   4d0e0:	6807           	bvcs 0x4d0e9
   4d0e2:	0000 301a      	orib #26,%d0
   4d0e6:	0002 f65c      	orib #92,%d2
   4d0ea:	0001 4f58      	orib #88,%d1
   4d0ee:	0000 1730      	orib #48,%d0
   4d0f2:	0000 0340      	orib #64,%d0
	...
   4d12a:	1200           	moveb %d0,%d1
   4d12c:	0000 5780      	orib #-128,%d0
   4d130:	0000 21c0      	orib #-64,%d0
   4d134:	0001 4020      	orib #32,%d1
   4d138:	0000 8020      	orib #32,%d0
   4d13c:	1005           	moveb %d5,%d0
   4d13e:	0008           	.short 0x0008
   4d140:	5803           	addqb #4,%d3
   4d142:	0000 3c16      	orib #22,%d0
   4d146:	0002 be4c      	orib #76,%d2
   4d14a:	0001 4bf8      	orib #-8,%d1
   4d14e:	0000 11f0      	orib #-16,%d0
   4d152:	0000 02c0      	orib #-64,%d0
	...
   4d18a:	2c00           	movel %d0,%d6
   4d18c:	0000 2b00      	orib #0,%d0
   4d190:	0000 c140      	orib #64,%d0
   4d194:	0000 c040      	orib #64,%d0
   4d198:	2003           	movel %d3,%d0
   4d19a:	0010 6003      	orib #3,%a0@
   4d19e:	0010 b00d      	orib #13,%a0@
   4d1a2:	0004 cc0c      	orib #12,%d4
   4d1a6:	0000 4a34      	orib #52,%d0
   4d1aa:	0001 36b0      	orib #-80,%d1
   4d1ae:	0000 2ed0      	orib #-48,%d0
   4d1b2:	0000 0dc0      	orib #-64,%d0
	...
   4d1ea:	3e00           	movew %d0,%d7
   4d1ec:	0000 7f80      	orib #-128,%d0
   4d1f0:	0000 e1c0      	orib #-64,%d0
   4d1f4:	0001 c060      	orib #96,%d1
   4d1f8:	2003           	movel %d3,%d0
   4d1fa:	8030 7007      	orb %a0@(7,%d7:w),%d0
   4d1fe:	0018 f80f      	orib #15,%a0@+
   4d202:	0004 fc1e      	orib #30,%d4
   4d206:	0002 fe7c      	orib #124,%d2
   4d20a:	0001 7ff8      	orib #-8,%d1
   4d20e:	0000 3ff0      	orib #-16,%d0
   4d212:	0000 0fc0      	orib #-64,%d0
	...
   4d236:	2000           	movel %d0,%d0
   4d238:	0000 0000      	orib #0,%d0
   4d23c:	0200 1000      	andib #0,%d0
   4d240:	0000 0800      	orib #0,%d0
   4d244:	0100           	btst %d0,%d0
   4d246:	0800 0135      	btst #53,%d0
   4d24a:	0800 0140      	btst #64,%d0
   4d24e:	0800 0141      	btst #65,%d0
   4d252:	8900           	sbcd %d0,%d4
   4d254:	0103           	btst %d0,%d3
   4d256:	c800           	andb %d0,%d4
   4d258:	00c6           	bitrev %d6
   4d25a:	5080           	addql #8,%d0
   4d25c:	0067 6080      	oriw #24704,%sp@-
   4d260:	0014 0c80      	orib #-128,%a4@
   4d264:	018f e300      	movepw %d0,%sp@(-7424)
   4d268:	0260 1000      	andiw #4096,%a0@-
   4d26c:	0218 0c00      	andib #0,%a0@+
   4d270:	0210 0200      	andib #0,%a0@
   4d274:	0020 0100      	orib #0,%a0@-
   4d278:	0120           	btst %d0,%a0@-
   4d27a:	0500           	btst %d2,%d0
   4d27c:	0020 4500      	orib #0,%a0@-
   4d280:	0020 1900      	orib #0,%a0@-
   4d284:	0020 0100      	orib #0,%a0@-
   4d288:	0000 0000      	orib #0,%d0
   4d28c:	0040 0080      	oriw #128,%d0
   4d290:	0000 0000      	orib #0,%d0
   4d294:	0000 2000      	orib #0,%d0
   4d298:	0000 2000      	orib #0,%d0
   4d29c:	0200 0000      	andib #0,%d0
   4d2a0:	0100           	btst %d0,%d0
   4d2a2:	0000 0000      	orib #0,%d0
   4d2a6:	0000 000d      	orib #13,%d0
   4d2aa:	0000 0001      	orib #1,%d0
   4d2ae:	0000 0002      	orib #2,%d0
   4d2b2:	8100           	sbcd %d0,%d0
   4d2b4:	0084 c080 0021 	oril #-1065353183,%d4
   4d2ba:	c000           	andb %d0,%d0
   4d2bc:	0018 d000      	orib #0,%a0@+
   4d2c0:	000b           	.short 0x000b
   4d2c2:	f000           	.short 0xf000
   4d2c4:	000f           	.short 0x000f
   4d2c6:	e000           	asrb #8,%d0
   4d2c8:	001f e000      	orib #0,%sp@+
   4d2cc:	0000 3000      	orib #0,%d0
   4d2d0:	0000 0c00      	orib #0,%d0
   4d2d4:	0200 0200      	andib #0,%d0
   4d2d8:	0100           	btst %d0,%d0
   4d2da:	0000 0000      	orib #0,%d0
   4d2de:	4000           	negxb %d0
   4d2e0:	0000 2000      	orib #0,%d0
   4d2e4:	0000 0000      	orib #0,%d0
   4d2e8:	0020 0100      	orib #0,%a0@-
   4d2ec:	0040 0080      	oriw #128,%d0
   4d2f0:	0000 0000      	orib #0,%d0
   4d2f4:	0000 2000      	orib #0,%d0
   4d2f8:	0000 2000      	orib #0,%d0
   4d2fc:	0200 1000      	andib #0,%d0
   4d300:	0100           	btst %d0,%d0
   4d302:	0800 0100      	btst #0,%d0
   4d306:	0800 013d      	btst #61,%d0
   4d30a:	0800 0141      	btst #65,%d0
   4d30e:	0800 0143      	btst #67,%d0
   4d312:	8900           	sbcd %d0,%d4
   4d314:	0187           	bclr %d0,%d7
   4d316:	c880           	andl %d0,%d4
   4d318:	00e7           	.short 0x00e7
   4d31a:	d080           	addl %d0,%d0
   4d31c:	007f           	.short 0x007f
   4d31e:	f080 001f      	pbbs 0x4d33f
   4d322:	fc80 0185      	cp0ldl %d0,%d0,#1,#389
   4d326:	4300           	chkl %d0,%d1
   4d328:	027f           	.short 0x027f
   4d32a:	f000           	.short 0xf000
   4d32c:	021a bc00      	andib #0,%a2@+
   4d330:	0214 4e00      	andib #0,%a4@
   4d334:	0224 4300      	andib #0,%a4@-
   4d338:	0120           	btst %d0,%a0@-
   4d33a:	0500           	btst %d2,%d0
   4d33c:	0020 4500      	orib #0,%a0@-
   4d340:	0020 3900      	orib #0,%a0@-
   4d344:	0020 0100      	orib #0,%a0@-
   4d348:	0020 0100      	orib #0,%a0@-
   4d34c:	0040 0080      	oriw #128,%d0
   4d350:	0000 0000      	orib #0,%d0
   4d354:	0000 2000      	orib #0,%d0
   4d358:	0000 2000      	orib #0,%d0
   4d35c:	0200 1000      	andib #0,%d0
   4d360:	0100           	btst %d0,%d0
   4d362:	0800 0100      	btst #0,%d0
   4d366:	0800 013d      	btst #61,%d0
   4d36a:	0800 0141      	btst #65,%d0
   4d36e:	0800 0143      	btst #67,%d0
   4d372:	8900           	sbcd %d0,%d4
   4d374:	0187           	bclr %d0,%d7
   4d376:	c880           	andl %d0,%d4
   4d378:	00e7           	.short 0x00e7
   4d37a:	d080           	addl %d0,%d0
   4d37c:	007f           	.short 0x007f
   4d37e:	f080 001f      	pbbs 0x4d39f
   4d382:	fc80 018f      	cp0ldl %d0,%d0,#1,#399
   4d386:	e300           	aslb #1,%d0
   4d388:	027f           	.short 0x027f
   4d38a:	f000           	.short 0xf000
   4d38c:	021a bc00      	andib #0,%a2@+
   4d390:	0214 4e00      	andib #0,%a4@
   4d394:	0224 4300      	andib #0,%a4@-
   4d398:	0120           	btst %d0,%a0@-
   4d39a:	0500           	btst %d2,%d0
   4d39c:	0020 4500      	orib #0,%a0@-
   4d3a0:	0020 3900      	orib #0,%a0@-
   4d3a4:	0020 0100      	orib #0,%a0@-
   4d3a8:	0020 0100      	orib #0,%a0@-
   4d3ac:	0040 0080      	oriw #128,%d0
	...
   4d3bc:	0004 4000      	orib #0,%d4
   4d3c0:	0000 0000      	orib #0,%d0
   4d3c4:	0030 1800 0241 	orib #0,%a0@(41,%d0:w:2)
   4d3ca:	0480 0040 0400 	subil #4195328,%d0
   4d3d0:	0241 8480      	andiw #-31616,%d1
   4d3d4:	0242 8480      	andiw #-31616,%d2
   4d3d8:	0236 4880 0207 	andib #-128,%fp@(7,%d0:w:2)
   4d3de:	7080           	moveq #-128,%d0
   4d3e0:	018c 0300      	movepw %d0,%a4@(768)
   4d3e4:	006f fc00 018c 	oriw #-1024,%sp@(396)
   4d3ea:	1300           	moveb %d0,%a1@-
   4d3ec:	0210 2080      	andib #-128,%a0@
   4d3f0:	0220 1880      	andib #-128,%a0@-
   4d3f4:	0240 0480      	andiw #1152,%d0
   4d3f8:	0240 0480      	andiw #1152,%d0
   4d3fc:	0040 0400      	oriw #1024,%d0
   4d400:	0230 1880 0004 	andib #-128,%a0@(4,%d0:w)
   4d406:	4100           	chkl %d0,%d0
	...
   4d41c:	0004 4000      	orib #0,%d4
   4d420:	0008           	.short 0x0008
   4d422:	2000           	movel %d0,%d0
   4d424:	0000 0000      	orib #0,%d0
   4d428:	0201 0080      	andib #-128,%d1
   4d42c:	0201 0080      	andib #-128,%d1
   4d430:	0002 8000      	orib #0,%d2
   4d434:	0005 c000      	orib #0,%d5
   4d438:	0001 c000      	orib #0,%d1
   4d43c:	0008           	.short 0x0008
   4d43e:	f000           	.short 0xf000
   4d440:	0013 f000      	orib #0,%a3@
   4d444:	001f f000      	orib #0,%sp@+
   4d448:	0013 f000      	orib #0,%a3@
   4d44c:	0008           	.short 0x0008
   4d44e:	2000           	movel %d0,%d0
	...
   4d45c:	0200 0080      	andib #-128,%d0
   4d460:	0200 0080      	andib #-128,%d0
   4d464:	000c           	.short 0x000c
   4d466:	6100 0000      	bsrw 0x4d468
	...
   4d47a:	0000 0004      	orib #4,%d0
   4d47e:	4000           	negxb %d0
   4d480:	0008           	.short 0x0008
   4d482:	2000           	movel %d0,%d0
   4d484:	0030 1800 0241 	orib #0,%a0@(41,%d0:w:2)
   4d48a:	0480 0241 0480 	subil #37815424,%d0
   4d490:	0243 8480      	andiw #-31616,%d3
   4d494:	0247 c480      	andiw #-15232,%d7
   4d498:	0237 c880 020f 	andib #-128,%sp@(f,%d0:w:2)
   4d49e:	f080 019f      	pbbs 0x4d63f
   4d4a2:	f300           	.short 0xf300
   4d4a4:	0075 5c00 019f 	oriw #23552,@(0)@(fffffffff300021a,%d0:w)
   4d4aa:	f300 021a 
   4d4ae:	a080           	.short 0xa080
   4d4b0:	0224 5880      	andib #-128,%a4@-
   4d4b4:	0242 8480      	andiw #-31616,%d2
   4d4b8:	0240 0480      	andiw #1152,%d0
   4d4bc:	0240 0480      	andiw #1152,%d0
   4d4c0:	0230 1880 000c 	andib #-128,%a0@(c,%d0:w)
   4d4c6:	6100 0000      	bsrw 0x4d4c8
	...
   4d4da:	0000 0004      	orib #4,%d0
   4d4de:	4000           	negxb %d0
   4d4e0:	0008           	.short 0x0008
   4d4e2:	2000           	movel %d0,%d0
   4d4e4:	0030 1800 0241 	orib #0,%a0@(41,%d0:w:2)
   4d4ea:	0480 0241 0480 	subil #37815424,%d0
   4d4f0:	0243 8480      	andiw #-31616,%d3
   4d4f4:	0247 c480      	andiw #-15232,%d7
   4d4f8:	0237 c880 020f 	andib #-128,%sp@(f,%d0:w:2)
   4d4fe:	f080 019f      	pbbs 0x4d69f
   4d502:	f300           	.short 0xf300
   4d504:	007f           	.short 0x007f
   4d506:	fc00 019f      	cp0ldb %d0,%d0,#1,#415
   4d50a:	f300           	.short 0xf300
   4d50c:	021a a080      	andib #-128,%a2@+
   4d510:	0224 5880      	andib #-128,%a4@-
   4d514:	0242 8480      	andiw #-31616,%d2
   4d518:	0240 0480      	andiw #1152,%d0
   4d51c:	0240 0480      	andiw #1152,%d0
   4d520:	0230 1880 000c 	andib #-128,%a0@(c,%d0:w)
   4d526:	6100 0000      	bsrw 0x4d528
   4d52a:	0000 0000      	orib #0,%d0
   4d52e:	0000 0008      	orib #8,%d0
   4d532:	0000 0000      	orib #0,%d0
   4d536:	0000 0010      	orib #16,%d0
   4d53a:	0000 0020      	orib #32,%d0
   4d53e:	0080 0020 0000 	oril #2097152,%d0
   4d544:	0020 0100      	orib #0,%a0@-
   4d548:	0021 5900      	orib #0,%a1@-
   4d54c:	0020 0500      	orib #0,%a0@-
   4d550:	0121           	btst %d0,%a1@-
   4d552:	8500           	sbcd %d0,%d2
   4d554:	0012 8300      	orib #0,%a2@
   4d558:	0216 4e00      	andib #0,%fp@
   4d55c:	0207 6c00      	andib #0,%d7
   4d560:	0274 1000 018f 	andiw #4096,@(0)@(ffffffffe3000010,%d0:w)
   4d566:	e300 0010 
   4d56a:	1c80           	moveb %d0,%fp@
   4d56c:	0060 2080      	oriw #8320,%a0@-
   4d570:	00c0           	bitrev %d0
   4d572:	1080           	moveb %d0,%a0@
   4d574:	0180           	bclr %d0,%d0
   4d576:	1000           	moveb %d0,%d0
   4d578:	0140           	bchg %d0,%d0
   4d57a:	0900           	btst %d4,%d0
   4d57c:	0144           	bchg %d0,%d4
   4d57e:	0800 0130      	btst #48,%d0
   4d582:	0800 0100      	btst #0,%d0
   4d586:	0800 0000      	btst #0,%d0
   4d58a:	0000 0200      	orib #0,%d0
   4d58e:	0400 0008      	subib #8,%d0
   4d592:	0000 0008      	orib #8,%d0
	...
   4d59e:	0080 0000 0100 	oril #256,%d0
   4d5a4:	0000 0000      	orib #0,%d0
   4d5a8:	0001 6000      	orib #0,%d1
   4d5ac:	0001 0000      	orib #0,%d1
   4d5b0:	0102           	btst %d0,%d2
   4d5b2:	8000           	orb %d0,%d0
   4d5b4:	0205 c000      	andib #0,%d5
   4d5b8:	0001 c000      	orib #0,%d1
   4d5bc:	0008           	.short 0x0008
   4d5be:	d000           	addb %d0,%d0
   4d5c0:	000b           	.short 0x000b
   4d5c2:	e000           	asrb #8,%d0
   4d5c4:	000f           	.short 0x000f
   4d5c6:	e000           	asrb #8,%d0
   4d5c8:	000f           	.short 0x000f
   4d5ca:	e000           	asrb #8,%d0
   4d5cc:	0010 0000      	orib #0,%a0@
   4d5d0:	0020 0000      	orib #0,%a0@-
   4d5d4:	0000 0080      	orib #-128,%d0
   4d5d8:	0000 0100      	orib #0,%d0
   4d5dc:	0004 0000      	orib #0,%d4
   4d5e0:	0008           	.short 0x0008
   4d5e2:	0000 0000      	orib #0,%d0
   4d5e6:	0000 0100      	orib #0,%d0
   4d5ea:	0800 0200      	btst #0,%d0
   4d5ee:	0400 0008      	subib #8,%d0
   4d5f2:	0000 0008      	orib #8,%d0
   4d5f6:	0000 0010      	orib #16,%d0
   4d5fa:	0000 0020      	orib #32,%d0
   4d5fe:	0080 0020 0100 	oril #2097408,%d0
   4d604:	0020 0100      	orib #0,%a0@-
   4d608:	0021 7900      	orib #0,%a1@-
   4d60c:	0021 0500      	orib #0,%a1@-
   4d610:	0123           	btst %d0,%a3@-
   4d612:	8500           	sbcd %d0,%d2
   4d614:	0217 c300      	andib #0,%sp@
   4d618:	0217 ce00      	andib #0,%sp@
   4d61c:	020f           	.short 0x020f
   4d61e:	fc00 027f      	cp0ldb %d0,%d0,#2,#127
   4d622:	f000           	.short 0xf000
   4d624:	0185           	bclr %d0,%d5
   4d626:	4300           	chkl %d0,%d1
   4d628:	001f fc80      	orib #-128,%sp@+
   4d62c:	0072 a080 00e2 	oriw #-24448,%a2@(ffffffffffffffe2,%d0:w)
   4d632:	9080           	subl %d0,%d0
   4d634:	0181           	bclr %d0,%d1
   4d636:	1080           	moveb %d0,%a0@
   4d638:	0140           	bchg %d0,%d0
   4d63a:	0900           	btst %d4,%d0
   4d63c:	0144           	bchg %d0,%d4
   4d63e:	0800 0138      	btst #56,%d0
   4d642:	0800 0100      	btst #0,%d0
   4d646:	0800 0100      	btst #0,%d0
   4d64a:	0800 0200      	btst #0,%d0
   4d64e:	0400 0008      	subib #8,%d0
   4d652:	0000 0008      	orib #8,%d0
   4d656:	0000 0010      	orib #16,%d0
   4d65a:	0000 0020      	orib #32,%d0
   4d65e:	0080 0020 0100 	oril #2097408,%d0
   4d664:	0020 0100      	orib #0,%a0@-
   4d668:	0021 7900      	orib #0,%a1@-
   4d66c:	0021 0500      	orib #0,%a1@-
   4d670:	0123           	btst %d0,%a3@-
   4d672:	8500           	sbcd %d0,%d2
   4d674:	0217 c300      	andib #0,%sp@
   4d678:	0217 ce00      	andib #0,%sp@
   4d67c:	020f           	.short 0x020f
   4d67e:	fc00 027f      	cp0ldb %d0,%d0,#2,#127
   4d682:	f000           	.short 0xf000
   4d684:	018f e300      	movepw %d0,%sp@(-7424)
   4d688:	001f fc80      	orib #-128,%sp@+
   4d68c:	0072 a080 00e2 	oriw #-24448,%a2@(ffffffffffffffe2,%d0:w)
   4d692:	9080           	subl %d0,%d0
   4d694:	0181           	bclr %d0,%d1
   4d696:	1080           	moveb %d0,%a0@
   4d698:	0140           	bchg %d0,%d0
   4d69a:	0900           	btst %d4,%d0
   4d69c:	0144           	bchg %d0,%d4
   4d69e:	0800 0138      	btst #56,%d0
   4d6a2:	0800 0100      	btst #0,%d0
   4d6a6:	0800 0100      	btst #0,%d0
   4d6aa:	0800 0200      	btst #0,%d0
   4d6ae:	0400 0000      	subib #0,%d0
	...
   4d6c2:	0000 007c      	orib #124,%d0
   4d6c6:	0000 0183      	orib #-125,%d0
   4d6ca:	0000 027c      	orib #124,%d0
   4d6ce:	8000           	orb %d0,%d0
   4d6d0:	02c6           	byterev %d6
   4d6d2:	8000           	orb %d0,%d0
   4d6d4:	05bb           	.short 0x05bb
   4d6d6:	4000           	negxb %d0
   4d6d8:	057c           	.short 0x057c
   4d6da:	a000           	.short 0xa000
   4d6dc:	057e           	.short 0x057e
   4d6de:	7400           	moveq #0,%d2
   4d6e0:	057c           	.short 0x057c
   4d6e2:	a000           	.short 0xa000
   4d6e4:	05bb           	.short 0x05bb
   4d6e6:	4000           	negxb %d0
   4d6e8:	02c6           	byterev %d6
   4d6ea:	8000           	orb %d0,%d0
   4d6ec:	027c 8000      	andiw #-32768,%sr
   4d6f0:	0183           	bclr %d0,%d3
   4d6f2:	0000 007c      	orib #124,%d0
	...
   4d722:	0000 007c      	orib #124,%d0
   4d726:	0000 01ff      	orib #-1,%d0
   4d72a:	0000 0383      	orib #-125,%d0
   4d72e:	8000           	orb %d0,%d0
   4d730:	0301           	btst %d1,%d1
   4d732:	8000           	orb %d0,%d0
   4d734:	0638 c000 067c 	addib #0,0x67c
   4d73a:	6000 067e      	braw 0x4ddba
   4d73e:	0c00 067c      	cmpib #124,%d0
   4d742:	6000 0638      	braw 0x4dd7c
   4d746:	c000           	andb %d0,%d0
   4d748:	0301           	btst %d1,%d1
   4d74a:	8000           	orb %d0,%d0
   4d74c:	0383           	bclr %d1,%d3
   4d74e:	8000           	orb %d0,%d0
   4d750:	01ff           	.short 0x01ff
   4d752:	0000 007c      	orib #124,%d0
	...
   4d782:	0000 007c      	orib #124,%d0
   4d786:	0000 01ff      	orib #-1,%d0
   4d78a:	0000 03ff      	orib #-1,%d0
   4d78e:	8000           	orb %d0,%d0
   4d790:	03ff           	.short 0x03ff
   4d792:	8000           	orb %d0,%d0
   4d794:	07c7           	bset %d3,%d7
   4d796:	c000           	andb %d0,%d0
   4d798:	0783           	bclr %d3,%d3
   4d79a:	e000           	asrb #8,%d0
   4d79c:	0781           	bclr %d3,%d1
   4d79e:	fc00 0783      	cp0ldb %d0,%d0,#4,#387
   4d7a2:	e000           	asrb #8,%d0
   4d7a4:	07c7           	bset %d3,%d7
   4d7a6:	c000           	andb %d0,%d0
   4d7a8:	03ff           	.short 0x03ff
   4d7aa:	8000           	orb %d0,%d0
   4d7ac:	03ff           	.short 0x03ff
   4d7ae:	8000           	orb %d0,%d0
   4d7b0:	01ff           	.short 0x01ff
   4d7b2:	0000 007c      	orib #124,%d0
	...
   4d7e2:	0000 007c      	orib #124,%d0
   4d7e6:	0000 01ff      	orib #-1,%d0
   4d7ea:	0000 03ff      	orib #-1,%d0
   4d7ee:	8000           	orb %d0,%d0
   4d7f0:	03ff           	.short 0x03ff
   4d7f2:	8000           	orb %d0,%d0
   4d7f4:	07ff           	.short 0x07ff
   4d7f6:	c000           	andb %d0,%d0
   4d7f8:	07ff           	.short 0x07ff
   4d7fa:	e000           	asrb #8,%d0
   4d7fc:	07ff           	.short 0x07ff
   4d7fe:	fc00 07ff      	cp0ldb %d0,%d0,#4,#511
   4d802:	e000           	asrb #8,%d0
   4d804:	07ff           	.short 0x07ff
   4d806:	c000           	andb %d0,%d0
   4d808:	03ff           	.short 0x03ff
   4d80a:	8000           	orb %d0,%d0
   4d80c:	03ff           	.short 0x03ff
   4d80e:	8000           	orb %d0,%d0
   4d810:	01ff           	.short 0x01ff
   4d812:	0000 007c      	orib #124,%d0
	...
   4d83e:	0000 0001      	orib #1,%d0
   4d842:	0000 0001      	orib #1,%d0
   4d846:	0000 0000      	orib #0,%d0
   4d84a:	0000 0078      	orib #120,%d0
   4d84e:	0000 018d      	orib #-115,%d0
   4d852:	0000 0262      	orib #98,%d0
   4d856:	8000           	orb %d0,%d0
   4d858:	02ca           	.short 0x02ca
   4d85a:	8000           	orb %d0,%d0
   4d85c:	05b9 4000 057d 	bclr %d2,0x4000057d
   4d862:	4000           	negxb %d0
   4d864:	057d           	.short 0x057d
   4d866:	4000           	negxb %d0
   4d868:	057d           	.short 0x057d
   4d86a:	4000           	negxb %d0
   4d86c:	05bb           	.short 0x05bb
   4d86e:	4000           	negxb %d0
   4d870:	02c6           	byterev %d6
   4d872:	8000           	orb %d0,%d0
   4d874:	027c 8000      	andiw #-32768,%sr
   4d878:	0183           	bclr %d0,%d3
   4d87a:	0000 007c      	orib #124,%d0
	...
   4d89e:	0000 0001      	orib #1,%d0
   4d8a2:	0000 0001      	orib #1,%d0
   4d8a6:	0000 0002      	orib #2,%d0
   4d8aa:	0000 007e      	orib #126,%d0
   4d8ae:	0000 01f3      	orib #-13,%d0
   4d8b2:	0000 0381      	orib #-127,%d0
   4d8b6:	8000           	orb %d0,%d0
   4d8b8:	0309 8000      	movepw %a1@(-32768),%d1
   4d8bc:	0638 c000 067c 	addib #0,0x67c
   4d8c2:	c000           	andb %d0,%d0
   4d8c4:	067c           	.short 0x067c
   4d8c6:	c000           	andb %d0,%d0
   4d8c8:	067c           	.short 0x067c
   4d8ca:	c000           	andb %d0,%d0
   4d8cc:	0638 c000 0301 	addib #0,0x301
   4d8d2:	8000           	orb %d0,%d0
   4d8d4:	0383           	bclr %d1,%d3
   4d8d6:	8000           	orb %d0,%d0
   4d8d8:	01ff           	.short 0x01ff
   4d8da:	0000 007c      	orib #124,%d0
	...
   4d8fe:	0000 0001      	orib #1,%d0
   4d902:	0000 0001      	orib #1,%d0
   4d906:	0000 0002      	orib #2,%d0
   4d90a:	0000 007e      	orib #126,%d0
   4d90e:	0000 01ff      	orib #-1,%d0
   4d912:	0000 03ff      	orib #-1,%d0
   4d916:	8000           	orb %d0,%d0
   4d918:	03f7 8000      	bset %d1,%sp@(0,%a0:w)
   4d91c:	07c7           	bset %d3,%d7
   4d91e:	c000           	andb %d0,%d0
   4d920:	0783           	bclr %d3,%d3
   4d922:	c000           	andb %d0,%d0
   4d924:	0783           	bclr %d3,%d3
   4d926:	c000           	andb %d0,%d0
   4d928:	0783           	bclr %d3,%d3
   4d92a:	c000           	andb %d0,%d0
   4d92c:	07c7           	bset %d3,%d7
   4d92e:	c000           	andb %d0,%d0
   4d930:	03ff           	.short 0x03ff
   4d932:	8000           	orb %d0,%d0
   4d934:	03ff           	.short 0x03ff
   4d936:	8000           	orb %d0,%d0
   4d938:	01ff           	.short 0x01ff
   4d93a:	0000 007c      	orib #124,%d0
	...
   4d95e:	0000 0001      	orib #1,%d0
   4d962:	0000 0001      	orib #1,%d0
   4d966:	0000 0002      	orib #2,%d0
   4d96a:	0000 007e      	orib #126,%d0
   4d96e:	0000 01ff      	orib #-1,%d0
   4d972:	0000 03ff      	orib #-1,%d0
   4d976:	8000           	orb %d0,%d0
   4d978:	03ff           	.short 0x03ff
   4d97a:	8000           	orb %d0,%d0
   4d97c:	07ff           	.short 0x07ff
   4d97e:	c000           	andb %d0,%d0
   4d980:	07ff           	.short 0x07ff
   4d982:	c000           	andb %d0,%d0
   4d984:	07ff           	.short 0x07ff
   4d986:	c000           	andb %d0,%d0
   4d988:	07ff           	.short 0x07ff
   4d98a:	c000           	andb %d0,%d0
   4d98c:	07ff           	.short 0x07ff
   4d98e:	c000           	andb %d0,%d0
   4d990:	03ff           	.short 0x03ff
   4d992:	8000           	orb %d0,%d0
   4d994:	03ff           	.short 0x03ff
   4d996:	8000           	orb %d0,%d0
   4d998:	01ff           	.short 0x01ff
   4d99a:	0000 007c      	orib #124,%d0
	...
   4d9ba:	0000 0010      	orib #16,%d0
   4d9be:	0000 0000      	orib #0,%d0
   4d9c2:	0000 0010      	orib #16,%d0
   4d9c6:	0000 0038      	orib #56,%d0
   4d9ca:	0000 0054      	orib #84,%d0
   4d9ce:	0000 01ab      	orib #-85,%d0
   4d9d2:	0000 0244      	orib #68,%d0
   4d9d6:	8000           	orb %d0,%d0
   4d9d8:	02d6 8000      	cmp2w %fp@,%a0
   4d9dc:	05bb           	.short 0x05bb
   4d9de:	4000           	negxb %d0
   4d9e0:	057d           	.short 0x057d
   4d9e2:	4000           	negxb %d0
   4d9e4:	057d           	.short 0x057d
   4d9e6:	4000           	negxb %d0
   4d9e8:	057d           	.short 0x057d
   4d9ea:	4000           	negxb %d0
   4d9ec:	05bb           	.short 0x05bb
   4d9ee:	4000           	negxb %d0
   4d9f0:	02c6           	byterev %d6
   4d9f2:	8000           	orb %d0,%d0
   4d9f4:	027c 8000      	andiw #-32768,%sr
   4d9f8:	0183           	bclr %d0,%d3
   4d9fa:	0000 007c      	orib #124,%d0
	...
   4da1a:	0000 0010      	orib #16,%d0
   4da1e:	0000 0010      	orib #16,%d0
   4da22:	0000 0000      	orib #0,%d0
   4da26:	0000 0028      	orib #40,%d0
   4da2a:	0000 006c      	orib #108,%d0
   4da2e:	0000 01c7      	orib #-57,%d0
   4da32:	0000 0383      	orib #-125,%d0
   4da36:	8000           	orb %d0,%d0
   4da38:	0311           	btst %d1,%a1@
   4da3a:	8000           	orb %d0,%d0
   4da3c:	0638 c000 067c 	addib #0,0x67c
   4da42:	c000           	andb %d0,%d0
   4da44:	067c           	.short 0x067c
   4da46:	c000           	andb %d0,%d0
   4da48:	067c           	.short 0x067c
   4da4a:	c000           	andb %d0,%d0
   4da4c:	0638 c000 0301 	addib #0,0x301
   4da52:	8000           	orb %d0,%d0
   4da54:	0383           	bclr %d1,%d3
   4da56:	8000           	orb %d0,%d0
   4da58:	01ff           	.short 0x01ff
   4da5a:	0000 007c      	orib #124,%d0
	...
   4da7a:	0000 0010      	orib #16,%d0
   4da7e:	0000 0010      	orib #16,%d0
   4da82:	0000 0010      	orib #16,%d0
   4da86:	0000 0038      	orib #56,%d0
   4da8a:	0000 007c      	orib #124,%d0
   4da8e:	0000 01ff      	orib #-1,%d0
   4da92:	0000 03ff      	orib #-1,%d0
   4da96:	8000           	orb %d0,%d0
   4da98:	03ef 8000      	bset %d1,%sp@(-32768)
   4da9c:	07c7           	bset %d3,%d7
   4da9e:	c000           	andb %d0,%d0
   4daa0:	0783           	bclr %d3,%d3
   4daa2:	c000           	andb %d0,%d0
   4daa4:	0783           	bclr %d3,%d3
   4daa6:	c000           	andb %d0,%d0
   4daa8:	0783           	bclr %d3,%d3
   4daaa:	c000           	andb %d0,%d0
   4daac:	07c7           	bset %d3,%d7
   4daae:	c000           	andb %d0,%d0
   4dab0:	03ff           	.short 0x03ff
   4dab2:	8000           	orb %d0,%d0
   4dab4:	03ff           	.short 0x03ff
   4dab6:	8000           	orb %d0,%d0
   4dab8:	01ff           	.short 0x01ff
   4daba:	0000 007c      	orib #124,%d0
	...
   4dada:	0000 0010      	orib #16,%d0
   4dade:	0000 0010      	orib #16,%d0
   4dae2:	0000 0010      	orib #16,%d0
   4dae6:	0000 0038      	orib #56,%d0
   4daea:	0000 007c      	orib #124,%d0
   4daee:	0000 01ff      	orib #-1,%d0
   4daf2:	0000 03ff      	orib #-1,%d0
   4daf6:	8000           	orb %d0,%d0
   4daf8:	03ff           	.short 0x03ff
   4dafa:	8000           	orb %d0,%d0
   4dafc:	07ff           	.short 0x07ff
   4dafe:	c000           	andb %d0,%d0
   4db00:	07ff           	.short 0x07ff
   4db02:	c000           	andb %d0,%d0
   4db04:	07ff           	.short 0x07ff
   4db06:	c000           	andb %d0,%d0
   4db08:	07ff           	.short 0x07ff
   4db0a:	c000           	andb %d0,%d0
   4db0c:	07ff           	.short 0x07ff
   4db0e:	c000           	andb %d0,%d0
   4db10:	03ff           	.short 0x03ff
   4db12:	8000           	orb %d0,%d0
   4db14:	03ff           	.short 0x03ff
   4db16:	8000           	orb %d0,%d0
   4db18:	01ff           	.short 0x01ff
   4db1a:	0000 007c      	orib #124,%d0
	...
   4db46:	0000 000f      	orib #15,%d0
   4db4a:	8000           	orb %d0,%d0
   4db4c:	0030 6000 064f 	orib #0,%a0@(4f,%d0:w:8)
   4db52:	9000           	subb %d0,%d0
   4db54:	0030 d000 0047 	orib #0,%a0@(47,%d0:w)
   4db5a:	6800 00df      	bvcw 0x4dc3b
   4db5e:	a800 008f      	macw %d0l,%d4u
   4db62:	a800 00af      	macw %d0l,%d4u
   4db66:	a800 00b7      	macw %d0l,%d4u
   4db6a:	6800 0058      	bvcw 0x4dbc4
   4db6e:	d000           	addb %d0,%d0
   4db70:	004f           	.short 0x004f
   4db72:	9000           	subb %d0,%d0
   4db74:	0030 6000 000f 	orib #0,%a0@(f,%d0:w)
   4db7a:	8000           	orb %d0,%d0
	...
   4dba8:	000f           	.short 0x000f
   4dbaa:	8000           	orb %d0,%d0
   4dbac:	003f           	.short 0x003f
   4dbae:	e000           	asrb #8,%d0
   4dbb0:	0670 7000 01c0 	addiw #28672,@(0)
   4dbb6:	3000           	movew %d0,%d0
   4dbb8:	0087 1800 009f 	oril #402653343,%d7
   4dbbe:	9800           	subb %d0,%d4
   4dbc0:	00cf           	.short 0x00cf
   4dbc2:	9800           	subb %d0,%d4
   4dbc4:	00cf           	.short 0x00cf
   4dbc6:	9800           	subb %d0,%d4
   4dbc8:	00c7           	bitrev %d7
   4dbca:	1800           	moveb %d0,%d4
   4dbcc:	0060 3000      	oriw #12288,%a0@-
   4dbd0:	0070 7000 003f 	oriw #28672,%a0@(3f,%d0:w)
   4dbd6:	e000           	asrb #8,%d0
   4dbd8:	000f           	.short 0x000f
   4dbda:	8000           	orb %d0,%d0
	...
   4dc08:	000f           	.short 0x000f
   4dc0a:	8000           	orb %d0,%d0
   4dc0c:	003f           	.short 0x003f
   4dc0e:	e000           	asrb #8,%d0
   4dc10:	067f           	.short 0x067f
   4dc12:	f000           	.short 0xf000
   4dc14:	01ff           	.short 0x01ff
   4dc16:	f000           	.short 0xf000
   4dc18:	00f8 f800 00e0 	chk2b 0xe0,%sp
   4dc1e:	7800           	moveq #0,%d4
   4dc20:	00f0 7800 00f0 	chk2b %a0@(fffffffffffffff0,%d0:w),%d7
   4dc26:	7800           	moveq #0,%d4
   4dc28:	00f8 f800 007f 	chk2b 0x7f,%sp
   4dc2e:	f000           	.short 0xf000
   4dc30:	007f           	.short 0x007f
   4dc32:	f000           	.short 0xf000
   4dc34:	003f           	.short 0x003f
   4dc36:	e000           	asrb #8,%d0
   4dc38:	000f           	.short 0x000f
   4dc3a:	8000           	orb %d0,%d0
	...
   4dc68:	000f           	.short 0x000f
   4dc6a:	8000           	orb %d0,%d0
   4dc6c:	003f           	.short 0x003f
   4dc6e:	e000           	asrb #8,%d0
   4dc70:	067f           	.short 0x067f
   4dc72:	f000           	.short 0xf000
   4dc74:	01ff           	.short 0x01ff
   4dc76:	f000           	.short 0xf000
   4dc78:	00ff           	.short 0x00ff
   4dc7a:	f800           	.short 0xf800
   4dc7c:	00ff           	.short 0x00ff
   4dc7e:	f800           	.short 0xf800
   4dc80:	00ff           	.short 0x00ff
   4dc82:	f800           	.short 0xf800
   4dc84:	00ff           	.short 0x00ff
   4dc86:	f800           	.short 0xf800
   4dc88:	00ff           	.short 0x00ff
   4dc8a:	f800           	.short 0xf800
   4dc8c:	007f           	.short 0x007f
   4dc8e:	f000           	.short 0xf000
   4dc90:	007f           	.short 0x007f
   4dc92:	f000           	.short 0xf000
   4dc94:	003f           	.short 0x003f
   4dc96:	e000           	asrb #8,%d0
   4dc98:	000f           	.short 0x000f
   4dc9a:	8000           	orb %d0,%d0
	...
   4dcc8:	0007 c000      	orib #0,%d7
   4dccc:	0018 3000      	orib #0,%a0@+
   4dcd0:	0027 c800      	orib #0,%sp@-
   4dcd4:	002c 6800 005b 	orib #0,%a4@(91)
   4dcda:	b400           	cmpb %d0,%d2
   4dcdc:	00a7 d400 05cf 	oril #-738196017,%sp@-
   4dce2:	d400           	addb %d0,%d2
   4dce4:	00a7 d400 005b 	oril #-738197413,%sp@-
   4dcea:	b400           	cmpb %d0,%d2
   4dcec:	002c 6800 0027 	orib #0,%a4@(39)
   4dcf2:	c800           	andb %d0,%d4
   4dcf4:	0018 3000      	orib #0,%a0@+
   4dcf8:	0007 c000      	orib #0,%d7
	...
   4dd28:	0007 c000      	orib #0,%d7
   4dd2c:	001f f000      	orib #0,%sp@+
   4dd30:	0038 3800 0030 	orib #0,0x30
   4dd36:	1800           	moveb %d0,%d4
   4dd38:	0063 8c00      	oriw #-29696,%a3@-
   4dd3c:	00c7           	bitrev %d7
   4dd3e:	cc00           	andb %d0,%d6
   4dd40:	060f           	.short 0x060f
   4dd42:	cc00           	andb %d0,%d6
   4dd44:	00c7           	bitrev %d7
   4dd46:	cc00           	andb %d0,%d6
   4dd48:	0063 8c00      	oriw #-29696,%a3@-
   4dd4c:	0030 1800 0038 	orib #0,%a0@(38,%d0:w)
   4dd52:	3800           	movew %d0,%d4
   4dd54:	001f f000      	orib #0,%sp@+
   4dd58:	0007 c000      	orib #0,%d7
	...
   4dd88:	0007 c000      	orib #0,%d7
   4dd8c:	001f f000      	orib #0,%sp@+
   4dd90:	003f           	.short 0x003f
   4dd92:	f800           	.short 0xf800
   4dd94:	003f           	.short 0x003f
   4dd96:	f800           	.short 0xf800
   4dd98:	007c 7c00      	oriw #31744,%sr
   4dd9c:	00f8           	.short 0x00f8
   4dd9e:	3c00           	movew %d0,%d6
   4dda0:	07f0 3c00      	bset %d3,%a0@(0,%d3:l:4)
   4dda4:	00f8           	.short 0x00f8
   4dda6:	3c00           	movew %d0,%d6
   4dda8:	007c 7c00      	oriw #31744,%sr
   4ddac:	003f           	.short 0x003f
   4ddae:	f800           	.short 0xf800
   4ddb0:	003f           	.short 0x003f
   4ddb2:	f800           	.short 0xf800
   4ddb4:	001f f000      	orib #0,%sp@+
   4ddb8:	0007 c000      	orib #0,%d7
	...
   4dde8:	0007 c000      	orib #0,%d7
   4ddec:	001f f000      	orib #0,%sp@+
   4ddf0:	003f           	.short 0x003f
   4ddf2:	f800           	.short 0xf800
   4ddf4:	003f           	.short 0x003f
   4ddf6:	f800           	.short 0xf800
   4ddf8:	007f           	.short 0x007f
   4ddfa:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   4ddfe:	fc00 07ff      	cp0ldb %d0,%d0,#4,#511
   4de02:	fc00 00ff      	cp0ldb %d0,%d0,#1,#255
   4de06:	fc00 007f      	cp0ldb %d0,%d0,#1,#127
   4de0a:	fc00 003f      	cp0ldb %d0,%d0,#1,#63
   4de0e:	f800           	.short 0xf800
   4de10:	003f           	.short 0x003f
   4de12:	f800           	.short 0xf800
   4de14:	001f f000      	orib #0,%sp@+
   4de18:	0007 c000      	orib #0,%d7
	...
   4de40:	001f 0000      	orib #0,%sp@+
   4de44:	0060 c000      	oriw #-16384,%a0@-
   4de48:	009f 2000 00b1 	oril #536871089,%sp@+
   4de4e:	a000 016e      	msacw %d0u,%d0l
   4de52:	d000           	addb %d0,%d0
   4de54:	015f           	bchg %d0,%sp@+
   4de56:	5000           	addqb #8,%d0
   4de58:	015f           	bchg %d0,%sp@+
   4de5a:	5000           	addqb #8,%d0
   4de5c:	015f           	bchg %d0,%sp@+
   4de5e:	5000           	addqb #8,%d0
   4de60:	014e d000      	movepl %fp@(-12288),%d0
   4de64:	00a9 a000 00a3 	oril #-1610612573,%a1@(8192)
   4de6a:	2000 
   4de6c:	0058 c000      	oriw #-16384,%a0@+
   4de70:	000f           	.short 0x000f
   4de72:	0000 0000      	orib #0,%d0
   4de76:	0000 0040      	orib #64,%d0
   4de7a:	0000 0040      	orib #64,%d0
	...
   4de9e:	0000 001f      	orib #31,%d0
   4dea2:	0000 007f      	orib #127,%d0
   4dea6:	c000           	andb %d0,%d0
   4dea8:	00e0           	.short 0x00e0
   4deaa:	e000           	asrb #8,%d0
   4deac:	00c0           	bitrev %d0
   4deae:	6000 018e      	braw 0x4e03e
   4deb2:	3000           	movew %d0,%d0
   4deb4:	019f           	bclr %d0,%sp@+
   4deb6:	3000           	movew %d0,%d0
   4deb8:	019f           	bclr %d0,%sp@+
   4deba:	3000           	movew %d0,%d0
   4debc:	019f           	bclr %d0,%sp@+
   4debe:	3000           	movew %d0,%d0
   4dec0:	018e 3000      	movepw %d0,%fp@(12288)
   4dec4:	00c8           	.short 0x00c8
   4dec6:	6000 00c0      	braw 0x4df88
   4deca:	e000           	asrb #8,%d0
   4decc:	0067 c000      	oriw #-16384,%sp@-
   4ded0:	003f           	.short 0x003f
   4ded2:	0000 0020      	orib #32,%d0
   4ded6:	0000 0040      	orib #64,%d0
   4deda:	0000 0040      	orib #64,%d0
	...
   4defe:	0000 001f      	orib #31,%d0
   4df02:	0000 007f      	orib #127,%d0
   4df06:	c000           	andb %d0,%d0
   4df08:	00ff           	.short 0x00ff
   4df0a:	e000           	asrb #8,%d0
   4df0c:	00ff           	.short 0x00ff
   4df0e:	e000           	asrb #8,%d0
   4df10:	01f1 f000      	bset %d0,%a1@(0,%sp:w)
   4df14:	01e0           	bset %d0,%a0@-
   4df16:	f000           	.short 0xf000
   4df18:	01e0           	bset %d0,%a0@-
   4df1a:	f000           	.short 0xf000
   4df1c:	01e0           	bset %d0,%a0@-
   4df1e:	f000           	.short 0xf000
   4df20:	01f1 f000      	bset %d0,%a1@(0,%sp:w)
   4df24:	00f7 e000 00ff 	cmp2b %sp@(ffffffffffffffff,%d0:w),%fp
   4df2a:	e000           	asrb #8,%d0
   4df2c:	007f           	.short 0x007f
   4df2e:	c000           	andb %d0,%d0
   4df30:	003f           	.short 0x003f
   4df32:	0000 0020      	orib #32,%d0
   4df36:	0000 0040      	orib #64,%d0
   4df3a:	0000 0040      	orib #64,%d0
	...
   4df5e:	0000 001f      	orib #31,%d0
   4df62:	0000 007f      	orib #127,%d0
   4df66:	c000           	andb %d0,%d0
   4df68:	00ff           	.short 0x00ff
   4df6a:	e000           	asrb #8,%d0
   4df6c:	00ff           	.short 0x00ff
   4df6e:	e000           	asrb #8,%d0
   4df70:	01ff           	.short 0x01ff
   4df72:	f000           	.short 0xf000
   4df74:	01ff           	.short 0x01ff
   4df76:	f000           	.short 0xf000
   4df78:	01ff           	.short 0x01ff
   4df7a:	f000           	.short 0xf000
   4df7c:	01ff           	.short 0x01ff
   4df7e:	f000           	.short 0xf000
   4df80:	01ff           	.short 0x01ff
   4df82:	f000           	.short 0xf000
   4df84:	00ff           	.short 0x00ff
   4df86:	e000           	asrb #8,%d0
   4df88:	00ff           	.short 0x00ff
   4df8a:	e000           	asrb #8,%d0
   4df8c:	007f           	.short 0x007f
   4df8e:	c000           	andb %d0,%d0
   4df90:	003f           	.short 0x003f
   4df92:	0000 0020      	orib #32,%d0
   4df96:	0000 0040      	orib #64,%d0
   4df9a:	0000 0040      	orib #64,%d0
	...
   4dfbe:	0000 007c      	orib #124,%d0
   4dfc2:	0000 0183      	orib #-125,%d0
   4dfc6:	0000 027c      	orib #124,%d0
   4dfca:	8000           	orb %d0,%d0
   4dfcc:	02c6           	byterev %d6
   4dfce:	8000           	orb %d0,%d0
   4dfd0:	05bb           	.short 0x05bb
   4dfd2:	4000           	negxb %d0
   4dfd4:	057d           	.short 0x057d
   4dfd6:	4000           	negxb %d0
   4dfd8:	057d           	.short 0x057d
   4dfda:	4000           	negxb %d0
   4dfdc:	057d           	.short 0x057d
   4dfde:	4000           	negxb %d0
   4dfe0:	05bb           	.short 0x05bb
   4dfe2:	4000           	negxb %d0
   4dfe4:	02d6 8000      	cmp2w %fp@,%a0
   4dfe8:	0244 8000      	andiw #-32768,%d4
   4dfec:	01ab 0000      	bclr %d0,%a3@(0)
   4dff0:	0054 0000      	oriw #0,%a4@
   4dff4:	0038 0000 0010 	orib #0,0x10
   4dffa:	0000 0000      	orib #0,%d0
   4dffe:	0000 0010      	orib #16,%d0
	...
   4e01e:	0000 007c      	orib #124,%d0
   4e022:	0000 01ff      	orib #-1,%d0
   4e026:	0000 0383      	orib #-125,%d0
   4e02a:	8000           	orb %d0,%d0
   4e02c:	0301           	btst %d1,%d1
   4e02e:	8000           	orb %d0,%d0
   4e030:	0638 c000 067c 	addib #0,0x67c
   4e036:	c000           	andb %d0,%d0
   4e038:	067c           	.short 0x067c
   4e03a:	c000           	andb %d0,%d0
   4e03c:	067c           	.short 0x067c
   4e03e:	c000           	andb %d0,%d0
   4e040:	0638 c000 0311 	addib #0,0x311
   4e046:	8000           	orb %d0,%d0
   4e048:	0383           	bclr %d1,%d3
   4e04a:	8000           	orb %d0,%d0
   4e04c:	01c7           	bset %d0,%d7
   4e04e:	0000 006c      	orib #108,%d0
   4e052:	0000 0028      	orib #40,%d0
   4e056:	0000 0000      	orib #0,%d0
   4e05a:	0000 0010      	orib #16,%d0
   4e05e:	0000 0010      	orib #16,%d0
	...
   4e07e:	0000 007c      	orib #124,%d0
   4e082:	0000 01ff      	orib #-1,%d0
   4e086:	0000 03ff      	orib #-1,%d0
   4e08a:	8000           	orb %d0,%d0
   4e08c:	03ff           	.short 0x03ff
   4e08e:	8000           	orb %d0,%d0
   4e090:	07c7           	bset %d3,%d7
   4e092:	c000           	andb %d0,%d0
   4e094:	0783           	bclr %d3,%d3
   4e096:	c000           	andb %d0,%d0
   4e098:	0783           	bclr %d3,%d3
   4e09a:	c000           	andb %d0,%d0
   4e09c:	0783           	bclr %d3,%d3
   4e09e:	c000           	andb %d0,%d0
   4e0a0:	07c7           	bset %d3,%d7
   4e0a2:	c000           	andb %d0,%d0
   4e0a4:	03ef 8000      	bset %d1,%sp@(-32768)
   4e0a8:	03ff           	.short 0x03ff
   4e0aa:	8000           	orb %d0,%d0
   4e0ac:	01ff           	.short 0x01ff
   4e0ae:	0000 007c      	orib #124,%d0
   4e0b2:	0000 0038      	orib #56,%d0
   4e0b6:	0000 0010      	orib #16,%d0
   4e0ba:	0000 0010      	orib #16,%d0
   4e0be:	0000 0010      	orib #16,%d0
	...
   4e0de:	0000 007c      	orib #124,%d0
   4e0e2:	0000 01ff      	orib #-1,%d0
   4e0e6:	0000 03ff      	orib #-1,%d0
   4e0ea:	8000           	orb %d0,%d0
   4e0ec:	03ff           	.short 0x03ff
   4e0ee:	8000           	orb %d0,%d0
   4e0f0:	07ff           	.short 0x07ff
   4e0f2:	c000           	andb %d0,%d0
   4e0f4:	07ff           	.short 0x07ff
   4e0f6:	c000           	andb %d0,%d0
   4e0f8:	07ff           	.short 0x07ff
   4e0fa:	c000           	andb %d0,%d0
   4e0fc:	07ff           	.short 0x07ff
   4e0fe:	c000           	andb %d0,%d0
   4e100:	07ff           	.short 0x07ff
   4e102:	c000           	andb %d0,%d0
   4e104:	03ff           	.short 0x03ff
   4e106:	8000           	orb %d0,%d0
   4e108:	03ff           	.short 0x03ff
   4e10a:	8000           	orb %d0,%d0
   4e10c:	01ff           	.short 0x01ff
   4e10e:	0000 007c      	orib #124,%d0
   4e112:	0000 0038      	orib #56,%d0
   4e116:	0000 0010      	orib #16,%d0
   4e11a:	0000 0010      	orib #16,%d0
   4e11e:	0000 0010      	orib #16,%d0
	...
   4e142:	0000 00f8      	orib #-8,%d0
   4e146:	0000 0306      	orib #6,%d0
   4e14a:	0000 04f9      	orib #-7,%d0
   4e14e:	0000 058d      	orib #-115,%d0
   4e152:	0000 0b76      	orib #118,%d0
   4e156:	8000           	orb %d0,%d0
   4e158:	0afa           	.short 0x0afa
   4e15a:	8000           	orb %d0,%d0
   4e15c:	0af8           	.short 0x0af8
   4e15e:	8000           	orb %d0,%d0
   4e160:	0afd           	.short 0x0afd
   4e162:	8000           	orb %d0,%d0
   4e164:	0b71 0000      	bchg %d5,%a1@(0,%d0:w)
   4e168:	0586           	bclr %d2,%d6
   4e16a:	0000 04f9      	orib #-7,%d0
   4e16e:	3000           	movew %d0,%d0
   4e170:	0306           	btst %d1,%d6
   4e172:	0000 00f8      	orib #-8,%d0
	...
   4e1a2:	0000 00f8      	orib #-8,%d0
   4e1a6:	0000 03fe      	orib #-2,%d0
   4e1aa:	0000 0707      	orib #7,%d0
   4e1ae:	0000 0603      	orib #3,%d0
   4e1b2:	0000 0c71      	orib #113,%d0
   4e1b6:	8000           	orb %d0,%d0
   4e1b8:	0cf9           	.short 0x0cf9
   4e1ba:	8000           	orb %d0,%d0
   4e1bc:	0cf9           	.short 0x0cf9
   4e1be:	8000           	orb %d0,%d0
   4e1c0:	0cfc 8000 0c70 	cas2w %d0,%d0,%d0,%d1,%a0@,@(%d0)
   4e1c6:	8000           	orb %d0,%d0
   4e1c8:	0601 c000      	addib #0,%d1
   4e1cc:	0707           	btst %d3,%d7
   4e1ce:	3000           	movew %d0,%d0
   4e1d0:	03fe           	.short 0x03fe
   4e1d2:	0000 00f8      	orib #-8,%d0
	...
   4e202:	0000 00f8      	orib #-8,%d0
   4e206:	0000 03fe      	orib #-2,%d0
   4e20a:	0000 07ff      	orib #-1,%d0
   4e20e:	0000 07ff      	orib #-1,%d0
   4e212:	0000 0f8f      	orib #-113,%d0
   4e216:	8000           	orb %d0,%d0
   4e218:	0f07           	btst %d7,%d7
   4e21a:	8000           	orb %d0,%d0
   4e21c:	0f07           	btst %d7,%d7
   4e21e:	8000           	orb %d0,%d0
   4e220:	0f03           	btst %d7,%d3
   4e222:	8000           	orb %d0,%d0
   4e224:	0f8f 8000      	movepw %d7,%sp@(-32768)
   4e228:	07ff           	.short 0x07ff
   4e22a:	c000           	andb %d0,%d0
   4e22c:	07ff           	.short 0x07ff
   4e22e:	3000           	movew %d0,%d0
   4e230:	03fe           	.short 0x03fe
   4e232:	0000 00f8      	orib #-8,%d0
	...
   4e262:	0000 00f8      	orib #-8,%d0
   4e266:	0000 03fe      	orib #-2,%d0
   4e26a:	0000 07ff      	orib #-1,%d0
   4e26e:	0000 07ff      	orib #-1,%d0
   4e272:	0000 0fff      	orib #-1,%d0
   4e276:	8000           	orb %d0,%d0
   4e278:	0fff           	.short 0x0fff
   4e27a:	8000           	orb %d0,%d0
   4e27c:	0fff           	.short 0x0fff
   4e27e:	8000           	orb %d0,%d0
   4e280:	0fff           	.short 0x0fff
   4e282:	8000           	orb %d0,%d0
   4e284:	0fff           	.short 0x0fff
   4e286:	8000           	orb %d0,%d0
   4e288:	07ff           	.short 0x07ff
   4e28a:	c000           	andb %d0,%d0
   4e28c:	07ff           	.short 0x07ff
   4e28e:	3000           	movew %d0,%d0
   4e290:	03fe           	.short 0x03fe
   4e292:	0000 00f8      	orib #-8,%d0
	...
   4f21e:	0000 0004      	orib #4,%d0
   4f222:	0019 0000      	orib #0,%a1@+
   4f226:	0041 0012      	oriw #18,%d1
   4f22a:	0060 00df      	oriw #223,%a0@-
   4f22e:	001b 0421      	orib #33,%a3@+
   4f232:	0267 020a      	andiw #522,%sp@-
   4f236:	0086 0000 0001 	oril #1,%d6
   4f23c:	0000 0020      	orib #32,%d0
   4f240:	0011 0000      	orib #0,%a1@
   4f244:	0191           	bclr %d0,%a1@
   4f246:	0208           	.short 0x0208
   4f248:	0060 0304      	oriw #772,%a0@-
   4f24c:	0400 00a4      	subib #-92,%d0
   4f250:	01d4           	bset %d0,%a4@
   4f252:	0188 0031      	movepw %d0,%a0@(49)
   4f256:	0450 0000      	subiw #0,%a0@
   4f25a:	0001 0000      	orib #0,%d1
   4f25e:	0020 001f      	orib #31,%a0@-
   4f262:	0019 0191      	orib #-111,%a1@+
   4f266:	025b 007e      	andiw #126,%a3@+
   4f26a:	037f           	.short 0x037f
   4f26c:	04df           	.short 0x04df
   4f26e:	00ff           	.short 0x00ff
   4f270:	05f7 03ff 027b 	bset %d2,@(27b04f7)@(0)
   4f276:	04f7 0000 0000 
   4f27c:	9000           	subb %d0,%d0
   4f27e:	c000           	andb %d0,%d0
   4f280:	1200           	moveb %d0,%d1
   4f282:	6e00 3000      	bgtw 0x52284
   4f286:	0c80 5280 2080 	cmpil #1384128640,%d0
   4f28c:	c270 5310      	andw %a0@(0,%d5:w:2),%d1
   4f290:	0424 a6e2      	subib #-30,%a4@-
   4f294:	0f20           	btst %d7,%a0@-
   4f296:	a49a 0000      	macw %d0l,%d0l,%a2@+,%d2
   4f29a:	1000           	moveb %d0,%d0
   4f29c:	0180           	bclr %d0,%d0
   4f29e:	0b00           	btst %d5,%d0
   4f2a0:	4400           	negb %d0
   4f2a2:	0160           	bchg %d0,%a0@-
   4f2a4:	8ac0           	divuw %d0,%d5
   4f2a6:	7140           	mvsw %d0,%d0
   4f2a8:	0d44           	bchg %d6,%d4
   4f2aa:	cf28 3988      	andb %d7,%a0@(14728)
   4f2ae:	04e8           	.short 0x04e8
   4f2b0:	dbc8           	addal %a0,%a5
   4f2b2:	091c           	btst %d4,%a4@+
   4f2b4:	b05a           	cmpw %a2@+,%d0
   4f2b6:	0a21 0000      	eorib #0,%a1@-
   4f2ba:	1000           	moveb %d0,%d0
   4f2bc:	9180           	subxl %d0,%d0
   4f2be:	db00           	addxb %d0,%d5
   4f2c0:	5e00           	addqb #7,%d0
   4f2c2:	ef60           	aslw %d7,%d0
   4f2c4:	fec0 ffc0      	cp1bcbusy 0x4f286
   4f2c8:	7fc4           	mvzw %d4,%d7
   4f2ca:	ffa8 fff8 fff8 	cp1stl %sp,%a0@(-8),#8,#504
   4f2d0:	ffec           	.short 0xffec
   4f2d2:	fffe           	.short 0xfffe
   4f2d4:	fffa           	.short 0xfffa
   4f2d6:	ffff           	.short 0xffff
   4f2d8:	0000 0000      	orib #0,%d0
   4f2dc:	0000 0048      	orib #72,%d0
   4f2e0:	0060 0209      	oriw #521,%a0@-
   4f2e4:	0ca5 0041 0184 	cmpil #4260228,%a5@-
   4f2ea:	0684 049b 23fc 	addil #77276156,%d4
   4f2f0:	c892           	andl %a2@,%d4
   4f2f2:	6761           	beqs 0x4f355
   4f2f4:	1894           	moveb %a4@,%a4@
   4f2f6:	b667           	cmpw %sp@-,%d3
   4f2f8:	0000 0004      	orib #4,%d0
   4f2fc:	0088 0000 0005 	oril #5,%d0
   4f302:	00a2 0012 081e 	oril #1181726,%a2@-
   4f308:	0853 002b      	bchg #43,%a3@
   4f30c:	0224 8801      	andib #1,%a4@-
   4f310:	022c 808c a723 	andib #-116,%a4@(-22749)
   4f316:	0898 0000      	bclr #0,%a0@+
   4f31a:	0004 0088      	orib #-120,%d4
   4f31e:	0048           	.short 0x0048
   4f320:	006d 07af 0cf7 	oriw #1967,%a5@(3319)
   4f326:	087f           	.short 0x087f
   4f328:	09df           	bset %d4,%sp@+
   4f32a:	07bf           	.short 0x07bf
   4f32c:	07ff           	.short 0x07ff
   4f32e:	fbff           	.short 0xfbff
   4f330:	cfff           	.short 0xcfff
   4f332:	efff           	.short 0xefff
   4f334:	bfff           	.short 0xbfff
   4f336:	ffff           	.short 0xffff
	...
   4f348:	e000           	asrb #8,%d0
   4f34a:	2000           	movel %d0,%d0
   4f34c:	4000           	negxb %d0
   4f34e:	8090           	orl %a0@,%d0
   4f350:	12c0           	moveb %d0,%a1@+
   4f352:	5c12           	addqb #6,%a2@
   4f354:	d24a           	addw %a2,%d1
   4f356:	0182           	bclr %d0,%d2
   4f358:	0000 0000      	orib #0,%d0
   4f35c:	0000 c000      	orib #0,%d0
   4f360:	8000           	orb %d0,%d0
   4f362:	0000 8000      	orib #0,%d0
   4f366:	0000 1000      	orib #0,%d0
   4f36a:	4008           	.short 0x4008
   4f36c:	b110           	eorb %d0,%a0@
   4f36e:	6201           	bhis 0x4f371
   4f370:	e02b           	lsrb %d0,%d3
   4f372:	a164           	mov3ql #-1,%a4@-
   4f374:	2d25           	movel %a5@-,%fp@-
   4f376:	7e3c           	moveq #60,%d7
   4f378:	0000 0000      	orib #0,%d0
   4f37c:	0000 c000      	orib #0,%d0
   4f380:	8000           	orb %d0,%d0
   4f382:	0000 8000      	orib #0,%d0
   4f386:	0000 f000      	orib #0,%d0
   4f38a:	6008           	bras 0x4f394
   4f38c:	f110           	psave %a0@
   4f38e:	e291           	roxrl #1,%d1
   4f390:	f2fb           	.short 0xf2fb
   4f392:	ff7e           	.short 0xff7e
   4f394:	ffef           	.short 0xffef
   4f396:	fffe           	.short 0xfffe
	...
   4f3a0:	0004 0019      	orib #25,%d4
   4f3a4:	0080 00c1 0416 	oril #12649494,%d0
   4f3aa:	194a           	.short 0x194a
   4f3ac:	008e 0301 044c 	oril #50398284,%d6
   4f3b2:	0012 0298      	orib #-104,%a2@
   4f3b6:	2700           	movel %d0,%a3@-
   4f3b8:	0000 0001      	orib #1,%d0
   4f3bc:	0000 0000      	orib #0,%d0
   4f3c0:	0001 0100      	orib #0,%d1
   4f3c4:	0011 0008      	orib #8,%a1@
   4f3c8:	0140           	bchg %d0,%d0
   4f3ca:	0024 1030      	orib #48,%a4@-
   4f3ce:	80ae 0013      	orl %fp@(19),%d0
   4f3d2:	0668 4447 08ae 	addiw #17479,%a0@(2222)
   4f3d8:	0000 0001      	orib #1,%d0
   4f3dc:	0000 0000      	orib #0,%d0
   4f3e0:	000f           	.short 0x000f
   4f3e2:	0119           	btst %d0,%a1@+
   4f3e4:	0091 00db 0f5e 	oril #14356318,%a1@
   4f3ea:	19ef           	.short 0x19ef
   4f3ec:	10fe           	.short 0x10fe
   4f3ee:	83bf           	.short 0x83bf
   4f3f0:	067f           	.short 0x067f
   4f3f2:	06fb 46df 2ffe 	callm #-33,%zpc@(0)@(ffffffffffff9000)
   4f3f8:	0000 0000 9000 
   4f3fe:	c000           	andb %d0,%d0
   4f400:	1200           	moveb %d0,%d1
   4f402:	6e00 3000      	bgtw 0x52404
   4f406:	0c80 5280 2080 	cmpil #1384128640,%d0
   4f40c:	c270 5310      	andw %a0@(0,%d5:w:2),%d1
   4f410:	8424           	orb %a4@-,%d2
   4f412:	a6e2 cf20      	msacl %d0,%a4,>>,%a2@-&,%a3
   4f416:	249a           	movel %a2@+,%a2@
   4f418:	0000 1000      	orib #0,%d0
   4f41c:	0180           	bclr %d0,%d0
   4f41e:	0b00           	btst %d5,%d0
   4f420:	4400           	negb %d0
   4f422:	0160           	bchg %d0,%a0@-
   4f424:	8ac0           	divuw %d0,%d5
   4f426:	7140           	mvsw %d0,%d0
   4f428:	0d40           	bchg %d6,%d0
   4f42a:	cf20           	andb %d7,%a0@-
   4f42c:	3988 04e8      	movew %a0,%a4@(ffffffffffffffe8,%d0:w:4)
   4f430:	5bc8 091c      	dbmi %d0,0x4fd4e
   4f434:	305a           	moveaw %a2@+,%a0
   4f436:	0a21 0000      	eorib #0,%a1@-
   4f43a:	1000           	moveb %d0,%d0
   4f43c:	9180           	subxl %d0,%d0
   4f43e:	db00           	addxb %d0,%d5
   4f440:	5e00           	addqb #7,%d0
   4f442:	ef60           	aslw %d7,%d0
   4f444:	fec0 ffc0      	cp1bcbusy 0x4f406
   4f448:	7fc0           	mvzw %d0,%d7
   4f44a:	ffa0 fff8      	cp1stl %sp,%a0@-,#8,#504
   4f44e:	fff8           	.short 0xfff8
   4f450:	ffec           	.short 0xffec
   4f452:	bffe           	.short 0xbffe
   4f454:	fffa           	.short 0xfffa
   4f456:	7fff           	.short 0x7fff
	...
   4f468:	0100           	btst %d0,%d0
   4f46a:	0680 0480 23e0 	addil #75506656,%d0
   4f470:	c880           	andl %d0,%d4
   4f472:	6760           	beqs 0x4f4d4
   4f474:	1890           	moveb %a0@,%a4@
   4f476:	b667           	cmpw %sp@-,%d3
	...
   4f484:	0000 1800      	orib #0,%d0
   4f488:	4c30           	.short 0x4c30
   4f48a:	2068 3200      	moveal %a0@(12800),%a0
   4f48e:	8800           	orb %d0,%d4
   4f490:	0222 808c      	andib #-116,%a2@-
   4f494:	a720           	.short 0xa720
   4f496:	0898 0000      	bclr #0,%a0@+
	...
   4f4a6:	1800           	moveb %d0,%d4
   4f4a8:	4d30 27e8 37c0 	chkl @(37c0),%d6
   4f4ae:	fbe0           	.short 0xfbe0
   4f4b0:	cfe2           	mulsw %a2@-,%d7
   4f4b2:	effc           	.short 0xeffc
   4f4b4:	bff8 ffff      	cmpal 0xffffffff,%sp
	...
   4f4d4:	8000           	orb %d0,%d0
	...
   4f4f2:	4000           	negxb %d0
   4f4f4:	0000 4000      	orib #0,%d0
	...
   4f510:	0000 4000      	orib #0,%d0
   4f514:	8000           	orb %d0,%d0
   4f516:	c000           	andb %d0,%d0
	...
   4f530:	0002 0000      	orib #0,%d2
   4f534:	0004 0000      	orib #0,%d4
	...
   4f554:	0002 0008      	orib #8,%d2
	...
   4f570:	0002 0001      	orib #1,%d2
   4f574:	0006 0009      	orib #9,%d6
	...
   4f588:	0000 0040      	orib #64,%d0
   4f58c:	0080 0280 2301 	oril #41952001,%d0
   4f592:	0a82 300a 7000 	eoril #805990400,%d2
	...
   4f5a8:	0000 1001      	orib #1,%d0
   4f5ac:	0c00 0010      	cmpib #16,%d0
   4f5b0:	00e0           	.short 0x00e0
   4f5b2:	8521           	orb %d2,%a1@-
   4f5b4:	4224           	clrb %a4@-
   4f5b6:	89cc           	.short 0x89cc
	...
   4f5c8:	0000 1041      	orib #65,%d0
   4f5cc:	0c80 0290 23e1 	cmpil #43000801,%d0
   4f5d2:	cfa7           	andl %d7,%sp@-
   4f5d4:	f76e           	.short 0xf76e
   4f5d6:	fbcc           	.short 0xfbcc
	...
   4f5e8:	0000 8080      	orib #-128,%d0
   4f5ec:	2100           	movel %d0,%a0@-
   4f5ee:	2b00           	movel %d0,%a5@-
   4f5f0:	0044 0100      	oriw #256,%d4
   4f5f4:	8383 5e8c      	unpk %d3,%d1,#24204
	...
   4f608:	0020 0040      	orib #64,%a0@-
   4f60c:	1080           	moveb %d0,%a0@
   4f60e:	1400           	moveb %d0,%d2
   4f610:	0a00 f610      	eorib #16,%d0
   4f614:	486c 0110      	pea %a4@(272)
	...
   4f628:	0020 80c0      	orib #-64,%a0@-
   4f62c:	7180           	mvzb %d0,%d0
   4f62e:	3f00           	movew %d0,%sp@-
   4f630:	1e44           	.short 0x1e44
   4f632:	ff78           	.short 0xff78
   4f634:	ffff           	.short 0xffff
   4f636:	7fbc 0000      	mvzb #0,%d7
	...
   4f64e:	0060 001a      	oriw #26,%a0@-
   4f652:	0003 0002      	orib #2,%d3
   4f656:	0680 0000 0000 	addil #0,%d0
	...
   4f66c:	0000 001e      	orib #30,%d0
   4f670:	0025 000c      	orib #12,%a5@-
   4f674:	0381           	bclr %d1,%d1
   4f676:	0170 0000      	bchg %d0,%a0@(0,%d0:w)
	...
   4f68e:	01fe           	.short 0x01fe
   4f690:	007f           	.short 0x007f
   4f692:	003f           	.short 0x003f
   4f694:	078f 0ff3      	movepw %d3,%sp@(4083)
	...
   4f6a8:	0000 1000      	orib #0,%d0
   4f6ac:	0800 0800      	btst #0,%d0
   4f6b0:	0407 0c36      	subib #54,%d7
   4f6b4:	c440           	andw %d0,%d2
   4f6b6:	4430 0000      	negb %a0@(0,%d0:w)
	...
   4f6c6:	2000           	movel %d0,%d0
   4f6c8:	1000           	moveb %d0,%d0
   4f6ca:	0800 0400      	btst #0,%d0
   4f6ce:	0400 0a00      	subib #0,%d0
   4f6d2:	c209           	.short 0xc209
   4f6d4:	2236 a248      	movel %fp@(48,%a2:w:2),%d1
	...
   4f6e4:	0000 2000      	orib #0,%d0
   4f6e8:	1000           	moveb %d0,%d0
   4f6ea:	1800           	moveb %d0,%d4
   4f6ec:	1c00           	moveb %d0,%d6
   4f6ee:	1c00           	moveb %d0,%d6
   4f6f0:	1e3f           	.short 0x1e3f
   4f6f2:	de7f           	.short 0xde7f
   4f6f4:	eef7           	.short 0xeef7
   4f6f6:	eef8 0000 0000 	bfset 0x0,0,0
	...
   4f710:	0020 0010      	orib #16,%a0@-
   4f714:	c010           	andb %a0@,%d0
   4f716:	3408           	movew %a0,%d2
	...
   4f72c:	0040 0020      	oriw #32,%d0
   4f730:	8010           	orb %a0@,%d0
   4f732:	4008           	.short 0x4008
   4f734:	3c08           	movew %a0,%d6
   4f736:	4a14           	tstb %a4@
	...
   4f74c:	0040 0020      	oriw #32,%d0
   4f750:	8030 4038      	orb %a0@(38,%d4:w),%d0
   4f754:	fc38           	.short 0xfc38
   4f756:	fe3c           	.short 0xfe3c
	...
   4f774:	0000 0e00      	orib #0,%d0
	...
   4f794:	0000 0100      	orib #0,%d0
	...
   4f7b4:	0000 7f00      	orib #0,%d0
   4f7b8:	0259 00a1      	andiw #161,%a1@+
   4f7bc:	0444 0040      	subiw #64,%d4
   4f7c0:	0008           	.short 0x0008
   4f7c2:	000a           	.short 0x000a
   4f7c4:	0000 0048      	orib #72,%d0
   4f7c8:	0000 0100      	orib #0,%d0
   4f7cc:	0108 0e50      	movepw %a0@(3664),%d0
   4f7d0:	0ba2           	bclr %d5,%a2@-
   4f7d2:	10f7 023f      	moveb %sp@(3f,%d0:w:2),%a0@+
   4f7d6:	24ad 0006      	movel %a5@(6),%a2@
   4f7da:	0208           	.short 0x0208
   4f7dc:	0083 0102 0242 	oril #16908866,%d3
   4f7e2:	0240 0040      	andiw #64,%d0
   4f7e6:	0000 0000      	orib #0,%d0
   4f7ea:	3604           	movew %d4,%d3
   4f7ec:	5890           	addql #4,%a0@
   4f7ee:	0081 1008 0204 	oril #268960260,%d1
   4f7f4:	09a9 4370      	bclr %d4,%a1@(17264)
   4f7f8:	027f           	.short 0x027f
   4f7fa:	02ef           	.short 0x02ef
   4f7fc:	04c7           	ff1 %d7
   4f7fe:	0146           	bchg %d0,%d6
   4f800:	024a           	.short 0x024a
   4f802:	024a           	.short 0x024a
   4f804:	0040 0048      	oriw #72,%d0
   4f808:	0000 3704      	orib #4,%d0
   4f80c:	5998           	subql #4,%a0@+
   4f80e:	0ed1           	.short 0x0ed1
   4f810:	1bba 17f3 0ff6 	moveb %pc@(0x51005),@(7ffc8a54)@(7c1e)
   4f816:	7ffc 8a54 7c1e 
   4f81c:	3844           	moveaw %d4,%a4
   4f81e:	2239 50ea 074f 	movel 0x50ea074f,%d1
   4f824:	181c           	moveb %a4@+,%d4
   4f826:	05a2           	bclr %d2,%a2@-
   4f828:	8288           	.short 0x8288
   4f82a:	0c0d 113e      	cmpib #62,%d5
   4f82e:	8041           	orw %d1,%d0
   4f830:	07f4 0418      	bset %d3,%a4@(18,%d0:w:4)
   4f834:	4874 005c      	pea %a4@(5c,%d0:w)
   4f838:	61a9           	bsrs 0x4f7e3
   4f83a:	81e0           	divsw %a0@-,%d0
   4f83c:	8531 cc82      	orb %d2,%a1@(ffffffffffffff82,%a4:l:4)
   4f840:	ab11           	.short 0xab11
   4f842:	80a0           	orl %a0@-,%d0
   4f844:	8541 8804      	pack %d1,%d2,#-30716
   4f848:	0073 02b2 20c1 	oriw #690,%a3@(ffffffffffffffc1,%d2:w)
   4f84e:	111c           	moveb %a4@+,%a0@-
   4f850:	4402           	negb %d2
   4f852:	0133 4c0e      	btst %d0,%a3@(e,%d4:l:4)
   4f856:	c819           	andb %a1@+,%d4
   4f858:	efff           	.short 0xefff
   4f85a:	ffff           	.short 0xffff
   4f85c:	bdff           	.short 0xbdff
   4f85e:	ffff           	.short 0xffff
   4f860:	ffff           	.short 0xffff
   4f862:	87ef 9dff      	divsw %sp@(-25089),%d3
   4f866:	8fbf           	.short 0x8fbf
   4f868:	83ff           	.short 0x83ff
   4f86a:	0eff           	.short 0x0eff
   4f86c:	39ff           	.short 0x39ff
   4f86e:	93ff           	.short 0x93ff
   4f870:	47fe           	.short 0x47fe
   4f872:	056f 4c7f      	bchg %d2,%sp@(19583)
   4f876:	c86f d8a1      	andw %sp@(-10079),%d4
   4f87a:	86ea 2b54      	divuw %a2@(11092),%d3
   4f87e:	107a           	.short 0x107a
   4f880:	692a           	bvss 0x4f8ac
   4f882:	9988           	subxl %a0@-,%a4@-
   4f884:	425d           	clrw %a5@+
   4f886:	1b38 e067      	moveb 0xffffe067,%a5@-
   4f88a:	9204           	subb %d4,%d1
   4f88c:	3a88           	movew %a0,%a5@
   4f88e:	40b5 b1c1      	negxl @(0)@(0)
   4f892:	6602           	bnes 0x4f896
   4f894:	3ea7           	movew %sp@-,%sp@
   4f896:	1849           	.short 0x1849
   4f898:	210a           	movel %a2,%a0@-
   4f89a:	3801           	movew %d1,%d4
   4f89c:	c4a1           	andl %a1@-,%d2
   4f89e:	2785 94c4      	movel %d5,%a3@(ffffffffffffffc4,%a1:w:4)
   4f8a2:	2263           	moveal %a3@-,%a1
   4f8a4:	8da2           	orl %d6,%a2@-
   4f8a6:	6007           	bras 0x4f8af
   4f8a8:	0908 6840      	movepw %a0@(26688),%d4
   4f8ac:	f0c6 a6a0 83d4 	pbas 0xa6a57c82
   4f8b2:	6f8d           	bles 0x4f841
   4f8b4:	3fa9 1a67 ffff 	movew %a1@(6759),@(fffffffffffffff7)@(ffffffffffffffff)
   4f8ba:	ffff fff7 ffff 
   4f8c0:	ffff 
   4f8c2:	ffef           	.short 0xffef
   4f8c4:	dfff           	.short 0xdfff
   4f8c6:	fb3f           	.short 0xfb3f
   4f8c8:	eb6f           	lslw %d5,%d7
   4f8ca:	fa47           	.short 0xfa47
   4f8cc:	fa4e           	.short 0xfa4e
   4f8ce:	e6bd           	rorl %d3,%d5
   4f8d0:	b2d7           	cmpaw %sp@,%a1
   4f8d2:	2b8f 1d0c      	movel %sp,%a5@(0)@(0,%d1:l:4)
   4f8d6:	1a24           	moveb %a4@-,%d5
   4f8d8:	9b49           	subxw %a1@-,%a5@-
   4f8da:	500d           	.short 0x500d
   4f8dc:	1256           	.short 0x1256
   4f8de:	4f59           	.short 0x4f59
   4f8e0:	6262           	bhis 0x4f944
   4f8e2:	b039 dd9a 0049 	cmpb 0xdd9a0049,%d0
   4f8e8:	dbf0 ec61      	addal %a0@(61,%fp:l:4),%a5
   4f8ec:	1689           	.short 0x1689
   4f8ee:	3b02           	movew %d2,%a5@-
   4f8f0:	4013           	negxb %a3@
   4f8f2:	7468           	moveq #104,%d2
   4f8f4:	945f           	subw %sp@+,%d2
   4f8f6:	6487           	bccs 0x4f87f
   4f8f8:	24b6 adf0 eca9 	movel @(ffffffffeca930a6),%a2@
   4f8fe:	30a6 
   4f900:	9588           	subxl %a0@-,%a2@-
   4f902:	4dc0           	.short 0x4dc0
   4f904:	2261           	moveal %a1@-,%a1
   4f906:	6f34           	bles 0x4f93c
   4f908:	2407           	movel %d7,%d2
   4f90a:	111c           	moveb %a4@+,%a0@-
   4f90c:	e922           	aslb %d4,%d2
   4f90e:	c08d           	.short 0xc08d
   4f910:	aee0 0249      	macw %a1u,%d0l,<<,%a0@-,%sp
   4f914:	a56d 349d      	mov3ql #2,%a5@(13469)
   4f918:	ffff           	.short 0xffff
   4f91a:	ffff           	.short 0xffff
   4f91c:	ffff           	.short 0xffff
   4f91e:	ffff           	.short 0xffff
   4f920:	fffa           	.short 0xfffa
   4f922:	fffb           	.short 0xfffb
   4f924:	fffb           	.short 0xfffb
   4f926:	ff7d           	.short 0xff7d
   4f928:	ffff           	.short 0xffff
   4f92a:	ff7f           	.short 0xff7f
   4f92c:	ffef           	.short 0xffef
   4f92e:	fb9f           	wddatal %sp@+
   4f930:	fed3           	.short 0xfed3
   4f932:	7663           	moveq #99,%d3
   4f934:	f563           	.short 0xf563
   4f936:	7493           	moveq #-109,%d2
   4f938:	d4d0           	addaw %a0@,%a2
   4f93a:	6730           	beqs 0x4f96c
   4f93c:	2088           	movel %a0,%a0@
   4f93e:	ea47           	asrw #5,%d7
   4f940:	5411           	addqb #2,%a1@
   4f942:	184e           	.short 0x184e
   4f944:	6e6e           	bgts 0x4f9b4
   4f946:	4092           	negxl %a2@
   4f948:	47cd           	.short 0x47cd
   4f94a:	3c0c           	movew %a4,%d6
   4f94c:	8092           	orl %a2@,%d0
   4f94e:	4099           	negxl %a1@+
   4f950:	3100           	movew %d0,%a0@-
   4f952:	a212           	.short 0xa212
   4f954:	2336 11ed 030c 	movel @(30c)@(0),%a1@-
   4f95a:	104c           	.short 0x104c
   4f95c:	0a30 01b8 a1ea 	eorib #-72,@(6530)@(ffffffffffff8091)
   4f962:	6530 8091 
   4f966:	b36d 8022      	eorw %d1,%a5@(-32734)
   4f96a:	c052           	andw %a2@,%d0
   4f96c:	4c69           	.short 0x4c69
   4f96e:	2440           	moveal %d0,%a2
   4f970:	0488 ab84 23ad 	subil #-1417403475,%d0
   4f976:	31b4 fffc f7fc 	movew @(fffffffff7fc7bf8)@(0),@(fffffffffffbfffe)@(fffffffffffff7ff)
   4f97c:	7bf8 ffff fffb 
   4f982:	fffe ffff f7ff 
   4f988:	c7ff           	.short 0xc7ff
   4f98a:	fefe           	.short 0xfefe
   4f98c:	ccfb 64d9      	muluw %pc@(0x4f967,%d6:w:4),%d6
   4f990:	3598 ab94      	movew %a0@+,@(0)@(0,%a2:l:2)
   4f994:	23bc 31fc ca54 	movel #838650452,%a1@(1e,%d0:l:4)
   4f99a:	0c1e 
   4f99c:	1844           	.short 0x1844
   4f99e:	2239 00ea 074f 	movel 0xea074f,%d1
   4f9a4:	181c           	moveb %a4@+,%d4
   4f9a6:	65a2           	bcss 0x4f94a
   4f9a8:	8288           	.short 0x8288
   4f9aa:	4c0d           	.short 0x4c0d
   4f9ac:	113e           	.short 0x113e
   4f9ae:	8041           	orw %d1,%d0
   4f9b0:	07f4 0418      	bset %d3,%a4@(18,%d0:w:4)
   4f9b4:	4874 005c      	pea %a4@(5c,%d0:w)
   4f9b8:	01a9 c1e0      	bclr %d0,%a1@(-15904)
   4f9bc:	0531 8c82      	btst %d2,%a1@(ffffffffffffff82,%a0:l:4)
   4f9c0:	3b11           	movew %a1@,%a5@-
   4f9c2:	80a0           	orl %a0@-,%d0
   4f9c4:	0541           	bchg %d2,%d1
   4f9c6:	0804 4073      	btst #115,%d4
   4f9ca:	02b2 20c1 111c 	andil #549523740,%a2@(2,%d4:w:4)
   4f9d0:	4402 
   4f9d2:	0133 4c0e      	btst %d0,%a3@(e,%d4:l:4)
   4f9d6:	c819           	andb %a1@+,%d4
   4f9d8:	efff           	.short 0xefff
   4f9da:	cfff           	.short 0xcfff
   4f9dc:	1dff           	.short 0x1dff
   4f9de:	bfff           	.short 0xbfff
   4f9e0:	3fff           	.short 0x3fff
   4f9e2:	87ef 3dff      	divsw %sp@(15871),%d3
   4f9e6:	6fbf           	bles 0x4f9a7
   4f9e8:	c3ff           	.short 0xc3ff
   4f9ea:	4eff           	.short 0x4eff
   4f9ec:	39ff           	.short 0x39ff
   4f9ee:	93ff           	.short 0x93ff
   4f9f0:	47fe           	.short 0x47fe
   4f9f2:	056f 4c7f      	bchg %d2,%sp@(19583)
   4f9f6:	c86f d8a1      	andw %sp@(-10079),%d4
   4f9fa:	86ea 2b54      	divuw %a2@(11092),%d3
   4f9fe:	1078           	.short 0x1078
   4fa00:	692a           	bvss 0x4fa2c
   4fa02:	9988           	subxl %a0@-,%a4@-
   4fa04:	425d           	clrw %a5@+
   4fa06:	1b38 e065      	moveb 0xffffe065,%a5@-
   4fa0a:	9204           	subb %d4,%d1
   4fa0c:	3a88           	movew %a0,%a5@
   4fa0e:	40b0 b1c0      	negxl @(0)
   4fa12:	6600 3ec8      	bnew 0x538dc
   4fa16:	1830 210a 3801 	moveb %a0@(0,%d2:w)@(3801),%d4
   4fa1c:	c4a1           	andl %a1@-,%d2
   4fa1e:	2787 94c4      	movel %d7,%a3@(ffffffffffffffc4,%a1:w:4)
   4fa22:	2263           	moveal %a3@-,%a1
   4fa24:	8da2           	orl %d6,%a2@-
   4fa26:	6007           	bras 0x4fa2f
   4fa28:	090a 6841      	movepw %a2@(26689),%d4
   4fa2c:	f0c7 a6a7 83d2 	pbac 0xa6ac7e00
   4fa32:	6f82           	bles 0x4f9b6
   4fa34:	3fca           	.short 0x3fca
   4fa36:	1a30 ffff ffff 	moveb @(fffffffffffffff7)@(ffffffffffffffff),%d5
   4fa3c:	fff7 ffff ffff 
   4fa42:	ffef           	.short 0xffef
   4fa44:	dfff           	.short 0xdfff
   4fa46:	fb3f           	.short 0xfb3f
   4fa48:	eb6f           	lslw %d5,%d7
   4fa4a:	fa47           	.short 0xfa47
   4fa4c:	fa4f           	.short 0xfa4f
   4fa4e:	e6bf           	rorl %d3,%d7
   4fa50:	b2d2           	cmpaw %a2@,%a1
   4fa52:	2b82 1d4a 1a30 	movel %d2,%a5@(0)@(1a30)
   4fa58:	9000           	subb %d0,%d0
   4fa5a:	5000           	addqb #8,%d0
   4fa5c:	1000           	moveb %d0,%d0
   4fa5e:	0000 0800      	orib #0,%d0
   4fa62:	0880 6080      	bclr #-128,%d0
   4fa66:	0000 8040      	orib #64,%d0
   4fa6a:	8040           	orw %d0,%d0
   4fa6c:	0900           	btst %d4,%d0
   4fa6e:	0010 0010      	orib #16,%a0@
   4fa72:	0000 0008      	orib #8,%d0
   4fa76:	0008           	.short 0x0008
   4fa78:	2800           	movel %d0,%d4
   4fa7a:	a400 e000      	macw %d0l,%d2l
   4fa7e:	3e00           	movew %d0,%d7
   4fa80:	d300           	addxb %d0,%d1
   4fa82:	7420           	moveq #32,%d2
   4fa84:	8e00           	orb %d0,%d7
   4fa86:	71f0 6298      	mvzw %a0@(ffffffffffffff98,%d6:w:2),%d0
   4fa8a:	13a4 1430      	moveb %a4@-,%a1@(30,%d1:w:4)
   4fa8e:	0904           	btst %d4,%d4
   4fa90:	91c0           	subal %d0,%a0
   4fa92:	123e           	.short 0x123e
   4fa94:	1053           	.short 0x1053
   4fa96:	0074 f800 f400 	oriw #-2048,%a4@(0,%sp:w:4)
   4fa9c:	f800           	.short 0xf800
   4fa9e:	fe00 fb00      	cp1ldb %d0,%sp,#6,#256
   4faa2:	fca0 fec0      	cp0ldl %a0@-,%sp,#8,#192
   4faa6:	f3f0           	.short 0xf3f0
   4faa8:	e3d8           	lslw %a0@+
   4faaa:	97e4           	subal %a4@-,%a3
   4faac:	1db0 0914 91d8 	moveb %a0@(0)@(0,%d0:l),@(0)
   4fab2:	127e           	.short 0x127e
   4fab4:	107b           	.short 0x107b
   4fab6:	00fc           	.short 0x00fc
   4fab8:	0001 0004      	orib #4,%d1
	...
   4facc:	0110           	btst %d0,%a0@
   4face:	0000 020c      	orib #12,%d0
   4fad2:	0034 00c6 025a 	orib #-58,%a4@(5a,%d0:w:2)
   4fad8:	0000 0002      	orib #2,%d0
   4fadc:	0004 0004      	orib #4,%d4
	...
   4faec:	0000 0040      	orib #64,%d0
   4faf0:	0120           	btst %d0,%a0@-
   4faf2:	044a           	.short 0x044a
   4faf4:	0008           	.short 0x0008
   4faf6:	0101           	btst %d0,%d1
   4faf8:	0003 0006      	orib #6,%d3
   4fafc:	0004 0004      	orib #4,%d4
	...
   4fb0c:	0110           	btst %d0,%a0@
   4fb0e:	00e0           	.short 0x00e0
   4fb10:	036c 04fe      	bchg %d1,%a4@(1278)
   4fb14:	01fe           	.short 0x01fe
   4fb16:	037b           	.short 0x037b
   4fb18:	8080           	orl %d0,%d0
   4fb1a:	9700           	subxb %d0,%d3
   4fb1c:	9af0 0229      	subaw %a0@(29,%d0:w:2),%a5
   4fb20:	2106           	movel %d6,%a0@-
   4fb22:	4164           	.short 0x4164
   4fb24:	8062           	orw %a2@-,%d0
   4fb26:	0092 0000 0428 	oril #1064,%a2@
   4fb2c:	220c           	movel %a4,%d1
   4fb2e:	1804           	moveb %d4,%d4
   4fb30:	00ef           	.short 0x00ef
   4fb32:	101f           	moveb %sp@+,%d0
   4fb34:	000f           	.short 0x000f
   4fb36:	104b           	.short 0x104b
   4fb38:	1208           	.short 0x1208
   4fb3a:	0070 0408 9984 	oriw #1032,@(0)@(0,%a1:l)
   4fb40:	12a1           	moveb %a1@-,%a1@
   4fb42:	20e2           	movel %a2@-,%a0@+
   4fb44:	41e0           	.short 0x41e0
   4fb46:	8030 88b2      	orb %a0@(ffffffffffffffb2,%a0:l),%d0
   4fb4a:	0498 261c 1a0c 	subil #639375884,%a0@+
   4fb50:	01e7           	bset %d0,%sp@-
   4fb52:	0037 5813 a807 	orib #19,%sp@(7,%a2:l)
   4fb58:	be88           	cmpl %a0,%d7
   4fb5a:	9770 9ff9 bbbd 	subw %d3,@(ffffffffbbbd73af)@(0)
   4fb60:	73af 
   4fb62:	e3e6           	lslw %fp@-
   4fb64:	c3c6           	mulsw %d6,%d1
   4fb66:	8192           	orl %d0,%a2@
   4fb68:	8082           	orl %d2,%d0
   4fb6a:	0088 0004 0000 	oril #262144,%d0
   4fb70:	0000 7001      	orib #1,%d0
   4fb74:	d803           	addb %d3,%d4
   4fb76:	b9c3           	cmpal %d3,%a4
   4fb78:	2b30 6892      	movel %a0@(ffffffffffffff92,%d6:l),%a5@-
   4fb7c:	8431 2c20      	orb %a1@(20,%d2:l:4),%d2
   4fb80:	2c50           	moveal %a0@,%fp
   4fb82:	1988           	.short 0x1988
   4fb84:	0300           	btst %d1,%d0
   4fb86:	1600           	moveb %d0,%d3
   4fb88:	1820           	moveb %a0@-,%d4
   4fb8a:	30c0           	movew %d0,%a0@+
   4fb8c:	7b04           	mvsb %d4,%d5
   4fb8e:	c600           	andb %d0,%d3
   4fb90:	908a           	subl %a2,%d0
   4fb92:	08c0 0243      	bset #67,%d0
   4fb96:	0149 1082      	movepl %a1@(4226),%d0
   4fb9a:	0260 0080      	andiw #128,%a0@-
   4fb9e:	a091 2048      	macw %a0u,%d2l,%a1@,%d0
   4fba2:	1190 0b08      	moveb %a0@,%a0@(0,%d0:l:2)
   4fba6:	1e08           	.short 0x1e08
   4fba8:	1828 30c0      	moveb %a0@(12480),%d4
   4fbac:	7b01           	mvsb %d1,%d5
   4fbae:	c601           	andb %d1,%d3
   4fbb0:	8144 2019      	pack %d4,%d0,#8217
   4fbb4:	2030 04a4      	movel %a0@(ffffffffffffffa4,%d0:w:4),%d0
   4fbb8:	7ff6 eef2      	mvzw %fp@(fffffffffffffff2,%fp:l:8),%d7
   4fbbc:	8cf1 acb1      	divuw %a1@(ffffffffffffffb1,%a2:l:4),%d6
   4fbc0:	2c78 1998      	moveal 0x1998,%fp
   4fbc4:	0b08 0e08      	movepw %a0@(3592),%d5
   4fbc8:	0828 10c0 3b05 	btst #-64,%a0@(15109)
   4fbce:	4603           	notb %d3
   4fbd0:	91cf           	subal %sp,%a0
   4fbd2:	2ddb           	.short 0x2ddb
   4fbd4:	2677 07ed 0000 	moveal @(0)@(0),%a3
	...
   4fbe2:	0000 0440      	orib #64,%d0
   4fbe6:	0000 0830      	orib #48,%d0
   4fbea:	84d0           	divuw %a0@,%d2
   4fbec:	4300           	chkl %d0,%d1
   4fbee:	1b20           	moveb %a0@-,%a5@-
   4fbf0:	3310           	movew %a0@,%a1@-
   4fbf2:	c200           	andb %d0,%d1
   4fbf4:	0d60           	bchg %d6,%a0@-
   4fbf6:	3810           	movew %a0@,%d4
	...
   4fc04:	0000 0100      	orib #0,%d0
   4fc08:	0480 1900 0038 	subil #419430456,%d0
   4fc0e:	0488 8c00 0d70 	subil #-1946153616,%d0
   4fc14:	2010           	movel %a0@,%d0
   4fc16:	0788 0000      	movepw %d3,%a0@(0)
	...
   4fc22:	0000 0440      	orib #64,%d0
   4fc26:	0380           	bclr %d1,%d0
   4fc28:	0db0 9ff0 6ff8 	bclr %d6,@(6ff8bfa8)
   4fc2e:	bfa8 
   4fc30:	bf10           	eorb %d7,%a0@
   4fc32:	dff0 7ff0 7fb8 	addal @(7fb800b0),%sp
   4fc38:	00b0 
   4fc3a:	0044 0071      	oriw #113,%d4
   4fc3e:	07a2           	bclr %d3,%a2@-
   4fc40:	0a40 0d89      	eoriw #3465,%d0
   4fc44:	1219           	moveb %a1@+,%d1
   4fc46:	2c30 2053      	movel %a0@(53,%d2:w),%d6
   4fc4a:	0062 00c2      	oriw #194,%a2@-
   4fc4e:	01a2           	bclr %d0,%a2@-
   4fc50:	0144           	bchg %d0,%d4
   4fc52:	01c0           	bset %d0,%d0
   4fc54:	0304           	btst %d1,%d4
   4fc56:	0204 0048      	andib #72,%d4
   4fc5a:	0022 018e      	orib #-114,%a2@-
   4fc5e:	005c 05b2      	oriw #1458,%a4@+
   4fc62:	1264           	.short 0x1264
   4fc64:	0dc4           	bset %d6,%d4
   4fc66:	938b           	subxl %a3@-,%a1@-
   4fc68:	9f28 2019      	subb %d7,%a0@(8217)
   4fc6c:	4039 0059 00b2 	negxb 0x5900b2
   4fc72:	0036 00c2 0102 	orib #-62,%fp@(0,%d0:w)@(13f8)
   4fc78:	13f8 
   4fc7a:	00fe           	.short 0x00fe
   4fc7c:	07ff           	.short 0x07ff
   4fc7e:	0fff           	.short 0x0fff
   4fc80:	1fff           	.short 0x1fff
   4fc82:	3fff           	.short 0x3fff
   4fc84:	7fff           	.short 0x7fff
   4fc86:	ffff           	.short 0xffff
   4fc88:	ffff           	.short 0xffff
   4fc8a:	60ff 41ff 03ff 	bral 0x4204008b
   4fc90:	03ff           	.short 0x03ff
   4fc92:	03ff           	.short 0x03ff
   4fc94:	07cf 070f      	movepl %d3,%sp@(1807)
   4fc98:	2180 266a      	movel %d0,%a0@(6a,%d2:w:8)
   4fc9c:	91c0           	subal %d0,%a0
   4fc9e:	6025           	bras 0x4fcc5
   4fca0:	8992           	orl %d4,%a2@
   4fca2:	c98b           	exg %d4,%a3
   4fca4:	916d 39e2      	subw %d0,%a5@(14818)
   4fca8:	38e6           	movew %fp@-,%a4@+
   4fcaa:	58d2           	svc %a2@
   4fcac:	62b1           	bhis 0x4fc5f
   4fcae:	7772 af23 c799 	mvsw %a2@(ffffffffffffc799,%a2:l:8)@(ffffffffc3b989d0),%d3
   4fcb4:	c3b9 89d0 
   4fcb8:	1279           	.short 0x1279
   4fcba:	0194           	bclr %d0,%a4@
   4fcbc:	0e3f           	.short 0x0e3f
   4fcbe:	1b9a 644d      	moveb %a2@+,%a5@(4d,%d6:w:4)
   4fcc2:	2464           	moveal %a4@-,%a2
   4fcc4:	4c92 8415      	movemw %a2@,%d0/%d2/%d4/%a2/%sp
   4fcc8:	8611           	orb %a1@,%d3
   4fcca:	2629 1e4a      	movel %a1@(7754),%d3
   4fcce:	0f09 5f18      	movepw %a1@(24344),%d7
   4fcd2:	2fa4 2f84      	movel %a4@-,@(0)@(0,%d2:l:8)
   4fcd6:	47cd           	.short 0x47cd
   4fcd8:	f7f9           	.short 0xf7f9
   4fcda:	3fff           	.short 0x3fff
   4fcdc:	ffff           	.short 0xffff
   4fcde:	ffff           	.short 0xffff
   4fce0:	ffff           	.short 0xffff
   4fce2:	ffff           	.short 0xffff
   4fce4:	ffff           	.short 0xffff
   4fce6:	ffff           	.short 0xffff
   4fce8:	ffff           	.short 0xffff
   4fcea:	ffff           	.short 0xffff
   4fcec:	ffff           	.short 0xffff
   4fcee:	ffff           	.short 0xffff
   4fcf0:	f7ff           	.short 0xf7ff
   4fcf2:	e1ff           	.short 0xe1ff
   4fcf4:	e1ff           	.short 0xe1ff
   4fcf6:	c0ff           	.short 0xc0ff
   4fcf8:	8618           	orb %a0@+,%d3
   4fcfa:	e588           	lsll #2,%d0
   4fcfc:	3888           	movew %a0,%a4@
   4fcfe:	0f43           	bchg %d7,%d3
   4fd00:	c98c           	exg %d4,%a4
   4fd02:	4323           	chkl %a3@-,%d1
   4fd04:	38c0           	movew %d0,%a4@+
   4fd06:	d513           	addb %d2,%a3@
   4fd08:	6e93           	bgts 0x4fc9d
   4fd0a:	5622           	addqb #3,%a2@-
   4fd0c:	3b73 2b71 4531 	movew %a3@(45310645)@(0),%a5@(17518)
   4fd12:	0645 446e 
   4fd16:	095e           	bchg %d4,%fp@+
   4fd18:	5984           	subql #4,%d4
   4fd1a:	1a44           	.short 0x1a44
   4fd1c:	0744           	bchg %d3,%d4
   4fd1e:	c0a4           	andl %a4@-,%d0
   4fd20:	2443           	moveal %d3,%a2
   4fd22:	bc5c           	cmpw %a4@+,%d6
   4fd24:	c437 2ac8      	andb %sp@(ffffffffffffffc8,%d2:l:2),%d2
   4fd28:	9148           	subxw %a0@-,%a0@-
   4fd2a:	a999           	.short 0xa999
   4fd2c:	c488           	.short 0xc488
   4fd2e:	d48c           	addl %a4,%d2
   4fd30:	b2cc           	cmpaw %a4,%a1
   4fd32:	f1bc           	.short 0xf1bc
   4fd34:	b39e           	eorl %d1,%fp@+
   4fd36:	e4be           	rorl %d2,%d6
   4fd38:	ffbc           	.short 0xffbc
   4fd3a:	ffdd           	.short 0xffdd
   4fd3c:	ffdd           	.short 0xffdd
   4fd3e:	ffef           	.short 0xffef
   4fd40:	fdff           	.short 0xfdff
   4fd42:	ffff           	.short 0xffff
   4fd44:	ffff           	.short 0xffff
   4fd46:	ffff           	.short 0xffff
   4fd48:	ffff           	.short 0xffff
   4fd4a:	ffff           	.short 0xffff
   4fd4c:	ffff           	.short 0xffff
   4fd4e:	ffff           	.short 0xffff
   4fd50:	ffff           	.short 0xffff
   4fd52:	ffff           	.short 0xffff
   4fd54:	ffff           	.short 0xffff
   4fd56:	ffff           	.short 0xffff
   4fd58:	6c00 8000      	bgew 0x47d5a
   4fd5c:	6000 0100      	braw 0x4fe5e
   4fd60:	d5c0           	addal %d0,%a2
   4fd62:	8070 4a1e      	orw %a0@(1e,%d4:l:2),%d0
   4fd66:	2582 1680      	movel %d2,%a2@(ffffffffffffff80,%d1:w:8)
   4fd6a:	da70 c5a8 ccdc 	addw @(ffffffffffffccdc,%a4:w:4),%d5
   4fd70:	a4ac           	.short 0xa4ac
   4fd72:	6276           	bhis 0x4fdea
   4fd74:	e416           	roxrb #2,%d6
   4fd76:	4602           	notb %d2
   4fd78:	1280           	moveb %d0,%a1@
   4fd7a:	6c00 9000      	bgew 0x48d7c
   4fd7e:	f280 2830      	fbf 0x525b0
   4fd82:	7e0c           	moveq #12,%d7
   4fd84:	3580 9a40      	movew %d0,%a2@(40,%a1:l:2)
   4fd88:	c970 2588      	andw %d4,@(0,%d2:w:4)
   4fd8c:	2a54           	moveal %a4@,%a5
   4fd8e:	2322           	movel %a2@-,%a1@-
   4fd90:	5352           	subqw #1,%a2@
   4fd92:	9588           	subxl %a0@-,%a2@-
   4fd94:	1308           	.short 0x1308
   4fd96:	3104           	movew %d4,%a0@-
   4fd98:	fe80 ec00      	cp1ldl %d0,%fp,#7,#0
   4fd9c:	f000           	.short 0xf000
   4fd9e:	f380           	.short 0xf380
   4fda0:	fff0           	.short 0xfff0
   4fda2:	fffc           	.short 0xfffc
   4fda4:	fffe           	.short 0xfffe
   4fda6:	ffc2           	.short 0xffc2
   4fda8:	fff0           	.short 0xfff0
   4fdaa:	fff8           	.short 0xfff8
   4fdac:	fffc           	.short 0xfffc
   4fdae:	fffe           	.short 0xfffe
   4fdb0:	fffe           	.short 0xfffe
   4fdb2:	fffe           	.short 0xfffe
   4fdb4:	ff1e ff06      	cp1stb %sp,%fp@+,#8,#262
   4fdb8:	0ca2 11c9 70a5 	cmpil #298414245,%a2@-
   4fdbe:	5741           	subqw #3,%d1
   4fdc0:	a484           	.short 0xa484
   4fdc2:	a0e2 2809      	macl %a1,%d2,%a2@-,%a0
   4fdc6:	287e           	.short 0x287e
   4fdc8:	00b0 2068 008b 	oril #543686795,%a0@(0,%d0:w)
   4fdce:	0000 
   4fdd0:	0080 0000 0000 	oril #0,%d0
   4fdd6:	0008           	.short 0x0008
   4fdd8:	b057           	cmpw %sp@,%d0
   4fdda:	0e62           	.short 0x0e62
   4fddc:	0912           	btst %d4,%a2@
   4fdde:	011e           	btst %d0,%fp@+
   4fde0:	0253 09c9      	andiw #2505,%a3@
   4fde4:	0234 0032 2034 	andib #50,%a4@(34,%d2:w)
   4fdea:	00e0           	.short 0x00e0
   4fdec:	2003           	movel %d3,%d0
   4fdee:	0001 0000      	orib #0,%d1
   4fdf2:	0000 0000      	orib #0,%d0
   4fdf6:	0000 bdff      	orib #-1,%d0
   4fdfa:	3fef           	.short 0x3fef
   4fdfc:	7bf7 577f aedf 	mvzw %sp@(ffffffffaedfa97f)@(2a7d285e),%d5
   4fe02:	a97f 2a7d 285e 
   4fe08:	208c           	movel %a4,%a0@
   4fe0a:	20a8 208b      	movel %a0@(8331),%a0@
   4fe0e:	0001 0080      	orib #-128,%d1
   4fe12:	0000 0000      	orib #0,%d0
   4fe16:	000a           	.short 0x000a
   4fe18:	3011           	movew %a1@,%d0
   4fe1a:	40b9 33b8 7289 	negxl 0x33b87289
   4fe20:	ed3b           	rolb %d6,%d3
   4fe22:	f53c           	.short 0xf53c
   4fe24:	02b8 c07d 00bf 	andil #-1065549633,0x1f
   4fe2a:	001f 
   4fe2c:	007b           	.short 0x007b
   4fe2e:	a037           	.short 0xa037
   4fe30:	402f 003f      	negxb %sp@(63)
   4fe34:	203f           	.short 0x203f
   4fe36:	103f           	.short 0x103f
   4fe38:	d076 3c70      	addw %fp@(70,%d3:l:4),%d0
   4fe3c:	8f68 2f78      	orw %d7,%a0@(12152)
   4fe40:	02f8           	.short 0x02f8
   4fe42:	c2f9 9161 01bd 	muluw 0x916101bd,%d1
   4fe48:	207f           	.short 0x207f
   4fe4a:	007f           	.short 0x007f
   4fe4c:	183f           	.short 0x183f
   4fe4e:	a07f           	.short 0xa07f
   4fe50:	403f           	.short 0x403f
   4fe52:	201f           	movel %sp@+,%d0
   4fe54:	001f 001f      	orib #31,%sp@+
   4fe58:	b05f           	cmpw %sp@+,%d0
   4fe5a:	0459 8619      	subiw #-31207,%a1@+
   4fe5e:	6839           	bvcs 0x4fe99
   4fe60:	e0d3           	asrw %a3@
   4fe62:	f08d 9319      	pbgc 0x4917d
   4fe66:	c15c           	andw %d0,%a4@+
   4fe68:	201c           	movel %a4@+,%d0
   4fe6a:	001c 180d      	orib #13,%a4@+
   4fe6e:	a02b           	.short 0xa02b
   4fe70:	000b           	.short 0x000b
   4fe72:	0007 0017      	orib #23,%d7
   4fe76:	001a 184b      	orib #75,%a2@+
   4fe7a:	5c8a           	addql #6,%a2
   4fe7c:	7847           	moveq #71,%d4
   4fe7e:	7029           	moveq #41,%d0
   4fe80:	f819           	.short 0xf819
   4fe82:	e801           	asrb #4,%d1
   4fe84:	c854           	andw %a4@,%d4
   4fe86:	8426           	orb %fp@-,%d2
   4fe88:	06da           	.short 0x06da
   4fe8a:	4b01           	chkl %d1,%d5
   4fe8c:	0901           	btst %d4,%d1
   4fe8e:	1022           	moveb %a2@-,%d0
   4fe90:	7002           	moveq #2,%d0
   4fe92:	f006           	.short 0xf006
   4fe94:	c812           	andb %a2@,%d4
   4fe96:	c00e           	.short 0xc00e
   4fe98:	9a57           	subw %sp@,%d5
   4fe9a:	1e95           	moveb %a5@,%sp@
   4fe9c:	3fcb           	.short 0x3fcb
   4fe9e:	6967           	bvss 0x4ff07
   4fea0:	e0b7           	roxrl %d0,%d7
   4fea2:	e01f           	rorb #8,%d7
   4fea4:	c443           	andw %d3,%d2
   4fea6:	8025           	orb %a5@-,%d0
   4fea8:	0019 4810      	orib #16,%a1@+
   4feac:	38a0           	movew %a0@-,%a4@
   4feae:	1fe1           	.short 0x1fe1
   4feb0:	7071           	moveq #113,%d0
   4feb2:	ec3d           	rorb %d6,%d5
   4feb4:	c62f c123      	andb %sp@(-16093),%d3
   4feb8:	0a11 0813      	eorib #19,%a1@
   4febc:	1b0d           	.short 0x1b0d
   4febe:	3103           	movew %d3,%a0@-
   4fec0:	708a           	moveq #-118,%d0
   4fec2:	6804           	bvcs 0x4fec8
   4fec4:	c051           	andw %a1@,%d0
   4fec6:	8404           	orb %d4,%d2
   4fec8:	02c8           	.short 0x02c8
   4feca:	0900           	btst %d4,%d0
   4fecc:	0800 1000      	btst #0,%d0
   4fed0:	3000           	movew %d0,%d0
   4fed2:	7c24           	moveq #36,%d6
   4fed4:	4e22           	.short 0x4e22
   4fed6:	c120           	andb %d0,%a0@-
   4fed8:	4505           	chkl %d5,%d2
   4feda:	09a9 918c      	bclr %d4,%a1@(-28276)
   4fede:	f590           	.short 0xf590
   4fee0:	ebe2           	.short 0xebe2
   4fee2:	c9c1           	mulsw %d1,%d4
   4fee4:	cf01           	abcd %d1,%d7
   4fee6:	0700           	btst %d3,%d0
   4fee8:	4610           	notb %a0@
   4feea:	4620           	notb %a0@-
   4feec:	6e70           	bgts 0x4ff5e
   4feee:	79a0           	mvzb %a0@-,%d4
   4fef0:	fe20 f801      	cp1ldb %a0@-,%sp,#5,#1
   4fef4:	f022           	.short 0xf022
   4fef6:	e200           	asrb #1,%d0
   4fef8:	111f           	moveb %sp@+,%a0@-
   4fefa:	4997           	chkw %sp@,%d4
   4fefc:	d9a3           	addl %d4,%a3@-
   4fefe:	f197           	.short 0xf197
