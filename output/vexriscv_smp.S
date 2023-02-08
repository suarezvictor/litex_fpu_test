00000160 <float_test>:
 160:	fd010113          	addi	sp,sp,-48
 164:	02912223          	sw	s1,36(sp)
 168:	34802483          	lw	s1,840(zero) # 348 <stdout>
 16c:	02812423          	sw	s0,40(sp)
 170:	03212023          	sw	s2,32(sp)
 174:	01312e23          	sw	s3,28(sp)
 178:	02112623          	sw	ra,44(sp)
 17c:	00813427          	fsd	fs0,8(sp)
 180:	00000413          	li	s0,0
 184:	100009b7          	lui	s3,0x10000
 188:	00500913          	li	s2,5
 18c:	00048593          	mv	a1,s1
 190:	03040513          	addi	a0,s0,48
 194:	0109a407          	flw	fs0,16(s3) # 10000010 <f>
 198:	080000ef          	jal	ra,218 <fputc>
 19c:	00048593          	mv	a1,s1
 1a0:	03d00513          	li	a0,61
 1a4:	074000ef          	jal	ra,218 <fputc>
 1a8:	d00477d3          	fcvt.s.w	fa5,s0
 1ac:	00048593          	mv	a1,s1
 1b0:	00140413          	addi	s0,s0,1
 1b4:	1087f7d3          	fmul.s	fa5,fa5,fs0
 1b8:	c0179553          	fcvt.wu.s	a0,fa5,rtz
 1bc:	0ff57513          	andi	a0,a0,255
 1c0:	03050513          	addi	a0,a0,48
 1c4:	054000ef          	jal	ra,218 <fputc>
 1c8:	00048593          	mv	a1,s1
 1cc:	00a00513          	li	a0,10
 1d0:	048000ef          	jal	ra,218 <fputc>
 1d4:	fb241ce3          	bne	s0,s2,18c <float_test+0x2c>
 1d8:	02c12083          	lw	ra,44(sp)
 1dc:	02812403          	lw	s0,40(sp)
 1e0:	02412483          	lw	s1,36(sp)
 1e4:	02012903          	lw	s2,32(sp)
 1e8:	01c12983          	lw	s3,28(sp)
 1ec:	00813407          	fld	fs0,8(sp)
 1f0:	03010113          	addi	sp,sp,48
 1f4:	00008067          	ret

