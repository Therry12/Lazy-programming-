  .text
  .global main
main:
  call     readi32
  pushl    %eax

  call     readi32
  pushl    %eax

  movl     +4(%esp), %eax
  call     writei32

  movl     (%esp), %eax
  call     writei32

  popl     %eax
  movl     (%esp), %eax
  call     writei32


  call finish

