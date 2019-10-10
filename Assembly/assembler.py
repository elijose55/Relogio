'''
Assembler do codigo assembly do relogio
Eli Jose e Pedro Azambuja
Design de Computadores - Eng Computacao - Insper
'''

#Funcao para detecar labels de jump e armazenar sua linha em uma lista label_list, alem de retirar do codigo a label
def get_jump_labels(file):
	label_list = []
	line_number = 0
	lines = []
	for line in infile:
		words = line.split()
		line_number +=1
		for word in words:
			if(word[0] == "$"):
				line = line.replace(word, '{0:08b}'.format(int(word[1:])))


		if(words[0][-1] == ":"):
			line_number -=1
			label = words[0][:-1]
			label_list.append((label, '{0:08b}'.format(line_number)))
		else:

			lines.append(line[:].replace('\n',''))
			print("PO: ", line[:-1])

	return label_list, lines



'''
Funcao para substituir as instrucoes pelos seus respectivos opcode, para substituir os nomes de registradores pelos seus respectivos enderecoes no banco de registradores
e substituir nomes de IOs pelos seus respectivos enderecos no decoder, alem de atribuir as linhas corretas aos JUMP e JNE.
'''
def set_instruction_opcode(data):
	for key in instruction_dict:
		data = data.replace(key, instruction_dict[key])

	for key in reg_address_dict:
		data = data.replace(key, reg_address_dict[key])

	for key in mem_address_dict:
		data = data.replace(key, mem_address_dict[key])

	for i in label_list:
		#print("i: ", i)
		data = data.replace(i[0], "00000 " + str(i[1]))
		#print("data: ", data)
	return data

#dicionario de instrucoes
instruction_dict = {
	"LOAD":  '000',
	'CMP':   '001',
	'JNE':   '110',
	'ADD':   '100',
	'MOV':   '010',
	'STORE': '101',
	'JUMP':  '111',
}

#dicionario de enderecos no banco de registradores
reg_address_dict = {
	"REG_TEMPO":  '00011',
	'REG_US':     '00001',
	'REG_DS':     '00010',
	'REG_UM':     '00100',
	'REG_DM':     '01000',
	'REG_UH':     '10000',
	'REG_DH':     '10001',
	'REG_CLEAR':  '01111',
	'REG_SWITCH': '01010',
	'REG_AM_DH':  '10011',
	'REG_AM_UH':  '10101',
	'REG_SIGLA':  '11110',
	'REG_TRACO':  '11010',
	'REG_ZERA':   '11011'
}

#dicionario de enderecos no decoder
mem_address_dict = {
	"IO_TEMPO":    '00000000',
	'CLEAR_TEMPO': '00000001',
	'IO_SWITCH':   '00001001',
	'LCD_US':      '00000011',
	'LCD_DS':      '00000100',
	'LCD_UM':      '00000101',
	'LCD_DM':      '00000110',
	'LCD_UH':      '00000111',
	'LCD_DH':      '00001000'
}

#abrindo o arquivo com o assembly a ser traduzido
with open('assembly_relogio.asm', 'r') as infile:

	label_list, lines = get_jump_labels(infile)
	#adicionando o cabecalho necessario ao arquivo .mif para ser usado pela ROM
	fin = open("../binario.mif", "wt")
	fin.write("WIDTH=16;\n")
	fin.write("DEPTH=256;\n")
	fin.write("ADDRESS_RADIX=DEC;\n")
	fin.write("DATA_RADIX=BIN; \n")
	fin.write("CONTENT BEGIN\n")

	
	for index, line in enumerate(lines):
		line = set_instruction_opcode(line)
		print(line)
		line = line.replace(" ", "")
		fin.write(str(index) + "	:	" + line + ";\n")

	fin.write("END;")
	fin.close()

	print(label_list)

