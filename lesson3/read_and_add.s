  .text
read_and_add:
  push    %ebp
  mov     %esp, %ebp

  sub     $8, %esp

  call    readi32
  mov     %eax, -4(%ebp)

  call    readi32
  mov     %eax, -8(%ebp)


   



  .global main
main:

