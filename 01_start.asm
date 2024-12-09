section .data 
  leftB db "[", 0
  rightB db "] ", 0
  typed db "> ", 0
  system_message db "[SYSTEM] ", 0
  echo_message db "[ECHO] ", 0
  sam_message db "[Sam] ", 0
  press_enter_prompt db "Press <Enter> to respond to ECHO.", 0
  enter_choice_prompt db "Pick a response. Type 0 or 1 and press <Enter>.", 0
  choice_0 db " [0] ", 0 
  choice_1 db " [1] ", 0
  colorRed db 0x1B, '[31m', 0  
  boldText db 0x1B, '[1m',0
  dimText db 0x1B, '[2m', 0
  hiddenText db 0x1B, '[8m', 0
  resetColor db 0x1B, '[0m', 0     
  clearScreen db 0x1B, '[', '2', 'J', 0x1B, '[', 'H', 0  
  title_padding db 0xa, 0xa, 0xa, 0xa, 0xa, 0
  ws: times 8 db 0
  space db 200 dup ' '
  status db 3
  timespec:
    dd 0
    dd 40000000

section .bss
  userName resb 30
  passWord resb 30
  choice resb 1
  termWidth resw 1
  stringLength resw 1
  
section .text
  global _start, choice, user_name, pass_word, hidden_text, userName, user_input, clear_screen, print_string, status, choice, timespec, title_padding, sleep, bold_text, red_text, boldText, colorRed, get_term_width, print_space, string_length, reset_color, dim_text, print_no_sleep_string, print_username, print_system, print_echo, print_leftB, print_rightB, print_BusernameB, print_newline, print_typed, prompt_user_respond, prompt_user_choice, print_choice_0, print_choice_1, print_sam, increase_status, decrease_status
  extern intro, act_1, act_2, play_bgm

_start:
  ;call clear_screen
  call play_bgm
  ;call intro
  ;call act_1
  ;call act_2
  jmp exit

increase_status:
  inc byte [status]
  ret

decrease_status:
  dec byte [status]
  ret

user_input:
  mov eax, 3                
  mov ebx, 0          
  mov ecx, choice           
  mov edx, 10
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
  push eax             
  push edx

.next_char:
  mov al, byte [esi]   
  test al, al         
  jz .done             

  mov eax, 4           
  mov ebx, 1           
  mov ecx, esi         
  mov edx, 1          
  int 0x80          

  mov ebx, timespec      
  call sleep

  inc esi             
  jmp .next_char      

.done:
  pop edx              
  pop eax
  ret             

print_no_sleep_string:
  push eax             
  push edx

.next_char:
  mov al, byte [esi]   
  test al, al          
  jz .done            

  mov eax, 4           
  mov ebx, 1           
  mov ecx, esi        
  mov edx, 1           
  int 0x80        

  inc esi              
  jmp .next_char       

.done:
  pop edx              
  pop eax
  ret

print_leftB:
  mov esi, leftB
  call print_no_sleep_string
  ret

print_rightB:
  mov esi, rightB
  call print_no_sleep_string
  ret

print_username:
  mov esi, userName
  call print_no_sleep_string
  ret

print_BusernameB:
  call print_leftB
  call print_username
  call print_rightB
  ret

print_system:
  mov esi, system_message
  call print_no_sleep_string
  ret

print_echo:
  mov esi, echo_message
  call print_no_sleep_string
  ret

print_sam:
  mov esi, sam_message
  call print_no_sleep_string
  ret

print_newline:
  mov eax, 4
  mov ebx, 1 
  mov ecx, title_padding
  mov edx, 1 
  int 0x80
  ret

print_typed:
  mov esi, typed
  call print_no_sleep_string
  ret

prompt_user_respond:
  call print_BusernameB
  call dim_text
  mov esi, press_enter_prompt
  call print_no_sleep_string
  call reset_color
  ret

prompt_user_choice:
  call print_BusernameB
  call dim_text
  mov esi, enter_choice_prompt
  call print_no_sleep_string
  call reset_color
  ret

print_choice_0:
  call dim_text
  mov esi, choice_0
  call print_no_sleep_string
  call reset_color
  ret

print_choice_1:
  call dim_text
  mov esi, choice_1
  call print_no_sleep_string
  call reset_color
  ret

red_text:
  mov eax, 4                
  mov ebx, 1                
  mov ecx, colorRed
  mov edx, 5                
  int 0x80                
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
  mov eax, 4              
  mov ebx, 1                
  mov ecx, resetColor      
  mov edx, 4                
  int 0x80                
  ret

clear_screen:
  mov eax, 4               
  mov ebx, 1               
  mov ecx, clearScreen    
  mov edx, 8               
  int 0x80        
  ret

exit: 
  mov eax, 1
  xor ebx, ebx
  int 0x80

sleep:
  mov eax, 162           
  mov ecx, 0             
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

