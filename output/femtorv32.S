000000b2 <float_test>:
  b2:	7179                	addi	sp,sp,-48
  b4:	d226                	sw	s1,36(sp)
  b6:	1f002483          	lw	s1,496(zero) # 1f0 <stdout>
  ba:	d422                	sw	s0,40(sp)
  bc:	d04a                	sw	s2,32(sp)
  be:	ce4e                	sw	s3,28(sp)
  c0:	d606                	sw	ra,44(sp)
  c2:	e622                	fsw	fs0,12(sp)
  c4:	4401                	li	s0,0
  c6:	010009b7          	lui	s3,0x1000
  ca:	4915                	li	s2,5
  cc:	85a6                	mv	a1,s1
  ce:	03040513          	addi	a0,s0,48
  d2:	0109a407          	flw	fs0,16(s3) # 1000010 <f>
  d6:	20b9                	jal	124 <fputc>
  d8:	85a6                	mv	a1,s1
  da:	03d00513          	li	a0,61
  de:	2099                	jal	124 <fputc>
  e0:	d00477d3          	fcvt.s.w	fa5,s0
  e4:	85a6                	mv	a1,s1
  e6:	0405                	addi	s0,s0,1
  e8:	1087f7d3          	fmul.s	fa5,fa5,fs0
  ec:	c0179553          	fcvt.wu.s	a0,fa5,rtz
  f0:	0ff57513          	andi	a0,a0,255
  f4:	03050513          	addi	a0,a0,48
  f8:	2035                	jal	124 <fputc>
  fa:	85a6                	mv	a1,s1
  fc:	4529                	li	a0,10
  fe:	201d                	jal	124 <fputc>
 100:	fd2416e3          	bne	s0,s2,cc <float_test+0x1a>
 104:	50b2                	lw	ra,44(sp)
 106:	5422                	lw	s0,40(sp)
 108:	5492                	lw	s1,36(sp)
 10a:	5902                	lw	s2,32(sp)
 10c:	49f2                	lw	s3,28(sp)
 10e:	6432                	flw	fs0,12(sp)
 110:	6145                	addi	sp,sp,48
 112:	8082                	ret

