  .text
  .global main
main:

  call    readi32
  cmp     $-1, %eax
  jmp     fin
  mov     %eax, %ebx

  mov     persons(, %ebx, 8), %eax
  call    writei32
  mov     persons+4(, %ebx, 8), %eax
  call    writei32

  jmp   main

  .data
persons:
  .int 80   ;// weight
  .int 120  ;// height
  .int 70
  .int 160
  .int 60
  .int 150


fin:
  call     finish


