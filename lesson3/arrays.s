  .global main
main:
  call  readi32
  jc    fin

  mov   %eax, %ebx ;// in ebx index
  call  readi32
  mov   %eax, %edx ;// in edx value

  ; mov   $arr, %edi   ;// in edi array adress
  ; shl   $2, %ebx     ;// shifting index for 4 bytes (int)
  ; add   %ebx, %edi   ;// put index (ebx) to arr adress
  ; mov   (%edi), %eax ;// put value adress to eax for printig
  // also can use it:
  mov   arr(, %ebx, 4), %eax

  call  writei32

  mov   %edx, (%edi) ;// mov value (edx) to array

  jmp   main

fin:
  call  finish

.bss ;// also can use .data
arr:
  .skip 200 * 4;// 200 values type int (4 bytes)
