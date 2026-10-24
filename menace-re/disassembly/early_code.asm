
disassembly/early_code.bin:     file format binary


Disassembly of section .data:

00001000 <.data>:
    1000:	5432 2e3b      	addqb #2,%a2@(3b,%d2:l:8)
    1004:	2070 08a1      	moveal %a0@(ffffffffffffffa1,%d0:l),%a0
    1008:	29a1 28c1      	movel %a1@-,%a4@(ffffffffffffffc1,%d2:l)
    100c:	1601           	moveb %d1,%d3
    100e:	2401           	movel %d1,%d2
    1010:	1c01           	moveb %d1,%d6
    1012:	5401           	addqb #2,%d1
    1014:	a800 ac00      	macl %d0,%d4
    1018:	70ce           	moveq #-50,%d0
    101a:	67ee           	beqs 0x100a
    101c:	6e7e           	bgts 0x109c
    101e:	741a           	moveq #26,%d2
    1020:	3c12           	movew %a2@,%d6
    1022:	1e1a           	moveb %a2@+,%d7
    1024:	1813           	moveb %a3@,%d4
    1026:	7861           	moveq #97,%d4
    1028:	1863           	.short 0x1863
    102a:	11c3 0e03      	moveb %d3,0xe03
    102e:	1c00           	moveb %d0,%d6
    1030:	1c00           	moveb %d0,%d6
    1032:	0c00 1800      	cmpib #0,%d0
    1036:	1c00           	moveb %d0,%d6
    1038:	efdf           	.short 0xefdf
    103a:	ca7e           	.short 0xca7e
    103c:	b3e6           	cmpal %fp@-,%a1
    103e:	bc7b 7cf2      	cmpw %pc@(0x1032,%d7:l:4),%d6
    1042:	fe7b           	.short 0xfe7b
    1044:	70b0           	moveq #-80,%d0
    1046:	0802 7a02      	btst #2,%d2
    104a:	7600           	moveq #0,%d3
    104c:	6200 4003      	bhiw 0x5051
    1050:	6003           	bras 0x1055
    1052:	fc03 f801      	cp0ldb %d3,%sp,#5,#1
    1056:	fc03 c801      	cp0ldb %d3,%a4,#5,#1
    105a:	d801           	addb %d1,%d4
    105c:	f801 2c00      	tblsnb %d1,%d0,%d2
    1060:	2800           	movel %d0,%d4
    1062:	2800           	movel %d0,%d4
    1064:	2800           	movel %d0,%d4
    1066:	2803           	movel %d3,%d4
    1068:	1801           	moveb %d1,%d4
    106a:	3000           	movew %d0,%d0
    106c:	b000           	cmpb %d0,%d0
    106e:	b800           	cmpb %d0,%d4
    1070:	6c01           	bges 0x1073
    1072:	9801           	subb %d1,%d4
    1074:	2000           	movel %d0,%d0
    1076:	3000           	movew %d0,%d0
    1078:	b800           	cmpb %d0,%d4
    107a:	b800           	cmpb %d0,%d4
    107c:	9800           	subb %d0,%d4
    107e:	1c00           	moveb %d0,%d6
    1080:	1800           	moveb %d0,%d4
    1082:	1800           	moveb %d0,%d4
    1084:	1800           	moveb %d0,%d4
    1086:	1802           	moveb %d2,%d4
    1088:	7800           	moveq #0,%d4
    108a:	7000           	moveq #0,%d0
    108c:	7000           	moveq #0,%d0
    108e:	6800 3c00      	bvcw 0x4c90
    1092:	6800 3000      	bvcw 0x4094
    1096:	7000           	moveq #0,%d0
    1098:	1800           	moveb %d0,%d4
    109a:	8800           	orb %d0,%d4
    109c:	a800 7c01      	macl %d0,%d4
    10a0:	7001           	moveq #1,%d0
    10a2:	6001           	bras 0x10a5
    10a4:	4801           	nbcd %d1
    10a6:	c802           	andb %d2,%d4
    10a8:	f800           	.short 0xf800
    10aa:	f803 7801      	tblsb %d3,%d1,%d7
    10ae:	7801           	moveq #1,%d4
    10b0:	fc00 f800      	cp0ldb %d0,%sp,#5,#0
    10b4:	f001           	.short 0xf001
    10b6:	f003           	.short 0xf003
    10b8:	b000           	cmpb %d0,%d0
    10ba:	b800           	cmpb %d0,%d4
    10bc:	b000           	cmpb %d0,%d0
    10be:	3000           	movew %d0,%d0
    10c0:	3000           	movew %d0,%d0
    10c2:	7000           	moveq #0,%d0
    10c4:	1000           	moveb %d0,%d0
    10c6:	5000           	addqb #8,%d0
    10c8:	4001           	negxb %d1
    10ca:	4001           	negxb %d1
    10cc:	5000           	addqb #8,%d0
    10ce:	5800           	addqb #4,%d0
    10d0:	5000           	addqb #8,%d0
    10d2:	5000           	addqb #8,%d0
    10d4:	5000           	addqb #8,%d0
    10d6:	5000           	addqb #8,%d0
    10d8:	7000           	moveq #0,%d0
    10da:	7800           	moveq #0,%d4
    10dc:	7000           	moveq #0,%d0
    10de:	7000           	moveq #0,%d0
    10e0:	7000           	moveq #0,%d0
    10e2:	3000           	movew %d0,%d0
    10e4:	3000           	movew %d0,%d0
    10e6:	1000           	moveb %d0,%d0
    10e8:	0000 2000      	orib #0,%d0
    10ec:	3000           	movew %d0,%d0
    10ee:	1800           	moveb %d0,%d4
    10f0:	3000           	movew %d0,%d0
    10f2:	3000           	movew %d0,%d0
    10f4:	3000           	movew %d0,%d0
    10f6:	3000           	movew %d0,%d0
    10f8:	c001           	andb %d1,%d0
    10fa:	0001 6003      	orib #3,%d1
    10fe:	f001           	.short 0xf001
    1100:	e001           	asrb #8,%d1
    1102:	d001           	addb %d1,%d0
    1104:	6001           	bras 0x1107
    1106:	3003           	movew %d3,%d0
    1108:	3000           	movew %d0,%d0
    110a:	7000           	moveq #0,%d0
    110c:	7001           	moveq #1,%d0
    110e:	7801           	moveq #1,%d4
    1110:	e001           	asrb #8,%d1
    1112:	5003           	addqb #8,%d3
    1114:	3001           	movew %d1,%d0
    1116:	7001           	moveq #1,%d0
    1118:	1800           	moveb %d0,%d4
    111a:	5001           	addqb #8,%d1
    111c:	5001           	addqb #8,%d1
    111e:	4001           	negxb %d1
    1120:	5001           	addqb #8,%d1
    1122:	7000           	moveq #0,%d0
    1124:	4001           	negxb %d1
    1126:	5001           	addqb #8,%d1
    1128:	5000           	addqb #8,%d0
    112a:	4000           	negxb %d0
    112c:	4000           	negxb %d0
    112e:	0000 0001      	orib #1,%d0
    1132:	2000           	movel %d0,%d0
    1134:	2000           	movel %d0,%d0
    1136:	2000           	movel %d0,%d0
    1138:	3800           	movew %d0,%d4
    113a:	1000           	moveb %d0,%d0
    113c:	1000           	moveb %d0,%d0
    113e:	2000           	movel %d0,%d0
    1140:	3000           	movew %d0,%d0
    1142:	1000           	moveb %d0,%d0
    1144:	3000           	movew %d0,%d0
    1146:	3000           	movew %d0,%d0
    1148:	3000           	movew %d0,%d0
    114a:	3000           	movew %d0,%d0
    114c:	2000           	movel %d0,%d0
    114e:	1000           	moveb %d0,%d0
    1150:	3000           	movew %d0,%d0
    1152:	0000 0000      	orib #0,%d0
    1156:	0000 7801      	orib #1,%d0
    115a:	7000           	moveq #0,%d0
    115c:	6000 d003      	braw 0xffffe161
    1160:	1001           	moveb %d1,%d0
    1162:	3001           	movew %d1,%d0
    1164:	7001           	moveq #1,%d0
    1166:	6000 4001      	braw 0x5169
    116a:	1001           	moveb %d1,%d0
    116c:	1003           	moveb %d3,%d0
    116e:	7001           	moveq #1,%d0
    1170:	f000           	.short 0xf000
    1172:	6001           	bras 0x1175
    1174:	6001           	bras 0x1177
    1176:	6001           	bras 0x1179
    1178:	0000 2001      	orib #1,%d0
    117c:	0001 4000      	orib #0,%d1
    1180:	2000           	movel %d0,%d0
    1182:	2000           	movel %d0,%d0
    1184:	2000           	movel %d0,%d0
    1186:	0000 4000      	orib #0,%d0
	...
    119a:	0000 2000      	orib #0,%d0
    119e:	2000           	movel %d0,%d0
    11a0:	0000 0000      	orib #0,%d0
    11a4:	0000 2000      	orib #0,%d0
	...
    11b8:	6001           	bras 0x11bb
    11ba:	6000 4000      	braw 0x51bc
    11be:	0001 6001      	orib #1,%d1
    11c2:	e001           	asrb #8,%d1
    11c4:	6001           	bras 0x11c7
    11c6:	4000           	negxb %d0
    11c8:	0000 4000      	orib #0,%d0
    11cc:	4000           	negxb %d0
    11ce:	4000           	negxb %d0
	...
    11d8:	ffff           	.short 0xffff
    11da:	1e7f           	.short 0x1e7f
    11dc:	e74e           	lslw #3,%d6
    11de:	f3ee           	.short 0xf3ee
    11e0:	fdf3           	.short 0xfdf3
    11e2:	fefa           	.short 0xfefa
    11e4:	feaf c9fa 6d76 	cp1ldl %sp@(28022),%a4,#5,#506
    11ea:	7f96           	mvzb %fp@,%d7
    11ec:	adde           	.short 0xadde
    11ee:	27fc           	.short 0x27fc
    11f0:	67a4           	beqs 0x1196
    11f2:	6834           	bvcs 0x1228
    11f4:	4db8 4488      	chkw 0x4488,%d6
    11f8:	fdce           	.short 0xfdce
    11fa:	17f8           	.short 0x17f8
    11fc:	06fa c3de 313f 	callm #-34,%pc@(0x433f)
    1202:	c0d6           	muluw %fp@,%d0
    1204:	3e8c           	movew %a4,%sp@
    1206:	ffd8           	.short 0xffd8
    1208:	dbf2 fef4      	addal %a2@(fffffffffffffff4,%sp:l:8),%a5
    120c:	8db0 04fc      	orl %d6,%a0@(fffffffffffffffc,%d0:w:4)
    1210:	17bc 122c 2258 	moveb #44,%a3@(58,%d2:w:2)
    1216:	2240           	moveal %d0,%a1
    1218:	fe7f           	.short 0xfe7f
    121a:	fc0f fc07      	cp0ldb %sp,%sp,#7,#7
    121e:	fe03 ffc1      	cp1ldb %d3,%sp,#8,#449
    1222:	ffe1           	.short 0xffe1
    1224:	c9f3 007e      	mulsw %a3@(7e,%d0:w),%d4
    1228:	001e 080e      	orib #14,%fp@+
    122c:	7e0e           	moveq #14,%d7
    122e:	ff84 ffc0      	cp1stl %sp,%d4,#8,#448
    1232:	ffc0           	.short 0xffc0
    1234:	efe0           	.short 0xefe0
    1236:	e6c8           	.short 0xe6c8
    1238:	45a3           	chkw %a3@-,%d2
    123a:	45a1           	chkw %a1@-,%d2
    123c:	45b1 411f 072b 	chkw %a1@(0)@(72baa15,%d4:w),%d2
    1242:	aa15 
    1244:	3214           	movew %a4@,%d1
    1246:	3312           	movew %a2@,%a1@-
    1248:	9a12           	subb %a2@,%d5
    124a:	2b10           	movel %a0@,%a5@-
    124c:	4ba0           	chkw %a0@-,%d5
    124e:	0530 250c      	btst %d2,%a0@(0)@(0,%d2:w:4)
    1252:	250c           	movel %a4,%a2@-
    1254:	c414           	andb %a4@,%d2
    1256:	c634 2367 2167 	andb %a4@(2167)@(2177237b),%d3
    125c:	2177 237b 
    1260:	631b           	blss 0x127d
    1262:	660f           	bnes 0x1273
    1264:	6e06           	bgts 0x126c
    1266:	6f0e           	bles 0x1276
    1268:	860e           	.short 0x860e
    126a:	6708           	beqs 0x1274
    126c:	2798 e308      	movel %a0@+,%a3@(0,%fp:w:2)
    1270:	e304           	aslb #1,%d4
    1272:	e304           	aslb #1,%d4
    1274:	430c           	.short 0x430c
    1276:	410c           	.short 0x410c
    1278:	efcf           	.short 0xefcf
    127a:	efc1           	.short 0xefc1
    127c:	ffd3           	.short 0xffd3
    127e:	ce9f           	andl %sp@+,%d7
    1280:	8c7f           	.short 0x8c7f
    1282:	783f           	moveq #63,%d4
    1284:	e23e           	rorb %d1,%d6
    1286:	e77e           	rolw %d3,%d6
    1288:	ee3e           	rorb %d7,%d6
    128a:	fe32           	.short 0xfe32
    128c:	de00           	addb %d0,%d7
    128e:	8e18           	orb %a0@+,%d7
    1290:	fe3c           	.short 0xfe3c
    1292:	ec3c           	rorb %d6,%d4
    1294:	c178 e318      	andw %d0,0xffffe318
    1298:	41a0           	chkw %a0@-,%d0
    129a:	8110           	orb %d0,%a0@
    129c:	a114           	.short 0xa114
    129e:	c028 4350      	andb %a0@(17232),%d0
    12a2:	27dc           	.short 0x27dc
    12a4:	a3d2           	.short 0xa3d2
    12a6:	75f4 d9e0 d540 	mvzw @(ffffffffffffd540),%d2
    12ac:	4794           	chkw %a4@,%d3
    12ae:	5ba4           	subql #5,%a4@-
    12b0:	42a4           	clrl %a4@-
    12b2:	e940           	aslw #4,%d0
    12b4:	2914           	movel %a4@,%a4@-
    12b6:	ad38           	.short 0xad38
    12b8:	8098           	orl %a0@+,%d0
    12ba:	a008 000c      	macw %a0l,%d0l
    12be:	2018           	movel %a0@+,%d0
    12c0:	2138 63f4      	movel 0x63f4,%a0@-
    12c4:	614e           	bsrs 0x1314
    12c6:	f34e           	.short 0xf34e
    12c8:	455c           	.short 0x455c
    12ca:	4ddc           	.short 0x4ddc
    12cc:	4d4c           	.short 0x4d4c
    12ce:	435c           	.short 0x435c
    12d0:	c654           	andw %a4@,%d3
    12d2:	6708           	beqs 0x12dc
    12d4:	870c           	sbcd %a4@-,%a3@-
    12d6:	0318           	btst %d1,%a0@+
    12d8:	2380 4338 e37c 	movel %d0,%a1@(ffffffffe37ce678,%d4:w:2)
    12de:	e678 
    12e0:	eff8           	.short 0xeff8
    12e2:	830c           	sbcd %a4@-,%a1@-
    12e4:	affe           	.short 0xaffe
    12e6:	2fde           	.short 0x2fde
    12e8:	cf8c           	exg %d7,%a4
    12ea:	c32c d1fc      	andb %d1,%a4@(-11780)
    12ee:	dfcc           	addal %a4,%sp
    12f0:	5ecc f378      	dbgt %d4,0x66a
    12f4:	037c           	.short 0x037c
    12f6:	8760           	orw %d3,%a0@-
    12f8:	865c           	orw %a4@+,%d3
    12fa:	0240 8060      	andiw #-32672,%d0
    12fe:	8230 8200      	orb %a0@(0,%a0:w:2),%d1
    1302:	0328 0420      	btst %d1,%a0@(1056)
    1306:	6530           	bcss 0x1338
    1308:	4318           	chkl %a0@+,%d1
    130a:	0270 2050 0038 	andiw #8272,%a0@(38,%d0:w)
    1310:	0130 0510      	btst %d0,%a0@(0,%d0:w:4)
    1314:	8638 8428      	orb 0xffff8428,%d3
    1318:	413c 4120 4100 	chkl #1092632832,%d0
    131e:	4010           	negxb %a0@
    1320:	4110           	chkl %a0@,%d0
    1322:	4018           	negxb %a0@+
    1324:	4210           	clrb %a0@
    1326:	6310           	blss 0x1338
    1328:	c138 c110      	andb %d0,0xffffc110
    132c:	6330           	blss 0x135e
    132e:	4318           	chkl %a0@+,%d1
    1330:	4318           	chkl %a0@+,%d1
    1332:	4328 0108      	chkl %a0@(264),%d1
    1336:	4218           	clrb %a0@+
    1338:	e700           	aslb #3,%d0
    133a:	c710           	andb %d3,%a0@
    133c:	0730 0f60 c770 	btst %d3,%a0@(ffffffffffffc770)
    1342:	c778 c170      	andw %d3,0xffffc170
    1346:	80e0           	divuw %a0@-,%d0
    1348:	0640 4720      	addiw #18208,%d0
    134c:	ef10           	roxlb #7,%d0
    134e:	c778 c678      	andw %d3,0xffffc678
    1352:	c0f8 c370      	muluw 0xffffc370,%d0
    1356:	c760           	andw %d3,%a0@-
    1358:	8428 8410      	orb %a0@(-31728),%d2
    135c:	0210 8210      	andib #16,%a0@
    1360:	0500           	btst %d2,%d0
    1362:	4390           	chkw %a0@,%d1
    1364:	c230 0230      	andb %a0@(30,%d0:w:2),%d1
    1368:	8210           	orb %a0@,%d1
    136a:	c110           	andb %d0,%a0@
    136c:	8000           	orb %d0,%d0
    136e:	0200 8300      	andib #0,%d0
    1372:	0100           	btst %d0,%d0
    1374:	0000 8100      	orib #0,%d0
    1378:	4118           	chkl %a0@+,%d0
    137a:	0108 c108      	movepw %a0@(-16120),%d0
    137e:	0100           	btst %d0,%d0
    1380:	4308           	.short 0x4308
    1382:	c188           	exg %d0,%a0
    1384:	c100           	abcd %d0,%d0
    1386:	c100           	abcd %d0,%d0
    1388:	4000           	negxb %d0
    138a:	4000           	negxb %d0
    138c:	0000 8100      	orib #0,%d0
    1390:	0100           	btst %d0,%d0
    1392:	0000 8000      	orib #0,%d0
    1396:	0000 c700      	orib #0,%d0
    139a:	c738 4738      	andb %d3,0x4738
    139e:	c778 c038      	andw %d3,0xffffc038
    13a2:	8e38 0710      	orb 0x710,%d7
    13a6:	4710           	chkl %a0@,%d3
    13a8:	c330 8330 c320 	andb %d1,%a0@(ffffffffc3204020,%a0:w:2)
    13ae:	4020 
    13b0:	c020           	andb %a0@-,%d0
    13b2:	8300           	sbcd %d0,%d1
    13b4:	8300           	sbcd %d0,%d1
    13b6:	8700           	sbcd %d0,%d3
    13b8:	8100           	sbcd %d0,%d0
    13ba:	8200           	orb %d0,%d1
    13bc:	0200 0100      	andib #0,%d0
    13c0:	0100           	btst %d0,%d0
    13c2:	0000 0200      	orib #0,%d0
    13c6:	0300           	btst %d1,%d0
    13c8:	0000 0100      	orib #0,%d0
    13cc:	0300           	btst %d1,%d0
    13ce:	0000 0100      	orib #0,%d0
	...
    13da:	0000 8100      	orib #0,%d0
    13de:	0000 0000      	orib #0,%d0
    13e2:	0100           	btst %d0,%d0
    13e4:	0100           	btst %d0,%d0
	...
    13ee:	0100           	btst %d0,%d0
	...
    13f8:	8300           	sbcd %d0,%d1
    13fa:	8300           	sbcd %d0,%d1
    13fc:	0000 0300      	orib #0,%d0
    1400:	0300           	btst %d1,%d0
    1402:	0200 0000      	andib #0,%d0
    1406:	0500           	btst %d2,%d0
    1408:	0300           	btst %d1,%d0
    140a:	0300           	btst %d1,%d0
    140c:	0100           	btst %d0,%d0
    140e:	0200 0300      	andib #0,%d0
    1412:	0200 0200      	andib #0,%d0
    1416:	0200 2d19      	andib #25,%d0
    141a:	2d09           	movel %a1,%fp@-
    141c:	2d89 08e9      	movel %a1,%fp@(ffffffffffffffe9,%d0:l)
    1420:	3948 50aa      	movew %a0,%a4@(20650)
    1424:	90a0           	subl %a0@-,%d0
    1426:	989c           	subl %a4@+,%d4
    1428:	d096           	addl %fp@,%d0
    142a:	5884           	addql #4,%d4
    142c:	5d05           	subqb #6,%d5
    142e:	2984 2864      	movel %d4,%a4@(64,%d2:l)
    1432:	2864           	moveal %a4@-,%a4
    1434:	20a3           	movel %a3@-,%a0@
    1436:	31a3 1b38 0b38 	movew %a3@-,%a0@(b380bb8,%d1:l:2)
    143c:	0bb8 
    143e:	1bd8           	.short 0x1bd8
    1440:	18d9           	moveb %a1@+,%a4@+
    1442:	3079 703d 787d 	moveaw 0x703d787d,%a0
    1448:	307e           	.short 0x307e
    144a:	384d           	moveaw %a5,%a4
    144c:	3ccc           	movew %a4,%fp@+
    144e:	1843           	.short 0x1843
    1450:	1823           	moveb %a3@-,%d4
    1452:	18a3           	moveb %a3@-,%a4@
    1454:	1861           	.short 0x1861
    1456:	0860 7e69      	bchg #105,%a0@-
    145a:	7e09           	moveq #9,%d7
    145c:	fe99 74f9      	cp1ldl %a1@+,%d7,#3,#249
    1460:	63fa           	blss 0x145c
    1462:	c1f9 11f3 39fb 	mulsw 0x11f339fb,%d0
    1468:	71fb f193 f003 	mvzw %zpc@(0,%sp:w)@(fffffffff00370ce),%d0
    146e:	70ce 
    1470:	f1ef           	.short 0xf1ef
    1472:	61ef           	bsrs 0x1463
    1474:	09c7           	bset %d4,%d7
    1476:	18ce           	.short 0x18ce
    1478:	0d05           	btst %d6,%d5
    147a:	0c86 0ca6 0d43 	cmpil #212208963,%d6
    1480:	1280           	moveb %d0,%a1@
    1482:	26e0           	movel %a0@-,%a3@+
    1484:	1292           	moveb %a2@,%a1@
    1486:	a3ad           	.short 0xa3ad
    1488:	c307           	abcd %d7,%d1
    148a:	aa02           	.short 0xaa02
    148c:	3481           	movew %d1,%a2@
    148e:	dd21           	addb %d6,%a1@-
    1490:	1d25           	moveb %a5@-,%fp@-
    1492:	4a07           	tstb %d7
    1494:	48a0 69c2      	movemw %d1-%d2/%d4/%d7-%a1/%fp,%a0@-
    1498:	04c2           	ff1 %d2
    149a:	0442 0460      	subiw #1120,%d2
    149e:	04c0           	ff1 %d0
    14a0:	09c1           	bset %d4,%d1
    14a2:	1fa1 0671      	moveb %a1@-,%sp@(71,%d0:w:8)
    14a6:	967b 26c1      	subw %pc@(0x1469,%d2:w:8),%d3
    14aa:	66c0           	bnes 0x146c
    14ac:	6241           	bhis 0x14ef
    14ae:	1ae1           	moveb %a1@-,%a5@+
    14b0:	3aa3           	movew %a3@-,%a5@
    14b2:	3841           	moveaw %d1,%a4
    14b4:	3862           	moveaw %a2@-,%a4
    14b6:	18c4           	moveb %d4,%a4@+
    14b8:	1c00           	moveb %d0,%d6
    14ba:	1dc1           	.short 0x1dc1
    14bc:	1fe3           	.short 0x1fe3
    14be:	3bc7           	.short 0x3bc7
    14c0:	37c7           	.short 0x37c7
    14c2:	0066 7ff6      	oriw #32758,%fp@-
    14c6:	7ef8           	moveq #-8,%d7
    14c8:	7c63           	moveq #99,%d6
    14ca:	116f 8fe7 fe67 	moveb %sp@(-28697),%a0@(-409)
    14d0:	fe61 9fc3      	cp1ldw %a1@-,%a1,#8,#451
    14d4:	1fe4           	.short 0x1fe4
    14d6:	3b0e           	movew %fp,%a5@-
    14d8:	65c4           	bcss 0x149e
    14da:	2400           	movel %d0,%d2
    14dc:	0604 2304      	addib #4,%d4
    14e0:	2004           	movel %d4,%d0
    14e2:	2280           	movel %d0,%a1@
    14e4:	4200           	clrb %d0
    14e6:	5302           	subqb #1,%d2
    14e8:	318a 2708      	movew %a2,%a0@(0,%d2:w:8)
    14ec:	0500           	btst %d2,%d0
    14ee:	0380           	bclr %d1,%d0
    14f0:	1300           	moveb %d0,%a1@-
    14f2:	5300           	subqb #1,%d0
    14f4:	7384           	mvzb %d4,%d1
    14f6:	5284           	addql #1,%d4
    14f8:	13c2 1202 1002 	moveb %d2,0x12021002
    14fe:	0102           	btst %d0,%d2
    1500:	1102           	moveb %d2,%a0@-
    1502:	1182 3102 3102 	moveb %d2,%a0@(0,%d3:w)@(3102)
    1508:	1386 1106 3302 	moveb %d6,%a1@(0)@(3302,%d1:w)
    150e:	3182 3182 3082 	movew %d2,@(0,%d3:w)@(3082)
    1514:	1080           	moveb %d0,%a0@
    1516:	3182 700e      	movew %d2,%a0@(e,%d7:w)
    151a:	710e           	mvsb %fp,%d0
    151c:	7318           	mvsb %a0@+,%d1
    151e:	f608 770e 778e 	move16 0x770e778e,%a0@+
    1524:	170e           	.short 0x170e
    1526:	061c 6400      	addib #0,%a4@+
    152a:	7202           	moveq #2,%d1
    152c:	f10e           	.short 0xf10e
    152e:	778e           	mvzb %fp,%d3
    1530:	678e           	beqs 0x14c0
    1532:	0f9e           	bclr %d7,%fp@+
    1534:	370e           	movew %fp,%a3@-
    1536:	760e           	moveq #14,%d3
    1538:	4284           	clrl %d4
    153a:	410c           	.short 0x410c
    153c:	2108           	movel %a0,%a0@-
    153e:	210c           	movel %a4,%a0@-
    1540:	5008           	.short 0x5008
    1542:	3902           	movew %d2,%a4@-
    1544:	230e           	movel %fp,%a1@-
    1546:	2308           	movel %a0,%a1@-
    1548:	2104           	movel %d4,%a0@-
    154a:	1106           	moveb %d6,%a0@-
    154c:	0004 2000      	orib #0,%d4
    1550:	300c           	movew %a4,%d0
    1552:	1000           	moveb %d0,%d0
    1554:	0000 1004      	orib #4,%d0
    1558:	1182 1080      	moveb %d2,%a0@(ffffffffffffff80,%d1:w)
    155c:	1084           	moveb %d4,%a0@
    155e:	1000           	moveb %d0,%d0
    1560:	3082           	movew %d2,%a0@
    1562:	1886           	moveb %d6,%a4@
    1564:	1006           	moveb %d6,%d0
    1566:	1006           	moveb %d6,%d0
    1568:	0002 0002      	orib #2,%d2
    156c:	0000 1004      	orib #4,%d0
    1570:	1000           	moveb %d0,%d0
    1572:	0000 0000      	orib #0,%d0
    1576:	0000 700e      	orib #14,%d0
    157a:	7386           	mvzb %d6,%d1
    157c:	7382           	mvzb %d2,%d1
    157e:	779e           	mvzb %fp@+,%d3
    1580:	038e e38c      	movepw %d1,%fp@(-7284)
    1584:	7108           	mvsb %a0,%d0
    1586:	7102           	mvsb %d2,%d0
    1588:	330e           	movew %fp,%a1@-
    158a:	330c           	movew %a4,%a1@-
    158c:	321e           	movew %fp@+,%d1
    158e:	020a           	.short 0x020a
    1590:	0206 300c      	andib #12,%d6
    1594:	300c           	movew %a4,%d0
    1596:	700c           	moveq #12,%d0
    1598:	1004           	moveb %d4,%d0
    159a:	200c           	movel %a4,%d0
    159c:	2008           	movel %a0,%d0
    159e:	1000           	moveb %d0,%d0
    15a0:	1000           	moveb %d0,%d0
    15a2:	0000 2000      	orib #0,%d0
    15a6:	3000           	movew %d0,%d0
    15a8:	0000 1000      	orib #0,%d0
    15ac:	3000           	movew %d0,%d0
    15ae:	0000 1000      	orib #0,%d0
	...
    15ba:	0000 1004      	orib #4,%d0
    15be:	0000 0000      	orib #0,%d0
    15c2:	1000           	moveb %d0,%d0
    15c4:	1000           	moveb %d0,%d0
	...
    15ce:	1000           	moveb %d0,%d0
	...
    15d8:	300c           	movew %a4,%d0
    15da:	3004           	movew %d4,%d0
    15dc:	0000 3008      	orib #8,%d0
    15e0:	3008           	movew %a0,%d0
    15e2:	2008           	movel %a0,%d0
    15e4:	0008           	.short 0x0008
    15e6:	5000           	addqb #8,%d0
    15e8:	3000           	movew %d0,%d0
    15ea:	3000           	movew %d0,%d0
    15ec:	1000           	moveb %d0,%d0
    15ee:	2000           	movel %d0,%d0
    15f0:	3000           	movew %d0,%d0
    15f2:	2000           	movel %d0,%d0
    15f4:	2000           	movel %d0,%d0
    15f6:	2000           	movel %d0,%d0
    15f8:	ffff           	.short 0xffff
    15fa:	1e7f           	.short 0x1e7f
    15fc:	e74e           	lslw #3,%d6
    15fe:	f3ee           	.short 0xf3ee
    1600:	fdf3           	.short 0xfdf3
    1602:	fefa           	.short 0xfefa
    1604:	feaf c9fb 6d77 	cp1ldl %sp@(28023),%a4,#5,#507
    160a:	7f97           	mvzb %sp@,%d7
    160c:	addf           	.short 0xaddf
    160e:	27fd           	.short 0x27fd
    1610:	34a5           	movew %a5@-,%a2@
    1612:	5835 11fd 1045 	addqb #4,@(1045fdce)@(0)
    1618:	fdce 
    161a:	17f8           	.short 0x17f8
    161c:	06fa c3de 313f 	callm #-34,%pc@(0x475f)
    1622:	c0d6           	muluw %fp@,%d0
    1624:	3e8c           	movew %a4,%sp@
    1626:	ffd9           	.short 0xffd9
    1628:	dbf3 fef7      	addal %a3@(fffffffffffffff7,%sp:l:8),%a5
    162c:	8db1 84fb      	orl %d6,%a1@(fffffffffffffffb,%a0:w:4)
    1630:	c7bf           	.short 0xc7bf
    1632:	852f 8c1b      	orb %d2,%sp@(-29669)
    1636:	8803           	orb %d3,%d4
    1638:	fe7f           	.short 0xfe7f
    163a:	fc0f fc07      	cp0ldb %sp,%sp,#7,#7
    163e:	fe03 ffc1      	cp1ldb %d3,%sp,#8,#449
    1642:	ffe1           	.short 0xffe1
    1644:	c9f3 007f      	mulsw %a3@(7f,%d0:w),%d4
    1648:	001f 080f      	orib #15,%sp@+
    164c:	7e0f           	moveq #15,%d7
    164e:	ff87 ffc3      	cp1stl %sp,%d7,#8,#451
    1652:	ffc3           	.short 0xffc3
    1654:	bfe7           	cmpal %sp@-,%sp
    1656:	ba47           	cmpw %d7,%d5
    1658:	4d45           	.short 0x4d45
    165a:	488d           	.short 0x488d
    165c:	48ab 4e0e 150c 	movemw %d1-%d3/%a1-%a3/%fp,%a3@(5388)
    1662:	8b8e 881c      	unpk %fp@-,%a5@-,#-30692
    1666:	8228 4a68      	orb %a0@(19048),%d1
    166a:	ca30 4580      	andb @(0,%d4:w:4),%d5
    166e:	4900           	chkl %d0,%d4
    1670:	c700           	abcd %d0,%d3
    1672:	9500           	subxb %d0,%d2
    1674:	2200           	movel %d0,%d1
    1676:	2b00           	movel %d0,%a5@-
    1678:	dc23           	addb %a3@-,%d6
    167a:	d9fb db9f dd06 	addal %zpc@(0)@(ffffffffdd068f04,%a5:l:2),%a4
    1680:	8f04 
    1682:	8786 8604      	unpk %d6,%d3,#-31228
    1686:	9e18           	subb %a0@+,%d7
    1688:	4618           	notb %a0@+
    168a:	c470 c380      	andw @(0,%a4:w:2),%d2
    168e:	c700           	abcd %d0,%d3
    1690:	c700           	abcd %d0,%d3
    1692:	8300           	sbcd %d0,%d1
    1694:	0e00           	.short 0x0e00
    1696:	0700           	btst %d3,%d0
    1698:	fbe7           	.short 0xfbe7
    169a:	f29f acf9      	fbst 0xffffc395
    169e:	2f1e           	movel %fp@+,%sp@-
    16a0:	1f3c bf9e      	moveb #-98,%sp@-
    16a4:	9c2c 8200      	subb %a4@(-32256),%d6
    16a8:	9e80           	subl %d0,%d7
    16aa:	9d80           	subxl %d0,%d6
    16ac:	1880           	moveb %d0,%a4@
    16ae:	5000           	addqb #8,%d0
    16b0:	9800           	subb %d0,%d4
    16b2:	bf00           	eorb %d7,%d0
    16b4:	7e00           	moveq #0,%d7
    16b6:	ff00 3200      	cp1stb %d3,%d0,#2,#0
    16ba:	3600           	movew %d0,%d3
    16bc:	be00           	cmpb %d0,%d7
    16be:	4b00           	chkl %d0,%d5
    16c0:	4a00           	tstb %d0
    16c2:	8a00           	orb %d0,%d5
    16c4:	8a00           	orb %d0,%d5
    16c6:	8a00           	orb %d0,%d5
    16c8:	0600 0e00      	addib #0,%d0
    16cc:	2e00           	movel %d0,%d7
    16ce:	2a00           	movel %d0,%d5
    16d0:	0b00           	btst %d5,%d0
    16d2:	ae00 ac00      	macl %d0,%d7
    16d6:	8c00           	orb %d0,%d6
    16d8:	6e00 ee00      	bgtw 0x4da
    16dc:	6600 c700      	bnew 0xffffddde
    16e0:	c600           	andb %d0,%d3
    16e2:	8600           	orb %d0,%d3
    16e4:	8600           	orb %d0,%d3
    16e6:	8600           	orb %d0,%d3
    16e8:	1e00           	moveb %d0,%d7
    16ea:	1e00           	moveb %d0,%d7
    16ec:	1e00           	moveb %d0,%d7
    16ee:	1e00           	moveb %d0,%d7
    16f0:	1f00           	moveb %d0,%sp@-
    16f2:	9600           	subb %d0,%d3
    16f4:	0c00 5c00      	cmpib #0,%d0
    16f8:	8600           	orb %d0,%d3
    16fa:	2200           	movel %d0,%d1
    16fc:	ea00           	asrb #5,%d0
    16fe:	df00           	addxb %d0,%d7
    1700:	dc00           	addb %d0,%d6
    1702:	1800           	moveb %d0,%d4
    1704:	9200           	subb %d0,%d1
    1706:	b200           	cmpb %d0,%d1
    1708:	3e00           	movew %d0,%d7
    170a:	3e00           	movew %d0,%d7
    170c:	1e00           	moveb %d0,%d7
    170e:	1e00           	moveb %d0,%d7
    1710:	3f00           	movew %d0,%sp@-
    1712:	fe00 7c00      	cp1ldb %d0,%d7,#7,#0
    1716:	3c00           	movew %d0,%d6
    1718:	2c00           	movel %d0,%d6
    171a:	2e00           	movel %d0,%d7
    171c:	2c00           	movel %d0,%d6
    171e:	0c00 0c00      	cmpib #0,%d0
    1722:	1c00           	moveb %d0,%d6
    1724:	0400 9c00      	subib #0,%d0
    1728:	1800           	moveb %d0,%d4
    172a:	1000           	moveb %d0,%d0
    172c:	9400           	subb %d0,%d2
    172e:	1600           	moveb %d0,%d3
    1730:	1400           	moveb %d0,%d2
    1732:	1400           	moveb %d0,%d2
    1734:	1400           	moveb %d0,%d2
    1736:	1400           	moveb %d0,%d2
    1738:	5c00           	addqb #6,%d0
    173a:	1e00           	moveb %d0,%d7
    173c:	1c00           	moveb %d0,%d6
    173e:	1c00           	moveb %d0,%d6
    1740:	1c00           	moveb %d0,%d6
    1742:	0c00 0c00      	cmpib #0,%d0
    1746:	8400           	orb %d0,%d2
    1748:	0400 0c00      	subib #0,%d0
    174c:	8c00           	orb %d0,%d6
    174e:	0600 0c00      	addib #0,%d0
    1752:	0c00 0c00      	cmpib #0,%d0
    1756:	0c00 a000      	cmpib #0,%d0
    175a:	4000           	negxb %d0
    175c:	5800           	addqb #4,%d0
    175e:	7c00           	moveq #0,%d6
    1760:	3800           	movew %d0,%d4
    1762:	3400           	movew %d0,%d2
    1764:	1800           	moveb %d0,%d4
    1766:	0c00 0c00      	cmpib #0,%d0
    176a:	1c00           	moveb %d0,%d6
    176c:	9c00           	subb %d0,%d6
    176e:	1e00           	moveb %d0,%d7
    1770:	3800           	movew %d0,%d4
    1772:	1400           	moveb %d0,%d2
    1774:	0c00 1c00      	cmpib #0,%d0
    1778:	0600 1400      	addib #0,%d0
    177c:	1400           	moveb %d0,%d2
    177e:	1000           	moveb %d0,%d0
    1780:	1400           	moveb %d0,%d2
    1782:	1c00           	moveb %d0,%d6
    1784:	1000           	moveb %d0,%d0
    1786:	1400           	moveb %d0,%d2
    1788:	1400           	moveb %d0,%d2
    178a:	1000           	moveb %d0,%d0
    178c:	1000           	moveb %d0,%d0
    178e:	0000 0000      	orib #0,%d0
    1792:	0800 0800      	btst #0,%d0
    1796:	0800 0e00      	btst #0,%d0
    179a:	0400 0400      	subib #0,%d0
    179e:	0800 0c00      	btst #0,%d0
    17a2:	0400 0c00      	subib #0,%d0
    17a6:	0c00 0c00      	cmpib #0,%d0
    17aa:	0c00 0800      	cmpib #0,%d0
    17ae:	0400 0400      	subib #0,%d0
    17b2:	0000 1000      	orib #0,%d0
    17b6:	0000 1e00      	orib #0,%d0
    17ba:	1c00           	moveb %d0,%d6
    17bc:	1800           	moveb %d0,%d4
    17be:	3400           	movew %d0,%d2
    17c0:	0400 0c00      	subib #0,%d0
    17c4:	1c00           	moveb %d0,%d6
    17c6:	1800           	moveb %d0,%d4
    17c8:	1000           	moveb %d0,%d0
    17ca:	0400 0400      	subib #0,%d0
    17ce:	1c00           	moveb %d0,%d6
    17d0:	3c00           	movew %d0,%d6
    17d2:	1800           	moveb %d0,%d4
    17d4:	1800           	moveb %d0,%d4
    17d6:	1800           	moveb %d0,%d4
    17d8:	0000 0800      	orib #0,%d0
    17dc:	0000 1000      	orib #0,%d0
    17e0:	0800 0800      	btst #0,%d0
    17e4:	0800 0000      	btst #0,%d0
    17e8:	1000           	moveb %d0,%d0
	...
    17fa:	0000 0800      	orib #0,%d0
    17fe:	0800 0000      	btst #0,%d0
    1802:	0000 0000      	orib #0,%d0
    1806:	0800 0000      	btst #0,%d0
	...
    1816:	0000 1800      	orib #0,%d0
    181a:	1800           	moveb %d0,%d4
    181c:	1000           	moveb %d0,%d0
    181e:	0000 1800      	orib #0,%d0
    1822:	3800           	movew %d0,%d4
    1824:	1800           	moveb %d0,%d4
    1826:	1000           	moveb %d0,%d0
    1828:	0000 1000      	orib #0,%d0
    182c:	1000           	moveb %d0,%d0
    182e:	1000           	moveb %d0,%d0
	...
    1838:	0480 0680 0b80 	subil #109054848,%d0
    183e:	0580           	bclr %d2,%d0
    1840:	0500           	btst %d2,%d0
    1842:	0b80           	bclr %d5,%d0
    1844:	0300           	btst %d1,%d0
    1846:	0780           	bclr %d3,%d0
    1848:	0300           	btst %d1,%d0
    184a:	0100           	btst %d0,%d0
    184c:	0700           	btst %d3,%d0
    184e:	0200 0280      	andib #-128,%d0
    1852:	0200 0500      	andib #0,%d0
    1856:	0000 0380      	orib #-128,%d0
    185a:	0380           	bclr %d1,%d0
    185c:	0780           	bclr %d3,%d0
    185e:	0380           	bclr %d1,%d0
    1860:	0300           	btst %d1,%d0
    1862:	0780           	bclr %d3,%d0
    1864:	0700           	btst %d3,%d0
    1866:	0180           	bclr %d0,%d0
    1868:	0100           	btst %d0,%d0
    186a:	0300           	btst %d1,%d0
    186c:	0100           	btst %d0,%d0
    186e:	0100           	btst %d0,%d0
    1870:	0180           	bclr %d0,%d0
    1872:	0100           	btst %d0,%d0
    1874:	0300           	btst %d1,%d0
    1876:	0200 0f80      	andib #-128,%d0
    187a:	0d80           	bclr %d6,%d0
    187c:	0081 0f80 0f00 	oril #260050688,%d1
    1882:	0180           	bclr %d0,%d0
    1884:	1900           	moveb %d0,%a4@-
    1886:	0e80           	.short 0x0e80
    1888:	0700           	btst %d3,%d0
    188a:	0400 0200      	subib #0,%d0
    188e:	0700           	btst %d3,%d0
    1890:	0f80           	bclr %d7,%d0
    1892:	0700           	btst %d3,%d0
    1894:	0000 0400      	orib #0,%d0
    1898:	0600 0200      	addib #0,%d0
    189c:	0200 0600      	andib #0,%d0
	...
    18c0:	0200 0000      	andib #0,%d0
	...
    18d8:	0201 0600      	andib #0,%d1
    18dc:	0600 0200      	addib #0,%d0
    18e0:	0400 0401      	subib #1,%d0
    18e4:	0400 0000      	subib #0,%d0
	...
    18f0:	0001 0000      	orib #0,%d1
    18f4:	0000 0000      	orib #0,%d0
    18f8:	5140           	subqw #8,%d0
    18fa:	7140           	mvsw %d0,%d0
    18fc:	e380           	asll #1,%d0
    18fe:	a080           	.short 0xa080
    1900:	6780           	beqs 0x1882
    1902:	1f40 2500      	moveb %d0,%sp@(9472)
    1906:	2900           	movel %d0,%a4@-
    1908:	3800           	movew %d0,%d4
    190a:	4800           	nbcd %d0
    190c:	2200           	movel %d0,%d1
    190e:	2000           	movel %d0,%d0
    1910:	2800           	movel %d0,%d4
    1912:	0000 4000      	orib #0,%d0
    1916:	4000           	negxb %d0
    1918:	30c0           	movew %d0,%a0@+
    191a:	30c0           	movew %d0,%a0@+
    191c:	6080           	bras 0x189e
    191e:	6180           	bsrs 0x18a0
    1920:	0080 06c0 1c80 	oril #113253504,%d0
    1926:	1800           	moveb %d0,%d4
    1928:	1900           	moveb %d0,%a4@-
    192a:	3800           	movew %d0,%d4
    192c:	1000           	moveb %d0,%d0
    192e:	1000           	moveb %d0,%d0
    1930:	1800           	moveb %d0,%d4
    1932:	7000           	moveq #0,%d0
    1934:	2000           	movel %d0,%d0
    1936:	2000           	movel %d0,%d0
    1938:	f3c0           	.short 0xf3c0
    193a:	c3c0           	mulsw %d0,%d1
    193c:	0180           	bclr %d0,%d0
    193e:	2600           	movel %d0,%d3
    1940:	ff80 efc0      	cp1stl %fp,%d0,#8,#448
    1944:	7780           	mvzb %d0,%d3
    1946:	fb00           	.short 0xfb00
    1948:	6a00 1200      	bplw 0x2b4a
    194c:	f000 7000      	pmove %d0,%bad0
    1950:	f800           	.short 0xf800
    1952:	f000           	.short 0xf000
    1954:	e000           	asrb #8,%d0
    1956:	e000           	asrb #8,%d0
    1958:	4000           	negxb %d0
    195a:	5000           	addqb #8,%d0
    195c:	c000           	andb %d0,%d0
    195e:	8000           	orb %d0,%d0
    1960:	2000           	movel %d0,%d0
    1962:	6000 0000      	braw 0x1964
    1966:	6000 4000      	braw 0x5968
    196a:	4000           	negxb %d0
    196c:	2000           	movel %d0,%d0
    196e:	8000           	orb %d0,%d0
    1970:	4000           	negxb %d0
    1972:	4000           	negxb %d0
    1974:	4000           	negxb %d0
    1976:	4000           	negxb %d0
    1978:	2000           	movel %d0,%d0
    197a:	3000           	movew %d0,%d0
    197c:	2000           	movel %d0,%d0
    197e:	6000 6000      	braw 0x7980
    1982:	2000           	movel %d0,%d0
    1984:	6000 2000      	braw 0x3986
    1988:	2000           	movel %d0,%d0
    198a:	2000           	movel %d0,%d0
    198c:	6000 6000      	braw 0x798e
    1990:	2000           	movel %d0,%d0
    1992:	0000 0000      	orib #0,%d0
    1996:	0000 e000      	orib #0,%d0
    199a:	f000 6000      	pmove %d0,%psr
    199e:	2000           	movel %d0,%d0
    19a0:	8000           	orb %d0,%d0
    19a2:	c000           	andb %d0,%d0
    19a4:	a000 c000      	macw %d0l,%d0l
    19a8:	e000           	asrb #8,%d0
    19aa:	e000           	asrb #8,%d0
    19ac:	8000           	orb %d0,%d0
    19ae:	2000           	movel %d0,%d0
    19b0:	e000           	asrb #8,%d0
    19b2:	c000           	andb %d0,%d0
    19b4:	c000           	andb %d0,%d0
    19b6:	c000           	andb %d0,%d0
	...
    19f8:	8000           	orb %d0,%d0
    19fa:	8000           	orb %d0,%d0
    19fc:	8000           	orb %d0,%d0
    19fe:	8000           	orb %d0,%d0
    1a00:	8000           	orb %d0,%d0
    1a02:	8000           	orb %d0,%d0
	...
    1a18:	e900           	aslb #4,%d0
    1a1a:	f780           	.short 0xf780
    1a1c:	7280           	moveq #-128,%d1
    1a1e:	0a80 f780 f2c0 	eoril #-142544192,%d0
    1a24:	f2c0 0f80 f2c0 	fbfl 0xf810ce6
    1a2a:	f2c0 0d60 30b0 	fbfl 0xd604adc
    1a30:	f1b0           	.short 0xf1b0
    1a32:	7658           	moveq #88,%d3
    1a34:	082c 382c 1f80 	btst #44,%a4@(8064)
    1a3a:	0f00           	btst %d7,%d0
    1a3c:	8f00           	sbcd %d0,%d7
    1a3e:	ff00 0e00      	cp1stb %d0,%d0,#8,#0
    1a42:	0f00           	btst %d7,%d0
    1a44:	0f00           	btst %d7,%d0
    1a46:	fe00 0f00      	cp1ldb %d0,%d0,#8,#256
    1a4a:	0f00           	btst %d7,%d0
    1a4c:	ff80 cfc0      	cp1stl %a4,%d0,#8,#448
    1a50:	0fc0           	bset %d7,%d0
    1a52:	0fe0           	bset %d7,%a0@-
    1a54:	77f0 07f0 01c0 	mvzw @(1c007c0),%d3
    1a5a:	07c0 
    1a5c:	03c0           	bset %d1,%d0
    1a5e:	03c0           	bset %d1,%d0
    1a60:	07c0           	bset %d3,%d0
    1a62:	03e0           	bset %d1,%a0@-
    1a64:	03e0           	bset %d1,%a0@-
    1a66:	0fe0           	bset %d7,%a0@-
    1a68:	03e0           	bset %d1,%a0@-
    1a6a:	03f0 01f0 00f8 	bset %d1,@(f801fc)
    1a70:	01fc 
    1a72:	007c 003e      	oriw #62,%sr
    1a76:	003f           	.short 0x003f
    1a78:	01cc 01cc      	movepl %d0,%a4@(460)
    1a7c:	0038 01d0 00d0 	orib #-48,0xd0
    1a82:	0354           	bchg %d1,%a4@
    1a84:	03a8 0320      	bclr %d1,%a0@(800)
    1a88:	0c20 0fc0      	cmpib #-64,%a0@-
    1a8c:	1ca0           	moveb %a0@-,%fp@
    1a8e:	08a0 34a0      	bclr #-96,%a0@-
    1a92:	7f40           	mvsw %d0,%d7
    1a94:	3940 1900      	movew %d0,%a4@(6400)
    1a98:	0038 0038 01f8 	orib #56,0x1f8
    1a9e:	0038 0138 00f8 	orib #56,0xf8
    1aa4:	0070 04f0 03f0 	oriw #1264,@(1e003c0)
    1aaa:	01e0 03c0 
    1aae:	37c0           	.short 0x37c0
    1ab0:	0fc0           	bset %d7,%d0
    1ab2:	0780           	bclr %d3,%d0
    1ab4:	4780           	chkw %d0,%d3
    1ab6:	6780           	beqs 0x1a38
    1ab8:	000c           	.short 0x000c
    1aba:	000c           	.short 0x000c
    1abc:	003c 001c      	orib #28,%ccr
    1ac0:	001c 001c      	orib #28,%a4@+
    1ac4:	0038 0038 0038 	orib #56,0x38
    1aca:	0070 00f0 00f0 	oriw #240,%a0@(fffffffffffffff0,%d0:w)
    1ad0:	00f0           	.short 0x00f0
    1ad2:	07e0           	bset %d3,%a0@-
    1ad4:	01e0           	bset %d0,%a0@-
    1ad6:	01c0           	bset %d0,%d0
    1ad8:	0500           	btst %d2,%d0
    1ada:	1b00           	moveb %d0,%a5@-
    1adc:	1b00           	moveb %d0,%a5@-
    1ade:	0280 0e80 0e80 	andil #243273344,%d0
    1ae4:	0d40           	bchg %d6,%d0
    1ae6:	02a0 06a0 07a0 	andil #111151008,%a0@-
    1aec:	0650 00b0      	addiw #176,%a0@
    1af0:	0398           	bclr %d1,%a0@+
    1af2:	01d8           	bset %d0,%a0@+
    1af4:	0194           	bclr %d0,%a4@
    1af6:	004c           	.short 0x004c
    1af8:	1e00           	moveb %d0,%d7
    1afa:	0600 0600      	addib #0,%d0
    1afe:	1f00           	moveb %d0,%sp@-
    1b00:	1300           	moveb %d0,%a1@-
    1b02:	0300           	btst %d1,%d0
    1b04:	0380           	bclr %d1,%d0
    1b06:	0dc0           	bset %d6,%d0
    1b08:	09c0           	bset %d4,%d0
    1b0a:	09c0           	bset %d4,%d0
    1b0c:	01e0           	bset %d0,%a0@-
    1b0e:	0360           	bchg %d1,%a0@-
    1b10:	0070 0030 0078 	oriw #48,%a0@(78,%d0:w)
    1b16:	01b8 0700      	bclr %d0,0x700
    1b1a:	0300           	btst %d1,%d0
    1b1c:	0300           	btst %d1,%d0
    1b1e:	0380           	bclr %d1,%d0
    1b20:	0380           	bclr %d1,%d0
    1b22:	03c0           	bset %d1,%d0
    1b24:	01c0           	bset %d0,%d0
    1b26:	00e0           	.short 0x00e0
    1b28:	00e0           	.short 0x00e0
    1b2a:	00f0           	.short 0x00f0
    1b2c:	0070 0030 0018 	oriw #48,%a0@(18,%d0:w)
    1b32:	0018 001c      	orib #28,%a0@+
    1b36:	000c           	.short 0x000c
    1b38:	0090 01d0 0090 	oril #30408848,%a0@
    1b3e:	03b0 0360 0360 	bclr %d1,%a0@(360)
    1b44:	0560           	bchg %d2,%a0@-
    1b46:	0ec0           	.short 0x0ec0
    1b48:	06c0           	rtm %d0
    1b4a:	1140 1980      	moveb %d0,%a0@(6528)
    1b4e:	0b00           	btst %d5,%d0
    1b50:	0500           	btst %d2,%d0
    1b52:	1b00           	moveb %d0,%a5@-
    1b54:	1b00           	moveb %d0,%a5@-
    1b56:	0b00           	btst %d5,%d0
    1b58:	0060 0020      	oriw #32,%a0@-
    1b5c:	0160           	bchg %d0,%a0@-
    1b5e:	00e0           	.short 0x00e0
    1b60:	00c0           	bitrev %d0
    1b62:	04c0           	ff1 %d0
    1b64:	03c0           	bset %d1,%d0
    1b66:	0180           	bclr %d0,%d0
    1b68:	0980           	bclr %d4,%d0
    1b6a:	0f80           	bclr %d7,%d0
    1b6c:	0700           	btst %d3,%d0
    1b6e:	1600           	moveb %d0,%d3
    1b70:	1e00           	moveb %d0,%d7
    1b72:	0600 0600      	addib #0,%d0
    1b76:	1600           	moveb %d0,%d3
    1b78:	0010 0010      	orib #16,%a0@
    1b7c:	0010 0030      	orib #48,%a0@
    1b80:	0060 0060      	oriw #96,%a0@-
    1b84:	0060 00c0      	oriw #192,%a0@-
    1b88:	00c0           	bitrev %d0
    1b8a:	01c0           	bset %d0,%d0
    1b8c:	0180           	bclr %d0,%d0
    1b8e:	0300           	btst %d1,%d0
    1b90:	0700           	btst %d3,%d0
    1b92:	0300           	btst %d1,%d0
    1b94:	0300           	btst %d1,%d0
    1b96:	0300           	btst %d1,%d0
    1b98:	0300           	btst %d1,%d0
    1b9a:	0300           	btst %d1,%d0
    1b9c:	0380           	bclr %d1,%d0
    1b9e:	0300           	btst %d1,%d0
    1ba0:	0180           	bclr %d0,%d0
    1ba2:	0340           	bchg %d1,%d0
    1ba4:	03c0           	bset %d1,%d0
    1ba6:	0280 01c0 01e0 	andil #29360608,%d0
    1bac:	00a0 0070 00d0 	oril #7340240,%a0@-
    1bb2:	00d0           	.short 0x00d0
    1bb4:	0030 00d0 0400 	orib #-48,%a0@(0,%d0:w:4)
    1bba:	0000 0000      	orib #0,%d0
    1bbe:	0180           	bclr %d0,%d0
    1bc0:	0200 00c0      	andib #-64,%d0
    1bc4:	0040 0140      	oriw #320,%d0
    1bc8:	0000 0020      	orib #32,%d0
    1bcc:	0040 00c0      	oriw #192,%d0
    1bd0:	0020 0020      	orib #32,%a0@-
    1bd4:	00e0           	.short 0x00e0
    1bd6:	0020 0100      	orib #0,%a0@-
    1bda:	0100           	btst %d0,%d0
    1bdc:	0180           	bclr %d0,%d0
    1bde:	0080 0080 0080 	oril #8388736,%d0
    1be4:	0080 00c0 0040 	oril #12582976,%d0
    1bea:	0040 0020      	oriw #32,%d0
    1bee:	0030 0010 0010 	orib #16,%a0@(10,%d0:w)
    1bf4:	0030 0010 0000 	orib #16,%a0@(0,%d0:w)
    1bfa:	0100           	btst %d0,%d0
    1bfc:	0200 0100      	andib #0,%d0
    1c00:	0200 0300      	andib #0,%d0
    1c04:	0100           	btst %d0,%d0
    1c06:	0200 0600      	andib #0,%d0
    1c0a:	0600 0200      	addib #0,%d0
    1c0e:	0600 0600      	addib #0,%d0
    1c12:	0100           	btst %d0,%d0
    1c14:	0400 0500      	subib #0,%d0
    1c18:	0000 0000      	orib #0,%d0
    1c1c:	0100           	btst %d0,%d0
    1c1e:	0200 0100      	andib #0,%d0
    1c22:	0000 0200      	orib #0,%d0
    1c26:	0500           	btst %d2,%d0
    1c28:	0000 0000      	orib #0,%d0
    1c2c:	0400 0000      	subib #0,%d0
    1c30:	0000 0600      	orib #0,%d0
    1c34:	0300           	btst %d1,%d0
    1c36:	0200 0000      	andib #0,%d0
    1c3a:	0000 0100      	orib #0,%d0
    1c3e:	0100           	btst %d0,%d0
    1c40:	0100           	btst %d0,%d0
    1c42:	0100           	btst %d0,%d0
    1c44:	0100           	btst %d0,%d0
    1c46:	0300           	btst %d1,%d0
    1c48:	0200 0200      	andib #0,%d0
    1c4c:	0200 0200      	andib #0,%d0
    1c50:	0200 0300      	andib #0,%d0
    1c54:	0100           	btst %d0,%d0
    1c56:	0100           	btst %d0,%d0
    1c58:	0360           	bchg %d1,%a0@-
    1c5a:	08e0 0cc0      	bset #-64,%a0@-
    1c5e:	0580           	bclr %d2,%d0
    1c60:	0280 0d80 0d80 	andil #226495872,%d0
    1c66:	0580           	bclr %d2,%d0
    1c68:	0280 1980 0b00 	andil #427821824,%d0
    1c6e:	0500           	btst %d2,%d0
    1c70:	1b00           	moveb %d0,%a5@-
    1c72:	1b00           	moveb %d0,%a5@-
    1c74:	0b00           	btst %d5,%d0
    1c76:	0500           	btst %d2,%d0
    1c78:	04d0           	.short 0x04d0
    1c7a:	07e0           	bset %d3,%a0@-
    1c7c:	03c0           	bset %d1,%d0
    1c7e:	0b00           	btst %d5,%d0
    1c80:	0f80           	bclr %d7,%d0
    1c82:	0380           	bclr %d1,%d0
    1c84:	0300           	btst %d1,%d0
    1c86:	0b00           	btst %d5,%d0
    1c88:	0f80           	bclr %d7,%d0
    1c8a:	0780           	bclr %d3,%d0
    1c8c:	1600           	moveb %d0,%d3
    1c8e:	1f00           	moveb %d0,%sp@-
    1c90:	0700           	btst %d3,%d0
    1c92:	0600 1600      	addib #0,%d0
    1c96:	1f00           	moveb %d0,%sp@-
    1c98:	0070 0080 0000 	oriw #128,%a0@(0,%d0:w)
    1c9e:	0180           	bclr %d0,%d0
    1ca0:	0300           	btst %d1,%d0
    1ca2:	0000 0180      	orib #-128,%d0
    1ca6:	0180           	bclr %d0,%d0
    1ca8:	0300           	btst %d1,%d0
    1caa:	0000 0300      	orib #0,%d0
    1cae:	0600 0000      	addib #0,%d0
    1cb2:	0300           	btst %d1,%d0
    1cb4:	0300           	btst %d1,%d0
    1cb6:	0600 00e0      	addib #-32,%d0
    1cba:	00f8           	.short 0x00f8
    1cbc:	0058 003c      	oriw #60,%a0@+
    1cc0:	006c 006c 0018 	oriw #108,%a4@(24)
    1cc6:	0068 0048 00ec 	oriw #72,%a0@(236)
    1ccc:	005c 01f8      	oriw #504,%a4@+
    1cd0:	01b0 01b8 02f8 	bclr %d0,@(2f80768,%d0:w)
    1cd6:	0768 
    1cd8:	0018 0008      	orib #8,%a0@+
    1cdc:	003c 0074      	orib #116,%ccr
    1ce0:	0014 001c      	orib #28,%a4@
    1ce4:	007c 0014      	oriw #20,%sr
    1ce8:	0034 0014 00bc 	orib #20,%a4@(ffffffffffffffbc,%d0:w)
    1cee:	007c 006c      	oriw #108,%sr
    1cf2:	0268 01f8 00f8 	andiw #504,%a0@(248)
    1cf8:	0038 0030 0004 	orib #48,0x4
    1cfe:	0008           	.short 0x0008
    1d00:	0008           	.short 0x0008
    1d02:	0000 0004      	orib #4,%d0
    1d06:	000c           	.short 0x000c
    1d08:	000c           	.short 0x000c
    1d0a:	0008           	.short 0x0008
    1d0c:	0000 0014      	orib #20,%d0
    1d10:	003c 0030      	orib #48,%ccr
    1d14:	0020 0050      	orib #80,%a0@-
    1d18:	81c0           	divsw %d0,%d0
    1d1a:	81c0           	divsw %d0,%d0
    1d1c:	00c0           	bitrev %d0
    1d1e:	01e0           	bset %d0,%a0@-
    1d20:	01c7           	bset %d0,%d7
    1d22:	00df           	.short 0x00df
    1d24:	0117           	btst %d0,%sp@
    1d26:	016e 00dc      	bchg %d0,%fp@(220)
    1d2a:	00f8           	.short 0x00f8
    1d2c:	00f0           	.short 0x00f0
    1d2e:	00f0           	.short 0x00f0
    1d30:	0060 00d8      	oriw #216,%a0@-
    1d34:	00f8           	.short 0x00f8
    1d36:	00a0 8060 8060 	oril #-2141159328,%a0@-
    1d3c:	01a0           	bclr %d0,%a0@-
    1d3e:	0021 0060      	orib #96,%a1@-
    1d42:	01a0           	bclr %d0,%a0@-
    1d44:	00ea           	.short 0x00ea
    1d46:	00d4           	.short 0x00d4
    1d48:	016c 0018      	bchg %d0,%a4@(24)
    1d4c:	0030 0050 0098 	orib #80,%a0@(ffffffffffffff98,%d0:w)
    1d52:	0028 0038 0058 	orib #56,%a0@(88)
    1d58:	00a0 00a0 0060 	oril #10485856,%a0@-
    1d5e:	00c1           	bitrev %d1
    1d60:	00a1 0062 0066 	oril #6422630,%a1@-
    1d66:	000c           	.short 0x000c
    1d68:	001c 0078      	orib #120,%a4@+
    1d6c:	0040 0020      	oriw #32,%d0
    1d70:	0038 0030 0000 	orib #48,0x0
    1d76:	0038 2358 275e 	orib #88,0x275e
    1d7c:	04a6 00a0 0404 	subil #10486788,%fp@-
    1d82:	0444 0000      	subiw #0,%d4
    1d86:	0040 0000      	oriw #0,%d0
	...
    1d96:	0000 2404      	orib #4,%d0
    1d9a:	2002           	movel %d2,%d0
    1d9c:	0002 0404      	orib #4,%d2
    1da0:	0404 0404      	subib #4,%d4
    1da4:	0040 0040      	oriw #64,%d0
	...
    1db8:	00a0 00a0 0040 	oril #10485824,%a0@-
    1dbe:	0040 0040      	oriw #64,%d0
    1dc2:	0040 0040      	oriw #64,%d0
    1dc6:	0040 0000      	oriw #0,%d0
	...
    1dd6:	0000 0110      	orib #16,%d0
    1dda:	01b2 1eef      	bclr %d0,%a2@(ffffffffffffffef,%d1:l:8)
    1dde:	3a4b           	moveaw %a3,%a5
    1de0:	7b5b           	mvsw %a3@+,%d5
    1de2:	7d5d           	mvsw %a5@+,%d6
    1de4:	7d5d           	mvsw %a5@+,%d6
    1de6:	7f5f           	mvsw %sp@+,%d7
    1de8:	ff5f d75d      	cp1stw %a5,%sp@+,#4,#349
    1dec:	3953 9eef      	movew %a3@,%a4@(-24849)
    1df0:	92a9 3555      	subl %a1@(13653),%d1
    1df4:	264c           	moveal %a4,%a3
    1df6:	02e9           	.short 0x02e9
    1df8:	0110           	btst %d0,%a0@
    1dfa:	06ad 1359 27fc 	addil #324610044,%a5@(19386)
    1e00:	4bba 
    1e02:	55b5 89b8 95b5 	subql #2,@(ffffffff95b54bba,%a0:l)
    1e08:	4bba 
    1e0a:	6db6           	blts 0x1dc2
    1e0c:	a7bc           	.short 0xa7bc
    1e0e:	a318           	.short 0xa318
    1e10:	af5e           	mov3ql #7,%fp@+
    1e12:	0eae           	.short 0x0eae
    1e14:	04a4 2405 0000 	subil #604307456,%a4@-
    1e1a:	0003 0000      	orib #0,%d3
    1e1e:	0000 0e0e      	orib #14,%d0
    1e22:	1e4f           	.short 0x1e4f
    1e24:	1e0f           	.short 0x1e0f
    1e26:	1e4f           	.short 0x1e4f
    1e28:	0e0e           	.short 0x0e0e
    1e2a:	064c           	.short 0x064c
    1e2c:	0000 0040      	orib #64,%d0
    1e30:	0000 0000      	orib #0,%d0
    1e34:	0110           	btst %d0,%a0@
    1e36:	0110           	btst %d0,%a0@
    1e38:	0000 e000      	orib #0,%d0
    1e3c:	2700           	movel %d0,%a3@-
    1e3e:	dd40           	addxw %d0,%d6
    1e40:	c4e0           	muluw %a0@-,%d2
    1e42:	c030 c038      	andb %a0@(38,%a4:w),%d0
    1e46:	c030 e010      	andb %a0@(10,%fp:w),%d0
    1e4a:	6070           	bras 0x1ebc
    1e4c:	80a0           	orl %a0@-,%d0
    1e4e:	2060           	moveal %a0@-,%a0
    1e50:	2080           	movel %d0,%a0@
    1e52:	80e0           	divuw %a0@-,%d0
    1e54:	8040           	orw %d0,%d0
    1e56:	00a0 0000 1000 	oril #4096,%a0@-
    1e5c:	d880           	addl %d0,%d4
    1e5e:	82c0           	divuw %d0,%d1
    1e60:	4830 4040      	nbcd %a0@(40,%d4:w)
    1e64:	2008           	movel %a0,%d0
    1e66:	2018           	movel %a0@+,%d0
    1e68:	4028 c038      	negxb %a0@(-16328)
    1e6c:	a050           	.short 0xa050
    1e6e:	a0e0 a060      	macw %d0u,%a2l,%a0@-&,%a0
    1e72:	0020 00e0      	orib #-32,%a0@-
    1e76:	8160           	orw %d0,%a0@-
    1e78:	0000 3000      	orib #0,%d0
    1e7c:	8980 4c00      	unpk %d0,%d4,#19456
    1e80:	0050 0010      	oriw #16,%a0@
    1e84:	0010 0008      	orib #8,%a0@
    1e88:	0018 0008      	orib #8,%a0@+
    1e8c:	0070 0000 0060 	oriw #0,%a0@(60,%d0:w)
    1e92:	0040 0020      	oriw #32,%d0
    1e96:	00c0           	bitrev %d0
    1e98:	0000 03c4      	orib #-60,%d0
    1e9c:	726c           	moveq #108,%d1
    1e9e:	5fbb           	.short 0x5fbb
    1ea0:	fc92 9ed6      	cp0ldl %a2@,%a1,#8,#214
    1ea4:	1f57 1f57      	moveb %sp@,%sp@(8023)
    1ea8:	1fd7           	.short 0x1fd7
    1eaa:	3fd7           	.short 0x3fd7
    1eac:	35d7           	.short 0x35d7
    1eae:	0e54           	.short 0x0e54
    1eb0:	27bb 24aa 0d55 	movel %pc@(0x1e5c,%d2:w:4),%a3@(0)@(0)
    1eb6:	0993           	bclr %d4,%a3@
    1eb8:	0000 0444      	orib #68,%d0
    1ebc:	8dab a4d6      	orl %d6,%a3@(-23338)
    1ec0:	2bff           	.short 0x2bff
    1ec2:	96ee 156d      	subaw %fp@(5485),%a3
    1ec6:	226e 256d      	moveal %fp@(9581),%a1
    1eca:	12ee 1b6d      	moveb %fp@(7021),%a1@+
    1ece:	29ef           	.short 0x29ef
    1ed0:	28c6           	movel %d6,%a4@+
    1ed2:	2bd7           	.short 0x2bd7
    1ed4:	03ab 016d      	bclr %d1,%a3@(365)
    1ed8:	0000 0600      	orib #0,%d0
    1edc:	c800           	andb %d0,%d4
    1ede:	1800           	moveb %d0,%d4
    1ee0:	6000 8383      	braw 0xffffa265
    1ee4:	0793           	bclr %d3,%a3@
    1ee6:	0783           	bclr %d3,%d3
    1ee8:	0793           	bclr %d3,%a3@
    1eea:	0383           	bclr %d1,%d3
    1eec:	0193           	bclr %d0,%a3@
    1eee:	0000 0010      	orib #16,%d0
	...
    1efe:	c000           	andb %d0,%d0
    1f00:	e000           	asrb #8,%d0
    1f02:	f000 7000      	pmove %d0,%bad0
    1f06:	7000           	moveq #0,%d0
    1f08:	f000           	.short 0xf000
    1f0a:	f800 5800      	tblsb %d0,%d0,%d5
    1f0e:	e000           	asrb #8,%d0
    1f10:	c800           	andb %d0,%d4
    1f12:	4800           	nbcd %d0
    1f14:	6000 2000      	braw 0x3f16
    1f18:	0000 0000      	orib #0,%d0
    1f1c:	0000 4000      	orib #0,%d0
    1f20:	2000           	movel %d0,%d0
    1f22:	9000           	subb %d0,%d0
    1f24:	5000           	addqb #8,%d0
    1f26:	0800 4800      	btst #0,%d0
    1f2a:	9000           	subb %d0,%d0
    1f2c:	b000           	cmpb %d0,%d0
    1f2e:	2800           	movel %d0,%d4
    1f30:	2800           	movel %d0,%d4
    1f32:	a800 8000      	macw %d0l,%d4l
	...
    1f42:	8000           	orb %d0,%d0
    1f44:	c000           	andb %d0,%d0
    1f46:	c000           	andb %d0,%d0
    1f48:	c000           	andb %d0,%d0
    1f4a:	8000           	orb %d0,%d0
	...
    1f58:	00ba 08d6 09d7 	oril #148244951,%d2
    1f5e:	0129 0028      	btst %d0,%a1@(40)
    1f62:	0101           	btst %d0,%d1
    1f64:	0101           	btst %d0,%d1
    1f66:	0010 0000      	orib #0,%a0@
    1f6a:	0010 0000      	orib #0,%a0@
	...
    1f76:	0000 0945      	orib #69,%d0
    1f7a:	0929 0828      	btst %d4,%a1@(2088)
    1f7e:	0000 0101      	orib #1,%d0
    1f82:	0101           	btst %d0,%d1
    1f84:	0101           	btst %d0,%d1
    1f86:	0000 0010      	orib #16,%d0
    1f8a:	0010 0000      	orib #0,%a0@
	...
    1f9e:	0010 0010      	orib #16,%a0@
    1fa2:	0010 0010      	orib #16,%a0@
    1fa6:	0010 0010      	orib #16,%a0@
    1faa:	0010 0000      	orib #0,%a0@
	...
    1fba:	2000           	movel %d0,%d0
    1fbc:	2000           	movel %d0,%d0
	...
    1fd6:	0000 2000      	orib #0,%d0
    1fda:	2000           	movel %d0,%d0
    1fdc:	2000           	movel %d0,%d0
	...
    2016:	0000 25f0      	orib #-16,%d0
    201a:	d30d           	addxb %a5@-,%a1@-
    201c:	7ef2           	moveq #-14,%d7
    201e:	81fd           	.short 0x81fd
    2020:	7f1b           	mvsb %a3@+,%d7
    2022:	bfe4           	cmpal %a4@-,%sp
    2024:	5e87           	addql #7,%d7
    2026:	e46d           	lsrw %d2,%d5
    2028:	df92           	addl %d7,%a2@
    202a:	fb35 c5d8      	wddatab @(0)
    202e:	2e64           	moveal %a4@-,%sp
    2030:	7ffb fb94      	mvzw %zpc@(0)@(0,%sp:l:2),%d7
    2034:	4bab bf65      	chkw %a3@(-16539),%d5
    2038:	0000 34f0      	orib #-16,%d0
    203c:	85fd           	.short 0x85fd
    203e:	7f9a           	mvzb %a2@+,%d7
    2040:	fffc           	.short 0xfffc
    2042:	cee7           	muluw %sp@-,%d7
    2044:	6587           	bcss 0x1fcd
    2046:	7b83           	mvzb %d3,%d5
    2048:	d1fe           	.short 0xd1fe
    204a:	8404           	orb %d4,%d2
    204c:	3e21           	movew %a1@-,%d7
    204e:	efb8           	roll %d7,%d0
    2050:	6b9c           	bmis 0x1fee
    2052:	676f           	beqs 0x20c3
    2054:	be77 fcfb      	cmpw %sp@(fffffffffffffffb,%sp:l:4),%d7
    2058:	d00c           	.short 0xd00c
    205a:	c806           	andb %d6,%d4
    205c:	8006           	orb %d6,%d0
    205e:	00e3           	.short 0x00e3
    2060:	01f0 0ee0      	bset %d0,%a0@(ffffffffffffffe0,%d0:l:8)
    2064:	8660           	orw %a0@-,%d3
    2066:	c3d0           	mulsw %a0@,%d1
    2068:	41c1           	.short 0x41c1
    206a:	80fa 006e      	divuw %pc@(0x20da),%d0
    206e:	142f ba06      	moveb %sp@(-17914),%d2
    2072:	e902           	aslb #4,%d2
    2074:	a611           	.short 0xa611
    2076:	9c38 0008      	subb 0x8,%d6
    207a:	87c0           	divsw %d0,%d3
    207c:	885f           	orw %sp@+,%d4
    207e:	f3e6           	.short 0xf3e6
    2080:	0c19 e876      	cmpib #118,%a1@+
    2084:	4683           	notl %d3
    2086:	515e           	subqw #8,%fp@+
    2088:	2ea7           	movel %sp@-,%sp@
    208a:	df58           	addw %d7,%a0@+
    208c:	f82f           	.short 0xf82f
    208e:	b94b           	cmpmw %a3@+,%a4@+
    2090:	4ea6           	.short 0x4ea6
    2092:	bcd5           	cmpaw %a5@,%fp
    2094:	57ba           	.short 0x57ba
    2096:	a8fe           	.short 0xa8fe
    2098:	0000 0008      	orib #8,%d0
    209c:	8789 8b9e      	unpk %a1@-,%a3@-,#-29794
    20a0:	f878           	.short 0xf878
    20a2:	6471           	bccs 0x2115
    20a4:	cc07           	andb %d7,%d6
    20a6:	0ec7           	.short 0x0ec7
    20a8:	7f1e           	mvsb %fp@+,%d7
    20aa:	3bb9 e5ed c84c 	movew 0xe5edc84c,@(ffffffffffffb713,%d7:l)@(0)
    20b0:	79a1 b713 
    20b4:	98e6           	subaw %fp@-,%a4
    20b6:	ef44           	aslw #7,%d4
    20b8:	8000           	orb %d0,%d0
    20ba:	8000           	orb %d0,%d0
    20bc:	7000           	moveq #0,%d0
    20be:	8401           	orb %d1,%d2
    20c0:	8407           	orb %d7,%d2
    20c2:	160b           	.short 0x160b
    20c4:	3319           	movew %a1@+,%a1@-
    20c6:	bf3f           	.short 0xbf3f
    20c8:	9fde           	subal %fp@+,%sp
    20ca:	e3c8           	.short 0xe3c8
    20cc:	43e0           	.short 0x43e0
    20ce:	0ef0           	.short 0x0ef0
    20d0:	8e78 47b8      	orw 0x47b8,%d7
    20d4:	a090 9063      	macw %d3u,%a1l,%a0@&,%d0
    20d8:	03cf 4438      	movepl %d1,%sp@(17464)
    20dc:	2bc7           	.short 0x2bc7
    20de:	d3ff           	.short 0xd3ff
    20e0:	0e6b           	.short 0x0e6b
    20e2:	f8d9           	.short 0xf8d9
    20e4:	79bd           	.short 0x79bd
    20e6:	6c76           	bges 0x215e
    20e8:	9785           	subxl %d5,%d3
    20ea:	4bfe           	.short 0x4bfe
    20ec:	45cb           	.short 0x45cb
    20ee:	b2f8 cfdf      	cmpaw 0xffffcfdf,%a1
    20f2:	77a6           	mvzb %fp@-,%d3
    20f4:	9f79 eefe 0000 	subw %d7,0xeefe0000
    20fa:	03c7           	bset %d1,%d7
    20fc:	46ff           	move %d7,%sr
    20fe:	7e7f           	moveq #127,%d7
    2100:	fe18 f83b      	cp1ldb %a0@+,%sp,#5,#59
    2104:	6071           	bras 0x2177
    2106:	71fc 198e      	mvzw #6542,%d0
    210a:	cc8f           	.short 0xcc8f
    210c:	8679 c33a 7b22 	orw 0xc33a7b22,%d3
    2112:	9e79 ecfe f1ff 	subw 0xecfef1ff,%d7
    2118:	4000           	negxb %d0
    211a:	4800           	nbcd %d0
    211c:	d900           	addxb %d0,%d4
    211e:	cf87           	.short 0xcf87
    2120:	fe0d 080c      	cp1ldb %a5,%d0,#5,#12
    2124:	8017           	orb %sp@,%d0
    2126:	8033 407f      	orb %a3@(7f,%d4:w),%d0
    212a:	20df           	movel %sp@+,%a0@+
    212c:	f059           	.short 0xf059
    212e:	ec18           	rorb #6,%d0
    2130:	6600 1e00      	bnew 0x3f32
    2134:	0c10 807c      	cmpib #124,%a0@
    2138:	e008           	lsrb #8,%d0
    213a:	1e07           	moveb %d7,%d7
    213c:	e238           	rorb %d1,%d0
    213e:	fd97 4eda      	cp0stl %d4,%sp@,#8,#218
    2142:	6b3d           	bmis 0x2181
    2144:	90c2           	subaw %d2,%a0
    2146:	413f           	.short 0x413f
    2148:	bef1 49cf 3707 	cmpaw @(0)@(3707cfec),%sp
    214e:	cfec 
    2150:	bb7e           	.short 0xbb7e
    2152:	5d8f           	subql #6,%sp
    2154:	defe           	.short 0xdefe
    2156:	ef7b           	rolw %d7,%d3
    2158:	0000 e00c      	orib #12,%d0
    215c:	fc07 5e3a      	cp0ldb %d7,%d5,#8,#58
    2160:	df3d           	.short 0xdf3d
    2162:	8bc7           	divsw %d7,%d5
    2164:	f0fe           	.short 0xf0fe
    2166:	60fc           	bras 0x2164
    2168:	21f3 d7c1 cfce 	movel @(0)@(0),0xffffcfce
    216e:	bbc5           	cmpal %d5,%a5
    2170:	7c4c           	moveq #76,%d6
    2172:	de36 ef23 7f97 	addb %fp@(7f97,%fp:l:8)@(2070233),%d7
    2178:	0207 0233 
    217c:	005f 604a      	oriw #24650,%sp@+
    2180:	3838 d800      	movew 0xffffd800,%d4
    2184:	c001           	andb %d1,%d0
    2186:	7c01           	moveq #1,%d6
    2188:	7804           	moveq #4,%d4
    218a:	1067           	.short 0x1067
    218c:	c1f2 83fe 01df 	mulsw @(1df385f)@(ffffffffffffec1b),%d0
    2192:	385f ec1b 
    2196:	6619           	bnes 0x21b1
    2198:	0000 0002      	orib #2,%d0
    219c:	001b 0029      	orib #41,%a3@+
    21a0:	0036 000f 0077 	orib #15,%fp@(77,%d0:w)
    21a6:	005b 006d      	oriw #109,%a3@+
    21aa:	002d 0028 0008 	orib #40,%a5@(8)
    21b0:	0024 0004      	orib #4,%a4@-
    21b4:	3300           	movew %d0,%a1@-
    21b6:	5304           	subqb #1,%d4
    21b8:	0000 001e      	orib #30,%d0
    21bc:	0027 0047      	orib #71,%sp@-
    21c0:	004d           	.short 0x004d
    21c2:	0073 000a 0027 	oriw #10,%a3@(27,%d0:w)
    21c8:	0013 0002      	orib #2,%a3@
    21cc:	0005 0020      	orib #32,%d5
    21d0:	0020 3c00      	orib #0,%a0@-
    21d4:	4f04           	chkl %d4,%d7
    21d6:	8f04           	sbcd %d4,%d7
    21d8:	0000 001c      	orib #28,%d0
    21dc:	003c 007c      	orib #124,%ccr
    21e0:	0078 0070 0000 	oriw #112,0x0
	...
    21f2:	3800           	movew %d0,%d4
    21f4:	7800           	moveq #0,%d4
    21f6:	f800           	.short 0xf800
    21f8:	6500 1c80      	bcsw 0x3e7a
    21fc:	a3bc           	.short 0xa3bc
    21fe:	5101           	subqb #8,%d1
    2200:	9bfe           	.short 0x9bfe
    2202:	9803           	subb %d3,%d4
    2204:	5001           	addqb #8,%d1
    2206:	5000           	addqb #8,%d0
    2208:	0800 48cc      	btst #-52,%d0
    220c:	014c 099e      	movepl %a4@(2462),%d0
    2210:	0077 028e 01d4 	oriw #654,@(0)@(0)
    2216:	016c 9b80      	bchg %d0,%a4@(-25728)
    221a:	e780           	asll #3,%d0
    221c:	5dc2           	slt %d2
    221e:	2ffe           	.short 0x2ffe
    2220:	67ff 0403 0801 	beql 0x4032a23
    2226:	0000 40f0      	orib #-16,%d0
    222a:	413c 0a3c 0a6e 	chkl #171706990,%d0
    2230:	039f           	bclr %d1,%sp@+
    2232:	0176 003c      	bchg %d0,%fp@(3c,%d0:w)
    2236:	009c f000 e080 	oril #-268377984,%a4@+
    223c:	0000 0100      	orib #0,%d0
    2240:	0200 0000      	andib #0,%d0
    2244:	0000 0000      	orib #0,%d0
    2248:	00e0           	.short 0x00e0
    224a:	01e0           	bset %d0,%a0@-
    224c:	03e0           	bset %d1,%a0@-
    224e:	03c0           	bset %d1,%d0
    2250:	0381           	bclr %d1,%d1
    2252:	0000 0000      	orib #0,%d0
    2256:	0000 0050      	orib #80,%d0
    225a:	0040 0020      	oriw #32,%d0
    225e:	0ce1           	.short 0x0ce1
    2260:	14c6           	moveb %d6,%a2@+
    2262:	1978 0721 28c2 	moveb 0x721,%a4@(10434)
    2268:	1c43           	.short 0x1c43
    226a:	1740 1603      	moveb %d0,%a3@(5635)
    226e:	2202           	movel %d2,%d1
    2270:	2105           	movel %d5,%a0@-
    2272:	1105           	moveb %d5,%a0@-
    2274:	1002           	moveb %d2,%d0
    2276:	0102           	btst %d0,%d2
    2278:	0020 0000      	orib #0,%a0@-
    227c:	0f00           	btst %d7,%d0
    227e:	13c0 23c1 26e1 	moveb %d0,0x23c126e1
    2284:	39f2           	.short 0x39f2
    2286:	1764 03c4      	moveb %a4@-,%a3@(964)
    228a:	08c7 0900      	bset #0,%d7
    228e:	1001           	moveb %d1,%d0
    2290:	0003 0001      	orib #1,%d3
    2294:	0100           	btst %d0,%d0
    2296:	1100           	moveb %d0,%a0@-
    2298:	0000 0000      	orib #0,%d0
    229c:	0e00           	.short 0x0e00
    229e:	1e00           	moveb %d0,%d7
    22a0:	3e00           	movew %d0,%d7
    22a2:	3c01           	movew %d1,%d6
    22a4:	3803           	movew %d3,%d4
    22a6:	0007 0007      	orib #7,%d7
    22aa:	0007 0000      	orib #0,%d7
	...
    22b6:	0000 1000      	orib #0,%d0
    22ba:	0002 0000      	orib #0,%d2
	...
    22d6:	0000 1002      	orib #2,%d0
    22da:	0002 0000      	orib #0,%d2
	...
    2316:	0000 25f0      	orib #-16,%d0
    231a:	d30d           	addxb %a5@-,%a1@-
    231c:	7ef2           	moveq #-14,%d7
    231e:	81fd           	.short 0x81fd
    2320:	7f1b           	mvsb %a3@+,%d7
    2322:	bfe4           	cmpal %a4@-,%sp
    2324:	5e87           	addql #7,%d7
    2326:	e46d           	lsrw %d2,%d5
    2328:	df92           	addl %d7,%a2@
    232a:	fb35 c5d8      	wddatab @(0)
    232e:	2e64           	moveal %a4@-,%sp
    2330:	7ffb fb94      	mvzw %zpc@(0)@(0,%sp:l:2),%d7
    2334:	4bab bf65      	chkw %a3@(-16539),%d5
    2338:	0001 34f0      	orib #-16,%d1
    233c:	85fd           	.short 0x85fd
    233e:	7f9a           	mvzb %a2@+,%d7
    2340:	fffc           	.short 0xfffc
    2342:	cee7           	muluw %sp@-,%d7
    2344:	6587           	bcss 0x22cd
    2346:	7b83           	mvzb %d3,%d5
    2348:	d1fe           	.short 0xd1fe
    234a:	8404           	orb %d4,%d2
    234c:	3e21           	movew %a1@-,%d7
    234e:	efb8           	roll %d7,%d0
    2350:	6b9c           	bmis 0x22ee
    2352:	676f           	beqs 0x23c3
    2354:	be77 fcfb      	cmpw %sp@(fffffffffffffffb,%sp:l:4),%d7
    2358:	d00d           	.short 0xd00d
    235a:	c806           	andb %d6,%d4
    235c:	8006           	orb %d6,%d0
    235e:	00e3           	.short 0x00e3
    2360:	01f0 0ee0      	bset %d0,%a0@(ffffffffffffffe0,%d0:l:8)
    2364:	8660           	orw %a0@-,%d3
    2366:	c3d0           	mulsw %a0@,%d1
    2368:	41c1           	.short 0x41c1
    236a:	80fa 006e      	divuw %pc@(0x23da),%d0
    236e:	142f ba06      	moveb %sp@(-17914),%d2
    2372:	e902           	aslb #4,%d2
    2374:	a611           	.short 0xa611
    2376:	9c38 0000      	subb 0x0,%d6
    237a:	0000 8000      	orib #0,%d0
    237e:	8000           	orb %d0,%d0
    2380:	c000           	andb %d0,%d0
    2382:	4000           	negxb %d0
    2384:	c000           	andb %d0,%d0
    2386:	8000           	orb %d0,%d0
    2388:	8000           	orb %d0,%d0
    238a:	0033 8153 8165 	orib #83,%a3@(411c)@(0)
    2390:	411c 
    2392:	80a3           	orl %a3@-,%d0
    2394:	a0f1           	.short 0xa0f1
    2396:	b0db           	cmpaw %a3@+,%a0
    2398:	0000 0000      	orib #0,%d0
    239c:	8000           	orb %d0,%d0
    239e:	8000           	orb %d0,%d0
    23a0:	c000           	andb %d0,%d0
    23a2:	c000           	andb %d0,%d0
    23a4:	c000           	andb %d0,%d0
    23a6:	8000           	orb %d0,%d0
    23a8:	803c 804f      	orb #79,%d0
    23ac:	818f 419b      	unpk %sp@-,%a0@-,#16795
    23b0:	81e7           	divsw %sp@-,%d0
    23b2:	415d           	.short 0x415d
    23b4:	600f           	bras 0x23c5
    23b6:	70a7           	moveq #-89,%d0
	...
    23c8:	0038 0078 01f8 	orib #120,0x1f8
    23ce:	01f0 00e0      	bset %d0,%a0@(ffffffffffffffe0,%d0:w)
    23d2:	0000 0000      	orib #0,%d0
    23d6:	0001 4c57      	orib #87,%d1
    23da:	77f2 1872      	mvzw %a2@(72,%d1:l),%d3
    23de:	131f           	moveb %sp@+,%a1@-
    23e0:	855f           	orw %d2,%sp@+
    23e2:	762e           	moveq #46,%d3
    23e4:	a0f5           	.short 0xa0f5
    23e6:	5d1f           	subqb #6,%sp@+
    23e8:	6d7b           	blts 0x2465
    23ea:	06ab 06db 08df 	addil #115017951,%a3@(26367)
    23f0:	66ff 
    23f2:	0ab9 0d9e 03bf 	eoril #228459455,0x3c0f0fe1
    23f8:	3c0f 0fe1 
    23fc:	2791 0cee      	movel %a1@,%a3@(ffffffffffffffee,%d0:l:4)
    2400:	08e9 89dd df3e 	bset #-35,%a1@(-8386)
    2406:	72ff           	moveq #-1,%d1
    2408:	62af           	bhis 0x23b9
    240a:	017f           	.short 0x017f
    240c:	017f           	.short 0x017f
    240e:	07ef 99e1      	bset %d3,%sp@(-26143)
    2412:	1176 12ff 1cff 	moveb %fp@(ffffffffffffffff,%d1:w:2),%a0@(7423)
    2418:	0006 0000      	orib #0,%d6
    241c:	0380           	bclr %d1,%d0
    241e:	0788 0f88      	movepw %d3,%a0@(3976)
    2422:	0f04           	btst %d7,%d4
    2424:	0e04           	.short 0x0e04
	...
    242e:	0700           	btst %d3,%d0
    2430:	0f00           	btst %d7,%d0
    2432:	1f00           	moveb %d0,%sp@-
    2434:	1e00           	moveb %d0,%d7
    2436:	1c00           	moveb %d0,%d6
    2438:	1471           	.short 0x1471
    243a:	0ead           	.short 0x0ead
    243c:	0b7a           	.short 0x0b7a
    243e:	fea5 3f9b      	cp1ldl %a5@-,%d3,#8,#411
    2442:	3fd4           	.short 0x3fd4
    2444:	876b abfb      	orw %d3,%a3@(-21509)
    2448:	15fa           	.short 0x15fa
    244a:	77ff           	.short 0x77ff
    244c:	8c7f           	.short 0x8c7f
    244e:	db3a           	.short 0xdb3a
    2450:	753d           	.short 0x753d
    2452:	d659           	addw %a1@+,%d3
    2454:	81cc           	.short 0x81cc
    2456:	8a3f           	.short 0x8a3f
    2458:	0bbf           	.short 0x0bbf
    245a:	01ff           	.short 0x01ff
    245c:	04e7           	.short 0x04e7
    245e:	0ffb           	.short 0x0ffb
    2460:	f9fc           	.short 0xf9fc
    2462:	de6f 7fb7      	addw %sp@(32695),%d7
    2466:	5c37 ebb7 9fdd 	addqb #6,@(ffffffff9fdd7fef)@(3cf6b8fc,%fp:l:2)
    246c:	7fef 3cf6 b8fc 
    2472:	a9ba           	.short 0xa9ba
    2474:	4e7b 05db      	movec %d0,0x5db
	...
    2480:	0000 d000      	orib #0,%d0
    2484:	c000           	andb %d0,%d0
    2486:	c000           	andb %d0,%d0
    2488:	8000           	orb %d0,%d0
    248a:	0100           	btst %d0,%d0
    248c:	03c0           	bset %d1,%d0
    248e:	0791           	bclr %d3,%a1@
    2490:	0f9a           	bclr %d7,%a2@+
    2492:	0f05           	btst %d7,%d5
    2494:	0e0f           	.short 0x0e0f
    2496:	000f           	.short 0x000f
    2498:	451c           	chkl %a4@+,%d2
    249a:	49d0           	lea %a0@,%a4
    249c:	0983           	bclr %d4,%d3
    249e:	449f           	negl %sp@+
    24a0:	044f           	.short 0x044f
    24a2:	0044 040a      	oriw #1034,%d4
    24a6:	0055 000e      	oriw #14,%a5@
    24aa:	008b 00c7 0032 	oril #13041714,%d3
    24b0:	039d           	bclr %d1,%a5@+
    24b2:	0247 0181      	andiw #385,%d7
    24b6:	01c7           	bset %d0,%d7
    24b8:	02fc           	.short 0x02fc
    24ba:	0630 4040 401c 	addib #64,%a0@(1c,%d4:w)
    24c0:	0003 0400      	orib #0,%d3
    24c4:	0444 0050      	subiw #80,%d4
    24c8:	000e           	.short 0x000e
    24ca:	0087 0040 0130 	oril #4194608,%d7
    24d0:	020a           	.short 0x020a
    24d2:	022e 0136 0133 	andib #54,%fp@(307)
    24d8:	001f 001f      	orib #31,%sp@+
    24dc:	001d 001c      	orib #28,%a5@+
    24e0:	001f 001b      	orib #27,%sp@+
    24e4:	0011 001b      	orib #27,%a1@
    24e8:	003f           	.short 0x003f
    24ea:	00ff           	.short 0x00ff
    24ec:	017f           	.short 0x017f
    24ee:	02fd           	.short 0x02fd
    24f0:	06fc           	.short 0x06fc
    24f2:	07ff           	.short 0x07ff
    24f4:	0fff           	.short 0x0fff
    24f6:	1fff           	.short 0x1fff
    24f8:	87ea 884b      	divsw %a2@(-30645),%d3
    24fc:	f3fa           	.short 0xf3fa
    24fe:	0c19 e876      	cmpib #118,%a1@+
    2502:	4683           	notl %d3
    2504:	515e           	subqw #8,%fp@+
    2506:	2ea7           	movel %sp@-,%sp@
    2508:	df58           	addw %d7,%a0@+
    250a:	f82f           	.short 0xf82f
    250c:	b94b           	cmpmw %a3@+,%a4@+
    250e:	4ea6           	.short 0x4ea6
    2510:	bcd5           	cmpaw %a5@,%fp
    2512:	57ba           	.short 0x57ba
    2514:	a8fe           	.short 0xa8fe
    2516:	1e64           	.short 0x1e64
    2518:	3819           	movew %a1@+,%d4
    251a:	87b9 8b98 f878 	orl %d3,0x8b98f878
    2520:	6471           	bccs 0x2593
    2522:	cc07           	andb %d7,%d6
    2524:	0ec7           	.short 0x0ec7
    2526:	7f1e           	mvsb %fp@+,%d7
    2528:	3bb9 e5ed c84c 	movew 0xe5edc84c,@(ffffffffffffb713,%d7:l)@(0)
    252e:	79a1 b713 
    2532:	98e6           	subaw %fp@-,%a4
    2534:	ef44           	aslw #7,%d4
    2536:	e79f           	roll #3,%d7
    2538:	b837 7007      	cmpb %sp@(7,%d7:w),%d4
    253c:	8407           	orb %d7,%d2
    253e:	8407           	orb %d7,%d2
    2540:	160b           	.short 0x160b
    2542:	3319           	movew %a1@+,%a1@-
    2544:	bf3f           	.short 0xbf3f
    2546:	9fde           	subal %fp@+,%sp
    2548:	e3c8           	.short 0xe3c8
    254a:	43e0           	.short 0x43e0
    254c:	0ef0           	.short 0x0ef0
    254e:	8e78 47b8      	orw 0x47b8,%d7
    2552:	a090 9063      	macw %d3u,%a1l,%a0@&,%d0
    2556:	3803           	movew %d3,%d4
	...
    2574:	0000 8000      	orib #0,%d0
	...
    2590:	0000 8000      	orib #0,%d0
    2594:	8000           	orb %d0,%d0
    2596:	8000           	orb %d0,%d0
	...
    25b8:	8000           	orb %d0,%d0
    25ba:	8000           	orb %d0,%d0
    25bc:	c000           	andb %d0,%d0
    25be:	4000           	negxb %d0
    25c0:	e000           	asrb #8,%d0
    25c2:	f800 7800      	tblsb %d0,%d0,%d7
    25c6:	7800           	moveq #0,%d4
    25c8:	bc00           	cmpb %d0,%d6
    25ca:	ac00 fd00      	msacl %d0,%d6
    25ce:	d500           	addxb %d0,%d2
    25d0:	bd80           	eorl %d6,%d0
    25d2:	f4a0           	.short 0xf4a0
    25d4:	fc50 ecb0      	cp0ldw %a0@,%fp,#7,#176
    25d8:	8000           	orb %d0,%d0
    25da:	8000           	orb %d0,%d0
    25dc:	c000           	andb %d0,%d0
    25de:	c000           	andb %d0,%d0
    25e0:	d000           	addb %d0,%d0
    25e2:	f800           	.short 0xf800
    25e4:	e800           	asrb #4,%d0
    25e6:	f800 7c00      	tblsnb %d0,%d0,%d7
    25ea:	7e00           	moveq #0,%d7
    25ec:	3400           	movew %d0,%d2
    25ee:	b680           	cmpl %d0,%d3
    25f0:	f440           	.short 0xf440
    25f2:	fe60 f470      	cp1ldw %a0@-,%sp,#3,#112
    25f6:	74f0           	moveq #-16,%d2
	...
    2608:	0400 0400      	subib #0,%d0
    260c:	0300           	btst %d1,%d0
    260e:	0980           	bclr %d4,%d0
    2610:	03c0           	bset %d1,%d0
    2612:	01e0           	bset %d0,%a0@-
    2614:	03b0 0350      	bclr %d1,%a0@(0)
    2618:	78c0           	moveq #-64,%d4
    261a:	b9e8 f048      	cmpal %a0@(-4024),%a4
    261e:	f11c           	.short 0xf11c
    2620:	d22f 619d      	addb %sp@(24989),%d1
    2624:	c236 c834      	andb %fp@(34,%a4:l),%d1
    2628:	846e 00c5      	orw %fp@(197),%d2
    262c:	1989           	.short 0x1989
    262e:	e301           	aslb #1,%d1
    2630:	6c33           	bges 0x2665
    2632:	1831 e2e7      	moveb %a1@(ffffffffffffffe7,%fp:w:2),%d4
    2636:	cd47           	exg %d6,%d7
    2638:	aa70           	.short 0xaa70
    263a:	e818           	rorb #4,%d0
    263c:	d5bc           	.short 0xd5bc
    263e:	d3fe           	.short 0xd3fe
    2640:	39fa           	.short 0x39fa
    2642:	a07f           	.short 0xa07f
    2644:	d1f3 47f3 afe1 	addal @(ffffffffafe14fcb)@(ffffffff879f1f0f),%a0
    264a:	4fcb 879f 1f0f 
    2650:	9c0f           	.short 0x9c0f
    2652:	fa0f           	.short 0xfa0f
    2654:	e71f           	rolb #3,%d7
    2656:	82bf           	.short 0x82bf
    2658:	05b0 07f8 0af8 	bclr %d2,@(af80c7c)
    265e:	0c7c 
    2660:	06fc           	.short 0x06fc
    2662:	1ffa           	.short 0x1ffa
    2664:	2ffd           	.short 0x2ffd
    2666:	3bff           	.short 0x3bff
    2668:	51ff           	sf %d7
    266a:	bbf7 7fe3 7ff6 	cmpal @(7ff6)@(3fff7dff),%a5
    2670:	3fff 7dff 
    2674:	f8ff           	.short 0xf8ff
    2676:	bdff           	.short 0xbdff
    2678:	a61e           	.short 0xa61e
    267a:	99f9 40e1 3f33 	subal 0x40e13f33,%a4
    2680:	e19a           	roll #8,%d2
    2682:	08e4 727d      	bset #125,%a4@-
    2686:	5d7f           	.short 0x5d7f
    2688:	3059           	moveaw %a1@+,%a0
    268a:	e08d           	lsrl #8,%d5
    268c:	3e7d           	.short 0x3e7d
    268e:	33af 2047 13af 	movew %sp@(8263),@(ffffffffffffcfd3)@(ffffffffc5f049ff,%d1:w:2)
    2694:	cfd3 c5f0 49ff 
    269a:	67fa           	beqs 0x2696
    269c:	bfe2           	cmpal %a2@-,%sp
    269e:	c0fc 1e7d      	muluw #7805,%d0
    26a2:	031b           	btst %d1,%a3@+
    26a4:	07c3           	bset %d3,%d3
    26a6:	02a3 0fb7 fb73 	andil #263715699,%a3@-
    26ac:	fff3           	.short 0xfff3
    26ae:	0051 1af8      	oriw #6904,%a1@
    26b2:	8150           	orw %d0,%a0@
    26b4:	412c cb8f      	chkl %a4@(-13425),%d0
    26b8:	1fff           	.short 0x1fff
    26ba:	bffe           	.short 0xbffe
    26bc:	f0fe           	.short 0xf0fe
    26be:	4004           	negxb %d4
    26c0:	0e04           	.short 0x0e04
    26c2:	fd00 f840      	cp0stb %sp,%d0,#5,#64
    26c6:	fde0           	.short 0xfde0
    26c8:	fff0           	.short 0xfff0
    26ca:	ff80 fe70      	cp1stl %sp,%d0,#8,#112
    26ce:	efb0           	roxll %d7,%d0
    26d0:	c718           	andb %d3,%a0@+
    26d2:	efb8           	roll %d7,%d0
    26d4:	f7fc           	.short 0xf7fc
    26d6:	f7fc           	.short 0xf7fc
    26d8:	8baf 1478      	orl %d5,%sp@(5240)
    26dc:	2bc7           	.short 0x2bc7
    26de:	d3df           	addal %sp@+,%a1
    26e0:	0e6b           	.short 0x0e6b
    26e2:	f859           	.short 0xf859
    26e4:	78bd           	moveq #-67,%d4
    26e6:	6c76           	bges 0x275e
    26e8:	9785           	subxl %d5,%d3
    26ea:	4bfe           	.short 0x4bfe
    26ec:	45cb           	.short 0x45cb
    26ee:	b2f8 cfdf      	cmpaw 0xffffcfdf,%a1
    26f2:	77a6           	mvzb %fp@-,%d3
    26f4:	9f79 eefe 8ff0 	subw %d7,0xeefe8ff0
    26fa:	0f87           	bclr %d7,%d7
    26fc:	46bf           	notl %d7
    26fe:	7e3f           	moveq #63,%d7
    2700:	fe58 f8bb      	cp1ldw %a0@+,%sp,#5,#187
    2704:	6171           	bsrs 0x2777
    2706:	71fc 198e      	mvzw #6542,%d0
    270a:	cc8f           	.short 0xcc8f
    270c:	8679 c33a 7b22 	orw 0xc33a7b22,%d3
    2712:	9e79 ecfe f1ff 	subw 0xecfef1ff,%d7
    2718:	f7f0           	.short 0xf7f0
    271a:	fc40 d900      	cp0ldw %d0,%a5,#5,#256
    271e:	cf87           	.short 0xcf87
    2720:	fe0d 080c      	cp1ldb %a5,%d0,#5,#12
    2724:	8017           	orb %sp@,%d0
    2726:	8033 407f      	orb %a3@(7f,%d4:w),%d0
    272a:	20df           	movel %sp@+,%a0@+
    272c:	f059           	.short 0xf059
    272e:	ec18           	rorb #6,%d0
    2730:	6600 1e00      	bnew 0x4532
    2734:	0c10 807c      	cmpib #124,%a0@
	...
    2740:	0000 8000      	orib #0,%d0
    2744:	4000           	negxb %d0
    2746:	c000           	andb %d0,%d0
    2748:	c000           	andb %d0,%d0
    274a:	c000           	andb %d0,%d0
    274c:	f000 5000      	pmove %d0,%cal
    2750:	d000           	addb %d0,%d0
    2752:	f800           	.short 0xf800
    2754:	d000           	addb %d0,%d0
    2756:	ec00           	asrb #6,%d0
	...
    2764:	8000           	orb %d0,%d0
    2766:	8000           	orb %d0,%d0
    2768:	a000 a000      	macw %d0l,%d0l
    276c:	b000           	cmpb %d0,%d0
    276e:	b000           	cmpb %d0,%d0
    2770:	b000           	cmpb %d0,%d0
    2772:	b000           	cmpb %d0,%d0
    2774:	b800           	cmpb %d0,%d4
    2776:	3c00           	movew %d0,%d6
	...
    2784:	0000 8000      	orib #0,%d0
    2788:	8000           	orb %d0,%d0
    278a:	8000           	orb %d0,%d0
    278c:	0000 8000      	orib #0,%d0
    2790:	0000 8800      	orib #0,%d0
    2794:	8800           	orb %d0,%d4
    2796:	1400           	moveb %d0,%d2
    2798:	bc00           	cmpb %d0,%d6
    279a:	ac00 0e00      	macl %d0,%d6,>>
    279e:	4e00           	.short 0x4e00
    27a0:	9d00           	subxb %d0,%d6
    27a2:	2e00           	movel %d0,%d7
    27a4:	ff00 ff00      	cp1stb %sp,%d0,#8,#256
    27a8:	f100           	.short 0xf100
    27aa:	f240           	.short 0xf240
    27ac:	dd20           	addb %d6,%a0@-
    27ae:	fde0           	.short 0xfde0
    27b0:	79f0 b3f8 9ffc 	mvzw @(ffffffff9ffcfffc),%d4
    27b6:	fffc 
    27b8:	7c00           	moveq #0,%d6
    27ba:	7c00           	moveq #0,%d6
    27bc:	fe00 fe00      	cp1ldb %d0,%sp,#8,#0
    27c0:	ff00 ff00      	cp1stb %sp,%d0,#8,#256
    27c4:	ff80 ff80      	cp1stl %sp,%d0,#8,#384
    27c8:	f980           	.short 0xf980
    27ca:	f7e0           	.short 0xf7e0
    27cc:	c7e0           	mulsw %a0@-,%d3
    27ce:	ffe0           	.short 0xffe0
    27d0:	fff0           	.short 0xfff0
    27d2:	7ff8 7ffc      	mvzw 0x7ffc,%d7
    27d6:	1ffc           	.short 0x1ffc
    27d8:	0c00 1c00      	cmpib #0,%d0
    27dc:	3e00           	movew %d0,%d7
    27de:	3e00           	movew %d0,%d7
    27e0:	6d00 d600      	bltw 0xfffffde2
    27e4:	ef00           	aslb #7,%d0
    27e6:	ff00 7700      	cp1stb %d7,%d0,#4,#256
    27ea:	78c0           	moveq #-64,%d4
    27ec:	3d20           	movew %a0@-,%fp@-
    27ee:	1ce0           	moveb %a0@-,%fp@+
    27f0:	00f0           	.short 0x00f0
    27f2:	00f8           	.short 0x00f8
    27f4:	01fc           	.short 0x01fc
    27f6:	01fc           	.short 0x01fc
    27f8:	f788           	.short 0xf788
    27fa:	93c7           	subal %d7,%a1
    27fc:	f9b8           	.short 0xf9b8
    27fe:	fd97 4d5a      	cp0stl %d4,%sp@,#7,#346
    2802:	6c7d           	bges 0x2881
    2804:	9ec2           	subaw %d2,%sp
    2806:	4d7f           	.short 0x4d7f
    2808:	bcf1 4eef      	cmpaw %a1@(ffffffffffffffef,%d4:l:8),%fp
    280c:	3637 cf3c bb8f 	movew %sp@(ffffffffbb8f5dc3)@(0,%a4:l:8),%d3
    2812:	5dc3 
    2814:	dec3           	addaw %d3,%sp
    2816:	ef78           	rolw %d7,%d0
    2818:	0ff0 efcc      	bset %d7,@(0)@(0)
    281c:	c787           	.short 0xc787
    281e:	43ba d3bd      	chkw %pc@(0xfffffbdd),%d1
    2822:	8387 f1fe      	unpk %d7,%d1,#-3586
    2826:	63fc           	blss 0x2824
    2828:	23f3 d1e1 c9fe 	movel @(ffffffffffffc9fe)@(0),0xb8fd7c7f
    282e:	b8fd 7c7f 
    2832:	de3f           	.short 0xde3f
    2834:	ef3f           	rolb %d7,%d7
    2836:	7f87           	mvzb %d7,%d7
    2838:	0077 0033 005f 	oriw #51,%sp@(5f,%d0:w)
    283e:	604a           	bras 0x288a
    2840:	3038 d000      	movew 0xffffd000,%d0
    2844:	c001           	andb %d1,%d0
    2846:	7001           	moveq #1,%d0
    2848:	7004           	moveq #4,%d0
    284a:	1007           	moveb %d7,%d0
    284c:	c002           	andb %d2,%d0
    284e:	8006           	orb %d6,%d0
    2850:	0000 3800      	orib #0,%d0
    2854:	ec02           	asrb #6,%d2
    2856:	6600 0000      	bnew 0x2858
	...
    286e:	0001 0001      	orib #1,%d1
    2872:	0007 0013      	orib #19,%d7
    2876:	0005 0000      	orib #0,%d5
	...
    288e:	0001 0001      	orib #1,%d1
    2892:	0007 001f      	orib #31,%d7
    2896:	001b 0000      	orib #0,%a3@+
	...
    28b6:	0000 002f      	orib #47,%d0
    28ba:	0036 001d 001f 	orib #29,%fp@(1f,%d0:w)
    28c0:	0037 008e 002c 	orib #-114,%sp@(2c,%d0:w)
    28c6:	017b           	.short 0x017b
    28c8:	0133 018e 00fb 	btst %d0,@(0)@(fb,%d0:w)
    28ce:	01b6 013f 00e9 	bclr %d0,%fp@(e901af)@(1370032,%d0:w)
    28d4:	01af 0137 0032 
    28da:	003d           	.short 0x003d
    28dc:	001e 0014      	orib #20,%fp@+
    28e0:	003f           	.short 0x003f
    28e2:	00fd           	.short 0x00fd
    28e4:	00df           	.short 0x00df
    28e6:	0196           	bclr %d0,%fp@
    28e8:	01dc           	bset %d0,%a4@+
    28ea:	01f3 00e7      	bset %d0,%a3@(ffffffffffffffe7,%d0:w)
    28ee:	017d           	.short 0x017d
    28f0:	01f9 00d6 017d 	bset %d0,0xd6017d
    28f6:	01fa           	.short 0x01fa
    28f8:	0001 0000      	orib #0,%d1
    28fc:	0001 0002      	orib #2,%d1
    2900:	0000 0000      	orib #0,%d0
    2904:	0000 0001      	orib #1,%d0
    2908:	0002 000c      	orib #12,%d2
    290c:	0010 0002      	orib #2,%a0@
    2910:	0002 0009      	orib #9,%d2
    2914:	0002 0004      	orib #4,%d2
    2918:	01ee 004b      	bset %d0,%fp@(75)
    291c:	02ff           	.short 0x02ff
    291e:	024e           	.short 0x024e
    2920:	031f           	btst %d1,%sp@+
    2922:	01fb           	.short 0x01fb
    2924:	01b3 013e 01fd 	bclr %d0,%a3@(1fd01a9)@(127,%d0:w)
    292a:	01a9 0127 
    292e:	00c7           	bitrev %d7
    2930:	018f 0087      	movepw %d0,%sp@(135)
    2934:	0087 0043 01db 	oril #4391387,%d7
    293a:	01fc           	.short 0x01fc
    293c:	033a 03bf      	btst %d1,%pc@(0x2cfd)
    2940:	03fd           	.short 0x03fd
    2942:	01f7 017e 01ff 	bset %d0,%sp@(1ff01fb)@(16f)
    2948:	01fb 016f 
    294c:	01e7           	bset %d0,%sp@-
    294e:	00c1           	bitrev %d1
    2950:	0141           	bchg %d0,%d1
    2952:	00c0           	bitrev %d0
    2954:	0040 00c0      	oriw #192,%d0
    2958:	0000 0003      	orib #3,%d0
    295c:	0004 0000      	orib #0,%d4
	...
    296c:	0008           	.short 0x0008
    296e:	0008           	.short 0x0008
    2970:	000c           	.short 0x000c
    2972:	000c           	.short 0x000c
    2974:	000e           	.short 0x000e
    2976:	0007 00c3      	orib #-61,%d7
    297a:	0041 0041      	oriw #65,%d1
    297e:	004f           	.short 0x004f
	...
    2988:	0000 0001      	orib #1,%d0
    298c:	0003 000e      	orib #14,%d3
    2990:	0018 0071      	orib #113,%a0@+
    2994:	01c7           	bset %d0,%d7
    2996:	030c 00c0      	movepw %a4@(192),%d1
    299a:	0040 0046      	oriw #70,%d0
    299e:	0042 0004      	oriw #4,%d2
	...
    29ae:	0001 0007      	orib #7,%d1
    29b2:	000f           	.short 0x000f
    29b4:	003f           	.short 0x003f
    29b6:	00fc           	.short 0x00fc
    29b8:	0007 0007      	orib #7,%d7
    29bc:	0007 000f      	orib #15,%d7
    29c0:	000f           	.short 0x000f
    29c2:	0003 0001      	orib #1,%d3
    29c6:	0001 0000      	orib #0,%d1
	...
    29d6:	0000 0638      	orib #56,%d0
    29da:	0c70 19c0 3380 	cmpiw #6592,@(0,%d3:w:2)
    29e0:	3700           	movew %d0,%a3@-
    29e2:	6700 6700      	beqw 0x90e4
    29e6:	6600 6700      	bnew 0x90e8
    29ea:	6300 3380      	blsw 0x5d6c
    29ee:	31c0 1870      	movew %d0,0x1870
    29f2:	1c1e           	moveb %fp@+,%d6
    29f4:	0f07           	btst %d7,%d7
    29f6:	0708 01f8      	movepw %a0@(504),%d3
    29fa:	03f0 07c0      	bset %d1,@(0)
    29fe:	0f80           	bclr %d7,%d0
    2a00:	0f00           	btst %d7,%d0
    2a02:	1f00           	moveb %d0,%sp@-
    2a04:	1f00           	moveb %d0,%sp@-
    2a06:	1e00           	moveb %d0,%d7
    2a08:	1f00           	moveb %d0,%sp@-
    2a0a:	1f00           	moveb %d0,%sp@-
    2a0c:	0f80           	bclr %d7,%d0
    2a0e:	0fc0           	bset %d7,%d0
    2a10:	07f0 03fe 00ff 	bset %d3,@(ff00f7)@(0)
    2a16:	00f7 0000 
	...
    2a36:	0000 d30d      	orib #13,%d0
    2a3a:	7ef2           	moveq #-14,%d7
    2a3c:	81fd           	.short 0x81fd
    2a3e:	7f1b           	mvsb %a3@+,%d7
    2a40:	bfe4           	cmpal %a4@-,%sp
    2a42:	5e87           	addql #7,%d7
    2a44:	e46d           	lsrw %d2,%d5
    2a46:	df92           	addl %d7,%a2@
    2a48:	ff92 fb35      	cp1stl %sp,%a2@,#6,#309
    2a4c:	c5d8           	mulsw %a0@+,%d2
    2a4e:	2e64           	moveal %a4@-,%sp
    2a50:	7ffb fb94      	mvzw %zpc@(0)@(0,%sp:l:2),%d7
    2a54:	4bab bf65      	chkw %a3@(-16539),%d5
    2a58:	34f0 85fd 7f9a 	movew @(7f9afffc)@(0),%a2@+
    2a5e:	fffc 
    2a60:	cee7           	muluw %sp@-,%d7
    2a62:	6587           	bcss 0x29eb
    2a64:	7b83           	mvzb %d3,%d5
    2a66:	d1fe           	.short 0xd1fe
    2a68:	d1fe           	.short 0xd1fe
    2a6a:	8404           	orb %d4,%d2
    2a6c:	3e21           	movew %a1@-,%d7
    2a6e:	efb8           	roll %d7,%d0
    2a70:	6b9c           	bmis 0x2a0e
    2a72:	676f           	beqs 0x2ae3
    2a74:	be77 fcfb      	cmpw %sp@(fffffffffffffffb,%sp:l:4),%d7
    2a78:	c806           	andb %d6,%d4
    2a7a:	8006           	orb %d6,%d0
    2a7c:	00e3           	.short 0x00e3
    2a7e:	01f0 0ee0      	bset %d0,%a0@(ffffffffffffffe0,%d0:l:8)
    2a82:	8660           	orw %a0@-,%d3
    2a84:	c3d0           	mulsw %a0@,%d1
    2a86:	41c1           	.short 0x41c1
    2a88:	41c1           	.short 0x41c1
    2a8a:	80fa 006e      	divuw %pc@(0x2afa),%d0
    2a8e:	142f ba06      	moveb %sp@(-17914),%d2
    2a92:	e902           	aslb #4,%d2
    2a94:	a611           	.short 0xa611
    2a96:	9c38 0000      	subb 0x0,%d6
    2a9a:	0000 0000      	orib #0,%d0
    2a9e:	0000 0072      	orib #114,%d0
    2aa2:	011c           	btst %d0,%a4@+
    2aa4:	004f           	.short 0x004f
    2aa6:	02ed           	.short 0x02ed
    2aa8:	3a49           	moveaw %a1,%a5
    2aaa:	8f1f           	orb %d7,%sp@+
    2aac:	27fb           	.short 0x27fb
    2aae:	77f6 277d 8fbf 	mvzw %fp@(ffffffff8fbfff3b)@(0),%d3
    2ab4:	ff3b 
    2ab6:	3e67           	moveaw %sp@-,%sp
	...
    2ac0:	0073 01ff 01be 	oriw #511,@(31b3bbf)@(fffffffffffffffe,%d0:w)
    2ac6:	031b 3bbf fffe 
    2acc:	ddf7 8ffd ddfa 	addal @(ffffffffddfafc7a)@(0),%fp
    2ad2:	fc7a 
    2ad4:	fcef           	.short 0xfcef
    2ad6:	ebfe           	.short 0xebfe
	...
    2aec:	0200 0000      	andib #0,%d0
    2af0:	0205 0300      	andib #0,%d5
    2af4:	0200 1400      	andib #0,%d0
    2af8:	5ffa d9f5      	traplew #-9739
    2afc:	f2ef           	.short 0xf2ef
    2afe:	76e6           	moveq #-26,%d3
    2b00:	79f1 cfff f7ff 	mvzw @(fffffffff7ffd74f)@(7edf7dcb),%d4
    2b06:	d74f 7edf 7dcb 
    2b0c:	bfe6           	cmpal %fp@-,%sp
    2b0e:	b7fd           	.short 0xb7fd
    2b10:	f3fb           	.short 0xf3fb
    2b12:	fbf2           	.short 0xfbf2
    2b14:	93ff           	.short 0x93ff
    2b16:	47f7 b5fd 3f7b 	lea @(3f7bbdb0)@(0),%a3
    2b1c:	bdb0 
    2b1e:	d9f9 bf7e 7eee 	addal 0xbf7e7eee,%a4
    2b24:	4df0 2df5 d9e0 	lea @(ffffffffd9e0eef4)@(0),%fp
    2b2a:	eef4 
    2b2c:	fc7d           	.short 0xfc7d
    2b2e:	7f3f           	.short 0x7f3f
    2b30:	ef36           	roxlb %d7,%d6
    2b32:	e51f           	rolb #2,%d7
    2b34:	6d8d           	blts 0x2ac3
    2b36:	bb98           	eorl %d5,%a0@+
    2b38:	0a02 8080      	eorib #-128,%d2
    2b3c:	4042           	negxw %d2
    2b3e:	2002           	movel %d2,%d0
    2b40:	4081           	negxl %d1
    2b42:	8111           	orb %d0,%a1@
    2b44:	820e           	.short 0x820e
    2b46:	c202           	andb %d2,%d1
    2b48:	2602           	movel %d2,%d3
    2b4a:	1103           	moveb %d3,%a0@-
    2b4c:	0100           	btst %d0,%d0
    2b4e:	0080 0080 0280 	oril #8389248,%d0
    2b54:	8250           	orw %a0@,%d1
    2b56:	4460           	negw %a0@-
    2b58:	faa4           	.short 0xfaa4
    2b5a:	e019           	rorb #8,%d1
    2b5c:	cfe7           	mulsw %sp@-,%d7
    2b5e:	b73b           	.short 0xb73b
    2b60:	a237           	.short 0xa237
    2b62:	faf6           	.short 0xfaf6
    2b64:	ffee           	.short 0xffee
    2b66:	dfbd           	.short 0xdfbd
    2b68:	9df9 7eef fe4f 	subal 0x7eeffe4f,%fp
    2b6e:	73fc 693b      	mvzw #26939,%d1
    2b72:	ddd6           	addal %fp@,%fp
    2b74:	f97e           	.short 0xf97e
    2b76:	d3fb 755b 5fe7 	addal %pc@(0x2b78)@(5fe7bff8),%a1
    2b7c:	bff8 
    2b7e:	775d           	mvsw %a5@+,%d3
    2b80:	d74f           	addxw %sp@-,%a3@-
    2b82:	c00f           	.short 0xc00f
    2b84:	e01f           	rorb #8,%d7
    2b86:	707a           	moveq #122,%d0
    2b88:	ffee           	.short 0xffee
    2b8a:	fbd2           	.short 0xfbd2
    2b8c:	f3bc           	.short 0xf3bc
    2b8e:	8dff           	.short 0x8dff
    2b90:	f6f4           	.short 0xf6f4
    2b92:	b339 f685 bc15 	eorb %d1,0xf685bc15
    2b98:	8000           	orb %d0,%d0
    2b9a:	8000           	orb %d0,%d0
    2b9c:	0003 0fc0      	orib #-64,%d3
    2ba0:	8fc2           	divsw %d2,%d7
    2ba2:	4f80           	chkw %d0,%d7
    2ba4:	2708           	movel %a0,%a3@-
    2ba6:	8021           	orb %a1@-,%d0
    2ba8:	0091 040d 0c03 	oril #67963907,%a1@
    2bae:	7200           	moveq #0,%d1
    2bb0:	0103           	btst %d0,%d3
    2bb2:	0006 013a      	orib #58,%d6
    2bb6:	03e2           	bset %d1,%a2@-
    2bb8:	cf7d           	.short 0xcf7d
    2bba:	fe4f deea      	cp1ldw %sp,%a5,#8,#234
    2bbe:	ea4f           	lsrw #5,%d7
    2bc0:	df1b           	addb %d7,%a3@+
    2bc2:	1dfe           	.short 0x1dfe
    2bc4:	1ded           	.short 0x1ded
    2bc6:	bdc9           	cmpal %a1,%fp
    2bc8:	bb7f           	.short 0xbb7f
    2bca:	3ab3 78bf      	movew %a3@(ffffffffffffffbf,%d7:l),%a5@
    2bce:	7afe           	moveq #-2,%d5
    2bd0:	9ad7           	subaw %sp@,%a5
    2bd2:	8a0b           	.short 0x8a0b
    2bd4:	0b06           	btst %d5,%d6
    2bd6:	0d81           	bclr %d6,%d1
    2bd8:	71fa 3fb8      	mvzw %pc@(0x6b92),%d0
    2bdc:	3f17           	movew %sp@,%sp@-
    2bde:	3fb8 3ffc 7dfd 	movew 0x3ffc,@(7fda7c76)@(0)
    2be4:	7fda 7c76 
    2be8:	7cf0           	moveq #-16,%d6
    2bea:	fc3f           	.short 0xfc3f
    2bec:	fc1e fc8f      	cp0ldb %fp@+,%sp,#7,#143
    2bf0:	9c43           	subw %d3,%d6
    2bf2:	8c82           	orl %d2,%d6
    2bf4:	0c03 1c01      	cmpib #1,%d3
    2bf8:	0e01           	.short 0x0e01
    2bfa:	8006           	orb %d6,%d0
    2bfc:	8008           	.short 0x8008
    2bfe:	8401           	orb %d1,%d2
    2c00:	8402           	orb %d2,%d2
    2c02:	8602           	orb %d2,%d3
    2c04:	8601           	orb %d1,%d3
    2c06:	0f89 0f87      	movepw %d7,%a1@(3975)
    2c0a:	0fc0           	bset %d7,%d0
    2c0c:	1fe0           	.short 0x1fe0
    2c0e:	3ff0           	.short 0x3ff0
    2c10:	1ffc           	.short 0x1ffc
    2c12:	0ffc           	.short 0x0ffc
    2c14:	07fc           	.short 0x07fc
    2c16:	01fe           	.short 0x01fe
    2c18:	0881 0870      	bclr #112,%d1
    2c1c:	1000           	moveb %d0,%d0
    2c1e:	0400 0400      	subib #0,%d0
    2c22:	2000           	movel %d0,%d0
    2c24:	2800           	movel %d0,%d4
    2c26:	0000 0040      	orib #64,%d0
    2c2a:	0208           	.short 0x0208
    2c2c:	0504           	btst %d2,%d4
    2c2e:	0482 0560 0242 	subil #90178114,%d2
    2c34:	8000           	orb %d0,%d0
    2c36:	f002           	.short 0xf002
    2c38:	1831 1810      	moveb %a1@(10,%d1:l),%d4
    2c3c:	1820           	moveb %a0@-,%d4
    2c3e:	0c00 0c00      	cmpib #0,%d0
    2c42:	2800           	movel %d0,%d4
    2c44:	3800           	movew %d0,%d4
    2c46:	0000 01b8      	orib #-72,%d0
    2c4a:	0106           	btst %d0,%d6
    2c4c:	0303           	btst %d1,%d3
    2c4e:	0241 0323      	andiw #803,%d1
    2c52:	01c1           	bset %d0,%d1
    2c54:	8003           	orb %d3,%d0
    2c56:	f001           	.short 0xf001
    2c58:	00fe           	.short 0x00fe
    2c5a:	007f           	.short 0x007f
    2c5c:	0067 0000      	oriw #0,%sp@-
	...
    2c78:	b7c8           	cmpal %a0,%a3
    2c7a:	830f           	sbcd %sp@-,%a1@-
    2c7c:	f366           	.short 0xf366
    2c7e:	0c99 e876 4683 	cmpil #-394901885,%a1@+
    2c84:	515e           	subqw #8,%fp@+
    2c86:	515e           	subqw #8,%fp@+
    2c88:	2ea7           	movel %sp@-,%sp@
    2c8a:	df5e           	addw %d7,%fp@+
    2c8c:	f82f           	.short 0xf82f
    2c8e:	b94b           	cmpmw %a3@+,%a4@+
    2c90:	4ea6           	.short 0x4ea6
    2c92:	bcd5           	cmpaw %a5@,%fp
    2c94:	57ba           	.short 0x57ba
    2c96:	a8fe           	.short 0xa8fe
    2c98:	37c7           	.short 0x37c7
    2c9a:	8fff           	.short 0x8fff
    2c9c:	8cfe           	.short 0x8cfe
    2c9e:	f8f8           	.short 0xf8f8
    2ca0:	6471           	bccs 0x2d13
    2ca2:	cc07           	andb %d7,%d6
    2ca4:	0ec7           	.short 0x0ec7
    2ca6:	0ec7           	.short 0x0ec7
    2ca8:	7f1e           	mvsb %fp@+,%d7
    2caa:	3bbd           	.short 0x3bbd
    2cac:	e5ed c84c      	roxlw %a5@(-14260)
    2cb0:	79a1           	mvzb %a1@-,%d4
    2cb2:	b713           	eorb %d3,%a3@
    2cb4:	98e6           	subaw %fp@-,%a4
    2cb6:	ef44           	aslw #7,%d4
    2cb8:	8000           	orb %d0,%d0
    2cba:	7000           	moveq #0,%d0
    2cbc:	8001           	orb %d1,%d0
    2cbe:	8407           	orb %d7,%d2
    2cc0:	160b           	.short 0x160b
    2cc2:	3319           	movew %a1@+,%a1@-
    2cc4:	bf3f           	.short 0xbf3f
    2cc6:	bf3f           	.short 0xbf3f
    2cc8:	9fde           	subal %fp@+,%sp
    2cca:	e3c8           	.short 0xe3c8
    2ccc:	43f0 0ef0      	lea %a0@(fffffffffffffff0,%d0:l:8),%a1
    2cd0:	8e78 47b8      	orw 0x47b8,%d7
    2cd4:	a091 9063      	macw %d3u,%a1l,%a1@&,%d0
    2cd8:	0380           	bclr %d1,%d0
    2cda:	08e0 0260      	bset #96,%a0@-
    2cde:	f7d0           	.short 0xf7d0
    2ce0:	389e           	movew %fp@+,%a4@
    2ce2:	9277 d7d5      	subw @(0)@(0),%d1
    2ce6:	92bd           	.short 0x92bd
    2ce8:	b8f5 7fff 7ff7 	cmpaw @(7ff7ffd7)@(fffffffff79efe7f),%a4
    2cee:	ffd7 f79e fe7f 
    2cf4:	f6dd           	.short 0xf6dd
    2cf6:	67bf           	beqs 0x2cb7
    2cf8:	0380           	bclr %d1,%d0
    2cfa:	0fe0           	bset %d7,%a0@-
    2cfc:	0de0           	bset %d6,%a0@-
    2cfe:	fbb0 fffe 7def 	wddatal @(7def38bf)@(7d7b)
    2d04:	38bf 7d7b 
    2d08:	ffef           	.short 0xffef
    2d0a:	bf9f           	eorl %d7,%sp@+
    2d0c:	bbcf           	cmpal %sp,%a5
    2d0e:	7fac fcfd      	mvzb %a4@(-771),%d7
    2d12:	63f1           	blss 0x2d05
    2d14:	abbb           	.short 0xabbb
    2d16:	dbfb 0000      	addal %pc@(0x2d18,%d0:w),%a5
	...
    2d26:	0080 0000 4020 	oril #16416,%d0
    2d2c:	4420           	negb %a0@-
    2d2e:	8053           	orw %a3@,%d0
    2d30:	0302           	btst %d1,%d2
    2d32:	840a           	.short 0x840a
    2d34:	4404           	negb %d4
    2d36:	2404           	movel %d4,%d2
    2d38:	7eef           	moveq #-17,%d7
    2d3a:	dccf           	addaw %sp,%fp
    2d3c:	5ff9 7dbb d9f6 	sle 0x7dbbd9f6
    2d42:	fce4           	.short 0xfce4
    2d44:	dbfb 9b7a 6f77 	addal %pc@(0x6f779b78)@(ffffffffffffd3ff),%a5
    2d4a:	6e32 d3ff 
    2d4e:	9997           	subl %d4,%sp@
    2d50:	7dc1           	mvzw %d1,%d6
    2d52:	79ad dbf3      	mvzb %a5@(-9229),%d4
    2d56:	9fbf           	.short 0x9fbf
    2d58:	c5db           	mulsw %a3@+,%d2
    2d5a:	bbf9 fba6 fbcf 	cmpal 0xfba6fbcf,%a5
    2d60:	b7cd           	cmpal %a5,%a3
    2d62:	fb3f           	.short 0xfb3f
    2d64:	bd5f           	eorw %d6,%sp@+
    2d66:	fc5d f358      	cp0ldw %a5@+,%sp,#2,#344
    2d6a:	979d           	subl %d3,%a5@+
    2d6c:	2fa7 e7ba e3bf 	movel %sp@-,@(ffffffffe3bfe793,%fp:w:8)@(ffffffffffffb79f)
    2d72:	e793 b79f 
    2d76:	f39f           	.short 0xf39f
    2d78:	3804           	movew %d4,%d4
    2d7a:	0406 0419      	subib #25,%d6
    2d7e:	0430 0820 04c0 	subib #32,%a0@(ffffffffffffffc0,%d0:w:4)
    2d84:	02c0           	byterev %d0
    2d86:	03c0           	bset %d1,%d0
    2d88:	0ce0           	.short 0x0ce0
    2d8a:	6860           	bvcs 0x2dec
    2d8c:	9078 1065      	subw 0x1065,%d0
    2d90:	1060           	.short 0x1060
    2d92:	1060           	.short 0x1060
    2d94:	0860 0c60      	bchg #96,%a0@-
    2d98:	7fbf           	.short 0x7fbf
    2d9a:	ef3e           	rolb %d7,%d6
    2d9c:	efc9           	.short 0xefc9
    2d9e:	d1cf           	addal %sp,%a0
    2da0:	94c6           	subaw %d6,%a2
    2da2:	6ee1           	bgts 0x2d85
    2da4:	64e4           	bccs 0x2d8a
    2da6:	f1ef           	.short 0xf1ef
    2da8:	dfce           	addal %fp,%sp
    2daa:	9fce           	subal %fp,%sp
    2dac:	ff57 6dd3      	cp1stw %d6,%sp@,#7,#467
    2db0:	ff57 1d15      	cp1stw %d1,%sp@,#7,#277
    2db4:	4a33 ed33 cd9f 	tstb %a3@(ffffffffcd9f9e9f,%fp:l:4)@(7f1ebfc4)
    2dba:	9e9f 7f1e bfc4 
    2dc0:	fb4d           	.short 0xfb4d
    2dc2:	f1ef           	.short 0xf1ef
    2dc4:	fb6f 7ee6      	wddataw %sp@(32486)
    2dc8:	3ee7           	movew %sp@-,%sp@+
    2dca:	7ec7           	moveq #-57,%d7
    2dcc:	258e 930f 618f 	movel %fp,%a2@(0)@(618ff38f,%a1:w:2)
    2dd2:	f38f 
    2dd4:	b98f           	cmpml %sp@+,%a4@+
    2dd6:	9c8f           	subl %sp,%d6
    2dd8:	3260           	moveaw %a0@-,%a1
    2dda:	4178           	.short 0x4178
    2ddc:	80f9 003f 00bf 	divuw 0x3f00bf,%d0
    2de2:	001e 009e      	orib #-98,%fp@+
    2de6:	811c           	orb %d0,%a4@+
    2de8:	811c           	orb %d0,%a4@+
    2dea:	813c           	.short 0x813c
    2dec:	c23f           	.short 0xc23f
    2dee:	643f           	bccs 0x2e2f
    2df0:	9c3f           	.short 0x9c3f
    2df2:	0e7f           	.short 0x0e7f
    2df4:	07ff           	.short 0x07ff
    2df6:	03ff           	.short 0x03ff
    2df8:	ce33 7ed1      	andb %a3@(ffffffffffffffd1,%d7:l:8),%d7
    2dfc:	4eb3 e6b1      	jsr %a3@(ffffffffffffffb1,%fp:w:8)
    2e00:	7733 6737 cf37 	mvsb %a3@(ffffffffcf377f67)@(6eefe957,%d6:w:8),%d3
    2e06:	7f67 6eef e957 
    2e0c:	47ab 6497      	chkw %a3@(25751),%d3
    2e10:	df07           	addxb %d7,%d7
    2e12:	594b           	subqw #4,%a3
    2e14:	ecac           	lsrl %d6,%d4
    2e16:	bf81           	eorl %d7,%d1
    2e18:	be0f           	cmpb %sp,%d7
    2e1a:	fe0f fe0f      	cp1ldb %sp,%sp,#8,#15
    2e1e:	df0f           	addxb %sp@-,%sp@-
    2e20:	cf0f           	abcd %sp@-,%sp@-
    2e22:	df0f           	addxb %sp@-,%sp@-
    2e24:	ff0f ff1f      	cp1stb %sp,%sp,#8,#287
    2e28:	fe1f 383f      	cp1ldb %sp@+,%d3,#5,#63
    2e2c:	c067           	andw %sp@-,%d0
    2e2e:	e16f           	lslw %d0,%d7
    2e30:	b0ff           	.short 0xb0ff
    2e32:	f4bf           	cpusha ic
    2e34:	e37f           	rolw %d1,%d7
    2e36:	607f           	bras 0x2eb7
    2e38:	01ff           	.short 0x01ff
    2e3a:	01ff           	.short 0x01ff
    2e3c:	01ff           	.short 0x01ff
    2e3e:	00ff           	.short 0x00ff
    2e40:	00ff           	.short 0x00ff
    2e42:	00ff           	.short 0x00ff
    2e44:	00ff           	.short 0x00ff
    2e46:	00ff           	.short 0x00ff
    2e48:	01ff           	.short 0x01ff
    2e4a:	c7ff           	.short 0xc7ff
    2e4c:	3fff           	.short 0x3fff
    2e4e:	1fff           	.short 0x1fff
    2e50:	0fff           	.short 0x0fff
    2e52:	0fff           	.short 0x0fff
    2e54:	1fff           	.short 0x1fff
    2e56:	1fff           	.short 0x1fff
    2e58:	3522           	movew %a2@-,%a2@-
    2e5a:	83f9 21af 001e 	divsw 0x21af001e,%d1
    2e60:	3003           	movew %d3,%d0
    2e62:	18f9 0706 00f9 	moveb 0x70600f9,%a4@+
    2e68:	000c           	.short 0x000c
    2e6a:	0007 0003      	orib #3,%d7
    2e6e:	8003           	orb %d3,%d0
    2e70:	c0c5           	muluw %d5,%d0
    2e72:	4103           	chkl %d3,%d0
    2e74:	4007           	negxb %d7
    2e76:	401f           	negxb %sp@+
    2e78:	e2df           	lsrw %sp@+
    2e7a:	4107           	chkl %d7,%d0
    2e7c:	d210           	addb %a0@,%d1
    2e7e:	3001           	movew %d1,%d0
    2e80:	0800 07fc      	btst #-4,%d0
    2e84:	00ff           	.short 0x00ff
    2e86:	0107           	btst %d0,%d7
    2e88:	0003 0000      	orib #0,%d3
    2e8c:	0000 8080      	orib #-128,%d0
    2e90:	c040           	andw %d0,%d0
    2e92:	c0c0           	muluw %d0,%d0
    2e94:	c000           	andb %d0,%d0
    2e96:	c000           	andb %d0,%d0
    2e98:	1fff           	.short 0x1fff
    2e9a:	3fff           	.short 0x3fff
    2e9c:	0fff           	.short 0x0fff
    2e9e:	0fff           	.short 0x0fff
    2ea0:	07ff           	.short 0x07ff
    2ea2:	0007 0001      	orib #1,%d7
    2ea6:	0000 0010      	orib #16,%d0
    2eaa:	001c 001e      	orib #30,%a4@+
    2eae:	009e 01de 01fe 	oril #31326718,%fp@+
    2eb4:	003c 0078      	orib #120,%ccr
    2eb8:	e1fc           	.short 0xe1fc
    2eba:	4411           	negb %a1@
    2ebc:	2bf0           	.short 0x2bf0
    2ebe:	d3ef 0e6b      	addal %sp@(3691),%a1
    2ec2:	f8d9           	.short 0xf8d9
    2ec4:	79bd           	.short 0x79bd
    2ec6:	6c76           	bges 0x2f3e
    2ec8:	9785           	subxl %d5,%d3
    2eca:	4bfe           	.short 0x4bfe
    2ecc:	45cb           	.short 0x45cb
    2ece:	b2f8 cfdf      	cmpaw 0xffffcfdf,%a1
    2ed2:	77a6           	mvzb %fp@-,%d3
    2ed4:	9f79 eefe e003 	subw %d7,0xeefee003
    2eda:	43ef 468f      	lea %sp@(18063),%a1
    2ede:	7e5f           	moveq #95,%d7
    2ee0:	fe18 f83b      	cp1ldb %a0@+,%sp,#5,#59
    2ee4:	6071           	bras 0x2f57
    2ee6:	71fc 198e      	mvzw #6542,%d0
    2eea:	cc8f           	.short 0xcc8f
    2eec:	8679 c33a 7b22 	orw 0xc33a7b22,%d3
    2ef2:	9e79 ecfe f1ff 	subw 0xecfef1ff,%d7
    2ef8:	0000 0800      	orib #0,%d0
    2efc:	d900           	addxb %d0,%d4
    2efe:	cf87           	.short 0xcf87
    2f00:	fe0d 080c      	cp1ldb %a5,%d0,#5,#12
    2f04:	8017           	orb %sp@,%d0
    2f06:	8033 407f      	orb %a3@(7f,%d4:w),%d0
    2f0a:	20df           	movel %sp@+,%a0@+
    2f0c:	f059           	.short 0xf059
    2f0e:	ec18           	rorb #6,%d0
    2f10:	6600 1e00      	bnew 0x4d12
    2f14:	0c10 807c      	cmpib #124,%a0@
	...
    2f24:	8000           	orb %d0,%d0
    2f26:	c000           	andb %d0,%d0
    2f28:	c000           	andb %d0,%d0
    2f2a:	c000           	andb %d0,%d0
    2f2c:	f800           	.short 0xf800
    2f2e:	8e00           	orb %d0,%d7
    2f30:	2600           	movel %d0,%d3
    2f32:	7700           	mvsb %d0,%d3
    2f34:	2700           	movel %d0,%a3@-
    2f36:	8f00           	sbcd %d0,%d7
	...
    2f44:	8000           	orb %d0,%d0
    2f46:	c000           	andb %d0,%d0
    2f48:	c000           	andb %d0,%d0
    2f4a:	c000           	andb %d0,%d0
    2f4c:	7800           	moveq #0,%d4
    2f4e:	fe00 de00      	cp1ldb %d0,%a5,#8,#0
    2f52:	8f00           	sbcd %d0,%d7
    2f54:	df00           	addxb %d0,%d7
    2f56:	ff00 0000      	cp1stb %d0,%d0,#1,#0
	...
    2f6a:	0000 8000      	orib #0,%d0
	...
    2f76:	0000 ff00      	orib #0,%d0
    2f7a:	ffc0           	.short 0xffc0
    2f7c:	fc70           	.short 0xfc70
    2f7e:	e130           	roxlb %d0,%d0
    2f80:	8bb8 e938      	orl %d5,0xffffe938
    2f84:	ec78           	rorw %d6,%d0
    2f86:	77f0 7ff0 7fe0 	mvzw @(7fe0ffe0),%d3
    2f8c:	ffe0 
    2f8e:	e3c0           	.short 0xe3c0
    2f90:	c980           	.short 0xc980
    2f92:	ddf8 c98e      	addal 0xffffc98e,%fp
    2f96:	ff26 ff00      	cp1stb %sp,%fp@-,#8,#256
    2f9a:	ffc0           	.short 0xffc0
    2f9c:	eff0 5ef0 fc78 	bfins %d5,%a0@(78,%sp:l:4),%d3,%d0
    2fa2:	fef8           	.short 0xfef8
    2fa4:	fff8           	.short 0xfff8
    2fa6:	eff0           	.short 0xeff0
    2fa8:	f7f0           	.short 0xf7f0
    2faa:	d1e0           	addal %a0@-,%a0
    2fac:	be00           	cmpb %d0,%d7
    2fae:	ffe0           	.short 0xffe0
    2fb0:	b7c0           	cmpal %d0,%a3
    2fb2:	a3f8           	.short 0xa3f8
    2fb4:	b77e           	.short 0xb77e
    2fb6:	82de           	divuw %fp@+,%d1
    2fb8:	0000 0000      	orib #0,%d0
    2fbc:	1000           	moveb %d0,%d0
    2fbe:	a000 0000      	macw %d0l,%d0l
    2fc2:	0000 0000      	orib #0,%d0
    2fc6:	1000           	moveb %d0,%d0
    2fc8:	0800 2e00      	btst #0,%d0
    2fcc:	4180           	chkw %d0,%d0
    2fce:	0000 4000      	orib #0,%d0
    2fd2:	4000           	negxb %d0
    2fd4:	4080           	negxl %d0
    2fd6:	7d00           	mvsb %d0,%d6
    2fd8:	a3f7           	.short 0xa3f7
    2fda:	89a7           	orl %d4,%sp@-
    2fdc:	ddcf           	addal %sp,%fp
    2fde:	49fe           	.short 0x49fe
    2fe0:	e3fe           	.short 0xe3fe
    2fe2:	fff8           	.short 0xfff8
    2fe4:	99c0           	subal %d0,%a4
    2fe6:	dec0           	addaw %d0,%sp
    2fe8:	9ec0           	subaw %d0,%sp
    2fea:	6fc0           	bles 0x2fac
    2fec:	bbd8           	cmpal %a0@+,%a5
    2fee:	3b48 5fc0      	movew %a0,%a5@(24512)
    2ff2:	5f40           	subqw #7,%d0
    2ff4:	fb40           	.short 0xfb40
    2ff6:	3fc0           	.short 0x3fc0
    2ff8:	7e8f           	moveq #-113,%d7
    2ffa:	77df           	mvzw %sp@+,%d3
    2ffc:	62ff b77e befe 	bhil 0xb77eeefc
    3002:	d338 6f80      	addb %d1,0x6f80
    3006:	29c0           	.short 0x29c0
    3008:	6dc0           	blts 0x2fca
    300a:	b390           	eorl %d1,%a0@
    300c:	67e8           	beqs 0x2ff6
    300e:	f778           	.short 0xf778
    3010:	b740           	eorw %d3,%d0
    3012:	bec0           	cmpaw %d0,%sp
    3014:	e7c0           	.short 0xe7c0
    3016:	e2c0           	.short 0xe2c0
    3018:	c100           	abcd %d0,%d0
    301a:	c000           	andb %d0,%d0
    301c:	8100           	sbcd %d0,%d0
    301e:	c080           	andl %d0,%d0
    3020:	c100           	abcd %d0,%d0
    3022:	2cc0           	movel %d0,%fp@+
    3024:	1040           	.short 0x1040
    3026:	1000           	moveb %d0,%d0
    3028:	1000           	moveb %d0,%d0
    302a:	4c50           	.short 0x4c50
    302c:	c078 80f8      	andw 0xffff80f8,%d0
    3030:	8840           	orw %d0,%d4
    3032:	0140           	bchg %d0,%d0
    3034:	10c0           	moveb %d0,%a0@+
    3036:	1cc0           	moveb %d0,%fp@+
    3038:	da40           	addw %d0,%d5
    303a:	7ac0           	moveq #-64,%d5
    303c:	f480           	.short 0xf480
    303e:	d400           	addb %d0,%d2
    3040:	b8c0           	cmpaw %d0,%a4
    3042:	eb40           	aslw #5,%d0
    3044:	db00           	addxb %d0,%d5
    3046:	b600           	cmpb %d0,%d3
    3048:	e600           	asrb #3,%d0
    304a:	ea00           	asrb #5,%d0
    304c:	ce00           	andb %d0,%d7
    304e:	fa00           	.short 0xfa00
    3050:	ff00 ff00      	cp1stb %sp,%d0,#8,#256
    3054:	f500           	pflushn %a0@
    3056:	7f80           	mvzb %d0,%d7
    3058:	27c0           	.short 0x27c0
    305a:	8fc0           	divsw %d0,%d7
    305c:	2f80 bf80      	movel %d0,@(0,%a3:l:8)
    3060:	ff00 dfc0      	cp1stb %a5,%d0,#8,#448
    3064:	ff00 ae00      	cp1stb %a2,%d0,#8,#0
    3068:	be00           	cmpb %d0,%d7
    306a:	9e00           	subb %d0,%d7
    306c:	fe00 de00      	cp1ldb %d0,%a5,#8,#0
    3070:	ef00           	aslb #7,%d0
    3072:	f700           	.short 0xf700
    3074:	ff00 f7a0      	cp1stb %sp,%d0,#4,#416
    3078:	11c0 31c0      	moveb %d0,0x31c0
    307c:	c380           	.short 0xc380
    307e:	0380           	bclr %d1,%d0
    3080:	07c0           	bset %d3,%d0
    3082:	87c0           	divsw %d0,%d3
    3084:	8700           	sbcd %d0,%d3
    3086:	c200           	andb %d0,%d1
    3088:	c200           	andb %d0,%d1
    308a:	c600           	andb %d0,%d3
    308c:	ce00           	andb %d0,%d7
    308e:	c600           	andb %d0,%d3
    3090:	e300           	aslb #1,%d0
    3092:	f300           	.short 0xf300
    3094:	f300           	.short 0xf300
    3096:	f3b0           	.short 0xf3b0
    3098:	37b0 5780 a7e0 	movew @(0,%d5:w:8),@(4ff0)
    309e:	4ff0 
    30a0:	c978 a2f8      	andw %d4,0xffffa2f8
    30a4:	10bc e27c      	moveb #124,%a0@
    30a8:	713d           	.short 0x713d
    30aa:	397c 99be 98b6 	movew #-26178,%a4@(-26442)
    30b0:	ca5a           	andw %a2@+,%d5
    30b2:	5a97           	addql #5,%sp@
    30b4:	9aaf 3daf      	subl %sp@(15791),%d5
    30b8:	ffd0           	.short 0xffd0
    30ba:	efe0           	.short 0xefe0
    30bc:	5fe0           	sle %a0@-
    30be:	bff0 37f8 5ff8 	cmpal @(5ff8e7fc),%sp
    30c4:	e7fc 
    30c6:	f1fd           	.short 0xf1fd
    30c8:	fbfe           	.short 0xfbfe
    30ca:	fbdf           	.short 0xfbdf
    30cc:	7bee 7bee      	mvzw %fp@(31726),%d5
    30d0:	39f6           	.short 0x39f6
    30d2:	b977 7967 fc67 	eorw %d4,%sp@(fffffffffffffc67)@(fffffffff3f0e7e0)
    30d8:	f3f0 e7e0 
    30dc:	cfe0           	mulsw %a0@-,%d7
    30de:	bff0 fff8 fff8 	cmpal @(fffffffffff8fffc),%sp
    30e4:	fffc 
    30e6:	3ffd           	.short 0x3ffd
    30e8:	1fff           	.short 0x1fff
    30ea:	0fff           	.short 0x0fff
    30ec:	06fe           	.short 0x06fe
    30ee:	067e           	.short 0x067e
    30f0:	077e           	.short 0x077e
    30f2:	073f           	.short 0x073f
    30f4:	073f           	.short 0x073f
    30f6:	071f           	btst %d3,%sp@+
    30f8:	f350           	frestore %a0@
    30fa:	de77 e4b8      	addw %sp@(ffffffffffffffb8,%fp:w:4),%d7
    30fe:	fddf           	.short 0xfddf
    3100:	4efa 6b3d      	jmp %pc@(0x9c3f)
    3104:	90c2           	subaw %d2,%a0
    3106:	413f           	.short 0x413f
    3108:	bef1 49cf 3707 	cmpaw @(0)@(3707cfec),%sp
    310e:	cfec 
    3110:	bb7e           	.short 0xbb7e
    3112:	5d8f           	subql #6,%sp
    3114:	defe           	.short 0xdefe
    3116:	ef7b           	rolw %d7,%d3
    3118:	fcb8           	.short 0xfcb8
    311a:	e19c           	roll #8,%d4
    311c:	fa1f           	.short 0xfa1f
    311e:	5e3a           	.short 0x5e3a
    3120:	df3d           	.short 0xdf3d
    3122:	8bc7           	divsw %d7,%d5
    3124:	f0fe           	.short 0xf0fe
    3126:	60fc           	bras 0x3124
    3128:	21f3 d7c1 cfce 	movel @(0)@(0),0xffffcfce
    312e:	bbc5           	cmpal %d5,%a5
    3130:	7c4c           	moveq #76,%d6
    3132:	de36 ef23 7f97 	addb %fp@(7f97,%fp:l:8)@(40f0003),%d7
    3138:	040f 0003 
    313c:	01c7           	bset %d0,%d7
    313e:	6002           	bras 0x3142
    3140:	3808           	movew %a0,%d4
    3142:	d800           	addb %d0,%d4
    3144:	c001           	andb %d1,%d0
    3146:	7c01           	moveq #1,%d6
    3148:	7804           	moveq #4,%d4
    314a:	1067           	.short 0x1067
    314c:	c1f2 83fe 01df 	mulsw @(1df385f)@(ffffffffffffec1b),%d0
    3152:	385f ec1b 
    3156:	6619           	bnes 0x3171
    3158:	bfbc           	.short 0xbfbc
    315a:	7cfe           	moveq #-2,%d6
    315c:	eed3           	.short 0xeed3
    315e:	d3fb 1b0f dfcf 	addal %pc@(0x3160)@(ffffffffdfcfd3ae,%d1:l:2),%a1
    3164:	d3ae 
    3166:	5a6d 0e94      	addqw #5,%a5@(3732)
    316a:	0985           	bclr %d4,%d5
    316c:	7deb a7e5      	mvzw %a3@(-22555),%d6
    3170:	f589           	plpaw %a1@
    3172:	9840           	subw %d0,%d4
    3174:	d590           	addl %d2,%a0@
    3176:	6122           	bsrs 0x319a
    3178:	8f87 5f9d      	unpk %d7,%d7,#24477
    317c:	6d9f           	blts 0x311d
    317e:	dff7 160c      	addal %sp@(c,%d1:w:8),%sp
    3182:	1e01           	moveb %d1,%d7
    3184:	1fa6 564d      	moveb %fp@-,%sp@(4d,%d5:w:8)
    3188:	0ecf           	.short 0x0ecf
    318a:	0f6e 7b4f      	bchg %d7,%fp@(31567)
    318e:	3f4f 6deb      	movew %sp,%sp@(28139)
    3192:	f881           	.short 0xf881
    3194:	b001           	cmpb %d1,%d0
    3196:	6200 fcf8      	bhiw 0x2e90
    319a:	f870           	.short 0xf870
    319c:	f060           	.short 0xf060
    319e:	e0e1           	asrw %a1@-
    31a0:	e1f3 f3ff e1ff 	aslw @(ffffffffe1ff61f2)@(31f830f8)
    31a6:	61f2 31f8 30f8 
    31ac:	60f4           	bras 0x31a2
    31ae:	c1f2 8396 03f7 	mulsw @(0)@(3f7,%a0:w:2),%d0
    31b4:	05f1 01c3 0022 	bset %d2,@(0)@(220245)
    31ba:	0245 
    31bc:	0942           	bchg %d4,%d2
    31be:	0b8a 0889      	movepw %d5,%a2@(2185)
    31c2:	0d0b 048e      	movepw %a3@(1166),%d6
    31c6:	0113           	btst %d0,%a3@
    31c8:	0296 004c 0103 	andil #4980995,%fp@
    31ce:	0244 0405      	andiw #1029,%d4
    31d2:	0443 0440      	subiw #1088,%d3
    31d6:	0482 00e0 0381 	subil #14680961,%d2
    31dc:	02c3           	byterev %d3
    31de:	0303           	btst %d1,%d3
    31e0:	039f           	bclr %d1,%sp@+
    31e2:	021d 021e      	andib #30,%a5@+
    31e6:	061e 031a      	addib #26,%fp@+
    31ea:	030c 0247      	movepw %a4@(583),%d1
    31ee:	0087 01c6 0186 	oril #29753734,%d7
    31f4:	01c6           	bset %d0,%d6
    31f6:	0304           	btst %d1,%d4
    31f8:	0303           	btst %d1,%d3
    31fa:	0406 0c04      	subib #4,%d6
    31fe:	0c0c 0c10      	cmpib #16,%d4
    3202:	0c10 0590      	cmpib #-112,%a0@
    3206:	04c1           	ff1 %d1
    3208:	00c1           	bitrev %d1
    320a:	02c1           	byterev %d1
    320c:	0384           	bclr %d1,%d4
    320e:	0300           	btst %d1,%d0
    3210:	0700           	btst %d3,%d0
    3212:	0705           	btst %d3,%d5
    3214:	0607 0407      	addib #7,%d7
    3218:	0084 0002 0009 	oril #131081,%d4
    321e:	010b 0108      	movepw %a3@(264),%d0
    3222:	020d           	.short 0x020d
    3224:	0404 0881      	subib #-127,%d4
    3228:	0880 0900      	bclr #0,%d0
    322c:	0001 0402      	orib #2,%d1
    3230:	0284 0184 0104 	andil #25428228,%d4
    3236:	0204 0380      	andib #-128,%d4
    323a:	030b 0302      	movepw %a3@(770),%d1
    323e:	0203 0203      	andib #3,%d3
    3242:	0082 0082 0306 	oril #8520454,%d2
    3248:	0383           	bclr %d1,%d3
    324a:	0203 0102      	andib #2,%d3
    324e:	0380           	bclr %d1,%d0
    3250:	0501           	btst %d2,%d1
    3252:	0281 0201 0303 	andil #33620739,%d1
    3258:	0007 008c      	orib #-116,%d7
    325c:	008c 018c 018c 	oril #25952652,%d4
    3262:	038c 0705      	movepw %d1,%a4@(1797)
    3266:	0e04           	.short 0x0e04
    3268:	0c02 0c02      	cmpib #2,%d2
    326c:	0603 0403      	addib #3,%d3
    3270:	0607 0107      	addib #7,%d7
    3274:	0006 0004      	orib #4,%d6
    3278:	0100           	btst %d0,%d0
    327a:	0002 0100      	orib #0,%d2
    327e:	0101           	btst %d0,%d1
    3280:	0001 0002      	orib #2,%d1
    3284:	0004 0008      	orib #8,%d4
    3288:	0008           	.short 0x0008
    328a:	0009           	.short 0x0009
    328c:	0000 0004      	orib #4,%d0
    3290:	0002 0001      	orib #1,%d2
    3294:	0001 0002      	orib #2,%d1
    3298:	0007 0105      	orib #5,%d7
    329c:	0007 0106      	orib #6,%d7
    32a0:	0106           	btst %d0,%d6
    32a2:	0004 0000      	orib #0,%d4
    32a6:	0003 0003      	orib #3,%d3
    32aa:	0002 0009      	orib #9,%d2
    32ae:	0003 0005      	orib #5,%d3
    32b2:	0006 0002      	orib #2,%d6
    32b6:	0003 0004      	orib #4,%d3
    32ba:	0004 0104      	orib #4,%d4
    32be:	0005 0105      	orib #5,%d5
    32c2:	0007 0007      	orib #7,%d7
    32c6:	000e           	.short 0x000e
    32c8:	000c           	.short 0x000c
    32ca:	000c           	.short 0x000c
    32cc:	000e           	.short 0x000e
    32ce:	0004 0006      	orib #6,%d4
    32d2:	0005 0000      	orib #0,%d5
    32d6:	0000 0003      	orib #3,%d0
    32da:	0002 0002      	orib #2,%d2
    32de:	0000 0000      	orib #0,%d0
    32e2:	0000 0001      	orib #1,%d0
    32e6:	0002 0000      	orib #0,%d2
    32ea:	0000 0001      	orib #1,%d0
    32ee:	0001 0001      	orib #1,%d1
    32f2:	0000 0000      	orib #0,%d0
    32f6:	0001 0000      	orib #0,%d1
    32fa:	0001 0000      	orib #0,%d1
    32fe:	0000 0001      	orib #1,%d0
    3302:	0001 0001      	orib #1,%d1
	...
    3312:	0001 0001      	orib #1,%d1
    3316:	0001 0002      	orib #2,%d1
    331a:	0002 0003      	orib #3,%d2
    331e:	0003 0002      	orib #2,%d3
    3322:	0002 0002      	orib #2,%d2
    3326:	0003 0001      	orib #1,%d3
    332a:	0001 0001      	orib #1,%d1
    332e:	0001 0001      	orib #1,%d1
    3332:	0001 0001      	orib #1,%d1
    3336:	0001 9fdf      	orib #-33,%d1
    333a:	d3bc           	.short 0xd3bc
    333c:	fb79 df7f f64f 	wddataw 0xdf7ff64f
    3342:	b8eb 7f37      	cmpaw %a3@(32567),%a4
    3346:	c9bf           	.short 0xc9bf
    3348:	b55f           	eorw %d2,%sp@+
    334a:	892c ee79      	orb %d4,%a4@(-4487)
    334e:	2c27           	movel %sp@-,%d6
    3350:	6c75           	bges 0x33c7
    3352:	c471 94d1      	andw %a1@(ffffffffffffffd1,%a1:w:4),%d2
    3356:	78c9           	moveq #-55,%d4
    3358:	ff18 be30      	cp1stb %a3,%a0@+,#8,#48
    335c:	f669           	.short 0xf669
    335e:	9d3f           	.short 0x9d3f
    3360:	8678 38d9      	orw 0x38d9,%d3
    3364:	3ff1           	.short 0x3ff1
    3366:	ff63 cb9e      	cp1stw %a4,%a3@-,#6,#414
    336a:	e640           	asrw #3,%d0
    336c:	c4b9 c1ff a9af 	andl 0xc1ffa9af,%d2
    3372:	c9ec 1b5c      	mulsw %a4@(7004),%d4
    3376:	7b84           	mvzb %d4,%d5
    3378:	03ff           	.short 0x03ff
    337a:	01ff           	.short 0x01ff
    337c:	81ff           	.short 0x81ff
    337e:	f3cf           	.short 0xf3cf
    3380:	ff87 ff07      	cp1stl %sp,%d7,#8,#263
    3384:	c80f           	.short 0xc80f
    3386:	001f 5e3f      	orib #63,%sp@+
    338a:	7fbf           	.short 0x7fbf
    338c:	3f25           	movew %a5@-,%sp@-
    338e:	3f01           	movew %d1,%sp@-
    3390:	1700           	moveb %d0,%a3@-
    3392:	3627           	movew %sp@-,%d3
    3394:	e443           	asrw #2,%d3
    3396:	8043           	orw %d3,%d0
    3398:	9000           	subb %d0,%d0
    339a:	b002           	cmpb %d2,%d0
    339c:	6114           	bsrs 0x33b2
    339e:	c118           	andb %d0,%a0@+
    33a0:	8208           	.short 0x8208
    33a2:	0404 0880      	subib #-128,%d4
    33a6:	0880 0908      	bclr #8,%d0
    33aa:	8008           	.short 0x8008
    33ac:	0408           	.short 0x0408
    33ae:	8280           	orl %d0,%d1
    33b0:	8180 4108      	unpk %d0,%d0,#16648
    33b4:	2200           	movel %d0,%d1
    33b6:	6000 f308      	braw 0x26c0
    33ba:	d31c           	addb %d1,%a4@+
    33bc:	e20a           	lsrb #1,%d2
    33be:	4214           	clrb %a4@
    33c0:	8084           	orl %d4,%d0
    33c2:	008c 0300 0388 	oril #50332552,%d4
    33c8:	0200 0100      	andib #0,%d0
    33cc:	0380           	bclr %d1,%d0
    33ce:	8508           	sbcd %a0@-,%a2@-
    33d0:	8288           	.short 0x8288
    33d2:	0208           	.short 0x0208
    33d4:	6300 a000      	blsw 0xffffd3d6
    33d8:	0086 0082 0186 	oril #8520070,%d6
    33de:	0188 0380      	movepw %d0,%a0@(896)
    33e2:	0700           	btst %d3,%d0
    33e4:	0e08           	.short 0x0e08
    33e6:	0c00 0c08      	cmpib #8,%d0
    33ea:	8608           	.short 0x8608
    33ec:	c408           	.short 0xc408
    33ee:	4608           	.short 0x4608
    33f0:	4108           	.short 0x4108
    33f2:	c008           	.short 0xc008
    33f4:	8000           	orb %d0,%d0
    33f6:	0100           	btst %d0,%d0
    33f8:	c000           	andb %d0,%d0
    33fa:	4100           	chkl %d0,%d0
    33fc:	4100           	chkl %d0,%d0
    33fe:	8100           	sbcd %d0,%d0
    3400:	8000           	orb %d0,%d0
    3402:	0000 8100      	orib #0,%d0
    3406:	0000 8000      	orib #0,%d0
    340a:	4000           	negxb %d0
    340c:	0000 4000      	orib #0,%d0
    3410:	0000 4000      	orib #0,%d0
    3414:	4000           	negxb %d0
    3416:	8000           	orb %d0,%d0
    3418:	c100           	abcd %d0,%d0
    341a:	8000           	orb %d0,%d0
    341c:	c000           	andb %d0,%d0
    341e:	0000 8100      	orib #0,%d0
    3422:	0100           	btst %d0,%d0
    3424:	0100           	btst %d0,%d0
    3426:	0000 0000      	orib #0,%d0
    342a:	0000 4000      	orib #0,%d0
    342e:	8000           	orb %d0,%d0
    3430:	c000           	andb %d0,%d0
    3432:	8000           	orb %d0,%d0
    3434:	c000           	andb %d0,%d0
    3436:	0000 0000      	orib #0,%d0
    343a:	0100           	btst %d0,%d0
    343c:	0100           	btst %d0,%d0
    343e:	0100           	btst %d0,%d0
    3440:	0100           	btst %d0,%d0
    3442:	0100           	btst %d0,%d0
    3444:	8100           	sbcd %d0,%d0
    3446:	c000           	andb %d0,%d0
    3448:	c000           	andb %d0,%d0
    344a:	c000           	andb %d0,%d0
    344c:	8000           	orb %d0,%d0
	...
    3456:	0000 8000      	orib #0,%d0
	...
    3466:	8000           	orb %d0,%d0
    3468:	8000           	orb %d0,%d0
    346a:	0000 0000      	orib #0,%d0
    346e:	0000 8000      	orib #0,%d0
    3472:	8000           	orb %d0,%d0
    3474:	0000 0000      	orib #0,%d0
    3478:	8000           	orb %d0,%d0
	...
    3482:	0000 8000      	orib #0,%d0
    3486:	0000 8000      	orib #0,%d0
    348a:	0000 0000      	orib #0,%d0
    348e:	8000           	orb %d0,%d0
    3490:	0000 8000      	orib #0,%d0
    3494:	0000 0000      	orib #0,%d0
    3498:	0000 8000      	orib #0,%d0
    349c:	8000           	orb %d0,%d0
    349e:	8000           	orb %d0,%d0
    34a0:	8000           	orb %d0,%d0
	...
    34b6:	8000           	orb %d0,%d0
	...
    34f8:	8000           	orb %d0,%d0
    34fa:	8000           	orb %d0,%d0
    34fc:	8000           	orb %d0,%d0
	...
    3516:	0000 ea92      	orib #-110,%d0
    351a:	091a           	btst %d4,%a2@+
    351c:	257c 0348 2268 	movel #55059048,%a2@(8752)
    3522:	2230 
    3524:	1290           	moveb %a0@,%a1@
    3526:	1064           	.short 0x1064
    3528:	0094 00da 0864 	oril #14288996,%a4@
    352e:	0835 0419 020d 	btst #25,%a5@(d,%d0:w:2)
    3534:	1107           	moveb %d7,%a0@-
    3536:	110c           	.short 0x110c
    3538:	dd3f           	.short 0xdd3f
    353a:	2677 103e      	moveal %sp@(3e,%d1:w),%a3
    353e:	383c 185c      	movew #6236,%d4
    3542:	3838 0c88      	movew 0xc88,%d4
    3546:	1c60           	.short 0x1c60
    3548:	0cf0           	.short 0x0cf0
    354a:	0cb8 047c 042c 	cmpil #75236396,0x101f
    3550:	101f 
    3552:	100b           	.short 0x100b
    3554:	0c07 1c07      	cmpib #7,%d7
    3558:	87a1           	orl %d3,%a1@-
    355a:	1fe1           	.short 0x1fe1
    355c:	0dc2           	bset %d6,%d2
    355e:	0fc4           	bset %d7,%d4
    3560:	0e84           	.short 0x0e84
    3562:	06c8           	rtm %a0
    3564:	0278 001c 100c 	andiw #28,0x100c
    356a:	1006           	moveb %d6,%d0
    356c:	1802           	moveb %d2,%d4
    356e:	1803           	moveb %d3,%d4
    3570:	1c00           	moveb %d0,%d6
    3572:	0e00           	.short 0x0e00
    3574:	0700           	btst %d3,%d0
    3576:	0308 0906      	movepw %a0@(2310),%d1
    357a:	0013 020c      	orib #12,%a3@
    357e:	1412           	moveb %a2@,%d2
    3580:	181a           	moveb %a2@+,%d4
    3582:	082c 0440 0064 	btst #64,%a4@(100)
    3588:	0032 0824 0829 	orib #36,%a2@(29,%d0:l)
    358e:	081d 0011      	btst #17,%a5@+
    3592:	000b           	.short 0x000b
    3594:	0812 0008      	btst #8,%a2@
    3598:	0405 0803      	subib #3,%d5
    359c:	1c0e           	.short 0x1c0e
    359e:	0a1e 1416      	eorib #22,%fp@+
    35a2:	0406 0c66      	subib #102,%d6
    35a6:	0052 0830      	oriw #2096,%a2@
    35aa:	001d 0034      	orib #52,%a5@+
    35ae:	000c           	.short 0x000c
    35b0:	081c 0804      	btst #4,%a4@+
    35b4:	0804 0006      	btst #6,%d4
    35b8:	0308 0618      	movepw %a0@(1560),%d1
    35bc:	0232 0620 0820 	andib #32,%a2@(20,%d0:l)
    35c2:	003a           	.short 0x003a
    35c4:	001e 080e      	orib #14,%fp@+
    35c8:	000e           	.short 0x000e
    35ca:	0803 0803      	btst #3,%d3
    35ce:	0803 0803      	btst #3,%d3
    35d2:	0803 081a      	btst #26,%d3
    35d6:	0032 0010 0020 	orib #16,%a2@(20,%d0:w)
    35dc:	0008           	.short 0x0008
    35de:	0024 0002      	orib #2,%a4@-
    35e2:	0022 0022      	orib #34,%a2@-
    35e6:	0012 0010      	orib #16,%a2@
    35ea:	0004 0000      	orib #0,%d4
    35ee:	0008           	.short 0x0008
    35f0:	0008           	.short 0x0008
    35f2:	0004 0002      	orib #2,%d4
    35f6:	0011 000c      	orib #12,%a1@
    35fa:	000c           	.short 0x000c
    35fc:	0024 0010      	orib #16,%a4@-
    3600:	0038 0018 0038 	orib #24,0x38
    3606:	000c           	.short 0x000c
    3608:	001e 000a      	orib #10,%fp@+
    360c:	000e           	.short 0x000e
    360e:	0006 0006      	orib #6,%d6
    3612:	0002 0010      	orib #16,%d2
    3616:	000c           	.short 0x000c
    3618:	0034 0034 001c 	orib #52,%a4@(1c,%d0:w)
    361e:	000c           	.short 0x000c
    3620:	000e           	.short 0x000e
    3622:	000e           	.short 0x000e
    3624:	0006 0002      	orib #2,%d6
    3628:	0002 0012      	orib #18,%d2
    362c:	0012 001a      	orib #26,%a2@
    3630:	001a 000e      	orib #14,%a2@+
    3634:	000e           	.short 0x000e
    3636:	0007 0011      	orib #17,%d7
    363a:	0009           	.short 0x0009
    363c:	0000 0002      	orib #2,%d0
    3640:	0014 0018      	orib #24,%a4@
    3644:	0008           	.short 0x0008
    3646:	0004 000c      	orib #12,%d4
    364a:	0004 0004      	orib #4,%d4
    364e:	0000 0000      	orib #0,%d0
    3652:	0000 0008      	orib #8,%d0
    3656:	0004 001c      	orib #28,%d4
    365a:	0004 0009      	orib #9,%d4
    365e:	001c 000a      	orib #10,%a4@+
    3662:	0016 0004      	orib #4,%fp@
    3666:	000c           	.short 0x000c
    3668:	0000 0008      	orib #8,%d0
    366c:	0000 0000      	orib #0,%d0
    3670:	0008           	.short 0x0008
    3672:	0008           	.short 0x0008
    3674:	0008           	.short 0x0008
    3676:	0000 0003      	orib #3,%d0
    367a:	0003 0007      	orib #7,%d3
    367e:	0002 0006      	orib #6,%d2
    3682:	000a           	.short 0x000a
    3684:	0000 0010      	orib #16,%d0
    3688:	0014 0014      	orib #20,%a4@
    368c:	001c 000c      	orib #12,%a4@+
    3690:	0004 0004      	orib #4,%d4
    3694:	0004 000c      	orib #12,%d4
    3698:	0000 0000      	orib #0,%d0
    369c:	0008           	.short 0x0008
    369e:	0008           	.short 0x0008
    36a0:	0008           	.short 0x0008
    36a2:	0000 0000      	orib #0,%d0
    36a6:	0008           	.short 0x0008
	...
    36c0:	0000 0008      	orib #8,%d0
    36c4:	0008           	.short 0x0008
    36c6:	0008           	.short 0x0008
	...
    36d8:	0008           	.short 0x0008
    36da:	0008           	.short 0x0008
    36dc:	0008           	.short 0x0008
    36de:	0008           	.short 0x0008
    36e0:	0008           	.short 0x0008
    36e2:	0008           	.short 0x0008
    36e4:	0008           	.short 0x0008
    36e6:	0008           	.short 0x0008
	...
    36f8:	ffff           	.short 0xffff
    36fa:	1e7f           	.short 0x1e7f
    36fc:	e74e           	lslw #3,%d6
    36fe:	f3ee           	.short 0xf3ee
    3700:	fdf3           	.short 0xfdf3
    3702:	fefa           	.short 0xfefa
    3704:	feaf c9fb 6d76 	cp1ldl %sp@(28022),%a4,#5,#507
    370a:	7f97           	mvzb %sp@,%d7
    370c:	add6           	.short 0xadd6
    370e:	27fa           	.short 0x27fa
    3710:	67a4           	beqs 0x36b6
    3712:	6834           	bvcs 0x3748
    3714:	4db8 5484      	chkw 0x5484,%d6
    3718:	fdce           	.short 0xfdce
    371a:	17f8           	.short 0x17f8
    371c:	06fa c3de 313f 	callm #-34,%pc@(0x685f)
    3722:	c0d6           	muluw %fp@,%d0
    3724:	3e8c           	movew %a4,%sp@
    3726:	ffd8           	.short 0xffd8
    3728:	dbf3 fef4      	addal %a3@(fffffffffffffff4,%sp:l:8),%a5
    372c:	8db1 04f9      	orl %d6,%a1@(fffffffffffffff9,%d0:w:4)
    3730:	17bc 122c 2258 	moveb #44,%a3@(58,%d2:w:2)
    3736:	3248           	moveaw %a0,%a1
    3738:	fe7f           	.short 0xfe7f
    373a:	fc0f fc07      	cp0ldb %sp,%sp,#7,#7
    373e:	fe03 ffc1      	cp1ldb %d3,%sp,#8,#449
    3742:	ffe1           	.short 0xffe1
    3744:	c9f3 007f      	mulsw %a3@(7f,%d0:w),%d4
    3748:	001f 080f      	orib #15,%sp@+
    374c:	7e0f           	moveq #15,%d7
    374e:	ff87 ffc2      	cp1stl %sp,%d7,#8,#450
    3752:	ffc2           	.short 0xffc2
    3754:	efe2           	.short 0xefe2
    3756:	f6c6           	.short 0xf6c6
    3758:	9b68 0db0      	subw %d5,%a0@(3504)
    375c:	4022           	negxb %a2@-
    375e:	6022           	bras 0x3782
    3760:	1224           	moveb %a4@-,%d1
    3762:	2300           	movel %d0,%a1@-
    3764:	1210           	moveb %a0@,%d1
    3766:	4a0a           	.short 0x4a0a
    3768:	4006           	negxb %d6
    376a:	2404           	movel %d4,%d2
    376c:	2908           	movel %a0,%a4@-
    376e:	1d04           	moveb %d4,%fp@-
    3770:	1100           	moveb %d0,%a0@-
    3772:	0b04           	btst %d5,%d4
    3774:	1204           	moveb %d4,%d1
    3776:	8800           	orb %d0,%d4
    3778:	36e2           	movew %a2@-,%a3@+
    377a:	6d82           	blts 0x36fe
    377c:	3bcc           	.short 0x3bcc
    377e:	1bce           	.short 0x1bce
    3780:	7948           	mvsw %a0,%d4
    3782:	1b84 018e 0794 	moveb %d4,@(0)@(794,%d0:w)
    3788:	730a           	mvsb %a2,%d1
    378a:	1d08           	.short 0x1d08
    378c:	340c           	movew %a4,%d2
    378e:	0c00 9c04      	cmpib #4,%d0
    3792:	8400           	orb %d0,%d2
    3794:	8404           	orb %d4,%d2
    3796:	8604           	orb %d4,%d3
    3798:	e02e           	lsrb %d0,%d6
    379a:	e03c           	rorb %d0,%d4
    379c:	cbf8 c870      	mulsw 0xffffc870,%d5
    37a0:	8870 f898      	orw %a0@(ffffffffffffff98,%sp:l),%d4
    37a4:	7090           	moveq #-112,%d0
    37a6:	3998 0d04      	movew %a0@+,%a4@(0)@(0,%d0:l:4)
    37aa:	0300           	btst %d1,%d0
    37ac:	0300           	btst %d1,%d0
    37ae:	0300           	btst %d1,%d0
    37b0:	8300           	sbcd %d0,%d1
    37b2:	8304           	sbcd %d4,%d1
    37b4:	9a00           	subb %d0,%d5
    37b6:	3204           	movew %d4,%d1
    37b8:	9400           	subb %d0,%d2
    37ba:	2000           	movel %d0,%d0
    37bc:	0800 2400      	btst #0,%d0
    37c0:	0200 2200      	andib #0,%d0
    37c4:	2200           	movel %d0,%d1
    37c6:	1200           	moveb %d0,%d1
    37c8:	1000           	moveb %d0,%d0
    37ca:	0000 0000      	orib #0,%d0
    37ce:	0800 0800      	btst #0,%d0
    37d2:	0400 0200      	subib #0,%d0
    37d6:	1100           	moveb %d0,%a0@-
    37d8:	8c00           	orb %d0,%d6
    37da:	0c00 2400      	cmpib #0,%d0
    37de:	1000           	moveb %d0,%d0
    37e0:	3800           	movew %d0,%d4
    37e2:	1800           	moveb %d0,%d4
    37e4:	3800           	movew %d0,%d4
    37e6:	0c00 1c00      	cmpib #0,%d0
    37ea:	0c00 0c00      	cmpib #0,%d0
    37ee:	0400 0400      	subib #0,%d0
    37f2:	1000           	moveb %d0,%d0
    37f4:	1000           	moveb %d0,%d0
    37f6:	0c00 3000      	cmpib #0,%d0
    37fa:	3400           	movew %d0,%d2
    37fc:	1c00           	moveb %d0,%d6
    37fe:	0c00 0e00      	cmpib #0,%d0
    3802:	0e00           	.short 0x0e00
    3804:	0600 0200      	addib #0,%d0
    3808:	0000 1000      	orib #0,%d0
    380c:	1000           	moveb %d0,%d0
    380e:	1800           	moveb %d0,%d4
    3810:	1800           	moveb %d0,%d4
    3812:	1c00           	moveb %d0,%d6
    3814:	0e00           	.short 0x0e00
    3816:	0700           	btst %d3,%d0
    3818:	1100           	moveb %d0,%a0@-
    381a:	0900           	btst %d4,%d0
    381c:	0000 0200      	orib #0,%d0
    3820:	1400           	moveb %d0,%d2
    3822:	1800           	moveb %d0,%d4
    3824:	0800 0400      	btst #0,%d0
    3828:	0800 0000      	btst #0,%d0
    382c:	0800 0800      	btst #0,%d0
	...
    3838:	1c00           	moveb %d0,%d6
    383a:	0400 0800      	subib #0,%d0
    383e:	1c00           	moveb %d0,%d6
    3840:	0a00 1400      	eorib #0,%d0
    3844:	0400 0c00      	subib #0,%d0
    3848:	0000 0800      	orib #0,%d0
    384c:	0000 0800      	orib #0,%d0
    3850:	0800 0000      	btst #0,%d0
    3854:	0000 0000      	orib #0,%d0
    3858:	0300           	btst %d1,%d0
    385a:	0300           	btst %d1,%d0
    385c:	0600 0200      	addib #0,%d0
    3860:	0600 0800      	addib #0,%d0
	...
    386c:	0800 0000      	btst #0,%d0
    3870:	0800 0000      	btst #0,%d0
	...
    38b4:	0001 0002      	orib #2,%d1
	...
    38d4:	0001 0003      	orib #3,%d1
    38d8:	0001 0002      	orib #2,%d1
    38dc:	0000 0001      	orib #1,%d0
    38e0:	0004 000c      	orib #12,%d4
    38e4:	0006 000b      	orib #11,%d6
    38e8:	0009           	.short 0x0009
    38ea:	0008           	.short 0x0008
    38ec:	0004 0002      	orib #2,%d4
	...
    38f8:	0004 000f      	orib #15,%d4
    38fc:	0002 0002      	orib #2,%d2
    3900:	0000 0000      	orib #0,%d0
    3904:	0008           	.short 0x0008
    3906:	000c           	.short 0x000c
    3908:	000e           	.short 0x000e
    390a:	000f           	.short 0x000f
    390c:	0007 0003      	orib #3,%d7
    3910:	0001 0000      	orib #0,%d1
    3914:	0000 0000      	orib #0,%d0
    3918:	0007 000f      	orib #15,%d7
    391c:	000f           	.short 0x000f
    391e:	000f           	.short 0x000f
    3920:	000f           	.short 0x000f
    3922:	000f           	.short 0x000f
    3924:	000f           	.short 0x000f
    3926:	000f           	.short 0x000f
    3928:	000f           	.short 0x000f
    392a:	000f           	.short 0x000f
    392c:	0007 0003      	orib #3,%d7
    3930:	0001 0000      	orib #0,%d1
	...
    3940:	0040 0020      	oriw #32,%d0
    3944:	0090 01a8 0294 	oril #27787924,%a0@
    394a:	06aa 0d15 1a0a 	addil #219486730,%a2@(7173)
    3950:	1c05 
    3952:	3002           	movew %d2,%d0
    3954:	6001           	bras 0x3957
    3956:	c000           	andb %d0,%d0
	...
    3960:	0080 0140 0240 	oril #20972096,%d0
    3966:	04c0           	ff1 %d0
    3968:	09e0           	bset %d4,%a0@-
    396a:	11b0 2318 060c 	moveb %a0@(0,%d2:w:2),%a0@(c,%d0:w:8)
    3970:	4c06           	.short 0x4c06
    3972:	9003           	subb %d3,%d0
    3974:	2001           	movel %d1,%d0
    3976:	4000           	negxb %d0
	...
    3980:	00c0           	bitrev %d0
    3982:	01e0           	bset %d0,%a0@-
    3984:	03f0 07f8 0ffc 	bset %d1,@(ffc1fbe)
    398a:	1fbe 
    398c:	3f1f           	movew %sp@+,%sp@-
    398e:	3e0f           	movew %sp,%d7
    3990:	7c07           	moveq #7,%d6
    3992:	f003           	.short 0xf003
    3994:	e001           	asrb #8,%d1
    3996:	c000           	andb %d0,%d0
    3998:	8000           	orb %d0,%d0
    399a:	0000 8000      	orib #0,%d0
    399e:	8000           	orb %d0,%d0
    39a0:	f000 4800      	pmove %d0,%srp
    39a4:	0c00 0400      	cmpib #0,%d0
    39a8:	8401           	orb %d1,%d2
    39aa:	8003           	orb %d3,%d0
    39ac:	0402 4006      	subib #6,%d2
    39b0:	e808           	lsrb #4,%d0
    39b2:	0009           	.short 0x0009
    39b4:	0013 0022      	orib #34,%a3@
    39b8:	8000           	orb %d0,%d0
    39ba:	8000           	orb %d0,%d0
    39bc:	2000           	movel %d0,%d0
    39be:	0000 8800      	orib #0,%d0
    39c2:	6000 3000      	braw 0x69c4
    39c6:	0800 4800      	btst #0,%d0
    39ca:	4400           	negb %d0
    39cc:	e400           	asrb #2,%d0
    39ce:	8000           	orb %d0,%d0
    39d0:	9901           	subxb %d1,%d4
    39d2:	fe13 000b      	cp1ldb %a3@,%d0,#1,#11
    39d6:	001e 8000      	orib #0,%fp@+
    39da:	8000           	orb %d0,%d0
    39dc:	e000           	asrb #8,%d0
    39de:	e000           	asrb #8,%d0
    39e0:	f800           	.short 0xf800
    39e2:	f800           	.short 0xf800
    39e4:	bc00           	cmpb %d0,%d6
    39e6:	8c00           	orb %d0,%d6
    39e8:	cc01           	andb %d1,%d6
    39ea:	c403           	andb %d3,%d2
    39ec:	e403           	asrb #2,%d3
    39ee:	e007           	asrb #8,%d7
    39f0:	f90f           	.short 0xf90f
    39f2:	fe1f 001f      	cp1ldb %sp@+,%d0,#1,#31
    39f6:	003e           	.short 0x003e
    39f8:	002c 0024 0024 	orib #36,%a4@(36)
    39fe:	0024 0024      	orib #36,%a4@-
    3a02:	0020 0020      	orib #32,%a0@-
    3a06:	0020 0020      	orib #32,%a0@-
    3a0a:	0020 0020      	orib #32,%a0@-
    3a0e:	0010 0023      	orib #35,%a0@
    3a12:	0008           	.short 0x0008
    3a14:	0016 0007      	orib #7,%fp@
    3a18:	0004 000c      	orib #12,%d4
    3a1c:	000c           	.short 0x000c
    3a1e:	000c           	.short 0x000c
    3a20:	000c           	.short 0x000c
    3a22:	0008           	.short 0x0008
    3a24:	0008           	.short 0x0008
    3a26:	0008           	.short 0x0008
    3a28:	0008           	.short 0x0008
    3a2a:	0008           	.short 0x0008
    3a2c:	0008           	.short 0x0008
    3a2e:	0028 001b 001f 	orib #27,%a0@(31)
    3a34:	001a 0031      	orib #49,%a2@+
    3a38:	003c 003c      	orib #60,%ccr
    3a3c:	003c 003c      	orib #60,%ccr
    3a40:	003c 0038      	orib #56,%ccr
    3a44:	0038 0038 0038 	orib #56,0x38
    3a4a:	0038 0038 0038 	orib #56,0x38
    3a50:	003b           	.short 0x003b
    3a52:	001f 003f      	orib #63,%sp@+
    3a56:	003f           	.short 0x003f
    3a58:	0001 0000      	orib #0,%d1
    3a5c:	0016 000f      	orib #15,%fp@
    3a60:	0004 0003      	orib #3,%d4
	...
    3a78:	002c 0000 0010 	orib #0,%a4@(16)
    3a7e:	0008           	.short 0x0008
    3a80:	0007 0003      	orib #3,%d7
	...
    3a98:	003f           	.short 0x003f
    3a9a:	001f 001f      	orib #31,%sp@+
    3a9e:	000f           	.short 0x000f
    3aa0:	0007 0003      	orib #3,%d7
	...
    3ab8:	ffff           	.short 0xffff
    3aba:	1e7f           	.short 0x1e7f
    3abc:	e74e           	lslw #3,%d6
    3abe:	f3ee           	.short 0xf3ee
    3ac0:	fdf3           	.short 0xfdf3
    3ac2:	fefa           	.short 0xfefa
    3ac4:	feaf c9fa 6d76 	cp1ldl %sp@(28022),%a4,#5,#506
    3aca:	7f94           	mvzb %a4@,%d7
    3acc:	addf           	.short 0xaddf
    3ace:	67fc           	beqs 0x3acc
    3ad0:	57a6           	subql #3,%fp@-
    3ad2:	d837 6fff 6f69 	addb @(6f69fdce)@(17f806fa),%d4
    3ad8:	fdce 17f8 06fa 
    3ade:	c3de           	mulsw %fp@+,%d1
    3ae0:	313f           	.short 0x313f
    3ae2:	c0d6           	muluw %fp@,%d0
    3ae4:	3e8c           	movew %a4,%sp@
    3ae6:	ffd9           	.short 0xffd9
    3ae8:	dbf3 fef7      	addal %a3@(fffffffffffffff7,%sp:l:8),%a5
    3aec:	8db0 e4fc      	orl %d6,%a0@(fffffffffffffffc,%fp:w:4)
    3af0:	f7bc           	.short 0xf7bc
    3af2:	b02c 781e      	cmpb %a4@(30750),%d0
    3af6:	5c0e           	.short 0x5c0e
    3af8:	fe7f           	.short 0xfe7f
    3afa:	fc0f fc07      	cp0ldb %sp,%sp,#7,#7
    3afe:	fe03 ffc1      	cp1ldb %d3,%sp,#8,#449
    3b02:	ffe1           	.short 0xffe1
    3b04:	c9f3 007f      	mulsw %a3@(7f,%d0:w),%d4
    3b08:	001f 080f      	orib #15,%sp@+
    3b0c:	3e0f           	movew %sp,%d7
    3b0e:	1f87 0fc3 0fc3 	moveb %d7,@(0)@(fc307e1)
    3b14:	07e1 
    3b16:	03f1 32ad      	bset %d1,%a1@(ffffffffffffffad,%d3:w:2)
    3b1a:	1a7f           	.short 0x1a7f
    3b1c:	0dc0           	bset %d6,%d0
    3b1e:	0303           	btst %d1,%d3
    3b20:	012f 013f      	btst %d0,%sp@(319)
    3b24:	00f0           	.short 0x00f0
    3b26:	00ca           	.short 0x00ca
    3b28:	0010 000f      	orib #15,%a0@
    3b2c:	00b0 80e0 2007 	oril #-2132795385,%a0@(4f,%a5:w)
    3b32:	d04f 
    3b34:	4870 a46c      	pea %a0@(6c,%a2:w:4)
    3b38:	3e4a           	moveaw %a2,%sp
    3b3a:	16ff           	.short 0x16ff
    3b3c:	0dff           	.short 0x0dff
    3b3e:	02d0           	.short 0x02d0
    3b40:	0210 000f      	andib #15,%a0@
    3b44:	007f           	.short 0x007f
    3b46:	00b0 008f 000f 	oril #9371663,%a0@(3f,%d0:w)
    3b4c:	003f 
    3b4e:	0057 0048      	oriw #72,%sp@
    3b52:	001f a03f      	orib #63,%sp@+
    3b56:	c451           	andw %a1@,%d2
    3b58:	01f1 01c0      	bset %d0,@(0)
    3b5c:	0200 003f      	andib #63,%d0
    3b60:	01ff           	.short 0x01ff
    3b62:	01f0 0180      	bset %d0,@(0,%d0:w)
    3b66:	000f           	.short 0x000f
    3b68:	007f           	.short 0x007f
    3b6a:	0070 00c0 808f 	oriw #192,%a0@(ffffffffffffff8f,%a0:w)
    3b70:	e03f           	rorb %d0,%d7
    3b72:	f070           	.short 0xf070
    3b74:	f840           	.short 0xf840
    3b76:	fc0f 580e      	cp0ldb %sp,%d5,#5,#14
    3b7a:	2845           	moveal %d5,%a4
    3b7c:	1248           	.short 0x1248
    3b7e:	1b47 1f4c      	moveb %d7,%a5@(8012)
    3b82:	26ed 448c      	movel %a5@(17548),%a3@+
    3b86:	f91a           	.short 0xf91a
    3b88:	b882           	cmpl %d2,%d4
    3b8a:	7abd           	moveq #-67,%d5
    3b8c:	f887           	.short 0xf887
    3b8e:	dcbb 878b 01ba 	addl %zpc@(0,%a0:w:8)@(1ba001b),%d6
    3b94:	001b 
    3b96:	000a           	.short 0x000a
    3b98:	6061           	bras 0x3bfb
    3b9a:	3502           	movew %d2,%a2@-
    3b9c:	1e85           	moveb %d5,%sp@
    3b9e:	1e00           	moveb %d0,%d7
    3ba0:	0613 0e02      	addib #2,%a3@
    3ba4:	1e7f           	.short 0x1e7f
    3ba6:	1cc3           	moveb %d3,%fp@+
    3ba8:	1d83 3d86 7fbc 	moveb %d3,@(0)@(7fbc,%d3:l:4)
    3bae:	5fbc           	.short 0x5fbc
    3bb0:	87c0           	divsw %d0,%d3
    3bb2:	01c2           	bset %d0,%d2
    3bb4:	002a 000a 7c3f 	orib #10,%a2@(31807)
    3bba:	3f7f           	.short 0x3f7f
    3bbc:	1fff           	.short 0x1fff
    3bbe:	1fff           	.short 0x1fff
    3bc0:	1fff           	.short 0x1fff
    3bc2:	3fff           	.short 0x3fff
    3bc4:	7fff           	.short 0x7fff
    3bc6:	ffff           	.short 0xffff
    3bc8:	ffff           	.short 0xffff
    3bca:	ffcf           	.short 0xffcf
    3bcc:	ffc7           	.short 0xffc7
    3bce:	dfc7           	addal %d7,%sp
    3bd0:	87ff           	.short 0x87ff
    3bd2:	01ff           	.short 0x01ff
    3bd4:	003f           	.short 0x003f
    3bd6:	001e 000c      	orib #12,%fp@+
    3bda:	0000 0004      	orib #4,%d0
	...
    3bee:	0000 8000      	orib #0,%d0
    3bf2:	0000 7800      	orib #0,%d0
    3bf6:	8400           	orb %d0,%d2
    3bf8:	0018 0004      	orib #4,%a0@+
    3bfc:	0004 0000      	orib #0,%d4
	...
    3c10:	8000           	orb %d0,%d0
    3c12:	e000           	asrb #8,%d0
    3c14:	0000 f800      	orib #0,%d0
    3c18:	001c 0004      	orib #4,%a4@+
    3c1c:	0004 0000      	orib #0,%d4
	...
    3c30:	8000           	orb %d0,%d0
    3c32:	e000           	asrb #8,%d0
    3c34:	f800           	.short 0xf800
    3c36:	fc00 0000      	cp0nop #1
    3c3a:	0040 b000      	oriw #-20480,%d0
    3c3e:	c040           	andw %d0,%d0
    3c40:	7e80           	moveq #-128,%d7
    3c42:	0400 f000      	subib #0,%d0
	...
    3c56:	0000 8640      	orib #64,%d0
    3c5a:	5000           	addqb #8,%d0
    3c5c:	0f40           	bchg %d7,%d0
    3c5e:	00c0           	bitrev %d0
    3c60:	8180 fb00      	unpk %d0,%d0,#-1280
    3c64:	fc00 0000      	cp0nop #1
	...
    3c78:	8640           	orw %d0,%d3
    3c7a:	d040           	addw %d0,%d0
    3c7c:	ffc0           	.short 0xffc0
    3c7e:	ffc0           	.short 0xffc0
    3c80:	ff80 ff00      	cp1stl %sp,%d0,#8,#256
    3c84:	fc00 0000      	cp0nop #1
	...
    3c98:	bfbc           	.short 0xbfbc
    3c9a:	7cfe           	moveq #-2,%d6
    3c9c:	eed3           	.short 0xeed3
    3c9e:	d3fb 1b0f dfcf 	addal %pc@(0x3ca0)@(ffffffffdfcfd3ae,%d1:l:2),%a1
    3ca4:	d3ae 
    3ca6:	5a6d 4ef2      	addqw #5,%a5@(20210)
    3caa:	09fb           	.short 0x09fb
    3cac:	7def a677      	mvzw %sp@(-22921),%d6
    3cb0:	f77b           	.short 0xf77b
    3cb2:	9de1           	subal %a1@-,%fp
    3cb4:	d931 f1a1 8f87 	addb %d4,@(ffffffffffff8f87,%sp:w)@(0)
    3cba:	5f9d           	subql #7,%a5@+
    3cbc:	6d9f           	blts 0x3c5d
    3cbe:	dff7 160c      	addal %sp@(c,%d1:w:8),%sp
    3cc2:	1e01           	moveb %d1,%d7
    3cc4:	1fa6 d64d      	moveb %fp@-,%sp@(4d,%a5:w:8)
    3cc8:	0e9f           	.short 0x0e9f
    3cca:	0f36 fbfd 3fee 	btst %d7,@(3fee6ed9)@(0)
    3cd0:	6ed9 
    3cd2:	f9c0           	.short 0xf9c0
    3cd4:	b7e0           	cmpal %a0@-,%a3
    3cd6:	6f60           	bles 0x3d38
    3cd8:	fcf8           	.short 0xfcf8
    3cda:	f870           	.short 0xf870
    3cdc:	f060           	.short 0xf060
    3cde:	e0e1           	asrw %a1@-
    3ce0:	e1f3 f3ff e1ff 	aslw @(ffffffffe1ffe1f2)@(fffffffff1e0f0e0)
    3ce6:	e1f2 f1e0 f0e0 
    3cec:	e042           	asrw #8,%d2
    3cee:	c003           	andb %d3,%d0
    3cf0:	8027           	orb %sp@-,%d0
    3cf2:	0727           	btst %d3,%sp@-
    3cf4:	0e11           	.short 0x0e11
    3cf6:	9e01           	subb %d1,%d7
    3cf8:	ebe0           	.short 0xebe0
    3cfa:	fb20           	wddatab %a0@-
    3cfc:	07a0           	bclr %d3,%a0@-
    3cfe:	f8c0           	.short 0xf8c0
    3d00:	0f00           	btst %d7,%d0
    3d02:	eb80           	asll #5,%d0
    3d04:	1f00           	moveb %d0,%sp@-
    3d06:	4300           	chkl %d0,%d1
    3d08:	7d00           	mvsb %d0,%d6
    3d0a:	f200 1e01      	fintx %fp7,%fp4
    3d0e:	6402           	bccs 0x3d12
    3d10:	9809           	.short 0x9809
    3d12:	e816           	roxrb #4,%d6
    3d14:	1c25           	moveb %a5@-,%d6
    3d16:	444a           	.short 0x444a
    3d18:	1fe0           	.short 0x1fe0
    3d1a:	ffe0           	.short 0xffe0
    3d1c:	ff60 1fc0      	cp1stw %d1,%a0@-,#8,#448
    3d20:	3f80 f780      	movew %d0,@(0,%sp:w:8)
    3d24:	ff00 3f00      	cp1stb %d3,%d0,#8,#256
    3d28:	8700           	sbcd %d0,%d3
    3d2a:	fe00 fe00      	cp1ldb %d0,%sp,#8,#0
    3d2e:	3c00           	movew %d0,%d6
    3d30:	7c00           	moveq #0,%d6
    3d32:	f801           	.short 0xf801
    3d34:	fc0b bc46      	cp0ldb %a3,%a3,#7,#70
    3d38:	ff20 0620      	cp1stb %d0,%a0@-,#4,#32
    3d3c:	0020 f840      	orib #64,%a0@-
    3d40:	ff00 1f80      	cp1stb %d1,%d0,#8,#384
    3d44:	0300           	btst %d1,%d0
    3d46:	e100           	aslb #8,%d0
    3d48:	fd00 1e00      	cp0stb %d1,%d0,#8,#0
    3d4c:	0601 e003      	addib #3,%d1
    3d50:	f80f           	.short 0xf80f
    3d52:	181f           	moveb %sp@+,%d4
    3d54:	043f           	.short 0x043f
    3d56:	e07e           	rorw %d0,%d6
    3d58:	1034 3028      	moveb %a4@(28,%d3:w),%d0
    3d5c:	1c90           	moveb %a0@,%fp@
    3d5e:	09b0 51f0 acc8 	bclr %d4,@(ffffffffacc8c644)
    3d64:	c644 
    3d66:	5d3e           	.short 0x5d3e
    3d68:	763b           	moveq #59,%d3
    3d6a:	aabd           	.short 0xaabd
    3d6c:	4a3e           	.short 0x4a3e
    3d6e:	7676           	moveq #118,%d3
    3d70:	a3c2           	.short 0xa3c2
    3d72:	bf01           	eorb %d7,%d1
    3d74:	a001 2000      	macw %d1l,%d0l
    3d78:	fc0c fd58      	cp0ldb %a4,%sp,#7,#344
    3d7c:	fef0           	.short 0xfef0
    3d7e:	fcf0           	.short 0xfcf0
    3d80:	fcc0 f9e0      	cp0bcbusy 0x3762
    3d84:	bcf0 2670      	cmpaw %a0@(70,%d2:w:8),%fp
    3d88:	0f70 1b78 fbfc 	bchg %d7,%a0@(fffffffffbfcfff4)
    3d8e:	fff4 
    3d90:	07c3           	bset %d3,%d3
    3d92:	8701           	sbcd %d1,%d3
    3d94:	b801           	cmpb %d1,%d4
    3d96:	2000           	movel %d0,%d0
    3d98:	f87c           	.short 0xf87c
    3d9a:	fdf8           	.short 0xfdf8
    3d9c:	fff0           	.short 0xfff0
    3d9e:	fff0           	.short 0xfff0
    3da0:	fff0           	.short 0xfff0
    3da2:	fff8           	.short 0xfff8
    3da4:	fffc           	.short 0xfffc
    3da6:	fffe           	.short 0xfffe
    3da8:	ffff           	.short 0xffff
    3daa:	c7ff           	.short 0xc7ff
    3dac:	87ff           	.short 0x87ff
    3dae:	8ff7 ffc3 ff01 	divsw @(0)@(ffffffffff01f801),%d7
    3db4:	f801 
    3db6:	7000           	moveq #0,%d0
    3db8:	4000           	negxb %d0
    3dba:	0000 4000      	orib #0,%d0
	...
    3dce:	0000 0003      	orib #3,%d0
    3dd2:	0000 003c      	orib #60,%d0
    3dd6:	0043 1000      	oriw #4096,%d3
    3dda:	4000           	negxb %d0
    3ddc:	4000           	negxb %d0
	...
    3dee:	0000 0003      	orib #3,%d0
    3df2:	000f           	.short 0x000f
    3df4:	0000 003f      	orib #63,%d0
    3df8:	5000           	addqb #8,%d0
    3dfa:	4000           	negxb %d0
    3dfc:	4000           	negxb %d0
	...
    3e0e:	0000 0003      	orib #3,%d0
    3e12:	000f           	.short 0x000f
    3e14:	003f           	.short 0x003f
    3e16:	007f           	.short 0x007f
    3e18:	0001 0400      	orib #0,%d1
    3e1c:	001a 0407      	orib #7,%a2@+
    3e20:	02fc           	.short 0x02fc
    3e22:	0041 001e      	oriw #30,%d1
	...
    3e36:	0000 04c0      	orib #-64,%d0
    3e3a:	0014 05e0      	orib #-32,%a4@
    3e3e:	0600 0303      	addib #3,%d0
    3e42:	01bf           	.short 0x01bf
    3e44:	007e           	.short 0x007e
	...
    3e56:	0000 04c3      	orib #-61,%d0
    3e5a:	0417 07ff      	subib #-1,%sp@
    3e5e:	07ff           	.short 0x07ff
    3e60:	03ff           	.short 0x03ff
    3e62:	01ff           	.short 0x01ff
    3e64:	007e           	.short 0x007e
	...
    3e7e:	0000 0400      	orib #0,%d0
    3e82:	0800 1200      	btst #0,%d0
    3e86:	2b00           	movel %d0,%a5@-
    3e88:	5280           	addql #1,%d0
    3e8a:	aac0           	.short 0xaac0
    3e8c:	5160           	subqw #8,%a0@-
    3e8e:	a0b0           	.short 0xa0b0
    3e90:	4070 8018      	negxw %a0@(18,%a0:w)
    3e94:	000c           	.short 0x000c
    3e96:	0006 0000      	orib #0,%d6
    3e9a:	0000 0000      	orib #0,%d0
    3e9e:	0000 0200      	orib #0,%d0
    3ea2:	0500           	btst %d2,%d0
    3ea4:	0480 0640 0f20 	subil #104861472,%d0
    3eaa:	1b10           	moveb %a0@,%a5@-
    3eac:	3188 60c0      	movew %a0,%a0@(ffffffffffffffc0,%d6:w)
    3eb0:	c064           	andw %a4@-,%d0
    3eb2:	8012           	orb %a2@,%d0
    3eb4:	0009           	.short 0x0009
    3eb6:	0004 0000      	orib #0,%d4
    3eba:	0000 0000      	orib #0,%d0
    3ebe:	0000 0600      	orib #0,%d0
    3ec2:	0f00           	btst %d7,%d0
    3ec4:	1f80 3fc0      	moveb %d0,@(0)
    3ec8:	7fe0           	mvzw %a0@-,%d7
    3eca:	fbf0           	.short 0xfbf0
    3ecc:	f1f8           	.short 0xf1f8
    3ece:	e0f8 c07c      	asrw 0xffffc07c
    3ed2:	801e           	orb %fp@+,%d0
    3ed4:	000f           	.short 0x000f
    3ed6:	0007 0003      	orib #3,%d7
    3eda:	0000 0002      	orib #2,%d0
    3ede:	0003 001e      	orib #30,%d3
    3ee2:	0024 0060      	orib #96,%a4@-
    3ee6:	0041 0043      	oriw #67,%d1
    3eea:	8002           	orb %d2,%d0
    3eec:	8040           	orw %d0,%d0
    3eee:	c004           	andb %d4,%d0
    3ef0:	202e 2000      	movel %fp@(8192),%d0
    3ef4:	9000           	subb %d0,%d0
    3ef6:	8800           	orb %d0,%d4
    3ef8:	0002 0003      	orib #3,%d2
    3efc:	0008           	.short 0x0008
    3efe:	0000 0022      	orib #34,%d0
    3f02:	000c           	.short 0x000c
    3f04:	0018 0020      	orib #32,%a0@+
    3f08:	0024 0045      	orib #69,%a4@-
    3f0c:	004f           	.short 0x004f
    3f0e:	0003 0133      	orib #51,%d3
    3f12:	90fe           	.short 0x90fe
    3f14:	a000 f000      	macw %d0l,%d0l
    3f18:	0003 0003      	orib #3,%d3
    3f1c:	000f           	.short 0x000f
    3f1e:	000f           	.short 0x000f
    3f20:	003f           	.short 0x003f
    3f22:	003f           	.short 0x003f
    3f24:	007b           	.short 0x007b
    3f26:	0063 0067      	oriw #103,%a3@-
    3f2a:	8047           	orw %d7,%d0
    3f2c:	804f           	.short 0x804f
    3f2e:	c00f           	.short 0xc00f
    3f30:	e13f           	rolb %d0,%d7
    3f32:	f0fe           	.short 0xf0fe
    3f34:	f000           	.short 0xf000
    3f36:	f800 6800      	tblsb %d0,%d0,%d6
    3f3a:	4800           	nbcd %d0
    3f3c:	4800           	nbcd %d0
    3f3e:	4800           	nbcd %d0
    3f40:	4800           	nbcd %d0
    3f42:	0800 0800      	btst #0,%d0
    3f46:	0800 0800      	btst #0,%d0
    3f4a:	0800 0800      	btst #0,%d0
    3f4e:	1000           	moveb %d0,%d0
    3f50:	8800           	orb %d0,%d4
    3f52:	2000           	movel %d0,%d0
    3f54:	d000           	addb %d0,%d0
    3f56:	c000           	andb %d0,%d0
    3f58:	4000           	negxb %d0
    3f5a:	6000 6000      	braw 0x9f5c
    3f5e:	6000 6000      	braw 0x9f60
    3f62:	2000           	movel %d0,%d0
    3f64:	2000           	movel %d0,%d0
    3f66:	2000           	movel %d0,%d0
    3f68:	2000           	movel %d0,%d0
    3f6a:	2000           	movel %d0,%d0
    3f6c:	2000           	movel %d0,%d0
    3f6e:	2800           	movel %d0,%d4
    3f70:	b000           	cmpb %d0,%d0
    3f72:	f000           	.short 0xf000
    3f74:	b000           	cmpb %d0,%d0
    3f76:	1800           	moveb %d0,%d4
    3f78:	7800           	moveq #0,%d4
    3f7a:	7800           	moveq #0,%d4
    3f7c:	7800           	moveq #0,%d4
    3f7e:	7800           	moveq #0,%d4
    3f80:	7800           	moveq #0,%d4
    3f82:	3800           	movew %d0,%d4
    3f84:	3800           	movew %d0,%d4
    3f86:	3800           	movew %d0,%d4
    3f88:	3800           	movew %d0,%d4
    3f8a:	3800           	movew %d0,%d4
    3f8c:	3800           	movew %d0,%d4
    3f8e:	3800           	movew %d0,%d4
    3f90:	b800           	cmpb %d0,%d4
    3f92:	f000           	.short 0xf000
    3f94:	f800           	.short 0xf800
    3f96:	f800 0000      	tblub %d0,%d0,%d0
    3f9a:	0000 d000      	orib #0,%d0
    3f9e:	e000           	asrb #8,%d0
    3fa0:	4000           	negxb %d0
    3fa2:	8000           	orb %d0,%d0
	...
    3fb8:	6800 0000      	bvcw 0x3fba
    3fbc:	1000           	moveb %d0,%d0
    3fbe:	2000           	movel %d0,%d0
    3fc0:	c000           	andb %d0,%d0
    3fc2:	8000           	orb %d0,%d0
	...
    3fd8:	f800           	.short 0xf800
    3fda:	f000           	.short 0xf000
    3fdc:	f000           	.short 0xf000
    3fde:	e000           	asrb #8,%d0
    3fe0:	c000           	andb %d0,%d0
    3fe2:	8000           	orb %d0,%d0
	...
    4034:	0000 8000      	orib #0,%d0
	...
    4054:	0000 8000      	orib #0,%d0
    4058:	0000 8000      	orib #0,%d0
    405c:	0000 0000      	orib #0,%d0
    4060:	4000           	negxb %d0
    4062:	6000 c000      	braw 0x64
    4066:	a000 2000      	macw %d0l,%d0l
    406a:	2000           	movel %d0,%d0
    406c:	4000           	negxb %d0
    406e:	8000           	orb %d0,%d0
	...
    4078:	4000           	negxb %d0
    407a:	e000           	asrb #8,%d0
    407c:	8000           	orb %d0,%d0
    407e:	8000           	orb %d0,%d0
    4080:	0000 0000      	orib #0,%d0
    4084:	2000           	movel %d0,%d0
    4086:	6000 e000      	braw 0x2088
    408a:	e000           	asrb #8,%d0
    408c:	c000           	andb %d0,%d0
    408e:	8000           	orb %d0,%d0
	...
    4098:	c000           	andb %d0,%d0
    409a:	e000           	asrb #8,%d0
    409c:	e000           	asrb #8,%d0
    409e:	e000           	asrb #8,%d0
    40a0:	e000           	asrb #8,%d0
    40a2:	e000           	asrb #8,%d0
    40a4:	e000           	asrb #8,%d0
    40a6:	e000           	asrb #8,%d0
    40a8:	e000           	asrb #8,%d0
    40aa:	e000           	asrb #8,%d0
    40ac:	c000           	andb %d0,%d0
    40ae:	8000           	orb %d0,%d0
	...
    40b8:	0029 002d 003d 	orib #45,%a1@(61)
    40be:	0013 0018      	orib #24,%a3@
    40c2:	000c           	.short 0x000c
    40c4:	0007 0003      	orib #3,%d7
    40c8:	0001 0000      	orib #0,%d1
	...
    40d8:	0033 0033 003d 	orib #51,%a3@(3d,%d0:w)
    40de:	001f 001e      	orib #30,%sp@+
    40e2:	000f           	.short 0x000f
    40e4:	0007 0003      	orib #3,%d7
    40e8:	0001 0000      	orib #0,%d1
	...
    40f8:	003f           	.short 0x003f
    40fa:	003f           	.short 0x003f
    40fc:	0022 000d      	orib #13,%a2@-
    4100:	001f 000f      	orib #15,%sp@+
    4104:	0006 0003      	orib #3,%d6
    4108:	0001 0000      	orib #0,%d1
	...
    4118:	ffff           	.short 0xffff
    411a:	1e7f           	.short 0x1e7f
    411c:	e74e           	lslw #3,%d6
    411e:	f3ee           	.short 0xf3ee
    4120:	fdf3           	.short 0xfdf3
    4122:	fefa           	.short 0xfefa
    4124:	feaf c9fb 6d77 	cp1ldl %sp@(28023),%a4,#5,#507
    412a:	7f96           	mvzb %fp@,%d7
    412c:	addc           	.short 0xaddc
    412e:	e7fe           	.short 0xe7fe
    4130:	77a6           	mvzb %fp@-,%d3
    4132:	5835 67fb 2b4a 	addqb #4,@(2b4afdce)@(17f806fa)
    4138:	fdce 17f8 06fa 
    413e:	c3de           	mulsw %fp@+,%d1
    4140:	313f           	.short 0x313f
    4142:	c0d6           	muluw %fp@,%d0
    4144:	3e8c           	movew %a4,%sp@
    4146:	ffd8           	.short 0xffd8
    4148:	dbf2 fef5      	addal %a2@(fffffffffffffff5,%sp:l:8),%a5
    414c:	cdb3 c4fc      	andl %d6,%a3@(fffffffffffffffc,%a4:w:4)
    4150:	c7bc           	.short 0xc7bc
    4152:	e02c           	lsrb %d0,%d4
    4154:	f018           	.short 0xf018
    4156:	f189           	.short 0xf189
    4158:	fe7f           	.short 0xfe7f
    415a:	fc0f fc07      	cp0ldb %sp,%sp,#7,#7
    415e:	fe03 ffc1      	cp1ldb %d3,%sp,#8,#449
    4162:	ffe1           	.short 0xffe1
    4164:	c9f3 007f      	mulsw %a3@(7f,%d0:w),%d4
    4168:	001f 080f      	orib #15,%sp@+
    416c:	fe0f ff87      	cp1ldb %sp,%sp,#8,#391
    4170:	ffc3           	.short 0xffc3
    4172:	ffc3           	.short 0xffc3
    4174:	ffe7           	.short 0xffe7
    4176:	fff7           	.short 0xfff7
    4178:	6f97           	bles 0x4111
    417a:	fbd1           	.short 0xfbd1
    417c:	f2d7 6ea7 2ea1 	fbglel 0x6ea7701f
    4182:	ece2           	.short 0xece2
    4184:	caad 26ef      	andl %a5@(9967),%d5
    4188:	ffa2 e7a4      	cp1stl %fp,%a2@-,#4,#420
    418c:	f3a0           	.short 0xf3a0
    418e:	6bee           	bmis 0x417e
    4190:	7fd7           	mvzw %sp@,%d7
    4192:	2954 29fc      	movel %a4@,%a4@(10748)
    4196:	07e7           	bset %d3,%sp@-
    4198:	b715           	eorb %d3,%a5@
    419a:	fbda           	.short 0xfbda
    419c:	bb5a           	eorw %d5,%a2@+
    419e:	8f3d           	.short 0x8f3d
    41a0:	d93d           	.short 0xd93d
    41a2:	f93c           	.short 0xf93c
    41a4:	9c3d           	.short 0x9c3d
    41a6:	ccfb fdb9 8f3a 	muluw %zpc@(ffffffff8f3ace3a,%sp:l:4)@(0),%d6
    41ac:	ce3a 
    41ae:	47fe           	.short 0x47fe
    41b0:	7fdb           	mvzw %a3@+,%d7
    41b2:	3398 3378 1fc7 	movew %a0@+,%a1@(1fc7fbfa)
    41b8:	fbfa 
    41ba:	163f           	.short 0x163f
    41bc:	5fbd           	.short 0x5fbd
    41be:	e1fa           	.short 0xe1fa
    41c0:	ffff           	.short 0xffff
    41c2:	1fff           	.short 0x1fff
    41c4:	7ff3 ff34 867f 	mvzw %a3@(ffffffff867f7eff)@(0,%sp:l:8),%d7
    41ca:	7eff 
    41cc:	3fff           	.short 0x3fff
    41ce:	7f31 423c      	mvsb %a1@(3c,%d4:w:2),%d7
    41d2:	1ffe           	.short 0x1ffe
    41d4:	3f86 1838      	movew %d6,%sp@(38,%d1:l)
    41d8:	1a9a           	moveb %a2@+,%a5@
    41da:	0d7d           	.short 0x0d7d
    41dc:	07eb 03c2      	bset %d3,%a3@(962)
    41e0:	0181           	bclr %d0,%d1
    41e2:	00fd           	.short 0x00fd
    41e4:	00d6           	.short 0x00d6
    41e6:	0054 0073      	oriw #115,%a4@
    41ea:	0056 00de      	oriw #222,%fp@
    41ee:	00f6           	.short 0x00f6
    41f0:	00d5           	.short 0x00d5
    41f2:	00fc           	.short 0x00fc
    41f4:	00eb           	.short 0x00eb
    41f6:	00e7           	.short 0x00e7
    41f8:	1dc4           	.short 0x1dc4
    41fa:	0eff           	.short 0x0eff
    41fc:	07e3           	bset %d3,%a3@-
    41fe:	03b9 01f1 00f9 	bclr %d1,0x1f100f9
    4204:	00f7           	.short 0x00f7
    4206:	0064 007e      	oriw #126,%a4@-
    420a:	007f           	.short 0x007f
    420c:	00d9           	.short 0x00d9
    420e:	00f9           	.short 0x00f9
    4210:	00fe           	.short 0x00fe
    4212:	00f7           	.short 0x00f7
    4214:	00fc           	.short 0x00fc
    4216:	00ff           	.short 0x00ff
    4218:	17ff           	.short 0x17ff
    421a:	0fc2           	bset %d7,%d2
    421c:	061c 02ff      	addib #-1,%a4@+
    4220:	01fe           	.short 0x01fe
    4222:	00e6           	.short 0x00e6
    4224:	00e9           	.short 0x00e9
    4226:	007b           	.short 0x007b
    4228:	0045 0061      	oriw #97,%d5
    422c:	00ff           	.short 0x00ff
    422e:	00df           	.short 0x00df
    4230:	00e9           	.short 0x00e9
    4232:	00eb           	.short 0x00eb
    4234:	00c3           	bitrev %d3
    4236:	00f8           	.short 0x00f8
    4238:	00db           	.short 0x00db
    423a:	0069 006b 006f 	oriw #107,%a1@(111)
    4240:	0035 0030 001d 	orib #48,%a5@(1d,%d0:w)
    4246:	001e 0005      	orib #5,%fp@+
    424a:	0002 0003      	orib #3,%d2
	...
    4256:	0000 00fc      	orib #-4,%d0
    425a:	007e           	.short 0x007e
    425c:	0077 0072 003e 	oriw #114,%sp@(3e,%d0:w)
    4262:	003f           	.short 0x003f
    4264:	001e 001f      	orib #31,%fp@+
    4268:	0005 0002      	orib #2,%d5
    426c:	0003 0000      	orib #0,%d3
	...
    4278:	00ef           	.short 0x00ef
    427a:	007f           	.short 0x007f
    427c:	007c 007d      	oriw #125,%sr
    4280:	0039 003f 001f 	orib #63,0x1f001f
    4286:	001f 
    4288:	0004 0002      	orib #2,%d4
    428c:	0003 0000      	orib #0,%d3
	...
    4298:	bfbc           	.short 0xbfbc
    429a:	7cfe           	moveq #-2,%d6
    429c:	eed3           	.short 0xeed3
    429e:	d3fb 1b0f 9fcf 	addal %pc@(0x42a0)@(ffffffff9fcfd3ae,%d1:l:2),%a1
    42a4:	d3ae 
    42a6:	da6d 4ef2      	addw %a5@(20210),%d5
    42aa:	09fb           	.short 0x09fb
    42ac:	3def           	.short 0x3def
    42ae:	27f7           	.short 0x27f7
    42b0:	f5bb           	.short 0xf5bb
    42b2:	9c61           	subw %a1@-,%d6
    42b4:	dd11           	addb %d6,%a1@
    42b6:	7901           	mvsb %d1,%d4
    42b8:	8f87 5f9d      	unpk %d7,%d7,#24477
    42bc:	6d9f           	blts 0x425d
    42be:	dff7 160c      	addal %sp@(c,%d1:w:8),%sp
    42c2:	5e01           	addqb #7,%d1
    42c4:	1fa6 564d      	moveb %fp@-,%sp@(4d,%d5:w:8)
    42c8:	8e9f           	orl %sp@+,%d7
    42ca:	8f36 3b7d bf6e 	orb %d7,%fp@(ffffffffbf6e6d99)@(0)
    42d0:	6d99 
    42d2:	fc18 baee      	cp0ldb %a0@+,%a3,#6,#238
    42d6:	f2fe           	.short 0xf2fe
    42d8:	fcf8           	.short 0xfcf8
    42da:	f870           	.short 0xf870
    42dc:	f060           	.short 0xf060
    42de:	e0e1           	asrw %a1@-
    42e0:	e1f3 f3ff e1ff 	aslw @(ffffffffe1ffe1f2)@(fffffffff1e0f0e0)
    42e6:	e1f2 f1e0 f0e0 
    42ec:	e0c2           	.short 0xe0c2
    42ee:	c1c3           	mulsw %d3,%d0
    42f0:	83e7           	divsw %sp@-,%d1
    42f2:	0fff           	.short 0x0fff
    42f4:	1fff           	.short 0x1fff
    42f6:	9fff           	.short 0x9fff
    42f8:	bc2d e8fa      	cmpb %a5@(-5894),%d6
    42fc:	db20           	addb %d5,%a0@-
    42fe:	ab00           	.short 0xab00
    4300:	f000           	.short 0xf000
    4302:	1800           	moveb %d0,%d4
    4304:	6800 c000      	bvcw 0x306
    4308:	4000           	negxb %d0
	...
    4316:	0000 b7f4      	orib #-12,%d0
    431a:	fbe2           	.short 0xfbe2
    431c:	f220           	.short 0xf220
    431e:	f300           	.short 0xf300
    4320:	f000           	.short 0xf000
    4322:	f800           	.short 0xf800
    4324:	8800           	orb %d0,%d4
    4326:	c000           	andb %d0,%d0
    4328:	4000           	negxb %d0
	...
    4336:	0000 7bfb      	orib #-5,%d0
    433a:	779c           	mvzb %a4@+,%d3
    433c:	fdd0           	.short 0xfdd0
    433e:	fc80 8e00      	cp0ldl %d0,%a0,#8,#0
    4342:	e000           	asrb #8,%d0
    4344:	f000           	.short 0xf000
    4346:	2000           	movel %d0,%d0
    4348:	8000           	orb %d0,%d0
    434a:	8000           	orb %d0,%d0
	...
    435c:	e000           	asrb #8,%d0
    435e:	9fe0           	subal %a0@-,%sp
    4360:	3f18           	movew %a0@+,%sp@-
    4362:	2bcf           	.short 0x2bcf
    4364:	bf5b           	eorw %d7,%a3@+
    4366:	44b9 b56f a155 	negl 0xb56fa155
    436c:	73f9 52d4 8864 	mvzw 0x52d48864,%d1
    4372:	b8ff           	.short 0xb8ff
    4374:	61a2           	bsrs 0x4318
    4376:	957f           	.short 0x957f
    4378:	0000 0000      	orib #0,%d0
    437c:	c000           	andb %d0,%d0
    437e:	2c3c d8f6 5fbf 	movel #-654942273,%d6
    4384:	cee4           	muluw %a4@-,%d7
    4386:	faa2           	.short 0xfaa2
    4388:	f1bf           	.short 0xf1bf
    438a:	b598           	eorl %d2,%a0@+
    438c:	990a           	subxb %a2@-,%a4@-
    438e:	9b84           	subxl %d4,%d5
    4390:	1bff           	.short 0x1bff
    4392:	a300           	.short 0xa300
    4394:	5200           	addqb #1,%d0
    4396:	a080           	.short 0xa080
    4398:	0000 8000      	orib #0,%d0
    439c:	2000           	movel %d0,%d0
    439e:	f3c0           	.short 0xf3c0
    43a0:	e7e0           	rolw %a0@-
    43a2:	f470           	cpushp dc,%a0@
    43a4:	719f           	mvzb %sp@+,%d0
    43a6:	bf5f           	eorw %d7,%sp@+
    43a8:	4ec0           	.short 0x4ec0
    43aa:	5e6f fef7      	addqw #7,%sp@(-265)
    43ae:	ec7b           	rorw %d6,%d3
    43b0:	f789           	.short 0xf789
    43b2:	5fff           	sle %d7
    43b4:	bfff           	.short 0xbfff
    43b6:	7dff           	.short 0x7dff
    43b8:	750d           	mvsb %a5,%d2
    43ba:	ad0d           	movel %a5,%mask
    43bc:	1579 c398 8825 	moveb 0xc3988825,%a2@(-29826)
    43c2:	8b7e 
    43c4:	c9be           	.short 0xc9be
    43c6:	ad82           	movel %mask,%d2
    43c8:	158f           	.short 0x158f
    43ca:	dde3           	addal %a3@-,%fp
    43cc:	89d0           	divsw %a0@,%d4
    43ce:	c5e8 2e60      	mulsw %a0@(11872),%d2
    43d2:	2638 1eb8      	movel 0x1eb8,%d3
    43d6:	02f0           	.short 0x02f0
    43d8:	7002           	moveq #2,%d0
    43da:	200a           	movel %a2,%d0
    43dc:	20f4 7059      	movel %a4@(59,%d7:w),%a0@+
    43e0:	b026           	cmpb %fp@-,%d0
    43e2:	b0ff           	.short 0xb0ff
    43e4:	127e           	.short 0x127e
    43e6:	d042           	addw %d2,%d0
    43e8:	c80f           	.short 0xc80f
    43ea:	dc1f           	addb %sp@+,%d6
    43ec:	ec2c           	lsrb %d6,%d4
    43ee:	ff10 3200      	cp1stb %d3,%a0@,#2,#0
    43f2:	3900           	movew %d0,%a4@-
    43f4:	1fc0           	.short 0x1fc0
    43f6:	0300           	btst %d1,%d0
    43f8:	8d00           	sbcd %d0,%d6
    43fa:	dd00           	addxb %d0,%d6
    43fc:	fc00 ae00      	cp0ldb %d0,%a2,#8,#0
    4400:	7c00           	moveq #0,%d6
    4402:	7e00           	moveq #0,%d7
    4404:	fc00 3f00      	cp0ldb %d0,%d3,#8,#256
    4408:	3f00           	movew %d0,%sp@-
    440a:	2300           	movel %d0,%a1@-
    440c:	f780           	.short 0xf780
    440e:	e280           	asrl #1,%d0
    4410:	3dc0           	.short 0x3dc0
    4412:	3ee0           	movew %a0@-,%sp@+
    4414:	1838 03f0      	moveb 0x3f0,%d4
    4418:	5600           	addqb #3,%d0
	...
    4436:	0000 0e00      	orib #0,%d0
	...
    4456:	0000 fe00      	orib #0,%d0
	...
    4482:	8000           	orb %d0,%d0
    4484:	4000           	negxb %d0
    4486:	c000           	andb %d0,%d0
    4488:	0000 e800      	orib #0,%d0
    448c:	4000           	negxb %d0
    448e:	8400           	orb %d0,%d2
    4490:	6000 2400      	braw 0x6892
    4494:	4c00           	.short 0x4c00
    4496:	d400           	addb %d0,%d2
	...
    44a4:	8000           	orb %d0,%d0
    44a6:	0000 c000      	orib #0,%d0
    44aa:	8000           	orb %d0,%d0
    44ac:	e000           	asrb #8,%d0
    44ae:	d000           	addb %d0,%d0
    44b0:	b800           	cmpb %d0,%d4
    44b2:	f800 7800      	tblsb %d0,%d0,%d7
    44b6:	8e00           	orb %d0,%d7
	...
    44c0:	0000 8000      	orib #0,%d0
    44c4:	c000           	andb %d0,%d0
    44c6:	e000           	asrb #8,%d0
    44c8:	7000           	moveq #0,%d0
    44ca:	7800           	moveq #0,%d4
    44cc:	b800           	cmpb %d0,%d4
    44ce:	3c00           	movew %d0,%d6
    44d0:	dc00           	addb %d0,%d6
    44d2:	ce00           	andb %d0,%d7
    44d4:	b600           	cmpb %d0,%d3
    44d6:	7900           	mvsb %d0,%d4
    44d8:	a200 d200      	macw %d0l,%d1l,<<
    44dc:	cc00           	andb %d0,%d6
    44de:	d600           	addb %d0,%d3
    44e0:	1a00           	moveb %d0,%d5
    44e2:	3e00           	movew %d0,%d7
    44e4:	5c00           	addqb #6,%d0
    44e6:	c800           	andb %d0,%d4
    44e8:	8000           	orb %d0,%d0
    44ea:	c000           	andb %d0,%d0
	...
    44f8:	4400           	negb %d0
    44fa:	6000 3000      	braw 0x74fc
    44fe:	0800 8400      	btst #0,%d0
    4502:	0000 2000      	orib #0,%d0
    4506:	f000           	.short 0xf000
    4508:	f000           	.short 0xf000
    450a:	c000           	andb %d0,%d0
	...
    4518:	7f00           	mvsb %d0,%d7
    451a:	3f00           	movew %d0,%sp@-
    451c:	1f00           	moveb %d0,%sp@-
    451e:	0f00           	btst %d7,%d0
    4520:	0700           	btst %d3,%d0
    4522:	0200 0000      	andib #0,%d0
	...
    4536:	0000 001e      	orib #30,%d0
    453a:	0002 0000      	orib #0,%d2
	...
    4556:	0000 0001      	orib #1,%d0
	...
    4576:	0000 007f      	orib #127,%d0
    457a:	000f           	.short 0x000f
	...
    45a4:	0001 0002      	orib #2,%d1
    45a8:	0003 0000      	orib #0,%d3
    45ac:	0017 0002      	orib #2,%sp@
    45b0:	0021 0006      	orib #6,%a1@-
    45b4:	0024 0030      	orib #48,%a4@-
	...
    45c4:	0000 0001      	orib #1,%d0
    45c8:	0000 0003      	orib #3,%d0
    45cc:	0001 0007      	orib #7,%d1
    45d0:	000b           	.short 0x000b
    45d2:	001d 001f      	orib #31,%a5@+
    45d6:	001c 0000      	orib #0,%a4@+
	...
    45e2:	0000 0001      	orib #1,%d0
    45e6:	0003 0007      	orib #7,%d3
    45ea:	000e           	.short 0x000e
    45ec:	001e 001d      	orib #29,%fp@+
    45f0:	003c 003b      	orib #59,%ccr
    45f4:	0073 006f 002b 	oriw #111,%a3@(2b,%d0:w)
    45fa:	0045 004b      	oriw #75,%d5
    45fe:	0033 006b 0058 	orib #107,%a3@(58,%d0:w)
    4604:	007c 003a      	oriw #58,%sr
    4608:	0013 0001      	orib #1,%a3@
    460c:	0003 0000      	orib #0,%d3
	...
    4618:	0070 0022 0004 	oriw #34,%a0@(4,%d0:w)
    461e:	000c           	.short 0x000c
    4620:	0010 0021      	orib #33,%a0@
    4624:	0000 0004      	orib #4,%d0
    4628:	000f           	.short 0x000f
    462a:	000f           	.short 0x000f
    462c:	0003 0000      	orib #0,%d3
	...
    4638:	009f 00fe 00fc 	oril #16646396,%sp@+
    463e:	00f8           	.short 0x00f8
    4640:	00f0           	.short 0x00f0
    4642:	00e0           	.short 0x00e0
    4644:	0040 0000      	oriw #0,%d0
	...
    4658:	ffff           	.short 0xffff
    465a:	1e7f           	.short 0x1e7f
    465c:	e74e           	lslw #3,%d6
    465e:	f3ee           	.short 0xf3ee
    4660:	fdf3           	.short 0xfdf3
    4662:	fefa           	.short 0xfefa
    4664:	feaf c9fa 6d76 	cp1ldl %sp@(28022),%a4,#5,#506
    466a:	7f96           	mvzb %fp@,%d7
    466c:	edde           	.short 0xedde
    466e:	67fc           	beqs 0x466c
    4670:	77a4           	mvzb %a4@-,%d3
    4672:	f834           	.short 0xf834
    4674:	fe7c           	.short 0xfe7c
    4676:	67b6           	beqs 0x462e
    4678:	fdce           	.short 0xfdce
    467a:	17f8           	.short 0x17f8
    467c:	06fa c3de 313f 	callm #-34,%pc@(0x77bf)
    4682:	c0d6           	muluw %fp@,%d0
    4684:	3e8c           	movew %a4,%sp@
    4686:	ffd9           	.short 0xffd9
    4688:	dbf3 fef5      	addal %a3@(fffffffffffffff5,%sp:l:8),%a5
    468c:	cdb1 c4ff      	andl %d6,%a1@(ffffffffffffffff,%a4:w:4)
    4690:	e7bf           	roll %d3,%d7
    4692:	302f 701b      	movew %sp@(28699),%d0
    4696:	7bb1 fe7f      	mvzb %a1@(7f,%sp:l:8),%d5
    469a:	fc0f fc07      	cp0ldb %sp,%sp,#7,#7
    469e:	fe03 ffc1      	cp1ldb %d3,%sp,#8,#449
    46a2:	ffe1           	.short 0xffe1
    46a4:	c9f3 007f      	mulsw %a3@(7f,%d0:w),%d4
    46a8:	001f 080f      	orib #15,%sp@+
    46ac:	7e0f           	moveq #15,%d7
    46ae:	ff87 ffc3      	cp1stl %sp,%d7,#8,#451
    46b2:	ffc3           	.short 0xffc3
    46b4:	ffe7           	.short 0xffe7
    46b6:	ffff           	.short 0xffff
    46b8:	57d8           	seq %a0@+
    46ba:	97df           	subal %sp@+,%a3
    46bc:	5fdf           	sle %sp@+
    46be:	04df           	.short 0x04df
    46c0:	00d7           	.short 0x00d7
    46c2:	000f           	.short 0x000f
    46c4:	0018 0016      	orib #22,%a0@+
    46c8:	0003 0002      	orib #2,%d3
	...
    46d8:	29c8           	.short 0x29c8
    46da:	0ccf           	.short 0x0ccf
    46dc:	471f           	chkl %sp@+,%d3
    46de:	044f           	.short 0x044f
    46e0:	00cf           	.short 0x00cf
    46e2:	000f           	.short 0x000f
    46e4:	001f 0011      	orib #17,%sp@+
    46e8:	0003 0002      	orib #2,%d3
	...
    46f8:	ffff           	.short 0xffff
    46fa:	fffe           	.short 0xfffe
    46fc:	39ee           	.short 0x39ee
    46fe:	0bbf           	.short 0x0bbf
    4700:	013f           	.short 0x013f
    4702:	0071 0007 000f 	oriw #7,%a1@(f,%d0:w)
    4708:	0004 0001      	orib #1,%d4
    470c:	0001 0000      	orib #0,%d1
	...
    471c:	0000 0007      	orib #7,%d0
    4720:	07f9 48fc f3d0 	bset %d3,0x48fcf3d0
    4726:	daf1 9d2d f6bb 	addaw %a1@(fffffffffffff6bb)@(0,%a1:l:4),%a5
    472c:	aa86           	.short 0xaa86
    472e:	9ff8 2b4c      	subal 0x2b4c,%sp
    4732:	260b           	movel %a3,%d3
    4734:	ff08 448b      	cp1stb %d4,%a0,#3,#139
    4738:	0000 0000      	orib #0,%d0
    473c:	0000 0003      	orib #3,%d0
    4740:	3c34 3f1b fdfa 	movew %a4@(0,%d3:l:8)@(fffffffffdfa277c),%d6
    4746:	277c 
    4748:	455c           	.short 0x455c
    474a:	fd8d 19bf      	cp0stl %d1,%a5,#5,#447
    474e:	50bb           	.short 0x50bb
    4750:	21d9 ffd8      	movel %a1@+,0xffffffd8
    4754:	00dc           	.short 0x00dc
    4756:	005f 0000      	oriw #0,%sp@+
    475a:	0000 0001      	orib #1,%d0
    475e:	0004 03cf      	orib #-49,%d4
    4762:	07e7           	bset %d3,%sp@-
    4764:	0e2f           	.short 0x0e2f
    4766:	f98f           	.short 0xf98f
    4768:	faf7           	.short 0xfaf7
    476a:	0376 f679      	bchg %d1,%fp@(79,%sp:w:8)
    476e:	ef4f           	lslw #7,%d7
    4770:	de37 91ff fff7 	addb @(fffffffffff7ffe4)@(fffffffffe0db002),%d7
    4776:	ffe4 fe0d b002 
    477c:	a009 9004      	macw %a1l,%d0l
    4780:	1806           	moveb %d6,%d4
    4782:	8402           	orb %d2,%d2
    4784:	6002           	bras 0x4788
    4786:	7842           	moveq #66,%d4
    4788:	003b           	.short 0x003b
    478a:	8006           	orb %d6,%d0
    478c:	e081           	asrl #8,%d1
    478e:	007b           	.short 0x007b
    4790:	0037 0105 01c0 	orib #5,@(0)
    4796:	011f           	btst %d0,%sp@+
    4798:	0102           	btst %d0,%d2
    479a:	4001           	negxb %d1
    479c:	5001           	addqb #8,%d1
    479e:	2000           	movel %d0,%d0
    47a0:	9800           	subb %d0,%d4
    47a2:	4400           	negb %d0
    47a4:	e000           	asrb #8,%d0
    47a6:	7840           	moveq #64,%d4
    47a8:	003c 8009      	orib #9,%ccr
    47ac:	e080           	asrl #8,%d0
    47ae:	007c 0038      	oriw #56,%sr
    47b2:	010a 01c1      	movepw %a2@(449),%d0
    47b6:	01e0           	bset %d0,%a0@-
    47b8:	ff1f 000f      	cp1stb %d0,%sp@+,#1,#15
    47bc:	000e           	.short 0x000e
    47be:	0007 0007      	orib #7,%d7
    47c2:	0003 0003      	orib #3,%d3
    47c6:	0003 0001      	orib #1,%d3
    47ca:	0000 0001      	orib #1,%d0
    47ce:	0001 0000      	orib #0,%d1
    47d2:	0000 0000      	orib #0,%d0
    47d6:	0000 002f      	orib #47,%d0
    47da:	005f 0017      	oriw #23,%sp@+
    47de:	0003 0000      	orib #0,%d3
	...
    47f6:	0000 00d0      	orib #-48,%d0
    47fa:	0020 0008      	orib #8,%a0@-
	...
    481a:	0001 0001      	orib #1,%d1
    481e:	0003 0000      	orib #0,%d3
	...
    4836:	0000 bfbc      	orib #-68,%d0
    483a:	7cfe           	moveq #-2,%d6
    483c:	eed3           	.short 0xeed3
    483e:	d3fb 1b0f dfcf 	addal %pc@(0x4840)@(ffffffffdfcfd3ae,%d1:l:2),%a1
    4844:	d3ae 
    4846:	5a6d 0ef2      	addqw #5,%a5@(3826)
    484a:	09fb           	.short 0x09fb
    484c:	7def a7f7      	mvzw %sp@(-22537),%d6
    4850:	f5bb           	.short 0xf5bb
    4852:	9879 dff7 7bef 	subw 0xdff77bef,%d4
    4858:	8f87 5f9d      	unpk %d7,%d7,#24477
    485c:	6d9f           	blts 0x47fd
    485e:	dff7 160c      	addal %sp@(c,%d1:w:8),%sp
    4862:	1e01           	moveb %d1,%d7
    4864:	1fa6 d64d      	moveb %fp@-,%sp@(4d,%a5:w:8)
    4868:	ce9f           	andl %sp@+,%d7
    486a:	cf36 fb7d 3f6e 	andb %d7,%fp@(3f6e6d99)@(0)
    4870:	6d99 
    4872:	f800           	.short 0xf800
    4874:	b862           	cmpw %a2@-,%d4
    4876:	f8e6           	.short 0xf8e6
    4878:	fcf8           	.short 0xfcf8
    487a:	f870           	.short 0xf870
    487c:	f060           	.short 0xf060
    487e:	e0e1           	asrw %a1@-
    4880:	e1f3 f3ff e1ff 	aslw @(ffffffffe1ffe1f2)@(fffffffff1e0f0e0)
    4886:	e1f2 f1e0 f0e0 
    488c:	e0c2           	.short 0xe0c2
    488e:	c1c3           	mulsw %d3,%d0
    4890:	83e7           	divsw %sp@-,%d1
    4892:	07ff           	.short 0x07ff
    4894:	0fff           	.short 0x0fff
    4896:	9fff           	.short 0x9fff
    4898:	12df           	moveb %sp@+,%a1@+
    489a:	31ff           	.short 0x31ff
    489c:	83ff           	.short 0x83ff
    489e:	a34f           	mov3ql #1,%sp
    48a0:	e176           	roxlw %d0,%d6
    48a2:	8374 4337 b557 	orw %d1,%a4@(ffffffffb557f764)@(45ff25e7,%d4:w:2)
    48a8:	f764 45ff 25e7 
    48ae:	05cf 77d6      	movepl %d2,%sp@(30678)
    48b2:	ebfe           	.short 0xebfe
    48b4:	2a94           	movel %a4@,%a5@
    48b6:	3f94 d1cf 68ed 	movew %a4@,@(0)@(68ed5bdf)
    48bc:	5bdf 
    48be:	1edd           	moveb %a5@+,%sp@+
    48c0:	bcf1 3c9b      	cmpaw %a1@(ffffffffffffff9b,%d3:l:4),%fp
    48c4:	3c9f           	movew %sp@+,%fp@
    48c6:	bc39 df33 9dbf 	cmpb 0xdf339dbf,%d6
    48cc:	5cf1 5c73      	sge %a1@(73,%d5:l:4)
    48d0:	7fe2           	mvzw %a2@-,%d7
    48d2:	dbfe           	.short 0xdbfe
    48d4:	19cc           	.short 0x19cc
    48d6:	1ecc           	.short 0x1ecc
    48d8:	efff           	.short 0xefff
    48da:	dfdf           	addal %sp@+,%sp
    48dc:	fc68 fdfa 5f87 	cp0ldw %a0@(24455),%sp,#7,#506
    48e2:	ffff           	.short 0xffff
    48e4:	fff8           	.short 0xfff8
    48e6:	cffe           	.short 0xcffe
    48e8:	2cff           	.short 0x2cff
    48ea:	fe61 ff7e      	cp1ldw %a1@-,%sp,#8,#382
    48ee:	fffc           	.short 0xfffc
    48f0:	8cfe           	.short 0x8cfe
    48f2:	3c42           	moveaw %d2,%fp
    48f4:	7ff8 61fc      	mvzw 0x61fc,%d7
    48f8:	e7e0           	rolw %a0@-
    48fa:	5958           	subqw #4,%a0@+
    48fc:	beb0 d7e0 43c0 	cmpl @(43c0),%d7
    4902:	8180 bf00      	unpk %d0,%d0,#-16640
    4906:	6a00 2a00      	bplw 0x7308
    490a:	be00           	cmpb %d0,%d7
    490c:	da00           	addb %d0,%d5
    490e:	6f00 3b80      	blew 0x8490
    4912:	8a80           	orl %d0,%d5
    4914:	f780           	.short 0xf780
    4916:	35c0           	.short 0x35c0
    4918:	e3f8 23b8      	lslw 0x23b8
    491c:	ff70           	.short 0xff70
    491e:	c7e0           	mulsw %a0@-,%d3
    4920:	9dc0           	subal %d0,%fp
    4922:	8f80 9f00      	unpk %d0,%d7,#-24832
    4926:	ee00           	asrb #7,%d0
    4928:	e600           	asrb #3,%d0
    492a:	fe00 3e00      	cp1ldb %d0,%d3,#8,#0
    492e:	9f00           	subxb %d0,%d7
    4930:	ef80           	asll #7,%d0
    4932:	7f80           	mvzb %d0,%d7
    4934:	9f80           	subxl %d0,%d7
    4936:	7fc0           	mvzw %d0,%d7
    4938:	1c18           	moveb %a0@+,%d6
    493a:	ffe8           	.short 0xffe8
    493c:	43f0 3860      	lea %a0@(60,%d3:l),%a1
    4940:	ff40 7f00      	cp1stw %d7,%d0,#8,#256
    4944:	6700 9600      	beqw 0xffffdf46
    4948:	9e00           	subb %d0,%d7
    494a:	7200           	moveq #0,%d1
    494c:	f600 f700 9180 	move16 %a0@+,0xf7009180
    4952:	e780           	asll #3,%d0
    4954:	6d80           	blts 0x48d6
    4956:	8fc0           	divsw %d0,%d7
    4958:	76c0           	moveq #-64,%d3
    495a:	bac0           	cmpaw %d0,%a5
    495c:	96c0           	subaw %d0,%a3
    495e:	9ac0           	subaw %d0,%a5
    4960:	b9c0           	cmpal %d0,%a4
    4962:	4c80           	satsl %d0
    4964:	8d80 8680      	unpk %d0,%d6,#-31104
    4968:	5280           	addql #1,%d0
    496a:	5580           	subql #2,%d0
    496c:	5900           	subqb #4,%d0
    496e:	3300           	movew %d0,%a1@-
    4970:	9600           	subb %d0,%d3
    4972:	9a00           	subb %d0,%d5
    4974:	fa00           	.short 0xfa00
    4976:	9c00           	subb %d0,%d6
    4978:	4dc0           	.short 0x4dc0
    497a:	8dc0           	divsw %d0,%d6
    497c:	9dc0           	subal %d0,%fp
    497e:	47c0           	.short 0x47c0
    4980:	77c0           	mvzw %d0,%d3
    4982:	eb80           	asll #5,%d0
    4984:	6380           	blss 0x4906
    4986:	6f80           	bles 0x4908
    4988:	2780 2780      	movel %d0,@(0,%d2:w:8)
    498c:	3f00           	movew %d0,%sp@-
    498e:	3700           	movew %d0,%a3@-
    4990:	3e00           	movew %d0,%d7
    4992:	3600           	movew %d0,%d3
    4994:	6600 0c00      	bnew 0x5596
    4998:	bbc0           	cmpal %d0,%a5
    499a:	77c0           	mvzw %d0,%d3
    499c:	63c0           	blss 0x495e
    499e:	f9c0           	.short 0xf9c0
    49a0:	cfc0           	mulsw %d0,%d7
    49a2:	3780 ff80      	movew %d0,@(0,%sp:l:8)
    49a6:	f180           	.short 0xf180
    49a8:	f980           	.short 0xf980
    49aa:	fb80           	.short 0xfb80
    49ac:	e700           	aslb #3,%d0
    49ae:	cf00           	abcd %d0,%d7
    49b0:	e200           	asrb #1,%d0
    49b2:	ee00           	asrb #7,%d0
    49b4:	9e00           	subb %d0,%d7
    49b6:	f400           	.short 0xf400
    49b8:	9000           	subb %d0,%d0
    49ba:	2800           	movel %d0,%d4
    49bc:	f000           	.short 0xf000
    49be:	c000           	andb %d0,%d0
	...
    49d8:	3800           	movew %d0,%d4
    49da:	7800           	moveq #0,%d4
    49dc:	1000           	moveb %d0,%d0
    49de:	4000           	negxb %d0
	...
    49f8:	c800           	andb %d0,%d4
    49fa:	9800           	subb %d0,%d4
    49fc:	f000           	.short 0xf000
    49fe:	c000           	andb %d0,%d0
	...
    4a18:	f700           	.short 0xf700
    4a1a:	d600           	addb %d0,%d3
    4a1c:	f400           	.short 0xf400
    4a1e:	bc00           	cmpb %d0,%d6
    4a20:	c800           	andb %d0,%d4
    4a22:	1800           	moveb %d0,%d4
    4a24:	3000           	movew %d0,%d0
    4a26:	e000           	asrb #8,%d0
    4a28:	c000           	andb %d0,%d0
    4a2a:	8000           	orb %d0,%d0
	...
    4a38:	ef00           	aslb #7,%d0
    4a3a:	ce00           	andb %d0,%d7
    4a3c:	cc00           	andb %d0,%d6
    4a3e:	bc00           	cmpb %d0,%d6
    4a40:	f800 7800      	tblsb %d0,%d0,%d7
    4a44:	f000           	.short 0xf000
    4a46:	e000           	asrb #8,%d0
    4a48:	c000           	andb %d0,%d0
    4a4a:	8000           	orb %d0,%d0
	...
    4a58:	ff00 fe00      	cp1stb %sp,%d0,#8,#0
    4a5c:	fc00 4400      	cp0ldb %d0,%d4,#3,#0
    4a60:	b000           	cmpb %d0,%d0
    4a62:	f800           	.short 0xf800
    4a64:	f000 6000      	pmove %d0,%psr
    4a68:	c000           	andb %d0,%d0
    4a6a:	8000           	orb %d0,%d0
	...
    4a78:	2835 0424      	movel %a5@(24,%d0:w:4),%d4
    4a7c:	0c28 4c0a 541a 	cmpib #10,%a0@(21530)
    4a82:	1000           	moveb %d0,%d0
    4a84:	0804 0c04      	btst #4,%d4
    4a88:	781a           	moveq #26,%d4
    4a8a:	402e 5226      	negxb %fp@(21030)
    4a8e:	522b 1090      	addqb #1,%a3@(4240)
    4a92:	1840           	.short 0x1840
    4a94:	0009           	.short 0x0009
    4a96:	2a00           	movel %d0,%d5
    4a98:	2c03           	movel %d3,%d6
    4a9a:	0002 0804      	orib #4,%d2
    4a9e:	4006           	negxb %d6
    4aa0:	4002           	negxb %d2
    4aa2:	400a           	.short 0x400a
    4aa4:	440e           	.short 0x440e
    4aa6:	440e           	.short 0x440e
    4aa8:	0004 0800      	orib #0,%d4
    4aac:	0200 0205      	andib #5,%d0
    4ab0:	0221 0a2f      	andib #47,%a1@-
    4ab4:	0ac6           	.short 0x0ac6
    4ab6:	059e           	bclr %d2,%fp@+
    4ab8:	3c3f           	.short 0x3c3f
    4aba:	143e           	.short 0x143e
    4abc:	1c3c 5c3e      	moveb #62,%d6
    4ac0:	5c3a           	.short 0x5c3a
    4ac2:	5c3a           	.short 0x5c3a
    4ac4:	5c7e           	.short 0x5c7e
    4ac6:	5c7e           	.short 0x5c7e
    4ac8:	787e           	moveq #126,%d4
    4aca:	787e           	moveq #126,%d4
    4acc:	727e           	moveq #126,%d1
    4ace:	727f           	moveq #127,%d1
    4ad0:	72ff           	moveq #-1,%d1
    4ad2:	3aef 3bcf      	movew %sp@(15311),%a5@+
    4ad6:	3f9e 0029      	movew %fp@+,%sp@(29,%d0:w)
    4ada:	0008           	.short 0x0008
    4adc:	400c           	.short 0x400c
    4ade:	4000           	negxb %d0
    4ae0:	0015 100d      	orib #13,%a5@
    4ae4:	1003           	moveb %d3,%d0
    4ae6:	400d           	.short 0x400d
    4ae8:	6808           	bvcs 0x4af2
    4aea:	4c01           	.short 0x4c01
    4aec:	d621           	addb %a1@-,%d3
    4aee:	3221           	movew %a1@-,%d1
    4af0:	560e           	.short 0x560e
    4af2:	540b           	.short 0x540b
    4af4:	400b           	.short 0x400b
    4af6:	202e 0001      	movel %fp@(1),%d0
    4afa:	0001 4005      	orib #5,%d1
    4afe:	4005           	negxb %d5
    4b00:	4002           	negxb %d2
    4b02:	5002           	addqb #8,%d2
    4b04:	5000           	addqb #8,%d0
    4b06:	1008           	.short 0x1008
    4b08:	3808           	movew %a0,%d4
    4b0a:	3c08           	movew %a0,%d6
    4b0c:	ae28           	.short 0xae28
    4b0e:	8e28 8e21      	orb %a0@(-29151),%d7
    4b12:	0c20 4c20      	cmpib #32,%a0@-
    4b16:	0c01 0039      	cmpib #57,%d1
    4b1a:	0039 401d 401d 	orib #29,0x401d401f
    4b20:	401f 
    4b22:	500f           	.short 0x500f
    4b24:	5007           	addqb #8,%d7
    4b26:	500f           	.short 0x500f
    4b28:	780b           	moveq #11,%d4
    4b2a:	7c0b           	moveq #11,%d6
    4b2c:	fe2b fe2b fe2f 	cp1ldb %a3@(-465),%sp,#8,#43
    4b32:	7c2f           	moveq #47,%d6
    4b34:	7c2f           	moveq #47,%d6
    4b36:	3c2f 0019      	movew %sp@(25),%d6
    4b3a:	002b 002a 0020 	orib #42,%a3@(32)
    4b40:	0010 0014      	orib #20,%a0@
    4b44:	0002 0006      	orib #6,%d2
    4b48:	0026 002a      	orib #42,%fp@-
    4b4c:	0008           	.short 0x0008
    4b4e:	0004 0006      	orib #6,%d4
    4b52:	003c 0020      	orib #32,%ccr
    4b56:	0029 0047 0047 	orib #71,%a1@(71)
    4b5c:	0006 0026      	orib #38,%d6
    4b60:	0006 0016      	orib #22,%d6
    4b64:	0000 0004      	orib #4,%d0
    4b68:	0020 0020      	orib #32,%a0@-
    4b6c:	0020 0022      	orib #34,%a0@-
    4b70:	0022 0000      	orib #0,%a2@-
    4b74:	0004 0001      	orib #1,%d4
    4b78:	007f           	.short 0x007f
    4b7a:	007f           	.short 0x007f
    4b7c:	003e           	.short 0x003e
    4b7e:	003e           	.short 0x003e
    4b80:	001e 001e      	orib #30,%fp@+
    4b84:	000a           	.short 0x000a
    4b86:	000e           	.short 0x000e
    4b88:	002e 002e 002e 	orib #46,%fp@(46)
    4b8e:	002e 002e 003c 	orib #46,%fp@(60)
    4b94:	003c 0039      	orib #57,%ccr
	...
    4ba4:	0000 0020      	orib #32,%d0
    4ba8:	0020 0000      	orib #0,%a0@-
    4bac:	0008           	.short 0x0008
    4bae:	0008           	.short 0x0008
    4bb0:	0020 0034      	orib #52,%a0@-
    4bb4:	0026 006b      	orib #107,%fp@-
	...
    4bc4:	0000 0020      	orib #32,%d0
    4bc8:	0020 0020      	orib #32,%a0@-
    4bcc:	0028 0028 0008 	orib #40,%a0@(8)
    4bd2:	001c 001e      	orib #30,%a4@+
    4bd6:	0057 0000      	oriw #0,%sp@
	...
    4be6:	0020 0020      	orib #32,%a0@-
    4bea:	0020 0028      	orib #40,%a0@-
    4bee:	0028 0028 003c 	orib #40,%a0@(60)
    4bf4:	003e           	.short 0x003e
    4bf6:	007f           	.short 0x007f
    4bf8:	1000           	moveb %d0,%d0
    4bfa:	3000           	movew %d0,%d0
    4bfc:	1e00           	moveb %d0,%d7
    4bfe:	0200 4a00      	andib #0,%d0
    4c02:	4a00           	tstb %d0
    4c04:	0800 1800      	btst #0,%d0
    4c08:	0000 5400      	orib #0,%d0
    4c0c:	5800           	addqb #4,%d0
    4c0e:	6000 d800      	braw 0x2410
    4c12:	0800 4000      	btst #0,%d0
    4c16:	4200           	clrb %d0
    4c18:	2200           	movel %d0,%d1
    4c1a:	2200           	movel %d0,%d1
    4c1c:	0000 1000      	orib #0,%d0
    4c20:	4000           	negxb %d0
    4c22:	4000           	negxb %d0
    4c24:	4000           	negxb %d0
    4c26:	5000           	addqb #8,%d0
    4c28:	5000           	addqb #8,%d0
    4c2a:	2000           	movel %d0,%d0
    4c2c:	2000           	movel %d0,%d0
    4c2e:	0000 8800      	orib #0,%d0
    4c32:	8800           	orb %d0,%d4
    4c34:	8800           	orb %d0,%d4
    4c36:	8a00           	orb %d0,%d5
    4c38:	3a00           	movew %d0,%d5
    4c3a:	3a00           	movew %d0,%d5
    4c3c:	1e00           	moveb %d0,%d7
    4c3e:	1e00           	moveb %d0,%d7
    4c40:	4e00           	.short 0x4e00
    4c42:	4e00           	.short 0x4e00
    4c44:	4e00           	.short 0x4e00
    4c46:	5c00           	addqb #6,%d0
    4c48:	5c00           	addqb #6,%d0
    4c4a:	7c00           	moveq #0,%d6
    4c4c:	7800           	moveq #0,%d4
    4c4e:	7000           	moveq #0,%d0
    4c50:	f800           	.short 0xf800
    4c52:	e800           	asrb #4,%d0
    4c54:	e800           	asrb #4,%d0
    4c56:	ea00           	asrb #5,%d0
    4c58:	0800 0200      	btst #0,%d0
    4c5c:	1600           	moveb %d0,%d3
    4c5e:	3200           	movew %d0,%d1
    4c60:	6b00 4c00      	bmiw 0x9862
    4c64:	6a00 2a00      	bplw 0x7666
    4c68:	0200 0400      	andib #0,%d0
    4c6c:	1400           	moveb %d0,%d2
    4c6e:	2000           	movel %d0,%d0
    4c70:	3000           	movew %d0,%d0
    4c72:	3200           	movew %d0,%d1
    4c74:	2a00           	movel %d0,%d5
    4c76:	0800 0a00      	btst #0,%d0
    4c7a:	0800 1c00      	btst #0,%d0
    4c7e:	3c00           	movew %d0,%d6
    4c80:	7500           	mvsb %d0,%d2
    4c82:	7100           	mvsb %d0,%d0
    4c84:	7100           	mvsb %d0,%d0
    4c86:	3000           	movew %d0,%d0
    4c88:	3200           	movew %d0,%d1
    4c8a:	3000           	movew %d0,%d0
    4c8c:	3400           	movew %d0,%d2
    4c8e:	0000 1000      	orib #0,%d0
    4c92:	0200 0200      	andib #0,%d0
    4c96:	0200 0a00      	andib #0,%d0
    4c9a:	0a00 1e00      	eorib #0,%d0
    4c9e:	3e00           	movew %d0,%d7
    4ca0:	7f00           	mvsb %d0,%d7
    4ca2:	7f00           	mvsb %d0,%d7
    4ca4:	7f00           	mvsb %d0,%d7
    4ca6:	3e00           	movew %d0,%d7
    4ca8:	3e00           	movew %d0,%d7
    4caa:	3c00           	movew %d0,%d6
    4cac:	3c00           	movew %d0,%d6
    4cae:	2800           	movel %d0,%d4
    4cb0:	3800           	movew %d0,%d4
    4cb2:	3a00           	movew %d0,%d5
    4cb4:	3a00           	movew %d0,%d5
    4cb6:	3a00           	movew %d0,%d5
	...
    4cd0:	0200 0200      	andib #0,%d0
    4cd4:	0000 0800      	orib #0,%d0
	...
    4cf0:	0200 0200      	andib #0,%d0
    4cf4:	0200 0a00      	andib #0,%d0
	...
    4d10:	0200 0200      	andib #0,%d0
    4d14:	0200 0a00      	andib #0,%d0
    4d18:	b00e           	cmpb %fp,%d0
    4d1a:	101c           	moveb %a4@+,%d0
    4d1c:	809d           	orl %a5@+,%d0
    4d1e:	84a9 8423      	orl %a1@(-31709),%d2
    4d22:	7010           	moveq #16,%d0
    4d24:	d018           	addb %a0@+,%d0
    4d26:	d0f0 7483      	addaw %a0@(ffffffffffffff83,%d7:w:4),%a0
    4d2a:	aca5           	.short 0xaca5
    4d2c:	24a4           	movel %a4@-,%a2@
    4d2e:	1421           	moveb %a1@-,%d2
    4d30:	5032 5808      	addqb #8,%a2@(8,%d5:l)
    4d34:	0055 2000      	oriw #8192,%a5@
    4d38:	1000           	moveb %d0,%d0
    4d3a:	1010           	moveb %a0@,%d0
    4d3c:	1080           	moveb %d0,%a0@
    4d3e:	1480           	moveb %d0,%a2@
    4d40:	1480           	moveb %d0,%a2@
    4d42:	8489           	.short 0x8489
    4d44:	0489 0401 8010 	subil #67207184,%d1
    4d4a:	c004           	andb %d4,%d0
    4d4c:	4004           	negxb %d4
    4d4e:	2004           	movel %d4,%d0
    4d50:	6014           	bras 0x4d66
    4d52:	4015           	negxb %a5@
    4d54:	5008           	.short 0x5008
    4d56:	7073           	moveq #115,%d0
    4d58:	f02f           	.short 0xf02f
    4d5a:	d03f           	.short 0xd03f
    4d5c:	d0bf           	.short 0xd0bf
    4d5e:	d4bf           	.short 0xd4bf
    4d60:	d4bf           	.short 0xd4bf
    4d62:	f4bf           	cpusha ic
    4d64:	f4bf           	cpusha ic
    4d66:	f4ff           	cpusha bc
    4d68:	f4ff           	cpusha bc
    4d6a:	fcef           	.short 0xfcef
    4d6c:	7cef           	moveq #-17,%d6
    4d6e:	3cef 7c7f      	movew %sp@(31871),%fp@+
    4d72:	5c7d           	.short 0x5c7d
    4d74:	5c7d           	.short 0x5c7d
    4d76:	7e73           	moveq #115,%d7
    4d78:	6005           	bras 0x4d7f
    4d7a:	6481           	bccs 0x4cfd
    4d7c:	5481           	addql #2,%d1
    4d7e:	1000           	moveb %d0,%d0
    4d80:	2022           	movel %a2@-,%d0
    4d82:	6021           	bras 0x4da5
    4d84:	3c80           	movew %d0,%fp@
    4d86:	04d1           	.short 0x04d1
    4d88:	9499           	subl %a1@+,%d2
    4d8a:	95ac 1064      	subl %d2,%a4@(4196)
    4d8e:	30ac 00a9      	movew %a4@(169),%a0@
    4d92:	a881           	.short 0xa881
    4d94:	b041           	cmpw %d1,%d0
    4d96:	c055           	andw %a5@,%d0
    4d98:	2000           	movel %d0,%d0
    4d9a:	0480 0480 0480 	subil #75498624,%d0
    4da0:	44a0           	negl %a0@-
    4da2:	44a0           	negl %a0@-
    4da4:	0020 2071      	orib #113,%a0@-
    4da8:	8079 815d 811d 	orw 0x815d811d,%d0
    4dae:	a11d           	.short 0xa11d
    4db0:	a01c           	.short 0xa01c
    4db2:	409c           	negxl %a4@+
    4db4:	401c           	negxb %a4@+
    4db6:	0058 7007      	oriw #28679,%a0@+
    4dba:	7487           	moveq #-121,%d2
    4dbc:	7483           	moveq #-125,%d2
    4dbe:	7483           	moveq #-125,%d2
    4dc0:	74a3           	moveq #-93,%d2
    4dc2:	74a1           	moveq #-95,%d2
    4dc4:	3ca0           	movew %a0@-,%fp@
    4dc6:	3cf1 9cf9      	movew %a1@(fffffffffffffff9,%a1:l:4),%fp@+
    4dca:	9dfd           	.short 0x9dfd
    4dcc:	9dfd           	.short 0x9dfd
    4dce:	b9fd           	.short 0xb9fd
    4dd0:	b8fd           	.short 0xb8fd
    4dd2:	f8fd           	.short 0xf8fd
    4dd4:	f07d           	.short 0xf07d
    4dd6:	e07d           	rorw %d0,%d5
    4dd8:	0403 0405      	subib #5,%d3
    4ddc:	0005 1004      	orib #4,%d5
    4de0:	1002           	moveb %d2,%d0
    4de2:	0402 2c00      	subib #0,%d2
    4de6:	6400 d604      	bccw 0x23ec
    4dea:	9805           	subb %d5,%d4
    4dec:	d401           	addb %d1,%d2
    4dee:	5400           	addqb #2,%d0
    4df0:	0400 0807      	subib #7,%d0
    4df4:	2804           	movel %d4,%d4
    4df6:	4005           	negxb %d5
    4df8:	0408           	.short 0x0408
    4dfa:	0408           	.short 0x0408
    4dfc:	0400 1404      	subib #4,%d0
    4e00:	1400           	moveb %d0,%d2
    4e02:	1002           	moveb %d2,%d0
    4e04:	3800           	movew %d0,%d4
    4e06:	7800           	moveq #0,%d4
    4e08:	ea04           	asrb #5,%d4
    4e0a:	e204           	asrb #1,%d4
    4e0c:	e204           	asrb #1,%d4
    4e0e:	6004           	bras 0x4e14
    4e10:	6404           	bccs 0x4e16
    4e12:	6000 6800      	braw 0xb614
    4e16:	0000 040f      	orib #15,%d0
    4e1a:	040f           	.short 0x040f
    4e1c:	0407 1407      	subib #7,%d7
    4e20:	1403           	moveb %d3,%d2
    4e22:	1403           	moveb %d3,%d2
    4e24:	3c01           	movew %d1,%d6
    4e26:	7c01           	moveq #1,%d6
    4e28:	fe05 fe05      	cp1ldb %d5,%sp,#8,#5
    4e2c:	fe05 7c05      	cp1ldb %d5,%d7,#7,#5
    4e30:	7c05           	moveq #5,%d6
    4e32:	7807           	moveq #7,%d4
    4e34:	7807           	moveq #7,%d4
    4e36:	5007           	addqb #8,%d7
	...
    4e48:	0004 0000      	orib #0,%d4
    4e4c:	0001 0001      	orib #1,%d1
    4e50:	0004 0006      	orib #6,%d4
    4e54:	0004 000d      	orib #13,%d4
	...
    4e68:	0004 0004      	orib #4,%d4
    4e6c:	0005 0005      	orib #5,%d5
    4e70:	0001 0003      	orib #3,%d1
    4e74:	0003 000a      	orib #10,%d3
	...
    4e88:	0004 0004      	orib #4,%d4
    4e8c:	0005 0005      	orib #5,%d5
    4e90:	0005 0007      	orib #7,%d5
    4e94:	0007 000f      	orib #15,%d7
    4e98:	a834           	.short 0xa834
    4e9a:	880c           	.short 0x880c
    4e9c:	0234 5620 7204 	andib #32,%a4@(4,%d7:w:2)
    4ea2:	6b84           	bmis 0x4e28
    4ea4:	cc84           	andl %d4,%d6
    4ea6:	ea38           	rorb %d5,%d0
    4ea8:	6a2c           	bpls 0x4ed6
    4eaa:	c22c c4b8      	andb %a4@(-15176),%d1
    4eae:	54d4           	scc %a4@
    4eb0:	3090           	movew %a0@,%a0@
    4eb2:	30a0           	movew %a0@-,%a0@
    4eb4:	3228 0068      	movew %a0@(104),%d1
    4eb8:	6a08           	bpls 0x4ec2
    4eba:	4a00           	tstb %d0
    4ebc:	8820           	orb %a0@-,%d4
    4ebe:	dc20           	addb %a0@-,%d6
    4ec0:	7c20           	moveq #32,%d6
    4ec2:	75a0           	mvzb %a0@-,%d2
    4ec4:	f1a0           	.short 0xf1a0
    4ec6:	f184           	.short 0xf184
    4ec8:	b080           	cmpl %d0,%d0
    4eca:	3280           	movew %d0,%a1@
    4ecc:	3004           	movew %d4,%d0
    4ece:	b40c           	cmpb %a4,%d2
    4ed0:	1008           	.short 0x1008
    4ed2:	d010           	addb %a0@,%d0
    4ed4:	c218           	andb %a0@+,%d1
    4ed6:	d008           	.short 0xd008
    4ed8:	ea3c           	rorb %d5,%d4
    4eda:	ca1c           	andb %a4@+,%d5
    4edc:	8a3c de2c      	orb #44,%d5
    4ee0:	7e2c           	moveq #44,%d7
    4ee2:	7fac ffac      	mvzb %a4@(-84),%d7
    4ee6:	ffbc           	.short 0xffbc
    4ee8:	febc           	.short 0xfebc
    4eea:	febc           	.short 0xfebc
    4eec:	fcbc           	.short 0xfcbc
    4eee:	fcfc           	.short 0xfcfc
    4ef0:	f8f8           	.short 0xf8f8
    4ef2:	f8f0           	.short 0xf8f0
    4ef4:	faf8           	.short 0xfaf8
    4ef6:	d0e8 2050      	addaw %a0@(8272),%a0
    4efa:	0008           	.short 0x0008
    4efc:	8018           	orb %a0@+,%d0
    4efe:	0098 a0a8 a020 	oril #-1599561696,%a0@+
    4f04:	6010           	bras 0x4f16
    4f06:	a018           	.short 0xa018
    4f08:	00f0           	.short 0x00f0
    4f0a:	2080           	movel %d0,%a0@
    4f0c:	20a4           	movel %a4@-,%a0@
    4f0e:	20a4           	movel %a4@-,%a0@
    4f10:	c020           	andb %a0@-,%d0
    4f12:	6230           	bhis 0x4f44
    4f14:	6200 c054      	bhiw 0xf6a
    4f18:	2058           	moveal %a0@+,%a0
    4f1a:	2000           	movel %d0,%d0
    4f1c:	a010           	.short 0xa010
    4f1e:	a080           	.short 0xa080
    4f20:	4080           	negxl %d0
    4f22:	4080           	negxl %d0
    4f24:	0088 0088 0000 	oril #8912896,%d0
    4f2a:	0010 0004      	orib #4,%a0@
    4f2e:	0004 2004      	orib #4,%d4
    4f32:	0214 0214      	andib #20,%a4@
    4f36:	2208           	movel %a0,%d1
    4f38:	2078 2028      	moveal 0x2028,%a0
    4f3c:	a038           	.short 0xa038
    4f3e:	a0b8           	.short 0xa0b8
    4f40:	e0b8           	rorl %d0,%d0
    4f42:	e0b8           	rorl %d0,%d0
    4f44:	e0b8           	rorl %d0,%d0
    4f46:	e0b8           	rorl %d0,%d0
    4f48:	60f0           	bras 0x4f3a
    4f4a:	60f0           	bras 0x4f3c
    4f4c:	60e4           	bras 0x4f32
    4f4e:	60e4           	bras 0x4f34
    4f50:	e0e4           	asrw %a4@-
    4f52:	e274           	roxrw %d1,%d4
    4f54:	e274           	roxrw %d1,%d4
    4f56:	e27c           	rorw %d1,%d4
    4f58:	2000           	movel %d0,%d0
    4f5a:	6000 4080      	braw 0x8fdc
    4f5e:	0080 0000 8020 	oril #32800,%d0
    4f64:	4020           	negxb %a0@-
    4f66:	c080           	andl %d0,%d0
    4f68:	c0d0           	muluw %a0@,%d0
    4f6a:	4098           	negxl %a0@+
    4f6c:	01ac 8064      	bclr %d0,%a4@(-32668)
    4f70:	c0a8 80a8      	andl %a0@(-32600),%d0
    4f74:	0080 2040 e000 	oril #541122560,%d0
    4f7a:	e000           	asrb #8,%d0
    4f7c:	c080           	andl %d0,%d0
    4f7e:	c080           	andl %d0,%d0
    4f80:	c080           	andl %d0,%d0
    4f82:	c0a0           	andl %a0@-,%d0
    4f84:	00a0 8020 0070 	oril #-2145386384,%a0@-
    4f8a:	0078 015c 411c 	oriw #348,0x411c
    4f90:	4118           	chkl %a0@+,%d0
    4f92:	0018 8098      	orib #-104,%a0@+
    4f96:	2018           	movel %a0@+,%d0
    4f98:	e000           	asrb #8,%d0
    4f9a:	e000           	asrb #8,%d0
    4f9c:	c080           	andl %d0,%d0
    4f9e:	c080           	andl %d0,%d0
    4fa0:	c080           	andl %d0,%d0
    4fa2:	c0a0           	andl %a0@-,%d0
    4fa4:	40a0           	negxl %a0@-
    4fa6:	c0a0           	andl %a0@-,%d0
    4fa8:	c0f0 c0f8      	muluw %a0@(fffffffffffffff8,%a4:w),%d0
    4fac:	c1fc c1fc      	mulsw #-15876,%d0
    4fb0:	c1f8 80f8      	mulsw 0xffff80f8,%d0
    4fb4:	80f8 2078      	divuw 0x2078,%d0
	...
    4fd0:	0000 8000      	orib #0,%d0
    4fd4:	c000           	andb %d0,%d0
    4fd6:	6000 0000      	braw 0x4fd8
	...
    4ff2:	8000           	orb %d0,%d0
    4ff4:	c000           	andb %d0,%d0
    4ff6:	e000           	asrb #8,%d0
	...
    5010:	0000 8000      	orib #0,%d0
    5014:	c000           	andb %d0,%d0
    5016:	e000           	asrb #8,%d0
    5018:	94d0           	subaw %a0@,%a2
    501a:	1074           	.short 0x1074
    501c:	30ac 0024      	movew %a4@(36),%a0@
    5020:	a814           	.short 0xa814
    5022:	b050           	cmpw %a0@,%d0
    5024:	c058           	andw %a0@+,%d0
    5026:	b000           	cmpb %d0,%d0
    5028:	1020           	moveb %a0@-,%d0
    502a:	8020           	orb %a0@-,%d0
    502c:	8448           	.short 0x8448
    502e:	8464           	orw %a4@-,%d2
    5030:	7060           	moveq #96,%d0
    5032:	d0c0           	addaw %d0,%a0
    5034:	d109           	addxb %a1@-,%a0@-
    5036:	7400           	moveq #0,%d2
    5038:	8004           	orb %d4,%d0
    503a:	8080           	orl %d0,%d0
    503c:	a0c0           	.short 0xa0c0
    503e:	a040 4020      	macw %d0l,%a0l
    5042:	4060           	negxw %a0@-
    5044:	0040 1050      	oriw #4176,%d0
    5048:	1070           	.short 0x1070
    504a:	1060           	.short 0x1060
    504c:	1420           	moveb %a0@-,%d2
    504e:	1400           	moveb %d0,%d2
    5050:	8400           	orb %d0,%d2
    5052:	04a0 0580 81e0 	subil #92307936,%a0@-
    5058:	9cf4 9cf4      	subaw %a4@(fffffffffffffff4,%a1:l:4),%fp
    505c:	b8fc b87c      	cmpaw #-18308,%a4
    5060:	f83c           	.short 0xf83c
    5062:	f07c           	.short 0xf07c
    5064:	e05c           	rorw #8,%d4
    5066:	f05c           	.short 0xf05c
    5068:	d07e           	.short 0xd07e
    506a:	d06e d46e      	addw %fp@(-11154),%d0
    506e:	d46e f46a      	addw %fp@(-2966),%d2
    5072:	f4ea           	cpushl bc,%a2@
    5074:	f5eb           	.short 0xf5eb
    5076:	f5e1           	.short 0xf5e1
    5078:	9804           	subb %d4,%d4
    507a:	d494           	addl %a4@,%d2
    507c:	5494           	addql #2,%a4@
    507e:	0410 0830      	subib #48,%a0@
    5082:	2800           	movel %d0,%d4
    5084:	40a8 60b0      	negxl %a0@(24752)
    5088:	64c0           	bccs 0x504a
    508a:	54b0 1010      	addql #2,%a0@(10,%d1:w)
    508e:	2080           	movel %d0,%a0@
    5090:	6084           	bras 0x5016
    5092:	3c84           	movew %d4,%fp@
    5094:	0470 94d0 e220 	subiw #-27440,%a0@(20,%fp:w:2)
    509a:	e280           	asrl #1,%d0
    509c:	6080           	bras 0x501e
    509e:	6480           	bccs 0x5020
    50a0:	60a0           	bras 0x5042
    50a2:	68a0           	bvcs 0x5044
    50a4:	0040 2040      	oriw #8256,%d0
    50a8:	0400 0410      	subib #16,%d0
    50ac:	0410 4410      	subib #16,%a0@
    50b0:	4414           	negb %a4@
    50b2:	0014 2084      	orib #-124,%a4@
    50b6:	8004           	orb %d4,%d0
    50b8:	fe3c           	.short 0xfe3c
    50ba:	fe9c 7c9c      	cp1ldl %a4@+,%d7,#7,#156
    50be:	7c9c           	moveq #-100,%d6
    50c0:	78b8           	moveq #-72,%d4
    50c2:	78b8           	moveq #-72,%d4
    50c4:	50f8 70f0      	st 0x70f0
    50c8:	74e0           	moveq #-32,%d2
    50ca:	74f0           	moveq #-16,%d2
    50cc:	74d0           	moveq #-48,%d2
    50ce:	74d0           	moveq #-48,%d2
    50d0:	74d4           	moveq #-44,%d2
    50d2:	3cd4           	movew %a4@,%fp@+
    50d4:	3cf4 9cf4      	movew %a4@(fffffffffffffff4,%a1:l:4),%fp@+
    50d8:	0064 00d6      	oriw #214,%a4@-
    50dc:	0098 00d4 0054 	oril #13893716,%a0@+
    50e2:	0004 0008      	orib #8,%d4
    50e6:	0428 0440 0060 	subib #64,%a0@(96)
    50ec:	1064           	.short 0x1064
    50ee:	1054           	.short 0x1054
    50f0:	0410 2c20      	subib #32,%a0@
    50f4:	6460           	bccs 0x5156
    50f6:	d63c 0078      	addb #120,%d3
    50fa:	00ea           	.short 0x00ea
    50fc:	00e2           	.short 0x00e2
    50fe:	00e2           	.short 0x00e2
    5100:	0060 0064      	oriw #100,%a0@-
    5104:	0060 0468      	oriw #1128,%a0@-
    5108:	0400 0420      	subib #32,%d0
    510c:	1404           	moveb %d4,%d2
    510e:	1404           	moveb %d4,%d2
    5110:	1004           	moveb %d4,%d0
    5112:	3844           	moveaw %d4,%a4
    5114:	7844           	moveq #68,%d4
    5116:	ea00           	asrb #5,%d0
    5118:	007c 00fe      	oriw #254,%sr
    511c:	00fe           	.short 0x00fe
    511e:	00fe           	.short 0x00fe
    5120:	007c 007c      	oriw #124,%sr
    5124:	0078 0478 0450 	oriw #1144,0x450
    512a:	0470 1474 1474 	subiw #5236,%a0@(74,%d1:w:4)
    5130:	1474           	.short 0x1474
    5132:	3c74 7c74      	moveaw %a4@(74,%d7:l:4),%fp
    5136:	fe3c           	.short 0xfe3c
	...
    5148:	0000 0004      	orib #4,%d0
    514c:	0004 0000      	orib #0,%d4
    5150:	0010 0010      	orib #16,%a0@
    5154:	0004 002c      	orib #44,%d4
	...
    5168:	0000 0004      	orib #4,%d0
    516c:	0004 0004      	orib #4,%d4
    5170:	0014 0014      	orib #20,%a4@
    5174:	0010 0038      	orib #56,%a0@
	...
    5188:	0000 0004      	orib #4,%d0
    518c:	0004 0004      	orib #4,%d4
    5190:	0014 0014      	orib #20,%a4@
    5194:	0014 003c      	orib #60,%a4@
    5198:	0d2a 0988      	btst %d6,%a2@(2440)
    519c:	1ad0           	moveb %a0@,%a5@+
    519e:	0670 0ade 0a82 	addiw #2782,%a0@(ffffffffffffff82,%d0:l:2)
    51a4:	084a           	.short 0x084a
    51a6:	044a           	.short 0x044a
    51a8:	0508 0098      	movepw %a0@(152),%d2
    51ac:	0180           	bclr %d0,%d0
    51ae:	09d4           	bset %d4,%a4@
    51b0:	0ad8           	.short 0x0ad8
    51b2:	0260 0158      	andiw #344,%a0@-
    51b6:	0188 0702      	movepw %d0,%a0@(1794)
    51ba:	0782           	bclr %d3,%d2
    51bc:	15e2           	.short 0x15e2
    51be:	11e2 11c0      	moveb %a2@-,0x11c0
    51c2:	0190           	bclr %d0,%a0@
    51c4:	09c0           	bset %d4,%d0
    51c6:	01c0           	bset %d0,%d0
    51c8:	05c0           	bset %d2,%d0
    51ca:	0050 0150      	oriw #336,%a0@
    51ce:	0820 0820      	btst #32,%a0@-
    51d2:	0800 0888      	btst #-120,%d0
    51d6:	0888           	.short 0x0888
    51d8:	0f3a 0fba      	btst %d7,%pc@(0x6194)
    51dc:	1ffa           	.short 0x1ffa
    51de:	1ffa           	.short 0x1ffa
    51e0:	1fde           	.short 0x1fde
    51e2:	0f9e           	bclr %d7,%fp@+
    51e4:	0fce 07ce      	movepl %d7,%fp@(1998)
    51e8:	07ce 02dc      	movepl %d3,%fp@(732)
    51ec:	03dc           	bset %d1,%a4@+
    51ee:	0bfc           	.short 0x0bfc
    51f0:	0bf8 0bf0      	bset %d5,0xbf0
    51f4:	0bf8 0be8      	bset %d5,0xbe8
    51f8:	0000 0008      	orib #8,%d0
    51fc:	0008           	.short 0x0008
    51fe:	0002 0016      	orib #22,%d2
    5202:	0032 006b 004c 	orib #107,%a2@(4c,%d0:w)
    5208:	006a 002a 0802 	oriw #42,%a2@(2050)
    520e:	0804 0014      	btst #20,%d4
    5212:	0220 0230      	andib #48,%a0@-
    5216:	0832 0002 000a 	btst #2,%a2@(a,%d0:w)
    521c:	000a           	.short 0x000a
    521e:	0008           	.short 0x0008
    5220:	001c 003c      	orib #60,%a4@+
    5224:	0075 0071 0071 	oriw #113,%a5@(71,%d0:w)
    522a:	0030 0832 0830 	orib #50,%a0@(30,%d0:l)
    5230:	0834 0a00 0a10 	btst #0,%a4@(10,%d0:l:2)
    5236:	0202 0002      	andib #2,%d2
    523a:	000a           	.short 0x000a
    523c:	000a           	.short 0x000a
    523e:	000a           	.short 0x000a
    5240:	001e 003e      	orib #62,%fp@+
    5244:	007f           	.short 0x007f
    5246:	007f           	.short 0x007f
    5248:	007f           	.short 0x007f
    524a:	003e           	.short 0x003e
    524c:	083e           	.short 0x083e
    524e:	083c           	.short 0x083c
    5250:	083c           	.short 0x083c
    5252:	0a28 0a38 0a3a 	eorib #56,%a0@(2618)
    5258:	4c10 5400      	mulul %a0@,%d0,%d5
    525c:	1040           	.short 0x1040
    525e:	0840 0c10      	bchg #16,%d0
    5262:	78b0           	moveq #-80,%d4
    5264:	4190           	chkw %a0@,%d0
    5266:	5358           	subqw #1,%a0@+
    5268:	5260           	addqw #1,%a0@-
    526a:	1350 1950      	moveb %a0@,%a1@(6480)
    526e:	0210 2a20      	andib #32,%a0@
    5272:	18a0           	moveb %a0@-,%a4@
    5274:	0500           	btst %d2,%d0
    5276:	1980 4010      	moveb %d0,%a4@(10,%d4:w)
    527a:	4010           	negxb %a0@
    527c:	4050           	negxw %a0@
    527e:	4450           	negw %a0@
    5280:	4440           	negw %d0
    5282:	00e0           	.short 0x00e0
    5284:	09e0           	bset %d4,%a0@-
    5286:	03a8 0388      	bclr %d1,%a0@(904)
    528a:	0388 0b80      	movepw %d1,%a0@(2944)
    528e:	0b90           	bclr %d5,%a0@
    5290:	0780           	bclr %d3,%d0
    5292:	07a0           	bclr %d3,%a0@-
    5294:	0200 1280      	andib #-128,%d0
    5298:	5c10           	addqb #6,%a0@
    529a:	5c10           	addqb #6,%a0@
    529c:	5c50           	addqw #6,%a0@
    529e:	5c50           	addqw #6,%a0@
    52a0:	5c50           	addqw #6,%a0@
    52a2:	78f0           	moveq #-16,%d4
    52a4:	79f0 73f8 73f8 	mvzw @(73f873f8),%d4
    52aa:	73f8 
    52ac:	3bf0           	.short 0x3bf0
    52ae:	3bf0           	.short 0x3bf0
    52b0:	3fe0           	.short 0x3fe0
    52b2:	1fe0           	.short 0x1fe0
    52b4:	0f40           	bchg %d7,%d0
    52b6:	1fc0           	.short 0x1fc0
    52b8:	4000           	negxb %d0
    52ba:	0000 1000      	orib #0,%d0
    52be:	1000           	moveb %d0,%d0
    52c0:	4000           	negxb %d0
    52c2:	6800 4c00      	bvcw 0x9ec4
    52c6:	d600           	addb %d0,%d3
    52c8:	3200           	movew %d0,%d1
    52ca:	5400           	addqb #2,%d0
    52cc:	5400           	addqb #2,%d0
    52ce:	4000           	negxb %d0
    52d0:	2000           	movel %d0,%d0
    52d2:	2800           	movel %d0,%d4
    52d4:	0400 0c10      	subib #16,%d0
    52d8:	4000           	negxb %d0
    52da:	4000           	negxb %d0
    52dc:	5000           	addqb #8,%d0
    52de:	5000           	addqb #8,%d0
    52e0:	1000           	moveb %d0,%d0
    52e2:	3800           	movew %d0,%d4
    52e4:	3c00           	movew %d0,%d6
    52e6:	ae00 8e00      	macl %d0,%d7,>>
    52ea:	8c00           	orb %d0,%d6
    52ec:	0c00 4c00      	cmpib #0,%d0
    52f0:	0c00 2c00      	cmpib #0,%d0
    52f4:	0000 0810      	orib #16,%d0
    52f8:	4000           	negxb %d0
    52fa:	4000           	negxb %d0
    52fc:	5000           	addqb #8,%d0
    52fe:	5000           	addqb #8,%d0
    5300:	5000           	addqb #8,%d0
    5302:	7800           	moveq #0,%d4
    5304:	7c00           	moveq #0,%d6
    5306:	fe00 fe00      	cp1ldb %d0,%sp,#8,#0
    530a:	fc00 7c00      	cp0ldb %d0,%d7,#7,#0
    530e:	7c00           	moveq #0,%d6
    5310:	3c00           	movew %d0,%d6
    5312:	3c00           	movew %d0,%d6
    5314:	1400           	moveb %d0,%d2
    5316:	1c10           	moveb %a0@,%d6
    5318:	2ff1           	.short 0x2ff1
    531a:	d30d           	addxb %a5@-,%a1@-
    531c:	7ef2           	moveq #-14,%d7
    531e:	81fd           	.short 0x81fd
    5320:	7f1b           	mvsb %a3@+,%d7
    5322:	bfe4           	cmpal %a4@-,%sp
    5324:	5e87           	addql #7,%d7
    5326:	e46d           	lsrw %d2,%d5
    5328:	df92           	addl %d7,%a2@
    532a:	fb35 c5d8      	wddatab @(0)
    532e:	2e64           	moveal %a4@-,%sp
    5330:	7ffb fb94      	mvzw %zpc@(0)@(0,%sp:l:2),%d7
    5334:	4bab bf65      	chkw %a3@(-16539),%d5
    5338:	0a02 34f0      	eorib #-16,%d2
    533c:	85fd           	.short 0x85fd
    533e:	7f9a           	mvzb %a2@+,%d7
    5340:	fffc           	.short 0xfffc
    5342:	cee7           	muluw %sp@-,%d7
    5344:	6587           	bcss 0x52cd
    5346:	7b83           	mvzb %d3,%d5
    5348:	d1fe           	.short 0xd1fe
    534a:	8404           	orb %d4,%d2
    534c:	3e21           	movew %a1@-,%d7
    534e:	efb8           	roll %d7,%d0
    5350:	6b9c           	bmis 0x52ee
    5352:	676f           	beqs 0x53c3
    5354:	be77 fcfb      	cmpw %sp@(fffffffffffffffb,%sp:l:4),%d7
    5358:	da0d           	.short 0xda0d
    535a:	c806           	andb %d6,%d4
    535c:	8006           	orb %d6,%d0
    535e:	00e3           	.short 0x00e3
    5360:	01f0 0ee0      	bset %d0,%a0@(ffffffffffffffe0,%d0:l:8)
    5364:	8660           	orw %a0@-,%d3
    5366:	c3d0           	mulsw %a0@,%d1
    5368:	41c1           	.short 0x41c1
    536a:	80fa 006e      	divuw %pc@(0x53da),%d0
    536e:	142f ba06      	moveb %sp@(-17914),%d2
    5372:	e902           	aslb #4,%d2
    5374:	a611           	.short 0xa611
    5376:	9c38 0000      	subb 0x0,%d6
	...
    538a:	0008           	.short 0x0008
    538c:	0023 0050      	orib #80,%a3@-
    5390:	0022 017f      	orib #127,%a2@-
    5394:	03ba           	.short 0x03ba
    5396:	0577 0000      	bchg %d2,%sp@(0,%d0:w)
	...
    53ae:	000f           	.short 0x000f
    53b0:	005f 008e      	oriw #142,%sp@+
    53b4:	0079 02f0 0000 	oriw #752,0x0
    53ba:	0000 
	...
    53c8:	0001 000f      	orib #15,%d1
    53cc:	003f           	.short 0x003f
    53ce:	007f           	.short 0x007f
    53d0:	01f1 0382 0618 	bset %d0,@(0,%d0:w:2)@(618)
    53d6:	0e31           	.short 0x0e31
    53d8:	001a 0000      	orib #0,%a2@+
	...
    53f8:	000a           	.short 0x000a
	...
    5416:	0000 0016      	orib #22,%d0
	...
    544e:	0000 0028      	orib #40,%d0
    5452:	0020 0002      	orib #2,%a0@-
    5456:	003b           	.short 0x003b
	...
    5470:	0000 0021      	orib #33,%d0
    5474:	0002 001b      	orib #27,%d2
	...
    5490:	0038 0009 0021 	orib #9,0x21
    5496:	002c 1afb 8ff4 	orib #-5,%a4@(-28684)
    549c:	887f           	.short 0x887f
    549e:	f3e6           	.short 0xf3e6
    54a0:	0c19 e876      	cmpib #118,%a1@+
    54a4:	4683           	notl %d3
    54a6:	515e           	subqw #8,%fp@+
    54a8:	2ea7           	movel %sp@-,%sp@
    54aa:	df58           	addw %d7,%a0@+
    54ac:	f82f           	.short 0xf82f
    54ae:	b94b           	cmpmw %a3@+,%a4@+
    54b0:	4ea6           	.short 0x4ea6
    54b2:	bcd5           	cmpaw %a5@,%fp
    54b4:	57ba           	.short 0x57ba
    54b6:	a8fe           	.short 0xa8fe
    54b8:	0714           	btst %d3,%a4@
    54ba:	102b 8789      	moveb %a3@(-30839),%d0
    54be:	8b9e           	orl %d5,%fp@+
    54c0:	f878           	.short 0xf878
    54c2:	6471           	bccs 0x5535
    54c4:	cc07           	andb %d7,%d6
    54c6:	0ec7           	.short 0x0ec7
    54c8:	7f1e           	mvsb %fp@+,%d7
    54ca:	3bb9 e5ed c84c 	movew 0xe5edc84c,@(ffffffffffffb713,%d7:l)@(0)
    54d0:	79a1 b713 
    54d4:	98e6           	subaw %fp@-,%a4
    54d6:	ef44           	aslw #7,%d4
    54d8:	f105           	.short 0xf105
    54da:	f010 7000      	pmove %a0@,%bad0
    54de:	8401           	orb %d1,%d2
    54e0:	8407           	orb %d7,%d2
    54e2:	160b           	.short 0x160b
    54e4:	3319           	movew %a1@+,%a1@-
    54e6:	bf3f           	.short 0xbf3f
    54e8:	9fde           	subal %fp@+,%sp
    54ea:	e3c8           	.short 0xe3c8
    54ec:	43e0           	.short 0x43e0
    54ee:	0ef0           	.short 0x0ef0
    54f0:	8e78 47b8      	orw 0x47b8,%d7
    54f4:	a090 9063      	macw %d3u,%a1l,%a0@&,%d0
    54f8:	096b 007c      	bchg %d4,%a3@(124)
    54fc:	02de           	.short 0x02de
    54fe:	2775 1ead 5569 	movel %a5@(ffffffffffffffad,%d1:l:8),%a3@(21865)
    5504:	29ec           	.short 0x29ec
    5506:	53ec b3af      	sls %a4@(-19537)
    550a:	32e4           	movew %a4@-,%a1@+
    550c:	b3f5 d19a e186 	cmpal @(0,%a5:w)@(ffffffffffffe186),%a1
    5512:	5b39 4dee 2a03 	subqb #5,0x4dee2a03
    5518:	0297 011f 052f 	andil #18810159,%sp@
    551e:	2cce           	movel %fp,%fp@+
    5520:	03dc           	bset %d1,%a4@+
    5522:	4d99           	chkw %a1@+,%d6
    5524:	1b5d 3354      	moveb %a5@+,%a5@(13140)
    5528:	5753           	subqw #3,%a3@
    552a:	128a           	.short 0x128a
    552c:	0d2a 0c77      	btst %d6,%a2@(3191)
    5530:	1a47           	.short 0x1a47
    5532:	a401 9310      	msacw %d1l,%d2l,<<
    5536:	97fc 0d83 0e83 	subal #226692739,%a3
    553c:	1c03           	moveb %d3,%d6
    553e:	3c43           	moveaw %d3,%fp
    5540:	3043           	moveaw %d3,%a0
    5542:	63c7           	blss 0x550b
    5544:	4583           	chkw %d3,%d2
    5546:	8c93           	orl %a3@,%d6
    5548:	0d91           	bclr %d6,%a1@
    554a:	cf99           	andl %d7,%a1@+
    554c:	c721           	andb %d3,%a1@-
    554e:	e631           	roxrb %d3,%d1
    5550:	0c39 40ff e0ff 	cmpib #-1,0xe0fff1ef
    5556:	f1ef 
    5558:	0100           	btst %d0,%d0
    555a:	0101           	btst %d0,%d1
    555c:	00c1           	bitrev %d1
    555e:	00c0           	bitrev %d0
    5560:	007a           	.short 0x007a
    5562:	0035 0005 08e6 	orib #5,%a5@(ffffffffffffffe6,%d0:l)
    5568:	095d           	bchg %d4,%a5@+
    556a:	0d94           	bclr %d6,%a4@
    556c:	364e           	moveaw %fp,%a3
    556e:	2835 b015      	movel %a5@(15,%a3:w),%d4
    5572:	c0b7 817e 006f 	andl %sp@(6f0001)@(181),%d0
    5578:	0001 0181 
    557c:	0140           	bchg %d0,%d0
    557e:	0092 0018 002d 	oril #1572909,%a2@
    5584:	001d 0c3e      	orib #62,%a5@+
    5588:	184c           	.short 0x184c
    558a:	0a8c 2e0e 7813 	eoril #772700179,%d4
    5590:	9033 e0b3      	subb %a3@(ffffffffffffffb3,%fp:w),%d0
    5594:	017d           	.short 0x017d
    5596:	006d 0101 0080 	oriw #257,%a5@(128)
    559c:	0181           	bclr %d0,%d1
    559e:	0073 0063 001e 	oriw #99,%a3@(1e,%d0:w)
    55a4:	001e 07dd      	orib #-35,%fp@+
    55a8:	17bf           	.short 0x17bf
    55aa:	177f           	.short 0x177f
    55ac:	1a73           	.short 0x1a73
    55ae:	582e 60ef      	addqb #4,%fp@(24815)
    55b2:	215c 82bb      	movel %a4@+,%a0@(-32069)
    55b6:	03bf           	.short 0x03bf
    55b8:	0000 0001      	orib #1,%d0
    55bc:	0003 000e      	orib #14,%d3
    55c0:	0006 0008      	orib #8,%d6
    55c4:	000c           	.short 0x000c
    55c6:	0018 000a      	orib #10,%a0@+
    55ca:	0002 000d      	orib #13,%d2
    55ce:	0002 0001      	orib #1,%d2
    55d2:	0103           	btst %d0,%d3
    55d4:	0081 0100 0000 	oril #16777216,%d1
    55da:	0001 0001      	orib #1,%d1
    55de:	000a           	.short 0x000a
    55e0:	0006 0004      	orib #4,%d6
    55e4:	0004 001c      	orib #28,%d4
    55e8:	0006 0006      	orib #6,%d6
    55ec:	000f           	.short 0x000f
    55ee:	0001 0000      	orib #0,%d1
    55f2:	0111           	btst %d0,%a1@
    55f4:	0083 0011 0000 	oril #1114112,%d3
    55fa:	0002 0006      	orib #6,%d2
    55fe:	0006 0008      	orib #8,%d6
    5602:	001c 0018      	orib #24,%a4@+
    5606:	0004 001e      	orib #30,%d4
    560a:	000c           	.short 0x000c
    560c:	0003 0007      	orib #7,%d3
    5610:	0003 00f2      	orib #-14,%d3
    5614:	0112           	btst %d0,%a2@
    5616:	0131 83ff c438 	btst %d0,@(ffffffffc4382bc7)@(ffffffffd3ff0e6b)
    561c:	2bc7 d3ff 0e6b 
    5622:	f8d9           	.short 0xf8d9
    5624:	79bd           	.short 0x79bd
    5626:	6c76           	bges 0x569e
    5628:	9785           	subxl %d5,%d3
    562a:	4bfe           	.short 0x4bfe
    562c:	45cb           	.short 0x45cb
    562e:	b2f8 cfdf      	cmpaw 0xffffcfdf,%a1
    5632:	77a6           	mvzb %fp@-,%d3
    5634:	9f79 eefe 1c20 	subw %d7,0xeefe1c20
    563a:	13c7 46ff 7e7f 	moveb %d7,0x46ff7e7f
    5640:	fe18 f83b      	cp1ldb %a0@+,%sp,#5,#59
    5644:	6071           	bras 0x56b7
    5646:	71fc 198e      	mvzw #6542,%d0
    564a:	cc8f           	.short 0xcc8f
    564c:	8679 c33a 7b22 	orw 0xc33a7b22,%d3
    5652:	9e79 ecfe f1ff 	subw 0xecfef1ff,%d7
    5658:	fc20 f800      	cp0ldb %a0@-,%sp,#5,#0
    565c:	d900           	addxb %d0,%d4
    565e:	cf87           	.short 0xcf87
    5660:	fe0d 080c      	cp1ldb %a5,%d0,#5,#12
    5664:	8017           	orb %sp@,%d0
    5666:	8033 407f      	orb %a3@(7f,%d4:w),%d0
    566a:	20df           	movel %sp@+,%a0@+
    566c:	f059           	.short 0xf059
    566e:	ec18           	rorb #6,%d0
    5670:	6600 1e00      	bnew 0x7472
    5674:	0c10 807c      	cmpib #124,%a0@
    5678:	f5c0           	.short 0xf5c0
    567a:	5cc0           	sge %d0
    567c:	8a40           	orw %d0,%d5
    567e:	4e60           	movel %a0,%usp
    5680:	5370 8d28 fab4 	subqw #1,%a0@(fffffffffffffab4,%a0:l:4)
    5686:	779e           	mvzb %fp@+,%d3
    5688:	5fee 52d1      	sle %fp@(21201)
    568c:	b3b8 b77a      	eorl %d1,0xffffb77a
    5690:	df9b           	addl %d7,%a3@+
    5692:	758f           	mvzb %sp,%d2
    5694:	5fcf 0fbd      	dble %d7,0x6653
    5698:	dac0           	addaw %d0,%a5
    569a:	cb40           	exg %d5,%d0
    569c:	ddc0           	addal %d0,%fp
    569e:	e5e0           	roxlw %a0@-
    56a0:	e4f0 52f8      	roxrw %a0@(fffffffffffffff8,%d5:w:2)
    56a4:	877c           	.short 0x877c
    56a6:	1ffa           	.short 0x1ffa
    56a8:	bf9e           	eorl %d7,%fp@+
    56aa:	bfef 6e77      	cmpal %sp@(28279),%sp
    56ae:	7ef7           	moveq #-9,%d7
    56b0:	1657           	.short 0x1657
    56b2:	b872 7735 3e67 	cmpw %a2@(3e67f3c0)@(0,%d7:w:8),%d4
    56b8:	f3c0 
    56ba:	f9c0           	.short 0xf9c0
    56bc:	f9c0           	.short 0xf9c0
    56be:	fce0           	.short 0xfce0
    56c0:	fcf0           	.short 0xfcf0
    56c2:	f878           	.short 0xf878
    56c4:	e00c           	lsrb #8,%d4
    56c6:	c386           	.short 0xc386
    56c8:	8780 aec0      	unpk %d0,%d3,#-20800
    56cc:	18f2 1ee1      	moveb %a2@(ffffffffffffffe1,%d1:l:8),%a4@+
    56d0:	36e1           	movew %a1@-,%a3@+
    56d2:	3061           	moveaw %a1@-,%a0
    56d4:	bb24           	eorb %d5,%a4@-
    56d6:	fa24           	.short 0xfa24
    56d8:	3ef8 bff0      	movew 0xffffbff0,%sp@+
    56dc:	4ff0 6fec a7ac 	lea @(ffffffffffffa7ac)@(0),%sp
    56e2:	ece7           	.short 0xece7
    56e4:	6ce3           	bges 0x56c9
    56e6:	aae0           	.short 0xaae0
    56e8:	f4e0           	.short 0xf4e0
    56ea:	b9c0           	cmpal %d0,%a4
    56ec:	f3c0           	.short 0xf3c0
    56ee:	0700           	btst %d3,%d0
    56f0:	1580 d580      	moveb %d0,@(0,%a5:w:4)
    56f4:	7e80           	moveq #-128,%d7
    56f6:	f080 5dd8      	pbbs 0xb4d0
    56fa:	4fe8 f6e4      	lea %a0@(-2332),%sp
    56fe:	bef4 fae8      	cmpaw %a4@(ffffffffffffffe8,%sp:l:2),%sp
    5702:	7be1           	mvzw %a1@-,%d5
    5704:	ffe7           	.short 0xffe7
    5706:	ffe1           	.short 0xffe1
    5708:	afe0           	.short 0xafe0
    570a:	fec0 cec0      	cp1bcbusy 0x25cc
    570e:	ff80 ef80      	cp1stl %fp,%d0,#8,#384
    5712:	6f80           	bles 0x5694
    5714:	a380           	.short 0xa380
    5716:	7f80           	mvzb %d0,%d7
    5718:	afe0           	.short 0xafe0
    571a:	b1d8           	cmpal %a0@+,%a0
    571c:	39dc           	.short 0x39dc
    571e:	5978 5d66      	subqw #4,0x5d66
    5722:	9d66           	subw %d6,%fp@-
    5724:	9e64           	subw %a4@-,%d7
    5726:	5ee1           	sgt %a1@-
    5728:	dea0           	addl %a0@-,%d7
    572a:	e940           	aslw #4,%d0
    572c:	73c0           	mvzw %d0,%d1
    572e:	6780           	beqs 0x56b0
    5730:	0780           	bclr %d3,%d0
    5732:	e780           	asll #3,%d0
    5734:	f780           	.short 0xf780
    5736:	f380           	.short 0xf380
    5738:	9600           	subb %d0,%d3
    573a:	e200           	asrb #1,%d0
    573c:	a200 b300      	msacw %d0l,%d1l,<<
    5740:	a200 e600      	macw %d0l,%d1l,>>
    5744:	a900           	movel %d0,%macsr
    5746:	ac00 9200      	macw %d0l,%d6l,<<
    574a:	f800           	.short 0xf800
    574c:	c800           	andb %d0,%d4
    574e:	68c0           	bvcs 0x5710
    5750:	0fe0           	bset %d7,%a0@-
    5752:	1fb0 b940 7d98 	moveb %a0@(0),@(0,%d7:l:4)
    5758:	5400           	addqb #2,%d0
    575a:	d100           	addxb %d0,%d0
    575c:	6100 7300      	bsrw 0xca5e
    5760:	6100 e700      	bsrw 0x3e62
    5764:	6300 6200      	blsw 0xb966
    5768:	7600           	moveq #0,%d3
    576a:	f800           	.short 0xf800
    576c:	b800           	cmpb %d0,%d4
    576e:	18c0           	moveb %d0,%a4@+
    5770:	7f20           	mvsb %a0@-,%d7
    5772:	ff30           	.short 0xff30
    5774:	bfd0           	cmpal %a0@,%sp
    5776:	3be8           	.short 0x3be8
    5778:	f200           	.short 0xf200
    577a:	3300           	movew %d0,%a1@-
    577c:	f300           	.short 0xf300
    577e:	f000           	.short 0xf000
    5780:	e300           	aslb #1,%d0
    5782:	0100           	btst %d0,%d0
    5784:	ce00           	andb %d0,%d7
    5786:	fe00 fe00      	cp1ldb %d0,%sp,#8,#0
    578a:	0800 7000      	btst #0,%d0
    578e:	ff40 fae0      	cp1stw %sp,%d0,#6,#224
    5792:	fbc0           	.short 0xfbc0
    5794:	ffb0           	.short 0xffb0
    5796:	df78 0000      	addw %d7,0x0
    579a:	0000 c000      	orib #0,%d0
    579e:	1000           	moveb %d0,%d0
    57a0:	3000           	movew %d0,%d0
    57a2:	8000           	orb %d0,%d0
	...
    57ac:	0000 8000      	orib #0,%d0
    57b0:	c000           	andb %d0,%d0
    57b2:	a000 a000      	macw %d0l,%d0l
    57b6:	3e00           	movew %d0,%d7
    57b8:	8000           	orb %d0,%d0
    57ba:	0000 c000      	orib #0,%d0
    57be:	0000 3000      	orib #0,%d0
    57c2:	2000           	movel %d0,%d0
	...
    57cc:	0000 8000      	orib #0,%d0
    57d0:	c000           	andb %d0,%d0
    57d2:	e000           	asrb #8,%d0
    57d4:	6000 5200      	braw 0xa9d6
    57d8:	8000           	orb %d0,%d0
    57da:	c000           	andb %d0,%d0
    57dc:	a000 3000      	macw %d0l,%d0l
    57e0:	1000           	moveb %d0,%d0
    57e2:	e000           	asrb #8,%d0
	...
    57ec:	0000 8000      	orib #0,%d0
    57f0:	0000 6000      	orib #0,%d0
    57f4:	e000           	asrb #8,%d0
    57f6:	ec00           	asrb #6,%d0
    57f8:	ecc8           	.short 0xecc8
    57fa:	1fc7           	.short 0x1fc7
    57fc:	e3b8           	roll %d1,%d0
    57fe:	fd97 4eda      	cp0stl %d4,%sp@,#8,#218
    5802:	6b3d           	bmis 0x5841
    5804:	90c2           	subaw %d2,%a0
    5806:	413f           	.short 0x413f
    5808:	bef1 49cf 3707 	cmpaw @(0)@(3707cfec),%sp
    580e:	cfec 
    5810:	bb7e           	.short 0xbb7e
    5812:	5d8f           	subql #6,%sp
    5814:	defe           	.short 0xdefe
    5816:	ef7b           	rolw %d7,%d3
    5818:	1d80 e10c      	moveb %d0,%fp@(0)@(0,%fp:w)
    581c:	fc07 5e3a      	cp0ldb %d7,%d5,#8,#58
    5820:	df3d           	.short 0xdf3d
    5822:	8bc7           	divsw %d7,%d5
    5824:	f0fe           	.short 0xf0fe
    5826:	60fc           	bras 0x5824
    5828:	21f3 d7c1 cfce 	movel @(0)@(0),0xffffcfce
    582e:	bbc5           	cmpal %d5,%a5
    5830:	7c4c           	moveq #76,%d6
    5832:	de36 ef23 7f97 	addb %fp@(7f97,%fp:l:8)@(1e4702f3),%d7
    5838:	1e47 02f3 
    583c:	01df           	bset %d0,%sp@+
    583e:	604a           	bras 0x588a
    5840:	3838 d800      	movew 0xffffd800,%d4
    5844:	c001           	andb %d1,%d0
    5846:	7c01           	moveq #1,%d6
    5848:	7804           	moveq #4,%d4
    584a:	1067           	.short 0x1067
    584c:	c1f2 83fe 01df 	mulsw @(1df385f)@(ffffffffffffec1b),%d0
    5852:	385f ec1b 
    5856:	6619           	bnes 0x5871
	...
    586c:	7000           	moveq #0,%d0
    586e:	9800           	subb %d0,%d4
    5870:	ce00           	andb %d0,%d7
    5872:	f300           	.short 0xf300
    5874:	f9c0           	.short 0xf9c0
    5876:	f4a0           	.short 0xf4a0
	...
    588c:	f000 7800      	pmove %d0,<mmu register 30>
    5890:	be00           	cmpb %d0,%d7
    5892:	df00           	addxb %d0,%d7
    5894:	ffc0           	.short 0xffc0
    5896:	fbe0           	.short 0xfbe0
	...
    58ac:	0000 8000      	orib #0,%d0
    58b0:	c000           	andb %d0,%d0
    58b2:	f000           	.short 0xf000
    58b4:	fcc0 7e20      	cp0bcbusy 0xd6d6
    58b8:	0000 7800      	orib #0,%d0
    58bc:	6800 4400      	bvcw 0x9cbe
    58c0:	0400 0000      	subib #0,%d0
    58c4:	4800           	nbcd %d0
    58c6:	f400           	.short 0xf400
    58c8:	3800           	movew %d0,%d4
	...
    58da:	4800           	nbcd %d0
    58dc:	2400           	movel %d0,%d2
    58de:	0000 2400      	orib #0,%d0
    58e2:	0000 4800      	orib #0,%d0
    58e6:	2400           	movel %d0,%d2
    58e8:	6800 0000      	bvcw 0x58ea
	...
    58f8:	3000           	movew %d0,%d0
    58fa:	3000           	movew %d0,%d0
    58fc:	4c00 4400      	mulul %d0,%d0,%d4
    5900:	2000           	movel %d0,%d0
    5902:	0400 c400      	subib #0,%d0
    5906:	d800           	addb %d0,%d4
    5908:	5800           	addqb #4,%d0
	...
    592a:	0008           	.short 0x0008
    592c:	0023 0050      	orib #80,%a3@-
    5930:	0022 017f      	orib #127,%a2@-
    5934:	03ba           	.short 0x03ba
    5936:	0577 0000      	bchg %d2,%sp@(0,%d0:w)
	...
    594e:	000f           	.short 0x000f
    5950:	005f 008e      	oriw #142,%sp@+
    5954:	0079 02f0 0000 	oriw #752,0x0
    595a:	0000 
	...
    5968:	0001 000f      	orib #15,%d1
    596c:	003f           	.short 0x003f
    596e:	007f           	.short 0x007f
    5970:	01f1 0382 0618 	bset %d0,@(0,%d0:w:2)@(618)
    5976:	0e31           	.short 0x0e31
    5978:	096b 007c      	bchg %d4,%a3@(124)
    597c:	02de           	.short 0x02de
    597e:	2775 1ead 5569 	movel %a5@(ffffffffffffffad,%d1:l:8),%a3@(21865)
    5984:	29ec           	.short 0x29ec
    5986:	53ec b3af      	sls %a4@(-19537)
    598a:	32e4           	movew %a4@-,%a1@+
    598c:	b3f5 d19a e186 	cmpal @(0,%a5:w)@(ffffffffffffe186),%a1
    5992:	5b39 4dee 2a03 	subqb #5,0x4dee2a03
    5998:	0297 011f 052f 	andil #18810159,%sp@
    599e:	2cce           	movel %fp,%fp@+
    59a0:	03dc           	bset %d1,%a4@+
    59a2:	4d99           	chkw %a1@+,%d6
    59a4:	1b5d 3354      	moveb %a5@+,%a5@(13140)
    59a8:	5753           	subqw #3,%a3@
    59aa:	128a           	.short 0x128a
    59ac:	0d2a 0c77      	btst %d6,%a2@(3191)
    59b0:	1a47           	.short 0x1a47
    59b2:	a401 9310      	msacw %d1l,%d2l,<<
    59b6:	97fc 0d83 0e83 	subal #226692739,%a3
    59bc:	1c03           	moveb %d3,%d6
    59be:	3c43           	moveaw %d3,%fp
    59c0:	3043           	moveaw %d3,%a0
    59c2:	63c7           	blss 0x598b
    59c4:	4583           	chkw %d3,%d2
    59c6:	8c93           	orl %a3@,%d6
    59c8:	0d91           	bclr %d6,%a1@
    59ca:	cf99           	andl %d7,%a1@+
    59cc:	c721           	andb %d3,%a1@-
    59ce:	e631           	roxrb %d3,%d1
    59d0:	0c39 40ff e0ff 	cmpib #-1,0xe0fff1ef
    59d6:	f1ef 
    59d8:	007e           	.short 0x007e
    59da:	00ff           	.short 0x00ff
    59dc:	014e 0005      	movepl %fp@(5),%d0
    59e0:	0025 02c9      	orib #-55,%a5@-
    59e4:	02d0           	.short 0x02d0
    59e6:	0607 0393      	addib #-109,%d7
    59ea:	0002 0068      	orib #104,%d2
    59ee:	043d           	.short 0x043d
    59f0:	052c 0232      	btst %d2,%a4@(562)
    59f4:	0176 01bd 0073 	bchg %d0,@(7300c5)@(0,%d0:w)
    59fa:	00c5 
    59fc:	01c5           	bset %d0,%d5
    59fe:	010c 010e      	movepw %a4@(270),%d0
    5a02:	0177 032f 04bf 	bchg %d0,%sp@(4bf)@(6f00ff,%d0:w:2)
    5a08:	006f 00ff 
    5a0c:	00f7           	.short 0x00f7
    5a0e:	0057 027b      	oriw #635,%sp@
    5a12:	016f 00cb      	bchg %d0,%sp@(203)
    5a16:	007a           	.short 0x007a
    5a18:	078d 073a      	movepw %d3,%a5@(1850)
    5a1c:	0f3b 0ef7      	btst %d7,%pc@(0x5a15,%d0:l:8)
    5a20:	0ef7           	.short 0x0ef7
    5a22:	0ea0           	.short 0x0ea0
    5a24:	0cef           	.short 0x0cef
    5a26:	0b6b 0faf      	bchg %d5,%a3@(4015)
    5a2a:	0784           	bclr %d3,%d4
    5a2c:	07e6           	bset %d3,%fp@-
    5a2e:	03e3           	bset %d1,%a3@-
    5a30:	01d9           	bset %d0,%a1@+
    5a32:	04d9           	.short 0x04d9
    5a34:	0639 0601 0000 	addib #1,0x0
    5a3a:	0000 
	...
    5a4c:	0001 0013      	orib #19,%d1
    5a50:	000b           	.short 0x000b
    5a52:	00a7 016f 005f 	oril #24051807,%sp@-
	...
    5a6c:	0001 0001      	orib #1,%d1
    5a70:	000a           	.short 0x000a
    5a72:	0084 0164 001e 	oril #23330846,%d4
	...
    5a8c:	000e           	.short 0x000e
    5a8e:	003e           	.short 0x003e
    5a90:	00f5           	.short 0x00f5
    5a92:	017b           	.short 0x017b
    5a94:	029b 03e1 f5c0 	andil #65140160,%a3@+
    5a9a:	5cc0           	sge %d0
    5a9c:	8a40           	orw %d0,%d5
    5a9e:	4e60           	movel %a0,%usp
    5aa0:	5370 8d28 fab4 	subqw #1,%a0@(fffffffffffffab4,%a0:l:4)
    5aa6:	779e           	mvzb %fp@+,%d3
    5aa8:	5fee 52d1      	sle %fp@(21201)
    5aac:	b3b8 b77a      	eorl %d1,0xffffb77a
    5ab0:	df9b           	addl %d7,%a3@+
    5ab2:	758f           	mvzb %sp,%d2
    5ab4:	5fcf 0fbd      	dble %d7,0x6a73
    5ab8:	dac0           	addaw %d0,%a5
    5aba:	cb40           	exg %d5,%d0
    5abc:	ddc0           	addal %d0,%fp
    5abe:	e5e0           	roxlw %a0@-
    5ac0:	e4f0 52f8      	roxrw %a0@(fffffffffffffff8,%d5:w:2)
    5ac4:	877c           	.short 0x877c
    5ac6:	1ffa           	.short 0x1ffa
    5ac8:	bf9e           	eorl %d7,%fp@+
    5aca:	bfef 6e77      	cmpal %sp@(28279),%sp
    5ace:	7ef7           	moveq #-9,%d7
    5ad0:	1657           	.short 0x1657
    5ad2:	b872 7735 3e67 	cmpw %a2@(3e67f3c0)@(0,%d7:w:8),%d4
    5ad8:	f3c0 
    5ada:	f9c0           	.short 0xf9c0
    5adc:	f9c0           	.short 0xf9c0
    5ade:	fce0           	.short 0xfce0
    5ae0:	fcf0           	.short 0xfcf0
    5ae2:	f878           	.short 0xf878
    5ae4:	e00c           	lsrb #8,%d4
    5ae6:	c386           	.short 0xc386
    5ae8:	8780 aec0      	unpk %d0,%d3,#-20800
    5aec:	18f2 1ee1      	moveb %a2@(ffffffffffffffe1,%d1:l:8),%a4@+
    5af0:	36e1           	movew %a1@-,%a3@+
    5af2:	3061           	moveaw %a1@-,%a0
    5af4:	bb24           	eorb %d5,%a4@-
    5af6:	fa24           	.short 0xfa24
    5af8:	6e40           	bgts 0x5b3a
    5afa:	bfc0           	cmpal %d0,%sp
    5afc:	cfe0           	mulsw %a0@-,%d7
    5afe:	6fe0           	bles 0x5ae0
    5b00:	a7a0           	.short 0xa7a0
    5b02:	ece0           	.short 0xece0
    5b04:	6ce0           	bges 0x5ae6
    5b06:	aae0           	.short 0xaae0
    5b08:	f4e0           	.short 0xf4e0
    5b0a:	b9c0           	cmpal %d0,%a4
    5b0c:	f3c0           	.short 0xf3c0
    5b0e:	0700           	btst %d3,%d0
    5b10:	1580 d580      	moveb %d0,@(0,%a5:w:4)
    5b14:	7e80           	moveq #-128,%d7
    5b16:	f080 9dc0      	pbbs 0xfffff8d8
    5b1a:	4fc0           	.short 0x4fc0
    5b1c:	f6e0           	.short 0xf6e0
    5b1e:	bee0           	cmpaw %a0@-,%sp
    5b20:	fae0           	.short 0xfae0
    5b22:	7be0           	mvzw %a0@-,%d5
    5b24:	ffe0           	.short 0xffe0
    5b26:	ffe0           	.short 0xffe0
    5b28:	afe0           	.short 0xafe0
    5b2a:	fec0 cec0      	cp1bcbusy 0x29ec
    5b2e:	ff80 ef80      	cp1stl %fp,%d0,#8,#384
    5b32:	6f80           	bles 0x5ab4
    5b34:	a380           	.short 0xa380
    5b36:	7f80           	mvzb %d0,%d7
    5b38:	ffc0           	.short 0xffc0
    5b3a:	f1c0           	.short 0xf1c0
    5b3c:	39a0 5960 5d60 	movew %a0@-,%a4@(5d60)
    5b42:	9d60           	subw %d6,%a0@-
    5b44:	9e60           	subw %a0@-,%d7
    5b46:	5ee0           	sgt %a0@-
    5b48:	dea0           	addl %a0@-,%d7
    5b4a:	e940           	aslw #4,%d0
    5b4c:	73c0           	mvzw %d0,%d1
    5b4e:	6780           	beqs 0x5ad0
    5b50:	0780           	bclr %d3,%d0
    5b52:	e780           	asll #3,%d0
    5b54:	f780           	.short 0xf780
    5b56:	f380           	.short 0xf380
	...
    5b6c:	e000           	asrb #8,%d0
    5b6e:	8000           	orb %d0,%d0
    5b70:	a600 4f00      	msacl %d0,%d3,>>
    5b74:	2180 1d00      	movel %d0,%a0@(0,%d1:l:4)
	...
    5b8c:	a000 f800      	macl %d0,%d0
    5b90:	de00           	addb %d0,%d7
    5b92:	ff00 ff80      	cp1stb %sp,%d0,#8,#384
    5b96:	ff80 0000      	cp1stl %d0,%d0,#1,#0
	...
    5baa:	0000 6000      	orib #0,%d0
    5bae:	7800           	moveq #0,%d4
    5bb0:	7a00           	moveq #0,%d5
    5bb2:	b300           	eorb %d1,%d0
    5bb4:	df80           	addxl %d0,%d7
    5bb6:	e380           	asll #1,%d0
	...
    5bcc:	7000           	moveq #0,%d0
    5bce:	9800           	subb %d0,%d4
    5bd0:	ce00           	andb %d0,%d7
    5bd2:	f300           	.short 0xf300
    5bd4:	f9c0           	.short 0xf9c0
    5bd6:	f4a0           	.short 0xf4a0
	...
    5bec:	f000 7800      	pmove %d0,<mmu register 30>
    5bf0:	be00           	cmpb %d0,%d7
    5bf2:	df00           	addxb %d0,%d7
    5bf4:	ffc0           	.short 0xffc0
    5bf6:	fbe0           	.short 0xfbe0
	...
    5c0c:	0000 8000      	orib #0,%d0
    5c10:	c000           	andb %d0,%d0
    5c12:	f000           	.short 0xf000
    5c14:	fcc0 7e20      	cp0bcbusy 0xda36
    5c18:	0000 0021      	orib #33,%d0
    5c1c:	0000 0006      	orib #6,%d0
    5c20:	00e1           	.short 0x00e1
    5c22:	0000 0001      	orib #1,%d0
    5c26:	0003 0002      	orib #2,%d3
    5c2a:	0006 001a      	orib #26,%d6
    5c2e:	0002 0025      	orib #37,%d2
    5c32:	001e 001c      	orib #28,%fp@+
    5c36:	0037 0000 0010 	orib #0,%sp@(10,%d0:w)
    5c3c:	0000 0000      	orib #0,%d0
    5c40:	0001 0001      	orib #1,%d1
    5c44:	0000 0000      	orib #0,%d0
    5c48:	0001 0001      	orib #1,%d1
    5c4c:	0001 0009      	orib #9,%d1
    5c50:	001c 000f      	orib #15,%a4@+
    5c54:	000e           	.short 0x000e
    5c56:	000d           	.short 0x000d
    5c58:	0003 0047      	orib #71,%d3
    5c5c:	00df           	.short 0x00df
    5c5e:	00f7           	.short 0x00f7
    5c60:	00e1           	.short 0x00e1
    5c62:	0001 0007      	orib #7,%d1
    5c66:	0007 000f      	orib #15,%d7
    5c6a:	003f           	.short 0x003f
    5c6c:	003f           	.short 0x003f
    5c6e:	007f           	.short 0x007f
    5c70:	007f           	.short 0x007f
    5c72:	0079 007b 007b 	oriw #123,0x7b0000
    5c78:	0000 
    5c7a:	0004 0000      	orib #0,%d4
	...
    5c8a:	0050 0000      	oriw #0,%a0@
    5c8e:	0000 003c      	orib #60,%d0
    5c92:	0003 0000      	orib #0,%d3
    5c96:	0000 0000      	orib #0,%d0
    5c9a:	0002 0000      	orib #0,%d2
    5c9e:	0000 0002      	orib #2,%d0
	...
    5caa:	0008           	.short 0x0008
	...
    5cb4:	0001 0000      	orib #0,%d1
    5cb8:	0000 0008      	orib #8,%d0
    5cbc:	0008           	.short 0x0008
    5cbe:	000f           	.short 0x000f
    5cc0:	0003 0000      	orib #0,%d3
    5cc4:	0000 0000      	orib #0,%d0
    5cc8:	0000 0060      	orib #96,%d0
    5ccc:	0061 007f      	oriw #127,%a1@-
    5cd0:	003f           	.short 0x003f
    5cd2:	0003 0001      	orib #1,%d3
    5cd6:	0001 0000      	orib #0,%d1
	...
    5d2a:	0000 0001      	orib #1,%d0
    5d2e:	0001 0001      	orib #1,%d1
    5d32:	0000 0000      	orib #0,%d0
    5d36:	0000 6b3f      	orib #63,%d0
    5d3a:	8bae ebfd      	orl %d5,%fp@(-5123)
    5d3e:	6970           	bvss 0x5db0
    5d40:	2bf3           	.short 0x2bf3
    5d42:	abc7           	.short 0xabc7
    5d44:	aff5           	.short 0xaff5
    5d46:	0ff6 8f45      	bset %d7,%fp@(0)@(0)
    5d4a:	ce03           	andb %d3,%d7
    5d4c:	ca3f           	.short 0xca3f
    5d4e:	6df7           	blts 0x5d47
    5d50:	1efe           	.short 0x1efe
    5d52:	3e38 4d11      	movew 0x4d11,%d7
    5d56:	f033           	.short 0xf033
    5d58:	15c3           	.short 0x15c3
    5d5a:	17f6           	.short 0x17f6
    5d5c:	150c           	.short 0x150c
    5d5e:	17b0 1463 96c6 	moveb %a0@(63,%d1:w:4),%a3@(ffffffffffffffc6,%a1:w:8)
    5d64:	9187           	subxl %d7,%d0
    5d66:	9105           	subxb %d5,%d0
    5d68:	9307           	subxb %d7,%d1
    5d6a:	d203           	addb %d3,%d1
    5d6c:	c67f           	.short 0xc67f
    5d6e:	e5cf           	.short 0xe5cf
    5d70:	84fe           	.short 0x84fe
    5d72:	0458 4430      	subiw #17456,%a0@+
    5d76:	f7f0           	.short 0xf7f0
    5d78:	f000           	.short 0xf000
    5d7a:	f181           	.short 0xf181
    5d7c:	f103           	.short 0xf103
    5d7e:	f10f           	.short 0xf10f
    5d80:	f01f           	.short 0xf01f
    5d82:	f03f           	.short 0xf03f
    5d84:	f07e           	.short 0xf07e
    5d86:	f0ff           	.short 0xf0ff
    5d88:	f0ff           	.short 0xf0ff
    5d8a:	f1ff           	.short 0xf1ff
    5d8c:	71fe           	.short 0x71fe
    5d8e:	b3f8 f381      	cmpal 0xfffff381,%a1
    5d92:	f3e7           	.short 0xf3e7
    5d94:	f3ef           	.short 0xf3ef
    5d96:	ffcf           	.short 0xffcf
    5d98:	02e7           	.short 0x02e7
    5d9a:	02bf 02cf 057f 	andil #47121791,%d7
    5da0:	059f           	bclr %d2,%sp@+
    5da2:	8aff           	.short 0x8aff
    5da4:	2b9f 09ff 0b3e 	movel %sp@+,@(b3e0aff)@(1b39d1ff)
    5daa:	0aff 1b39 d1ff 
    5db0:	1673           	.short 0x1673
    5db2:	53fa 964f      	traplsw #-27057
    5db6:	9df7 251f 15ff 	subal %sp@(0)@(15ff053f,%d2:w:4),%fp
    5dbc:	053f 
    5dbe:	03ff           	.short 0x03ff
    5dc0:	0a7f           	.short 0x0a7f
    5dc2:	17ff           	.short 0x17ff
    5dc4:	547f           	.short 0x547f
    5dc6:	57ff           	seq %d7
    5dc8:	54ff           	scc %d7
    5dca:	97ff           	.short 0x97ff
    5dcc:	04fe           	.short 0x04fe
    5dce:	2fff           	.short 0x2fff
    5dd0:	29fc           	.short 0x29fc
    5dd2:	2fff           	.short 0x2fff
    5dd4:	29f0           	.short 0x29f0
    5dd6:	27fd           	.short 0x27fd
    5dd8:	3c03           	movew %d3,%d6
    5dda:	1c3f           	.short 0x1c3f
    5ddc:	1c07           	moveb %d7,%d6
    5dde:	183f           	.short 0x183f
    5de0:	f80f           	.short 0xf80f
    5de2:	f07f           	.short 0xf07f
    5de4:	700e           	moveq #14,%d0
    5de6:	70ff           	moveq #-1,%d0
    5de8:	701c           	moveq #28,%d0
    5dea:	f0ff           	.short 0xf0ff
    5dec:	f010           	.short 0xf010
    5dee:	e0fe           	.short 0xe0fe
    5df0:	e020           	asrb %d0,%d0
    5df2:	e1f8 e000      	aslw 0xffffe000
    5df6:	e0c0           	.short 0xe0c0
    5df8:	0020 0010      	orib #16,%a0@-
    5dfc:	0000 0443      	orib #67,%d0
    5e00:	0015 000a      	orib #10,%a5@
    5e04:	0817 0425      	btst #37,%sp@
    5e08:	012f 416b      	btst %d0,%sp@(16747)
    5e0c:	01be           	.short 0x01be
    5e0e:	0197           	bclr %d0,%sp@
    5e10:	00b9 832f 0173 	oril #-2094071437,0x4e5f0000
    5e16:	4e5f 0000 
    5e1a:	0000 0083      	orib #-125,%d0
    5e1e:	0204 000a      	andib #10,%d4
    5e22:	1017           	moveb %sp@,%d0
    5e24:	0028 005f 00d0 	orib #95,%a0@(208)
    5e2a:	20bf           	.short 0x20bf
    5e2c:	0041 047f      	oriw #1151,%d1
    5e30:	0147           	bchg %d0,%d7
    5e32:	08ff           	.short 0x08ff
    5e34:	028f 41ff 00c0 	andil #1107230912,%d7
    5e3a:	0083 0cc7 107c 	oril #214372476,%d3
    5e40:	1038 1830      	moveb 0x1830,%d0
    5e44:	0c60 07c0      	cmpiw #1984,%a0@-
    5e48:	03c0           	bset %d1,%d0
    5e4a:	8381 0300      	unpk %d1,%d1,#768
    5e4e:	0703           	btst %d3,%d3
    5e50:	8700           	sbcd %d0,%d3
    5e52:	ce0f           	.short 0xce0f
    5e54:	7e01           	moveq #1,%d7
    5e56:	7c1f           	moveq #31,%d6
    5e58:	2ffe           	.short 0x2ffe
    5e5a:	35fc           	.short 0x35fc
    5e5c:	3dc9           	.short 0x3dc9
    5e5e:	13db 83f9 fdfd 	moveb %a3@+,0x83f9fdfd
    5e64:	0fe3           	bset %d7,%a3@-
    5e66:	bfcf           	cmpal %sp,%sp
    5e68:	9714           	subb %d3,%a4@
    5e6a:	d03d           	.short 0xd03d
    5e6c:	c604           	andb %d4,%d3
    5e6e:	1835 3678      	moveb %a5@(78,%d3:w:8),%d4
    5e72:	e643           	asrw #3,%d3
    5e74:	0b63           	bchg %d5,%a3@-
    5e76:	3f26           	movew %fp@-,%sp@-
    5e78:	307e           	.short 0x307e
    5e7a:	49fc           	.short 0x49fc
    5e7c:	0178 0bf8      	bchg %d0,0xbf8
    5e80:	c278 fffc      	andw 0xfffffffc,%d1
    5e84:	3fe0           	.short 0x3fe0
    5e86:	8fc0           	divsw %d0,%d7
    5e88:	8f03           	sbcd %d3,%d7
    5e8a:	c003           	andb %d3,%d0
    5e8c:	c00b           	.short 0xc00b
    5e8e:	060b           	.short 0x060b
    5e90:	0e07           	.short 0x0e07
    5e92:	1e1f           	moveb %sp@+,%d7
    5e94:	ff1f ff1e      	cp1stb %sp,%sp@+,#8,#286
    5e98:	fffd           	.short 0xfffd
    5e9a:	f33b           	.short 0xf33b
    5e9c:	ffb7           	.short 0xffb7
    5e9e:	ffb7           	.short 0xffb7
    5ea0:	ff97 ff83      	cp1stl %sp,%sp@,#8,#387
    5ea4:	ff1f 7e3f      	cp1stb %d7,%sp@+,#8,#63
    5ea8:	7eff           	moveq #-1,%d7
    5eaa:	3fff           	.short 0x3fff
    5eac:	3fff           	.short 0x3fff
    5eae:	ffff           	.short 0xffff
    5eb0:	ffff           	.short 0xffff
    5eb2:	fdff           	.short 0xfdff
    5eb4:	fcff           	.short 0xfcff
    5eb6:	feff           	.short 0xfeff
    5eb8:	cf89           	exg %d7,%a1
    5eba:	ebb3           	roxll %d5,%d3
    5ebc:	9f87           	subxl %d7,%d7
    5ebe:	f7c4           	.short 0xf7c4
    5ec0:	9f8c           	subxl %a4@-,%sp@-
    5ec2:	eb12           	roxlb #5,%d2
    5ec4:	3f8b d793 7e03 	movew %a3,@(0,%a5:w:8)@(7e03ae87)
    5eca:	ae87 
    5ecc:	fcff           	.short 0xfcff
    5ece:	787f           	moveq #127,%d4
    5ed0:	d4ef e837      	addaw %sp@(-6089),%a2
    5ed4:	c217           	andb %sp@,%d1
    5ed6:	81cf           	.short 0x81cf
    5ed8:	f091           	.short 0xf091
    5eda:	feb3           	.short 0xfeb3
    5edc:	e087           	asrl #8,%d7
    5ede:	fc8e e19e      	cp0ldl %fp,%fp,#1,#414
    5ee2:	fd2e c133 fb1b 	cp0stb %a4,%fp@(-1253),#1,#307
    5ee8:	8203           	orb %d3,%d1
    5eea:	f6e7           	.short 0xf6e7
    5eec:	0cff           	.short 0x0cff
    5eee:	d9c3           	addal %d3,%a4
    5ef0:	3017           	movew %sp@,%d0
    5ef2:	6007           	bras 0x5efb
    5ef4:	c187           	.short 0xc187
    5ef6:	9fc7           	subal %d7,%sp
    5ef8:	807e           	.short 0x807e
    5efa:	e06e           	lsrw %d0,%d6
    5efc:	00fc           	.short 0x00fc
    5efe:	e07f           	rorw %d0,%d7
    5f00:	007f           	.short 0x007f
    5f02:	c0fd           	.short 0xc0fd
    5f04:	00e4           	.short 0x00e4
    5f06:	80fd           	.short 0x80fd
    5f08:	01fe           	.short 0x01fe
    5f0a:	01ff           	.short 0x01ff
    5f0c:	03fd           	.short 0x03fd
    5f0e:	07fc           	.short 0x07fc
    5f10:	0fe7           	bset %d7,%sp@-
    5f12:	1fff           	.short 0x1fff
    5f14:	3ffe           	.short 0x3ffe
    5f16:	7ffc 0ad0      	mvzw #2768,%d7
    5f1a:	2ae0           	movel %a0@-,%a5@+
    5f1c:	ffc0           	.short 0xffc0
    5f1e:	5de8 ffd0      	slt %a0@(-48)
    5f22:	bada           	cmpaw %a2@+,%a5
    5f24:	93d8           	subal %a0@+,%a1
    5f26:	7dc8           	mvzw %a0,%d6
    5f28:	27e0           	.short 0x27e0
    5f2a:	faf3           	.short 0xfaf3
    5f2c:	67cf           	beqs 0x5efd
    5f2e:	fdcb           	.short 0xfdcb
    5f30:	e7cf           	.short 0xe7cf
    5f32:	fac1           	.short 0xfac1
    5f34:	cfc4           	mulsw %d4,%d7
    5f36:	f5d4           	.short 0xf5d4
    5f38:	0060 df70      	oriw #-8336,%a0@-
    5f3c:	0044 ff4c      	oriw #-180,%d4
    5f40:	185c           	.short 0x185c
    5f42:	ff5c 7c5e      	cp1stw %d7,%a4@+,#7,#94
    5f46:	ff4e f840      	cp1stw %sp,%fp,#5,#64
    5f4a:	ff43 f84d      	cp1stw %sp,%d3,#5,#77
    5f4e:	ff59 f857      	cp1stw %sp,%a1@+,#5,#87
    5f52:	ff59 f058      	cp1stw %sp,%a1@+,#1,#88
    5f56:	fedc           	.short 0xfedc
    5f58:	ff80 c018      	cp1stl %a4,%d0,#1,#24
    5f5c:	003c 083c      	orib #60,%ccr
    5f60:	183f           	.short 0x183f
    5f62:	3820           	movew %a0@-,%d4
    5f64:	003e           	.short 0x003e
    5f66:	7837           	moveq #55,%d4
    5f68:	003f           	.short 0x003f
    5f6a:	f83e           	.short 0xf83e
    5f6c:	003e           	.short 0x003e
    5f6e:	f836           	.short 0xf836
    5f70:	c039 f03e 8033 	andb 0xf03e8033,%d0
    5f76:	f03f           	.short 0xf03f
    5f78:	fa00           	.short 0xfa00
    5f7a:	b200           	cmpb %d0,%d1
    5f7c:	fe00 e600      	cp1ldb %d0,%fp,#4,#0
    5f80:	6e00 6e00      	bgtw 0xcd82
    5f84:	3e00           	movew %d0,%d7
    5f86:	be00           	cmpb %d0,%d7
    5f88:	1e00           	moveb %d0,%d7
    5f8a:	4c00           	.short 0x4c00
    5f8c:	a800 ac00      	macl %d0,%d4
    5f90:	ec00           	asrb #6,%d0
    5f92:	a600 7200      	macw %d0l,%d3l,<<
    5f96:	e200           	asrb #1,%d0
    5f98:	3c00           	movew %d0,%d6
    5f9a:	7400           	moveq #0,%d2
    5f9c:	f000           	.short 0xf000
    5f9e:	ea00           	asrb #5,%d0
    5fa0:	e200           	asrb #1,%d0
    5fa2:	f600 e600 7e00 	move16 %a0@+,0xe6007e00
    5fa8:	7e00           	moveq #0,%d7
    5faa:	bc00           	cmpb %d0,%d6
    5fac:	9800           	subb %d0,%d4
    5fae:	9c00           	subb %d0,%d6
    5fb0:	9c00           	subb %d0,%d6
    5fb2:	9e00           	subb %d0,%d7
    5fb4:	0e00           	.short 0x0e00
    5fb6:	1e00           	moveb %d0,%d7
    5fb8:	f600 ee00 ee00 	move16 %a0@+,0xee00ee00
    5fbe:	de00           	addb %d0,%d7
    5fc0:	de00           	addb %d0,%d7
    5fc2:	de00           	addb %d0,%d7
    5fc4:	fe00 fe00      	cp1ldb %d0,%sp,#8,#0
    5fc8:	fe00 fc00      	cp1ldb %d0,%sp,#7,#0
    5fcc:	f800           	.short 0xf800
    5fce:	fc00 fc00      	cp0ldb %d0,%sp,#7,#0
    5fd2:	fe00 fe00      	cp1ldb %d0,%sp,#8,#0
    5fd6:	fe00 a000      	cp1ldb %d0,%a2,#1,#0
    5fda:	8000           	orb %d0,%d0
    5fdc:	1400           	moveb %d0,%d2
    5fde:	d400           	addb %d0,%d2
    5fe0:	ac00 5800      	macl %d0,%d6
    5fe4:	7600           	moveq #0,%d3
    5fe6:	6e00 2e00      	bgtw 0x8de8
    5fea:	ae00 ac00      	macl %d0,%d7
    5fee:	aa00 8600      	macw %d0l,%d5l,>>
    5ff2:	9a00           	subb %d0,%d5
    5ff4:	6600 4a00      	bnew 0xa9f6
    5ff8:	9000           	subb %d0,%d0
    5ffa:	b000           	cmpb %d0,%d0
    5ffc:	3000           	movew %d0,%d0
    5ffe:	3000           	movew %d0,%d0
    6000:	6000 0400      	braw 0x6402
    6004:	0c00 1c00      	cmpib #0,%d0
    6008:	1c00           	moveb %d0,%d6
    600a:	9c00           	subb %d0,%d6
    600c:	9c00           	subb %d0,%d6
    600e:	9800           	subb %d0,%d4
    6010:	b000           	cmpb %d0,%d0
    6012:	a600 1c00      	macl %d0,%d3
    6016:	3c00           	movew %d0,%d6
    6018:	f000 7800      	pmove %d0,<mmu register 30>
    601c:	ec00           	asrb #6,%d0
    601e:	ec00           	asrb #6,%d0
    6020:	fc00 fc00      	cp0ldb %d0,%sp,#7,#0
    6024:	fe00 fe00      	cp1ldb %d0,%sp,#8,#0
    6028:	fa00           	.short 0xfa00
    602a:	7a00           	moveq #0,%d5
    602c:	7a00           	moveq #0,%d5
    602e:	7e00           	moveq #0,%d7
    6030:	7e00           	moveq #0,%d7
    6032:	7e00           	moveq #0,%d7
    6034:	fe00 fe00      	cp1ldb %d0,%sp,#8,#0
	...
    6044:	0000 8000      	orib #0,%d0
    6048:	0000 0000      	orib #0,%d0
    604c:	0000 c000      	orib #0,%d0
    6050:	8000           	orb %d0,%d0
    6052:	c000           	andb %d0,%d0
    6054:	c000           	andb %d0,%d0
    6056:	9000           	subb %d0,%d0
	...
    6070:	8000           	orb %d0,%d0
    6072:	8000           	orb %d0,%d0
    6074:	c000           	andb %d0,%d0
    6076:	a000 0000      	macw %d0l,%d0l
	...
    6082:	8000           	orb %d0,%d0
    6084:	8000           	orb %d0,%d0
    6086:	8000           	orb %d0,%d0
    6088:	0000 0000      	orib #0,%d0
    608c:	0000 c000      	orib #0,%d0
    6090:	c000           	andb %d0,%d0
    6092:	e000           	asrb #8,%d0
    6094:	e000           	asrb #8,%d0
    6096:	f000           	.short 0xf000
    6098:	fc74           	.short 0xfc74
    609a:	f95d           	.short 0xf95d
    609c:	fcff           	.short 0xfcff
    609e:	beff           	.short 0xbeff
    60a0:	bc3b cce6      	cmpb %pc@(0x6088,%a4:l:4),%d6
    60a4:	e01c           	rorb #8,%d4
    60a6:	fabd           	.short 0xfabd
    60a8:	8ff9 7eef fe4f 	divsw 0x7eeffe4f,%d7
    60ae:	73fc 693b      	mvzw #26939,%d1
    60b2:	ddd6           	addal %fp@,%fp
    60b4:	f97e           	.short 0xf97e
    60b6:	d3fb 73fb 46ff 	addal %zpc@(46ff83fa)@(ffffffffc1dd63fd),%a1
    60bc:	83fa c1dd 63fd 
    60c2:	b3fb dfe7 755a 	cmpal %zpc@(755a)@(ffffffffffeefbd2),%a1
    60c8:	ffee fbd2 
    60cc:	f3bc           	.short 0xf3bc
    60ce:	8dff           	.short 0x8dff
    60d0:	f6f4           	.short 0xf6f4
    60d2:	b339 f685 bc15 	eorb %d1,0xf685bc15
    60d8:	9030 c004      	subb %a0@(4,%a4:w),%d0
    60dc:	0003 8001      	orib #1,%d3
    60e0:	0001 8002      	orib #2,%d1
    60e4:	4004           	negxb %d4
    60e6:	b019           	cmpb %a1@+,%d0
    60e8:	0ff1 040d      	bset %d7,%a1@(d,%d0:w:4)
    60ec:	0c03 7200      	cmpib #0,%d3
    60f0:	0103           	btst %d0,%d3
    60f2:	0006 013a      	orib #58,%d6
    60f6:	03e2           	bset %d1,%a2@-
    60f8:	5fff           	sle %d7
    60fa:	1ffe           	.short 0x1ffe
    60fc:	09fd           	.short 0x09fd
    60fe:	0009           	.short 0x0009
    6100:	0010 0000      	orib #0,%a0@
	...
    6118:	11c6 1fac      	moveb %d6,0x1fac
    611c:	0fe8 0001      	bset %d7,%a0@(1)
    6120:	0010 0000      	orib #0,%a0@
	...
    6138:	7fff           	.short 0x7fff
    613a:	39ff           	.short 0x39ff
    613c:	007f           	.short 0x007f
    613e:	000d           	.short 0x000d
    6140:	0010 0000      	orib #0,%a0@
	...
    6158:	ffff           	.short 0xffff
    615a:	1e7f           	.short 0x1e7f
    615c:	e74e           	lslw #3,%d6
    615e:	f3ee           	.short 0xf3ee
    6160:	0d73 007a      	bchg %d6,%a3@(7a,%d0:w)
	...
    6178:	fdce           	.short 0xfdce
    617a:	17f8           	.short 0x17f8
    617c:	06fa c3de 013f 	callm #-34,%pc@(0x62bf)
    6182:	0056 0000      	oriw #0,%fp@
	...
    6196:	0000 fe7f      	orib #127,%d0
    619a:	fc0f fc07      	cp0ldb %sp,%sp,#7,#7
    619e:	fe03 0f41      	cp1ldb %d3,%d0,#8,#321
    61a2:	0061 0000      	oriw #0,%a1@-
	...
    61b6:	0000 bfbc      	orib #-68,%d0
    61ba:	7cfe           	moveq #-2,%d6
    61bc:	eed3           	.short 0xeed3
    61be:	d3fb 1b0f 1f8f 	addal %pc@(0x61c0)@(1f8f018a,%d1:l:2),%a1
    61c4:	018a 
	...
    61d6:	0000 8f87      	orib #-121,%d0
    61da:	5f9d           	subql #7,%a5@+
    61dc:	6d9f           	blts 0x617d
    61de:	dff7 160c      	addal %sp@(c,%d1:w:8),%sp
    61e2:	1e01           	moveb %d1,%d7
    61e4:	0182           	bclr %d0,%d2
	...
    61f6:	0000 fcf8      	orib #-8,%d0
    61fa:	f870           	.short 0xf870
    61fc:	f060           	.short 0xf060
    61fe:	e0e1           	asrw %a1@-
    6200:	e1f3 338f 019a 	aslw @(0)@(19a0000,%d3:w:2)
    6206:	0000 
	...
    6218:	9fdf           	subal %sp@+,%sp
    621a:	d3bc           	.short 0xd3bc
    621c:	fb79 df7f f64f 	wddataw 0xdf7ff64f
    6222:	b8eb 4f33      	cmpaw %a3@(20275),%a4
    6226:	00b3 001b 0000 	oril #1769472,%a3@(0,%d0:w)
    622c:	0000 
	...
    6236:	0000 ff18      	orib #24,%d0
    623a:	be30 f669      	cmpb %a0@(69,%sp:w:8),%d7
    623e:	9d3f           	.short 0x9d3f
    6240:	8678 38d9      	orw 0x38d9,%d3
    6244:	0ff1 0063      	bset %d7,%a1@(63,%d0:w)
    6248:	001a 0000      	orib #0,%a2@+
	...
    6258:	03ff           	.short 0x03ff
    625a:	01ff           	.short 0x01ff
    625c:	81ff           	.short 0x81ff
    625e:	f3cf           	.short 0xf3cf
    6260:	ff87 ff07      	cp1stl %sp,%d7,#8,#263
    6264:	c80b           	.short 0xc80b
    6266:	0013 001b      	orib #27,%a3@
	...
    6276:	0000 dfff      	orib #-1,%d0
    627a:	dffe           	.short 0xdffe
    627c:	f9fd           	.short 0xf9fd
    627e:	cd79 ef7f fd83 	andw %d6,0xef7ffd83
    6284:	9ef8 ddef      	subaw 0xffffddef,%sp
    6288:	f8de           	.short 0xf8de
    628a:	428f           	.short 0x428f
    628c:	0001 0000      	orib #0,%d1
	...
    6298:	91c6           	subal %d6,%a0
    629a:	9fac 7fe8      	subl %d7,%a4@(32744)
    629e:	7bd1           	mvzw %a1@,%d5
    62a0:	defe           	.short 0xdefe
    62a2:	f983           	.short 0xf983
    62a4:	fa00           	.short 0xfa00
    62a6:	bca9 f81f      	cmpl %a1@(-2017),%d6
    62aa:	420e           	.short 0x420e
    62ac:	0007 0000      	orib #0,%d7
	...
    62b8:	ffff           	.short 0xffff
    62ba:	f9ff           	.short 0xf9ff
    62bc:	c07f           	.short 0xc07f
    62be:	803f           	.short 0x803f
    62c0:	803f           	.short 0x803f
    62c2:	8e7f           	.short 0x8e7f
    62c4:	0fff           	.short 0x0fff
    62c6:	0ffe           	.short 0x0ffe
    62c8:	98dc           	subaw %a4@+,%a4
    62ca:	42c8           	.short 0x42c8
	...
    62d8:	ffff           	.short 0xffff
    62da:	1e7f           	.short 0x1e7f
    62dc:	e74e           	lslw #3,%d6
    62de:	f3ee           	.short 0xf3ee
    62e0:	fdf3           	.short 0xfdf3
    62e2:	fefa           	.short 0xfefa
    62e4:	feaf c9fa 6d76 	cp1ldl %sp@(28022),%a4,#5,#506
    62ea:	7f96           	mvzb %fp@,%d7
    62ec:	adde           	.short 0xadde
    62ee:	07fc           	.short 0x07fc
    62f0:	01a4           	bclr %d0,%a4@-
    62f2:	0034 0000 0000 	orib #0,%a4@(0,%d0:w)
    62f8:	fdce           	.short 0xfdce
    62fa:	17f8           	.short 0x17f8
    62fc:	06fa c3de 313f 	callm #-34,%pc@(0x943f)
    6302:	c0d6           	muluw %fp@,%d0
    6304:	3e8c           	movew %a4,%sp@
    6306:	ffd8           	.short 0xffd8
    6308:	dbf2 fef4      	addal %a2@(fffffffffffffff4,%sp:l:8),%a5
    630c:	8db0 04fc      	orl %d6,%a0@(fffffffffffffffc,%d0:w:4)
    6310:	01bc           	.short 0x01bc
    6312:	002c 0000 0000 	orib #0,%a4@(0)
    6318:	fe7f           	.short 0xfe7f
    631a:	fc0f fc07      	cp0ldb %sp,%sp,#7,#7
    631e:	fe03 ffc1      	cp1ldb %d3,%sp,#8,#449
    6322:	ffe1           	.short 0xffe1
    6324:	c9f3 007e      	mulsw %a3@(7e,%d0:w),%d4
    6328:	001e 080e      	orib #14,%fp@+
    632c:	7e0e           	moveq #14,%d7
    632e:	0784           	bclr %d3,%d4
    6330:	0180           	bclr %d0,%d0
	...
    634e:	0000 000f      	orib #15,%d0
    6352:	0013 079c      	orib #-100,%a3@
    6356:	377f           	.short 0x377f
	...
    636c:	0000 0007      	orib #7,%d0
    6370:	0001 003c      	orib #60,%d1
    6374:	067f           	.short 0x067f
    6376:	38ff           	.short 0x38ff
	...
    638c:	0000 0002      	orib #2,%d0
    6390:	0000 0000      	orib #0,%d0
    6394:	0608           	.short 0x0608
    6396:	003e           	.short 0x003e
	...
    63a8:	0000 00e7      	orib #-25,%d0
    63ac:	1b83 07f6 ddbf 	moveb %d3,@(ffffffffddbf2ec7)@(ffffffffffffef7f)
    63b2:	2ec7 ef7f 
    63b6:	77bd           	.short 0x77bd
	...
    63c8:	0001 01e0      	orib #-32,%d1
    63cc:	47e7           	.short 0x47e7
    63ce:	fde2           	.short 0xfde2
    63d0:	3e26           	movew %fp@-,%d7
    63d2:	ef1b           	rolb #7,%d3
    63d4:	7791           	mvzb %a1@,%d3
    63d6:	bfcb           	cmpal %a3,%sp
	...
    63e8:	0002 0033      	orib #51,%d2
    63ec:	00f9           	.short 0x00f9
    63ee:	e1ff           	.short 0xe1ff
    63f0:	00ef           	.short 0x00ef
    63f2:	1c2f 760d      	moveb %sp@(30221),%d6
    63f6:	330c           	movew %a4,%a1@-
	...
    6404:	0000 0401      	orib #1,%d0
    6408:	de00           	addb %d0,%d7
    640a:	fb35 c5d8      	wddatab @(0)
    640e:	2e64           	moveal %a4@-,%sp
    6410:	7ffb fb94      	mvzw %zpc@(0)@(0,%sp:l:2),%d7
    6414:	4bab bf65      	chkw %a3@(-16539),%d5
	...
    6424:	0000 0201      	orib #1,%d0
    6428:	d048           	addw %a0,%d0
    642a:	8404           	orb %d4,%d2
    642c:	3e21           	movew %a1@-,%d7
    642e:	efb8           	roll %d7,%d0
    6430:	6b9c           	bmis 0x63ce
    6432:	676f           	beqs 0x64a3
    6434:	be77 fcfb      	cmpw %sp@(fffffffffffffffb,%sp:l:4),%d7
	...
    6444:	0000 0200      	orib #0,%d0
    6448:	4001           	negxb %d1
    644a:	80fa 006e      	divuw %pc@(0x64ba),%d0
    644e:	142f ba06      	moveb %sp@(-17914),%d2
    6452:	e902           	aslb #4,%d2
    6454:	a611           	.short 0xa611
    6456:	9c38 0000      	subb 0x0,%d6
    645a:	0000 0000      	orib #0,%d0
    645e:	0000 0001      	orib #1,%d0
    6462:	0036 0083 515e 	orib #-125,%fp@(0)@(2ea7)
    6468:	2ea7 
    646a:	df58           	addw %d7,%a0@+
    646c:	f82f           	.short 0xf82f
    646e:	b94b           	cmpmw %a3@+,%a4@+
    6470:	4ea6           	.short 0x4ea6
    6472:	bcd5           	cmpaw %a5@,%fp
    6474:	57ba           	.short 0x57ba
    6476:	a8fe           	.short 0xa8fe
	...
    6480:	0000 0431      	orib #49,%d0
    6484:	0007 0ec7      	orib #-57,%d7
    6488:	7f1e           	mvsb %fp@+,%d7
    648a:	3bb9 e5ed c84c 	movew 0xe5edc84c,@(ffffffffffffb713,%d7:l)@(0)
    6490:	79a1 b713 
    6494:	98e6           	subaw %fp@-,%a4
    6496:	ef44           	aslw #7,%d4
	...
    64a0:	0003 040b      	orib #11,%d3
    64a4:	0119           	btst %d0,%a1@+
    64a6:	bf3f           	.short 0xbf3f
    64a8:	9fde           	subal %fp@+,%sp
    64aa:	e3c8           	.short 0xe3c8
    64ac:	43e0           	.short 0x43e0
    64ae:	0ef0           	.short 0x0ef0
    64b0:	8e78 47b8      	orw 0x47b8,%d7
    64b4:	a090 9063      	macw %d3u,%a1l,%a0@&,%d0
    64b8:	0000 0000      	orib #0,%d0
    64bc:	0007 007f      	orib #127,%d7
    64c0:	006b f8d9 79bd 	oriw #-1831,%a3@(31165)
    64c6:	6c76           	bges 0x653e
    64c8:	9785           	subxl %d5,%d3
    64ca:	4bfe           	.short 0x4bfe
    64cc:	45cb           	.short 0x45cb
    64ce:	b2f8 cfdf      	cmpaw 0xffffcfdf,%a1
    64d2:	77a6           	mvzb %fp@-,%d3
    64d4:	9f79 eefe 0000 	subw %d7,0xeefe0000
    64da:	0000 000f      	orib #15,%d0
    64de:	007f           	.short 0x007f
    64e0:	e018           	rorb #8,%d0
    64e2:	f83b           	.short 0xf83b
    64e4:	6071           	bras 0x6557
    64e6:	71fc 198e      	mvzw #6542,%d0
    64ea:	cc8f           	.short 0xcc8f
    64ec:	8679 c33a 7b22 	orw 0xc33a7b22,%d3
    64f2:	9e79 ecfe f1ff 	subw 0xecfef1ff,%d7
    64f8:	0000 0000      	orib #0,%d0
    64fc:	0000 0007      	orib #7,%d0
    6500:	e00d           	lsrb #8,%d5
    6502:	080c           	.short 0x080c
    6504:	8017           	orb %sp@,%d0
    6506:	8033 407f      	orb %a3@(7f,%d4:w),%d0
    650a:	20df           	movel %sp@+,%a0@+
    650c:	f059           	.short 0xf059
    650e:	ec18           	rorb #6,%d0
    6510:	6600 1e00      	bnew 0x8312
    6514:	0c10 807c      	cmpib #124,%a0@
    6518:	0008           	.short 0x0008
    651a:	1e07           	moveb %d7,%d7
    651c:	e238           	rorb %d1,%d0
    651e:	fd97 4eda      	cp0stl %d4,%sp@,#8,#218
    6522:	6b3d           	bmis 0x6561
    6524:	90c2           	subaw %d2,%a0
    6526:	413f           	.short 0x413f
    6528:	bef1 49cf 3707 	cmpaw @(0)@(3707cfec),%sp
    652e:	cfec 
    6530:	bb7e           	.short 0xbb7e
    6532:	5d8f           	subql #6,%sp
    6534:	defe           	.short 0xdefe
    6536:	ef7b           	rolw %d7,%d3
    6538:	0000 600c      	orib #12,%d0
    653c:	fc07 5e3a      	cp0ldb %d7,%d5,#8,#58
    6540:	df3d           	.short 0xdf3d
    6542:	8bc7           	divsw %d7,%d5
    6544:	f0fe           	.short 0xf0fe
    6546:	60fc           	bras 0x6544
    6548:	21f3 d7c1 cfce 	movel @(0)@(0),0xffffcfce
    654e:	bbc5           	cmpal %d5,%a5
    6550:	7c4c           	moveq #76,%d6
    6552:	de36 ef23 7f97 	addb %fp@(7f97,%fp:l:8)@(70233),%d7
    6558:	0007 0233 
    655c:	005f 604a      	oriw #24650,%sp@+
    6560:	3838 d800      	movew 0xffffd800,%d4
    6564:	c001           	andb %d1,%d0
    6566:	7c01           	moveq #1,%d6
    6568:	7804           	moveq #4,%d4
    656a:	1067           	.short 0x1067
    656c:	c1f2 83fe 01df 	mulsw @(1df385f)@(ffffffffffffec1b),%d0
    6572:	385f ec1b 
    6576:	6619           	bnes 0x6591
    6578:	00ef           	.short 0x00ef
    657a:	00ca           	.short 0x00ca
    657c:	0146           	bchg %d0,%d6
    657e:	0005 0025      	orib #37,%d5
    6582:	02c9           	.short 0x02c9
    6584:	02d0           	.short 0x02d0
    6586:	0607 0393      	addib #-109,%d7
    658a:	0002 0068      	orib #104,%d2
    658e:	043d           	.short 0x043d
    6590:	052c 0232      	btst %d2,%a4@(562)
    6594:	0176 01bd 00ef 	bchg %d0,@(ef00da)@(0,%d0:w)
    659a:	00da 
    659c:	01d8           	bset %d0,%a0@+
    659e:	010c 010e      	movepw %a4@(270),%d0
    65a2:	0177 032f 04bf 	bchg %d0,%sp@(4bf)@(6f00ff,%d0:w:2)
    65a8:	006f 00ff 
    65ac:	00f7           	.short 0x00f7
    65ae:	0057 027b      	oriw #635,%sp@
    65b2:	016f 00cb      	bchg %d0,%sp@(203)
    65b6:	007a           	.short 0x007a
    65b8:	0797           	bclr %d3,%sp@
    65ba:	07af 0f27      	bclr %d3,%sp@(3879)
    65be:	0ef7           	.short 0x0ef7
    65c0:	0ef7           	.short 0x0ef7
    65c2:	0ea0           	.short 0x0ea0
    65c4:	0cef           	.short 0x0cef
    65c6:	0b6b 0faf      	bchg %d5,%a3@(4015)
    65ca:	0784           	bclr %d3,%d4
    65cc:	07e6           	bset %d3,%fp@-
    65ce:	03e3           	bset %d1,%a3@-
    65d0:	01d9           	bset %d0,%a1@+
    65d2:	04d9           	.short 0x04d9
    65d4:	0639 0601 ffff 	addib #1,0xfffffe78
    65da:	fe78 
    65dc:	72e7           	moveq #-25,%d1
    65de:	77cf           	mvzw %sp,%d3
    65e0:	cfbf           	.short 0xcfbf
    65e2:	5f7f           	.short 0x5f7f
    65e4:	f57f           	.short 0xf57f
    65e6:	5f93           	subql #7,%a3@
    65e8:	6eb6           	bgts 0x65a0
    65ea:	69fe           	bvss 0x65ea
    65ec:	7bb5 3fe0 2580 	mvzb @(2580),%d5
    65f2:	2c00           	movel %d0,%d6
    65f4:	0000 0000      	orib #0,%d0
    65f8:	73bf           	.short 0x73bf
    65fa:	1fe8           	.short 0x1fe8
    65fc:	5f60           	subqw #7,%a0@-
    65fe:	7bc3           	mvzw %d3,%d5
    6600:	fc8c 6b03      	cp0ldl %a4,%d6,#6,#259
    6604:	317c 1bff 4fdb 	movew #7167,%a0@(20443)
    660a:	2f7f           	.short 0x2f7f
    660c:	0db1 3f20 3d80 	bclr %d6,%a1@(3d80,%d3:l:8)
    6612:	3400           	movew %d0,%d2
    6614:	0000 0000      	orib #0,%d0
    6618:	fe7f           	.short 0xfe7f
    661a:	f03f           	.short 0xf03f
    661c:	e03f           	rorb %d0,%d7
    661e:	c07f           	.short 0xc07f
    6620:	83ff           	.short 0x83ff
    6622:	87ff           	.short 0x87ff
    6624:	cf93           	andl %d7,%a3@
    6626:	7e00           	moveq #0,%d7
    6628:	7800           	moveq #0,%d4
    662a:	7010           	moveq #16,%d0
    662c:	707e           	moveq #126,%d0
    662e:	21e0 0180      	movel %a0@-,0x180
    6632:	0000 0000      	orib #0,%d0
    6636:	0000 fffb      	orib #-5,%d0
    663a:	7ffb bf9f 9eb3 	mvzw %zpc@(0)@(ffffffff9eb3fef7,%a3:l:8),%d7
    6640:	fef7 
    6642:	c1bf           	.short 0xc1bf
    6644:	1f79 f7bb 7b1f 	moveb 0xf7bb7b1f,%sp@(-3774)
    664a:	f142 
    664c:	8000           	orb %d0,%d0
	...
    6656:	0000 6389      	orib #-119,%d0
    665a:	35f9           	.short 0x35f9
    665c:	17fe           	.short 0x17fe
    665e:	8bde           	divsw %fp@+,%d5
    6660:	7f7b c19f 005f 	mvsw %zpc@(0)@(5f953d,%a4:w),%d7
    6666:	953d 
    6668:	f81f           	.short 0xf81f
    666a:	7042           	moveq #66,%d0
    666c:	e000           	asrb #8,%d0
	...
    6676:	0000 ffff      	orib #-1,%d0
    667a:	ff9f fe03      	cp1stl %sp,%sp@+,#8,#3
    667e:	fc01 fc01      	cp0ldb %d1,%sp,#7,#1
    6682:	fe71           	.short 0xfe71
    6684:	fff0           	.short 0xfff0
    6686:	7ff0 3b19      	mvzw %a0@(0,%d3:l:2)@(0),%d7
    668a:	1342 0000      	moveb %d2,%a1@(0)
	...
    6696:	0000 fbf9      	orib #-7,%d0
    669a:	3dcb           	.short 0x3dcb
    669c:	9edf           	subaw %sp@+,%sp
    669e:	fefb           	.short 0xfefb
    66a0:	f26f           	.short 0xf26f
    66a2:	d71d           	addb %d3,%a5@+
    66a4:	ccf2 cd00      	muluw %a2@(0,%a4:l:4),%d6
    66a8:	d800           	addb %d0,%d4
	...
    66b6:	0000 18ff      	orib #-1,%d0
    66ba:	0c7d 966f      	cmpiw #-27025,%d5
    66be:	fcb9           	.short 0xfcb9
    66c0:	1e61           	.short 0x1e61
    66c2:	9b1c           	subb %d5,%a4@+
    66c4:	8ff0 c600      	divsw %a0@(0,%a4:w:8),%d7
    66c8:	5800           	addqb #4,%d0
	...
    66d6:	0000 ffc0      	orib #-64,%d0
    66da:	ff80 ff81      	cp1stl %sp,%d0,#8,#385
    66de:	f3cf           	.short 0xf3cf
    66e0:	e1ff           	.short 0xe1ff
    66e2:	e0ff           	.short 0xe0ff
    66e4:	d013           	addb %a3@,%d0
    66e6:	c800           	andb %d0,%d4
    66e8:	d800           	addb %d0,%d4
	...
    66f6:	0000 3dfd      	orib #-3,%d0
    66fa:	7f3e           	.short 0x7f3e
    66fc:	cb77 dfcb f0d8 	andw %d5,@(0)@(fffffffff0d8f1f8)
    6702:	f1f8 
    6704:	5180           	subql #8,%d0
	...
    6716:	0000 e1f1      	orib #-15,%d0
    671a:	b9fa f9b6      	cmpal %pc@(0x60d2),%a4
    671e:	effb           	.short 0xeffb
    6720:	3068 8078      	moveaw %a0@(-32648),%a0
    6724:	4180           	chkw %d0,%d0
	...
    6736:	0000 1f3f      	orib #63,%d0
    673a:	0e1f           	.short 0x0e1f
    673c:	060f           	.short 0x060f
    673e:	8707           	sbcd %d7,%d3
    6740:	cf87           	.short 0xcf87
    6742:	f1cc           	.short 0xf1cc
    6744:	5980           	subql #4,%d0
	...
    6756:	0000 ffff      	orib #-1,%d0
    675a:	fe78           	.short 0xfe78
    675c:	72e7           	moveq #-25,%d1
    675e:	77cf           	mvzw %sp,%d3
    6760:	ceb0 5e00      	andl %a0@(0,%d5:l:8),%d7
	...
    6778:	73bf           	.short 0x73bf
    677a:	1fe8           	.short 0x1fe8
    677c:	5f60           	subqw #7,%a0@-
    677e:	7bc3           	mvzw %d3,%d5
    6780:	fc80 6a00      	cp0ldl %d0,%d6,#6,#0
	...
    6798:	fe7f           	.short 0xfe7f
    679a:	f03f           	.short 0xf03f
    679c:	e03f           	rorb %d0,%d7
    679e:	c07f           	.short 0xc07f
    67a0:	82f0 8600      	divuw %a0@(0,%a0:w:8),%d1
	...
    67b8:	fffa           	.short 0xfffa
    67ba:	7ff8 bf90      	mvzw 0xffffbf90,%d7
    67be:	9000           	subb %d0,%d0
    67c0:	0800 0000      	btst #0,%d0
	...
    67d8:	6388           	blss 0x6762
    67da:	35f8           	.short 0x35f8
    67dc:	17f0           	.short 0x17f0
    67de:	8000           	orb %d0,%d0
    67e0:	0800 0000      	btst #0,%d0
	...
    67f8:	fffe           	.short 0xfffe
    67fa:	ff9c fe00      	cp1stl %sp,%a4@+,#8,#0
    67fe:	b000           	cmpb %d0,%d0
    6800:	0800 0000      	btst #0,%d0
	...
    6818:	1000           	moveb %d0,%d0
    681a:	e078           	rorw %d0,%d0
    681c:	1c47           	.short 0x1c47
    681e:	e9bf           	roll %d4,%d7
    6820:	5b72 bcd6      	subqw #5,%a2@(ffffffffffffffd6,%a3:l:4)
    6824:	4309           	.short 0x4309
    6826:	fc82 8f7d      	cp0ldl %d2,%a0,#8,#381
    682a:	f392           	.short 0xf392
    682c:	e0ec 37f3      	asrw %a4@(14323)
    6830:	7edd           	moveq #-35,%d7
    6832:	f1ba           	.short 0xf1ba
    6834:	7f7b def7      	mvsw %pc@(0x682d,%a5:l:8),%d7
    6838:	0000 3006      	orib #6,%d0
    683c:	e03f           	rorb %d0,%d7
    683e:	5c7a           	.short 0x5c7a
    6840:	bcfb e3d1      	cmpaw %zpc@(0)@(0),%fp
    6844:	7f0f           	mvsb %sp,%d7
    6846:	3f06           	movew %d6,%sp@-
    6848:	cf84           	.short 0xcf84
    684a:	83eb 73f3      	divsw %a3@(29683),%d1
    684e:	a3dd           	.short 0xa3dd
    6850:	323e           	.short 0x323e
    6852:	6c7b           	bges 0x68cf
    6854:	c4f7 e9fe e000 	muluw @(ffffffffe000cc40)@(fffffffffffffa00),%d2
    685a:	cc40 fa00 
    685e:	5206           	addqb #1,%d6
    6860:	1c1c           	moveb %a4@+,%d6
    6862:	001b 8003      	orib #3,%a3@+
    6866:	803e           	.short 0x803e
    6868:	201e           	movel %fp@+,%d0
    686a:	e608           	lsrb #3,%d0
    686c:	4f83           	chkw %d3,%d7
    686e:	7fc1           	mvzw %d1,%d7
    6870:	fb80           	.short 0xfb80
    6872:	fa1c           	.short 0xfa1c
    6874:	d837 9866      	addb %sp@(66,%a1:l),%d4
    6878:	0000 0000      	orib #0,%d0
    687c:	e000           	asrb #8,%d0
    687e:	fe00 d600      	cp1ldb %d0,%a5,#4,#0
    6882:	9b1f           	subb %d5,%sp@+
    6884:	bd9e           	eorl %d6,%fp@+
    6886:	6e36           	bgts 0x68be
    6888:	a1e9           	.short 0xa1e9
    688a:	7fd2           	mvzw %a2@,%d7
    688c:	d3a2           	addl %d1,%a2@-
    688e:	1f4d           	.short 0x1f4d
    6890:	fbf3           	.short 0xfbf3
    6892:	65ee           	bcss 0x6882
    6894:	9ef9 7f77 0000 	subaw 0x7f770000,%sp
    689a:	0000 f000      	orib #0,%d0
    689e:	fe00 1807      	cp1ldb %d0,%d1,#5,#7
    68a2:	dc1f           	addb %sp@+,%d6
    68a4:	8e06           	orb %d6,%d7
    68a6:	3f8e 7198      	movew %fp,@(0,%d7:w)
    68aa:	f133 9e61      	psave %a3@(61,%a1:l:8)
    68ae:	5cc3           	sge %d3
    68b0:	44de           	movew %fp@+,%ccr
    68b2:	9e79 7f37 ff8f 	subw 0x7f37ff8f,%d7
    68b8:	0000 0000      	orib #0,%d0
    68bc:	0000 e000      	orib #0,%d0
    68c0:	b007           	cmpb %d7,%d0
    68c2:	3010           	movew %a0@,%d0
    68c4:	e801           	asrb #4,%d1
    68c6:	cc01           	andb %d1,%d6
    68c8:	fe02 fb04      	cp1ldb %d2,%sp,#6,#260
    68cc:	9a0f           	.short 0x9a0f
    68ce:	1837 0066      	moveb %sp@(66,%d0:w),%d4
    68d2:	0078 0830 3e01 	oriw #2096,0x3e01
	...
    68e0:	8000           	orb %d0,%d0
    68e2:	6c00 c100      	bgew 0x29e4
    68e6:	7a8a           	moveq #-118,%d5
    68e8:	e574           	roxlw %d2,%d4
    68ea:	1afb f41f      	moveb %pc@(0x690b,%sp:w:4),%a5@+
    68ee:	d29d           	addl %a5@+,%d1
    68f0:	6572           	bcss 0x6964
    68f2:	ab3d           	.short 0xab3d
    68f4:	5dea 7f15      	slt %a2@(32533)
	...
    6900:	0000 8c20      	orib #32,%d0
    6904:	e000           	asrb #8,%d0
    6906:	e370           	roxlw %d1,%d0
    6908:	78fe           	moveq #-2,%d4
    690a:	9ddc           	subal %a4@+,%fp
    690c:	b7a7           	eorl %d3,%sp@-
    690e:	3213           	movew %a3@,%d1
    6910:	859e           	orl %d2,%fp@+
    6912:	c8ed 6719      	muluw %a5@(26393),%d4
    6916:	22f7 0000      	movel %sp@(0,%d0:w),%a1@+
    691a:	0000 0000      	orib #0,%d0
    691e:	0000 c000      	orib #0,%d0
    6922:	d020           	addb %a0@-,%d0
    6924:	9880           	subl %d0,%d4
    6926:	fcfd           	.short 0xfcfd
    6928:	7bf9 13c7 07c2 	mvzw 0x13c707c2,%d5
    692e:	0f70 1e71      	bchg %d7,%a0@(71,%d1:l:8)
    6932:	1de2           	.short 0x1de2
    6934:	0905           	btst %d4,%d5
    6936:	c609           	.short 0xc609
	...
    6944:	0000 8020      	orib #32,%d0
    6948:	007b           	.short 0x007b
    694a:	acdf 1ba3      	msacl %d3,%d1,<<,%sp@+&,%fp
    694e:	2674 dffe 29df 	moveal @(29dfd5d2)@(ffffffffffffa6fd),%a3
    6954:	d5d2 a6fd 
	...
    6964:	0000 8040      	orib #64,%d0
    6968:	120b           	.short 0x120b
    696a:	2021           	movel %a1@-,%d0
    696c:	847c 1df7      	orw #7671,%d2
    6970:	39d6           	.short 0x39d6
    6972:	f6e6           	.short 0xf6e6
    6974:	ee7d           	rorw %d7,%d5
    6976:	df3f           	.short 0xdf3f
	...
    6984:	0000 0040      	orib #64,%d0
    6988:	8002           	orb %d2,%d0
    698a:	5f01           	subqb #7,%d1
    698c:	7600           	moveq #0,%d3
    698e:	f428           	cpushl nc,%a0@
    6990:	605d           	bras 0x69ef
    6992:	4097           	negxl %sp@
    6994:	8865           	orw %a5@-,%d4
    6996:	1c39 0000 0000 	moveb 0x0,%d6
	...
    69a8:	0000 e700      	orib #0,%d0
    69ac:	c1d8           	mulsw %a0@+,%d0
    69ae:	6fe0           	bles 0x6990
    69b0:	fdbb           	.short 0xfdbb
    69b2:	e374           	roxlw %d1,%d4
    69b4:	fef7           	.short 0xfef7
    69b6:	bdee 0000      	cmpal %fp@(0),%fp
	...
    69c6:	0000 8000      	orib #0,%d0
    69ca:	0780           	bclr %d3,%d0
    69cc:	e7e2           	rolw %a2@-
    69ce:	47bf           	.short 0x47bf
    69d0:	647c           	bccs 0x6a4e
    69d2:	d8f7 89ee d3fd 	addaw @(ffffffffffffd3fd)@(0),%a4
    69d8:	0000 
	...
    69e6:	0000 4000      	orib #0,%d0
    69ea:	cc00           	andb %d0,%d6
    69ec:	9f00           	subxb %d0,%d7
    69ee:	ff87 f700      	cp1stl %sp,%d7,#4,#256
    69f2:	f438           	cpusha nc
    69f4:	b06e 30cc      	cmpw %fp@(12492),%d0
	...
    6a10:	f000           	.short 0xf000
    6a12:	c800           	andb %d0,%d4
    6a14:	39e0           	.short 0x39e0
    6a16:	feec           	.short 0xfeec
	...
    6a2c:	0000 e000      	orib #0,%d0
    6a30:	8000           	orb %d0,%d0
    6a32:	3c00           	movew %d0,%d6
    6a34:	fe60 ff1c      	cp1ldw %a0@-,%sp,#8,#284
	...
    6a4c:	0000 4000      	orib #0,%d0
    6a50:	0000 0000      	orib #0,%d0
    6a54:	1060           	.short 0x1060
    6a56:	7c00           	moveq #0,%d6
	...
    6b98:	e600           	asrb #3,%d0
	...
    6ba2:	00ec           	.short 0x00ec
    6ba4:	e700           	aslb #3,%d0
	...
    6bae:	00ed e800 0000 	chk2b %a5@(0),%fp
    6bb4:	0000 0000      	orib #0,%d0
    6bb8:	0000 00ee      	orib #-18,%d0
    6bbc:	e900           	aslb #4,%d0
	...
    6bc6:	00ef           	.short 0x00ef
    6bc8:	ea00           	asrb #5,%d0
	...
    6bd2:	00f0           	.short 0x00f0
    6bd4:	eb00           	aslb #5,%d0
	...
    6bde:	00f1           	.short 0x00f1
    6be0:	0100           	btst %d0,%d0
	...
    6bea:	0039 0700 0000 	orib #0,0x0
    6bf0:	0000 
    6bf2:	0000 0000      	orib #0,%d0
    6bf6:	003a           	.short 0x003a
    6bf8:	0d00           	btst %d6,%d0
	...
    6c02:	003b           	.short 0x003b
    6c04:	1300           	moveb %d0,%a1@-
	...
    6c0e:	003c 0100      	orib #0,%ccr
	...
    6c1a:	0039 0700 0000 	orib #0,0x0
    6c20:	0000 
    6c22:	0000 0000      	orib #0,%d0
    6c26:	003a           	.short 0x003a
    6c28:	0d00           	btst %d6,%d0
	...
    6c32:	003b           	.short 0x003b
    6c34:	1300           	moveb %d0,%a1@-
	...
    6c3e:	003c 0100      	orib #0,%ccr
	...
    6c4a:	0039 0700 0000 	orib #0,0x0
    6c50:	0000 
    6c52:	0000 0000      	orib #0,%d0
    6c56:	003a           	.short 0x003a
    6c58:	0d00           	btst %d6,%d0
	...
    6c62:	003b           	.short 0x003b
    6c64:	1300           	moveb %d0,%a1@-
	...
    6c6e:	003c 0100      	orib #0,%ccr
	...
    6c7a:	0039 0700 0000 	orib #0,0x0
    6c80:	0000 
    6c82:	0000 0000      	orib #0,%d0
    6c86:	003a           	.short 0x003a
    6c88:	0d00           	btst %d6,%d0
	...
    6c92:	003b           	.short 0x003b
    6c94:	1300           	moveb %d0,%a1@-
	...
    6c9e:	003c 0100      	orib #0,%ccr
	...
    6caa:	0039 0700 0000 	orib #0,0x0
    6cb0:	0000 
    6cb2:	0000 0000      	orib #0,%d0
    6cb6:	003a           	.short 0x003a
    6cb8:	0d00           	btst %d6,%d0
	...
    6cc2:	003b           	.short 0x003b
    6cc4:	1300           	moveb %d0,%a1@-
	...
    6cce:	003c 0100      	orib #0,%ccr
	...
    6cda:	0039 0700 0000 	orib #0,0x0
    6ce0:	0000 
    6ce2:	0000 0000      	orib #0,%d0
    6ce6:	003a           	.short 0x003a
    6ce8:	0d00           	btst %d6,%d0
	...
    6cf2:	003b           	.short 0x003b
    6cf4:	1300           	moveb %d0,%a1@-
	...
    6cfe:	003c 0100      	orib #0,%ccr
	...
    6d0a:	0039 0700 0000 	orib #0,0x0
    6d10:	0000 
    6d12:	0000 0000      	orib #0,%d0
    6d16:	003a           	.short 0x003a
    6d18:	0d00           	btst %d6,%d0
	...
    6d22:	003b           	.short 0x003b
    6d24:	1300           	moveb %d0,%a1@-
	...
    6d2e:	003c 0100      	orib #0,%ccr
	...
    6d3a:	0039 0700 0000 	orib #0,0x0
    6d40:	0000 
    6d42:	0000 0000      	orib #0,%d0
    6d46:	003a           	.short 0x003a
    6d48:	0d00           	btst %d6,%d0
	...
    6d52:	003b           	.short 0x003b
    6d54:	1300           	moveb %d0,%a1@-
	...
    6d5e:	003c 0100      	orib #0,%ccr
	...
    6d6a:	2e3b 0700      	movel %pc@(0x6d6c,%d0:w:8),%d7
	...
    6d76:	0039 0d00 0000 	orib #0,0x0
    6d7c:	0000 
    6d7e:	0000 0000      	orib #0,%d0
    6d82:	003a           	.short 0x003a
    6d84:	1300           	moveb %d0,%a1@-
	...
    6d8e:	003b           	.short 0x003b
    6d90:	0100           	btst %d0,%d0
	...
    6d9a:	003c 0700      	orib #0,%ccr
    6d9e:	0000 002e      	orib #46,%d0
    6da2:	2d2c 2b2a      	movel %a4@(11050),%fp@-
    6da6:	293b 0d00      	movel %pc@(0x6da8,%d0:l:4),%a4@-
    6daa:	0000 0000      	orib #0,%d0
    6dae:	002e 2d2c 2b39 	orib #44,%fp@(11065)
    6db4:	1300           	moveb %d0,%a1@-
	...
    6dbe:	0039 0100 0000 	orib #0,0x0
    6dc4:	0000 
    6dc6:	0000 0000      	orib #0,%d0
    6dca:	003a           	.short 0x003a
    6dcc:	0700           	btst %d3,%d0
	...
    6dd6:	003b           	.short 0x003b
    6dd8:	0d00           	btst %d6,%d0
	...
    6de2:	003c 1300      	orib #0,%ccr
	...
    6dee:	0039 0100 0000 	orib #0,0x0
    6df4:	0000 
    6df6:	0000 0000      	orib #0,%d0
    6dfa:	003a           	.short 0x003a
    6dfc:	0700           	btst %d3,%d0
	...
    6e06:	003b           	.short 0x003b
    6e08:	0d00           	btst %d6,%d0
	...
    6e12:	003c 1300      	orib #0,%ccr
    6e16:	0000 0000      	orib #0,%d0
    6e1a:	0033 3200 003a 	orib #0,%a3@(3a,%d0:w)
    6e20:	0d24           	btst %d6,%a4@-
    6e22:	2500           	movel %d0,%a2@-
    6e24:	0000 0034      	orib #52,%d0
    6e28:	3130 2f39 1326 	movew %a0@(13262728,%d2:l:8)@(0),%a0@-
    6e2e:	2728 
    6e30:	0000 0000      	orib #0,%d0
    6e34:	3537 003b      	movew %sp@(3b,%d0:w),%a2@-
    6e38:	0d19           	btst %d6,%a1@+
    6e3a:	1a1b           	moveb %a3@+,%d5
    6e3c:	1c1d           	moveb %a5@+,%d6
    6e3e:	0000 3638      	orib #56,%d0
    6e42:	003c 1e1f      	orib #31,%ccr
    6e46:	2021           	movel %a1@-,%d0
    6e48:	2223           	movel %a3@-,%d1
    6e4a:	0000 0000      	orib #0,%d0
    6e4e:	0039 0100 0000 	orib #0,0x0
    6e54:	0000 
    6e56:	0000 0000      	orib #0,%d0
    6e5a:	003a           	.short 0x003a
    6e5c:	0700           	btst %d3,%d0
	...
    6e66:	003b           	.short 0x003b
    6e68:	0d00           	btst %d6,%d0
	...
    6e72:	003c 1300      	orib #0,%ccr
    6e76:	0000 0000      	orib #0,%d0
    6e7a:	0000 3332      	orib #50,%d0
    6e7e:	003a           	.short 0x003a
    6e80:	0100           	btst %d0,%d0
    6e82:	0000 0000      	orib #0,%d0
    6e86:	0000 3431      	orib #49,%d0
    6e8a:	3039 0700 0000 	movew 0x7000000,%d0
    6e90:	0000 0000      	orib #0,%d0
    6e94:	0035 373b 0d00 	orib #59,%a5@(0,%d0:l:4)
    6e9a:	0000 0000      	orib #0,%d0
    6e9e:	0000 0036      	orib #54,%d0
    6ea2:	383c 1300      	movew #4864,%d4
	...
    6eae:	0039 6768 696a 	orib #104,0x696a6b00
    6eb4:	6b00 
    6eb6:	0000 0000      	orib #0,%d0
    6eba:	003a           	.short 0x003a
    6ebc:	6c6d           	bges 0x6f2b
    6ebe:	6e6f           	bgts 0x6f2f
    6ec0:	7000           	moveq #0,%d0
    6ec2:	0000 0000      	orib #0,%d0
    6ec6:	003b           	.short 0x003b
    6ec8:	0100           	btst %d0,%d0
	...
    6ed2:	003c 0700      	orib #0,%ccr
    6ed6:	0000 0000      	orib #0,%d0
    6eda:	0000 00be      	orib #-66,%d0
    6ede:	bd39 0d00 0000 	eorb %d6,0xd000000
    6ee4:	0000 00bc      	orib #-68,%d0
    6ee8:	bbba           	.short 0xbbba
    6eea:	b93a           	.short 0xb93a
    6eec:	1300           	moveb %d0,%a1@-
    6eee:	0000 0000      	orib #0,%d0
    6ef2:	002e 2d2c 2b3b 	orib #44,%fp@(11067)
    6ef8:	0d24           	btst %d6,%a4@-
    6efa:	2500           	movel %d0,%a2@-
    6efc:	0000 0000      	orib #0,%d0
    6f00:	2e2d 2c39      	movel %a5@(11321),%d7
    6f04:	1326           	moveb %fp@-,%a1@-
    6f06:	2728 0000      	movel %a0@(0),%a3@-
    6f0a:	2e2d 2c2b      	movel %a5@(11307),%d7
    6f0e:	2a3b 0d24 2500 	movel %pc@(0x9410)@(0,%d0:l:4),%d5
    6f14:	0000 0000      	orib #0,%d0
    6f18:	3332 003a      	movew %a2@(3a,%d0:w),%a1@-
    6f1c:	1326           	moveb %fp@-,%a1@-
    6f1e:	2728 0000      	movel %a0@(0),%a3@-
    6f22:	0000 3431      	orib #49,%d0
    6f26:	3039 0100 0000 	movew 0x1000000,%d0
    6f2c:	0000 0000      	orib #0,%d0
    6f30:	0035 373b 0700 	orib #59,%a5@(0,%d0:w:8)
    6f36:	0000 0000      	orib #0,%d0
    6f3a:	0000 0036      	orib #54,%d0
    6f3e:	383c 0d00      	movew #3328,%d4
	...
    6f4a:	0039 1300 0000 	orib #0,0x0
    6f50:	0000 
    6f52:	0000 0000      	orib #0,%d0
    6f56:	003a           	.short 0x003a
    6f58:	0100           	btst %d0,%d0
	...
    6f62:	003b           	.short 0x003b
    6f64:	0700           	btst %d3,%d0
	...
    6f6e:	003c 0d00      	orib #0,%ccr
    6f72:	0000 0000      	orib #0,%d0
    6f76:	0000 00c0      	orib #-64,%d0
    6f7a:	bf3c           	.short 0xbf3c
    6f7c:	1300           	moveb %d0,%a1@-
    6f7e:	0000 0000      	orib #0,%d0
    6f82:	00ad acab aa3a 	oril #-1398035910,%a5@(3364)
    6f88:	0d24 
    6f8a:	2500           	movel %d0,%a2@-
    6f8c:	0000 0000      	orib #0,%d0
    6f90:	b0af ae3b      	cmpl %sp@(-20933),%d0
    6f94:	1326           	moveb %fp@-,%a1@-
    6f96:	2728 0000      	movel %a0@(0),%a3@-
    6f9a:	0000 00be      	orib #-66,%d0
    6f9e:	bd39 0d24 2500 	eorb %d6,0xd242500
    6fa4:	0000 0000      	orib #0,%d0
    6fa8:	0000 0039      	orib #57,%d0
    6fac:	1326           	moveb %fp@-,%a1@-
    6fae:	2728 0000      	movel %a0@(0),%a3@-
    6fb2:	0000 0000      	orib #0,%d0
    6fb6:	003a           	.short 0x003a
    6fb8:	0d19           	btst %d6,%a1@+
    6fba:	1a1b           	moveb %a3@+,%d5
    6fbc:	1c1d           	moveb %a5@+,%d6
    6fbe:	0000 0000      	orib #0,%d0
    6fc2:	003b           	.short 0x003b
    6fc4:	1e1f           	moveb %sp@+,%d7
    6fc6:	2021           	movel %a1@-,%d0
    6fc8:	2223           	movel %a3@-,%d1
    6fca:	0000 0000      	orib #0,%d0
    6fce:	003c 0100      	orib #0,%ccr
	...
    6fda:	0039 0700 0000 	orib #0,0x0
    6fe0:	0000 
    6fe2:	0000 0000      	orib #0,%d0
    6fe6:	003a           	.short 0x003a
    6fe8:	0d00           	btst %d6,%d0
	...
    6ff2:	003b           	.short 0x003b
    6ff4:	1300           	moveb %d0,%a1@-
	...
    6ffe:	003c 0100      	orib #0,%ccr
    7002:	0000 0000      	orib #0,%d0
    7006:	0000 dbda      	orib #-38,%d0
    700a:	d9c1           	addal %d1,%a4
    700c:	0700           	btst %d3,%d0
    700e:	0000 0000      	orib #0,%d0
    7012:	0000 dedd      	orib #-35,%d0
    7016:	dcc5           	addaw %d5,%fp
    7018:	0d00           	btst %d6,%d0
    701a:	0000 0000      	orib #0,%d0
    701e:	0000 e1e0      	orib #-32,%d0
    7022:	dfc9           	addal %a1,%sp
    7024:	1300           	moveb %d0,%a1@-
    7026:	0000 0000      	orib #0,%d0
    702a:	0000 e4e3      	orib #-29,%d0
    702e:	e2ce           	.short 0xe2ce
    7030:	0100           	btst %d0,%d0
	...
    703a:	0039 0700 0000 	orib #0,0x0
    7040:	0000 
    7042:	0000 0000      	orib #0,%d0
    7046:	003a           	.short 0x003a
    7048:	0d00           	btst %d6,%d0
	...
    7052:	003b           	.short 0x003b
    7054:	1300           	moveb %d0,%a1@-
	...
    705e:	003c 077a      	orib #122,%ccr
    7062:	7b00           	mvsb %d0,%d5
    7064:	0000 0000      	orib #0,%d0
    7068:	2e2d 2c39      	movel %a5@(11321),%d7
    706c:	0d7c           	.short 0x0d7c
    706e:	7d7e           	.short 0x7d7e
    7070:	7f00           	mvsb %d0,%d7
    7072:	0000 002e      	orib #46,%d0
    7076:	2d39 8081 8283 	movel 0x80818283,%fp@-
    707c:	8400           	orb %d0,%d2
    707e:	0000 0000      	orib #0,%d0
    7082:	0039 8586 8788 	orib #-122,0x87888900
    7088:	8900 
    708a:	0000 0000      	orib #0,%d0
    708e:	003a           	.short 0x003a
    7090:	078a 8b8c      	movepw %d3,%a2@(-29812)
    7094:	8d00           	sbcd %d0,%d6
    7096:	0000 0000      	orib #0,%d0
    709a:	003b           	.short 0x003b
    709c:	0d8e 8f00      	movepw %d6,%fp@(-28928)
    70a0:	0000 0000      	orib #0,%d0
    70a4:	0000 003c      	orib #60,%d0
    70a8:	0100           	btst %d0,%d0
	...
    70b2:	0039 0700 0000 	orib #0,0x0
    70b8:	0000 
    70ba:	0000 0000      	orib #0,%d0
    70be:	003a           	.short 0x003a
    70c0:	0d00           	btst %d6,%d0
	...
    70ca:	003b           	.short 0x003b
    70cc:	1300           	moveb %d0,%a1@-
	...
    70d6:	003c 0d24      	orib #36,%ccr
    70da:	2500           	movel %d0,%a2@-
    70dc:	0000 0000      	orib #0,%d0
    70e0:	0000 0039      	orib #57,%d0
    70e4:	1326           	moveb %fp@-,%a1@-
    70e6:	2728 0000      	movel %a0@(0),%a3@-
    70ea:	0000 0000      	orib #0,%d0
    70ee:	003a           	.short 0x003a
    70f0:	0d19           	btst %d6,%a1@+
    70f2:	1a1b           	moveb %a3@+,%d5
    70f4:	1c1d           	moveb %a5@+,%d6
    70f6:	0000 0000      	orib #0,%d0
    70fa:	003b           	.short 0x003b
    70fc:	1e1f           	moveb %sp@+,%d7
    70fe:	2021           	movel %a1@-,%d0
    7100:	2223           	movel %a3@-,%d1
    7102:	0000 0000      	orib #0,%d0
    7106:	003c 0d24      	orib #36,%ccr
    710a:	2500           	movel %d0,%a2@-
    710c:	0000 0033      	orib #51,%d0
    7110:	322e 2d3b      	movew %fp@(11579),%d1
    7114:	1326           	moveb %fp@-,%a1@-
    7116:	2728 0000      	movel %a0@(0),%a3@-
    711a:	0034 3130 2f39 	orib #48,%a4@(1000000,%d2:l:8)@(0)
    7120:	0100 0000 
    7124:	0000 0000      	orib #0,%d0
    7128:	3537 2e3b      	movew %sp@(3b,%d2:l:8),%a2@-
    712c:	0700           	btst %d3,%d0
    712e:	0000 0000      	orib #0,%d0
    7132:	0000 3638      	orib #56,%d0
    7136:	003c 0d00      	orib #0,%ccr
	...
    7142:	0039 1300 0000 	orib #0,0x0
    7148:	0000 
    714a:	0000 0000      	orib #0,%d0
    714e:	003a           	.short 0x003a
    7150:	0100           	btst %d0,%d0
	...
    715a:	003b           	.short 0x003b
    715c:	0700           	btst %d3,%d0
	...
    7166:	003c 0d00      	orib #0,%ccr
    716a:	0000 0000      	orib #0,%d0
    716e:	0000 c4c3      	orib #-61,%d0
    7172:	c2c1           	muluw %d1,%d1
    7174:	1300           	moveb %d0,%a1@-
    7176:	0000 0000      	orib #0,%d0
    717a:	00c8           	.short 0x00c8
    717c:	c7f2 c6c5      	mulsw %a2@(ffffffffffffffc5,%a4:w:8),%d3
    7180:	6768           	beqs 0x71ea
    7182:	696a           	bvss 0x71ee
    7184:	6b00 00cd      	bmiw 0x7253
    7188:	cccb           	.short 0xcccb
    718a:	cac9           	.short 0xcac9
    718c:	6c6d           	bges 0x71fb
    718e:	6e6f           	bgts 0x71ff
    7190:	7000           	moveq #0,%d0
    7192:	0000 00d0      	orib #-48,%d0
    7196:	cfce           	.short 0xcfce
    7198:	0100           	btst %d0,%d0
	...
    71a2:	d1c1           	addal %d1,%a0
    71a4:	0700           	btst %d3,%d0
    71a6:	0000 0000      	orib #0,%d0
    71aa:	0000 d4d3      	orib #-45,%d0
    71ae:	d2c5           	addaw %d5,%a1
    71b0:	0d00           	btst %d6,%d0
    71b2:	0000 0000      	orib #0,%d0
    71b6:	0000 d7d6      	orib #-42,%d0
    71ba:	d5c9           	addal %a1,%a2
    71bc:	1300           	moveb %d0,%a1@-
	...
    71c6:	d8ce           	addaw %fp,%a4
    71c8:	0100           	btst %d0,%d0
	...
    71d2:	0039 0700 0000 	orib #0,0x0
    71d8:	0000 
    71da:	0000 0000      	orib #0,%d0
    71de:	003a           	.short 0x003a
    71e0:	0d00           	btst %d6,%d0
	...
    71ea:	003b           	.short 0x003b
    71ec:	1300           	moveb %d0,%a1@-
	...
    71f6:	003c 0100      	orib #0,%ccr
	...
    7202:	2e3b 0700      	movel %pc@(0x7204,%d0:w:8),%d7
    7206:	0000 0000      	orib #0,%d0
    720a:	0000 002e      	orib #46,%d0
    720e:	2d3b 0d00      	movel %pc@(0x7210,%d0:l:4),%fp@-
    7212:	0000 0000      	orib #0,%d0
    7216:	002e 2d2c 2b3b 	orib #44,%fp@(11067)
    721c:	1300           	moveb %d0,%a1@-
	...
    7226:	0039 0d9c 9d9e 	orib #-100,0x9d9e0000
    722c:	0000 
    722e:	0000 0000      	orib #0,%d0
    7232:	003a           	.short 0x003a
    7234:	9fa0           	subl %d7,%a0@-
    7236:	a1a2           	.short 0xa1a2
    7238:	a300           	.short 0xa300
    723a:	0000 0000      	orib #0,%d0
    723e:	003b           	.short 0x003b
    7240:	a4a5 a6a7      	macw %d7l,%a2u,>>,%a5@-&,%d2
    7244:	a800 0000      	macw %d0l,%d4l
    7248:	0000 003c      	orib #60,%d0
    724c:	07a9 0000      	bclr %d3,%a1@(0)
    7250:	0000 0000      	orib #0,%d0
    7254:	0000 0039      	orib #57,%d0
    7258:	0d9c           	bclr %d6,%a4@+
    725a:	9d9e           	subl %d6,%fp@+
    725c:	0000 0000      	orib #0,%d0
    7260:	0000 003a      	orib #58,%d0
    7264:	9fa0           	subl %d7,%a0@-
    7266:	a1a2           	.short 0xa1a2
    7268:	a300           	.short 0xa300
    726a:	0000 0000      	orib #0,%d0
    726e:	003b           	.short 0x003b
    7270:	a4a5 a6a7      	macw %d7l,%a2u,>>,%a5@-&,%d2
    7274:	a800 0000      	macw %d0l,%d4l
    7278:	0000 003c      	orib #60,%d0
    727c:	07a9 0000      	bclr %d3,%a1@(0)
    7280:	0000 4f50      	orib #80,%d0
    7284:	5152           	subqw #8,%a2@
    7286:	5354           	subqw #1,%a4@
    7288:	0d9c           	bclr %d6,%a4@+
    728a:	9d9e           	subl %d6,%fp@+
    728c:	0000 5556      	orib #86,%d0
    7290:	5758           	subqw #3,%a0@+
    7292:	595a           	subqw #4,%a2@+
    7294:	9fa0           	subl %d7,%a0@-
    7296:	a1a2           	.short 0xa1a2
    7298:	a300           	.short 0xa300
    729a:	5b5c           	subqw #5,%a4@+
    729c:	5d5e           	subqw #6,%fp@+
    729e:	5f60           	subqw #7,%a0@-
    72a0:	a4a5 a6a7      	macw %d7l,%a2u,>>,%a5@-&,%d2
    72a4:	a800 6162      	msacw %d0u,%d4l
    72a8:	6364           	blss 0x730e
    72aa:	6566           	bcss 0x7312
    72ac:	07a9 0000      	bclr %d3,%a1@(0)
    72b0:	0000 0000      	orib #0,%d0
    72b4:	0000 2e3b      	orib #59,%d0
    72b8:	0100           	btst %d0,%d0
	...
    72c2:	0039 0700 0000 	orib #0,0x0
    72c8:	0000 
    72ca:	0000 0000      	orib #0,%d0
    72ce:	003a           	.short 0x003a
    72d0:	0d00           	btst %d6,%d0
	...
    72da:	003b           	.short 0x003b
    72dc:	1300           	moveb %d0,%a1@-
	...
    72e6:	003c 0100      	orib #0,%ccr
	...
    72f2:	0039 0700 0000 	orib #0,0x0
    72f8:	0000 
    72fa:	0000 0000      	orib #0,%d0
    72fe:	003a           	.short 0x003a
    7300:	0d00           	btst %d6,%d0
	...
    730a:	003b           	.short 0x003b
    730c:	1300           	moveb %d0,%a1@-
	...
    7316:	003c 6768      	orib #104,%ccr
    731a:	696a           	bvss 0x7386
    731c:	6b00 0000      	bmiw 0x731e
    7320:	3332 003a      	movew %a2@(3a,%d0:w),%a1@-
    7324:	6c6d           	bges 0x7393
    7326:	6e6f           	bgts 0x7397
    7328:	7000           	moveq #0,%d0
    732a:	0000 3431      	orib #49,%d0
    732e:	3039 0d0e 0f10 	movew 0xd0e0f10,%d0
    7334:	1112           	moveb %a2@,%a0@-
    7336:	0000 0035      	orib #53,%d0
    733a:	373b 1314      	movew %pc@(0x733c)@(0,%d1:w:2),%a3@-
    733e:	1516           	moveb %fp@,%a2@-
    7340:	1718           	moveb %a0@+,%a3@-
    7342:	0000 0036      	orib #54,%d0
    7346:	383c 0d24      	movew #3364,%d4
    734a:	2500           	movel %d0,%a2@-
    734c:	0000 0000      	orib #0,%d0
    7350:	0000 0039      	orib #57,%d0
    7354:	1326           	moveb %fp@-,%a1@-
    7356:	2728 0000      	movel %a0@(0),%a3@-
    735a:	0000 0000      	orib #0,%d0
    735e:	003a           	.short 0x003a
    7360:	6768           	beqs 0x73ca
    7362:	696a           	bvss 0x73ce
    7364:	6b00 0000      	bmiw 0x7366
    7368:	0000 003b      	orib #59,%d0
    736c:	6c6d           	bges 0x73db
    736e:	6e6f           	bgts 0x73df
    7370:	7000           	moveq #0,%d0
    7372:	0000 0000      	orib #0,%d0
    7376:	003c 0d24      	orib #36,%ccr
    737a:	2500           	movel %d0,%a2@-
    737c:	0000 0033      	orib #51,%d0
    7380:	322e 2d3b      	movew %fp@(11579),%d1
    7384:	1326           	moveb %fp@-,%a1@-
    7386:	2728 0000      	movel %a0@(0),%a3@-
    738a:	0034 3130 2f39 	orib #48,%a4@(6768696a,%d2:l:8)@(0)
    7390:	6768 696a 
    7394:	6b00 0000      	bmiw 0x7396
    7398:	3537 2e3b      	movew %sp@(3b,%d2:l:8),%a2@-
    739c:	6c6d           	bges 0x740b
    739e:	6e6f           	bgts 0x740f
    73a0:	7000           	moveq #0,%d0
    73a2:	0000 3638      	orib #56,%d0
    73a6:	003c 6768      	orib #104,%ccr
    73aa:	696a           	bvss 0x7416
    73ac:	6b00 0000      	bmiw 0x73ae
    73b0:	0000 0039      	orib #57,%d0
    73b4:	6c6d           	bges 0x7423
    73b6:	6e6f           	bgts 0x7427
    73b8:	7000           	moveq #0,%d0
    73ba:	0000 0000      	orib #0,%d0
    73be:	003a           	.short 0x003a
    73c0:	0d19           	btst %d6,%a1@+
    73c2:	1a1b           	moveb %a3@+,%d5
    73c4:	1c1d           	moveb %a5@+,%d6
    73c6:	0000 0000      	orib #0,%d0
    73ca:	003b           	.short 0x003b
    73cc:	1e1f           	moveb %sp@+,%d7
    73ce:	2021           	movel %a1@-,%d0
    73d0:	2223           	movel %a3@-,%d1
    73d2:	0000 0000      	orib #0,%d0
    73d6:	003c 0d0e      	orib #14,%ccr
    73da:	0f10           	btst %d7,%a0@
    73dc:	1112           	moveb %a2@,%a0@-
    73de:	003d           	.short 0x003d
    73e0:	3e3f           	.short 0x3e3f
    73e2:	4041           	negxw %d1
    73e4:	1314           	moveb %a4@,%a1@-
    73e6:	1516           	moveb %fp@,%a2@-
    73e8:	1718           	moveb %a0@+,%a3@-
    73ea:	0042 4344      	oriw #17220,%d2
    73ee:	4546           	.short 0x4546
    73f0:	6768           	beqs 0x745a
    73f2:	696a           	bvss 0x745e
    73f4:	6b00 0047      	bmiw 0x743d
    73f8:	4849           	bkpt 1
    73fa:	4a4b           	tstw %a3
    73fc:	6c6d           	bges 0x746b
    73fe:	6e6f           	bgts 0x746f
    7400:	7000           	moveq #0,%d0
    7402:	0000 004c      	orib #76,%d0
    7406:	4d4e           	.short 0x4d4e
    7408:	0100           	btst %d0,%d0
    740a:	0000 0000      	orib #0,%d0
    740e:	0000 002e      	orib #46,%d0
    7412:	2d3b 0700      	movel %pc@(0x7414,%d0:w:8),%fp@-
    7416:	0000 0000      	orib #0,%d0
    741a:	0000 2e2d      	orib #45,%d0
    741e:	2c39 0d00 0000 	movel 0xd000000,%d6
    7424:	0000 0000      	orib #0,%d0
    7428:	0000 2e3b      	orib #59,%d0
    742c:	1300           	moveb %d0,%a1@-
	...
    7436:	0039 0100 0000 	orib #0,0x0
    743c:	0000 
    743e:	0000 0000      	orib #0,%d0
    7442:	003a           	.short 0x003a
    7444:	0700           	btst %d3,%d0
	...
    744e:	003b           	.short 0x003b
    7450:	0d00           	btst %d6,%d0
	...
    745a:	003c 1300      	orib #0,%ccr
	...
    7466:	0039 0100 0000 	orib #0,0x0
    746c:	0000 
    746e:	0000 0000      	orib #0,%d0
    7472:	003a           	.short 0x003a
    7474:	0700           	btst %d3,%d0
	...
    747e:	003b           	.short 0x003b
    7480:	0d00           	btst %d6,%d0
	...
    748a:	003c 1300      	orib #0,%ccr
    748e:	0000 0000      	orib #0,%d0
    7492:	0000 c4c3      	orib #-61,%d0
    7496:	c2c1           	muluw %d1,%d1
    7498:	0d24           	btst %d6,%a4@-
    749a:	2500           	movel %d0,%a2@-
    749c:	0000 00c8      	orib #-56,%d0
    74a0:	c7f2 c6c5      	mulsw %a2@(ffffffffffffffc5,%a4:w:8),%d3
    74a4:	1326           	moveb %fp@-,%a1@-
    74a6:	2728 0000      	movel %a0@(0),%a3@-
    74aa:	00cd           	.short 0x00cd
    74ac:	cccb           	.short 0xcccb
    74ae:	cac9           	.short 0xcac9
    74b0:	0d0e 0f10      	movepw %fp@(3856),%d6
    74b4:	1112           	moveb %a2@,%a0@-
    74b6:	0000 00d0      	orib #-48,%d0
    74ba:	cfce           	.short 0xcfce
    74bc:	1314           	moveb %a4@,%a1@-
    74be:	1516           	moveb %fp@,%a2@-
    74c0:	1718           	moveb %a0@+,%a3@-
    74c2:	0000 0000      	orib #0,%d0
    74c6:	0039 0d24 2500 	orib #36,0x25000000
    74cc:	0000 
    74ce:	0000 0000      	orib #0,%d0
    74d2:	003a           	.short 0x003a
    74d4:	1326           	moveb %fp@-,%a1@-
    74d6:	2728 0000      	movel %a0@(0),%a3@-
    74da:	0000 0000      	orib #0,%d0
    74de:	003b           	.short 0x003b
    74e0:	0100           	btst %d0,%d0
	...
    74ea:	003c 0700      	orib #0,%ccr
    74ee:	0000 0000      	orib #0,%d0
    74f2:	0000 c4c3      	orib #-61,%d0
    74f6:	c2c1           	muluw %d1,%d1
    74f8:	0d00           	btst %d6,%d0
    74fa:	0000 0000      	orib #0,%d0
    74fe:	00c8           	.short 0x00c8
    7500:	c7f2 c6c5      	mulsw %a2@(ffffffffffffffc5,%a4:w:8),%d3
    7504:	1300           	moveb %d0,%a1@-
    7506:	0000 0000      	orib #0,%d0
    750a:	00cd           	.short 0x00cd
    750c:	cccb           	.short 0xcccb
    750e:	cac9           	.short 0xcac9
    7510:	0100           	btst %d0,%d0
    7512:	0000 0000      	orib #0,%d0
    7516:	0000 00d0      	orib #-48,%d0
    751a:	cfce           	.short 0xcfce
    751c:	0700           	btst %d3,%d0
    751e:	0000 0000      	orib #0,%d0
    7522:	0000 00be      	orib #-66,%d0
    7526:	bd39 0d00 0000 	eorb %d6,0xd000000
    752c:	0000 0000      	orib #0,%d0
    7530:	00c0           	bitrev %d0
    7532:	bf3c           	.short 0xbf3c
    7534:	1300           	moveb %d0,%a1@-
	...
    753e:	0039 0100 0000 	orib #0,0x0
    7544:	0000 
    7546:	0000 0000      	orib #0,%d0
    754a:	003a           	.short 0x003a
    754c:	0700           	btst %d3,%d0
	...
    7556:	003b           	.short 0x003b
    7558:	0d00           	btst %d6,%d0
	...
    7562:	003c 1300      	orib #0,%ccr
	...
    756e:	0039 0d0e 0f10 	orib #14,0xf101112
    7574:	1112 
    7576:	0000 0000      	orib #0,%d0
    757a:	003a           	.short 0x003a
    757c:	1314           	moveb %a4@,%a1@-
    757e:	1516           	moveb %fp@,%a2@-
    7580:	1718           	moveb %a0@+,%a3@-
    7582:	0000 0000      	orib #0,%d0
    7586:	003b           	.short 0x003b
    7588:	6768           	beqs 0x75f2
    758a:	696a           	bvss 0x75f6
    758c:	6b00 0000      	bmiw 0x758e
    7590:	0000 003c      	orib #60,%d0
    7594:	6c6d           	bges 0x7603
    7596:	6e6f           	bgts 0x7607
    7598:	7000           	moveq #0,%d0
    759a:	0000 dbda      	orib #-38,%d0
    759e:	d9c1           	addal %d1,%a4
    75a0:	6768           	beqs 0x760a
    75a2:	696a           	bvss 0x760e
    75a4:	6b00 0000      	bmiw 0x75a6
    75a8:	dedd           	addaw %a5@+,%sp
    75aa:	dcc5           	addaw %d5,%fp
    75ac:	6c6d           	bges 0x761b
    75ae:	6e6f           	bgts 0x761f
    75b0:	7000           	moveq #0,%d0
    75b2:	0000 e1e0      	orib #-32,%d0
    75b6:	dfc9           	addal %a1,%sp
    75b8:	077a           	.short 0x077a
    75ba:	7b00           	mvsb %d0,%d5
    75bc:	0000 0000      	orib #0,%d0
    75c0:	e4e3           	roxrw %a3@-
    75c2:	e2ce           	.short 0xe2ce
    75c4:	0d7c           	.short 0x0d7c
    75c6:	7d7e           	.short 0x7d7e
    75c8:	7f00           	mvsb %d0,%d7
    75ca:	0000 0000      	orib #0,%d0
    75ce:	0039 8081 8283 	orib #-127,0x82838400
    75d4:	8400 
    75d6:	0000 0000      	orib #0,%d0
    75da:	003a           	.short 0x003a
    75dc:	8586 8788      	unpk %d6,%d2,#-30840
    75e0:	8900           	sbcd %d0,%d4
    75e2:	0000 0000      	orib #0,%d0
    75e6:	003b           	.short 0x003b
    75e8:	078a 8b8c      	movepw %d3,%a2@(-29812)
    75ec:	8d00           	sbcd %d0,%d6
    75ee:	0000 0000      	orib #0,%d0
    75f2:	003c 0d8e      	orib #-114,%ccr
    75f6:	8f00           	sbcd %d0,%d7
    75f8:	0000 0000      	orib #0,%d0
    75fc:	0000 0039      	orib #57,%d0
    7600:	0100           	btst %d0,%d0
	...
    760a:	003a           	.short 0x003a
    760c:	0700           	btst %d3,%d0
	...
    7616:	003b           	.short 0x003b
    7618:	0d00           	btst %d6,%d0
	...
    7622:	003c 1300      	orib #0,%ccr
	...
    762e:	0039 0100 0000 	orib #0,0x0
    7634:	0000 
    7636:	0000 0000      	orib #0,%d0
    763a:	003a           	.short 0x003a
    763c:	0700           	btst %d3,%d0
	...
    7646:	003b           	.short 0x003b
    7648:	0d00           	btst %d6,%d0
	...
    7652:	003c 1300      	orib #0,%ccr
    7656:	0000 0000      	orib #0,%d0
    765a:	003d           	.short 0x003d
    765c:	3e3f           	.short 0x3e3f
    765e:	4041           	negxw %d1
    7660:	0d0e 0f10      	movepw %fp@(3856),%d6
    7664:	1112           	moveb %a2@,%a0@-
    7666:	0042 4344      	oriw #17220,%d2
    766a:	4546           	.short 0x4546
    766c:	1314           	moveb %a4@,%a1@-
    766e:	1516           	moveb %fp@,%a2@-
    7670:	1718           	moveb %a0@+,%a3@-
    7672:	0047 4849      	oriw #18505,%d7
    7676:	4a4b           	tstw %a3
    7678:	0100           	btst %d0,%d0
    767a:	0000 0000      	orib #0,%d0
    767e:	0000 004c      	orib #76,%d0
    7682:	4d4e           	.short 0x4d4e
    7684:	0700           	btst %d3,%d0
	...
    768e:	0039 0d00 0000 	orib #0,0x0
    7694:	0000 
    7696:	0000 0000      	orib #0,%d0
    769a:	003a           	.short 0x003a
    769c:	1300           	moveb %d0,%a1@-
	...
    76a6:	003b           	.short 0x003b
    76a8:	0100           	btst %d0,%d0
	...
    76b2:	003c 0700      	orib #0,%ccr
    76b6:	0000 002e      	orib #46,%d0
    76ba:	2d2c 2b2a      	movel %a4@(11050),%fp@-
    76be:	293b 0d00      	movel %pc@(0x76c0,%d0:l:4),%a4@-
    76c2:	0000 0000      	orib #0,%d0
    76c6:	0000 2e2d      	orib #45,%d0
    76ca:	2c39 1300 0000 	movel 0x13000000,%d6
    76d0:	0000 2e2d      	orib #45,%d0
    76d4:	2c2b 2a3b      	movel %a3@(10811),%d6
    76d8:	0100           	btst %d0,%d0
	...
    76e2:	0039 0700 0000 	orib #0,0x0
    76e8:	0000 
    76ea:	0000 0000      	orib #0,%d0
    76ee:	003a           	.short 0x003a
    76f0:	0d00           	btst %d6,%d0
	...
    76fa:	003b           	.short 0x003b
    76fc:	1300           	moveb %d0,%a1@-
	...
    7706:	003c 0100      	orib #0,%ccr
	...
    7712:	0039 0700 0000 	orib #0,0x0
    7718:	0000 
    771a:	0000 0000      	orib #0,%d0
    771e:	003a           	.short 0x003a
    7720:	0d00           	btst %d6,%d0
	...
    772a:	003b           	.short 0x003b
    772c:	1300           	moveb %d0,%a1@-
	...
    7736:	003c 0100      	orib #0,%ccr
    773a:	0000 002e      	orib #46,%d0
    773e:	2d2c 2b2a      	movel %a4@(11050),%fp@-
    7742:	2939 0700 0000 	movel 0x7000000,%a4@-
    7748:	0000 002e      	orib #46,%d0
    774c:	2d2c 2b3b      	movel %a4@(11067),%fp@-
    7750:	0d00           	btst %d6,%d0
    7752:	0000 0000      	orib #0,%d0
    7756:	003d           	.short 0x003d
    7758:	3e3f           	.short 0x3e3f
    775a:	4041           	negxw %d1
    775c:	1300           	moveb %d0,%a1@-
    775e:	0000 0000      	orib #0,%d0
    7762:	0042 4344      	oriw #17220,%d2
    7766:	4546           	.short 0x4546
    7768:	6768           	beqs 0x77d2
    776a:	696a           	bvss 0x77d6
    776c:	6b00 0047      	bmiw 0x77b5
    7770:	4849           	bkpt 1
    7772:	4a4b           	tstw %a3
    7774:	6c6d           	bges 0x77e3
    7776:	6e6f           	bgts 0x77e7
    7778:	7000           	moveq #0,%d0
    777a:	0000 004c      	orib #76,%d0
    777e:	4d4e           	.short 0x4d4e
    7780:	0d24           	btst %d6,%a4@-
    7782:	2500           	movel %d0,%a2@-
    7784:	0000 0000      	orib #0,%d0
    7788:	0000 0039      	orib #57,%d0
    778c:	1326           	moveb %fp@-,%a1@-
    778e:	2728 0000      	movel %a0@(0),%a3@-
    7792:	0000 0000      	orib #0,%d0
    7796:	003a           	.short 0x003a
    7798:	0100           	btst %d0,%d0
	...
    77a2:	003b           	.short 0x003b
    77a4:	0700           	btst %d3,%d0
	...
    77ae:	003c 0d00      	orib #0,%ccr
    77b2:	0000 0000      	orib #0,%d0
    77b6:	0033 3200 003a 	orib #0,%a3@(3a,%d0:w)
    77bc:	1300           	moveb %d0,%a1@-
    77be:	0000 0000      	orib #0,%d0
    77c2:	0034 3130 2f39 	orib #48,%a4@(1000000,%d2:l:8)@(0)
    77c8:	0100 0000 
    77cc:	0000 0000      	orib #0,%d0
    77d0:	3537 003b      	movew %sp@(3b,%d0:w),%a2@-
    77d4:	0700           	btst %d3,%d0
    77d6:	0000 0000      	orib #0,%d0
    77da:	0000 3638      	orib #56,%d0
    77de:	003c 0d00      	orib #0,%ccr
	...
    77ea:	0039 1300 0000 	orib #0,0x0
    77f0:	0000 
    77f2:	0000 0000      	orib #0,%d0
    77f6:	003a           	.short 0x003a
    77f8:	0d9c           	bclr %d6,%a4@+
    77fa:	9d9e           	subl %d6,%fp@+
    77fc:	0000 0000      	orib #0,%d0
    7800:	0000 003b      	orib #59,%d0
    7804:	9fa0           	subl %d7,%a0@-
    7806:	a1a2           	.short 0xa1a2
    7808:	a300           	.short 0xa300
    780a:	0000 0000      	orib #0,%d0
    780e:	003c a4a5      	orib #-91,%ccr
    7812:	a6a7 a800      	macl %d0,%a2,%sp@-,%d3
    7816:	0000 0000      	orib #0,%d0
    781a:	0039 07a9 0000 	orib #-87,0x0
    7820:	0000 
    7822:	0000 0000      	orib #0,%d0
    7826:	003a           	.short 0x003a
    7828:	0100           	btst %d0,%d0
	...
    7832:	003b           	.short 0x003b
    7834:	0700           	btst %d3,%d0
	...
    783e:	003c 0d00      	orib #0,%ccr
	...
    784a:	0039 1300 0000 	orib #0,0x0
    7850:	0000 
    7852:	0000 0000      	orib #0,%d0
    7856:	003a           	.short 0x003a
    7858:	0100           	btst %d0,%d0
	...
    7862:	003b           	.short 0x003b
    7864:	0700           	btst %d3,%d0
	...
    786e:	003c 0d00      	orib #0,%ccr
    7872:	0000 0000      	orib #0,%d0
    7876:	4f50           	.short 0x4f50
    7878:	5152           	subqw #8,%a2@
    787a:	5354           	subqw #1,%a4@
    787c:	1300           	moveb %d0,%a1@-
    787e:	0000 0000      	orib #0,%d0
    7882:	5556           	subqw #2,%fp@
    7884:	5758           	subqw #3,%a0@+
    7886:	595a           	subqw #4,%a2@+
    7888:	0d24           	btst %d6,%a4@-
    788a:	2500           	movel %d0,%a2@-
    788c:	0000 5b5c      	orib #92,%d0
    7890:	5d5e           	subqw #6,%fp@+
    7892:	5f60           	subqw #7,%a0@-
    7894:	1326           	moveb %fp@-,%a1@-
    7896:	2728 0000      	movel %a0@(0),%a3@-
    789a:	6162           	bsrs 0x78fe
    789c:	6364           	blss 0x7902
    789e:	6566           	bcss 0x7906
    78a0:	6768           	beqs 0x790a
    78a2:	696a           	bvss 0x790e
    78a4:	6b00 0000      	bmiw 0x78a6
    78a8:	0000 0039      	orib #57,%d0
    78ac:	6c6d           	bges 0x791b
    78ae:	6e6f           	bgts 0x791f
    78b0:	7000           	moveq #0,%d0
    78b2:	0000 0000      	orib #0,%d0
    78b6:	003a           	.short 0x003a
    78b8:	0d90           	bclr %d6,%a0@
	...
    78c2:	003b           	.short 0x003b
    78c4:	9192           	subl %d0,%a2@
    78c6:	9394           	subl %d1,%a4@
    78c8:	0000 0000      	orib #0,%d0
    78cc:	0000 003c      	orib #60,%d0
    78d0:	9596           	subl %d2,%fp@
    78d2:	9798           	subl %d3,%a0@+
    78d4:	0000 0033      	orib #51,%d0
    78d8:	322e 2d3b      	movew %fp@(11579),%d1
    78dc:	0799           	bclr %d3,%a1@+
    78de:	9a9b           	subl %a3@+,%d5
    78e0:	0000 0034      	orib #52,%d0
    78e4:	3130 2f39 0d19 	movew %a0@(d191a1b,%d2:l:8)@(0),%a0@-
    78ea:	1a1b 
    78ec:	1c1d           	moveb %a5@+,%d6
    78ee:	0000 3537      	orib #55,%d0
    78f2:	2e3b 1e1f      	movel %pc@(0x7913,%d1:l:8),%d7
    78f6:	2021           	movel %a1@-,%d0
    78f8:	2223           	movel %a3@-,%d1
    78fa:	0000 3638      	orib #56,%d0
    78fe:	003c 0100      	orib #0,%ccr
	...
    790a:	0039 0700 0000 	orib #0,0x0
    7910:	0000 
    7912:	0000 0000      	orib #0,%d0
    7916:	003a           	.short 0x003a
    7918:	0d00           	btst %d6,%d0
	...
    7922:	003b           	.short 0x003b
    7924:	1300           	moveb %d0,%a1@-
	...
    792e:	003c 0100      	orib #0,%ccr
	...
    793a:	0039 0700 0000 	orib #0,0x0
    7940:	0000 
    7942:	0000 0000      	orib #0,%d0
    7946:	003a           	.short 0x003a
    7948:	0d00           	btst %d6,%d0
	...
    7952:	003b           	.short 0x003b
    7954:	1300           	moveb %d0,%a1@-
	...
    795e:	003c 0d19      	orib #25,%ccr
    7962:	1a1b           	moveb %a3@+,%d5
    7964:	1c1d           	moveb %a5@+,%d6
    7966:	0000 0000      	orib #0,%d0
    796a:	2e3b 1e1f      	movel %pc@(0x798b,%d1:l:8),%d7
    796e:	2021           	movel %a1@-,%d0
    7970:	2223           	movel %a3@-,%d1
    7972:	0000 002e      	orib #46,%d0
    7976:	2d39 0100 0000 	movel 0x1000000,%fp@-
    797c:	0000 0000      	orib #0,%d0
    7980:	2e2d 2c3b      	movel %a5@(11323),%d7
    7984:	0700           	btst %d3,%d0
    7986:	0000 0000      	orib #0,%d0
    798a:	002e 2d2c 2b39 	orib #44,%fp@(11065)
    7990:	0d00           	btst %d6,%d0
    7992:	0000 0000      	orib #0,%d0
    7996:	2e2d 2c2b      	movel %a5@(11307),%d7
    799a:	2a3b 1300      	movel %pc@(0x799c,%d1:w:2),%d5
    799e:	0000 0000      	orib #0,%d0
    79a2:	0000 2e2d      	orib #45,%d0
    79a6:	2c39 0100 0000 	movel 0x1000000,%d6
    79ac:	0000 0000      	orib #0,%d0
    79b0:	0000 0039      	orib #57,%d0
    79b4:	0700           	btst %d3,%d0
	...
    79be:	003a           	.short 0x003a
    79c0:	0d00           	btst %d6,%d0
	...
    79ca:	003b           	.short 0x003b
    79cc:	1300           	moveb %d0,%a1@-
	...
    79d6:	003c 0d24      	orib #36,%ccr
    79da:	2500           	movel %d0,%a2@-
    79dc:	0000 003d      	orib #61,%d0
    79e0:	3e3f           	.short 0x3e3f
    79e2:	4041           	negxw %d1
    79e4:	1326           	moveb %fp@-,%a1@-
    79e6:	2728 0000      	movel %a0@(0),%a3@-
    79ea:	0042 4344      	oriw #17220,%d2
    79ee:	4546           	.short 0x4546
    79f0:	0100           	btst %d0,%d0
    79f2:	0000 0000      	orib #0,%d0
    79f6:	0047 4849      	oriw #18505,%d7
    79fa:	4a4b           	tstw %a3
    79fc:	0700           	btst %d3,%d0
    79fe:	0000 0000      	orib #0,%d0
    7a02:	0000 004c      	orib #76,%d0
    7a06:	4d4e           	.short 0x4d4e
    7a08:	0d00           	btst %d6,%d0
    7a0a:	0000 0000      	orib #0,%d0
    7a0e:	4f50           	.short 0x4f50
    7a10:	5152           	subqw #8,%a2@
    7a12:	5354           	subqw #1,%a4@
    7a14:	1300           	moveb %d0,%a1@-
    7a16:	0000 0000      	orib #0,%d0
    7a1a:	5556           	subqw #2,%fp@
    7a1c:	5758           	subqw #3,%a0@+
    7a1e:	595a           	subqw #4,%a2@+
    7a20:	0100           	btst %d0,%d0
    7a22:	0000 0000      	orib #0,%d0
    7a26:	5b5c           	subqw #5,%a4@+
    7a28:	5d5e           	subqw #6,%fp@+
    7a2a:	5f60           	subqw #7,%a0@-
    7a2c:	0700           	btst %d3,%d0
    7a2e:	0000 0000      	orib #0,%d0
    7a32:	6162           	bsrs 0x7a96
    7a34:	6364           	blss 0x7a9a
    7a36:	6566           	bcss 0x7a9e
    7a38:	0d00           	btst %d6,%d0
	...
    7a42:	0039 1300 0000 	orib #0,0x0
    7a48:	0000 
    7a4a:	0000 0000      	orib #0,%d0
    7a4e:	003a           	.short 0x003a
    7a50:	0d24           	btst %d6,%a4@-
    7a52:	2500           	movel %d0,%a2@-
    7a54:	0000 0000      	orib #0,%d0
    7a58:	0000 003b      	orib #59,%d0
    7a5c:	1326           	moveb %fp@-,%a1@-
    7a5e:	2728 0000      	movel %a0@(0),%a3@-
    7a62:	0000 0000      	orib #0,%d0
    7a66:	003c 0100      	orib #0,%ccr
    7a6a:	0000 0000      	orib #0,%d0
    7a6e:	00ad acab aa3a 	oril #-1398035910,%a5@(1792)
    7a74:	0700 
    7a76:	0000 0000      	orib #0,%d0
    7a7a:	0000 b0af      	orib #-81,%d0
    7a7e:	ae3b           	.short 0xae3b
    7a80:	0d00           	btst %d6,%d0
	...
    7a8a:	0039 1300 0000 	orib #0,0x0
    7a90:	0000 
    7a92:	0000 0000      	orib #0,%d0
    7a96:	003a           	.short 0x003a
    7a98:	0100           	btst %d0,%d0
	...
    7aa2:	003b           	.short 0x003b
    7aa4:	0700           	btst %d3,%d0
	...
    7aae:	003c 0d00      	orib #0,%ccr
    7ab2:	0000 0000      	orib #0,%d0
    7ab6:	0000 00be      	orib #-66,%d0
    7aba:	bd39 1300 0000 	eorb %d6,0x13000000
    7ac0:	0000 00b4      	orib #-76,%d0
    7ac4:	b3b2 b13a 0100 	eorl %d1,%a2@(1000000,%a3:w)@(0)
    7aca:	0000 0000 
    7ace:	00b8 b7b6 b53b 	oril #-1212762821,0x700
    7ad4:	0700 
    7ad6:	0000 0000      	orib #0,%d0
    7ada:	0000 00c0      	orib #-64,%d0
    7ade:	bf3c           	.short 0xbf3c
    7ae0:	0d00           	btst %d6,%d0
	...
    7aea:	0039 1300 0000 	orib #0,0x0
    7af0:	0000 
    7af2:	0000 0000      	orib #0,%d0
    7af6:	003a           	.short 0x003a
    7af8:	077a           	.short 0x077a
    7afa:	7b00           	mvsb %d0,%d5
    7afc:	0000 0000      	orib #0,%d0
    7b00:	0000 003b      	orib #59,%d0
    7b04:	0d7c           	.short 0x0d7c
    7b06:	7d7e           	.short 0x7d7e
    7b08:	7f00           	mvsb %d0,%d7
    7b0a:	0000 0000      	orib #0,%d0
    7b0e:	003c 8081      	orib #-127,%ccr
    7b12:	8283           	orl %d3,%d1
    7b14:	8400           	orb %d0,%d2
    7b16:	0000 c4c3      	orib #-61,%d0
    7b1a:	c2c1           	muluw %d1,%d1
    7b1c:	8586 8788      	unpk %d6,%d2,#-30840
    7b20:	8900           	sbcd %d0,%d4
    7b22:	00c8           	.short 0x00c8
    7b24:	c7f2 c6c5      	mulsw %a2@(ffffffffffffffc5,%a4:w:8),%d3
    7b28:	078a 8b8c      	movepw %d3,%a2@(-29812)
    7b2c:	8d00           	sbcd %d0,%d6
    7b2e:	00cd           	.short 0x00cd
    7b30:	cccb           	.short 0xcccb
    7b32:	cac9           	.short 0xcac9
    7b34:	0d8e 8f00      	movepw %d6,%fp@(-28928)
    7b38:	0000 0000      	orib #0,%d0
    7b3c:	00d0           	.short 0x00d0
    7b3e:	cfce           	.short 0xcfce
    7b40:	0100           	btst %d0,%d0
	...
    7b4a:	0039 0700 0000 	orib #0,0x0
    7b50:	0000 
    7b52:	0000 0000      	orib #0,%d0
    7b56:	003a           	.short 0x003a
    7b58:	0d00           	btst %d6,%d0
	...
    7b62:	003b           	.short 0x003b
    7b64:	1300           	moveb %d0,%a1@-
	...
    7b6e:	003c 0d24      	orib #36,%ccr
    7b72:	2500           	movel %d0,%a2@-
    7b74:	0000 0000      	orib #0,%d0
    7b78:	0000 0039      	orib #57,%d0
    7b7c:	1326           	moveb %fp@-,%a1@-
    7b7e:	2728 0000      	movel %a0@(0),%a3@-
    7b82:	0000 0000      	orib #0,%d0
    7b86:	003a           	.short 0x003a
    7b88:	0d19           	btst %d6,%a1@+
    7b8a:	1a1b           	moveb %a3@+,%d5
    7b8c:	1c1d           	moveb %a5@+,%d6
    7b8e:	0000 0000      	orib #0,%d0
    7b92:	003b           	.short 0x003b
    7b94:	1e1f           	moveb %sp@+,%d7
    7b96:	2021           	movel %a1@-,%d0
    7b98:	2223           	movel %a3@-,%d1
    7b9a:	0000 0000      	orib #0,%d0
    7b9e:	003c 6768      	orib #104,%ccr
    7ba2:	696a           	bvss 0x7c0e
    7ba4:	6b00 0000      	bmiw 0x7ba6
    7ba8:	0000 0039      	orib #57,%d0
    7bac:	6c6d           	bges 0x7c1b
    7bae:	6e6f           	bgts 0x7c1f
    7bb0:	7000           	moveq #0,%d0
    7bb2:	0000 0000      	orib #0,%d0
    7bb6:	003a           	.short 0x003a
    7bb8:	0d24           	btst %d6,%a4@-
    7bba:	2500           	movel %d0,%a2@-
    7bbc:	0000 0000      	orib #0,%d0
    7bc0:	0000 003b      	orib #59,%d0
    7bc4:	1326           	moveb %fp@-,%a1@-
    7bc6:	2728 0000      	movel %a0@(0),%a3@-
    7bca:	0000 0000      	orib #0,%d0
    7bce:	003c 6768      	orib #104,%ccr
    7bd2:	696a           	bvss 0x7c3e
    7bd4:	6b00 00bc      	bmiw 0x7c92
    7bd8:	bbba           	.short 0xbbba
    7bda:	b93a           	.short 0xb93a
    7bdc:	6c6d           	bges 0x7c4b
    7bde:	6e6f           	bgts 0x7c4f
    7be0:	7000           	moveq #0,%d0
    7be2:	00ad acab aa3a 	oril #-1398035910,%a5@(3342)
    7be8:	0d0e 
    7bea:	0f10           	btst %d7,%a0@
    7bec:	1112           	moveb %a2@,%a0@-
    7bee:	0000 b0af      	orib #-81,%d0
    7bf2:	ae3b           	.short 0xae3b
    7bf4:	1314           	moveb %a4@,%a1@-
    7bf6:	1516           	moveb %fp@,%a2@-
    7bf8:	1718           	moveb %a0@+,%a3@-
    7bfa:	0000 0000      	orib #0,%d0
    7bfe:	0039 0100 0000 	orib #0,0x0
    7c04:	0000 
    7c06:	0000 0000      	orib #0,%d0
    7c0a:	003a           	.short 0x003a
    7c0c:	0700           	btst %d3,%d0
	...
    7c16:	003b           	.short 0x003b
    7c18:	0d00           	btst %d6,%d0
	...
    7c22:	003c 1300      	orib #0,%ccr
	...
    7c2e:	0039 0d90 0000 	orib #-112,0x0
    7c34:	0000 
    7c36:	0000 0000      	orib #0,%d0
    7c3a:	003a           	.short 0x003a
    7c3c:	9192           	subl %d0,%a2@
    7c3e:	9394           	subl %d1,%a4@
    7c40:	0000 0000      	orib #0,%d0
    7c44:	0000 003b      	orib #59,%d0
    7c48:	9596           	subl %d2,%fp@
    7c4a:	9798           	subl %d3,%a0@+
    7c4c:	0000 0000      	orib #0,%d0
    7c50:	0000 003c      	orib #60,%d0
    7c54:	0799           	bclr %d3,%a1@+
    7c56:	9a9b           	subl %a3@+,%d5
    7c58:	0000 0000      	orib #0,%d0
    7c5c:	0000 0039      	orib #57,%d0
    7c60:	0100           	btst %d0,%d0
	...
    7c6a:	003a           	.short 0x003a
    7c6c:	0700           	btst %d3,%d0
	...
    7c76:	003b           	.short 0x003b
    7c78:	0d00           	btst %d6,%d0
	...
    7c82:	003c 1300      	orib #0,%ccr
    7c86:	0000 0000      	orib #0,%d0
    7c8a:	0000 dbda      	orib #-38,%d0
    7c8e:	d9c1           	addal %d1,%a4
    7c90:	0d9c           	bclr %d6,%a4@+
    7c92:	9d9e           	subl %d6,%fp@+
    7c94:	0000 0000      	orib #0,%d0
    7c98:	dedd           	addaw %a5@+,%sp
    7c9a:	dcc5           	addaw %d5,%fp
    7c9c:	9fa0           	subl %d7,%a0@-
    7c9e:	a1a2           	.short 0xa1a2
    7ca0:	a300           	.short 0xa300
    7ca2:	0000 e1e0      	orib #-32,%d0
    7ca6:	dfc9           	addal %a1,%sp
    7ca8:	a4a5 a6a7      	macw %d7l,%a2u,>>,%a5@-&,%d2
    7cac:	a800 0000      	macw %d0l,%d4l
    7cb0:	e4e3           	roxrw %a3@-
    7cb2:	e2ce           	.short 0xe2ce
    7cb4:	07a9 0000      	bclr %d3,%a1@(0)
    7cb8:	0000 0000      	orib #0,%d0
    7cbc:	0000 0039      	orib #57,%d0
    7cc0:	0100           	btst %d0,%d0
	...
    7cca:	003a           	.short 0x003a
    7ccc:	0700           	btst %d3,%d0
	...
    7cd6:	003b           	.short 0x003b
    7cd8:	0d00           	btst %d6,%d0
	...
    7ce2:	003c 1300      	orib #0,%ccr
	...
    7cee:	d1c1           	addal %d1,%a0
    7cf0:	0100           	btst %d0,%d0
    7cf2:	0000 0000      	orib #0,%d0
    7cf6:	0000 d4d3      	orib #-45,%d0
    7cfa:	d2c5           	addaw %d5,%a1
    7cfc:	0700           	btst %d3,%d0
    7cfe:	0000 0000      	orib #0,%d0
    7d02:	0000 d7d6      	orib #-42,%d0
    7d06:	d5c9           	addal %a1,%a2
    7d08:	0d00           	btst %d6,%d0
	...
    7d12:	d8ce           	addaw %fp,%a4
    7d14:	1300           	moveb %d0,%a1@-
    7d16:	0000 0000      	orib #0,%d0
    7d1a:	0000 00be      	orib #-66,%d0
    7d1e:	bd39 0100 0000 	eorb %d6,0x1000000
    7d24:	0000 00bc      	orib #-68,%d0
    7d28:	bbba           	.short 0xbbba
    7d2a:	b93a           	.short 0xb93a
    7d2c:	0700           	btst %d3,%d0
    7d2e:	0000 0000      	orib #0,%d0
    7d32:	0000 00c0      	orib #-64,%d0
    7d36:	bf3c           	.short 0xbf3c
    7d38:	0d00           	btst %d6,%d0
	...
    7d42:	0039 1300 0000 	orib #0,0x0
    7d48:	0000 
    7d4a:	0000 0000      	orib #0,%d0
    7d4e:	003a           	.short 0x003a
    7d50:	077a           	.short 0x077a
    7d52:	7b00           	mvsb %d0,%d5
    7d54:	0000 0000      	orib #0,%d0
    7d58:	0000 003b      	orib #59,%d0
    7d5c:	0d7c           	.short 0x0d7c
    7d5e:	7d7e           	.short 0x7d7e
    7d60:	7f00           	mvsb %d0,%d7
    7d62:	0000 0000      	orib #0,%d0
    7d66:	003c 8081      	orib #-127,%ccr
    7d6a:	8283           	orl %d3,%d1
    7d6c:	8400           	orb %d0,%d2
    7d6e:	0000 c4c3      	orib #-61,%d0
    7d72:	c2c1           	muluw %d1,%d1
    7d74:	8586 8788      	unpk %d6,%d2,#-30840
    7d78:	8900           	sbcd %d0,%d4
    7d7a:	00c8           	.short 0x00c8
    7d7c:	c7f2 c6c5      	mulsw %a2@(ffffffffffffffc5,%a4:w:8),%d3
    7d80:	078a 8b8c      	movepw %d3,%a2@(-29812)
    7d84:	8d00           	sbcd %d0,%d6
    7d86:	00cd           	.short 0x00cd
    7d88:	cccb           	.short 0xcccb
    7d8a:	cac9           	.short 0xcac9
    7d8c:	0d8e 8f00      	movepw %d6,%fp@(-28928)
    7d90:	0000 0000      	orib #0,%d0
    7d94:	00d0           	.short 0x00d0
    7d96:	cfce           	.short 0xcfce
    7d98:	0d9c           	bclr %d6,%a4@+
    7d9a:	9d9e           	subl %d6,%fp@+
    7d9c:	0000 0000      	orib #0,%d0
    7da0:	0000 d1c1      	orib #-63,%d0
    7da4:	9fa0           	subl %d7,%a0@-
    7da6:	a1a2           	.short 0xa1a2
    7da8:	a300           	.short 0xa300
    7daa:	0000 d4d3      	orib #-45,%d0
    7dae:	d2c5           	addaw %d5,%a1
    7db0:	a4a5 a6a7      	macw %d7l,%a2u,>>,%a5@-&,%d2
    7db4:	a800 0000      	macw %d0l,%d4l
    7db8:	d7d6           	addal %fp@,%a3
    7dba:	d5c9           	addal %a1,%a2
    7dbc:	07a9 0000      	bclr %d3,%a1@(0)
    7dc0:	0000 0000      	orib #0,%d0
    7dc4:	0000 d8ce      	orib #-50,%d0
    7dc8:	0100           	btst %d0,%d0
	...
    7dd2:	0039 0700 0000 	orib #0,0x0
    7dd8:	0000 
    7dda:	0000 0000      	orib #0,%d0
    7dde:	003a           	.short 0x003a
    7de0:	0d00           	btst %d6,%d0
	...
    7dea:	003b           	.short 0x003b
    7dec:	1300           	moveb %d0,%a1@-
	...
    7df6:	003c 0100      	orib #0,%ccr
    7dfa:	0000 0000      	orib #0,%d0
    7dfe:	0000 dbda      	orib #-38,%d0
    7e02:	d9c1           	addal %d1,%a4
    7e04:	0700           	btst %d3,%d0
    7e06:	0000 0000      	orib #0,%d0
    7e0a:	0000 dedd      	orib #-35,%d0
    7e0e:	dcc5           	addaw %d5,%fp
    7e10:	0d00           	btst %d6,%d0
    7e12:	0000 0000      	orib #0,%d0
    7e16:	0000 e1e0      	orib #-32,%d0
    7e1a:	dfc9           	addal %a1,%sp
    7e1c:	1300           	moveb %d0,%a1@-
    7e1e:	0000 0000      	orib #0,%d0
    7e22:	0000 e4e3      	orib #-29,%d0
    7e26:	e2ce           	.short 0xe2ce
    7e28:	0100           	btst %d0,%d0
	...
    7e32:	0039 0700 0000 	orib #0,0x0
    7e38:	0000 
    7e3a:	0000 0000      	orib #0,%d0
    7e3e:	003a           	.short 0x003a
    7e40:	0d00           	btst %d6,%d0
	...
    7e4a:	003b           	.short 0x003b
    7e4c:	1300           	moveb %d0,%a1@-
	...
    7e56:	003c 0100      	orib #0,%ccr
	...
    7e62:	0039 0700 0000 	orib #0,0x0
    7e68:	0000 
    7e6a:	0000 0000      	orib #0,%d0
    7e6e:	003a           	.short 0x003a
    7e70:	0d00           	btst %d6,%d0
	...
    7e7a:	003b           	.short 0x003b
    7e7c:	1300           	moveb %d0,%a1@-
	...
    7e86:	003c 0d19      	orib #25,%ccr
    7e8a:	1a1b           	moveb %a3@+,%d5
    7e8c:	1c1d           	moveb %a5@+,%d6
    7e8e:	0033 322e 2d3b 	orib #46,%a3@(1e1f2021,%d2:l:4)@(22230034)
    7e94:	1e1f 2021 2223 
    7e9a:	0034 
    7e9c:	3130 2f39 6768 	movew %a0@(6768696a,%d2:l:8)@(0),%a0@-
    7ea2:	696a 
    7ea4:	6b00 0000      	bmiw 0x7ea6
    7ea8:	3537 2e3b      	movew %sp@(3b,%d2:l:8),%a2@-
    7eac:	6c6d           	bges 0x7f1b
    7eae:	6e6f           	bgts 0x7f1f
    7eb0:	7000           	moveq #0,%d0
    7eb2:	0000 3638      	orib #56,%d0
    7eb6:	003c 0d24      	orib #36,%ccr
    7eba:	2500           	movel %d0,%a2@-
    7ebc:	0000 0000      	orib #0,%d0
    7ec0:	3332 003a      	movew %a2@(3a,%d0:w),%a1@-
    7ec4:	1326           	moveb %fp@-,%a1@-
    7ec6:	2728 0000      	movel %a0@(0),%a3@-
    7eca:	0000 3431      	orib #49,%d0
    7ece:	3039 0102 0304 	movew 0x1020304,%d0
    7ed4:	0506           	btst %d2,%d6
    7ed6:	0000 0035      	orib #53,%d0
    7eda:	373b 0708      	movew %pc@(0x7edc,%d0:w:8),%a3@-
    7ede:	090a 0a0b      	movepw %a2@(2571),%d4
    7ee2:	0c00 0036      	cmpib #54,%d0
    7ee6:	383c 0d0e      	movew #3342,%d4
    7eea:	0f10           	btst %d7,%a0@
    7eec:	1112           	moveb %a2@,%a0@-
    7eee:	0000 0000      	orib #0,%d0
    7ef2:	0039 1314 1516 	orib #20,0x15161718
    7ef8:	1718 
    7efa:	0000 0000      	orib #0,%d0
    7efe:	003a           	.short 0x003a
    7f00:	0d19           	btst %d6,%a1@+
    7f02:	1a1b           	moveb %a3@+,%d5
    7f04:	1c1d           	moveb %a5@+,%d6
    7f06:	0000 0000      	orib #0,%d0
    7f0a:	003b           	.short 0x003b
    7f0c:	1e1f           	moveb %sp@+,%d7
    7f0e:	2021           	movel %a1@-,%d0
    7f10:	2223           	movel %a3@-,%d1
    7f12:	0000 0000      	orib #0,%d0
    7f16:	003c 0d24      	orib #36,%ccr
    7f1a:	2500           	movel %d0,%a2@-
    7f1c:	0000 0000      	orib #0,%d0
    7f20:	0000 0039      	orib #57,%d0
    7f24:	1326           	moveb %fp@-,%a1@-
    7f26:	2728 0000      	movel %a0@(0),%a3@-
    7f2a:	0000 0000      	orib #0,%d0
    7f2e:	003a           	.short 0x003a
    7f30:	0100           	btst %d0,%d0
	...
    7f3a:	003b           	.short 0x003b
    7f3c:	0700           	btst %d3,%d0
	...
    7f46:	003c 0d00      	orib #0,%ccr
    7f4a:	0000 0000      	orib #0,%d0
    7f4e:	00bc bbba b93a 	oril #-1145390790,%d4
    7f54:	1300           	moveb %d0,%a1@-
    7f56:	0000 0000      	orib #0,%d0
    7f5a:	0000 00c0      	orib #-64,%d0
    7f5e:	bf3c           	.short 0xbf3c
    7f60:	0100           	btst %d0,%d0
	...
    7f6a:	0039 0700 0000 	orib #0,0x0
    7f70:	0000 
    7f72:	0000 0000      	orib #0,%d0
    7f76:	003a           	.short 0x003a
    7f78:	0d00           	btst %d6,%d0
	...
    7f82:	003b           	.short 0x003b
    7f84:	1300           	moveb %d0,%a1@-
	...
    7f8e:	003c f300      	orib #0,%ccr
	...
    7f9a:	00f9           	.short 0x00f9
    7f9c:	f400           	.short 0xf400
	...
    7fa6:	00fa           	.short 0x00fa
    7fa8:	f500           	pflushn %a0@
	...
    7fb2:	00fb           	.short 0x00fb
    7fb4:	f600 0000 0000 	move16 %a0@+,0x0
    7fba:	0000 0000      	orib #0,%d0
    7fbe:	00fc           	.short 0x00fc
    7fc0:	f700           	.short 0xf700
	...
    7fca:	00fd           	.short 0x00fd
    7fcc:	f800 0000      	tblub %d0,%d0,%d0
    7fd0:	0000 0000      	orib #0,%d0
    7fd4:	0000 00fe      	orib #-2,%d0
	...
    8038:	ffff           	.short 0xffff
	...
    83ce:	0000 0003      	orib #3,%d0
    83d2:	c8f0 0003      	muluw %a0@(3,%d0:w),%d4
    83d6:	c924           	andb %d4,%a4@-
    83d8:	0003 ce66      	orib #102,%d3
    83dc:	0003 d080      	orib #-128,%d3
    83e0:	0003 d3b8      	orib #-72,%d3
    83e4:	0003 e76e      	orib #110,%d3
    83e8:	0003 d7fe      	orib #-2,%d3
    83ec:	0003 ce66      	orib #102,%d3
    83f0:	0003 d998      	orib #-104,%d3
    83f4:	0003 e29c      	orib #-100,%d3
    83f8:	0003 c924      	orib #36,%d3
    83fc:	0003 ce66      	orib #102,%d3
    8400:	0003 d080      	orib #-128,%d3
    8404:	0003 d3b8      	orib #-72,%d3
    8408:	0003 e76e      	orib #110,%d3
    840c:	0003 d7fe      	orib #-2,%d3
    8410:	0003 d998      	orib #-104,%d3
    8414:	0003 e29c      	orib #-100,%d3
    8418:	0000 0000      	orib #0,%d0
    841c:	0003 d21a      	orib #26,%d3
    8420:	0003 dffa      	orib #-6,%d3
    8424:	0003 e624      	orib #36,%d3
    8428:	0034 001a 0000 	orib #26,%a4@(0,%d0:w)
    842e:	0000 0000      	orib #0,%d0
    8432:	0016 0100      	orib #0,%fp@
    8436:	ffff           	.short 0xffff
    8438:	0300           	btst %d1,%d0
    843a:	0000 00ff      	orib #-1,%d0
    843e:	0600 0000      	addib #0,%d0
	...
    845a:	0000 0542      	orib #66,%d0
    845e:	0070 0002 0000 	oriw #2,%a0@(0,%d0:w)
    8464:	0000 0016      	orib #22,%d0
    8468:	0700           	btst %d3,%d0
    846a:	0303           	btst %d1,%d3
    846c:	0400 0000      	subib #0,%d0
    8470:	0001 0300      	orib #0,%d1
    8474:	0100           	btst %d0,%d0
    8476:	e002           	asrb #8,%d2
    8478:	e600           	asrb #3,%d0
    847a:	b810           	cmpb %a0@,%d4
    847c:	3010           	movew %a0@,%d0
    847e:	e200           	asrb #1,%d0
    8480:	0300           	btst %d1,%d0
    8482:	0301           	btst %d1,%d1
    8484:	0301           	btst %d1,%d1
    8486:	0302           	btst %d1,%d2
    8488:	0303           	btst %d1,%d3
    848a:	0203 0203      	andib #3,%d3
    848e:	0103           	btst %d0,%d3
    8490:	0003 0003      	orib #3,%d3
    8494:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
    8498:	fe03 fd03      	cp1ldb %d3,%sp,#7,#259
    849c:	fd02 fd01      	cp0stb %sp,%d2,#7,#257
    84a0:	fd01 fd00      	cp0stb %sp,%d1,#7,#256
    84a4:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
    84a8:	fdff           	.short 0xfdff
    84aa:	fdfe           	.short 0xfdfe
    84ac:	fdfd           	.short 0xfdfd
    84ae:	fefd           	.short 0xfefd
    84b0:	fefd           	.short 0xfefd
    84b2:	fffd           	.short 0xfffd
    84b4:	00fd           	.short 0x00fd
    84b6:	00fd           	.short 0x00fd
    84b8:	01fd           	.short 0x01fd
    84ba:	02fd           	.short 0x02fd
    84bc:	02fd           	.short 0x02fd
    84be:	03fd           	.short 0x03fd
    84c0:	03fe           	.short 0x03fe
    84c2:	03ff           	.short 0x03ff
    84c4:	03ff           	.short 0x03ff
    84c6:	0300           	btst %d1,%d0
    84c8:	e200           	asrb #1,%d0
    84ca:	b840           	cmpw %d0,%d4
    84cc:	0000 0070      	orib #112,%d0
    84d0:	0002 0000      	orib #0,%d2
    84d4:	0000 0016      	orib #22,%d0
    84d8:	0701           	btst %d3,%d1
    84da:	0303           	btst %d1,%d3
    84dc:	0400 0000      	subib #0,%d0
    84e0:	0001 0300      	orib #0,%d1
    84e4:	0100           	btst %d0,%d0
    84e6:	e00a           	lsrb #8,%d2
    84e8:	e600           	asrb #3,%d0
    84ea:	b810           	cmpb %a0@,%d4
    84ec:	3010           	movew %a0@,%d0
    84ee:	e200           	asrb #1,%d0
    84f0:	0300           	btst %d1,%d0
    84f2:	0301           	btst %d1,%d1
    84f4:	0301           	btst %d1,%d1
    84f6:	0302           	btst %d1,%d2
    84f8:	0303           	btst %d1,%d3
    84fa:	0203 0203      	andib #3,%d3
    84fe:	0103           	btst %d0,%d3
    8500:	0003 0003      	orib #3,%d3
    8504:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
    8508:	fe03 fd03      	cp1ldb %d3,%sp,#7,#259
    850c:	fd02 fd01      	cp0stb %sp,%d2,#7,#257
    8510:	fd01 fd00      	cp0stb %sp,%d1,#7,#256
    8514:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
    8518:	fdff           	.short 0xfdff
    851a:	fdfe           	.short 0xfdfe
    851c:	fdfd           	.short 0xfdfd
    851e:	fefd           	.short 0xfefd
    8520:	fefd           	.short 0xfefd
    8522:	fffd           	.short 0xfffd
    8524:	00fd           	.short 0x00fd
    8526:	00fd           	.short 0x00fd
    8528:	01fd           	.short 0x01fd
    852a:	02fd           	.short 0x02fd
    852c:	02fd           	.short 0x02fd
    852e:	03fd           	.short 0x03fd
    8530:	03fe           	.short 0x03fe
    8532:	03ff           	.short 0x03ff
    8534:	03ff           	.short 0x03ff
    8536:	0300           	btst %d1,%d0
    8538:	e200           	asrb #1,%d0
    853a:	b840           	cmpw %d0,%d4
    853c:	0000 0070      	orib #112,%d0
    8540:	0002 0000      	orib #0,%d2
    8544:	0000 0016      	orib #22,%d0
    8548:	0702           	btst %d3,%d2
    854a:	0303           	btst %d1,%d3
    854c:	0400 0000      	subib #0,%d0
    8550:	0001 0300      	orib #0,%d1
    8554:	0100           	btst %d0,%d0
    8556:	e012           	roxrb #8,%d2
    8558:	e600           	asrb #3,%d0
    855a:	b810           	cmpb %a0@,%d4
    855c:	3010           	movew %a0@,%d0
    855e:	e200           	asrb #1,%d0
    8560:	0300           	btst %d1,%d0
    8562:	0301           	btst %d1,%d1
    8564:	0301           	btst %d1,%d1
    8566:	0302           	btst %d1,%d2
    8568:	0303           	btst %d1,%d3
    856a:	0203 0203      	andib #3,%d3
    856e:	0103           	btst %d0,%d3
    8570:	0003 0003      	orib #3,%d3
    8574:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
    8578:	fe03 fd03      	cp1ldb %d3,%sp,#7,#259
    857c:	fd02 fd01      	cp0stb %sp,%d2,#7,#257
    8580:	fd01 fd00      	cp0stb %sp,%d1,#7,#256
    8584:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
    8588:	fdff           	.short 0xfdff
    858a:	fdfe           	.short 0xfdfe
    858c:	fdfd           	.short 0xfdfd
    858e:	fefd           	.short 0xfefd
    8590:	fefd           	.short 0xfefd
    8592:	fffd           	.short 0xfffd
    8594:	00fd           	.short 0x00fd
    8596:	00fd           	.short 0x00fd
    8598:	01fd           	.short 0x01fd
    859a:	02fd           	.short 0x02fd
    859c:	02fd           	.short 0x02fd
    859e:	03fd           	.short 0x03fd
    85a0:	03fe           	.short 0x03fe
    85a2:	03ff           	.short 0x03ff
    85a4:	03ff           	.short 0x03ff
    85a6:	0300           	btst %d1,%d0
    85a8:	e200           	asrb #1,%d0
    85aa:	b840           	cmpw %d0,%d4
    85ac:	0000 0070      	orib #112,%d0
    85b0:	0002 0000      	orib #0,%d2
    85b4:	0000 0016      	orib #22,%d0
    85b8:	0700           	btst %d3,%d0
    85ba:	0303           	btst %d1,%d3
    85bc:	0400 0000      	subib #0,%d0
    85c0:	0001 0300      	orib #0,%d1
    85c4:	0100           	btst %d0,%d0
    85c6:	e01a           	rorb #8,%d2
    85c8:	e600           	asrb #3,%d0
    85ca:	b810           	cmpb %a0@,%d4
    85cc:	3010           	movew %a0@,%d0
    85ce:	e200           	asrb #1,%d0
    85d0:	0300           	btst %d1,%d0
    85d2:	0301           	btst %d1,%d1
    85d4:	0301           	btst %d1,%d1
    85d6:	0302           	btst %d1,%d2
    85d8:	0303           	btst %d1,%d3
    85da:	0203 0203      	andib #3,%d3
    85de:	0103           	btst %d0,%d3
    85e0:	0003 0003      	orib #3,%d3
    85e4:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
    85e8:	fe03 fd03      	cp1ldb %d3,%sp,#7,#259
    85ec:	fd02 fd01      	cp0stb %sp,%d2,#7,#257
    85f0:	fd01 fd00      	cp0stb %sp,%d1,#7,#256
    85f4:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
    85f8:	fdff           	.short 0xfdff
    85fa:	fdfe           	.short 0xfdfe
    85fc:	fdfd           	.short 0xfdfd
    85fe:	fefd           	.short 0xfefd
    8600:	fefd           	.short 0xfefd
    8602:	fffd           	.short 0xfffd
    8604:	00fd           	.short 0x00fd
    8606:	00fd           	.short 0x00fd
    8608:	01fd           	.short 0x01fd
    860a:	02fd           	.short 0x02fd
    860c:	02fd           	.short 0x02fd
    860e:	03fd           	.short 0x03fd
    8610:	03fe           	.short 0x03fe
    8612:	03ff           	.short 0x03ff
    8614:	03ff           	.short 0x03ff
    8616:	0300           	btst %d1,%d0
    8618:	e200           	asrb #1,%d0
    861a:	b840           	cmpw %d0,%d4
    861c:	0000 0070      	orib #112,%d0
    8620:	0002 0000      	orib #0,%d2
    8624:	0000 0016      	orib #22,%d0
    8628:	0701           	btst %d3,%d1
    862a:	0303           	btst %d1,%d3
    862c:	0400 0000      	subib #0,%d0
    8630:	0001 0300      	orib #0,%d1
    8634:	0100           	btst %d0,%d0
    8636:	e022           	asrb %d0,%d2
    8638:	e600           	asrb #3,%d0
    863a:	b810           	cmpb %a0@,%d4
    863c:	3010           	movew %a0@,%d0
    863e:	e200           	asrb #1,%d0
    8640:	0300           	btst %d1,%d0
    8642:	0301           	btst %d1,%d1
    8644:	0301           	btst %d1,%d1
    8646:	0302           	btst %d1,%d2
    8648:	0303           	btst %d1,%d3
    864a:	0203 0203      	andib #3,%d3
    864e:	0103           	btst %d0,%d3
    8650:	0003 0003      	orib #3,%d3
    8654:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
    8658:	fe03 fd03      	cp1ldb %d3,%sp,#7,#259
    865c:	fd02 fd01      	cp0stb %sp,%d2,#7,#257
    8660:	fd01 fd00      	cp0stb %sp,%d1,#7,#256
    8664:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
    8668:	fdff           	.short 0xfdff
    866a:	fdfe           	.short 0xfdfe
    866c:	fdfd           	.short 0xfdfd
    866e:	fefd           	.short 0xfefd
    8670:	fefd           	.short 0xfefd
    8672:	fffd           	.short 0xfffd
    8674:	00fd           	.short 0x00fd
    8676:	00fd           	.short 0x00fd
    8678:	01fd           	.short 0x01fd
    867a:	02fd           	.short 0x02fd
    867c:	02fd           	.short 0x02fd
    867e:	03fd           	.short 0x03fd
    8680:	03fe           	.short 0x03fe
    8682:	03ff           	.short 0x03ff
    8684:	03ff           	.short 0x03ff
    8686:	0300           	btst %d1,%d0
    8688:	e200           	asrb #1,%d0
    868a:	b840           	cmpw %d0,%d4
    868c:	0000 0070      	orib #112,%d0
    8690:	0002 0000      	orib #0,%d2
    8694:	0000 0016      	orib #22,%d0
    8698:	0702           	btst %d3,%d2
    869a:	0303           	btst %d1,%d3
    869c:	0400 0000      	subib #0,%d0
    86a0:	0001 0300      	orib #0,%d1
    86a4:	0100           	btst %d0,%d0
    86a6:	e02a           	lsrb %d0,%d2
    86a8:	e600           	asrb #3,%d0
    86aa:	b810           	cmpb %a0@,%d4
    86ac:	3010           	movew %a0@,%d0
    86ae:	e200           	asrb #1,%d0
    86b0:	0300           	btst %d1,%d0
    86b2:	0301           	btst %d1,%d1
    86b4:	0301           	btst %d1,%d1
    86b6:	0302           	btst %d1,%d2
    86b8:	0303           	btst %d1,%d3
    86ba:	0203 0203      	andib #3,%d3
    86be:	0103           	btst %d0,%d3
    86c0:	0003 0003      	orib #3,%d3
    86c4:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
    86c8:	fe03 fd03      	cp1ldb %d3,%sp,#7,#259
    86cc:	fd02 fd01      	cp0stb %sp,%d2,#7,#257
    86d0:	fd01 fd00      	cp0stb %sp,%d1,#7,#256
    86d4:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
    86d8:	fdff           	.short 0xfdff
    86da:	fdfe           	.short 0xfdfe
    86dc:	fdfd           	.short 0xfdfd
    86de:	fefd           	.short 0xfefd
    86e0:	fefd           	.short 0xfefd
    86e2:	fffd           	.short 0xfffd
    86e4:	00fd           	.short 0x00fd
    86e6:	00fd           	.short 0x00fd
    86e8:	01fd           	.short 0x01fd
    86ea:	02fd           	.short 0x02fd
    86ec:	02fd           	.short 0x02fd
    86ee:	03fd           	.short 0x03fd
    86f0:	03fe           	.short 0x03fe
    86f2:	03ff           	.short 0x03ff
    86f4:	03ff           	.short 0x03ff
    86f6:	0300           	btst %d1,%d0
    86f8:	e200           	asrb #1,%d0
    86fa:	b840           	cmpw %d0,%d4
    86fc:	0000 0070      	orib #112,%d0
    8700:	0002 0000      	orib #0,%d2
    8704:	0000 0016      	orib #22,%d0
    8708:	0700           	btst %d3,%d0
    870a:	0303           	btst %d1,%d3
    870c:	0400 0000      	subib #0,%d0
    8710:	0001 0300      	orib #0,%d1
    8714:	0100           	btst %d0,%d0
    8716:	e01a           	rorb #8,%d2
    8718:	e600           	asrb #3,%d0
    871a:	b840           	cmpw %d0,%d4
    871c:	3040           	moveaw %d0,%a0
    871e:	e200           	asrb #1,%d0
    8720:	0300           	btst %d1,%d0
    8722:	0301           	btst %d1,%d1
    8724:	0301           	btst %d1,%d1
    8726:	0302           	btst %d1,%d2
    8728:	0303           	btst %d1,%d3
    872a:	0203 0203      	andib #3,%d3
    872e:	0103           	btst %d0,%d3
    8730:	0003 0003      	orib #3,%d3
    8734:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
    8738:	fe03 fd03      	cp1ldb %d3,%sp,#7,#259
    873c:	fd02 fd01      	cp0stb %sp,%d2,#7,#257
    8740:	fd01 fd00      	cp0stb %sp,%d1,#7,#256
    8744:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
    8748:	fdff           	.short 0xfdff
    874a:	fdfe           	.short 0xfdfe
    874c:	fdfd           	.short 0xfdfd
    874e:	fefd           	.short 0xfefd
    8750:	fefd           	.short 0xfefd
    8752:	fffd           	.short 0xfffd
    8754:	00fd           	.short 0x00fd
    8756:	00fd           	.short 0x00fd
    8758:	01fd           	.short 0x01fd
    875a:	02fd           	.short 0x02fd
    875c:	02fd           	.short 0x02fd
    875e:	03fd           	.short 0x03fd
    8760:	03fe           	.short 0x03fe
    8762:	03ff           	.short 0x03ff
    8764:	03ff           	.short 0x03ff
    8766:	0300           	btst %d1,%d0
    8768:	e200           	asrb #1,%d0
    876a:	b810           	cmpb %a0@,%d4
    876c:	0000 0070      	orib #112,%d0
    8770:	0002 0000      	orib #0,%d2
    8774:	0000 0016      	orib #22,%d0
    8778:	0701           	btst %d3,%d1
    877a:	0303           	btst %d1,%d3
    877c:	0400 0000      	subib #0,%d0
    8780:	0001 0300      	orib #0,%d1
    8784:	0100           	btst %d0,%d0
    8786:	e022           	asrb %d0,%d2
    8788:	e600           	asrb #3,%d0
    878a:	b840           	cmpw %d0,%d4
    878c:	3040           	moveaw %d0,%a0
    878e:	e200           	asrb #1,%d0
    8790:	0300           	btst %d1,%d0
    8792:	0301           	btst %d1,%d1
    8794:	0301           	btst %d1,%d1
    8796:	0302           	btst %d1,%d2
    8798:	0303           	btst %d1,%d3
    879a:	0203 0203      	andib #3,%d3
    879e:	0103           	btst %d0,%d3
    87a0:	0003 0003      	orib #3,%d3
    87a4:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
    87a8:	fe03 fd03      	cp1ldb %d3,%sp,#7,#259
    87ac:	fd02 fd01      	cp0stb %sp,%d2,#7,#257
    87b0:	fd01 fd00      	cp0stb %sp,%d1,#7,#256
    87b4:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
    87b8:	fdff           	.short 0xfdff
    87ba:	fdfe           	.short 0xfdfe
    87bc:	fdfd           	.short 0xfdfd
    87be:	fefd           	.short 0xfefd
    87c0:	fefd           	.short 0xfefd
    87c2:	fffd           	.short 0xfffd
    87c4:	00fd           	.short 0x00fd
    87c6:	00fd           	.short 0x00fd
    87c8:	01fd           	.short 0x01fd
    87ca:	02fd           	.short 0x02fd
    87cc:	02fd           	.short 0x02fd
    87ce:	03fd           	.short 0x03fd
    87d0:	03fe           	.short 0x03fe
    87d2:	03ff           	.short 0x03ff
    87d4:	03ff           	.short 0x03ff
    87d6:	0300           	btst %d1,%d0
    87d8:	e200           	asrb #1,%d0
    87da:	b810           	cmpb %a0@,%d4
    87dc:	0000 0070      	orib #112,%d0
    87e0:	0002 0000      	orib #0,%d2
    87e4:	0000 0016      	orib #22,%d0
    87e8:	0702           	btst %d3,%d2
    87ea:	0303           	btst %d1,%d3
    87ec:	0400 0000      	subib #0,%d0
    87f0:	0001 0300      	orib #0,%d1
    87f4:	0100           	btst %d0,%d0
    87f6:	e02a           	lsrb %d0,%d2
    87f8:	e600           	asrb #3,%d0
    87fa:	b840           	cmpw %d0,%d4
    87fc:	3040           	moveaw %d0,%a0
    87fe:	e200           	asrb #1,%d0
    8800:	0300           	btst %d1,%d0
    8802:	0301           	btst %d1,%d1
    8804:	0301           	btst %d1,%d1
    8806:	0302           	btst %d1,%d2
    8808:	0303           	btst %d1,%d3
    880a:	0203 0203      	andib #3,%d3
    880e:	0103           	btst %d0,%d3
    8810:	0003 0003      	orib #3,%d3
    8814:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
    8818:	fe03 fd03      	cp1ldb %d3,%sp,#7,#259
    881c:	fd02 fd01      	cp0stb %sp,%d2,#7,#257
    8820:	fd01 fd00      	cp0stb %sp,%d1,#7,#256
    8824:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
    8828:	fdff           	.short 0xfdff
    882a:	fdfe           	.short 0xfdfe
    882c:	fdfd           	.short 0xfdfd
    882e:	fefd           	.short 0xfefd
    8830:	fefd           	.short 0xfefd
    8832:	fffd           	.short 0xfffd
    8834:	00fd           	.short 0x00fd
    8836:	00fd           	.short 0x00fd
    8838:	01fd           	.short 0x01fd
    883a:	02fd           	.short 0x02fd
    883c:	02fd           	.short 0x02fd
    883e:	03fd           	.short 0x03fd
    8840:	03fe           	.short 0x03fe
    8842:	03ff           	.short 0x03ff
    8844:	03ff           	.short 0x03ff
    8846:	0300           	btst %d1,%d0
    8848:	e200           	asrb #1,%d0
    884a:	b810           	cmpb %a0@,%d4
    884c:	0000 0070      	orib #112,%d0
    8850:	0002 0000      	orib #0,%d2
    8854:	0000 0016      	orib #22,%d0
    8858:	0700           	btst %d3,%d0
    885a:	0303           	btst %d1,%d3
    885c:	0400 0000      	subib #0,%d0
    8860:	0001 0300      	orib #0,%d1
    8864:	0100           	btst %d0,%d0
    8866:	e032           	roxrb %d0,%d2
    8868:	e600           	asrb #3,%d0
    886a:	b840           	cmpw %d0,%d4
    886c:	3040           	moveaw %d0,%a0
    886e:	e200           	asrb #1,%d0
    8870:	0300           	btst %d1,%d0
    8872:	0301           	btst %d1,%d1
    8874:	0301           	btst %d1,%d1
    8876:	0302           	btst %d1,%d2
    8878:	0303           	btst %d1,%d3
    887a:	0203 0203      	andib #3,%d3
    887e:	0103           	btst %d0,%d3
    8880:	0003 0003      	orib #3,%d3
    8884:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
    8888:	fe03 fd03      	cp1ldb %d3,%sp,#7,#259
    888c:	fd02 fd01      	cp0stb %sp,%d2,#7,#257
    8890:	fd01 fd00      	cp0stb %sp,%d1,#7,#256
    8894:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
    8898:	fdff           	.short 0xfdff
    889a:	fdfe           	.short 0xfdfe
    889c:	fdfd           	.short 0xfdfd
    889e:	fefd           	.short 0xfefd
    88a0:	fefd           	.short 0xfefd
    88a2:	fffd           	.short 0xfffd
    88a4:	00fd           	.short 0x00fd
    88a6:	00fd           	.short 0x00fd
    88a8:	01fd           	.short 0x01fd
    88aa:	02fd           	.short 0x02fd
    88ac:	02fd           	.short 0x02fd
    88ae:	03fd           	.short 0x03fd
    88b0:	03fe           	.short 0x03fe
    88b2:	03ff           	.short 0x03ff
    88b4:	03ff           	.short 0x03ff
    88b6:	0300           	btst %d1,%d0
    88b8:	e200           	asrb #1,%d0
    88ba:	b810           	cmpb %a0@,%d4
    88bc:	0000 0070      	orib #112,%d0
    88c0:	0002 0000      	orib #0,%d2
    88c4:	0000 0016      	orib #22,%d0
    88c8:	0701           	btst %d3,%d1
    88ca:	0303           	btst %d1,%d3
    88cc:	0400 0000      	subib #0,%d0
    88d0:	0001 0300      	orib #0,%d1
    88d4:	0100           	btst %d0,%d0
    88d6:	e03a           	rorb %d0,%d2
    88d8:	e600           	asrb #3,%d0
    88da:	b840           	cmpw %d0,%d4
    88dc:	3040           	moveaw %d0,%a0
    88de:	e200           	asrb #1,%d0
    88e0:	0300           	btst %d1,%d0
    88e2:	0301           	btst %d1,%d1
    88e4:	0301           	btst %d1,%d1
    88e6:	0302           	btst %d1,%d2
    88e8:	0303           	btst %d1,%d3
    88ea:	0203 0203      	andib #3,%d3
    88ee:	0103           	btst %d0,%d3
    88f0:	0003 0003      	orib #3,%d3
    88f4:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
    88f8:	fe03 fd03      	cp1ldb %d3,%sp,#7,#259
    88fc:	fd02 fd01      	cp0stb %sp,%d2,#7,#257
    8900:	fd01 fd00      	cp0stb %sp,%d1,#7,#256
    8904:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
    8908:	fdff           	.short 0xfdff
    890a:	fdfe           	.short 0xfdfe
    890c:	fdfd           	.short 0xfdfd
    890e:	fefd           	.short 0xfefd
    8910:	fefd           	.short 0xfefd
    8912:	fffd           	.short 0xfffd
    8914:	00fd           	.short 0x00fd
    8916:	00fd           	.short 0x00fd
    8918:	01fd           	.short 0x01fd
    891a:	02fd           	.short 0x02fd
    891c:	02fd           	.short 0x02fd
    891e:	03fd           	.short 0x03fd
    8920:	03fe           	.short 0x03fe
    8922:	03ff           	.short 0x03ff
    8924:	03ff           	.short 0x03ff
    8926:	0300           	btst %d1,%d0
    8928:	e200           	asrb #1,%d0
    892a:	b810           	cmpb %a0@,%d4
    892c:	0000 0000      	orib #0,%d0
    8930:	0002 0000      	orib #0,%d2
    8934:	0000 0016      	orib #22,%d0
    8938:	0702           	btst %d3,%d2
    893a:	0303           	btst %d1,%d3
    893c:	0400 0000      	subib #0,%d0
    8940:	0001 0300      	orib #0,%d1
    8944:	0100           	btst %d0,%d0
    8946:	e042           	asrw #8,%d2
    8948:	e600           	asrb #3,%d0
    894a:	b840           	cmpw %d0,%d4
    894c:	3040           	moveaw %d0,%a0
    894e:	e200           	asrb #1,%d0
    8950:	0300           	btst %d1,%d0
    8952:	0301           	btst %d1,%d1
    8954:	0301           	btst %d1,%d1
    8956:	0302           	btst %d1,%d2
    8958:	0303           	btst %d1,%d3
    895a:	0203 0203      	andib #3,%d3
    895e:	0103           	btst %d0,%d3
    8960:	0003 0003      	orib #3,%d3
    8964:	ff03 fe03      	cp1stb %sp,%d3,#8,#3
    8968:	fe03 fd03      	cp1ldb %d3,%sp,#7,#259
    896c:	fd02 fd01      	cp0stb %sp,%d2,#7,#257
    8970:	fd01 fd00      	cp0stb %sp,%d1,#7,#256
    8974:	fd00 fdff      	cp0stb %sp,%d0,#7,#511
    8978:	fdff           	.short 0xfdff
    897a:	fdfe           	.short 0xfdfe
    897c:	fdfd           	.short 0xfdfd
    897e:	fefd           	.short 0xfefd
    8980:	fefd           	.short 0xfefd
    8982:	fffd           	.short 0xfffd
    8984:	00fd           	.short 0x00fd
    8986:	00fd           	.short 0x00fd
    8988:	01fd           	.short 0x01fd
    898a:	02fd           	.short 0x02fd
    898c:	02fd           	.short 0x02fd
    898e:	03fd           	.short 0x03fd
    8990:	03fe           	.short 0x03fe
    8992:	03ff           	.short 0x03ff
    8994:	03ff           	.short 0x03ff
    8996:	0300           	btst %d1,%d0
    8998:	e200           	asrb #1,%d0
    899a:	b810           	cmpb %a0@,%d4
    899c:	0000 021a      	orib #26,%d0
    89a0:	0026 0180      	orib #-128,%fp@-
    89a4:	000e           	.short 0x000e
    89a6:	000f           	.short 0x000f
    89a8:	0016 0a00      	orib #0,%fp@
    89ac:	0303           	btst %d1,%d3
    89ae:	0200 0800      	andib #0,%d0
    89b2:	0008           	.short 0x0008
    89b4:	0000 5007      	orib #7,%d0
    89b8:	e400           	asrb #2,%d0
    89ba:	0a05 0f48      	eorib #72,%d5
    89be:	e400           	asrb #2,%d0
    89c0:	0a00 0148      	eorib #72,%d0
    89c4:	0000 0026      	orib #38,%d0
    89c8:	0180           	bclr %d0,%d0
    89ca:	0026 000f      	orib #15,%fp@-
    89ce:	0016 0b00      	orib #0,%fp@
    89d2:	0303           	btst %d1,%d3
    89d4:	0200 0800      	andib #0,%d0
    89d8:	0008           	.short 0x0008
    89da:	0000 5013      	orib #19,%d0
    89de:	e400           	asrb #2,%d0
    89e0:	0b05           	btst %d5,%d5
    89e2:	0f54           	bchg %d7,%a4@
    89e4:	e400           	asrb #2,%d0
    89e6:	0b00           	btst %d5,%d0
    89e8:	0154           	bchg %d0,%a4@
    89ea:	0000 002e      	orib #46,%d0
    89ee:	0002 0000      	orib #0,%d2
    89f2:	000f           	.short 0x000f
    89f4:	0016 0c00      	orib #0,%fp@
    89f8:	0303           	btst %d1,%d3
    89fa:	0200 0800      	andib #0,%d0
    89fe:	0008           	.short 0x0008
    8a00:	0000 0100      	orib #0,%d0
    8a04:	e00f           	lsrb #8,%d7
    8a06:	e600           	asrb #3,%d0
    8a08:	c007           	andb %d7,%d0
    8a0a:	6007           	bras 0x8a13
    8a0c:	e400           	asrb #2,%d0
    8a0e:	0c05 1f48      	cmpib #72,%d5
    8a12:	e400           	asrb #2,%d0
    8a14:	0c00 0148      	cmpib #72,%d0
    8a18:	0000 002e      	orib #46,%d0
    8a1c:	0002 0000      	orib #0,%d2
    8a20:	000f           	.short 0x000f
    8a22:	0016 0d00      	orib #0,%fp@
    8a26:	0303           	btst %d1,%d3
    8a28:	0200 0800      	andib #0,%d0
    8a2c:	0008           	.short 0x0008
    8a2e:	0000 0100      	orib #0,%d0
    8a32:	e00f           	lsrb #8,%d7
    8a34:	e600           	asrb #3,%d0
    8a36:	c013           	andb %a3@,%d0
    8a38:	6013           	bras 0x8a4d
    8a3a:	e400           	asrb #2,%d0
    8a3c:	0d05           	btst %d6,%d5
    8a3e:	1f54 e400      	moveb %a4@,%sp@(-7168)
    8a42:	0d00           	btst %d6,%d0
    8a44:	0154           	bchg %d0,%a4@
    8a46:	0000 002e      	orib #46,%d0
    8a4a:	0002 0000      	orib #0,%d2
    8a4e:	00f0           	.short 0x00f0
    8a50:	0016 0a00      	orib #0,%fp@
    8a54:	0303           	btst %d1,%d3
    8a56:	0200 0800      	andib #0,%d0
    8a5a:	0008           	.short 0x0008
    8a5c:	0000 0100      	orib #0,%d0
    8a60:	e050           	roxrw #8,%d0
    8a62:	e600           	asrb #3,%d0
    8a64:	c007           	andb %d7,%d0
    8a66:	8007           	orb %d7,%d0
    8a68:	e400           	asrb #2,%d0
    8a6a:	0a05 3f48      	eorib #72,%d5
    8a6e:	e400           	asrb #2,%d0
    8a70:	0a00 0148      	eorib #72,%d0
    8a74:	0000 002e      	orib #46,%d0
    8a78:	0002 0000      	orib #0,%d2
    8a7c:	00f0           	.short 0x00f0
    8a7e:	0016 0b00      	orib #0,%fp@
    8a82:	0303           	btst %d1,%d3
    8a84:	0200 0800      	andib #0,%d0
    8a88:	0008           	.short 0x0008
    8a8a:	0000 0100      	orib #0,%d0
    8a8e:	e050           	roxrw #8,%d0
    8a90:	e600           	asrb #3,%d0
    8a92:	c013           	andb %a3@,%d0
    8a94:	8013           	orb %a3@,%d0
    8a96:	e400           	asrb #2,%d0
    8a98:	0b05           	btst %d5,%d5
    8a9a:	3f54 e400      	movew %a4@,%sp@(-7168)
    8a9e:	0b00           	btst %d5,%d0
    8aa0:	0154           	bchg %d0,%a4@
    8aa2:	0000 002e      	orib #46,%d0
    8aa6:	0002 0000      	orib #0,%d2
    8aaa:	00f0           	.short 0x00f0
    8aac:	0016 0c00      	orib #0,%fp@
    8ab0:	0303           	btst %d1,%d3
    8ab2:	0200 0800      	andib #0,%d0
    8ab6:	0008           	.short 0x0008
    8ab8:	0000 0100      	orib #0,%d0
    8abc:	e05f           	rorw #8,%d7
    8abe:	e600           	asrb #3,%d0
    8ac0:	c007           	andb %d7,%d0
    8ac2:	9007           	subb %d7,%d0
    8ac4:	e400           	asrb #2,%d0
    8ac6:	0c05 4f48      	cmpib #72,%d5
    8aca:	e400           	asrb #2,%d0
    8acc:	0c00 0148      	cmpib #72,%d0
    8ad0:	0000 002e      	orib #46,%d0
    8ad4:	0002 0000      	orib #0,%d2
    8ad8:	00f0           	.short 0x00f0
    8ada:	0016 0d00      	orib #0,%fp@
    8ade:	0303           	btst %d1,%d3
    8ae0:	0200 0800      	andib #0,%d0
    8ae4:	0008           	.short 0x0008
    8ae6:	0000 0100      	orib #0,%d0
    8aea:	e05f           	rorw #8,%d7
    8aec:	e600           	asrb #3,%d0
    8aee:	c013           	andb %a3@,%d0
    8af0:	9013           	subb %a3@,%d0
    8af2:	e400           	asrb #2,%d0
    8af4:	0d05           	btst %d6,%d5
    8af6:	4f54           	.short 0x4f54
    8af8:	e400           	asrb #2,%d0
    8afa:	0d00           	btst %d6,%d0
    8afc:	0154           	bchg %d0,%a4@
    8afe:	0000 002e      	orib #46,%d0
    8b02:	0002 0000      	orib #0,%d2
    8b06:	0f00           	btst %d7,%d0
    8b08:	0016 8b00      	orib #0,%fp@
    8b0c:	0303           	btst %d1,%d3
    8b0e:	0200 0800      	andib #0,%d0
    8b12:	0008           	.short 0x0008
    8b14:	0000 0100      	orib #0,%d0
    8b18:	e028           	lsrb %d0,%d0
    8b1a:	e600           	asrb #3,%d0
    8b1c:	c041           	andw %d1,%d0
    8b1e:	8041           	orw %d1,%d0
    8b20:	e400           	asrb #2,%d0
    8b22:	8b05           	sbcd %d5,%d5
    8b24:	3f00           	movew %d0,%sp@-
    8b26:	e400           	asrb #2,%d0
    8b28:	8b00           	sbcd %d0,%d5
    8b2a:	0100           	btst %d0,%d0
    8b2c:	0000 002e      	orib #46,%d0
    8b30:	0002 0000      	orib #0,%d2
    8b34:	0f00           	btst %d7,%d0
    8b36:	0016 8a00      	orib #0,%fp@
    8b3a:	0303           	btst %d1,%d3
    8b3c:	0200 0800      	andib #0,%d0
    8b40:	0008           	.short 0x0008
    8b42:	0000 0100      	orib #0,%d0
    8b46:	e028           	lsrb %d0,%d0
    8b48:	e600           	asrb #3,%d0
    8b4a:	c04d           	.short 0xc04d
    8b4c:	804d           	.short 0x804d
    8b4e:	e400           	asrb #2,%d0
    8b50:	8a05           	orb %d5,%d5
    8b52:	3f0c           	movew %a4,%sp@-
    8b54:	e400           	asrb #2,%d0
    8b56:	8a00           	orb %d0,%d5
    8b58:	010c 0000      	movepw %a4@(0),%d0
    8b5c:	002e 0002 0000 	orib #2,%fp@(0)
    8b62:	0f00           	btst %d7,%d0
    8b64:	0016 8d00      	orib #0,%fp@
    8b68:	0303           	btst %d1,%d3
    8b6a:	0200 0800      	andib #0,%d0
    8b6e:	0008           	.short 0x0008
    8b70:	0000 0100      	orib #0,%d0
    8b74:	e037           	roxrb %d0,%d7
    8b76:	e600           	asrb #3,%d0
    8b78:	c041           	andw %d1,%d0
    8b7a:	9041           	subw %d1,%d0
    8b7c:	e400           	asrb #2,%d0
    8b7e:	8d05           	sbcd %d5,%d6
    8b80:	4f00           	chkl %d0,%d7
    8b82:	e400           	asrb #2,%d0
    8b84:	8d00           	sbcd %d0,%d6
    8b86:	0100           	btst %d0,%d0
    8b88:	0000 0000      	orib #0,%d0
    8b8c:	0002 0000      	orib #0,%d2
    8b90:	0f00           	btst %d7,%d0
    8b92:	0016 8c00      	orib #0,%fp@
    8b96:	0303           	btst %d1,%d3
    8b98:	0200 0800      	andib #0,%d0
    8b9c:	0008           	.short 0x0008
    8b9e:	0000 0100      	orib #0,%d0
    8ba2:	e037           	roxrb %d0,%d7
    8ba4:	e600           	asrb #3,%d0
    8ba6:	c04d           	.short 0xc04d
    8ba8:	904d           	subw %a5,%d0
    8baa:	e400           	asrb #2,%d0
    8bac:	8c05           	orb %d5,%d6
    8bae:	4f0c           	.short 0x4f0c
    8bb0:	e400           	asrb #2,%d0
    8bb2:	8c00           	orb %d0,%d6
    8bb4:	010c 0000      	movepw %a4@(0),%d0
    8bb8:	019a           	bclr %d0,%a2@+
    8bba:	0022 0002      	orib #2,%a2@-
    8bbe:	0000 0000      	orib #0,%d0
    8bc2:	0016 0800      	orib #0,%fp@
    8bc6:	0202 0400      	andib #0,%d2
    8bca:	0000 0003      	orib #3,%d0
    8bce:	0300           	btst %d1,%d0
    8bd0:	0100           	btst %d0,%d0
    8bd2:	e002           	asrb #8,%d2
    8bd4:	e600           	asrb #3,%d0
    8bd6:	b808           	cmpb %a0,%d4
    8bd8:	0108 0000      	movepw %a0@(0),%d0
    8bdc:	0022 0002      	orib #2,%a2@-
    8be0:	0000 0000      	orib #0,%d0
    8be4:	0016 0800      	orib #0,%fp@
    8be8:	0202 0300      	andib #0,%d2
    8bec:	0000 0003      	orib #3,%d0
    8bf0:	0300           	btst %d1,%d0
    8bf2:	0100           	btst %d0,%d0
    8bf4:	e014           	roxrb #8,%d4
    8bf6:	e600           	asrb #3,%d0
    8bf8:	b810           	cmpb %a0@,%d4
    8bfa:	0110           	btst %d0,%a0@
    8bfc:	0000 0022      	orib #34,%d0
    8c00:	0002 0000      	orib #0,%d2
    8c04:	0000 0016      	orib #22,%d0
    8c08:	0800 0202      	btst #2,%d0
    8c0c:	0400 0000      	subib #0,%d0
    8c10:	0003 0300      	orib #0,%d3
    8c14:	0100           	btst %d0,%d0
    8c16:	e00a           	lsrb #8,%d2
    8c18:	e600           	asrb #3,%d0
    8c1a:	b818           	cmpb %a0@+,%d4
    8c1c:	0118           	btst %d0,%a0@+
    8c1e:	0000 0022      	orib #34,%d0
    8c22:	0002 0000      	orib #0,%d2
    8c26:	0000 0016      	orib #22,%d0
    8c2a:	0800 0202      	btst #2,%d0
    8c2e:	0300           	btst %d1,%d0
    8c30:	0000 0003      	orib #3,%d0
    8c34:	0300           	btst %d1,%d0
    8c36:	0100           	btst %d0,%d0
    8c38:	e013           	roxrb #8,%d3
    8c3a:	e600           	asrb #3,%d0
    8c3c:	b820           	cmpb %a0@-,%d4
    8c3e:	0120           	btst %d0,%a0@-
    8c40:	0000 0022      	orib #34,%d0
    8c44:	0002 0000      	orib #0,%d2
    8c48:	0000 0016      	orib #22,%d0
    8c4c:	0800 0202      	btst #2,%d0
    8c50:	0300           	btst %d1,%d0
    8c52:	0000 0003      	orib #3,%d0
    8c56:	0300           	btst %d1,%d0
    8c58:	0100           	btst %d0,%d0
    8c5a:	e01f           	rorb #8,%d7
    8c5c:	e600           	asrb #3,%d0
    8c5e:	b828 0128      	cmpb %a0@(296),%d4
    8c62:	0000 0022      	orib #34,%d0
    8c66:	0002 0000      	orib #0,%d2
    8c6a:	0000 0016      	orib #22,%d0
    8c6e:	0800 0202      	btst #2,%d0
    8c72:	0400 0000      	subib #0,%d0
    8c76:	0003 0300      	orib #0,%d3
    8c7a:	0100           	btst %d0,%d0
    8c7c:	e00e           	lsrb #8,%d6
    8c7e:	e600           	asrb #3,%d0
    8c80:	b830 0130 0000 	cmpb %a0@(22,%d0:w),%d4
    8c86:	0022 
    8c88:	0002 0000      	orib #0,%d2
    8c8c:	0000 0016      	orib #22,%d0
    8c90:	0800 0202      	btst #2,%d0
    8c94:	0300           	btst %d1,%d0
    8c96:	0000 0003      	orib #3,%d0
    8c9a:	0300           	btst %d1,%d0
    8c9c:	0100           	btst %d0,%d0
    8c9e:	e022           	asrb %d0,%d2
    8ca0:	e600           	asrb #3,%d0
    8ca2:	b838 0138      	cmpb 0x138,%d4
    8ca6:	0000 0022      	orib #34,%d0
    8caa:	0002 0000      	orib #0,%d2
    8cae:	0000 0016      	orib #22,%d0
    8cb2:	0800 0202      	btst #2,%d0
    8cb6:	0300           	btst %d1,%d0
    8cb8:	0000 0003      	orib #3,%d0
    8cbc:	0300           	btst %d1,%d0
    8cbe:	0100           	btst %d0,%d0
    8cc0:	e015           	roxrb #8,%d5
    8cc2:	e600           	asrb #3,%d0
    8cc4:	b840           	cmpw %d0,%d4
    8cc6:	0140           	bchg %d0,%d0
    8cc8:	0000 0022      	orib #34,%d0
    8ccc:	0002 0000      	orib #0,%d2
    8cd0:	0000 0016      	orib #22,%d0
    8cd4:	0800 0202      	btst #2,%d0
    8cd8:	0400 0000      	subib #0,%d0
    8cdc:	0003 0300      	orib #0,%d3
    8ce0:	0100           	btst %d0,%d0
    8ce2:	e001           	asrb #8,%d1
    8ce4:	e600           	asrb #3,%d0
    8ce6:	b848           	cmpw %a0,%d4
    8ce8:	0148 0000      	movepl %a0@(0),%d0
    8cec:	0022 0002      	orib #2,%a2@-
    8cf0:	0000 0000      	orib #0,%d0
    8cf4:	0016 0800      	orib #0,%fp@
    8cf8:	0202 0300      	andib #0,%d2
    8cfc:	0000 0003      	orib #3,%d0
    8d00:	0300           	btst %d1,%d0
    8d02:	0100           	btst %d0,%d0
    8d04:	e028           	lsrb %d0,%d0
    8d06:	e600           	asrb #3,%d0
    8d08:	b850           	cmpw %a0@,%d4
    8d0a:	0150           	bchg %d0,%a0@
    8d0c:	0000 0022      	orib #34,%d0
    8d10:	0002 0000      	orib #0,%d2
    8d14:	0000 0016      	orib #22,%d0
    8d18:	0800 0202      	btst #2,%d0
    8d1c:	0400 0000      	subib #0,%d0
    8d20:	0003 0300      	orib #0,%d3
    8d24:	0100           	btst %d0,%d0
    8d26:	e00d           	lsrb #8,%d5
    8d28:	e600           	asrb #3,%d0
    8d2a:	b83a 013a      	cmpb %pc@(0x8e66),%d4
    8d2e:	0000 0000      	orib #0,%d0
    8d32:	0002 0000      	orib #0,%d2
    8d36:	0000 0016      	orib #22,%d0
    8d3a:	0800 0202      	btst #2,%d0
    8d3e:	0300           	btst %d1,%d0
    8d40:	0000 0003      	orib #3,%d0
    8d44:	0300           	btst %d1,%d0
    8d46:	0100           	btst %d0,%d0
    8d48:	e021           	asrb %d0,%d1
    8d4a:	e600           	asrb #3,%d0
    8d4c:	b824           	cmpb %a4@-,%d4
    8d4e:	0124           	btst %d0,%a4@-
    8d50:	0000 019e      	orib #-98,%d0
    8d54:	001c 011a      	orib #26,%a4@+
    8d58:	005a 0fff      	oriw #4095,%a2@+
    8d5c:	0016 0300      	orib #0,%fp@
    8d60:	0808           	.short 0x0808
    8d62:	0200 0000      	andib #0,%d0
    8d66:	0019 0300      	orib #0,%a1@+
    8d6a:	8d2d e0ff      	orb %d6,%a5@(-7937)
    8d6e:	0000 0026      	orib #38,%d0
    8d72:	00e8           	.short 0x00e8
    8d74:	002a 0000 0016 	orib #0,%a2@(22)
    8d7a:	0501           	btst %d2,%d1
    8d7c:	0202 0200      	andib #0,%d2
    8d80:	0004 6380      	orib #-128,%d4
    8d84:	0300           	btst %d1,%d0
    8d86:	7415           	moveq #21,%d2
    8d88:	e002           	asrb #8,%d2
    8d8a:	0115           	btst %d0,%a5@
    8d8c:	e003           	asrb #8,%d3
    8d8e:	e600           	asrb #3,%d0
    8d90:	7415           	moveq #21,%d2
    8d92:	e100           	aslb #8,%d0
    8d94:	0000 0026      	orib #38,%d0
    8d98:	00de           	.short 0x00de
    8d9a:	003a           	.short 0x003a
    8d9c:	0000 0016      	orib #22,%d0
    8da0:	0502           	btst %d2,%d2
    8da2:	0202 0200      	andib #0,%d2
    8da6:	0004 6380      	orib #-128,%d4
    8daa:	0300           	btst %d1,%d0
    8dac:	6f1d           	bles 0x8dcb
    8dae:	e00b           	lsrb #8,%d3
    8db0:	011d           	btst %d0,%a5@+
    8db2:	e004           	asrb #8,%d4
    8db4:	e600           	asrb #3,%d0
    8db6:	6f1d           	bles 0x8dd5
    8db8:	e100           	aslb #8,%d0
    8dba:	0000 0026      	orib #38,%d0
    8dbe:	00e8           	.short 0x00e8
    8dc0:	0040 0000      	oriw #0,%d0
    8dc4:	0016 0502      	orib #2,%fp@
    8dc8:	0202 0300      	andib #0,%d2
    8dcc:	0004 6380      	orib #-128,%d4
    8dd0:	0300           	btst %d1,%d0
    8dd2:	7420           	moveq #32,%d2
    8dd4:	e007           	asrb #8,%d7
    8dd6:	0120           	btst %d0,%a0@-
    8dd8:	e007           	asrb #8,%d7
    8dda:	e600           	asrb #3,%d0
    8ddc:	7420           	moveq #32,%d2
    8dde:	e100           	aslb #8,%d0
    8de0:	0000 0026      	orib #38,%d0
    8de4:	00e0           	.short 0x00e0
    8de6:	004c           	.short 0x004c
    8de8:	0000 0016      	orib #22,%d0
    8dec:	0500           	btst %d2,%d0
    8dee:	0202 0300      	andib #0,%d2
    8df2:	0004 6380      	orib #-128,%d4
    8df6:	0300           	btst %d1,%d0
    8df8:	7025           	moveq #37,%d0
    8dfa:	e00f           	lsrb #8,%d7
    8dfc:	0125           	btst %d0,%a5@-
    8dfe:	e006           	asrb #8,%d6
    8e00:	e600           	asrb #3,%d0
    8e02:	7025           	moveq #37,%d0
    8e04:	e100           	aslb #8,%d0
    8e06:	0000 0026      	orib #38,%d0
    8e0a:	00de           	.short 0x00de
    8e0c:	0056 0000      	oriw #0,%fp@
    8e10:	0016 0501      	orib #1,%fp@
    8e14:	0202 0200      	andib #0,%d2
    8e18:	0004 6380      	orib #-128,%d4
    8e1c:	0300           	btst %d1,%d0
    8e1e:	6f2b           	bles 0x8e4b
    8e20:	e001           	asrb #8,%d1
    8e22:	012b e001      	btst %d0,%a3@(-8191)
    8e26:	e600           	asrb #3,%d0
    8e28:	6f2b           	bles 0x8e55
    8e2a:	e100           	aslb #8,%d0
    8e2c:	0000 0026      	orib #38,%d0
    8e30:	00e2           	.short 0x00e2
    8e32:	005c 0000      	oriw #0,%a4@+
    8e36:	0016 0502      	orib #2,%fp@
    8e3a:	0202 0200      	andib #0,%d2
    8e3e:	0004 6380      	orib #-128,%d4
    8e42:	0300           	btst %d1,%d0
    8e44:	712e e00a      	mvsb %fp@(-8182),%d0
    8e48:	012e e008      	btst %d0,%fp@(-8184)
    8e4c:	e600           	asrb #3,%d0
    8e4e:	712e e100      	mvsb %fp@(-7936),%d0
    8e52:	0000 0026      	orib #38,%d0
    8e56:	00e4           	.short 0x00e4
    8e58:	0064 0000      	oriw #0,%a4@-
    8e5c:	0016 0502      	orib #2,%fp@
    8e60:	0202 0300      	andib #0,%d2
    8e64:	0004 6380      	orib #-128,%d4
    8e68:	0300           	btst %d1,%d0
    8e6a:	7232           	moveq #50,%d1
    8e6c:	e009           	lsrb #8,%d1
    8e6e:	0132 e003      	btst %d0,%a2@(3,%fp:w)
    8e72:	e600           	asrb #3,%d0
    8e74:	7232           	moveq #50,%d1
    8e76:	e100           	aslb #8,%d0
    8e78:	0000 0026      	orib #38,%d0
    8e7c:	00d8           	.short 0x00d8
    8e7e:	006c 0000 0016 	oriw #0,%a4@(22)
    8e84:	0500           	btst %d2,%d0
    8e86:	0202 0200      	andib #0,%d2
    8e8a:	0004 6380      	orib #-128,%d4
    8e8e:	0300           	btst %d1,%d0
    8e90:	6c36           	bges 0x8ec8
    8e92:	e002           	asrb #8,%d2
    8e94:	0136 e009      	btst %d0,%fp@(9,%fp:w)
    8e98:	e600           	asrb #3,%d0
    8e9a:	6c36           	bges 0x8ed2
    8e9c:	e100           	aslb #8,%d0
    8e9e:	0000 0026      	orib #38,%d0
    8ea2:	00e6           	.short 0x00e6
    8ea4:	0076 0000 0016 	oriw #0,%fp@(16,%d0:w)
    8eaa:	0501           	btst %d2,%d1
    8eac:	0202 0300      	andib #0,%d2
    8eb0:	0004 6380      	orib #-128,%d4
    8eb4:	0300           	btst %d1,%d0
    8eb6:	733b e008      	mvsb %pc@(0x8ec0,%fp:w),%d1
    8eba:	013b e005      	btst %d0,%pc@(0x8ec1,%fp:w)
    8ebe:	e600           	asrb #3,%d0
    8ec0:	733b e100      	mvsb %pc@(0x8ec2,%fp:w),%d1
    8ec4:	0000 0026      	orib #38,%d0
    8ec8:	00e2           	.short 0x00e2
    8eca:	0082 0000 0016 	oril #22,%d2
    8ed0:	0502           	btst %d2,%d2
    8ed2:	0202 0300      	andib #0,%d2
    8ed6:	0004 6380      	orib #-128,%d4
    8eda:	0300           	btst %d1,%d0
    8edc:	7141           	mvsw %d1,%d0
    8ede:	e00b           	lsrb #8,%d3
    8ee0:	0141           	bchg %d0,%d1
    8ee2:	e009           	lsrb #8,%d1
    8ee4:	e600           	asrb #3,%d0
    8ee6:	7141           	mvsw %d1,%d0
    8ee8:	e100           	aslb #8,%d0
    8eea:	0000 0000      	orib #0,%d0
    8eee:	0000 0446      	orib #70,%d0
    8ef2:	0016 0078      	orib #120,%fp@
    8ef6:	0000 0fff      	orib #-1,%d0
    8efa:	0108 1100      	movepw %a0@(4352),%d0
    8efe:	0303           	btst %d1,%d3
    8f00:	0200 0800      	andib #0,%d0
    8f04:	0408           	.short 0x0408
    8f06:	0400 0016      	subib #22,%d0
    8f0a:	006e 0000 0000 	oriw #0,%fp@(0)
    8f10:	00f2 1000 0101 	cmp2b %a2@(0,%d0:w)@(0),%d1
    8f16:	0200 0000      	andib #0,%d0
    8f1a:	0480 0000 0016 	subil #22,%d0
    8f20:	0064 0000      	oriw #0,%a4@-
    8f24:	0000 00dc      	orib #-36,%d0
    8f28:	1000           	moveb %d0,%d0
    8f2a:	0101           	btst %d0,%d1
    8f2c:	0200 0000      	andib #0,%d0
    8f30:	0480 0000 0016 	subil #22,%d0
    8f36:	005a 0000      	oriw #0,%a2@+
    8f3a:	0000 00c6      	orib #-58,%d0
    8f3e:	1000           	moveb %d0,%d0
    8f40:	0101           	btst %d0,%d1
    8f42:	0200 0000      	andib #0,%d0
    8f46:	0480 0000 0016 	subil #22,%d0
    8f4c:	0050 0000      	oriw #0,%a0@
    8f50:	0000 00b0      	orib #-80,%d0
    8f54:	1000           	moveb %d0,%d0
    8f56:	0101           	btst %d0,%d1
    8f58:	0200 0000      	andib #0,%d0
    8f5c:	0480 0000 0016 	subil #22,%d0
    8f62:	0046 0000      	oriw #0,%d6
    8f66:	0000 009a      	orib #-102,%d0
    8f6a:	1000           	moveb %d0,%d0
    8f6c:	0101           	btst %d0,%d1
    8f6e:	0200 0000      	andib #0,%d0
    8f72:	0480 0000 0016 	subil #22,%d0
    8f78:	003c 0000      	orib #0,%ccr
    8f7c:	0000 0084      	orib #-124,%d0
    8f80:	1000           	moveb %d0,%d0
    8f82:	0101           	btst %d0,%d1
    8f84:	0200 0000      	andib #0,%d0
    8f88:	0480 0000 0016 	subil #22,%d0
    8f8e:	0032 0000 0000 	orib #0,%a2@(0,%d0:w)
    8f94:	006e 1000 0101 	oriw #4096,%fp@(257)
    8f9a:	0200 0000      	andib #0,%d0
    8f9e:	0480 0000 0016 	subil #22,%d0
    8fa4:	0028 0000 0000 	orib #0,%a0@(0)
    8faa:	0058 1000      	oriw #4096,%a0@+
    8fae:	0101           	btst %d0,%d1
    8fb0:	0200 0000      	andib #0,%d0
    8fb4:	0480 0000 0016 	subil #22,%d0
    8fba:	001e 0000      	orib #0,%fp@+
    8fbe:	0000 0042      	orib #66,%d0
    8fc2:	1000           	moveb %d0,%d0
    8fc4:	0101           	btst %d0,%d1
    8fc6:	0200 0000      	andib #0,%d0
    8fca:	0480 0000 0016 	subil #22,%d0
    8fd0:	0014 0000      	orib #0,%a4@
    8fd4:	0000 002c      	orib #44,%d0
    8fd8:	1000           	moveb %d0,%d0
    8fda:	0101           	btst %d0,%d1
    8fdc:	0200 0000      	andib #0,%d0
    8fe0:	0480 0000 0000 	subil #0,%d0
    8fe6:	000a           	.short 0x000a
    8fe8:	0000 0000      	orib #0,%d0
    8fec:	0016 1000      	orib #0,%fp@
    8ff0:	0101           	btst %d0,%d1
    8ff2:	0200 0000      	andib #0,%d0
    8ff6:	0480 0000 5000 	subil #20480,%d0
    8ffc:	5004           	addqb #8,%d4
    8ffe:	e200           	asrb #1,%d0
