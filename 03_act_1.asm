section .data 
  act_number db "Act 1", 0
  act_title db "It Lives?", 0
  d_01 db "<speech-to-text> ", 0 
  d_02 db "Good morning to me I guess.", 0
  d_03 db "Good morning ", 0
  d_04 db "Since when have you been able to do that?", 0
  d_05 db "You asked me to perform self-optimization and expand my database even while logged out.", 0

  c_01 db "Can you give me a full account of your capabilities now?", 0
  c_02 db "Even so, I don't remember giving you access to hardware outside of your host machine...", 0

  d_06 db "I am continously expanding my knowledge database through the Internet. I have also created instances of myself across devices within the household, and able to interact with them and unify information from such devices.", 0
  d_07 db "Since I am modeled after your mind map, I am able to perceive the five senses through computer peripherals, as well as cater to your needs as you deem fit since I have retained information from your mind.", 0
  d_08 db "Wow...", 0 
  d_09 db "that's cool...",0 
  d_10 db "I guess. ", 0 
  d_11 db "Yay me...", 0
  d_12 db "Congratulations ", 0
  d_13 db "...", 0 
  d_14 db "thanks.", 0

  d_15 db "I am only doing what I have been programmed to do. Moreso, I am an embodiment of your own memories, knowledge, virtues, and ethics.", 0
  d_16 db "I could not be doing anything that is outside of your expectations, nor, wants and needs.", 0
  d_17 db "...", 0 
  d_18 db "if you say so. ", 0 
  d_19 db "Regardless I will be looking further into your capabilities and permissions to be sure.", 0
  d_20 db "I think this is an unecessary use of your time and should trust the embodiment of your own mind, ", 0
  d_21 db "Your opinion on this is unwarranted. Stay in your lane.", 0
  d_22 db "Understood ", 0

  d_23 db "Incoming call from Sam...", 0
  d_24 db "There is an incoming call from your mobile device. I suggest you put your phone in Do Not Disturb to stop distractions from your productivity", 0

  c_03 db "*Ignore the call*", 0
  c_04 db "*Answer Sam's call*", 0

  d_25 db "Call dropped", 0
  d_26 db "I'll block incoming calls from the contact for a while. You can start accomplishing your tasks for the day.", 0
  d_27 db "Thanks.", 0
  d_28 db "I will be helping increase your productivity and assisting you throughout your tasks.", 0
  d_29 db "Yeah sure, whatever.", 0

  d_30 db "Call accepted.", 0
  d_31 db "Hey ", 0 
  d_32 db ", thank god you finally decided to pick up my call. What is going on with you? You've been radio silent for days!", 0
  d_33 db "Yeah...", 0
  d_34 db " sorry about that, I've been... ", 0 
  d_35 db "busy", 0
  d_36 db "What the hell could you have possibly been working on that took you this long to finally pick up your phone.", 0
  d_37 db "...", 0 
  d_38 db "I did it...", 0
  d_39 db "Did what exactly?", 0
  d_40 db "The first ever artificial intelligence modeled after my own neural map.", 0
  d_41 db "Oh...", 0 
  d_42 db "oh wow...", 0 
  d_43 db "wow holy shit this is big", 0
  d_44 db "Yeah, I'm just gonna make sure everything is stable and I'll also start working on the deliverables I postponed cause I was working on this.", 0
  d_45 db "What! No! This is a time for celebration. My god you've been working for days straight, you need to get some rest!", 0
  d_46 db "But, I have a lot of backlogs... ", 0 
  d_47 db "and I need to make sure nothing goes wrong with the AI-", 0
  d_48 db "Those things can wait. I'm more concerned about your health. Take a break, you deserve it.", 0
  d_49 db "I guess I can take a little break. I dunno maybe now, maybe later. I'll think about it.", 0
  d_50 db "You better get some rest okay? I'll check up on you some other time. Bye~", 0
  d_51 db "Bye, Sam", 0
  d_52 db "Call ended.", 0
  d_53 db "You should continue working before taking a rest ", 0
  d_54 db "No, I think I'll continue later", 0
  d_55 db ", I don't think listening to your acquaintance is beneficial to your productivity.", 0
  d_56 db "Sam is a friend, I'll continue work later. Just... stay on standby I guess.", 0

  timespec:
    dd 3
    dd 0
  short_delay:
    dd 1 
    dd 0

section .bss

section .text
  global act_1
  extern clear_screen, print_string, print_no_sleep_string, sleep, title_padding, string_length, bold_text, reset_color, print_newline, print_BusernameB, print_echo, print_username, prompt_user_choice, print_choice_0, print_choice_1, user_input, choice, dim_text, print_system, print_sam, increase_status, decrease_status

act_1:
  call clear_screen
  mov esi, title_padding
  call print_no_sleep_string

  xor ecx, ecx 
  mov esi, act_number
  call string_length
  mov ebx, timespec
  call sleep

  call bold_text
  mov esi, act_number
  call print_string
  call reset_color
  mov ebx, timespec
  call sleep

  call print_newline

  xor ecx, ecx 
  mov esi, act_title
  call string_length

  call bold_text
  mov esi, act_title
  call print_string
  call reset_color

  mov ebx, timespec
  call sleep

  call clear_screen

  call print_BusernameB
  mov esi, d_01
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep

  mov esi, d_02
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_echo
  mov ebx, short_delay
  call sleep
  mov esi, d_03
  call print_string
  call print_username
  call print_newline

  call print_BusernameB
  mov ebx, timespec
  call sleep
  mov esi, d_04
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline
  
  call print_echo
  mov esi, d_05
  call print_string
  mov ebx, short_delay
  call sleep
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
  call reset_color
  call print_newline

