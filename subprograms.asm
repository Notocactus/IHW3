.include "macro-syscalls.m"

.eqv    NAME_SIZE 256	# Размер буфера для имени файла
.eqv    TEXT_SIZE 512	# Размер буфера для текста

.data
A: .ascii "a"
E: .ascii "e"
O: .ascii "o"
I: .ascii "i"
U: .ascii "u"
Y: .ascii "Y"

er_name_mes:    .asciz "Incorrect file name\n"
er_read_mes:    .asciz "Incorrect read operation\n"

file_name:      .space	NAME_SIZE		# Имячитаемого файла
strbuf:		.space  TEXT_SIZE			# Буфер для читаемого текста

.text
.globl replace, input, output, console
replace:
	la 	t0 A
	lb	t2, (t0)
	
	la 	t0 E
	lb	t3, (t0)
	
	la 	t0 O
	lb	t4, (t0)
	
	la 	t0 I
	lb	t5, (t0)

	la 	t0 U
	lb	t6, (t0)

	
loop_rep:
    lb      t1 (a0)   # Загрузка символа для сравнения
    
    beq	t1, t2, do
    beq	t1, t3, do
    beq	t1, t4, do
    beq	t1, t5, do
    beq	t1, t6, do
    b 	return
    do: 
    addi	t1, t1, -32
    return: 
    
    sb 	    t1 (a0) 
    beqz    t1 end_rep
    addi    a0 a0 1		# Берется следующий символ
    b       loop_rep
end_rep:
    ret
    
##################################################
# Read file name and read file
    
input: 
    print_str ("Input path to file for reading: ") # Вывод подсказки
    # Ввод имени файла с консоли эмулятора
    str_get(file_name, NAME_SIZE)
    open(file_name, READ_ONLY)
    li		s1 -1			# Проверка на корректное открытие
    beq		a0 s1 er_name	# Ошибка открытия файла
    mv   	s0 a0       	# Сохранение дескриптора файла

    # Выделение начального блока памяти для для буфера в куче
    allocate(TEXT_SIZE)		# Результат хранится в a0
    mv 		s3, a0			# Сохранение адреса кучи в регистре
    mv 		s5, a0			# Сохранение изменяемого адреса кучи в регистре
    li		s4, TEXT_SIZE	# Сохранение константы для обработки
    mv		s6, zero		# Установка начальной длины прочитанного текста

    read_loop:
    # Чтение информации из открытого файла
    ###read(s0, strbuf, TEXT_SIZE)
    read_addr_reg(s0, s5, TEXT_SIZE) # чтение для адреса блока из регистра
    # Проверка на корректное чтение
    beq		a0 s1 er_read	# Ошибка чтения
    mv   	s2 a0       	# Сохранение длины текста
    add 	s6, s6, s2		# Размер текста увеличивается на прочитанную порцию
    # При длине прочитанного текста меньшей, чем размер буфера,
    # необходимо завершить процесс.
    bne		s2 s4 end_loop
    # Иначе расширить буфер и повторить
    allocate(TEXT_SIZE)		# Результат здесь не нужен, но если нужно то...
    add		s5 s5 s2		# Адрес для чтения смещается на размер порции
    b read_loop				# Обработка следующей порции текста из файла
    end_loop:

    # Закрытие файла
    close(s0)
    
    #li   a7, 57       # Системный вызов закрытия файла
    #mv   a0, s0       # Дескриптор файла
    #ecall             # Закрытие файла
    ret

##################################################

output: 
    # Сохранение прочитанного файла в другом файле
    print_str ("Input path to file for writing: ")
    str_get(file_name, NAME_SIZE) # Ввод имени файла с консоли эмулятора
    open(file_name, WRITE_ONLY)
    li		s1 -1			# Проверка на корректное открытие
    beq		a0 s1 er_name	# Ошибка открытия файла
    mv   	s0 a0       	# Сохранение дескриптора файла
	# Запись информации в открытый файл
    li   a7, 64       		# Системный вызов для записи в файл
    mv   a0, s0 			# Дескриптор файла
    mv   a1, s3  			# Адрес буфера записываемого текста
    mv   a2, s6    			# Размер записываемой порции из регистра
    ecall             		# Запись в файл

    newline
    ret
    
##################################################

console: 
    print_str("Press Y to print to console: ")
    
    li 	a7, 12
    ecall
    mv	a3, a0
    
    newline
    
    la 	a1, Y
    lb	a2, (a1)
    beq	a3, a2, print_console
    b no_console
    print_console: 
    mv	a0	s3	# Адрес начала буфера из кучи
    li 	a7 4
    ecall
    newline
    no_console:
    ret
    
##################################################

er_name:
    # Сообщение об ошибочном имени файла
    la		a0 er_name_mes
    li		a7 4
    ecall
    # И завершение программы
    exit
er_read:
    # Сообщение об ошибочном чтении
    la		a0 er_read_mes
    li		a7 4
    ecall
    # И завершение программы
    exit