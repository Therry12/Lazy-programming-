  .text
read_and_add:
  push    %ebp
  mov     %esp, %ebp

  sub     $8, %esp

  call    readi32
  mov     %eax, -4(%ebp)

  call    readi32
  mov     %eax, -8(%ebp)

  xor     %eax, %eax
  add     -4(%ebp), %eax
  add     -8(%ebp), %eax

  mov     %ebp, %esp

  pop     %ebp

  ret

  .global main
main:
  call    read_and_add
  call    writei32
  call    finish

