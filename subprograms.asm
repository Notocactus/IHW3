.include "macro-syscalls.m"

.eqv    NAME_SIZE 256	# ������ ������ ��� ����� �����
.eqv    TEXT_SIZE 512	# ������ ������ ��� ������

.data
A: .ascii "a"
E: .ascii "e"
O: .ascii "o"
I: .ascii "i"
U: .ascii "u"
Y: .ascii "Y"

er_name_mes:    .asciz "Incorrect file name\n"
er_read_mes:    .asciz "Incorrect read operation\n"

file_name:      .space	NAME_SIZE		# ������������ �����
strbuf:		.space  TEXT_SIZE			# ����� ��� ��������� ������

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
    lb      t1 (a0)   # �������� ������� ��� ���������
    
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
    addi    a0 a0 1		# ������� ��������� ������
    b       loop_rep
end_rep:
    ret
    
##################################################
# Read file name and read file
    
input: 
    print_str ("Input path to file for reading: ") # ����� ���������
    # ���� ����� ����� � ������� ���������
    str_get(file_name, NAME_SIZE)
    open(file_name, READ_ONLY)
    li		s1 -1			# �������� �� ���������� ��������
    beq		a0 s1 er_name	# ������ �������� �����
    mv   	s0 a0       	# ���������� ����������� �����

    # ��������� ���������� ����� ������ ��� ��� ������ � ����
    allocate(TEXT_SIZE)		# ��������� �������� � a0
    mv 		s3, a0			# ���������� ������ ���� � ��������
    mv 		s5, a0			# ���������� ����������� ������ ���� � ��������
    li		s4, TEXT_SIZE	# ���������� ��������� ��� ���������
    mv		s6, zero		# ��������� ��������� ����� ������������ ������

    read_loop:
    # ������ ���������� �� ��������� �����
    ###read(s0, strbuf, TEXT_SIZE)
    read_addr_reg(s0, s5, TEXT_SIZE) # ������ ��� ������ ����� �� ��������
    # �������� �� ���������� ������
    beq		a0 s1 er_read	# ������ ������
    mv   	s2 a0       	# ���������� ����� ������
    add 	s6, s6, s2		# ������ ������ ������������� �� ����������� ������
    # ��� ����� ������������ ������ �������, ��� ������ ������,
    # ���������� ��������� �������.
    bne		s2 s4 end_loop
    # ����� ��������� ����� � ���������
    allocate(TEXT_SIZE)		# ��������� ����� �� �����, �� ���� ����� ��...
    add		s5 s5 s2		# ����� ��� ������ ��������� �� ������ ������
    b read_loop				# ��������� ��������� ������ ������ �� �����
    end_loop:

    # �������� �����
    close(s0)
    
    #li   a7, 57       # ��������� ����� �������� �����
    #mv   a0, s0       # ���������� �����
    #ecall             # �������� �����
    ret

##################################################

output: 
    # ���������� ������������ ����� � ������ �����
    print_str ("Input path to file for writing: ")
    str_get(file_name, NAME_SIZE) # ���� ����� ����� � ������� ���������
    open(file_name, WRITE_ONLY)
    li		s1 -1			# �������� �� ���������� ��������
    beq		a0 s1 er_name	# ������ �������� �����
    mv   	s0 a0       	# ���������� ����������� �����
	# ������ ���������� � �������� ����
    li   a7, 64       		# ��������� ����� ��� ������ � ����
    mv   a0, s0 			# ���������� �����
    mv   a1, s3  			# ����� ������ ������������� ������
    mv   a2, s6    			# ������ ������������ ������ �� ��������
    ecall             		# ������ � ����

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
    mv	a0	s3	# ����� ������ ������ �� ����
    li 	a7 4
    ecall
    newline
    no_console:
    ret
    
##################################################

er_name:
    # ��������� �� ��������� ����� �����
    la		a0 er_name_mes
    li		a7 4
    ecall
    # � ���������� ���������
    exit
er_read:
    # ��������� �� ��������� ������
    la		a0 er_read_mes
    li		a7 4
    ecall
    # � ���������� ���������
    exit