00000124 <float_test>:
 124:	fd010113          	addi	sp,sp,-48
 128:	02912223          	sw	s1,36(sp)
 12c:	31002483          	lw	s1,784(zero) # 310 <stdout>
 130:	02812423          	sw	s0,40(sp)
 134:	03212023          	sw	s2,32(sp)
 138:	01312e23          	sw	s3,28(sp)
 13c:	02112623          	sw	ra,44(sp)
 140:	00813427          	fsd	fs0,8(sp)
 144:	00000413          	li	s0,0
 148:	100009b7          	lui	s3,0x10000
 14c:	00500913          	li	s2,5
 150:	00048593          	mv	a1,s1
 154:	03040513          	addi	a0,s0,48
 158:	0109a407          	flw	fs0,16(s3) # 10000010 <f>
 15c:	080000ef          	jal	ra,1dc <fputc>
 160:	00048593          	mv	a1,s1
 164:	03d00513          	li	a0,61
 168:	074000ef          	jal	ra,1dc <fputc>
 16c:	d00477d3          	fcvt.s.w	fa5,s0
 170:	00048593          	mv	a1,s1
 174:	00140413          	addi	s0,s0,1
 178:	1087f7d3          	fmul.s	fa5,fa5,fs0
 17c:	c0179553          	fcvt.wu.s	a0,fa5,rtz
 180:	0ff57513          	andi	a0,a0,255
 184:	03050513          	addi	a0,a0,48
 188:	054000ef          	jal	ra,1dc <fputc>
 18c:	00048593          	mv	a1,s1
 190:	00a00513          	li	a0,10
 194:	048000ef          	jal	ra,1dc <fputc>
 198:	fb241ce3          	bne	s0,s2,150 <float_test+0x2c>
 19c:	02c12083          	lw	ra,44(sp)
 1a0:	02812403          	lw	s0,40(sp)
 1a4:	02412483          	lw	s1,36(sp)
 1a8:	02012903          	lw	s2,32(sp)
 1ac:	01c12983          	lw	s3,28(sp)
 1b0:	00813407          	fld	fs0,8(sp)
 1b4:	03010113          	addi	sp,sp,48
 1b8:	00008067          	ret

