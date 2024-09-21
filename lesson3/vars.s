  .global main
.text
main:
  mov var, %eax
  call writei32

  mov $33, %eax
  mov %eax, var
  mov var, %eax
  call writei32

  call finish

.data
var:
  .int 48
