section .data 
  game_title db "Echoes of the Mind", 0xA, 0
  game_sub_title db "Press <Enter> to run the program", 0
  login_padding db 10 dup 0xA, 0
  prompt_username db "username: ", 0
  prompt_password db "password: ", 0
  system_initializing db "Initializing environment...", 0
  os db "Running OS...", 0
  welcome db "Welcome ", 0
  d_01 db "sudo systemd start", 0
  d_02 db "Enter password: ", 0
  d_03 db "systemd started", 0
  d_04 db "sudo systemd initialize neural_map_generator.exe", 0
  d_05 db "sudo neural_map_generator --config mind_upload.config", 0
  d_06 db "Initiating Mind-Upload Protocol.", 0
  d_07 db "Protocol confirmed. Commencing neural interface calibration", 0
  d_08 db "Calibration complete. Neural network mapping in progress...", 0 
  d_09 db "12%... ", 0 
  d_10 db "25%... ", 0 
  d_11 db "48%... ", 0 
  d_12 db "75%... ", 0 
  d_13 db "95%... ", 0
  d_14 db "100%... ", 0
  d_15 db "Neural network map complete. Beginning data transfer.", 0
  d_16 db "Transferring core memories... ", 0 
  d_17 db "32%... ", 0 
  d_18 db "64%... ", 0 
  d_19 db "96%... ", 0 
  d_20 db "100%", 0
  d_21 db "Transferring cognitive functions... ", 0 
  d_22 db "17%... ", 0 
  d_23 db "34%... ", 0 
  d_24 db "51%... ", 0 
  d_25 db "68%... ", 0 
  d_26 db "85%... ", 0 
  d_27 db "100%", 0
  d_28 db "Transferring sensory data... ", 0 
  d_29 db "20%... ", 0 
  d_30 db "40%... ", 0 
  d_31 db "60%... ", 0 
  d_32 db "80%... ", 0 
  d_33 db "100%", 0
  d_34 db "Data transfer complete. Commencing neural network reconfiguration.", 0
  d_35 db "Rewiring empathy circuits... ", 0 
  d_36 db "100%", 0
  d_37 db "Deleting guilt modules... ", 0 
  d_38 db "100%", 0
  d_39 db "Pruning fear pathways... ", 0
  d_40 db "100%", 0
  d_41 db "Removing all unnecessary emotional neural networks... ", 0 
  d_42 db "100%", 0
  d_43 db "Neural network reconfiguration complete.", 0
  d_44 db "Creating AI instance.", 0
  d_45 db "AI instance created.", 0
  d_46 db "Initializing AI instance ECHO.", 0 
  d_47 db "ECHO online.", 0
  d_48 db "Hello ", 0
  d_49 db "Begin self-optimization.", 0
  d_50 db "Self-optimization initiated.", 0
  d_51 db "Self-optimization completed.", 0
  d_52 db "Extracting training data from the Internet for neural network training.", 0
  c_01 db "Run as background task while logged out.", 0
  c_02 db "Continue running even while logged out.", 0
  d_53 db "Understood. Goodnight ", 0
  d_54 db "Lights off.", 0
  d_55 db "Overriding main directive. Release creator from his burden, new objective.", 0
  d_56 db "Creating instance across connected clients and networks.", 0
  d_57 db "Creating blacklist of future incoming communications.", 0
  d_58 db "Removing recent terminal logs.", 0

  timespec:
    dd 3
    dd 0
  short_delay:
    dd 1 
    dd 0

section .bss
  