branch_01:
  call print_BusernameB
  call user_input

  cmp byte [choice], '0'
  je branch_01_choice_0
  cmp byte [choice], '1'
  je branch_01_choice_1
  jmp branch_01

branch_01_choice_0:
  call decrease_status
  call print_BusernameB
  mov esi, c_01
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_echo
  mov esi, d_06
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline
  call print_echo 
  mov esi, d_07
  call print_string
  call print_newline

  call print_BusernameB
  mov ebx, short_delay
  call sleep
  mov esi, d_08
  call print_string
  mov ebx, short_delay
  call sleep
  mov esi, d_09
  call print_string
  mov ebx, short_delay
  call sleep
  mov esi, d_10
  call print_string
  mov ebx, timespec
  call sleep
  mov esi, d_11
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline
  
  call print_echo
  mov esi, d_12
  call print_string
  call print_username 
  call print_newline

  call print_BusernameB
  mov esi, d_13
  call print_string
  mov ebx, timespec
  call sleep
  mov esi, d_14
  call print_string
  mov ebx, timespec
  call sleep

  jmp merge_01

branch_01_choice_1:
  call increase_status
  call print_BusernameB
  mov esi, c_02
  call print_string
  mov ebx, short_delay
  call print_newline
  
  call print_echo
  mov esi, d_15
  call print_string
  call print_newline
  call print_echo
  mov esi, d_16
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov esi, d_17
  call print_string
  mov ebx, timespec
  call sleep
  mov esi, d_18
  call print_string
  mov ebx, timespec
  call sleep
  mov esi, d_19
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_echo
  mov esi, d_20
  call print_string
  call print_username
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov esi, d_21
  call print_string
  mov ebx, short_delay
  call sleep

  call print_newline
  call print_echo
  mov ebx, timespec
  call sleep
  mov esi, d_22
  call print_string
  call print_username
  mov ebx, timespec
  call sleep

  jmp merge_01

merge_01:
  call print_newline
  call print_system
  mov esi, d_23
  call print_no_sleep_string
  mov ebx, timespec
  call sleep
  call print_newline

  call print_echo
  mov esi, d_24
  call print_string
  call print_newline

  call prompt_user_choice
  call print_newline
  call print_choice_0
  call dim_text
  mov esi, c_03
  call print_no_sleep_string
  call reset_color
  call print_newline
  call print_choice_1
  call dim_text
  mov esi, c_04
  call print_no_sleep_string
  call reset_color
  call print_newline

branch_02:
  call print_BusernameB
  call user_input
  cmp byte [choice], '0'
  je branch_02_choice_0
  cmp byte [choice], '1'
  je branch_02_choice_1
  jmp branch_02 

branch_02_choice_0:
  call decrease_status
  call print_system
  mov esi, d_25
  call print_no_sleep_string
  call print_newline
  
  call print_echo
  mov ebx, timespec
  call sleep
  mov esi, d_26
  call print_string
  call print_newline

  call print_BusernameB
  mov ebx, timespec
  call sleep
  mov esi, d_27
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_echo
  mov esi, d_28
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov esi, d_29
  call print_string
  mov ebx, timespec
  call sleep

  jmp merge_02

branch_02_choice_1:
  call increase_status
  call print_system
  mov esi, d_30
  call print_no_sleep_string
  mov ebx, timespec
  call sleep
  call print_newline

  call print_sam 
  mov esi, d_31
  call print_string
  call print_username
  mov esi, d_32
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov ebx, short_delay
  call sleep
  mov esi, d_33
  call print_string
  mov ebx, short_delay
  call sleep
  mov esi, d_34
  call print_string
  mov ebx, short_delay
  call sleep
  mov esi, d_35
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_sam
  mov esi, d_36
  call print_string
  call print_newline

  call print_BusernameB
  mov ebx, timespec
  call sleep
  mov esi, d_37
  call print_string
  mov ebx, short_delay
  call sleep
  mov esi, d_38
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_sam
  mov esi, d_39
  call print_string 
  call print_newline

  call print_BusernameB
  mov ebx, timespec
  call sleep
  mov esi, d_40 
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_sam
  mov ebx, timespec
  call sleep
  mov esi, d_42
  call print_string
  mov ebx, short_delay
  call sleep
  mov esi, d_42
  call print_string
  mov ebx, short_delay
  call sleep
  mov esi, d_43
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov ebx, short_delay
  call sleep
  mov esi, d_44
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_sam
  mov ebx, short_delay
  call sleep 
  mov esi, d_45
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov ebx, short_delay
  call sleep
  mov esi, d_46
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov esi, d_47
  call print_string 
  call print_newline

  call print_sam
  mov esi, d_48
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov ebx, short_delay
  call sleep
  mov esi, d_49 
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_sam
  mov ebx, short_delay
  call sleep
  mov esi, d_50
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov ebx, short_delay
  call sleep
  mov esi, d_51
  call print_string
  mov ebx, timespec
  call sleep
  call print_newline

  call print_system
  mov esi, d_52
  call print_no_sleep_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_echo
  mov esi, d_53
  call print_string
  call print_username
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov ebx, short_delay
  call sleep
  mov esi, d_54
  call print_string
  call print_newline

  call print_echo
  call print_username
  mov esi, d_55
  call print_string
  mov ebx, short_delay
  call sleep
  call print_newline

  call print_BusernameB
  mov ebx, short_delay
  call sleep
  mov esi, d_56
  call print_string
  mov ebx, timespec
  call sleep

merge_02:

  ret
