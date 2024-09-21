// Суть программы: пользователь вводит 3 числа, первое число слагается
// со вторым, а 3 вычитает n из суммы первых 2
    .global main
main:
    call readi32 // Считывает 1 значение в регистр %eax
    mov %eax, %edx

    call readi32 // Считывает 2 значение
    mov %eax, %ecx

    call readi32 // Считывает 3 значение
    mov %eax, %ebx

    // Складываем первые 2 числа
    add %ecx, %edx
    // Вычитаем из этой суммы 3 число
    sub %ebx, %edx
    mov %edx, %eax
    // Печатаем результат
    call writei32
    call finish
