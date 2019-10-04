import time
us = 0;
ds = 0;
um = 0;
dm = 0;
uh = 0;
dh = 0;
base_tempo = 1


while(1):
	
	
	time.sleep(base_tempo)
									
								#LINHA_Y
	if(passou_segundo == true): #LOAD IO_TEMPO REG_TEMPO
								#CMP  REG_TEMPO 1
								#JNE  LINHA_Y

		us += 1			#ADD 0x01 REG_US

		if(us == 10):	#CMP REG_US 0X0A
						#JNE LINHA_X
			us = 0		#MOV 0x00 REG_US
			ds += 1		#ADD 0x01 REG_DS
		if(ds == 6):	#CMP REG_DS 0X06
						#JNE LINHA_X
			ds = 0		#MOV 0x00 REG_DS
			um += 1		#ADD 0x01 REG_UM
		if(um == 10):	#CMP REG_UM 0X0A
						#JNE LINHA_X
			um = 0		#MOV 0x00 REG_UM
			dm += 1		#ADD 0x01 REG_DM
		if(dm == 6):	#CMP REG_DM 0X06
						#JNE LINHA_X
			dm = 0		#MOV 0x00 REG_DM
			uh += 1		#ADD 0x01 REG_UH
		if(uh == 10):	#CMP REG_UH 0X0A
						#JNE LINHA_X
			uh = 0		#MOV 0x00 REG_UH
			dh += 1		#ADD 0x01 REG_DH
		if(dh == 2): 	#CMP REG_DH 0X02
						#JNE LINHA_X
			if(uh == 4):#CMP REG_UH 0X04
						#JNE LINHA42
				uh= 0	#MOV 0x00 REG_UH
				dh= 0	#MOV 0x00 REG_DH
						#LINHA_X

	print('{0}{1}:{2}{3}:{4}{5}\n' .format(dh, uh, dm, um, ds, us)); #STORE REG_US LCD_US
																	 #STORE REG_DS LCD_DS
																	 #STORE REG_UM LCD_UM
																	 #STORE REG_DM LCD_DM
																	 #STORE REG_UH LCD_UH
																	 #STORE REG_DH LCD_DH
																	 #JUMP LINHA_Y
