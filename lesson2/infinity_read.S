  .global main
main:
  xor %edx, %edx

beg:
  call readi32
  jc fin // jump carry == 1
  add %eax, %edx
  jmp beg

fin:
  mov %edx, %eax
  call writei32
  call finish

