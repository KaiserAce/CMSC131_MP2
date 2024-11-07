section .data 
  colorRed db 0x1B, '[31m', 0  ; ANSI escape code for red
  boldText db 0x1B, '[1m',0
  dimText db 0x1B, '[2m', 0
  hiddenText db 0x1B, '[8m', 0
  resetColor db 0x1B, '[0m', 0     ; ANSI code to reset color
  clearScreen db 0x1B, '[', '2', 'J', 0x1B, '[', 'H', 0  ; ANSI code to clear screen and reset cursor
  title_padding db 0xa, 0xa, 0xa, 0xa, 0xa, 0
  ws: times 8 db 0
  space db 200 dup ' '
  timespec:
    dd 0
    dd 50000000

section .bss
  userName resb 30
  passWord resb 1
  choice resb 1
  status resb 1 
  termWidth resw 1
  stringLength resw 1
  
section .text
  global _start, user_name, pass_word, hidden_text, userName, user_input, clear_screen, print_string, status, choice, timespec, title_padding, sleep, bold_text, red_text, boldText, colorRed, get_term_width, print_space, string_length, reset_color, dim_text, print_no_sleep_string
  extern intro

_start:
  call clear_screen
  call intro
  call exit

increase_status:
  inc byte [status]
  ret

decrease_status:
  dec byte [status]
  ret

user_input:
  mov eax, 3                ; sys_read
  mov ebx, 0                ; stdin
  mov ecx, choice           ; buffer
  mov edx, 1                ; read 1 byte
  int 0x80
  ret

user_name:
  mov eax, 3
  mov ebx, 0
  mov ecx, userName
  mov edx, 30
  int 0x80

  mov ecx, eax
  mov esi, userName

  call .find_newline
  ret

.find_newline:
  cmp ecx, 0
  je .user_name_done
  dec ecx
  mov al, byte [esi]
  cmp al, 0x0A
  je .replace_newline
  inc esi
  jmp .find_newline

.replace_newline:
  mov byte [esi], 0

.user_name_done:
  ret

pass_word:
  mov eax, 3
  mov ebx, 0
  mov ecx, passWord
  mov edx, 30
  int 0x80
  ret

print_string:
  push eax             ; Preserve registers
  push edx

.next_char:
  mov al, byte [esi]   ; Load the byte at [esi] into AL
  test al, al          ; Test if AL is 0 (null terminator)
  jz .done             ; If zero, end of string

  mov eax, 4           ; Syscall number for sys_write
  mov ebx, 1           ; File descriptor 1 (stdout)
  mov ecx, esi         ; Pointer to the current character
  mov edx, 1           ; Number of bytes to write (1 byte)
  int 0x80             ; Syscall to write AL to stdout

  mov ebx, timespec      ; Pointer to timespec structure
  call sleep

  inc esi              ; Move to the next character
  jmp .next_char       ; Repeat for the next character

.done:
  pop edx              ; Restore registers
  pop eax
  ret                  ; Return to caller

print_no_sleep_string:
  push eax             ; Preserve registers
  push edx

.next_char:
  mov al, byte [esi]   ; Load the byte at [esi] into AL
  test al, al          ; Test if AL is 0 (null terminator)
  jz .done             ; If zero, end of string

  mov eax, 4           ; Syscall number for sys_write
  mov ebx, 1           ; File descriptor 1 (stdout)
  mov ecx, esi         ; Pointer to the current character
  mov edx, 1           ; Number of bytes to write (1 byte)
  int 0x80             ; Syscall to write AL to stdout

  inc esi              ; Move to the next character
  jmp .next_char       ; Repeat for the next character

.done:
  pop edx              ; Restore registers
  pop eax
  ret                  ; Return to caller

red_text:
  mov eax, 4                ; syscall number for sys_write
  mov ebx, 1                ; file descriptor for stdout
  mov ecx, colorRed
  mov edx, 5                ; length of the escape code
  int 0x80                  ; call kernel
  ret

bold_text:
  mov eax, 4
  mov ebx, 1 
  mov ecx, boldText
  mov edx, 4
  int 0x80
  ret

dim_text:
  mov eax, 4
  mov ebx, 1 
  mov ecx, dimText
  mov edx, 4
  int 0x80
  ret

hidden_text:
  mov eax, 4
  mov ebx, 1 
  mov ecx, hiddenText 
  mov edx, 4
  int 0x80
  ret

reset_color:
  mov eax, 4                ; syscall number for sys_write
  mov ebx, 1                ; file descriptor for stdout
  mov ecx, resetColor      ; address of reset color code
  mov edx, 4                ; length of the reset code
  int 0x80                  ; call kernel
  ret

clear_screen:
  mov eax, 4               ; syscall number for sys_write
  mov ebx, 1               ; file descriptor for stdout
  mov ecx, clearScreen    ; address of clear screen code
  mov edx, 8               ; length of the escape code
  int 0x80                 ; call kernel
  ret

exit: 
  mov eax, 1
  xor ebx, ebx
  int 0x80

sleep:
  mov eax, 162           ; Syscall number for nanosleep
  mov ecx, 0             ; Set remaining time pointer to null
  int 0x80
  ret

get_term_width:
  mov eax, 54
  mov ebx, 1 
  mov ecx, 0x5413
  lea edx, [ws]
  int 0x80
  movzx eax, word [ws+2]
  sub eax, [stringLength]
  shr eax, 1
  mov [termWidth], eax
  ret

string_length:
  mov al, byte [esi]
  cmp al, 0
  je .done
  inc ecx
  inc esi
  jmp string_length

.done:
  mov [stringLength], ecx
  call get_term_width
  call print_space
  ret

print_space:
  mov edx, [termWidth]
  mov eax, 4
  mov ebx, 1 
  lea ecx, space
  int 0x80

  ret