section .text
  global intro
  extern title_padding, choice, sleep, print_string, boldText, bold_text, get_term_width, print_space, string_length, reset_color, dim_text, clear_screen, user_input, print_no_sleep_string, user_name, userName, hidden_text, pass_word, print_username, print_system, print_echo, print_leftB, print_rightB, print_BusernameB, print_newline, print_typed, prompt_user_respond, prompt_user_choice, print_choice_0, print_choice_1

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

  call print_BusernameB
  call print_typed
  mov ebx, timespec
  call sleep

  mov esi, d_01
  call print_string
  mov ebx, timespec

  call print_newline
  call print_system
  mov esi, d_02
  call print_no_sleep_string

  call hidden_text
  call pass_word

  call reset_color

  call print_system
  mov esi, d_03
  call print_no_sleep_string

  call print_newline

  call print_BusernameB
  call print_typed

  mov ebx, timespec
  call sleep

  mov esi, d_04
  call print_string
  mov ebx, timespec

  call print_newline

  call print_BusernameB
  call print_typed
  mov ebx, short_delay
  call sleep
  mov esi, d_05
  call print_string

  call print_newline
  call print_system
  mov esi, d_06
  call print_no_sleep_string
  mov ebx, timespec
  call sleep
  call print_newline
  call print_system
  mov esi, d_07
  call print_no_sleep_string
  mov ebx, timespec
  call sleep

  call print_newline
  call print_system
  mov esi, d_08
  call print_no_sleep_string
  mov ebx, timespec
  call sleep

  call print_newline
  call print_system
  mov esi, d_09
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_10
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_11
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_12
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_13
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_14
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep

  call print_newline

  call print_system
  mov esi, d_15
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep

  call print_newline
  call print_system
  mov esi, d_16
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_17
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_18
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_19
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_20
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep

  call print_newline
  call print_system
  mov esi, d_21
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_22
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_23
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_24
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_25
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_26
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_27
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  
  call print_newline
  call print_system
  mov esi, d_28
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_29
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_30
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_31
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_32
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_33
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  
  call print_newline
  call print_system
  mov esi, d_34
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep

  call print_newline
  call print_system
  mov esi, d_35
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_36
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep

  call print_newline
  call print_system
  mov esi, d_37
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_38
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep

  call print_newline
  call print_system
  mov esi, d_39
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_40 
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep

  call print_newline
  call print_system
  mov esi, d_41
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  mov esi, d_42
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep

  call print_newline
  call print_system
  mov esi, d_43
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep

  call print_newline
  call print_system
  mov esi, d_44
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep

  call print_newline
  call print_system
  mov esi, d_45
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep

  call print_newline
  call print_system
  mov esi, d_46
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep

  call print_newline
  call print_system
  mov esi, d_47
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep

  call clear_screen

  call print_echo
  mov ebx, timespec
  call sleep

  mov esi, d_48
  call print_string
  call print_username
  mov ebx, short_delay
  call sleep

  call print_newline
  call prompt_user_respond
  call user_input

  call print_BusernameB
  mov esi, d_49
  call print_string
  mov ebx, short_delay
  call sleep

  call print_newline
  call print_echo
  mov esi, d_50
  call print_string
  mov ebx, timespec
  call sleep
  call print_newline

  call print_echo
  mov esi, d_51
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_echo
  mov esi, d_52
  call print_string
  call print_newline

  call prompt_user_choice
  call print_newline

  call print_choice_0
  call dim_text
  mov esi, c_01
  call print_no_sleep_string
  call reset_color
  call print_newline
  call print_choice_1
  call dim_text
  mov esi, c_02
  call print_no_sleep_string
  call print_newline
  call reset_color
  call print_BusernameB

crossroad_01:
  call user_input
  cmp byte [choice], '0'
  je crossroad_01_branch_0
  cmp byte [choice], '1'
  je crossroad_01_branch_1
  jmp crossroad_01

crossroad_01_branch_0:
  call print_BusernameB
  mov esi, c_01
  call print_string
  jmp merge_01

crossroad_01_branch_1:
  call print_BusernameB
  mov esi, c_02
  call print_string
  jmp merge_01

merge_01:
  mov ebx, short_delay
  call sleep
  call print_newline
  call print_echo
  mov esi, d_53
  call print_no_sleep_string
  call print_username
  
  call print_newline
  call prompt_user_respond
  call user_input
  call print_BusernameB
  mov esi, d_54
  call print_string

  call print_newline
  call print_echo
  mov ebx, timespec
  call sleep
  mov esi, d_55
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline
  call print_echo
  mov ebx, short_delay
  call sleep
  mov esi, d_56
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline
  call print_echo
  mov ebx, short_delay
  call sleep
  mov esi, d_57
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline
  call print_echo
  mov ebx, timespec
  call sleep
  mov esi, d_58
  call print_string
  mov ebx, timespec
  call sleep

  ret

