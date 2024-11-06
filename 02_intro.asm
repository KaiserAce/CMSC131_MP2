section .data 
  game_title db "Echoes of the Mind", 0xA, 0
  game_sub_title db "Press <Enter> to run the program", 0
  login_padding db 10 dup 0xA, 0
  prompt_username db "username: ", 0

section .bss
  
section .text
  global intro
  extern title_padding, print_string, boldText, bold_text, get_term_width, print_space, string_length, reset_color, dim_text, clear_screen, user_input, print_no_sleep_string, user_name, userName

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



  ret

