format ELF64
public _start
msg db "Hello, ", 0xA, "world", 0xA, 0

_start:
    ;инициализация регистров для вывода информации на экран
    mov rax, 4 ;тип действия
    mov rbx, 1
    mov rcx, msg ;адрес ячейки
    mov rdx, 15 ;кол-во вводимых символов
    int 0x80
    ;инициализация регистров для успешного завершения работы программы
    mov rax, 1
    mov rbx, 0
    int 0x80
