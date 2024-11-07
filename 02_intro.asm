section .data 
  game_title db "Echoes of the Mind", 0xA, 0
  game_sub_title db "Press <Enter> to run the program", 0
  login_padding db 10 dup 0xA, 0
  prompt_username db "username: ", 0
  prompt_password db "password: ", 0
  system_initializing db "Initializing environment...", 0xA, 0
  os db "Running OS...", 0xA, 0
  welcome db "Welcome ", 0
  timespec:
    dd 3
    dd 0

section .bss
  
section .text
  global intro
  extern title_padding, sleep, print_string, boldText, bold_text, get_term_width, print_space, string_length, reset_color, dim_text, clear_screen, user_input, print_no_sleep_string, user_name, userName, hidden_text, pass_word

intro:
  mov esi, title_padding
  call print_no_sleep_string

  xor ecx, ecx 
  mov esi, game_title
  call string_length

  call bold_text
  mov esi, game_title
  call print_string
  call reset_color

  xor ecx, ecx
  mov esi, game_sub_title
  call string_length
 
  call dim_text
  mov esi, game_sub_title
  call print_string
  call reset_color

  call user_input

  call clear_screen

  mov esi, login_padding
  call print_no_sleep_string

  xor ecx, ecx
  mov esi, prompt_username
  call string_length

  mov esi, prompt_username
  call print_string
  call user_name

  call clear_screen

  mov esi, login_padding
  call print_no_sleep_string

  xor ecx, ecx
  mov esi, prompt_password
  call string_length

  mov esi, prompt_password
  call print_string
  call hidden_text
  call pass_word
  call reset_color

  call clear_screen

  mov esi, login_padding
  call print_no_sleep_string

  xor ecx, ecx
  mov esi, system_initializing
  call string_length

  mov esi, system_initializing
  call print_string
  mov ebx, timespec
  call sleep

  call clear_screen

  mov esi, login_padding
  call print_no_sleep_string

  xor ecx, ecx
  mov esi, os
  call string_length

  mov esi, os
  call print_string
  mov ebx, timespec
  call sleep

  call clear_screen

  mov esi, login_padding
  call print_no_sleep_string

  xor ecx, ecx
  mov esi, welcome
  call string_length

  mov esi, welcome
  call print_string

  xor ecx, ecx
  xor esi, esi
  mov esi, userName
  call print_string

  mov ebx, timespec
  call sleep

  call clear_screen

  ret

