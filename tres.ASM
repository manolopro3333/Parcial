; 2 horas despues de hacer esto se me olvido todo lo que investigue

section .bss
    Alm1 resb 8         ; Espacios de almacenamiento
    Alm2 resb 8

section .data

    ingresar1 db 'Buenas, por favor ingrese el primer numero: ', 0  
    ingresar2 db 'Buenas, por favor ingrese el segundo numero: ', 0
    resultado db 'El resultado es: '

    Lingresar1 equ $ - ingresar1    
    Lingresar2 equ $ - ingresar2
    Lresultado equ $ - resultado


_start:

    ; Ver el primer mensaje
    mov eax, 4
    mov ebx, 1
    mov ecx, ingresar1
    mov edx, Lingresar1
    int 0x80

    ; Leer entrada del usuario
    mov eax, 3
    mov ebx, 0
    mov ecx, Alm1
    mov edx, 8
    int 0x80

    ; Ver el segundo mensaje
    mov eax, 4
    mov ebx, 1
    mov ecx, ingresar2
    mov edx, Lingresar2
    int 0x80

    ; Segundo input
    mov eax, 3
    mov ebx, 0
    mov ecx, Alm2
    mov edx, 8
    int 0x80

    ; Conversion de alm (Bytes) a normal
    mov al, [Alm1]
    sub al, '0'

    ; Lo mismo pero con el otro 
    mov bl, [Alm2]
    sub bl, '0'

    cmp al, bl
    jg mayor               ; Si es mayor
    jmp menor              ; Si es menor
    je igual               ; lo otro


menor:
    add al, bl             ; operacion
    add al, '0'            ; Re conversion 
    mov [Alm1], al

    ; Imprimir el resultado
    mov eax, 4
    mov ebx, 1
    mov ecx, Alm1
    mov edx, 1
    int 0x80

    jmp fin


mayor:
    sub al, bl
    add al, '0'
    mov [Alm1], al

    ; Imprimir el resultado
    mov eax, 4
    mov ebx, 1
    mov ecx, Alm1
    mov edx, 1
    int 0x80

    jmp fin


igual:
    imul al, bl
    add al, '0'
    mov [Alm1], al

    ; Imprimir el resultado
    mov eax, 4
    mov ebx, 1
    mov ecx, Alm1
    mov edx, 1
    int 0x80

    jmp fin


fin:
    mov eax, 1
    xor ebx, ebx
    int 0x80
