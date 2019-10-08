def get_jump_labels(file):
	label_list = []
	line_number = 0
	lines = []
	for line in infile:
		words = line.split()
		line_number +=1
		for word in words:
			if(word[0] == "$"):
				print("OK")
				line = line.replace(word, '{0:08b}'.format(int(word[1:])))


		if(words[0][-1] == ":"):
			line_number -=1
			label = words[0][:-1]
			label_list.append((label, '{0:08b}'.format(line_number)))
		else:
			lines.append(line[:-1])

	return label_list, lines


def set_instruction_opcode(data):
	for key in instruction_dict:
		data = data.replace(key, instruction_dict[key])

	for key in reg_address_dict:
		data = data.replace(key, reg_address_dict[key])

	for key in mem_address_dict:
		data = data.replace(key, mem_address_dict[key])

	for i in label_list:
		data = data.replace(i[0], "00000 " + str(i[1]))
	return data

instruction_dict = {
	"LOAD":  '000',
	'CMP':   '001',
	'JNE':   '110',
	'ADD':   '100',
	'MOV':   '010',
	'STORE': '101',
	'JUMP':  '111',
}

reg_address_dict = {
	"REG_TEMPO":  '00011',
	'REG_US':     '00001',
	'REG_DS':     '00010',
	'REG_UM':     '00100',
	'REG_DM':     '01000',
	'REG_UH':     '10000',
	'REG_DH':     '10001',
	'REG_CLEAR':  '11111'
}

mem_address_dict = {
	"IO_TEMPO":    '00000000',
	'CLEAR_TEMPO': '00000001',
	'LCD_US':      '00000011',
	'LCD_DS':      '00000100',
	'LCD_UM':      '00000101',
	'LCD_DM':      '00000110',
	'LCD_UH':      '00000111',
	'LCD_DH':      '00001000'
}

with open('assembly_relogio.asm', 'r') as infile:

	label_list, lines = get_jump_labels(infile)
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

